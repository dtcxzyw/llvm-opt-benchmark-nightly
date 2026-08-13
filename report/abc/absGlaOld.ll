inline.NumInlined: 785
inline.NumDeleted: 130
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 20
begin_hunk_0_@Gla_ManStart:bb.a
  %i.je = icmp slt i64 %indvars.iv.next370, %i.jd
  br i1 %i.je, label %bb.g, label %.critedge, !llvm.loop !157

.critedge:                                        ; preds = %bb.g, %.loopexit344, %Vec_IntStart.exit278
  %i.jf = load ptr, ptr %i.z, align 8, !tbaa !153 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !13 ; 2 uses
  %.not.i295 = icmp eq ptr %i.jh, null
  br i1 %.not.i295, label %Vec_IntFree.exit, label %bb.bo

bb.bo:                                            ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %i.jh) #29
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge, %bb.bo
  tail call void @free(ptr noundef nonnull %i.jf) #29
  store ptr %i.bh, ptr %i.z, align 8, !tbaa !153
  %i.ji = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 3 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !127 ; 2 uses
  %.not211 = icmp eq ptr %i.jj, null
  br i1 %.not211, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %Vec_IntFree.exit
  tail call void @free(ptr noundef nonnull %i.jj) #29
  br label %bb.bq

bb.bq:                                            ; preds = %Vec_IntFree.exit, %bb.bp
  store ptr %i.bs, ptr %i.ji, align 8, !tbaa !127
  %i.jk = getelementptr inbounds nuw i8, ptr %i.x, i64 40 ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !130 ; 2 uses
  %.not212 = icmp eq ptr %i.jl, null
  br i1 %.not212, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  tail call void @free(ptr noundef nonnull %i.jl) #29
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br
  store ptr %i.bt, ptr %i.jk, align 8, !tbaa !130
  %i.jm = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 4 uses
  store i32 1, ptr %i.jm, align 8, !tbaa !158
  %i.jn = load i32, ptr %i.af, align 8, !tbaa !143 ; 5 uses
  %i.jo = icmp sgt i32 %i.jn, 0
  br i1 %i.jo, label %.lr.ph351, label %.critedge2

.lr.ph351:                                        ; preds = %bb.bs
  %i.jp = getelementptr i8, ptr %i.ab, i64 32
  %.val232 = load ptr, ptr %i.jp, align 8, !tbaa !39 ; 4 uses
  %.not213 = icmp eq ptr %.val232, null
  br i1 %.not213, label %.critedge2, label %.lr.ph351.split

.lr.ph351.split:                                  ; preds = %.lr.ph351
  %i.jq = load ptr, ptr %i.ji, align 8, !tbaa !127 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.jn to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.jr = icmp eq i32 %i.jn, 1
  br i1 %i.jr, label %.epil.preheader, label %.lr.ph351.split.new

.lr.ph351.split.new:                              ; preds = %.lr.ph351.split
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bx, %.lr.ph351.split.new
  %i.js = phi i32 [ 1, %.lr.ph351.split.new ], [ %i.kf, %bb.bx ] ; 3 uses
  %indvars.iv372 = phi i64 [ 0, %.lr.ph351.split.new ], [ %indvars.iv.next373.1, %bb.bx ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph351.split.new ], [ %niter.next.1, %bb.bx ]
  %i.jt = getelementptr inbounds nuw [12 x i8], ptr %.val232, i64 %indvars.iv372
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv372
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !24
  %i.jw = icmp sgt i32 %i.jv, -1
  br i1 %i.jw, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.jx = add nsw i32 %i.js, 1                    ; 2 uses
  store i32 %i.jx, ptr %i.jm, align 8, !tbaa !158
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu
  %i.jy = phi i32 [ %i.jx, %bb.bu ], [ %i.js, %bb.bt ] ; 3 uses
  %.sink = phi i32 [ %i.js, %bb.bu ], [ -1, %bb.bt ]
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  store i32 %.sink, ptr %i.jz, align 4, !tbaa !136
  %indvars.iv.next373 = or disjoint i64 %indvars.iv372, 1 ; 2 uses
  %i.ka = getelementptr inbounds nuw [12 x i8], ptr %.val232, i64 %indvars.iv.next373
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.next373
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !24
  %i.kd = icmp sgt i32 %i.kc, -1
  br i1 %i.kd, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ke = add nsw i32 %i.jy, 1                    ; 2 uses
  store i32 %i.ke, ptr %i.jm, align 8, !tbaa !158
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.kf = phi i32 [ %i.ke, %bb.bw ], [ %i.jy, %bb.bv ] ; 3 uses
  %.sink.1 = phi i32 [ %i.jy, %bb.bw ], [ -1, %bb.bv ]
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store i32 %.sink.1, ptr %i.kg, align 4, !tbaa !136
  %indvars.iv.next373.1 = add nuw nsw i64 %indvars.iv372, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge2.loopexit.unr-lcssa, label %bb.bt, !llvm.loop !159

