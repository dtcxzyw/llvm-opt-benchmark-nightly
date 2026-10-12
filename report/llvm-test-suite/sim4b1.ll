Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sim4b1?download=true
inline.NumInlined: 64
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 15
begin_hunk_0_@SIM4:bb.a
  %i.kz = icmp sgt i32 %.1238284.i, 1
  %or.cond9.i = and i1 %i.ky, %i.kz
  br i1 %or.cond9.i, label %.lr.ph287.i, label %.critedge11.i, !llvm.loop !78

.critedge11.i:                                    ; preds = %bb.al, %bb.ak
  %.1238.lcssa.i = phi i32 [ %i.kj, %bb.ak ], [ %i.kx, %bb.al ] ; 2 uses
  %.2236.lcssa.i = phi i32 [ %.1235.i, %bb.ak ], [ %i.kw, %bb.al ] ; 3 uses
  %i.la = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %indvars.iv326.i
  store i32 %.2236.lcssa.i, ptr %i.la, align 4, !tbaa !10
  %i.lb = icmp eq i32 %.2236.lcssa.i, 0           ; 2 uses
  %i.lc = icmp eq i32 %.1238.lcssa.i, 0           ; 2 uses
  %or.cond13.i = select i1 %i.lb, i1 %i.lc, i1 false
  br i1 %or.cond13.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.critedge11.i
  %i.ld = trunc nuw nsw i64 %indvars.iv344.i to i32
  call void @free(ptr noundef %i.hl) #18
  call void @free(ptr noundef nonnull %i.hn) #18
  call void @free(ptr noundef %i.hw) #18
  call void @free(ptr noundef %i.hx) #18
  br label %extend_bw.exit

bb.an:                                            ; preds = %.critedge11.i
  br i1 %i.lb, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.le = trunc nuw nsw i64 %indvars.iv344.i to i32
  call void @free(ptr noundef %i.hl) #18
  call void @free(ptr noundef nonnull %i.hn) #18
  call void @free(ptr noundef %i.hw) #18
  call void @free(ptr noundef %i.hx) #18
  %i.lf = add nsw i32 %.1238.lcssa.i, %i.gm
  br label %extend_bw.exit

bb.ap:                                            ; preds = %bb.an
  br i1 %i.lc, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.lg = trunc nuw nsw i64 %indvars.iv344.i to i32
  call void @free(ptr noundef %i.hl) #18
  call void @free(ptr noundef nonnull %i.hn) #18
  call void @free(ptr noundef %i.hw) #18
  call void @free(ptr noundef %i.hx) #18
  %i.lh = add nsw i32 %.2236.lcssa.i, %i.gk
  br label %extend_bw.exit

bb.ar:                                            ; preds = %bb.ap, %.critedge11.thread.i
  %indvars.iv.next327.i = add nsw i64 %indvars.iv326.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next327.i to i32
  %exitcond332.i = icmp eq i32 %indvars.iv330.i, %lftr.wideiv.i
  br i1 %exitcond332.i, label %._crit_edge293.i, label %bb.af, !llvm.loop !79

._crit_edge293.i:                                 ; preds = %bb.ar
  %i.li = load i32, ptr %i.ht, align 4, !tbaa !10
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %indvars.iv344.i ; 8 uses
  store i32 %i.li, ptr %i.lj, align 4, !tbaa !10
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %indvars.iv344.i ; 4 uses
  store i32 %i.fu, ptr %i.lk, align 4, !tbaa !10
  %.pre355.i = load i32, ptr %i.lj, align 4, !tbaa !10 ; 2 uses
  %i.ll = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %i.it
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !10 ; 2 uses
  %i.ln = icmp slt i32 %i.lm, %.pre355.i
  br i1 %i.ln, label %bb.as, label %.lr.ph297.i.prol.loopexit.unr-lcssa

bb.as:                                            ; preds = %._crit_edge293.i
  store i32 %i.lm, ptr %i.lj, align 4, !tbaa !10
  store i32 %indvars.iv324.i, ptr %i.lk, align 4, !tbaa !10
  %.pre354.i.prol = load i32, ptr %i.lj, align 4, !tbaa !10
  br label %.lr.ph297.i.prol.loopexit.unr-lcssa

.lr.ph297.i.prol.loopexit.unr-lcssa:              ; preds = %bb.as, %._crit_edge293.i
  %i.lo = phi i32 [ %.pre355.i, %._crit_edge293.i ], [ %.pre354.i.prol, %bb.as ]
  %indvars.iv.next334.i.prol = add nsw i64 %i.it, 1
  %.mask1207 = and i64 %indvars.iv346.i, 2147483647
  %i.lp = icmp eq i64 %.mask1207, 2147483647
  br i1 %i.lp, label %.lr.ph300.i.preheader, label %.lr.ph297.i

.lr.ph297.i:                                      ; preds = %.lr.ph297.i.prol.loopexit.unr-lcssa, %bb.av
  %i.lq = phi i32 [ %i.ma, %bb.av ], [ %i.lo, %.lr.ph297.i.prol.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv333.i = phi i64 [ %indvars.iv.next334.i.1, %bb.av ], [ %indvars.iv.next334.i.prol, %.lr.ph297.i.prol.loopexit.unr-lcssa ] ; 4 uses
  %i.lr = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %indvars.iv333.i
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !10 ; 2 uses
  %i.lt = icmp slt i32 %i.ls, %i.lq
  br i1 %i.lt, label %bb.at, label %.lr.ph297.i.1

bb.at:                                            ; preds = %.lr.ph297.i
  store i32 %i.ls, ptr %i.lj, align 4, !tbaa !10
  %i.lu = trunc nsw i64 %indvars.iv333.i to i32
  store i32 %i.lu, ptr %i.lk, align 4, !tbaa !10
  %.pre354.i = load i32, ptr %i.lj, align 4, !tbaa !10
  br label %.lr.ph297.i.1

.lr.ph297.i.1:                                    ; preds = %bb.at, %.lr.ph297.i
  %i.lv = phi i32 [ %i.lq, %.lr.ph297.i ], [ %.pre354.i, %bb.at ] ; 2 uses
  %indvars.iv.next334.i = add nsw i64 %indvars.iv333.i, 1 ; 2 uses
  %i.lw = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %indvars.iv.next334.i
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !10 ; 2 uses
  %i.ly = icmp slt i32 %i.lx, %i.lv
  br i1 %i.ly, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.lr.ph297.i.1
  store i32 %i.lx, ptr %i.lj, align 4, !tbaa !10
  %i.lz = trunc nsw i64 %indvars.iv.next334.i to i32
  store i32 %i.lz, ptr %i.lk, align 4, !tbaa !10
  %.pre354.i.1 = load i32, ptr %i.lj, align 4, !tbaa !10
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.lr.ph297.i.1
  %i.ma = phi i32 [ %i.lv, %.lr.ph297.i.1 ], [ %.pre354.i.1, %bb.au ]
  %indvars.iv.next334.i.1 = add nsw i64 %indvars.iv333.i, 2 ; 2 uses
  %lftr.wideiv336.i.1 = trunc i64 %indvars.iv.next334.i.1 to i32
  %exitcond337.i.1 = icmp eq i32 %indvars.iv330.i, %lftr.wideiv336.i.1
  br i1 %exitcond337.i.1, label %.lr.ph300.i.preheader, label %.lr.ph297.i, !llvm.loop !80

.lr.ph300.i.preheader:                            ; preds = %bb.av, %.lr.ph297.i.prol.loopexit.unr-lcssa
  %min.iters.check1078 = icmp samesign ult i64 %indvars.iv346.i, 3
  %or.cond = select i1 %min.iters.check1078, i1 true, i1 %diff.check1076
  br i1 %or.cond, label %.lr.ph300.i.preheader1122, label %vector.ph1079

vector.ph1079:                                    ; preds = %.lr.ph300.i.preheader
  %n.vec1080 = and i64 %i.is, -8                  ; 2 uses
  %i.mb = add i64 %n.vec1080, %i.it
  br label %vector.body1081

vector.body1081:                                  ; preds = %vector.body1081, %vector.ph1079
  %index1082 = phi i64 [ 0, %vector.ph1079 ], [ %index.next1085, %vector.body1081 ] ; 2 uses
  %i.mc = add i64 %index1082, %i.it               ; 2 uses
  %i.md = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %i.mc ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  %wide.load1083.a = load <4 x i32>, ptr %i.md, align 4, !tbaa !10
  %wide.load1084 = load <4 x i32>, ptr %i.me, align 4, !tbaa !10
  %i.mf = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.mc ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  store <4 x i32> %wide.load1083.a, ptr %i.mf, align 4, !tbaa !10
  store <4 x i32> %wide.load1084, ptr %i.mg, align 4, !tbaa !10
  %index.next1085 = add nuw i64 %index1082, 8     ; 2 uses
  %i.mh = icmp eq i64 %index.next1085, %n.vec1080
  br i1 %i.mh, label %.lr.ph300.i.preheader1122, label %vector.body1081, !llvm.loop !81

.lr.ph300.i.preheader1122:                        ; preds = %vector.body1081, %.lr.ph300.i.preheader
  %indvars.iv339.i.ph = phi i64 [ %i.it, %.lr.ph300.i.preheader ], [ %i.mb, %vector.body1081 ] ; 3 uses
  %i.mi = trunc i64 %indvars.iv339.i.ph to i32    ; 2 uses
  %i.mj = sub i32 %indvars.iv330.i, %i.mi
  %i.mk = sub i32 %i.iq, %i.mi
  %xtraiter1186 = and i32 %i.mj, 3                ; 2 uses
  %lcmp.mod1187.not = icmp eq i32 %xtraiter1186, 0
  br i1 %lcmp.mod1187.not, label %.lr.ph300.i.prol.loopexit, label %.lr.ph300.i.prol

.lr.ph300.i.prol:                                 ; preds = %.lr.ph300.i.preheader1122, %.lr.ph300.i.prol
  %indvars.iv339.i.prol = phi i64 [ %indvars.iv.next340.i.prol, %.lr.ph300.i.prol ], [ %indvars.iv339.i.ph, %.lr.ph300.i.preheader1122 ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph300.i.prol ], [ 0, %.lr.ph300.i.preheader1122 ]
  %i.ml = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %indvars.iv339.i.prol
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !10
  %i.mn = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %indvars.iv339.i.prol
  store i32 %i.mm, ptr %i.mn, align 4, !tbaa !10
  %indvars.iv.next340.i.prol = add nsw i64 %indvars.iv339.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter1186
  br i1 %prol.iter.cmp.not, label %.lr.ph300.i.prol.loopexit, label %.lr.ph300.i.prol, !llvm.loop !82

.lr.ph300.i.prol.loopexit:                        ; preds = %.lr.ph300.i.prol, %.lr.ph300.i.preheader1122
  %indvars.iv339.i.unr = phi i64 [ %indvars.iv339.i.ph, %.lr.ph300.i.preheader1122 ], [ %indvars.iv.next340.i.prol, %.lr.ph300.i.prol ]
  %i.mo = icmp ult i32 %i.mk, 3
  br i1 %i.mo, label %.loopexit.i.loopexit, label %.lr.ph300.i

.lr.ph300.i:                                      ; preds = %.lr.ph300.i.prol.loopexit, %.lr.ph300.i
  %indvars.iv339.i = phi i64 [ %indvars.iv.next340.i.3, %.lr.ph300.i ], [ %indvars.iv339.i.unr, %.lr.ph300.i.prol.loopexit ] ; 6 uses
  %i.mp = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %indvars.iv339.i
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !10
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %indvars.iv339.i
  store i32 %i.mq, ptr %i.mr, align 4, !tbaa !10
  %indvars.iv.next340.i = add nsw i64 %indvars.iv339.i, 1 ; 2 uses
  %i.ms = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %indvars.iv.next340.i
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !10
  %i.mu = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %indvars.iv.next340.i
  store i32 %i.mt, ptr %i.mu, align 4, !tbaa !10
  %indvars.iv.next340.i.1 = add nsw i64 %indvars.iv339.i, 2 ; 2 uses
  %i.mv = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %indvars.iv.next340.i.1
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !10
  %i.mx = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %indvars.iv.next340.i.1
  store i32 %i.mw, ptr %i.mx, align 4, !tbaa !10
  %indvars.iv.next340.i.2 = add nsw i64 %indvars.iv339.i, 3 ; 2 uses
  %i.my = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %indvars.iv.next340.i.2
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !10
  %i.na = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %indvars.iv.next340.i.2
  store i32 %i.mz, ptr %i.na, align 4, !tbaa !10
  %indvars.iv.next340.i.3 = add nsw i64 %indvars.iv339.i, 4 ; 2 uses
  %lftr.wideiv342.i.3 = trunc i64 %indvars.iv.next340.i.3 to i32
  %exitcond343.i.3 = icmp eq i32 %indvars.iv330.i, %lftr.wideiv342.i.3
  br i1 %exitcond343.i.3, label %.loopexit.i.loopexit, label %.lr.ph300.i, !llvm.loop !83

.critedge5.split.loop.exit375.i:                  ; preds = %bb.aa
  %i.nb = trunc nuw nsw i64 %indvars.iv344.i to i32
  br label %.critedge5.i.a

.critedge5.split.loop.exit377.i:                  ; preds = %good_ratio.exit259.i
  %i.nc = trunc nuw nsw i64 %indvars.iv344.i to i32
  br label %.critedge5.i.a

.critedge5.i.a:                                   ; preds = %.loopexit.i.loopexit, %.critedge5.split.loop.exit377.i, %.critedge5.split.loop.exit375.i
  %.lcssa.i = phi i32 [ %i.nb, %.critedge5.split.loop.exit375.i ], [ %i.nc, %.critedge5.split.loop.exit377.i ], [ %i.ii, %.loopexit.i.loopexit ] ; 2 uses
  %smin.i = call i32 @llvm.smin.i32(i32 %.lcssa.i, i32 1)
  %11 = add i32 %smin.i, -1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ax, %.critedge5.i.a
  %.2233306.i = phi i32 [ %.lcssa.i, %.critedge5.i.a ], [ %i.nk, %bb.ax ] ; 4 uses
  %i.nd = zext nneg i32 %.2233306.i to i64
  %i.ne = getelementptr [4 x i8], ptr %i.hw, i64 %i.nd ; 2 uses
  %i.nf = getelementptr i8, ptr %i.ne, i64 -4
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !10
  %i.nh = load i32, ptr %i.ne, align 4, !tbaa !10
  %i.ni = sub nsw i32 %i.ng, %i.nh
  %i.nj = icmp slt i32 %i.ni, 3
  br i1 %i.nj, label %bb.ax, label %.critedge15.i

bb.ax:                                            ; preds = %bb.aw
  %i.nk = add nsw i32 %.2233306.i, -1
  %i.nl = icmp sgt i32 %.2233306.i, 1
  br i1 %i.nl, label %bb.aw, label %.critedge15.i, !llvm.loop !84

.critedge15.i:                                    ; preds = %bb.ax, %bb.aw
  %.2233.lcssa.i = phi i32 [ %11, %bb.ax ], [ %.2233306.i, %bb.aw ] ; 2 uses
  %i.nm = sext i32 %.2233.lcssa.i to i64          ; 2 uses
  %i.nn = getelementptr inbounds [4 x i8], ptr %i.hw, i64 %i.nm
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !10 ; 2 uses
  %i.np = add nsw i32 %i.no, %i.gk
  %i.nq = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.nm
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !10
  %i.ns = sub i32 %i.gm, %spec.select346
  %i.nt = add i32 %i.ns, %i.no
  %i.nu = add i32 %i.nt, %i.nr
  call void @free(ptr noundef nonnull %i.hw) #18
  call void @free(ptr noundef %i.hx) #18
  call void @free(ptr noundef %i.hl) #18
  call void @free(ptr noundef %i.hn) #18
  br label %extend_bw.exit

extend_bw.exit:                                   ; preds = %bb.u, %bb.am, %bb.ao, %bb.aq, %.critedge15.i
  %.0545 = phi i32 [ %i.hf, %bb.u ], [ %i.np, %.critedge15.i ], [ %i.gk, %bb.am ], [ %i.gk, %bb.ao ], [ %i.lh, %bb.aq ] ; 2 uses
  %.0544 = phi i32 [ %i.hg, %bb.u ], [ %i.nu, %.critedge15.i ], [ %i.gm, %bb.am ], [ %i.lf, %bb.ao ], [ %i.gm, %bb.aq ]
  %.0239.i = phi i32 [ 0, %bb.u ], [ %.2233.lcssa.i, %.critedge15.i ], [ %i.ld, %bb.am ], [ %i.le, %bb.ao ], [ %i.lg, %bb.aq ]
  %i.nv = load i32, ptr %i.fo, align 4, !tbaa !31
  %i.nw = xor i32 %.0545, -1
  %i.nx = add i32 %i.nv, %i.nw
  %i.ny = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 56), align 8, !tbaa !143
  %i.nz = mul nsw i32 %i.nx, %i.ny
  %i.oa = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 48), align 8, !tbaa !144
  %i.ob = mul nsw i32 %i.oa, %.0239.i
  %i.oc = add nsw i32 %i.ob, %i.nz
  %i.od = icmp sgt i32 %i.oc, -1
  br i1 %i.od, label %bb.ay, label %.thread548