.critedge2.loopexit.unr-lcssa:                    ; preds = %bb.bx
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge2, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge2.loopexit.unr-lcssa, %.lr.ph351.split
  %.epil.init = phi i32 [ 1, %.lr.ph351.split ], [ %i.kf, %.critedge2.loopexit.unr-lcssa ] ; 3 uses
  %indvars.iv372.epil.init = phi i64 [ 0, %.lr.ph351.split ], [ %indvars.iv.next373.1, %.critedge2.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod461 = trunc i32 %i.jn to i1
  tail call void @llvm.assume(i1 %lcmp.mod461)
  %i.kh = getelementptr inbounds nuw [12 x i8], ptr %.val232, i64 %indvars.iv372.epil.init
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv372.epil.init
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !24
  %i.kk = icmp sgt i32 %i.kj, -1
  br i1 %i.kk, label %bb.by, label %.critedge2.loopexit.epilog-lcssa

bb.by:                                            ; preds = %.epil.preheader
  %i.kl = add nsw i32 %.epil.init, 1              ; 2 uses
  store i32 %i.kl, ptr %i.jm, align 8, !tbaa !158
  br label %.critedge2.loopexit.epilog-lcssa

.critedge2.loopexit.epilog-lcssa:                 ; preds = %bb.by, %.epil.preheader
  %i.km = phi i32 [ %i.kl, %bb.by ], [ %.epil.init, %.epil.preheader ]
  %.sink.epil = phi i32 [ %.epil.init, %bb.by ], [ -1, %.epil.preheader ]
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  store i32 %.sink.epil, ptr %i.kn, align 4, !tbaa !136
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit.epilog-lcssa, %.critedge2.loopexit.unr-lcssa, %.lr.ph351, %bb.bs
  %i.ko = phi i32 [ 1, %bb.bs ], [ 1, %.lr.ph351 ], [ %i.kf, %.critedge2.loopexit.unr-lcssa ], [ %i.km, %.critedge2.loopexit.epilog-lcssa ] ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !132
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !133
  %i.ks = getelementptr inbounds nuw i8, ptr %i.x, i64 12 ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !160
  %i.ku = icmp sgt i32 %i.kt, 0
  br i1 %i.ku, label %.lr.ph357, label %.critedge2.._crit_edge_crit_edge

.critedge2.._crit_edge_crit_edge:                 ; preds = %.critedge2
  %.phi.trans.insert = getelementptr i8, ptr %i.ab, i64 32
  %.val239.pre.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !39
  br label %._crit_edge

.lr.ph357:                                        ; preds = %.critedge2
  %.val231 = load ptr, ptr %i.bu, align 8, !tbaa !39
  %i.kv = getelementptr i8, ptr %i.ab, i64 32
  %.val230 = load ptr, ptr %i.kv, align 8, !tbaa !39 ; 2 uses
  br label %bb.bz

bb.bz:                                            ; preds = %.lr.ph357, %bb.bz
  %indvars.iv376 = phi i64 [ 0, %.lr.ph357 ], [ %indvars.iv.next377, %bb.bz ] ; 2 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %indvars.iv376 ; 2 uses
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !24 ; 2 uses
  %i.ky = ashr i32 %i.kx, 1
  %i.kz = sext i32 %i.ky to i64
  %i.la = getelementptr inbounds [12 x i8], ptr %.val231, i64 %i.kz
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !136
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr inbounds [12 x i8], ptr %.val230, i64 %i.ld
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !136
  %i.lh = and i32 %i.kx, 1
  %i.li = shl nsw i32 %i.lg, 1
  %i.lj = or disjoint i32 %i.li, %i.lh
  store i32 %i.lj, ptr %i.kw, align 4, !tbaa !24
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 2 uses
  %i.lk = load i32, ptr %i.ks, align 4, !tbaa !160
  %i.ll = sext i32 %i.lk to i64
  %i.lm = icmp slt i64 %indvars.iv.next377, %i.ll
  br i1 %i.lm, label %bb.bz, label %._crit_edge.loopexit, !llvm.loop !161

._crit_edge.loopexit:                             ; preds = %bb.bz
  %.val256.pre = load i32, ptr %i.af, align 8, !tbaa !143
  br label %._crit_edge

._crit_edge:                                      ; preds = %.critedge2.._crit_edge_crit_edge, %._crit_edge.loopexit
  %.val239.pre = phi ptr [ %.val230, %._crit_edge.loopexit ], [ %.val239.pre.pre, %.critedge2.._crit_edge_crit_edge ] ; 9 uses
  %i.ln = phi i32 [ %.val256.pre, %._crit_edge.loopexit ], [ %i.jn, %.critedge2.._crit_edge_crit_edge ] ; 2 uses
  %i.lo = sext i32 %i.ko to i64                   ; 2 uses
  %i.lp = tail call noalias ptr @calloc(i64 noundef %i.lo, i64 noundef 40) #31 ; 7 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.lp, ptr %i.lq, align 8, !tbaa !25
  %i.lr = sext i32 %i.ln to i64                   ; 2 uses
  %i.ls = shl nsw i64 %i.lr, 2                    ; 2 uses
  %i.lt = tail call noalias ptr @malloc(i64 noundef %i.ls) #27 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.lt, i8 -1, i64 %i.ls, i1 false)
  %i.lu = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.lt, ptr %i.lu, align 8, !tbaa !54
  %i.lv = icmp sgt i32 %i.ln, 0
  br i1 %i.lv, label %.lr.ph361, label %.critedge4

.lr.ph361:                                        ; preds = %._crit_edge
  %i.lw = getelementptr i8, ptr %i.ab, i64 16     ; 5 uses
  %i.lx = getelementptr i8, ptr %i.ab, i64 64     ; 4 uses
  %i.ly = getelementptr i8, ptr %i.ab, i64 72     ; 3 uses
  %.not214 = icmp eq ptr %.val239.pre, null
  br label %2

2:                                                ; preds = %.lr.ph361, %.loopexit
  %indvars.iv383 = phi i64 [ 0, %.lr.ph361 ], [ %indvars.iv.next384, %.loopexit ] ; 5 uses
  %3 = getelementptr inbounds nuw [12 x i8], ptr %.val239.pre, i64 %indvars.iv383 ; 13 uses
  br i1 %.not214, label %.critedge4, label %bb.ca

bb.ca:                                            ; preds = %2
  %i.lz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !136 ; 3 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %indvars.iv383
  store i32 %i.ma, ptr %i.mb, align 4, !tbaa !24
  %cond = icmp eq i32 %i.ma, -1
  br i1 %cond, label %.loopexit, label %Gla_ManObj.exit

Gla_ManObj.exit:                                  ; preds = %bb.ca
  %i.mc = sext i32 %i.ma to i64
  %i.md = getelementptr inbounds [40 x i8], ptr %i.lp, i64 %i.mc ; 5 uses
  %i.me = trunc nuw nsw i64 %indvars.iv383 to i32
  store i32 %i.me, ptr %i.md, align 8, !tbaa !26
  %.val249 = load i64, ptr %3, align 4
  %i.mf = trunc i64 %.val249 to i32
  %i.mg = getelementptr inbounds nuw i8, ptr %i.md, i64 4 ; 14 uses
  %i.mh = load i32, ptr %i.mg, align 4
  %i.mi = lshr i32 %i.mf, 28
  %i.mj = and i32 %i.mi, 2
  %i.mk = and i32 %i.mh, -7
  %i.ml = or disjoint i32 %i.mj, %i.mk
  %.val251 = load i64, ptr %3, align 4
  %i.mm = and i64 %.val251, 2305843005455597567
  %narrow.i = icmp eq i64 %i.mm, 2305843005455597567
  %i.mn = select i1 %narrow.i, i32 4, i32 0
  %i.mo = or disjoint i32 %i.mn, %i.ml            ; 2 uses
  store i32 %i.mo, ptr %i.mg, align 4
  %.val238 = load i64, ptr %3, align 4            ; 2 uses
  %i.mp = and i64 %.val238, 2684354559
  %narrow.i.not.i = icmp eq i64 %i.mp, 2684354559
  br i1 %narrow.i.not.i, label %bb.cb, label %Gia_ObjIsPi.exit

bb.cb:                                            ; preds = %Gla_ManObj.exit
  %i.mq = lshr i64 %.val238, 32
  %i.mr = trunc nuw i64 %i.mq to i32
  %i.ms = and i32 %i.mr, 536870911
  %.val.i = load i32, ptr %i.lw, align 8, !tbaa !74
  %.val3.i = load ptr, ptr %i.lx, align 8, !tbaa !75
  %i.mt = getelementptr i8, ptr %.val3.i, i64 4
  %.val3.val.i = load i32, ptr %i.mt, align 4, !tbaa !8
  %i.mu = sub nsw i32 %.val3.val.i, %.val.i
  %i.mv = icmp slt i32 %i.ms, %i.mu
  %i.mw = select i1 %i.mv, i32 8, i32 0
  br label %Gia_ObjIsPi.exit

Gia_ObjIsPi.exit:                                 ; preds = %Gla_ManObj.exit, %bb.cb
  %i.mx = phi i32 [ 0, %Gla_ManObj.exit ], [ %i.mw, %bb.cb ]
  %i.my = and i32 %i.mo, -9
  %i.mz = or disjoint i32 %i.mx, %i.my            ; 2 uses
  store i32 %i.mz, ptr %i.mg, align 4
  %.val246 = load i64, ptr %3, align 4            ; 3 uses
  %i.na = and i64 %.val246, 2147483648
  %.not.i.i297 = icmp eq i64 %i.na, 0
  %i.nb = and i64 %.val246, 536870911
  %i.nc = icmp eq i64 %i.nb, 536870911
  %narrow.i.not.i298 = or i1 %.not.i.i297, %i.nc
  br i1 %narrow.i.not.i298, label %Gia_ObjIsPo.exit, label %bb.cc

bb.cc:                                            ; preds = %Gia_ObjIsPi.exit
  %i.nd = lshr i64 %.val246, 32
  %i.ne = trunc nuw i64 %i.nd to i32
  %i.nf = and i32 %i.ne, 536870911
  %.val4.i = load i32, ptr %i.lw, align 8, !tbaa !74
  %.val5.i = load ptr, ptr %i.ly, align 8, !tbaa !83
  %i.ng = getelementptr i8, ptr %.val5.i, i64 4
  %.val5.val.i = load i32, ptr %i.ng, align 4, !tbaa !8
  %i.nh = sub nsw i32 %.val5.val.i, %.val4.i
  %i.ni = icmp slt i32 %i.nf, %i.nh
  %i.nj = select i1 %i.ni, i32 16, i32 0
  br label %Gia_ObjIsPo.exit

Gia_ObjIsPo.exit:                                 ; preds = %Gia_ObjIsPi.exit, %bb.cc
  %i.nk = phi i32 [ 0, %Gia_ObjIsPi.exit ], [ %i.nj, %bb.cc ]
  %i.nl = and i32 %i.mz, -17
  %i.nm = or disjoint i32 %i.nk, %i.nl            ; 2 uses
  store i32 %i.nm, ptr %i.mg, align 4
  %.val247 = load i64, ptr %3, align 4            ; 3 uses
  %i.nn = and i64 %.val247, 2147483648
  %.not.i.i299 = icmp eq i64 %i.nn, 0
  %i.no = and i64 %.val247, 536870911
  %i.np = icmp eq i64 %i.no, 536870911
  %narrow.i.not.i300 = or i1 %.not.i.i299, %i.np
  br i1 %narrow.i.not.i300, label %Gia_ObjIsRi.exit, label %bb.cd

bb.cd:                                            ; preds = %Gia_ObjIsPo.exit
  %i.nq = lshr i64 %.val247, 32
  %i.nr = trunc nuw i64 %i.nq to i32
  %i.ns = and i32 %i.nr, 536870911
  %.val4.i301 = load i32, ptr %i.lw, align 8, !tbaa !74
  %.val5.i302 = load ptr, ptr %i.ly, align 8, !tbaa !83
  %i.nt = getelementptr i8, ptr %.val5.i302, i64 4
  %.val5.val.i303 = load i32, ptr %i.nt, align 4, !tbaa !8
  %i.nu = sub nsw i32 %.val5.val.i303, %.val4.i301
  %.not341 = icmp slt i32 %i.ns, %i.nu
  %i.nv = select i1 %.not341, i32 0, i32 64
  br label %Gia_ObjIsRi.exit

Gia_ObjIsRi.exit:                                 ; preds = %Gia_ObjIsPo.exit, %bb.cd
  %i.nw = phi i32 [ 0, %Gia_ObjIsPo.exit ], [ %i.nv, %bb.cd ]
  %i.nx = and i32 %i.nm, -65
  %i.ny = or disjoint i32 %i.nw, %i.nx            ; 2 uses
  store i32 %i.ny, ptr %i.mg, align 4
  %.val252 = load i64, ptr %3, align 4            ; 2 uses
  %i.nz = and i64 %.val252, 2684354559
  %narrow.i.not.i304 = icmp eq i64 %i.nz, 2684354559
  br i1 %narrow.i.not.i304, label %bb.ce, label %Gia_ObjIsRo.exit

bb.ce:                                            ; preds = %Gia_ObjIsRi.exit
  %i.oa = lshr i64 %.val252, 32
  %i.ob = trunc nuw i64 %i.oa to i32
  %i.oc = and i32 %i.ob, 536870911
  %.val.i305 = load i32, ptr %i.lw, align 8, !tbaa !74
  %.val3.i306 = load ptr, ptr %i.lx, align 8, !tbaa !75
  %i.od = getelementptr i8, ptr %.val3.i306, i64 4
  %.val3.val.i307 = load i32, ptr %i.od, align 4, !tbaa !8
  %i.oe = sub nsw i32 %.val3.val.i307, %.val.i305
  %.not342 = icmp slt i32 %i.oc, %i.oe
  %i.of = select i1 %.not342, i32 0, i32 32
  br label %Gia_ObjIsRo.exit

Gia_ObjIsRo.exit:                                 ; preds = %Gia_ObjIsRi.exit, %bb.ce
  %i.og = phi i32 [ 0, %Gia_ObjIsRi.exit ], [ %i.of, %bb.ce ]
  %i.oh = and i32 %i.ny, -161
  %i.oi = or disjoint i32 %i.og, %i.oh
  %.val254 = load i64, ptr %3, align 4            ; 2 uses
  %i.oj = and i64 %.val254, 2147483648
  %.not.i308 = icmp eq i64 %i.oj, 0
  %i.ok = and i64 %.val254, 536870911
  %i.ol = icmp ne i64 %i.ok, 536870911
  %narrow.i309 = and i1 %.not.i308, %i.ol
  %i.om = select i1 %narrow.i309, i32 128, i32 0
  %i.on = or disjoint i32 %i.om, %i.oi            ; 4 uses
  store i32 %i.on, ptr %i.mg, align 4
  %.val250 = load i64, ptr %3, align 4            ; 5 uses
  %i.oo = and i64 %.val250, 2305843005455597567
  %narrow.i310.not = icmp eq i64 %i.oo, 2305843005455597567
  br i1 %narrow.i310.not, label %.loopexit, label %bb.cf

bb.cf:                                            ; preds = %Gia_ObjIsRo.exit
  %i.op = and i64 %.val250, 2684354559
  %narrow.i.not.i311 = icmp eq i64 %i.op, 2684354559
  br i1 %narrow.i.not.i311, label %Gia_ObjIsPi.exit315, label %Gia_ObjIsPi.exit315.thread

Gia_ObjIsPi.exit315:                              ; preds = %bb.cf
  %i.oq = lshr i64 %.val250, 32
  %i.or = trunc nuw i64 %i.oq to i32
  %i.os = and i32 %i.or, 536870911
  %.val.i312 = load i32, ptr %i.lw, align 8, !tbaa !74
  %.val3.i313 = load ptr, ptr %i.lx, align 8, !tbaa !75
  %i.ot = getelementptr i8, ptr %.val3.i313, i64 4
  %.val3.val.i314 = load i32, ptr %i.ot, align 4, !tbaa !8
  %i.ou = sub nsw i32 %.val3.val.i314, %.val.i312
  %.not343 = icmp slt i32 %i.os, %i.ou
  br i1 %.not343, label %.loopexit, label %Gia_ObjIsPi.exit315.thread

Gia_ObjIsPi.exit315.thread:                       ; preds = %bb.cf, %Gia_ObjIsPi.exit315
  %i.ov = and i64 %.val250, 2147483648            ; 2 uses
  %.not.i316 = icmp ne i64 %i.ov, 0
  %i.ow = and i64 %.val250, 536870911
  %i.ox = icmp ne i64 %i.ow, 536870911            ; 2 uses
  %narrow.i317 = and i1 %.not.i316, %i.ox
  br i1 %narrow.i317, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %Gia_ObjIsPi.exit315.thread
  %i.oy = and i32 %i.on, 511
  %i.oz = or disjoint i32 %i.oy, 512
  store i32 %i.oz, ptr %i.mg, align 4
  %i.pa = load i64, ptr %3, align 4
  %i.pb = and i64 %i.pa, 536870911
  %i.pc = sub nsw i64 0, %i.pb
  %i.pd = getelementptr inbounds [12 x i8], ptr %3, i64 %i.pc
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !136
  %i.pg = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  store i32 %i.pf, ptr %i.pg, align 8, !tbaa !24
  br label %.loopexit

bb.ch:                                            ; preds = %Gia_ObjIsPi.exit315.thread
  %.not.i318 = icmp eq i64 %i.ov, 0
  %narrow.i319 = and i1 %.not.i318, %i.ox
  br i1 %narrow.i319, label %bb.ci, label %bb.cq

bb.ci:                                            ; preds = %bb.ch
  %i.ph = load ptr, ptr %i.z, align 8, !tbaa !153
  %i.pi = getelementptr i8, ptr %i.ph, i64 8
  %.val225 = load ptr, ptr %i.pi, align 8, !tbaa !13 ; 2 uses
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %.val225, i64 %indvars.iv383
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !24
  %i.pl = sext i32 %i.pk to i64
  %i.pm = getelementptr inbounds [4 x i8], ptr %.val225, i64 %i.pl ; 4 uses
  %i.pn = and i32 %i.on, 511                      ; 4 uses
  store i32 %i.pn, ptr %i.mg, align 4
  %i.po = getelementptr inbounds nuw i8, ptr %i.md, i64 8 ; 4 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pm, i64 4
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !24 ; 2 uses
  %.not221 = icmp eq i32 %i.pq, -1
  br i1 %.not221, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.pr = sext i32 %i.pq to i64
  %i.ps = getelementptr inbounds [12 x i8], ptr %.val239.pre, i64 %i.pr
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !136
  %i.pv = or disjoint i32 %i.pn, 512              ; 2 uses
  store i32 %i.pv, ptr %i.mg, align 4
  store i32 %i.pu, ptr %i.po, align 8, !tbaa !24
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ci, %bb.cj
  %i.pw = phi i32 [ %i.pn, %bb.ci ], [ %i.pv, %bb.cj ] ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  %i.py = load i32, ptr %i.px, align 4, !tbaa !24 ; 2 uses
  %.not221.1 = icmp eq i32 %i.py, -1
  br i1 %.not221.1, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.pz = sext i32 %i.py to i64
  %i.qa = getelementptr inbounds [12 x i8], ptr %.val239.pre, i64 %i.pz
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !136
  %i.qd = lshr i32 %i.pw, 9
  %i.qe = and i32 %i.pw, -512
  %i.qf = add nuw nsw i32 %i.qe, 512
  %i.qg = or disjoint i32 %i.qf, %i.pn            ; 2 uses
  store i32 %i.qg, ptr %i.mg, align 4
  %i.qh = zext nneg i32 %i.qd to i64
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %i.qh
  store i32 %i.qc, ptr %i.qi, align 4, !tbaa !24
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.qj = phi i32 [ %i.qg, %bb.cl ], [ %i.pw, %bb.ck ] ; 4 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.pm, i64 12
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !24 ; 2 uses
  %.not221.2 = icmp eq i32 %i.ql, -1
  br i1 %.not221.2, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.qm = sext i32 %i.ql to i64
  %i.qn = getelementptr inbounds [12 x i8], ptr %.val239.pre, i64 %i.qm
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !136
  %i.qq = lshr i32 %i.qj, 9
  %i.qr = and i32 %i.qj, -512
  %i.qs = add nuw nsw i32 %i.qr, 512
  %i.qt = and i32 %i.qj, 511
  %i.qu = or disjoint i32 %i.qs, %i.qt            ; 2 uses
  store i32 %i.qu, ptr %i.mg, align 4
  %i.qv = zext nneg i32 %i.qq to i64
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %i.qv
  store i32 %i.qp, ptr %i.qw, align 4, !tbaa !24
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.qx = phi i32 [ %i.qu, %bb.cn ], [ %i.qj, %bb.cm ] ; 3 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !24 ; 2 uses
  %.not221.3 = icmp eq i32 %i.qz, -1
  br i1 %.not221.3, label %.loopexit, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ra = sext i32 %i.qz to i64
  %i.rb = getelementptr inbounds [12 x i8], ptr %.val239.pre, i64 %i.ra
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !136
  %i.re = lshr i32 %i.qx, 9
  %i.rf = and i32 %i.qx, -512
  %i.rg = add nuw nsw i32 %i.rf, 512
  %i.rh = and i32 %i.qx, 511
  %i.ri = or disjoint i32 %i.rg, %i.rh
  store i32 %i.ri, ptr %i.mg, align 4
  %i.rj = zext nneg i32 %i.re to i64
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %i.rj
  store i32 %i.rd, ptr %i.rk, align 4, !tbaa !24
  br label %.loopexit

bb.cq:                                            ; preds = %bb.ch
  %i.rl = and i32 %i.on, 511
  %i.rm = or disjoint i32 %i.rl, 512              ; 2 uses
  store i32 %i.rm, ptr %i.mg, align 4
  %.val242 = load i64, ptr %3, align 4
  %.val6.i = load ptr, ptr %i.ly, align 8, !tbaa !83 ; 2 uses
  %i.rn = getelementptr i8, ptr %.val6.i, i64 4   ; 2 uses
  %.val6.val.i = load i32, ptr %i.rn, align 4, !tbaa !8
  %.val7.i = load ptr, ptr %i.lx, align 8, !tbaa !75
  %i.ro = getelementptr i8, ptr %.val7.i, i64 4   ; 2 uses
  %.val7.val.i = load i32, ptr %i.ro, align 4, !tbaa !8
  %i.rp = lshr i64 %.val242, 32
  %i.rq = trunc nuw i64 %i.rp to i32
  %i.rr = and i32 %i.rq, 536870911
  %i.rs = add i32 %i.rr, %.val6.val.i
  %i.rt = sub i32 %i.rs, %.val7.val.i
  %i.ru = getelementptr i8, ptr %.val6.i, i64 8
  %.val5.val.i321 = load ptr, ptr %i.ru, align 8, !tbaa !13 ; 2 uses
  %i.rv = sext i32 %i.rt to i64
  %i.rw = getelementptr inbounds [4 x i8], ptr %.val5.val.i321, i64 %i.rv
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !24
  %i.ry = sext i32 %i.rx to i64
  %i.rz = getelementptr inbounds [12 x i8], ptr %.val239.pre, i64 %i.ry ; 2 uses
  %i.sa = load i64, ptr %i.rz, align 4
  %i.sb = and i64 %i.sa, 536870911
  %i.sc = sub nsw i64 0, %i.sb
  %i.sd = getelementptr inbounds [12 x i8], ptr %i.rz, i64 %i.sc
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 8
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !136
  %i.sg = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  store i32 %i.sf, ptr %i.sg, align 8, !tbaa !24
  %.val241 = load i64, ptr %3, align 4
  %.val6.val.i323 = load i32, ptr %i.rn, align 4, !tbaa !8
  %.val7.val.i325 = load i32, ptr %i.ro, align 4, !tbaa !8
  %i.sh = lshr i64 %.val241, 32
  %i.si = trunc nuw i64 %i.sh to i32
  %i.sj = and i32 %i.si, 536870911
  %i.sk = sub i32 %.val6.val.i323, %.val7.val.i325
  %i.sl = add i32 %i.sk, %i.sj
  %i.sm = sext i32 %i.sl to i64
  %i.sn = getelementptr inbounds [4 x i8], ptr %.val5.val.i321, i64 %i.sm
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !24
  %i.sp = sext i32 %i.so to i64
  %i.sq = getelementptr inbounds [12 x i8], ptr %.val239.pre, i64 %i.sp
  %.val248 = load i64, ptr %i.sq, align 4
  %i.sr = trunc i64 %.val248 to i32
  %i.ss = lshr i32 %i.sr, 28
  %i.st = and i32 %i.ss, 2
  %i.su = and i32 %i.rm, 1021
  %i.sv = or disjoint i32 %i.st, %i.su
  store i32 %i.sv, ptr %i.mg, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.co, %bb.cp, %bb.ca, %Gia_ObjIsRo.exit, %Gia_ObjIsPi.exit315, %bb.cq, %bb.cg
  %indvars.iv.next384 = add nuw nsw i64 %indvars.iv383, 1 ; 2 uses
  %i.sw = icmp slt i64 %indvars.iv.next384, %i.lr
  br i1 %i.sw, label %2, label %.critedge4, !llvm.loop !162

.critedge4:                                       ; preds = %2, %.loopexit, %._crit_edge
  %i.sx = getelementptr i8, ptr %i.ab, i64 72
  %.val240 = load ptr, ptr %i.sx, align 8, !tbaa !83
  %i.sy = getelementptr i8, ptr %.val240, i64 8
  %.val240.val = load ptr, ptr %i.sy, align 8, !tbaa !13
  %.val240.val.val = load i32, ptr %.val240.val, align 4, !tbaa !24
  %i.sz = sext i32 %.val240.val.val to i64
  %i.ta = getelementptr inbounds [12 x i8], ptr %.val239.pre, i64 %i.sz
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !136 ; 2 uses
  %.not.i328 = icmp eq i32 %i.tc, 0
  %i.td = sext i32 %i.tc to i64
  %i.te = getelementptr inbounds [40 x i8], ptr %i.lp, i64 %i.td
  %i.tf = select i1 %.not.i328, ptr null, ptr %i.te
  %i.tg = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.tf, ptr %i.tg, align 8, !tbaa !163
  %.idx = mul nsw i64 %i.lo, 40
  %i.th = getelementptr inbounds i8, ptr %i.lp, i64 %.idx
  %i.ti = icmp sgt i32 %i.ko, 1
  br i1 %i.ti, label %.lr.ph366, label %._crit_edge367

.lr.ph366:                                        ; preds = %.critedge4
  %.0363 = getelementptr inbounds nuw i8, ptr %i.lp, i64 40
  %i.tj = ptrtoint ptr %i.lp to i64
  br label %bb.cr

bb.cr:                                            ; preds = %.lr.ph366, %bb.dc
  %.0365 = phi ptr [ %.0363, %.lr.ph366 ], [ %.0, %bb.dc ] ; 4 uses
  %.pn364 = phi ptr [ %i.lp, %.lr.ph366 ], [ %.0365, %bb.dc ]
  %i.tk = load ptr, ptr %i.be, align 8, !tbaa !154
  %i.tl = load i32, ptr %.0365, align 8, !tbaa !26
  %i.tm = getelementptr i8, ptr %i.tk, i64 8
  %.val224 = load ptr, ptr %i.tm, align 8, !tbaa !13
  %i.tn = sext i32 %i.tl to i64
  %i.to = getelementptr inbounds [4 x i8], ptr %.val224, i64 %i.tn
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !24
  %i.tq = icmp eq i32 %i.tp, 0
  br i1 %i.tq, label %bb.dc, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.tr = getelementptr inbounds nuw i8, ptr %.pn364, i64 44 ; 2 uses
  %i.ts = load i32, ptr %i.tr, align 4
  %i.tt = or i32 %i.ts, 1
  store i32 %i.tt, ptr %i.tr, align 4
  %i.tu = load ptr, ptr %i.g, align 8, !tbaa !14  ; 6 uses
  %i.tv = ptrtoint ptr %.0365 to i64
  %i.tw = sub i64 %i.tv, %i.tj
  %i.tx = sdiv exact i64 %i.tw, 40
  %i.ty = trunc i64 %i.tx to i32
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tu, i64 4 ; 3 uses
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !8  ; 7 uses
  %i.ub = load i32, ptr %i.tu, align 8, !tbaa !12
  %i.uc = icmp eq i32 %i.ua, %i.ub
  br i1 %i.uc, label %bb.ct, label %Vec_IntPush.exit337

bb.ct:                                            ; preds = %bb.cs
  %i.ud = icmp slt i32 %i.ua, 16
  br i1 %i.ud, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tu, i64 8 ; 2 uses
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !13 ; 2 uses
  %.not9.i.i335 = icmp eq ptr %i.uf, null
  br i1 %.not9.i.i335, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ug = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.uf, i64 noundef 64) #28
  br label %Vec_IntGrow.exit.i336