bb.ay:                                            ; preds = %extend_bw.exit
  %i.oe = add nsw i32 %.0545, 1
  store i32 %i.oe, ptr %i.fo, align 4, !tbaa !31
  %i.of = add nsw i32 %.0544, 1
  store i32 %i.of, ptr %.3299, align 4, !tbaa !32
  br label %.thread548

.thread548:                                       ; preds = %extend_bw.exit, %bb.ay, %.critedge.thread, %bb.f, %bb.e
  %i.og = load i32, ptr %i.bh, align 8, !tbaa !137
  %.not333 = icmp eq i32 %i.og, 0
  br i1 %.not333, label %bb.az, label %.thread555

bb.az:                                            ; preds = %.thread548
  %i.oh = load ptr, ptr %i.bf, align 8, !tbaa !20
  %i.oi = load i32, ptr %i.bl, align 8, !tbaa !19 ; 3 uses
  %i.oj = add i32 %i.oi, -1
  %i.ok = zext i32 %i.oj to i64
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.oh, i64 %i.ok
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !29 ; 5 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 12 ; 2 uses
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !44 ; 3 uses
  %i.op = load i32, ptr %i.i, align 4, !tbaa !135 ; 2 uses
  %i.oq = icmp ult i32 %i.oo, %i.op
  br i1 %i.oq, label %bb.ba, label %.thread555

bb.ba:                                            ; preds = %bb.az
  %i.or = sub nuw i32 %i.op, %i.oo                ; 3 uses
  %i.os = icmp ugt i32 %i.or, 60
  br i1 %i.os, label %bb.bb, label %bb.bg

bb.bb:                                            ; preds = %bb.ba
  %i.ot = getelementptr inbounds nuw i8, ptr %i.om, i64 8 ; 2 uses
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !43
  %i.ov = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  %i.ow = load i32, ptr %i.ov, align 8, !tbaa !35
  %i.ox = getelementptr inbounds nuw i8, ptr %i.be, i64 28 ; 2 uses
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !45
  %i.oz = add i32 %i.oy, %i.ow
  %i.pa = icmp ult i32 %i.ou, %i.oz
  br i1 %i.pa, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.pb = load i32, ptr %i.x, align 4, !tbaa !36
  %spec.select347 = call i32 @llvm.umin.i32(i32 %i.pb, i32 10) ; 2 uses
  %i.pc = load ptr, ptr %i.o, align 8, !tbaa !136
  %i.pd = zext i32 %i.oo to i64
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.pd
  store i32 %spec.select347, ptr %i.ad, align 4, !tbaa !36
  store ptr %i.pe, ptr %i.ae, align 8, !tbaa !27
  store i32 %i.or, ptr %i.af, align 8, !tbaa !16
  %i.pf = shl nuw nsw i32 %spec.select347, 1
  %i.pg = add nsw i32 %i.pf, -2
  %notmask.i366 = shl nsw i32 -1, %i.pg
  %i.ph = xor i32 %notmask.i366, -1
  store i32 %i.ph, ptr %i.ag, align 8, !tbaa !37
  %i.pi = add i32 %i.or, 1
  %i.pj = zext i32 %i.pi to i64
  %i.pk = shl nuw nsw i64 %i.pj, 2
  %i.pl = call ptr @xmalloc(i64 noundef %i.pk) #18 ; 2 uses
  store ptr %i.pl, ptr %i.ah, align 8, !tbaa !38
  %i.pm = call ptr @xcalloc(i64 noundef 524288, i64 noundef 8) #18 ; 3 uses
  store ptr %i.pm, ptr %9, align 8, !tbaa !39
  call void @bld_table(ptr noundef nonnull %9)
  %i.pn = load ptr, ptr %i.w, align 8, !tbaa !27
  %i.po = load i32, ptr %i.ot, align 4, !tbaa !43 ; 3 uses
  %i.pp = zext i32 %i.po to i64
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.pp
  %i.pr = load i32, ptr %i.ov, align 8, !tbaa !35
  %i.ps = load i32, ptr %i.ox, align 4, !tbaa !45
  %i.pt = sub i32 %i.pr, %i.po
  %i.pu = add i32 %i.pt, %i.ps
  %i.pv = load i32, ptr %i.on, align 4, !tbaa !44
  %i.pw = add i32 %i.pv, 1
  %i.px = add i32 %i.po, 1
  %i.py = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 24), align 8, !tbaa !139
  call fastcc void @exon_cores(ptr noundef nonnull %9, ptr noundef %i.pq, i32 noundef %i.pu, i32 noundef %i.pw, i32 noundef %i.px, i32 noundef %i.py, ptr noundef %6, ptr noundef null, ptr noundef nonnull %7)
  call void @free(ptr noundef %i.pl) #18
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %bb.bc
  %indvars.iv.i367 = phi i64 [ 0, %bb.bc ], [ %indvars.iv.next.i368, %bb.bd ] ; 2 uses
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.pm, i64 %indvars.iv.i367
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !40
  call void @tdestroy(ptr noundef %i.qa, ptr noundef nonnull @free) #18
  %indvars.iv.next.i368 = add nuw nsw i64 %indvars.iv.i367, 1 ; 2 uses
  %exitcond.not.i369 = icmp eq i64 %indvars.iv.next.i368, 524288
  br i1 %exitcond.not.i369, label %free_hash_env.exit370, label %bb.bd, !llvm.loop !0

free_hash_env.exit370:                            ; preds = %bb.bd
  call void @free(ptr noundef nonnull %i.pm) #18
  %i.qb = load i32, ptr %i.t, align 8, !tbaa !19  ; 3 uses
  %.not334 = icmp eq i32 %i.qb, 0
  br i1 %.not334, label %free_hash_env.exit370._crit_edge, label %.lr.ph.preheader.i372

free_hash_env.exit370._crit_edge:                 ; preds = %free_hash_env.exit370
  %.pre757.pre = load i32, ptr %i.bl, align 8, !tbaa !19
  br label %bb.bf

.lr.ph.preheader.i372:                            ; preds = %free_hash_env.exit370
  %wide.trip.count.i373 = zext i32 %i.qb to i64   ; 2 uses
  %i.qc = load ptr, ptr %7, align 8, !tbaa !20    ; 6 uses
  %xtraiter1188 = and i64 %wide.trip.count.i373, 3 ; 3 uses
  %i.qd = icmp ult i32 %i.qb, 4
  br i1 %i.qd, label %.lr.ph.i374.epil.preheader, label %.lr.ph.preheader.i372.new

.lr.ph.preheader.i372.new:                        ; preds = %.lr.ph.preheader.i372
  %unroll_iter1192 = and i64 %wide.trip.count.i373, 4294967292
  br label %.lr.ph.i374

.lr.ph.i374:                                      ; preds = %.lr.ph.i374, %.lr.ph.preheader.i372.new
  %indvars.iv.i375 = phi i64 [ 0, %.lr.ph.preheader.i372.new ], [ %indvars.iv.next.i376.3, %.lr.ph.i374 ] ; 5 uses
  %niter1193 = phi i64 [ 0, %.lr.ph.preheader.i372.new ], [ %niter1193.next.3, %.lr.ph.i374 ]
  %i.qe = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %indvars.iv.i375
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !29 ; 2 uses
  %i.qg = load <4 x i32>, ptr %i.qf, align 4, !tbaa !10
  %i.qh = shufflevector <4 x i32> %i.qg, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i32> %i.qh, ptr %i.qf, align 4, !tbaa !10
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %indvars.iv.i375
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !29 ; 2 uses
  %i.ql = load <4 x i32>, ptr %i.qk, align 4, !tbaa !10
  %i.qm = shufflevector <4 x i32> %i.ql, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i32> %i.qm, ptr %i.qk, align 4, !tbaa !10
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %indvars.iv.i375
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !29 ; 2 uses
  %i.qq = load <4 x i32>, ptr %i.qp, align 4, !tbaa !10
  %i.qr = shufflevector <4 x i32> %i.qq, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i32> %i.qr, ptr %i.qp, align 4, !tbaa !10
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %indvars.iv.i375
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 24
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !29 ; 2 uses
  %i.qv = load <4 x i32>, ptr %i.qu, align 4, !tbaa !10
  %i.qw = shufflevector <4 x i32> %i.qv, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i32> %i.qw, ptr %i.qu, align 4, !tbaa !10
  %indvars.iv.next.i376.3 = add nuw nsw i64 %indvars.iv.i375, 4 ; 2 uses
  %niter1193.next.3 = add i64 %niter1193, 4       ; 2 uses
  %niter1193.ncmp.3 = icmp eq i64 %niter1193.next.3, %unroll_iter1192
  br i1 %niter1193.ncmp.3, label %swap_seqs.exit379.unr-lcssa, label %.lr.ph.i374, !llvm.loop !67

swap_seqs.exit379.unr-lcssa:                      ; preds = %.lr.ph.i374
  %lcmp.mod1190.not = icmp eq i64 %xtraiter1188, 0
  br i1 %lcmp.mod1190.not, label %swap_seqs.exit379, label %.lr.ph.i374.epil.preheader

.lr.ph.i374.epil.preheader:                       ; preds = %swap_seqs.exit379.unr-lcssa, %.lr.ph.preheader.i372
  %indvars.iv.i375.epil.init = phi i64 [ 0, %.lr.ph.preheader.i372 ], [ %indvars.iv.next.i376.3, %swap_seqs.exit379.unr-lcssa ]
  %lcmp.mod1191 = icmp ne i64 %xtraiter1188, 0
  call void @llvm.assume(i1 %lcmp.mod1191)
  br label %.lr.ph.i374.epil

.lr.ph.i374.epil:                                 ; preds = %.lr.ph.i374.epil, %.lr.ph.i374.epil.preheader
  %indvars.iv.i375.epil = phi i64 [ %indvars.iv.i375.epil.init, %.lr.ph.i374.epil.preheader ], [ %indvars.iv.next.i376.epil, %.lr.ph.i374.epil ] ; 2 uses
  %epil.iter1189 = phi i64 [ 0, %.lr.ph.i374.epil.preheader ], [ %epil.iter1189.next, %.lr.ph.i374.epil ]
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %indvars.iv.i375.epil
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !29 ; 2 uses
  %i.qz = load <4 x i32>, ptr %i.qy, align 4, !tbaa !10
  %i.ra = shufflevector <4 x i32> %i.qz, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i32> %i.ra, ptr %i.qy, align 4, !tbaa !10
  %indvars.iv.next.i376.epil = add nuw nsw i64 %indvars.iv.i375.epil, 1
  %epil.iter1189.next = add i64 %epil.iter1189, 1 ; 2 uses
  %epil.iter1189.cmp.not = icmp eq i64 %epil.iter1189.next, %xtraiter1188
  br i1 %epil.iter1189.cmp.not, label %swap_seqs.exit379, label %.lr.ph.i374.epil, !llvm.loop !85

swap_seqs.exit379:                                ; preds = %.lr.ph.i374.epil, %swap_seqs.exit379.unr-lcssa
  %i.rb = load ptr, ptr %i.qc, align 8, !tbaa !29 ; 2 uses
  %i.rc = load ptr, ptr %i.w, align 8, !tbaa !27  ; 2 uses
  %i.rd = load ptr, ptr %i.o, align 8, !tbaa !136 ; 2 uses
  %i.re = load <2 x i32>, ptr %i.rb, align 4, !tbaa !10 ; 4 uses
  %i.rf = icmp ult <2 x i32> %i.re, splat (i32 2) ; 2 uses
end_hunk_0
begin_hunk_1_@SIM4:bb.a
.critedge6.loopexit.i:                            ; preds = %bb.ci, %.critedge6.loopexit.split.loop.exit.i
  %.2233.ph.in.i = phi i64 [ %indvars.iv331.i, %.critedge6.loopexit.split.loop.exit.i ], [ %indvars.iv.next332.i, %bb.ci ]
  %.3230.ph.i = phi i32 [ %i.xo, %.critedge6.loopexit.split.loop.exit.i ], [ %indvars333.i, %bb.ci ]
  %.2233.ph.i = trunc i64 %.2233.ph.in.i to i32
  br label %.critedge6.i