bb.cw:                                            ; preds = %bb.cu
  %i.uh = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #27
  br label %Vec_IntGrow.exit.i336

Vec_IntGrow.exit.i336:                            ; preds = %bb.cw, %bb.cv
  %i.ui = phi ptr [ %i.ug, %bb.cv ], [ %i.uh, %bb.cw ]
  store ptr %i.ui, ptr %i.ue, align 8, !tbaa !13
  br label %Vec_IntGrow.exit11.sink.split.i333

bb.cx:                                            ; preds = %bb.ct
  %i.uj = icmp samesign ult i32 %i.ua, 1073741823
  %i.uk = shl nuw nsw i32 %i.ua, 1
  %spec.select.i330 = select i1 %i.uj, i32 %i.uk, i32 2147483647 ; 3 uses
  %.not.i9.i331 = icmp samesign ult i32 %i.ua, %spec.select.i330
  br i1 %.not.i9.i331, label %bb.cy, label %Vec_IntPush.exit337

bb.cy:                                            ; preds = %bb.cx
  %i.ul = getelementptr inbounds nuw i8, ptr %i.tu, i64 8 ; 2 uses
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !13 ; 2 uses
  %.not9.i10.i332 = icmp eq ptr %i.um, null
  %i.un = zext nneg i32 %spec.select.i330 to i64
  %i.uo = shl nuw nsw i64 %i.un, 2                ; 2 uses
  br i1 %.not9.i10.i332, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.up = tail call ptr @realloc(ptr noundef nonnull %i.um, i64 noundef %i.uo) #28
  br label %bb.db