.critedge6.i:                                     ; preds = %.critedge6.loopexit.i, %.preheader.i394, %bb.ch
  %.2233.i = phi i32 [ %i.xa, %bb.ch ], [ %i.xa, %.preheader.i394 ], [ %.2233.ph.i, %.critedge6.loopexit.i ] ; 2 uses
  %.3230.i = phi i32 [ %.1228.i, %bb.ch ], [ %.1228.i, %.preheader.i394 ], [ %.3230.ph.i, %.critedge6.loopexit.i ] ; 3 uses
  %i.xp = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %indvars.iv339.i389
  store i32 %.3230.i, ptr %i.xp, align 4, !tbaa !10
  %i.xq = icmp eq i32 %.3230.i, %spec.select348   ; 2 uses
  %i.xr = icmp eq i32 %.2233.i, %i.tu             ; 2 uses
  %or.cond255.i = select i1 %i.xq, i1 %i.xr, i1 false
  br i1 %or.cond255.i, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.critedge6.i
  %i.xs = trunc nuw nsw i64 %indvars.iv364.i to i32
  call void @free(ptr noundef %i.uo) #18
  call void @free(ptr noundef nonnull %i.uq) #18
  call void @free(ptr noundef %i.uy) #18
  call void @free(ptr noundef %i.uz) #18
  %i.xt = add nsw i32 %i.tu, %i.to
  br label %extend_fw.exit

bb.ck:                                            ; preds = %.critedge6.i
  br i1 %i.xq, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.xu = trunc nuw nsw i64 %indvars.iv364.i to i32
  call void @free(ptr noundef nonnull %i.uq) #18
  call void @free(ptr noundef %i.uo) #18
  call void @free(ptr noundef %i.uy) #18
  call void @free(ptr noundef %i.uz) #18
  %i.xv = add nsw i32 %.2233.i, %i.to
  br label %extend_fw.exit

bb.cm:                                            ; preds = %bb.ck
  br i1 %i.xr, label %bb.cn, label %bb.bz

bb.cn:                                            ; preds = %bb.cm
  %i.xw = trunc nuw nsw i64 %indvars.iv364.i to i32
  call void @free(ptr noundef nonnull %i.uq) #18
  call void @free(ptr noundef %i.uo) #18
  call void @free(ptr noundef %i.uy) #18
  call void @free(ptr noundef %i.uz) #18
  %i.xx = add nsw i32 %i.tu, %i.to
  br label %extend_fw.exit

._crit_edge290.i:                                 ; preds = %bb.bz
  %i.xy = load i32, ptr %i.uv, align 4, !tbaa !10
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %indvars.iv364.i ; 8 uses
  store i32 %i.xy, ptr %i.xz, align 4, !tbaa !10
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.uz, i64 %indvars.iv364.i ; 4 uses
  store i32 %spec.select348, ptr %i.ya, align 4, !tbaa !10
  %.pre378.i = load i32, ptr %i.xz, align 4, !tbaa !10 ; 2 uses
  %i.yb = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %indvars.iv337.i
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !10 ; 2 uses
  %i.yd = icmp sgt i32 %i.yc, %.pre378.i
  br i1 %i.yd, label %bb.co, label %._crit_edge290.i.new

bb.co:                                            ; preds = %._crit_edge290.i
  store i32 %i.yc, ptr %i.xz, align 4, !tbaa !10
  %i.ye = trunc nsw i64 %indvars.iv337.i to i32
  store i32 %i.ye, ptr %i.ya, align 4, !tbaa !10
  %.pre377.i.prol = load i32, ptr %i.xz, align 4, !tbaa !10
  br label %._crit_edge290.i.new

._crit_edge290.i.new:                             ; preds = %bb.co, %._crit_edge290.i
  %i.yf = phi i32 [ %.pre378.i, %._crit_edge290.i ], [ %.pre377.i.prol, %bb.co ]
  br label %.lr.ph294.i

.lr.ph294.i:                                      ; preds = %bb.cr, %._crit_edge290.i.new
  %i.yg = phi i32 [ %i.yf, %._crit_edge290.i.new ], [ %i.yq, %bb.cr ] ; 2 uses
  %indvars.iv348.i = phi i64 [ %indvars.iv337.in.i, %._crit_edge290.i.new ], [ %indvars.iv.next349.i.1, %bb.cr ] ; 4 uses
  %i.yh = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %indvars.iv348.i
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !10 ; 2 uses
  %i.yj = icmp sgt i32 %i.yi, %i.yg
  br i1 %i.yj, label %bb.cp, label %.lr.ph294.i.1

bb.cp:                                            ; preds = %.lr.ph294.i
  store i32 %i.yi, ptr %i.xz, align 4, !tbaa !10
  %i.yk = trunc nsw i64 %indvars.iv348.i to i32
  store i32 %i.yk, ptr %i.ya, align 4, !tbaa !10
  %.pre377.i = load i32, ptr %i.xz, align 4, !tbaa !10
  br label %.lr.ph294.i.1

.lr.ph294.i.1:                                    ; preds = %bb.cp, %.lr.ph294.i
  %i.yl = phi i32 [ %i.yg, %.lr.ph294.i ], [ %.pre377.i, %bb.cp ] ; 2 uses
  %indvars.iv.next349.i = add nsw i64 %indvars.iv348.i, 1 ; 2 uses
  %i.ym = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %indvars.iv.next349.i
  %i.yn = load i32, ptr %i.ym, align 4, !tbaa !10 ; 2 uses
  %i.yo = icmp sgt i32 %i.yn, %i.yl
  br i1 %i.yo, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %.lr.ph294.i.1
  store i32 %i.yn, ptr %i.xz, align 4, !tbaa !10
  %i.yp = trunc nsw i64 %indvars.iv.next349.i to i32
  store i32 %i.yp, ptr %i.ya, align 4, !tbaa !10
  %.pre377.i.1 = load i32, ptr %i.xz, align 4, !tbaa !10
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %.lr.ph294.i.1
  %i.yq = phi i32 [ %i.yl, %.lr.ph294.i.1 ], [ %.pre377.i.1, %bb.cq ]
  %indvars.iv.next349.i.1 = add nsw i64 %indvars.iv348.i, 2 ; 2 uses
  %exitcond353.not.i.1 = icmp eq i64 %indvars.iv.next349.i.1, %indvars.iv362.i
  br i1 %exitcond353.not.i.1, label %.lr.ph297.i391.preheader, label %.lr.ph294.i, !llvm.loop !92

.lr.ph297.i391.preheader:                         ; preds = %bb.cr
  %min.iters.check1064 = icmp samesign ult i64 %indvars.iv366.i, 3
  %or.cond1113 = select i1 %min.iters.check1064, i1 true, i1 %diff.check1062
  br i1 %or.cond1113, label %.lr.ph297.i391.preheader1121, label %vector.ph1065

vector.ph1065:                                    ; preds = %.lr.ph297.i391.preheader
  %n.vec1066 = and i64 %i.vk, -8                  ; 2 uses
  %i.yr = add i64 %indvars.iv337.i, %n.vec1066
  br label %vector.body1067

vector.body1067:                                  ; preds = %vector.body1067, %vector.ph1065
  %index1068 = phi i64 [ 0, %vector.ph1065 ], [ %index.next1071, %vector.body1067 ] ; 2 uses
  %i.ys = add i64 %indvars.iv337.i, %index1068    ; 2 uses
  %i.yt = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %i.ys ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 16
  %wide.load1069.a = load <4 x i32>, ptr %i.yt, align 4, !tbaa !10
  %wide.load1070 = load <4 x i32>, ptr %i.yu, align 4, !tbaa !10
  %i.yv = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %i.ys ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 16
  store <4 x i32> %wide.load1069.a, ptr %i.yv, align 4, !tbaa !10
  store <4 x i32> %wide.load1070, ptr %i.yw, align 4, !tbaa !10
  %index.next1071 = add nuw i64 %index1068, 8     ; 2 uses
  %i.yx = icmp eq i64 %index.next1071, %n.vec1066
  br i1 %i.yx, label %.lr.ph297.i391.preheader1121, label %vector.body1067, !llvm.loop !93

.lr.ph297.i391.preheader1121:                     ; preds = %vector.body1067, %.lr.ph297.i391.preheader
  %indvars.iv356.i.ph = phi i64 [ %indvars.iv337.i, %.lr.ph297.i391.preheader ], [ %i.yr, %vector.body1067 ] ; 4 uses
  %i.yy = sub i64 %indvars.iv362.i, %indvars.iv356.i.ph
  %i.yz = sub i64 %i.vi, %indvars.iv356.i.ph
  %xtraiter1198 = and i64 %i.yy, 3                ; 2 uses
  %lcmp.mod1199.not = icmp eq i64 %xtraiter1198, 0
  br i1 %lcmp.mod1199.not, label %.lr.ph297.i391.prol.loopexit, label %.lr.ph297.i391.prol

.lr.ph297.i391.prol:                              ; preds = %.lr.ph297.i391.preheader1121, %.lr.ph297.i391.prol
  %indvars.iv356.i.prol = phi i64 [ %indvars.iv.next357.i.prol, %.lr.ph297.i391.prol ], [ %indvars.iv356.i.ph, %.lr.ph297.i391.preheader1121 ] ; 3 uses
  %prol.iter1200 = phi i64 [ %prol.iter1200.next, %.lr.ph297.i391.prol ], [ 0, %.lr.ph297.i391.preheader1121 ]
  %i.za = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %indvars.iv356.i.prol
  %i.zb = load i32, ptr %i.za, align 4, !tbaa !10
  %i.zc = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %indvars.iv356.i.prol
  store i32 %i.zb, ptr %i.zc, align 4, !tbaa !10
  %indvars.iv.next357.i.prol = add nsw i64 %indvars.iv356.i.prol, 1 ; 2 uses
  %prol.iter1200.next = add i64 %prol.iter1200, 1 ; 2 uses
  %prol.iter1200.cmp.not = icmp eq i64 %prol.iter1200.next, %xtraiter1198
  br i1 %prol.iter1200.cmp.not, label %.lr.ph297.i391.prol.loopexit, label %.lr.ph297.i391.prol, !llvm.loop !94

.lr.ph297.i391.prol.loopexit:                     ; preds = %.lr.ph297.i391.prol, %.lr.ph297.i391.preheader1121
  %indvars.iv356.i.unr = phi i64 [ %indvars.iv356.i.ph, %.lr.ph297.i391.preheader1121 ], [ %indvars.iv.next357.i.prol, %.lr.ph297.i391.prol ]
  %i.zd = icmp ult i64 %i.yz, 3
  br i1 %i.zd, label %._crit_edge298.i.loopexit, label %.lr.ph297.i391

.lr.ph297.i391:                                   ; preds = %.lr.ph297.i391.prol.loopexit, %.lr.ph297.i391
  %indvars.iv356.i = phi i64 [ %indvars.iv.next357.i.3, %.lr.ph297.i391 ], [ %indvars.iv356.i.unr, %.lr.ph297.i391.prol.loopexit ] ; 6 uses
  %i.ze = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %indvars.iv356.i
  %i.zf = load i32, ptr %i.ze, align 4, !tbaa !10
  %i.zg = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %indvars.iv356.i
  store i32 %i.zf, ptr %i.zg, align 4, !tbaa !10
  %indvars.iv.next357.i = add nsw i64 %indvars.iv356.i, 1 ; 2 uses
  %i.zh = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %indvars.iv.next357.i
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !10
  %i.zj = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %indvars.iv.next357.i
  store i32 %i.zi, ptr %i.zj, align 4, !tbaa !10
  %indvars.iv.next357.i.1 = add nsw i64 %indvars.iv356.i, 2 ; 2 uses
  %i.zk = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %indvars.iv.next357.i.1
  %i.zl = load i32, ptr %i.zk, align 4, !tbaa !10
  %i.zm = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %indvars.iv.next357.i.1
  store i32 %i.zl, ptr %i.zm, align 4, !tbaa !10
  %indvars.iv.next357.i.2 = add nsw i64 %indvars.iv356.i, 3 ; 2 uses
  %i.zn = getelementptr inbounds [4 x i8], ptr %i.uq, i64 %indvars.iv.next357.i.2
  %i.zo = load i32, ptr %i.zn, align 4, !tbaa !10
  %i.zp = getelementptr inbounds [4 x i8], ptr %i.uo, i64 %indvars.iv.next357.i.2
  store i32 %i.zo, ptr %i.zp, align 4, !tbaa !10
  %indvars.iv.next357.i.3 = add nsw i64 %indvars.iv356.i, 4 ; 2 uses
  %exitcond361.not.i.3 = icmp eq i64 %indvars.iv.next357.i.3, %indvars.iv362.i
  br i1 %exitcond361.not.i.3, label %._crit_edge298.i.loopexit, label %.lr.ph297.i391, !llvm.loop !95

._crit_edge298.i.loopexit:                        ; preds = %.lr.ph297.i391, %.lr.ph297.i391.prol.loopexit
  %indvars.iv.next365.i = add nuw nsw i64 %indvars.iv364.i, 1
  %indvars.iv.next328.i = add nsw i32 %indvars.iv327.i, -1
  %indvars.iv.next363.i = add nuw nsw i64 %indvars.iv362.i, 1
  %indvars.iv.next367.i = add nuw nsw i64 %indvars.iv366.i, 1 ; 2 uses
  %exitcond375.i = icmp eq i64 %indvars.iv.next367.i, %wide.trip.count374.i
  br i1 %exitcond375.i, label %.critedge2.i.a, label %bb.bq, !llvm.loop !96

.critedge2.split.loop.exit404.i:                  ; preds = %bb.bu
  %i.zq = trunc nuw nsw i64 %indvars.iv364.i to i32
  br label %.critedge2.i.a

.critedge2.split.loop.exit406.i:                  ; preds = %good_ratio.exit258.i
  %i.zr = trunc nuw nsw i64 %indvars.iv364.i to i32
  br label %.critedge2.i.a

.critedge2.i.a:                                   ; preds = %._crit_edge298.i.loopexit, %.critedge2.split.loop.exit406.i, %.critedge2.split.loop.exit404.i
  %.lcssa.i392 = phi i32 [ %i.zq, %.critedge2.split.loop.exit404.i ], [ %i.zr, %.critedge2.split.loop.exit406.i ], [ %i.vf, %._crit_edge298.i.loopexit ] ; 2 uses
  %smin.i393 = call i32 @llvm.smin.i32(i32 %.lcssa.i392, i32 1)
  %12 = add i32 %smin.i393, -1
  br label %bb.cs