bb.da:                                            ; preds = %bb.cy
  %i.uq = tail call noalias ptr @malloc(i64 noundef %i.uo) #27
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.ur = phi ptr [ %i.up, %bb.cz ], [ %i.uq, %bb.da ]
  store ptr %i.ur, ptr %i.ul, align 8, !tbaa !13
  br label %Vec_IntGrow.exit11.sink.split.i333

Vec_IntGrow.exit11.sink.split.i333:               ; preds = %bb.db, %Vec_IntGrow.exit.i336
  %spec.select.sink.i334 = phi i32 [ %spec.select.i330, %bb.db ], [ 16, %Vec_IntGrow.exit.i336 ]
  store i32 %spec.select.sink.i334, ptr %i.tu, align 8, !tbaa !12
  %.pre418 = load i32, ptr %i.tz, align 4, !tbaa !8
  br label %Vec_IntPush.exit337

Vec_IntPush.exit337:                              ; preds = %bb.cs, %bb.cx, %Vec_IntGrow.exit11.sink.split.i333
  %i.us = phi i32 [ %i.ua, %bb.cs ], [ %i.ua, %bb.cx ], [ %.pre418, %Vec_IntGrow.exit11.sink.split.i333 ] ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.tu, i64 8
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !13
  %i.uv = add nsw i32 %i.us, 1
  store i32 %i.uv, ptr %i.tz, align 4, !tbaa !8
  %i.uw = sext i32 %i.us to i64
  %i.ux = getelementptr inbounds [4 x i8], ptr %i.uu, i64 %i.uw
  store i32 %i.ty, ptr %i.ux, align 4, !tbaa !24
  br label %bb.dc