bb.cs:                                            ; preds = %bb.ct, %.critedge2.i.a
  %.2226303.i = phi i32 [ %.lcssa.i392, %.critedge2.i.a ], [ %i.zz, %bb.ct ] ; 4 uses
  %i.zs = zext nneg i32 %.2226303.i to i64
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %i.zs ; 2 uses
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !10
  %i.zv = getelementptr i8, ptr %i.zt, i64 -4
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !10
  %i.zx = sub nsw i32 %i.zu, %i.zw
  %i.zy = icmp slt i32 %i.zx, 3
  br i1 %i.zy, label %bb.ct, label %.critedge8.i

bb.ct:                                            ; preds = %bb.cs
  %i.zz = add nsw i32 %.2226303.i, -1
  %i.aaa = icmp sgt i32 %.2226303.i, 1
  br i1 %i.aaa, label %bb.cs, label %.critedge8.i, !llvm.loop !97

.critedge8.i:                                     ; preds = %bb.ct, %bb.cs
  %.2226.lcssa.i = phi i32 [ %12, %bb.ct ], [ %.2226303.i, %bb.cs ] ; 2 uses
  %i.aab = sext i32 %.2226.lcssa.i to i64         ; 2 uses
  %i.aac = getelementptr inbounds [4 x i8], ptr %i.uy, i64 %i.aab
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !10 ; 2 uses
  %i.aae = getelementptr inbounds [4 x i8], ptr %i.uz, i64 %i.aab
  %i.aaf = load i32, ptr %i.aae, align 4, !tbaa !10
  %i.aag = sub i32 %i.to, %spec.select348
  %i.aah = add i32 %i.aag, %i.aad
  %i.aai = add i32 %i.aah, %i.aaf
  call void @free(ptr noundef nonnull %i.uy) #18
  call void @free(ptr noundef %i.uz) #18
  call void @free(ptr noundef %i.uo) #18
  call void @free(ptr noundef %i.uq) #18
  br label %extend_fw.exit

extend_fw.exit:                                   ; preds = %bb.bn, %bb.bo, %bb.cj, %bb.cl, %bb.cn, %.critedge8.i
  %spec.select348.pn = phi i32 [ %spec.select348, %bb.bn ], [ %i.tu, %bb.bo ], [ %i.aad, %.critedge8.i ], [ %spec.select348, %bb.cj ], [ %spec.select348, %bb.cl ], [ %.3230.i, %bb.cn ]
  %.0542.a = phi i32 [ %i.uh, %bb.bn ], [ %i.uj, %bb.bo ], [ %i.aai, %.critedge8.i ], [ %i.xt, %bb.cj ], [ %i.xv, %bb.cl ], [ %i.xx, %bb.cn ]
  %.0234.i = phi i32 [ 0, %bb.bn ], [ 0, %bb.bo ], [ %.2226.lcssa.i, %.critedge8.i ], [ %i.xs, %bb.cj ], [ %i.xu, %bb.cl ], [ %i.xw, %bb.cn ]
  %.0543 = add nsw i32 %spec.select348.pn, %i.th  ; 2 uses
  %i.aaj = load i32, ptr %i.tg, align 4, !tbaa !44
  %i.aak = sub nsw i32 %.0543, %i.aaj
  %i.aal = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 56), align 8, !tbaa !143
  %i.aam = mul nsw i32 %i.aak, %i.aal
  %i.aan = load i32, ptr getelementptr inbounds nuw (i8, ptr @options, i64 48), align 8, !tbaa !144
  %i.aao = mul nsw i32 %i.aan, %.0234.i
  %i.aap = add nsw i32 %i.aao, %i.aam
  %i.aaq = icmp sgt i32 %i.aap, -1
  br i1 %i.aaq, label %bb.cu, label %.thread555

bb.cu:                                            ; preds = %extend_fw.exit
  store i32 %.0543, ptr %i.tg, align 4, !tbaa !44
  store i32 %.0542.a, ptr %i.tn, align 4, !tbaa !43
  br label %.thread555

.thread555:                                       ; preds = %extend_fw.exit, %bb.cu, %.critedge7.thread, %bb.az, %.thread548
  %i.aar = load i32, ptr %i.bl, align 8, !tbaa !19 ; 2 uses
  %i.aas = icmp ugt i32 %i.aar, 1
  br i1 %i.aas, label %.lr.ph663, label %.loopexit599

.lr.ph663:                                        ; preds = %.thread555, %bb.fg
  %i.aat = phi i32 [ %i.atq, %bb.fg ], [ %i.aar, %.thread555 ] ; 2 uses
  %.0285662 = phi i32 [ %i.atr, %bb.fg ], [ 1, %.thread555 ] ; 6 uses
  %i.aau = load ptr, ptr %i.bf, align 8, !tbaa !20 ; 2 uses
  %i.aav = add i32 %.0285662, -1                  ; 2 uses
  %i.aaw = zext i32 %i.aav to i64
  %i.aax = getelementptr inbounds nuw [8 x i8], ptr %i.aau, i64 %i.aaw
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !29 ; 2 uses
  %i.aaz = zext i32 %.0285662 to i64
  %i.aba = getelementptr inbounds nuw [8 x i8], ptr %i.aau, i64 %i.aaz
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !29 ; 3 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 4
  %i.abd = load i32, ptr %i.abc, align 4, !tbaa !31 ; 6 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aay, i64 12 ; 2 uses
  %i.abf = load i32, ptr %i.abe, align 4, !tbaa !44 ; 9 uses
  %i.abg = xor i32 %i.abf, -1
  %i.abh = add i32 %i.abd, %i.abg                 ; 14 uses
  %i.abi = icmp sgt i32 %i.abh, 0
  br i1 %i.abi, label %bb.cv, label %bb.fg

bb.cv:                                            ; preds = %.lr.ph663
  %i.abj = load i32, ptr %i.abb, align 4, !tbaa !32 ; 2 uses
  %i.abk = add i32 %i.abj, -1                     ; 4 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.aay, i64 8 ; 3 uses
  %i.abm = load i32, ptr %i.abl, align 4, !tbaa !43 ; 10 uses
  %i.abn = icmp ugt i32 %i.abk, %i.abm
  br i1 %i.abn, label %bb.cw, label %bb.fg

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %i.abo = icmp samesign ult i32 %i.abh, 501
  %.pre760.a = load i32, ptr %i.x, align 4, !tbaa !36 ; 3 uses
  %.pre763.a = load ptr, ptr %i.w, align 8, !tbaa !27 ; 2 uses
  br i1 %i.abo, label %bb.cx, label %.thread559

bb.cx:                                            ; preds = %bb.cw
  %i.abp = load ptr, ptr %i.o, align 8, !tbaa !136
  %i.abq = zext i32 %i.abf to i64
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abp, i64 %i.abq ; 4 uses
  %i.abs = zext i32 %i.abm to i64
  %i.abt = getelementptr inbounds nuw i8, ptr %.pre763.a, i64 %i.abs ; 4 uses
  %i.abu = xor i32 %i.abm, -1
  %i.abv = add i32 %i.abj, %i.abu                 ; 8 uses
  %i.abw = icmp ugt i32 %i.abv, 999999
  br i1 %i.abw, label %greedy.exitthread-pre-split, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.abx = sub nsw i32 %i.abv, %i.abh             ; 3 uses
  %i.aby = uitofp nneg i32 %i.abh to double       ; 2 uses
  %i.abz = call double @llvm.fmuladd.f64(double %i.aby, double 2.000000e-01, double 1.000000e+00)
  %i.aca = fptoui double %i.abz to i32
  %..i = call i32 @llvm.umax.i32(i32 %.pre760.a, i32 %i.aca) ; 22 uses
  %i.acb = icmp slt i32 %i.abx, 0
  br i1 %i.acb, label %bb.cz, label %.lr.ph.i408.preheader

bb.cz:                                            ; preds = %bb.cy
  %i.acc = uitofp i32 %.pre760.a to double        ; 2 uses
  %i.acd = uitofp nneg i32 %i.abv to double       ; 2 uses
  %i.ace = fmul nnan double %i.acd, 1.200000e+00  ; 2 uses
  %i.acf = fcmp olt double %i.ace, %i.acc
  %.501.i = select i1 %i.acf, double %i.ace, double %i.acc
  %i.acg = fcmp ult double %.501.i, %i.aby
  br i1 %i.acg, label %bb.dc, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ach = add nuw i32 %i.abm, 1
  %i.aci = add i32 %i.abf, 1
  %i.acj = add i32 %i.abd, -1
  %i.ack = call ptr @xmalloc(i64 noundef 32) #18  ; 5 uses
  store i32 %i.ach, ptr %i.ack, align 4, !tbaa !32
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 4
  store i32 %i.aci, ptr %i.acl, align 4, !tbaa !31
  %i.acm = getelementptr inbounds nuw i8, ptr %i.ack, i64 8
  store i32 %i.abk, ptr %i.acm, align 4, !tbaa !43
  %i.acn = getelementptr inbounds nuw i8, ptr %i.ack, i64 12
  store i32 %i.acj, ptr %i.acn, align 4, !tbaa !44
  %i.aco = load i32, ptr %i.s, align 4, !tbaa !18 ; 2 uses
  %i.acp = load i32, ptr %i.t, align 8, !tbaa !19 ; 3 uses
  %.not.i.i426 = icmp ugt i32 %i.aco, %i.acp
  %.pre.i.i = load ptr, ptr %7, align 8, !tbaa !20 ; 2 uses
  br i1 %.not.i.i426, label %add_col_elt.exit.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.acq = add i32 %i.aco, 5                      ; 2 uses
  store i32 %i.acq, ptr %i.s, align 4, !tbaa !18
  %i.acr = zext i32 %i.acq to i64
  %i.acs = shl nuw nsw i64 %i.acr, 3
  %i.act = call ptr @xrealloc(ptr noundef %.pre.i.i, i64 noundef %i.acs) #18 ; 2 uses
  store ptr %i.act, ptr %7, align 8, !tbaa !20
  br label %add_col_elt.exit.i

add_col_elt.exit.i:                               ; preds = %bb.db, %bb.da
  %i.acu = phi ptr [ %i.act, %bb.db ], [ %.pre.i.i, %bb.da ]
  %i.acv = add i32 %i.acp, 1
  store i32 %i.acv, ptr %i.t, align 8, !tbaa !19
  %i.acw = zext i32 %i.acp to i64
  %i.acx = getelementptr inbounds nuw [8 x i8], ptr %i.acu, i64 %i.acw
  store ptr %i.ack, ptr %i.acx, align 8, !tbaa !40
  %i.acy = sub nsw i32 %i.abh, %i.abv
  %i.acz = call double @llvm.fmuladd.f64(double %i.acd, double 2.000000e-01, double 1.000000e+00)
  %i.ada = fptoui double %i.acz to i32
  %i.adb = add i32 %i.acy, %i.ada
  br label %greedy.exitthread-pre-split

bb.dc:                                            ; preds = %bb.cz
  %i.adc = add i32 %..i, 1
  br label %greedy.exitthread-pre-split

.lr.ph.i408.preheader:                            ; preds = %bb.cy
  %.neg606.i = sub i32 %i.abx, %..i               ; 2 uses
  br label %.lr.ph.i408

.lr.ph.i408:                                      ; preds = %.lr.ph.i408.preheader, %bb.dd
  %.0442532.i = phi i32 [ %i.adm, %bb.dd ], [ %i.abh, %.lr.ph.i408.preheader ] ; 3 uses
  %.0453531.i = phi i32 [ %i.adn, %bb.dd ], [ %i.abv, %.lr.ph.i408.preheader ] ; 3 uses
  %i.add = zext nneg i32 %.0442532.i to i64
  %i.ade = getelementptr i8, ptr %i.abr, i64 %i.add
  %i.adf = getelementptr i8, ptr %i.ade, i64 -1
  %i.adg = load i8, ptr %i.adf, align 1, !tbaa !20
  %i.adh = zext nneg i32 %.0453531.i to i64
  %i.adi = getelementptr i8, ptr %i.abt, i64 %i.adh
  %i.adj = getelementptr i8, ptr %i.adi, i64 -1
  %i.adk = load i8, ptr %i.adj, align 1, !tbaa !20
  %i.adl = icmp eq i8 %i.adg, %i.adk
  br i1 %i.adl, label %bb.dd, label %.critedge.thread.i409

bb.dd:                                            ; preds = %.lr.ph.i408
  %i.adm = add nsw i32 %.0442532.i, -1            ; 3 uses
  %i.adn = add nsw i32 %.0453531.i, -1
  %i.ado = icmp ne i32 %i.adm, 0                  ; 2 uses
  %i.adp = icmp sgt i32 %.0453531.i, 1
  %or.cond.i424 = and i1 %i.ado, %i.adp
  br i1 %or.cond.i424, label %.lr.ph.i408, label %.critedge.i425, !llvm.loop !98

.critedge.i425:                                   ; preds = %bb.dd
  br i1 %i.ado, label %.critedge.thread.i409, label %bb.de

bb.de:                                            ; preds = %.critedge.i425
  %i.adq = add i32 %i.abm, 1
  %i.adr = add i32 %i.adq, %i.abx
  %i.ads = add i32 %i.abf, 1
  %i.adt = add i32 %i.abd, -1
  %i.adu = call ptr @xmalloc(i64 noundef 32) #18  ; 5 uses
  store i32 %i.adr, ptr %i.adu, align 4, !tbaa !32
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 4
  store i32 %i.ads, ptr %i.adv, align 4, !tbaa !31
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adu, i64 8
  store i32 %i.abk, ptr %i.adw, align 4, !tbaa !43
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adu, i64 12
  store i32 %i.adt, ptr %i.adx, align 4, !tbaa !44
  %i.ady = load i32, ptr %i.s, align 4, !tbaa !18 ; 2 uses
  %i.adz = load i32, ptr %i.t, align 8, !tbaa !19 ; 3 uses
  %.not.i505.i = icmp ugt i32 %i.ady, %i.adz
  %.pre.i506.i = load ptr, ptr %7, align 8, !tbaa !20 ; 2 uses
  br i1 %.not.i505.i, label %add_col_elt.exit508.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.aea = add i32 %i.ady, 5                      ; 2 uses
  store i32 %i.aea, ptr %i.s, align 4, !tbaa !18
  %i.aeb = zext i32 %i.aea to i64
  %i.aec = shl nuw nsw i64 %i.aeb, 3
end_hunk_1