bb.dc:                                            ; preds = %bb.cr, %Vec_IntPush.exit337
  %.0 = getelementptr inbounds nuw i8, ptr %.0365, i64 40 ; 2 uses
  %i.uy = icmp ult ptr %.0, %i.th
  br i1 %i.uy, label %bb.cr, label %._crit_edge367, !llvm.loop !164

._crit_edge367:                                   ; preds = %bb.dc, %.critedge4
  %i.uz = tail call ptr @sat_solver2_new() #29    ; 5 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.uz, ptr %i.va, align 8, !tbaa !55
  %i.vb = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.vc = load i32, ptr %i.vb, align 8, !tbaa !165
  %.not215 = icmp eq i32 %i.vc, 0
  br i1 %.not215, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %._crit_edge367
  %i.vd = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #31 ; 5 uses
  store i32 20, ptr %i.vd, align 8, !tbaa !166
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 4
  store i32 1048575, ptr %i.ve, align 4, !tbaa !169
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vd, i64 20
  store i32 256, ptr %i.vf, align 4, !tbaa !170
  %i.vg = tail call noalias dereferenceable_or_null(2048) ptr @calloc(i64 noundef 256, i64 noundef 8) #31 ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vd, i64 24
  store ptr %i.vg, ptr %i.vh, align 8, !tbaa !171
  %i.vi = tail call noalias dereferenceable_or_null(8388608) ptr @malloc(i64 noundef 8388608) #27 ; 3 uses
  store ptr %i.vi, ptr %i.vg, align 8, !tbaa !172
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 8
  store i64 -1, ptr %i.vj, align 8
  store i64 2, ptr %i.vi, align 8, !tbaa !174
  %i.vk = getelementptr inbounds nuw i8, ptr %i.uz, i64 456
  store ptr %i.vd, ptr %i.vk, align 8, !tbaa !175
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %._crit_edge367
  %i.vl = load ptr, ptr %i.b, align 8, !tbaa !32  ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 20 ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.uz, i64 84
  %i.vo = load <2 x i32>, ptr %i.vm, align 4, !tbaa !24
  %i.vp = load i32, ptr %i.vm, align 4, !tbaa !176
  store <2 x i32> %i.vo, ptr %i.vn, align 4, !tbaa !24
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vl, i64 28
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !177
  %i.vs = getelementptr inbounds nuw i8, ptr %i.uz, i64 92
  store i32 %i.vr, ptr %i.vs, align 4, !tbaa !178
  %i.vt = getelementptr inbounds nuw i8, ptr %i.uz, i64 80
  store i32 %i.vp, ptr %i.vt, align 8, !tbaa !179
  %i.vu = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 1, ptr %i.vu, align 8, !tbaa !180
  %i.vv = tail call ptr @Rnm_ManStart(ptr noundef nonnull %i.ab) #29
  %i.vw = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr %i.vv, ptr %i.vw, align 8, !tbaa !115
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #9

declare ptr @Gia_ManToAigSimple(ptr noundef) local_unnamed_addr #2

declare ptr @Cnf_DeriveOther(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Aig_ManStop(ptr noundef) local_unnamed_addr #2

declare void @Gia_ManStaticFanoutStart(ptr noundef) local_unnamed_addr #2

declare ptr @sat_solver2_new() local_unnamed_addr #2

declare ptr @Rnm_ManStart(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Gla_ManStart2(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(208) ptr @calloc(i64 noundef 1, i64 noundef 208) #31 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.c, align 8, !tbaa !32
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #27 ; 6 uses
end_hunk_0
