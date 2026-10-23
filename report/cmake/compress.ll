Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/compress?download=true
inline.NumInlined: 91
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@BZ2_compressBlock:bb.a
bb.af:                                            ; preds = %bb.ae
  %i.mc = add nsw i32 %.183.i, -2
  %i.md = lshr i32 %i.mc, 1
  br label %bb.ab

.loopexit96.loopexit.i:                           ; preds = %bb.ae
  %i.me = trunc nsw i64 %indvars.iv.next118.i to i32
  br label %.loopexit96.i

.loopexit96.i:                                    ; preds = %.loopexit96.loopexit.i, %bb.z
  %.284.i = phi i32 [ %.082107.i, %bb.z ], [ 0, %.loopexit96.loopexit.i ]
  %.3.i = phi i32 [ %.079108.i, %bb.z ], [ %i.me, %.loopexit96.loopexit.i ] ; 2 uses
  %i.mf = load i8, ptr %i.ky, align 1, !tbaa !19  ; 2 uses
  store i8 %i.ld, ptr %i.ky, align 1, !tbaa !19
  %.not95102.i = icmp eq i8 %i.lp, %i.mf
  br i1 %.not95102.i, label %._crit_edge.i, label %.lr.ph105.i

.lr.ph105.i:                                      ; preds = %.loopexit96.i, %.lr.ph105.i
  %.077104.i = phi ptr [ %i.mg, %.lr.ph105.i ], [ %i.ky, %.loopexit96.i ]
  %.078103.i = phi i8 [ %i.mh, %.lr.ph105.i ], [ %i.mf, %.loopexit96.i ]
  %i.mg = getelementptr inbounds nuw i8, ptr %.077104.i, i64 1 ; 4 uses
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !19  ; 2 uses
  store i8 %.078103.i, ptr %i.mg, align 1, !tbaa !19
  %.not95.i = icmp eq i8 %i.lp, %i.mh
  br i1 %.not95.i, label %._crit_edge.i, label %.lr.ph105.i, !llvm.loop !25

._crit_edge.i:                                    ; preds = %.lr.ph105.i, %.loopexit96.i
  %.077.lcssa.i = phi ptr [ %i.ky, %.loopexit96.i ], [ %i.mg, %.lr.ph105.i ]
  %i.mi = ptrtoint ptr %.077.lcssa.i to i64
  %i.mj = sub i64 %i.mi, %i.kz
  %i.mk = trunc i64 %i.mj to i32
  %i.ml = add nsw i32 %i.mk, 1                    ; 2 uses
  %i.mm = trunc i32 %i.ml to i16
  %i.mn = sext i32 %.3.i to i64
  %i.mo = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %i.mn
  store i16 %i.mm, ptr %i.mo, align 2, !tbaa !79
  %i.mp = add nsw i32 %.3.i, 1
  %i.mq = sext i32 %i.ml to i64
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.kx, i64 %i.mq ; 2 uses
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !74
  %i.mt = add nsw i32 %i.ms, 1
  store i32 %i.mt, ptr %i.mr, align 4, !tbaa !74
  %.pre127.i = load i32, ptr %i.f, align 4, !tbaa !60
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.i, %bb.y
  %i.mu = phi i32 [ %i.lc, %bb.y ], [ %.pre127.i, %._crit_edge.i ] ; 2 uses
  %i.mv = phi i8 [ %i.ld, %bb.y ], [ %i.lp, %._crit_edge.i ]
  %.385.i = phi i32 [ %i.lr, %bb.y ], [ %.284.i, %._crit_edge.i ] ; 3 uses
  %.4.i = phi i32 [ %.079108.i, %bb.y ], [ %i.mp, %._crit_edge.i ] ; 3 uses
  %indvars.iv.next121.i = add nuw nsw i64 %indvars.iv120.i, 1 ; 2 uses
  %i.mw = sext i32 %i.mu to i64
  %i.mx = icmp slt i64 %indvars.iv.next121.i, %i.mw
  br i1 %i.mx, label %bb.x, label %._crit_edge111.i, !llvm.loop !26

._crit_edge111.i:                                 ; preds = %bb.ag
  %i.my = icmp sgt i32 %.385.i, 0
  br i1 %i.my, label %bb.ah, label %generateMTFValues.exit

bb.ah:                                            ; preds = %._crit_edge111.i
  %i.mz = add nsw i32 %.385.i, -1
  %i.na = sext i32 %.4.i to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.am, %bb.ah
  %indvars.iv123.i = phi i64 [ %indvars.iv.next124.i, %bb.am ], [ %i.na, %bb.ah ] ; 2 uses
  %.486.i = phi i32 [ %i.nj, %bb.am ], [ %i.mz, %bb.ah ] ; 3 uses
  %i.nb = and i32 %.486.i, 1
  %.not93.i = icmp eq i32 %i.nb, 0
  br i1 %.not93.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.nc = load i32, ptr %i.kw, align 4, !tbaa !74
  %i.nd = add nsw i32 %i.nc, 1
  store i32 %i.nd, ptr %i.kw, align 4, !tbaa !74
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.ne = load i32, ptr %i.kx, align 8, !tbaa !74
  %i.nf = add nsw i32 %i.ne, 1
  store i32 %i.nf, ptr %i.kx, align 8, !tbaa !74
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sink126.i = phi i16 [ 0, %bb.ak ], [ 1, %bb.aj ]
  %i.ng = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %indvars.iv123.i
  store i16 %.sink126.i, ptr %i.ng, align 2, !tbaa !79
  %indvars.iv.next124.i = add nsw i64 %indvars.iv123.i, 1 ; 2 uses
  %i.nh = icmp slt i32 %.486.i, 2
  br i1 %i.nh, label %.loopexit.loopexit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ni = add nsw i32 %.486.i, -2
  %i.nj = lshr i32 %i.ni, 1
  br label %bb.ai

.loopexit.loopexit.i:                             ; preds = %bb.al
  %i.nk = trunc nsw i64 %indvars.iv.next124.i to i32
  br label %generateMTFValues.exit

generateMTFValues.exit:                           ; preds = %.preheader.i, %._crit_edge111.i, %.loopexit.loopexit.i
  %.7.i = phi i32 [ %.4.i, %._crit_edge111.i ], [ %i.nk, %.loopexit.loopexit.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.nl = add nsw i32 %i.kh, 1                    ; 2 uses
  %i.nm = trunc i32 %i.nl to i16
  %i.nn = sext i32 %.7.i to i64
  %i.no = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %i.nn
  store i16 %i.nm, ptr %i.no, align 2, !tbaa !79
  %i.np = add nsw i32 %.7.i, 1                    ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.nr = sext i32 %i.nl to i64
  %i.ns = getelementptr inbounds [4 x i8], ptr %i.nq, i64 %i.nr ; 2 uses
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !74
  %i.nu = add nsw i32 %i.nt, 1
  store i32 %i.nu, ptr %i.ns, align 4, !tbaa !74
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 668 ; 8 uses
  store i32 %i.np, ptr %i.nv, align 4, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 7 uses
  %i.nx = load i32, ptr %i.nw, align 8, !tbaa !64
  %i.ny = icmp sgt i32 %i.nx, 2
  br i1 %i.ny, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %generateMTFValues.exit
  %i.nz = load ptr, ptr @stderr, align 8, !tbaa !66
  %i.oa = load i32, ptr %i.f, align 4, !tbaa !60
  %i.ob = load i32, ptr %i.js, align 4, !tbaa !73
  %i.oc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nz, ptr noundef nonnull @.str.2, i32 noundef %i.oa, i32 noundef %i.np, i32 noundef %i.ob) #10 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %generateMTFValues.exit
  %i.od = load i32, ptr %i.js, align 4, !tbaa !73 ; 4 uses
  %i.oe = add i32 %i.od, 2                        ; 7 uses
  %i.of = icmp sgt i32 %i.od, -2                  ; 6 uses
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 37708 ; 9 uses
  br i1 %i.of, label %.preheader1980.preheader.i, label %.split2109.i

.preheader1980.preheader.i:                       ; preds = %bb.ao
  %smax.i = call i32 @llvm.smax.i32(i32 %i.oe, i32 1)
  %i.oh = zext nneg i32 %smax.i to i64            ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.og, i8 15, i64 %i.oh, i1 false), !tbaa !19
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 37966
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.oi, i8 15, i64 %i.oh, i1 false), !tbaa !19
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 38224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.oj, i8 15, i64 %i.oh, i1 false), !tbaa !19
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 38482
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.ok, i8 15, i64 %i.oh, i1 false), !tbaa !19
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 38740
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ol, i8 15, i64 %i.oh, i1 false), !tbaa !19
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 38998
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.om, i8 15, i64 %i.oh, i1 false), !tbaa !19
  br label %.split2109.i

.split2109.i:                                     ; preds = %.preheader1980.preheader.i, %bb.ao
  %i.on = load i32, ptr %i.nv, align 4, !tbaa !80 ; 2 uses
  %i.oo = icmp sgt i32 %i.on, 0
  br i1 %i.oo, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.split2109.i
  call void @BZ2_bz__AssertH__fail(i32 noundef 3001) #11
  %.pr.i = load i32, ptr %i.nv, align 4, !tbaa !80
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.split2109.i
  %i.op = phi i32 [ %.pr.i, %bb.ap ], [ %i.on, %.split2109.i ] ; 5 uses
  %i.oq = icmp slt i32 %i.op, 200
  br i1 %i.oq, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.or = icmp samesign ult i32 %i.op, 600
  br i1 %i.or, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.os = icmp samesign ult i32 %i.op, 1200
  br i1 %i.os, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ot = icmp samesign ugt i32 %i.op, 2399       ; 2 uses
  %.1516.i = select i1 %i.ot, i32 6, i32 5
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq
  %i.ou = phi i1 [ false, %bb.as ], [ false, %bb.aq ], [ false, %bb.ar ], [ %i.ot, %bb.at ] ; 3 uses
  %.01481.i = phi i32 [ 4, %bb.as ], [ 2, %bb.aq ], [ 3, %bb.ar ], [ %.1516.i, %bb.at ] ; 7 uses
  %i.ov = sext i32 %i.od to i64
  %smax2353.i = call i32 @llvm.smax.i32(i32 %i.oe, i32 1)
  %i.ow = zext nneg i32 %.01481.i to i64          ; 17 uses
  %wide.trip.count.i122 = zext nneg i32 %smax2353.i to i64 ; 12 uses
  %min.iters.check1090 = icmp slt i32 %i.oe, 8
  %min.iters.check1092 = icmp slt i32 %i.oe, 16
  %i.ox = and i64 %wide.trip.count.i122, 8
  %n.vec1094 = and i64 %wide.trip.count.i122, 2147483632 ; 4 uses
  %cmp.n1105 = icmp eq i64 %n.vec1094, %wide.trip.count.i122
  %min.epilog.iters.check1110.not.not = icmp eq i64 %i.ox, 0
  %n.vec1112 = and i64 %wide.trip.count.i122, 2147483640 ; 3 uses
  %cmp.n1126 = icmp eq i64 %n.vec1112, %wide.trip.count.i122
  br label %bb.av

.preheader1979.i:                                 ; preds = %._crit_edge2118.i
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 45448 ; 3 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 37966
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 51640 ; 51 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 38482
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 38224
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 38998
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 38740
  %i.pf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 1704 ; 3 uses
  %i.ph = shl nuw nsw i64 %i.ow, 2
  %i.pi = shl nuw nsw i64 %wide.trip.count.i122, 2
  %i.pj = shl nuw nsw i64 %i.ow, 1
  %brmerge.not.i = and i1 %i.of, %i.ou
  %min.iters.check1128 = icmp samesign ult i32 %.01481.i, 4
  %n.vec1130 = and i64 %i.ow, 4                   ; 2 uses
  %cmp.n1135 = icmp eq i64 %n.vec1130, %i.ow
  %xtraiter1373 = and i64 %i.ow, 3                ; 3 uses
  %i.pk = icmp samesign ult i32 %.01481.i, 4
  %unroll_iter1379 = and i64 %i.ow, 4
  %lcmp.mod1375.not = icmp eq i64 %xtraiter1373, 0
  %lcmp.mod1378 = icmp ne i64 %xtraiter1373, 0
  br label %.preheader1978.i

bb.av:                                            ; preds = %._crit_edge2118.i, %bb.au
  %indvars.iv2354.i = phi i64 [ %i.ow, %bb.au ], [ %indvars.iv.next2355.i, %._crit_edge2118.i ] ; 6 uses
  %.014692121.i = phi i32 [ 0, %bb.au ], [ %i.ri, %._crit_edge2118.i ] ; 4 uses
  %.014792120.i = phi i32 [ %i.op, %bb.au ], [ %i.rj, %._crit_edge2118.i ] ; 2 uses
  %i.pl = trunc nuw nsw i64 %indvars.iv2354.i to i32 ; 3 uses
  %i.pm = sdiv i32 %.014792120.i, %i.pl           ; 2 uses
  %i.pn = add nsw i32 %.014692121.i, -1           ; 3 uses
  %i.po = icmp sgt i32 %i.pm, 0
  %i.pp = icmp sle i32 %i.pn, %i.od
  %i.pq = select i1 %i.po, i1 %i.pp, i1 false
  br i1 %i.pq, label %.lr.ph.preheader.i, label %._crit_edge2113.thread.i

.lr.ph.preheader.i:                               ; preds = %bb.av
  %i.pr = sext i32 %i.pn to i64
  br label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %.lr.ph.i129, %.lr.ph.preheader.i
  %indvars.iv.i130 = phi i64 [ %i.pr, %.lr.ph.preheader.i ], [ %indvars.iv.next.i131, %.lr.ph.i129 ] ; 2 uses
  %.014772110.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.pu, %.lr.ph.i129 ] ; 2 uses
  %indvars.iv.next.i131 = add nsw i64 %indvars.iv.i130, 1 ; 3 uses
  %i.ps = getelementptr inbounds [4 x i8], ptr %i.nq, i64 %indvars.iv.next.i131
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !74
  %i.pu = add nsw i32 %i.pt, %.014772110.i        ; 5 uses
  %i.pv = icmp slt i32 %i.pu, %i.pm
  %i.pw = icmp slt i64 %indvars.iv.i130, %i.ov
  %i.px = and i1 %i.pw, %i.pv
  br i1 %i.px, label %.lr.ph.i129, label %._crit_edge2113.i, !llvm.loop !27

._crit_edge2113.i:                                ; preds = %.lr.ph.i129
  %i.py = trunc nsw i64 %indvars.iv.next.i131 to i32 ; 4 uses
  %i.pz = icmp slt i32 %.014692121.i, %i.py
  br i1 %i.pz, label %bb.aw, label %._crit_edge2113.thread.i

bb.aw:                                            ; preds = %._crit_edge2113.i
  %i.qa = icmp ne i64 %indvars.iv2354.i, %i.ow
  %i.qb = icmp ne i64 %indvars.iv2354.i, 1
  %or.cond.i = and i1 %i.qa, %i.qb
  br i1 %or.cond.i, label %bb.ax, label %._crit_edge2113.thread.i

bb.ax:                                            ; preds = %bb.aw
  %i.qc = sub i32 %.01481.i, %i.pl
  %i.qd = and i32 %i.qc, -2147483647
  %i.qe = icmp eq i32 %i.qd, 1                    ; 2 uses
  %spec.select = select i1 %i.qe, i32 %.014772110.i, i32 %i.pu
  %i.qf = sext i1 %i.qe to i32
  %spec.select183 = add nsw i32 %i.py, %i.qf
  br label %._crit_edge2113.thread.i

._crit_edge2113.thread.i:                         ; preds = %bb.ax, %bb.aw, %._crit_edge2113.i, %bb.av
  %.11478.i = phi i32 [ 0, %bb.av ], [ %spec.select, %bb.ax ], [ %i.pu, %bb.aw ], [ %i.pu, %._crit_edge2113.i ] ; 3 uses
  %.11473.i = phi i32 [ %i.pn, %bb.av ], [ %spec.select183, %bb.ax ], [ %i.py, %bb.aw ], [ %i.py, %._crit_edge2113.i ] ; 3 uses
  %i.qg = load i32, ptr %i.nw, align 8, !tbaa !64
  %i.qh = icmp sgt i32 %i.qg, 2
  br i1 %i.qh, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %._crit_edge2113.thread.i
  %i.qi = load ptr, ptr @stderr, align 8, !tbaa !66
  %i.qj = sitofp i32 %.11478.i to float
  %i.qk = fpext nnan ninf float %i.qj to double
  %i.ql = fmul nnan double %i.qk, 1.000000e+02
  %i.qm = load i32, ptr %i.nv, align 4, !tbaa !80
  %i.qn = sitofp i32 %i.qm to float
  %i.qo = fpext float %i.qn to double
  %i.qp = fdiv double %i.ql, %i.qo
  %i.qq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qi, ptr noundef nonnull @.str.3, i32 noundef %i.pl, i32 noundef %.014692121.i, i32 noundef %.11473.i, i32 noundef %.11478.i, double noundef %i.qp) #10 ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %._crit_edge2113.thread.i
  br i1 %i.of, label %iter.check1107, label %._crit_edge2118.i

iter.check1107:                                   ; preds = %bb.az
  %i.qr = getelementptr [258 x i8], ptr %0, i64 %indvars.iv2354.i
  %i.qs = getelementptr i8, ptr %i.qr, i64 37450  ; 3 uses
  %i.qt = sext i32 %.11473.i to i64               ; 3 uses
  %i.qu = sext i32 %.014692121.i to i64           ; 3 uses
  br i1 %min.iters.check1090, label %vec.epilog.scalar.ph1108.preheader, label %vector.main.loop.iter.check1091

vector.main.loop.iter.check1091:                  ; preds = %iter.check1107
  br i1 %min.iters.check1092, label %vec.epilog.ph1111, label %vector.ph1093

vector.ph1093:                                    ; preds = %vector.main.loop.iter.check1091
  %broadcast.splatinsert1095 = insertelement <16 x i64> poison, i64 %i.qt, i64 0
  %broadcast.splat1096 = shufflevector <16 x i64> %broadcast.splatinsert1095, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert1097 = insertelement <16 x i64> poison, i64 %i.qu, i64 0
  %broadcast.splat1098 = shufflevector <16 x i64> %broadcast.splatinsert1097, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body1099

vector.body1099:                                  ; preds = %vector.ph1093, %vector.body1099
  %index1100 = phi i64 [ 0, %vector.ph1093 ], [ %index.next1102, %vector.body1099 ] ; 2 uses
  %vec.ind1101 = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph1093 ], [ %vec.ind.next1103, %vector.body1099 ] ; 3 uses
  %i.qv = icmp slt <16 x i64> %vec.ind1101, %broadcast.splat1098
  %i.qw = icmp sgt <16 x i64> %vec.ind1101, %broadcast.splat1096
  %i.qx = select <16 x i1> %i.qv, <16 x i1> splat (i1 true), <16 x i1> %i.qw
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qs, i64 %index1100
  %i.qz = select <16 x i1> %i.qx, <16 x i8> splat (i8 15), <16 x i8> zeroinitializer
  store <16 x i8> %i.qz, ptr %i.qy, align 1, !tbaa !19
  %index.next1102 = add nuw i64 %index1100, 16    ; 2 uses
  %vec.ind.next1103 = add nuw nsw <16 x i64> %vec.ind1101, splat (i64 16)
  %i.ra = icmp eq i64 %index.next1102, %n.vec1094
  br i1 %i.ra, label %middle.block1104, label %vector.body1099, !llvm.loop !28

middle.block1104:                                 ; preds = %vector.body1099
  br i1 %cmp.n1105, label %._crit_edge2118.i, label %vec.epilog.iter.check1109

vec.epilog.iter.check1109:                        ; preds = %middle.block1104
  br i1 %min.epilog.iters.check1110.not.not, label %vec.epilog.scalar.ph1108.preheader, label %vec.epilog.ph1111, !prof !81

vec.epilog.ph1111:                                ; preds = %vector.main.loop.iter.check1091, %vec.epilog.iter.check1109
  %vec.epilog.resume.val1106 = phi i64 [ %n.vec1094, %vec.epilog.iter.check1109 ], [ 0, %vector.main.loop.iter.check1091 ] ; 2 uses
  %broadcast.splatinsert1113 = insertelement <8 x i64> poison, i64 %i.qt, i64 0
  %broadcast.splat1114 = shufflevector <8 x i64> %broadcast.splatinsert1113, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1115 = insertelement <8 x i64> poison, i64 %i.qu, i64 0
  %broadcast.splat1116 = shufflevector <8 x i64> %broadcast.splatinsert1115, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1117 = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val1106, i64 0
  %broadcast.splat1118 = shufflevector <8 x i64> %broadcast.splatinsert1117, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction1119 = or disjoint <8 x i64> %broadcast.splat1118, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body1120

vec.epilog.vector.body1120:                       ; preds = %vec.epilog.vector.body1120, %vec.epilog.ph1111
  %index1121 = phi i64 [ %vec.epilog.resume.val1106, %vec.epilog.ph1111 ], [ %index.next1123, %vec.epilog.vector.body1120 ] ; 2 uses
  %vec.ind1122 = phi <8 x i64> [ %induction1119, %vec.epilog.ph1111 ], [ %vec.ind.next1124, %vec.epilog.vector.body1120 ] ; 3 uses
  %i.rb = icmp slt <8 x i64> %vec.ind1122, %broadcast.splat1116
  %i.rc = icmp sgt <8 x i64> %vec.ind1122, %broadcast.splat1114
  %i.rd = select <8 x i1> %i.rb, <8 x i1> splat (i1 true), <8 x i1> %i.rc
  %i.re = getelementptr inbounds nuw i8, ptr %i.qs, i64 %index1121
  %i.rf = select <8 x i1> %i.rd, <8 x i8> splat (i8 15), <8 x i8> zeroinitializer
  store <8 x i8> %i.rf, ptr %i.re, align 1, !tbaa !19
  %index.next1123 = add nuw i64 %index1121, 8     ; 2 uses
  %vec.ind.next1124 = add nuw nsw <8 x i64> %vec.ind1122, splat (i64 8)
  %i.rg = icmp eq i64 %index.next1123, %n.vec1112
  br i1 %i.rg, label %vec.epilog.middle.block1125, label %vec.epilog.vector.body1120, !llvm.loop !29

vec.epilog.middle.block1125:                      ; preds = %vec.epilog.vector.body1120
  br i1 %cmp.n1126, label %._crit_edge2118.i, label %vec.epilog.scalar.ph1108.preheader

vec.epilog.scalar.ph1108.preheader:               ; preds = %iter.check1107, %vec.epilog.iter.check1109, %vec.epilog.middle.block1125
  %indvars.iv2350.i.ph = phi i64 [ 0, %iter.check1107 ], [ %n.vec1094, %vec.epilog.iter.check1109 ], [ %n.vec1112, %vec.epilog.middle.block1125 ]
  br label %vec.epilog.scalar.ph1108

vec.epilog.scalar.ph1108:                         ; preds = %vec.epilog.scalar.ph1108.preheader, %vec.epilog.scalar.ph1108
  %indvars.iv2350.i = phi i64 [ %indvars.iv.next2351.i, %vec.epilog.scalar.ph1108 ], [ %indvars.iv2350.i.ph, %vec.epilog.scalar.ph1108.preheader ] ; 4 uses
  %.not1514.i = icmp slt i64 %indvars.iv2350.i, %i.qu
  %.not1515.i = icmp sgt i64 %indvars.iv2350.i, %i.qt
  %or.cond1517.i = select i1 %.not1514.i, i1 true, i1 %.not1515.i
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qs, i64 %indvars.iv2350.i
  %..i = select i1 %or.cond1517.i, i8 15, i8 0
  store i8 %..i, ptr %i.rh, align 1, !tbaa !19
  %indvars.iv.next2351.i = add nuw nsw i64 %indvars.iv2350.i, 1 ; 2 uses
  %exitcond.not.i128 = icmp eq i64 %indvars.iv.next2351.i, %wide.trip.count.i122
  br i1 %exitcond.not.i128, label %._crit_edge2118.i, label %vec.epilog.scalar.ph1108, !llvm.loop !30

._crit_edge2118.i:                                ; preds = %vec.epilog.scalar.ph1108, %middle.block1104, %vec.epilog.middle.block1125, %bb.az
  %indvars.iv.next2355.i = add nsw i64 %indvars.iv2354.i, -1
  %i.ri = add nsw i32 %.11473.i, 1
  %i.rj = sub nsw i32 %.014792120.i, %.11478.i
  %i.rk = icmp sgt i64 %indvars.iv2354.i, 1
  br i1 %i.rk, label %bb.av, label %.preheader1979.i, !llvm.loop !31

.preheader1978.i:                                 ; preds = %bb.bg, %.preheader1979.i
  %.014892152.i = phi i32 [ 0, %.preheader1979.i ], [ %i.azr, %bb.bg ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, i8 0, i64 %i.ph, i1 false), !tbaa !74
  br i1 %i.of, label %.preheader1974.i.epil, label %.loopexit1976.i

.preheader1974.i.epil:                            ; preds = %.preheader1978.i, %.preheader1974.i.epil
  %indvars.iv2363.i.epil = phi i64 [ %indvars.iv.next2364.i.epil, %.preheader1974.i.epil ], [ 0, %.preheader1978.i ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader1974.i.epil ], [ 0, %.preheader1978.i ]
  %i.rl = getelementptr inbounds nuw [1032 x i8], ptr %i.oy, i64 %indvars.iv2363.i.epil
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.rl, i8 0, i64 %i.pi, i1 false), !tbaa !74
  %indvars.iv.next2364.i.epil = add nuw nsw i64 %indvars.iv2363.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.ow
  br i1 %epil.iter.cmp.not, label %.split2127.i, label %.preheader1974.i.epil, !llvm.loop !32

.split2127.i:                                     ; preds = %.preheader1974.i.epil
  br i1 %brmerge.not.i, label %.lr.ph2129.i, label %.loopexit1976.i

.lr.ph2129.i:                                     ; preds = %.split2127.i, %.lr.ph2129.i
  %indvars.iv2368.i = phi i64 [ %indvars.iv.next2369.i, %.lr.ph2129.i ], [ 0, %.split2127.i ] ; 8 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.oz, i64 %indvars.iv2368.i
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !19
  %i.ro = zext i8 %i.rn to i32
  %i.rp = shl nuw nsw i32 %i.ro, 16
  %i.rq = getelementptr inbounds nuw i8, ptr %i.og, i64 %indvars.iv2368.i
  %i.rr = load i8, ptr %i.rq, align 1, !tbaa !19
  %i.rs = zext i8 %i.rr to i32
  %i.rt = or disjoint i32 %i.rp, %i.rs
  %i.ru = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %indvars.iv2368.i ; 3 uses
  store i32 %i.rt, ptr %i.ru, align 8, !tbaa !74
  %i.rv = getelementptr inbounds nuw i8, ptr %i.pb, i64 %indvars.iv2368.i
  %i.rw = load i8, ptr %i.rv, align 1, !tbaa !19
  %i.rx = zext i8 %i.rw to i32
  %i.ry = shl nuw nsw i32 %i.rx, 16
  %i.rz = getelementptr inbounds nuw i8, ptr %i.pc, i64 %indvars.iv2368.i
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !19
  %i.sb = zext i8 %i.sa to i32
  %i.sc = or disjoint i32 %i.ry, %i.sb
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ru, i64 4
  store i32 %i.sc, ptr %i.sd, align 4, !tbaa !74
  %i.se = getelementptr inbounds nuw i8, ptr %i.pd, i64 %indvars.iv2368.i
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !19
  %i.sg = zext i8 %i.sf to i32
  %i.sh = shl nuw nsw i32 %i.sg, 16
  %i.si = getelementptr inbounds nuw i8, ptr %i.pe, i64 %indvars.iv2368.i
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !19
  %i.sk = zext i8 %i.sj to i32
  %i.sl = or disjoint i32 %i.sh, %i.sk
  %i.sm = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  store i32 %i.sl, ptr %i.sm, align 8, !tbaa !74
  %indvars.iv.next2369.i = add nuw nsw i64 %indvars.iv2368.i, 1 ; 2 uses
  %exitcond2372.not.i = icmp eq i64 %indvars.iv.next2369.i, %wide.trip.count.i122
  br i1 %exitcond2372.not.i, label %.loopexit1976.i, label %.lr.ph2129.i, !llvm.loop !33

.loopexit1976.i:                                  ; preds = %.lr.ph2129.i, %.split2127.i, %.preheader1978.i
  %i.sn = load i32, ptr %i.nv, align 4, !tbaa !80 ; 2 uses
  %.not15102141.i = icmp sgt i32 %i.sn, 0
  br i1 %.not15102141.i, label %.lr.ph2146.i, label %._crit_edge2147.i

.lr.ph2146.i:                                     ; preds = %.loopexit1976.i, %.loopexit1971.i
  %indvars.iv2397.i = phi i64 [ %indvars.iv.next2398.i, %.loopexit1971.i ], [ 0, %.loopexit1976.i ] ; 2 uses
  %i.so = phi i32 [ %i.azc, %.loopexit1971.i ], [ %i.sn, %.loopexit1976.i ]
  %.114702144.i = phi i32 [ %i.azb, %.loopexit1971.i ], [ 0, %.loopexit1976.i ] ; 8 uses
  %.014762143.i = phi i32 [ %i.alu, %.loopexit1971.i ], [ 0, %.loopexit1976.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, i8 0, i64 %i.pj, i1 false), !tbaa !79
  %i.sp = add i32 %.114702144.i, 49
  %i.sq = add nsw i32 %i.so, -1
  %spec.select.i127 = call i32 @llvm.smin.i32(i32 %i.sp, i32 %i.sq) ; 4 uses
  %i.sr = sub nsw i32 %spec.select.i127, %.114702144.i
  %i.ss = icmp eq i32 %i.sr, 49
  %or.cond1519.i = select i1 %i.ou, i1 %i.ss, i1 false ; 2 uses
  %2 = sext i32 %.114702144.i to i64              ; 2 uses
  br i1 %or.cond1519.i, label %bb.ba, label %.lr.ph2134.preheader.i

.lr.ph2134.preheader.i:                           ; preds = %.lr.ph2146.i
  %smax2384.i = call i32 @llvm.smax.i32(i32 %.114702144.i, i32 %spec.select.i127)
  %i.st = add nsw i32 %smax2384.i, 1
  br label %.lr.ph2134.i

bb.ba:                                            ; preds = %.lr.ph2146.i
  %i.su = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %2 ; 50 uses
  %i.sv = load i16, ptr %i.su, align 2, !tbaa !79
  %i.sw = zext i16 %i.sv to i64
  %i.sx = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.sw ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  %i.sz = load i32, ptr %i.sy, align 8, !tbaa !74
  %i.ta = getelementptr i8, ptr %i.su, i64 2
  %i.tb = load i16, ptr %i.ta, align 2, !tbaa !79
  %i.tc = zext i16 %i.tb to i64
  %i.td = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.tc ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  %i.tf = load i32, ptr %i.te, align 8, !tbaa !74
  %i.tg = add i32 %i.tf, %i.sz
  %i.th = getelementptr i8, ptr %i.su, i64 4
  %i.ti = load i16, ptr %i.th, align 2, !tbaa !79
  %i.tj = zext i16 %i.ti to i64
  %i.tk = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.tj ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  %i.tm = load i32, ptr %i.tl, align 8, !tbaa !74
  %i.tn = add i32 %i.tg, %i.tm
  %i.to = getelementptr i8, ptr %i.su, i64 6
  %i.tp = load i16, ptr %i.to, align 2, !tbaa !79
  %i.tq = zext i16 %i.tp to i64
  %i.tr = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.tq ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  %i.tt = load i32, ptr %i.ts, align 8, !tbaa !74
  %i.tu = add i32 %i.tn, %i.tt
  %i.tv = getelementptr i8, ptr %i.su, i64 8
  %i.tw = load i16, ptr %i.tv, align 2, !tbaa !79
  %i.tx = zext i16 %i.tw to i64
  %i.ty = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.tx ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  %i.ua = load i32, ptr %i.tz, align 8, !tbaa !74
  %i.ub = add i32 %i.tu, %i.ua
  %i.uc = getelementptr i8, ptr %i.su, i64 10
  %i.ud = load i16, ptr %i.uc, align 2, !tbaa !79
  %i.ue = zext i16 %i.ud to i64
  %i.uf = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.ue ; 2 uses
  %i.ug = load <2 x i32>, ptr %i.sx, align 8, !tbaa !74
  %i.uh = load <2 x i32>, ptr %i.td, align 8, !tbaa !74
  %i.ui = add <2 x i32> %i.uh, %i.ug
  %i.uj = load <2 x i32>, ptr %i.tk, align 8, !tbaa !74
  %i.uk = add <2 x i32> %i.ui, %i.uj
  %i.ul = load <2 x i32>, ptr %i.tr, align 8, !tbaa !74
  %i.um = add <2 x i32> %i.uk, %i.ul
  %i.un = load <2 x i32>, ptr %i.ty, align 8, !tbaa !74
  %i.uo = add <2 x i32> %i.um, %i.un
  %i.up = load <2 x i32>, ptr %i.uf, align 8, !tbaa !74
  %i.uq = add <2 x i32> %i.uo, %i.up
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  %i.us = load i32, ptr %i.ur, align 8, !tbaa !74
  %i.ut = add i32 %i.ub, %i.us
  %i.uu = getelementptr i8, ptr %i.su, i64 12
  %i.uv = load i16, ptr %i.uu, align 2, !tbaa !79
  %i.uw = zext i16 %i.uv to i64
  %i.ux = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.uw ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  %i.uz = load i32, ptr %i.uy, align 8, !tbaa !74
  %i.va = add i32 %i.ut, %i.uz
  %i.vb = getelementptr i8, ptr %i.su, i64 14
  %i.vc = load i16, ptr %i.vb, align 2, !tbaa !79
  %i.vd = zext i16 %i.vc to i64
  %i.ve = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.vd ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  %i.vg = load i32, ptr %i.vf, align 8, !tbaa !74
  %i.vh = add i32 %i.va, %i.vg
  %i.vi = getelementptr i8, ptr %i.su, i64 16
  %i.vj = load i16, ptr %i.vi, align 2, !tbaa !79
  %i.vk = zext i16 %i.vj to i64
  %i.vl = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.vk ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 8
  %i.vn = load i32, ptr %i.vm, align 8, !tbaa !74
  %i.vo = add i32 %i.vh, %i.vn
  %i.vp = getelementptr i8, ptr %i.su, i64 18
  %i.vq = load i16, ptr %i.vp, align 2, !tbaa !79
  %i.vr = zext i16 %i.vq to i64
  %i.vs = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.vr ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 8
  %i.vu = load i32, ptr %i.vt, align 8, !tbaa !74
  %i.vv = add i32 %i.vo, %i.vu
  %i.vw = getelementptr i8, ptr %i.su, i64 20
  %i.vx = load i16, ptr %i.vw, align 2, !tbaa !79
  %i.vy = zext i16 %i.vx to i64
  %i.vz = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.vy ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 8
  %i.wb = load i32, ptr %i.wa, align 8, !tbaa !74
  %i.wc = add i32 %i.vv, %i.wb
  %i.wd = getelementptr i8, ptr %i.su, i64 22
  %i.we = load i16, ptr %i.wd, align 2, !tbaa !79
  %i.wf = zext i16 %i.we to i64
  %i.wg = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.wf ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 8
  %i.wi = load i32, ptr %i.wh, align 8, !tbaa !74
  %i.wj = add i32 %i.wc, %i.wi
  %i.wk = getelementptr i8, ptr %i.su, i64 24
  %i.wl = load i16, ptr %i.wk, align 2, !tbaa !79
  %i.wm = zext i16 %i.wl to i64
  %i.wn = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.wm ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 8
  %i.wp = load i32, ptr %i.wo, align 8, !tbaa !74
  %i.wq = add i32 %i.wj, %i.wp
  %i.wr = getelementptr i8, ptr %i.su, i64 26
  %i.ws = load i16, ptr %i.wr, align 2, !tbaa !79
  %i.wt = zext i16 %i.ws to i64
  %i.wu = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.wt ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 8
  %i.ww = load i32, ptr %i.wv, align 8, !tbaa !74
  %i.wx = add i32 %i.wq, %i.ww
  %i.wy = getelementptr i8, ptr %i.su, i64 28
  %i.wz = load i16, ptr %i.wy, align 2, !tbaa !79
  %i.xa = zext i16 %i.wz to i64
  %i.xb = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.xa ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 8
  %i.xd = load i32, ptr %i.xc, align 8, !tbaa !74
  %i.xe = add i32 %i.wx, %i.xd
  %i.xf = getelementptr i8, ptr %i.su, i64 30
  %i.xg = load i16, ptr %i.xf, align 2, !tbaa !79
  %i.xh = zext i16 %i.xg to i64
  %i.xi = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.xh ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 8
  %i.xk = load i32, ptr %i.xj, align 8, !tbaa !74
  %i.xl = add i32 %i.xe, %i.xk
  %i.xm = getelementptr i8, ptr %i.su, i64 32
  %i.xn = load i16, ptr %i.xm, align 2, !tbaa !79
  %i.xo = zext i16 %i.xn to i64
  %i.xp = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.xo ; 2 uses
  %i.xq = load <2 x i32>, ptr %i.ux, align 8, !tbaa !74
  %i.xr = add <2 x i32> %i.uq, %i.xq
  %i.xs = load <2 x i32>, ptr %i.ve, align 8, !tbaa !74
  %i.xt = add <2 x i32> %i.xr, %i.xs
  %i.xu = load <2 x i32>, ptr %i.vl, align 8, !tbaa !74
  %i.xv = add <2 x i32> %i.xt, %i.xu
  %i.xw = load <2 x i32>, ptr %i.vs, align 8, !tbaa !74
  %i.xx = add <2 x i32> %i.xv, %i.xw
  %i.xy = load <2 x i32>, ptr %i.vz, align 8, !tbaa !74
  %i.xz = add <2 x i32> %i.xx, %i.xy
  %i.ya = load <2 x i32>, ptr %i.wg, align 8, !tbaa !74
  %i.yb = add <2 x i32> %i.xz, %i.ya
  %i.yc = load <2 x i32>, ptr %i.wn, align 8, !tbaa !74
  %i.yd = add <2 x i32> %i.yb, %i.yc
  %i.ye = load <2 x i32>, ptr %i.wu, align 8, !tbaa !74
  %i.yf = add <2 x i32> %i.yd, %i.ye
  %i.yg = load <2 x i32>, ptr %i.xb, align 8, !tbaa !74
  %i.yh = add <2 x i32> %i.yf, %i.yg
  %i.yi = load <2 x i32>, ptr %i.xi, align 8, !tbaa !74
  %i.yj = add <2 x i32> %i.yh, %i.yi
  %i.yk = load <2 x i32>, ptr %i.xp, align 8, !tbaa !74
  %i.yl = add <2 x i32> %i.yj, %i.yk
  %i.ym = getelementptr inbounds nuw i8, ptr %i.xp, i64 8
  %i.yn = load i32, ptr %i.ym, align 8, !tbaa !74
  %i.yo = add i32 %i.xl, %i.yn
  %i.yp = getelementptr i8, ptr %i.su, i64 34
  %i.yq = load i16, ptr %i.yp, align 2, !tbaa !79
  %i.yr = zext i16 %i.yq to i64
  %i.ys = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.yr ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 8
  %i.yu = load i32, ptr %i.yt, align 8, !tbaa !74
  %i.yv = add i32 %i.yo, %i.yu
  %i.yw = getelementptr i8, ptr %i.su, i64 36
  %i.yx = load i16, ptr %i.yw, align 2, !tbaa !79
  %i.yy = zext i16 %i.yx to i64
  %i.yz = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.yy ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 8
  %i.zb = load i32, ptr %i.za, align 8, !tbaa !74
  %i.zc = add i32 %i.yv, %i.zb
  %i.zd = getelementptr i8, ptr %i.su, i64 38
  %i.ze = load i16, ptr %i.zd, align 2, !tbaa !79
  %i.zf = zext i16 %i.ze to i64
  %i.zg = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.zf ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 8
  %i.zi = load i32, ptr %i.zh, align 8, !tbaa !74
  %i.zj = add i32 %i.zc, %i.zi
  %i.zk = getelementptr i8, ptr %i.su, i64 40
  %i.zl = load i16, ptr %i.zk, align 2, !tbaa !79
  %i.zm = zext i16 %i.zl to i64
  %i.zn = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.zm ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 8
  %i.zp = load i32, ptr %i.zo, align 8, !tbaa !74
  %i.zq = add i32 %i.zj, %i.zp
  %i.zr = getelementptr i8, ptr %i.su, i64 42
  %i.zs = load i16, ptr %i.zr, align 2, !tbaa !79
  %i.zt = zext i16 %i.zs to i64
  %i.zu = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.zt ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 8
  %i.zw = load i32, ptr %i.zv, align 8, !tbaa !74
  %i.zx = add i32 %i.zq, %i.zw
  %i.zy = getelementptr i8, ptr %i.su, i64 44
  %i.zz = load i16, ptr %i.zy, align 2, !tbaa !79
  %i.aaa = zext i16 %i.zz to i64
  %i.aab = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.aaa ; 2 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 8
  %i.aad = load i32, ptr %i.aac, align 8, !tbaa !74
  %i.aae = add i32 %i.zx, %i.aad
  %i.aaf = getelementptr i8, ptr %i.su, i64 46
  %i.aag = load i16, ptr %i.aaf, align 2, !tbaa !79
  %i.aah = zext i16 %i.aag to i64
  %i.aai = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.aah ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 8
  %i.aak = load i32, ptr %i.aaj, align 8, !tbaa !74
  %i.aal = add i32 %i.aae, %i.aak
  %i.aam = getelementptr i8, ptr %i.su, i64 48
end_hunk_0
begin_hunk_1_@BZ2_compressBlock:bb.a
  %i.aej = zext i16 %i.aei to i64
  %i.aek = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.aej ; 2 uses
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aek, i64 8
  %i.aem = load i32, ptr %i.ael, align 8, !tbaa !74
  %i.aen = add i32 %i.aeg, %i.aem
  %i.aeo = getelementptr i8, ptr %i.su, i64 72
  %i.aep = load i16, ptr %i.aeo, align 2, !tbaa !79
  %i.aeq = zext i16 %i.aep to i64
  %i.aer = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.aeq ; 2 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 8
  %i.aet = load i32, ptr %i.aes, align 8, !tbaa !74
  %i.aeu = add i32 %i.aen, %i.aet
  %i.aev = getelementptr i8, ptr %i.su, i64 74
  %i.aew = load i16, ptr %i.aev, align 2, !tbaa !79
  %i.aex = zext i16 %i.aew to i64
  %i.aey = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.aex ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 8
  %i.afa = load i32, ptr %i.aez, align 8, !tbaa !74
  %i.afb = add i32 %i.aeu, %i.afa
  %i.afc = getelementptr i8, ptr %i.su, i64 76
  %i.afd = load i16, ptr %i.afc, align 2, !tbaa !79
  %i.afe = zext i16 %i.afd to i64
  %i.aff = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.afe ; 2 uses
  %i.afg = load <2 x i32>, ptr %i.acn, align 8, !tbaa !74
  %i.afh = add <2 x i32> %i.acg, %i.afg
  %i.afi = load <2 x i32>, ptr %i.acu, align 8, !tbaa !74
  %i.afj = add <2 x i32> %i.afh, %i.afi
  %i.afk = load <2 x i32>, ptr %i.adb, align 8, !tbaa !74
  %i.afl = add <2 x i32> %i.afj, %i.afk
  %i.afm = load <2 x i32>, ptr %i.adi, align 8, !tbaa !74
  %i.afn = add <2 x i32> %i.afl, %i.afm
  %i.afo = load <2 x i32>, ptr %i.adp, align 8, !tbaa !74
  %i.afp = add <2 x i32> %i.afn, %i.afo
  %i.afq = load <2 x i32>, ptr %i.adw, align 8, !tbaa !74
  %i.afr = add <2 x i32> %i.afp, %i.afq
  %i.afs = load <2 x i32>, ptr %i.aed, align 8, !tbaa !74
  %i.aft = add <2 x i32> %i.afr, %i.afs
  %i.afu = load <2 x i32>, ptr %i.aek, align 8, !tbaa !74
  %i.afv = add <2 x i32> %i.aft, %i.afu
  %i.afw = load <2 x i32>, ptr %i.aer, align 8, !tbaa !74
  %i.afx = add <2 x i32> %i.afv, %i.afw
  %i.afy = load <2 x i32>, ptr %i.aey, align 8, !tbaa !74
  %i.afz = add <2 x i32> %i.afx, %i.afy
  %i.aga = load <2 x i32>, ptr %i.aff, align 8, !tbaa !74
  %i.agb = add <2 x i32> %i.afz, %i.aga
  %i.agc = getelementptr inbounds nuw i8, ptr %i.aff, i64 8
  %i.agd = load i32, ptr %i.agc, align 8, !tbaa !74
  %i.age = add i32 %i.afb, %i.agd
  %i.agf = getelementptr i8, ptr %i.su, i64 78
  %i.agg = load i16, ptr %i.agf, align 2, !tbaa !79
  %i.agh = zext i16 %i.agg to i64
  %i.agi = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.agh ; 2 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 8
  %i.agk = load i32, ptr %i.agj, align 8, !tbaa !74
  %i.agl = add i32 %i.age, %i.agk
  %i.agm = getelementptr i8, ptr %i.su, i64 80
  %i.agn = load i16, ptr %i.agm, align 2, !tbaa !79
  %i.ago = zext i16 %i.agn to i64
  %i.agp = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.ago ; 2 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 8
  %i.agr = load i32, ptr %i.agq, align 8, !tbaa !74
  %i.ags = add i32 %i.agl, %i.agr
  %i.agt = getelementptr i8, ptr %i.su, i64 82
  %i.agu = load i16, ptr %i.agt, align 2, !tbaa !79
  %i.agv = zext i16 %i.agu to i64
  %i.agw = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.agv ; 2 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 8
  %i.agy = load i32, ptr %i.agx, align 8, !tbaa !74
  %i.agz = add i32 %i.ags, %i.agy
  %i.aha = getelementptr i8, ptr %i.su, i64 84
  %i.ahb = load i16, ptr %i.aha, align 2, !tbaa !79
  %i.ahc = zext i16 %i.ahb to i64
  %i.ahd = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.ahc ; 2 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 8
  %i.ahf = load i32, ptr %i.ahe, align 8, !tbaa !74
  %i.ahg = add i32 %i.agz, %i.ahf
  %i.ahh = getelementptr i8, ptr %i.su, i64 86
  %i.ahi = load i16, ptr %i.ahh, align 2, !tbaa !79
  %i.ahj = zext i16 %i.ahi to i64
  %i.ahk = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.ahj ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 8
  %i.ahm = load i32, ptr %i.ahl, align 8, !tbaa !74
  %i.ahn = add i32 %i.ahg, %i.ahm
  %i.aho = getelementptr i8, ptr %i.su, i64 88
  %i.ahp = load i16, ptr %i.aho, align 2, !tbaa !79
  %i.ahq = zext i16 %i.ahp to i64
  %i.ahr = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.ahq ; 2 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 8
  %i.aht = load i32, ptr %i.ahs, align 8, !tbaa !74
  %i.ahu = add i32 %i.ahn, %i.aht
  %i.ahv = getelementptr i8, ptr %i.su, i64 90
  %i.ahw = load i16, ptr %i.ahv, align 2, !tbaa !79
  %i.ahx = zext i16 %i.ahw to i64
  %i.ahy = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.ahx ; 2 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahy, i64 8
  %i.aia = load i32, ptr %i.ahz, align 8, !tbaa !74
  %i.aib = add i32 %i.ahu, %i.aia
  %i.aic = getelementptr i8, ptr %i.su, i64 92
  %i.aid = load i16, ptr %i.aic, align 2, !tbaa !79
  %i.aie = zext i16 %i.aid to i64
  %i.aif = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.aie ; 2 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 8
  %i.aih = load i32, ptr %i.aig, align 8, !tbaa !74
  %i.aii = add i32 %i.aib, %i.aih
  %i.aij = getelementptr i8, ptr %i.su, i64 94
  %i.aik = load i16, ptr %i.aij, align 2, !tbaa !79
  %i.ail = zext i16 %i.aik to i64
  %i.aim = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.ail ; 2 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aim, i64 8
  %i.aio = load i32, ptr %i.ain, align 8, !tbaa !74
  %i.aip = add i32 %i.aii, %i.aio
  %i.aiq = getelementptr i8, ptr %i.su, i64 96
  %i.air = load i16, ptr %i.aiq, align 2, !tbaa !79
  %i.ais = zext i16 %i.air to i64
  %i.ait = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.ais ; 2 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 8
  %i.aiv = load i32, ptr %i.aiu, align 8, !tbaa !74
  %i.aiw = add i32 %i.aip, %i.aiv
  %i.aix = getelementptr i8, ptr %i.su, i64 98
  %i.aiy = load i16, ptr %i.aix, align 2, !tbaa !79
  %i.aiz = zext i16 %i.aiy to i64
  %i.aja = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.aiz ; 2 uses
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aja, i64 8
  %i.ajc = load i32, ptr %i.ajb, align 8, !tbaa !74
  %i.ajd = add i32 %i.aiw, %i.ajc
  %i.aje = load <2 x i32>, ptr %i.agi, align 8, !tbaa !74
  %i.ajf = add <2 x i32> %i.agb, %i.aje
  %i.ajg = load <2 x i32>, ptr %i.agp, align 8, !tbaa !74
  %i.ajh = add <2 x i32> %i.ajf, %i.ajg
  %i.aji = load <2 x i32>, ptr %i.agw, align 8, !tbaa !74
  %i.ajj = add <2 x i32> %i.ajh, %i.aji
  %i.ajk = load <2 x i32>, ptr %i.ahd, align 8, !tbaa !74
  %i.ajl = add <2 x i32> %i.ajj, %i.ajk
  %i.ajm = load <2 x i32>, ptr %i.ahk, align 8, !tbaa !74
  %i.ajn = add <2 x i32> %i.ajl, %i.ajm
  %i.ajo = load <2 x i32>, ptr %i.ahr, align 8, !tbaa !74
  %i.ajp = add <2 x i32> %i.ajn, %i.ajo
  %i.ajq = load <2 x i32>, ptr %i.ahy, align 8, !tbaa !74
  %i.ajr = add <2 x i32> %i.ajp, %i.ajq
  %i.ajs = load <2 x i32>, ptr %i.aif, align 8, !tbaa !74
  %i.ajt = add <2 x i32> %i.ajr, %i.ajs
  %i.aju = load <2 x i32>, ptr %i.aim, align 8, !tbaa !74
  %i.ajv = add <2 x i32> %i.ajt, %i.aju
  %i.ajw = load <2 x i32>, ptr %i.ait, align 8, !tbaa !74
  %i.ajx = add <2 x i32> %i.ajv, %i.ajw
  %i.ajy = load <2 x i32>, ptr %i.aja, align 8, !tbaa !74
  %i.ajz = add <2 x i32> %i.ajx, %i.ajy
  store <2 x i32> %i.ajz, ptr %i.a, align 8
  store i32 %i.ajd, ptr %i.pf, align 8
  br label %.loopexit1973.i.preheader

.lr.ph2134.i:                                     ; preds = %.loopexit, %.lr.ph2134.preheader.i
  %indvars.iv2381.i = phi i64 [ %2, %.lr.ph2134.preheader.i ], [ %indvars.iv.next2382.i, %.loopexit ] ; 2 uses
  %i.aka = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %indvars.iv2381.i
  %i.akb = load i16, ptr %i.aka, align 2, !tbaa !79
  %i.akc = zext i16 %i.akb to i64
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.akc ; 5 uses
  br i1 %min.iters.check1128, label %scalar.ph.preheader, label %vector.body1131

vector.body1131:                                  ; preds = %.lr.ph2134.i
  %i.akd = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 258
  %i.ake = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 516
  %i.akf = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 774
  %i.akg = load i8, ptr %invariant.gep.i, align 1, !tbaa !19
  %i.akh = load i8, ptr %i.akd, align 1, !tbaa !19
  %i.aki = load i8, ptr %i.ake, align 1, !tbaa !19
  %i.akj = load i8, ptr %i.akf, align 1, !tbaa !19
  %i.akk = insertelement <4 x i8> poison, i8 %i.akg, i64 0
  %i.akl = insertelement <4 x i8> %i.akk, i8 %i.akh, i64 1
  %i.akm = insertelement <4 x i8> %i.akl, i8 %i.aki, i64 2
  %i.akn = insertelement <4 x i8> %i.akm, i8 %i.akj, i64 3
  %i.ako = zext <4 x i8> %i.akn to <4 x i16>
  %wide.load = load <4 x i16>, ptr %i.a, align 8, !tbaa !79
  %i.akp = add <4 x i16> %wide.load, %i.ako
  store <4 x i16> %i.akp, ptr %i.a, align 8, !tbaa !79
  br i1 %cmp.n1135, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph2134.i, %vector.body1131
  %indvars.iv2376.i.ph = phi i64 [ 0, %.lr.ph2134.i ], [ %n.vec1130, %vector.body1131 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv2376.i = phi i64 [ %indvars.iv.next2377.i, %scalar.ph ], [ %indvars.iv2376.i.ph, %scalar.ph.preheader ] ; 3 uses
  %gep.i = getelementptr inbounds nuw [258 x i8], ptr %invariant.gep.i, i64 %indvars.iv2376.i
  %i.akq = load i8, ptr %gep.i, align 1, !tbaa !19
  %i.akr = zext i8 %i.akq to i16
  %i.aks = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv2376.i ; 2 uses
  %i.akt = load i16, ptr %i.aks, align 2, !tbaa !79
  %i.aku = add i16 %i.akt, %i.akr
  store i16 %i.aku, ptr %i.aks, align 2, !tbaa !79
  %indvars.iv.next2377.i = add nuw nsw i64 %indvars.iv2376.i, 1 ; 2 uses
  %exitcond2380.not.i = icmp eq i64 %indvars.iv.next2377.i, %i.ow
  br i1 %exitcond2380.not.i, label %.loopexit, label %scalar.ph, !llvm.loop !34

.loopexit:                                        ; preds = %scalar.ph, %vector.body1131
  %indvars.iv.next2382.i = add nsw i64 %indvars.iv2381.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next2382.i to i32
  %exitcond2385.not.i = icmp eq i32 %i.st, %lftr.wideiv.i
  br i1 %exitcond2385.not.i, label %.loopexit1973.i.preheader, label %.lr.ph2134.i, !llvm.loop !35

.loopexit1973.i.preheader:                        ; preds = %.loopexit, %bb.ba
  br i1 %i.pk, label %.loopexit1973.i.epil.preheader, label %.loopexit1973.i

.loopexit1973.i:                                  ; preds = %.loopexit1973.i.preheader, %.loopexit1973.i
  %indvars.iv2386.i = phi i64 [ %indvars.iv.next2387.i.3, %.loopexit1973.i ], [ 0, %.loopexit1973.i.preheader ] ; 6 uses
  %.014902136.i = phi i32 [ %spec.select1521.i.3, %.loopexit1973.i ], [ 999999999, %.loopexit1973.i.preheader ] ; 2 uses
  %.014922135.i = phi i32 [ %spec.select1520.i.3, %.loopexit1973.i ], [ -1, %.loopexit1973.i.preheader ]
  %niter1380 = phi i64 [ %niter1380.next.3, %.loopexit1973.i ], [ 0, %.loopexit1973.i.preheader ]
  %i.akv = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv2386.i
  %i.akw = load i16, ptr %i.akv, align 8, !tbaa !79
  %i.akx = zext i16 %i.akw to i32                 ; 2 uses
  %i.aky = icmp samesign ugt i32 %.014902136.i, %i.akx
  %i.akz = trunc nuw nsw i64 %indvars.iv2386.i to i32
  %spec.select1520.i = select i1 %i.aky, i32 %i.akz, i32 %.014922135.i
  %spec.select1521.i = call i32 @llvm.umin.i32(i32 %.014902136.i, i32 %i.akx) ; 2 uses
  %indvars.iv.next2387.i = or disjoint i64 %indvars.iv2386.i, 1 ; 2 uses
  %i.ala = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next2387.i
  %i.alb = load i16, ptr %i.ala, align 2, !tbaa !79
  %i.alc = zext i16 %i.alb to i32                 ; 2 uses
  %i.ald = icmp samesign ugt i32 %spec.select1521.i, %i.alc
  %i.ale = trunc nuw nsw i64 %indvars.iv.next2387.i to i32
  %spec.select1520.i.1 = select i1 %i.ald, i32 %i.ale, i32 %spec.select1520.i
  %spec.select1521.i.1 = call i32 @llvm.umin.i32(i32 %spec.select1521.i, i32 %i.alc) ; 2 uses
  %indvars.iv.next2387.i.1 = or disjoint i64 %indvars.iv2386.i, 2 ; 2 uses
  %i.alf = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next2387.i.1
  %i.alg = load i16, ptr %i.alf, align 4, !tbaa !79
  %i.alh = zext i16 %i.alg to i32                 ; 2 uses
  %i.ali = icmp samesign ugt i32 %spec.select1521.i.1, %i.alh
  %i.alj = trunc nuw nsw i64 %indvars.iv.next2387.i.1 to i32
  %spec.select1520.i.2 = select i1 %i.ali, i32 %i.alj, i32 %spec.select1520.i.1
  %spec.select1521.i.2 = call i32 @llvm.umin.i32(i32 %spec.select1521.i.1, i32 %i.alh) ; 2 uses
  %indvars.iv.next2387.i.2 = or disjoint i64 %indvars.iv2386.i, 3 ; 2 uses
  %i.alk = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next2387.i.2
  %i.all = load i16, ptr %i.alk, align 2, !tbaa !79
  %i.alm = zext i16 %i.all to i32                 ; 2 uses
  %i.aln = icmp samesign ugt i32 %spec.select1521.i.2, %i.alm
  %i.alo = trunc nuw nsw i64 %indvars.iv.next2387.i.2 to i32
  %spec.select1520.i.3 = select i1 %i.aln, i32 %i.alo, i32 %spec.select1520.i.2 ; 3 uses
  %spec.select1521.i.3 = call i32 @llvm.umin.i32(i32 %spec.select1521.i.2, i32 %i.alm) ; 3 uses
  %indvars.iv.next2387.i.3 = add nuw nsw i64 %indvars.iv2386.i, 4 ; 2 uses
  %niter1380.next.3 = add i64 %niter1380, 4       ; 2 uses
  %niter1380.ncmp.3 = icmp eq i64 %niter1380.next.3, %unroll_iter1379
  br i1 %niter1380.ncmp.3, label %.unr-lcssa, label %.loopexit1973.i, !llvm.loop !36

.unr-lcssa:                                       ; preds = %.loopexit1973.i
  br i1 %lcmp.mod1375.not, label %.epilog-lcssa, label %.loopexit1973.i.epil.preheader

.loopexit1973.i.epil.preheader:                   ; preds = %.unr-lcssa, %.loopexit1973.i.preheader
  %indvars.iv2386.i.epil.init = phi i64 [ 0, %.loopexit1973.i.preheader ], [ %indvars.iv.next2387.i.3, %.unr-lcssa ]
  %.014902136.i.epil.init = phi i32 [ 999999999, %.loopexit1973.i.preheader ], [ %spec.select1521.i.3, %.unr-lcssa ]
  %.014922135.i.epil.init = phi i32 [ -1, %.loopexit1973.i.preheader ], [ %spec.select1520.i.3, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1378)
  br label %.loopexit1973.i.epil

.loopexit1973.i.epil:                             ; preds = %.loopexit1973.i.epil, %.loopexit1973.i.epil.preheader
  %indvars.iv2386.i.epil = phi i64 [ %indvars.iv.next2387.i.epil, %.loopexit1973.i.epil ], [ %indvars.iv2386.i.epil.init, %.loopexit1973.i.epil.preheader ] ; 3 uses
  %.014902136.i.epil = phi i32 [ %spec.select1521.i.epil, %.loopexit1973.i.epil ], [ %.014902136.i.epil.init, %.loopexit1973.i.epil.preheader ] ; 2 uses
  %.014922135.i.epil = phi i32 [ %spec.select1520.i.epil, %.loopexit1973.i.epil ], [ %.014922135.i.epil.init, %.loopexit1973.i.epil.preheader ]
  %epil.iter1374 = phi i64 [ %epil.iter1374.next, %.loopexit1973.i.epil ], [ 0, %.loopexit1973.i.epil.preheader ]
  %i.alp = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv2386.i.epil
  %i.alq = load i16, ptr %i.alp, align 2, !tbaa !79
  %i.alr = zext i16 %i.alq to i32                 ; 2 uses
  %i.als = icmp samesign ugt i32 %.014902136.i.epil, %i.alr
  %i.alt = trunc nuw nsw i64 %indvars.iv2386.i.epil to i32
  %spec.select1520.i.epil = select i1 %i.als, i32 %i.alt, i32 %.014922135.i.epil ; 2 uses
  %spec.select1521.i.epil = call i32 @llvm.umin.i32(i32 %.014902136.i.epil, i32 %i.alr) ; 2 uses
  %indvars.iv.next2387.i.epil = add nuw nsw i64 %indvars.iv2386.i.epil, 1
  %epil.iter1374.next = add i64 %epil.iter1374, 1 ; 2 uses
  %epil.iter1374.cmp.not = icmp eq i64 %epil.iter1374.next, %xtraiter1373
  br i1 %epil.iter1374.cmp.not, label %.epilog-lcssa, label %.loopexit1973.i.epil, !llvm.loop !37

.epilog-lcssa:                                    ; preds = %.loopexit1973.i.epil, %.unr-lcssa
  %spec.select1520.i.lcssa = phi i32 [ %spec.select1520.i.3, %.unr-lcssa ], [ %spec.select1520.i.epil, %.loopexit1973.i.epil ] ; 2 uses
  %spec.select1521.i.lcssa = phi i32 [ %spec.select1521.i.3, %.unr-lcssa ], [ %spec.select1521.i.epil, %.loopexit1973.i.epil ]
  %i.alu = add nuw nsw i32 %spec.select1521.i.lcssa, %.014762143.i ; 2 uses
  %i.alv = sext i32 %spec.select1520.i.lcssa to i64 ; 2 uses
  %i.alw = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.alv ; 2 uses
  %i.alx = load i32, ptr %i.alw, align 4, !tbaa !74
  %i.aly = add nsw i32 %i.alx, 1
  store i32 %i.aly, ptr %i.alw, align 4, !tbaa !74
  %i.alz = trunc i32 %spec.select1520.i.lcssa to i8
  %i.ama = getelementptr inbounds nuw i8, ptr %i.pg, i64 %indvars.iv2397.i
  store i8 %i.alz, ptr %i.ama, align 1, !tbaa !19
  %indvars.iv.next2398.i = add nuw nsw i64 %indvars.iv2397.i, 1 ; 2 uses
  %3 = getelementptr inbounds [1032 x i8], ptr %i.oy, i64 %i.alv ; 55 uses
  %4 = sext i32 %.114702144.i to i64              ; 3 uses
  br i1 %or.cond1519.i, label %bb.bb, label %.lr.ph2140.i

.lr.ph2140.i:                                     ; preds = %.epilog-lcssa
  %smax2394.i = call i32 @llvm.smax.i32(i32 %.114702144.i, i32 %spec.select.i127) ; 3 uses
  %i.amb = add nsw i32 %smax2394.i, 1
  %i.amc = add i32 %smax2394.i, 1
  %i.amd = sub i32 %i.amc, %.114702144.i
  %i.ame = sub i32 %smax2394.i, %.114702144.i
  %xtraiter1381 = and i32 %i.amd, 3               ; 2 uses
  %lcmp.mod1382.not = icmp eq i32 %xtraiter1381, 0
  br i1 %lcmp.mod1382.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph2140.i, %.prol.preheader
  %indvars.iv2391.i.prol = phi i64 [ %indvars.iv.next2392.i.prol, %.prol.preheader ], [ %4, %.lr.ph2140.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph2140.i ]
  %i.amf = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %indvars.iv2391.i.prol
  %i.amg = load i16, ptr %i.amf, align 2, !tbaa !79
  %i.amh = zext i16 %i.amg to i64
  %i.ami = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.amh ; 2 uses
  %i.amj = load i32, ptr %i.ami, align 4, !tbaa !74
  %i.amk = add nsw i32 %i.amj, 1
  store i32 %i.amk, ptr %i.ami, align 4, !tbaa !74
  %indvars.iv.next2392.i.prol = add nsw i64 %indvars.iv2391.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter1381
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !38

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph2140.i
  %indvars.iv2391.i.unr = phi i64 [ %4, %.lr.ph2140.i ], [ %indvars.iv.next2392.i.prol, %.prol.preheader ]
  %i.aml = icmp ult i32 %i.ame, 3
  br i1 %i.aml, label %.loopexit1971.i, label %.lr.ph2140.i.new

bb.bb:                                            ; preds = %.epilog-lcssa
  %i.amm = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %4 ; 50 uses
  %i.amn = load i16, ptr %i.amm, align 2, !tbaa !79
  %i.amo = zext i16 %i.amn to i64
  %i.amp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.amo ; 2 uses
  %i.amq = load i32, ptr %i.amp, align 4, !tbaa !74
  %i.amr = add nsw i32 %i.amq, 1
  store i32 %i.amr, ptr %i.amp, align 4, !tbaa !74
  %i.ams = getelementptr i8, ptr %i.amm, i64 2
  %i.amt = load i16, ptr %i.ams, align 2, !tbaa !79
  %i.amu = zext i16 %i.amt to i64
  %i.amv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.amu ; 2 uses
  %i.amw = load i32, ptr %i.amv, align 4, !tbaa !74
  %i.amx = add nsw i32 %i.amw, 1
  store i32 %i.amx, ptr %i.amv, align 4, !tbaa !74
  %i.amy = getelementptr i8, ptr %i.amm, i64 4
  %i.amz = load i16, ptr %i.amy, align 2, !tbaa !79
  %i.ana = zext i16 %i.amz to i64
  %i.anb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ana ; 2 uses
  %i.anc = load i32, ptr %i.anb, align 4, !tbaa !74
  %i.and = add nsw i32 %i.anc, 1
  store i32 %i.and, ptr %i.anb, align 4, !tbaa !74
  %i.ane = getelementptr i8, ptr %i.amm, i64 6
  %i.anf = load i16, ptr %i.ane, align 2, !tbaa !79
  %i.ang = zext i16 %i.anf to i64
  %i.anh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ang ; 2 uses
  %i.ani = load i32, ptr %i.anh, align 4, !tbaa !74
  %i.anj = add nsw i32 %i.ani, 1
  store i32 %i.anj, ptr %i.anh, align 4, !tbaa !74
  %i.ank = getelementptr i8, ptr %i.amm, i64 8
  %i.anl = load i16, ptr %i.ank, align 2, !tbaa !79
  %i.anm = zext i16 %i.anl to i64
  %i.ann = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.anm ; 2 uses
  %i.ano = load i32, ptr %i.ann, align 4, !tbaa !74
  %i.anp = add nsw i32 %i.ano, 1
  store i32 %i.anp, ptr %i.ann, align 4, !tbaa !74
  %i.anq = getelementptr i8, ptr %i.amm, i64 10
  %i.anr = load i16, ptr %i.anq, align 2, !tbaa !79
  %i.ans = zext i16 %i.anr to i64
  %i.ant = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ans ; 2 uses
  %i.anu = load i32, ptr %i.ant, align 4, !tbaa !74
  %i.anv = add nsw i32 %i.anu, 1
  store i32 %i.anv, ptr %i.ant, align 4, !tbaa !74
  %i.anw = getelementptr i8, ptr %i.amm, i64 12
  %i.anx = load i16, ptr %i.anw, align 2, !tbaa !79
  %i.any = zext i16 %i.anx to i64
  %i.anz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.any ; 2 uses
  %i.aoa = load i32, ptr %i.anz, align 4, !tbaa !74
  %i.aob = add nsw i32 %i.aoa, 1
  store i32 %i.aob, ptr %i.anz, align 4, !tbaa !74
  %i.aoc = getelementptr i8, ptr %i.amm, i64 14
  %i.aod = load i16, ptr %i.aoc, align 2, !tbaa !79
  %i.aoe = zext i16 %i.aod to i64
  %i.aof = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aoe ; 2 uses
  %i.aog = load i32, ptr %i.aof, align 4, !tbaa !74
  %i.aoh = add nsw i32 %i.aog, 1
  store i32 %i.aoh, ptr %i.aof, align 4, !tbaa !74
  %i.aoi = getelementptr i8, ptr %i.amm, i64 16
  %i.aoj = load i16, ptr %i.aoi, align 2, !tbaa !79
  %i.aok = zext i16 %i.aoj to i64
  %i.aol = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aok ; 2 uses
  %i.aom = load i32, ptr %i.aol, align 4, !tbaa !74
  %i.aon = add nsw i32 %i.aom, 1
  store i32 %i.aon, ptr %i.aol, align 4, !tbaa !74
  %i.aoo = getelementptr i8, ptr %i.amm, i64 18
  %i.aop = load i16, ptr %i.aoo, align 2, !tbaa !79
  %i.aoq = zext i16 %i.aop to i64
  %i.aor = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aoq ; 2 uses
  %i.aos = load i32, ptr %i.aor, align 4, !tbaa !74
  %i.aot = add nsw i32 %i.aos, 1
  store i32 %i.aot, ptr %i.aor, align 4, !tbaa !74
  %i.aou = getelementptr i8, ptr %i.amm, i64 20
  %i.aov = load i16, ptr %i.aou, align 2, !tbaa !79
  %i.aow = zext i16 %i.aov to i64
  %i.aox = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aow ; 2 uses
  %i.aoy = load i32, ptr %i.aox, align 4, !tbaa !74
  %i.aoz = add nsw i32 %i.aoy, 1
  store i32 %i.aoz, ptr %i.aox, align 4, !tbaa !74
  %i.apa = getelementptr i8, ptr %i.amm, i64 22
  %i.apb = load i16, ptr %i.apa, align 2, !tbaa !79
  %i.apc = zext i16 %i.apb to i64
  %i.apd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.apc ; 2 uses
  %i.ape = load i32, ptr %i.apd, align 4, !tbaa !74
  %i.apf = add nsw i32 %i.ape, 1
  store i32 %i.apf, ptr %i.apd, align 4, !tbaa !74
  %i.apg = getelementptr i8, ptr %i.amm, i64 24
  %i.aph = load i16, ptr %i.apg, align 2, !tbaa !79
  %i.api = zext i16 %i.aph to i64
  %i.apj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.api ; 2 uses
  %i.apk = load i32, ptr %i.apj, align 4, !tbaa !74
  %i.apl = add nsw i32 %i.apk, 1
  store i32 %i.apl, ptr %i.apj, align 4, !tbaa !74
  %i.apm = getelementptr i8, ptr %i.amm, i64 26
  %i.apn = load i16, ptr %i.apm, align 2, !tbaa !79
  %i.apo = zext i16 %i.apn to i64
  %i.app = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.apo ; 2 uses
  %i.apq = load i32, ptr %i.app, align 4, !tbaa !74
  %i.apr = add nsw i32 %i.apq, 1
  store i32 %i.apr, ptr %i.app, align 4, !tbaa !74
  %i.aps = getelementptr i8, ptr %i.amm, i64 28
  %i.apt = load i16, ptr %i.aps, align 2, !tbaa !79
  %i.apu = zext i16 %i.apt to i64
  %i.apv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.apu ; 2 uses
  %i.apw = load i32, ptr %i.apv, align 4, !tbaa !74
  %i.apx = add nsw i32 %i.apw, 1
  store i32 %i.apx, ptr %i.apv, align 4, !tbaa !74
  %i.apy = getelementptr i8, ptr %i.amm, i64 30
  %i.apz = load i16, ptr %i.apy, align 2, !tbaa !79
  %i.aqa = zext i16 %i.apz to i64
  %i.aqb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aqa ; 2 uses
  %i.aqc = load i32, ptr %i.aqb, align 4, !tbaa !74
  %i.aqd = add nsw i32 %i.aqc, 1
  store i32 %i.aqd, ptr %i.aqb, align 4, !tbaa !74
  %i.aqe = getelementptr i8, ptr %i.amm, i64 32
  %i.aqf = load i16, ptr %i.aqe, align 2, !tbaa !79
  %i.aqg = zext i16 %i.aqf to i64
  %i.aqh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aqg ; 2 uses
  %i.aqi = load i32, ptr %i.aqh, align 4, !tbaa !74
  %i.aqj = add nsw i32 %i.aqi, 1
  store i32 %i.aqj, ptr %i.aqh, align 4, !tbaa !74
  %i.aqk = getelementptr i8, ptr %i.amm, i64 34
  %i.aql = load i16, ptr %i.aqk, align 2, !tbaa !79
  %i.aqm = zext i16 %i.aql to i64
  %i.aqn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aqm ; 2 uses
  %i.aqo = load i32, ptr %i.aqn, align 4, !tbaa !74
  %i.aqp = add nsw i32 %i.aqo, 1
  store i32 %i.aqp, ptr %i.aqn, align 4, !tbaa !74
  %i.aqq = getelementptr i8, ptr %i.amm, i64 36
  %i.aqr = load i16, ptr %i.aqq, align 2, !tbaa !79
  %i.aqs = zext i16 %i.aqr to i64
  %i.aqt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aqs ; 2 uses
  %i.aqu = load i32, ptr %i.aqt, align 4, !tbaa !74
  %i.aqv = add nsw i32 %i.aqu, 1
  store i32 %i.aqv, ptr %i.aqt, align 4, !tbaa !74
  %i.aqw = getelementptr i8, ptr %i.amm, i64 38
  %i.aqx = load i16, ptr %i.aqw, align 2, !tbaa !79
  %i.aqy = zext i16 %i.aqx to i64
  %i.aqz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aqy ; 2 uses
  %i.ara = load i32, ptr %i.aqz, align 4, !tbaa !74
  %i.arb = add nsw i32 %i.ara, 1
  store i32 %i.arb, ptr %i.aqz, align 4, !tbaa !74
  %i.arc = getelementptr i8, ptr %i.amm, i64 40
  %i.ard = load i16, ptr %i.arc, align 2, !tbaa !79
  %i.are = zext i16 %i.ard to i64
  %i.arf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.are ; 2 uses
  %i.arg = load i32, ptr %i.arf, align 4, !tbaa !74
  %i.arh = add nsw i32 %i.arg, 1
  store i32 %i.arh, ptr %i.arf, align 4, !tbaa !74
  %i.ari = getelementptr i8, ptr %i.amm, i64 42
  %i.arj = load i16, ptr %i.ari, align 2, !tbaa !79
  %i.ark = zext i16 %i.arj to i64
  %i.arl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ark ; 2 uses
  %i.arm = load i32, ptr %i.arl, align 4, !tbaa !74
  %i.arn = add nsw i32 %i.arm, 1
  store i32 %i.arn, ptr %i.arl, align 4, !tbaa !74
  %i.aro = getelementptr i8, ptr %i.amm, i64 44
  %i.arp = load i16, ptr %i.aro, align 2, !tbaa !79
  %i.arq = zext i16 %i.arp to i64
  %i.arr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.arq ; 2 uses
  %i.ars = load i32, ptr %i.arr, align 4, !tbaa !74
  %i.art = add nsw i32 %i.ars, 1
  store i32 %i.art, ptr %i.arr, align 4, !tbaa !74
  %i.aru = getelementptr i8, ptr %i.amm, i64 46
  %i.arv = load i16, ptr %i.aru, align 2, !tbaa !79
  %i.arw = zext i16 %i.arv to i64
  %i.arx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.arw ; 2 uses
  %i.ary = load i32, ptr %i.arx, align 4, !tbaa !74
  %i.arz = add nsw i32 %i.ary, 1
  store i32 %i.arz, ptr %i.arx, align 4, !tbaa !74
  %i.asa = getelementptr i8, ptr %i.amm, i64 48
  %i.asb = load i16, ptr %i.asa, align 2, !tbaa !79
  %i.asc = zext i16 %i.asb to i64
  %i.asd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.asc ; 2 uses
  %i.ase = load i32, ptr %i.asd, align 4, !tbaa !74
  %i.asf = add nsw i32 %i.ase, 1
  store i32 %i.asf, ptr %i.asd, align 4, !tbaa !74
  %i.asg = getelementptr i8, ptr %i.amm, i64 50
  %i.ash = load i16, ptr %i.asg, align 2, !tbaa !79
  %i.asi = zext i16 %i.ash to i64
  %i.asj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.asi ; 2 uses
  %i.ask = load i32, ptr %i.asj, align 4, !tbaa !74
  %i.asl = add nsw i32 %i.ask, 1
  store i32 %i.asl, ptr %i.asj, align 4, !tbaa !74
  %i.asm = getelementptr i8, ptr %i.amm, i64 52
  %i.asn = load i16, ptr %i.asm, align 2, !tbaa !79
  %i.aso = zext i16 %i.asn to i64
  %i.asp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aso ; 2 uses
  %i.asq = load i32, ptr %i.asp, align 4, !tbaa !74
  %i.asr = add nsw i32 %i.asq, 1
  store i32 %i.asr, ptr %i.asp, align 4, !tbaa !74
  %i.ass = getelementptr i8, ptr %i.amm, i64 54
  %i.ast = load i16, ptr %i.ass, align 2, !tbaa !79
  %i.asu = zext i16 %i.ast to i64
  %i.asv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.asu ; 2 uses
  %i.asw = load i32, ptr %i.asv, align 4, !tbaa !74
  %i.asx = add nsw i32 %i.asw, 1
  store i32 %i.asx, ptr %i.asv, align 4, !tbaa !74
  %i.asy = getelementptr i8, ptr %i.amm, i64 56
  %i.asz = load i16, ptr %i.asy, align 2, !tbaa !79
  %i.ata = zext i16 %i.asz to i64
  %i.atb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ata ; 2 uses
  %i.atc = load i32, ptr %i.atb, align 4, !tbaa !74
  %i.atd = add nsw i32 %i.atc, 1
  store i32 %i.atd, ptr %i.atb, align 4, !tbaa !74
  %i.ate = getelementptr i8, ptr %i.amm, i64 58
  %i.atf = load i16, ptr %i.ate, align 2, !tbaa !79
  %i.atg = zext i16 %i.atf to i64
  %i.ath = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.atg ; 2 uses
  %i.ati = load i32, ptr %i.ath, align 4, !tbaa !74
  %i.atj = add nsw i32 %i.ati, 1
  store i32 %i.atj, ptr %i.ath, align 4, !tbaa !74
  %i.atk = getelementptr i8, ptr %i.amm, i64 60
  %i.atl = load i16, ptr %i.atk, align 2, !tbaa !79
  %i.atm = zext i16 %i.atl to i64
  %i.atn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.atm ; 2 uses
  %i.ato = load i32, ptr %i.atn, align 4, !tbaa !74
  %i.atp = add nsw i32 %i.ato, 1
  store i32 %i.atp, ptr %i.atn, align 4, !tbaa !74
  %i.atq = getelementptr i8, ptr %i.amm, i64 62
  %i.atr = load i16, ptr %i.atq, align 2, !tbaa !79
  %i.ats = zext i16 %i.atr to i64
  %i.att = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ats ; 2 uses
  %i.atu = load i32, ptr %i.att, align 4, !tbaa !74
  %i.atv = add nsw i32 %i.atu, 1
  store i32 %i.atv, ptr %i.att, align 4, !tbaa !74
  %i.atw = getelementptr i8, ptr %i.amm, i64 64
  %i.atx = load i16, ptr %i.atw, align 2, !tbaa !79
  %i.aty = zext i16 %i.atx to i64
  %i.atz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aty ; 2 uses
  %i.aua = load i32, ptr %i.atz, align 4, !tbaa !74
  %i.aub = add nsw i32 %i.aua, 1
  store i32 %i.aub, ptr %i.atz, align 4, !tbaa !74
  %i.auc = getelementptr i8, ptr %i.amm, i64 66
  %i.aud = load i16, ptr %i.auc, align 2, !tbaa !79
  %i.aue = zext i16 %i.aud to i64
  %i.auf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aue ; 2 uses
  %i.aug = load i32, ptr %i.auf, align 4, !tbaa !74
  %i.auh = add nsw i32 %i.aug, 1
  store i32 %i.auh, ptr %i.auf, align 4, !tbaa !74
  %i.aui = getelementptr i8, ptr %i.amm, i64 68
  %i.auj = load i16, ptr %i.aui, align 2, !tbaa !79
  %i.auk = zext i16 %i.auj to i64
  %i.aul = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.auk ; 2 uses
  %i.aum = load i32, ptr %i.aul, align 4, !tbaa !74
  %i.aun = add nsw i32 %i.aum, 1
  store i32 %i.aun, ptr %i.aul, align 4, !tbaa !74
  %i.auo = getelementptr i8, ptr %i.amm, i64 70
  %i.aup = load i16, ptr %i.auo, align 2, !tbaa !79
  %i.auq = zext i16 %i.aup to i64
  %i.aur = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.auq ; 2 uses
  %i.aus = load i32, ptr %i.aur, align 4, !tbaa !74
  %i.aut = add nsw i32 %i.aus, 1
  store i32 %i.aut, ptr %i.aur, align 4, !tbaa !74
  %i.auu = getelementptr i8, ptr %i.amm, i64 72
  %i.auv = load i16, ptr %i.auu, align 2, !tbaa !79
  %i.auw = zext i16 %i.auv to i64
  %i.aux = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.auw ; 2 uses
  %i.auy = load i32, ptr %i.aux, align 4, !tbaa !74
  %i.auz = add nsw i32 %i.auy, 1
  store i32 %i.auz, ptr %i.aux, align 4, !tbaa !74
  %i.ava = getelementptr i8, ptr %i.amm, i64 74
  %i.avb = load i16, ptr %i.ava, align 2, !tbaa !79
  %i.avc = zext i16 %i.avb to i64
  %i.avd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.avc ; 2 uses
  %i.ave = load i32, ptr %i.avd, align 4, !tbaa !74
  %i.avf = add nsw i32 %i.ave, 1
  store i32 %i.avf, ptr %i.avd, align 4, !tbaa !74
  %i.avg = getelementptr i8, ptr %i.amm, i64 76
  %i.avh = load i16, ptr %i.avg, align 2, !tbaa !79
  %i.avi = zext i16 %i.avh to i64
  %i.avj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.avi ; 2 uses
  %i.avk = load i32, ptr %i.avj, align 4, !tbaa !74
  %i.avl = add nsw i32 %i.avk, 1
  store i32 %i.avl, ptr %i.avj, align 4, !tbaa !74
  %i.avm = getelementptr i8, ptr %i.amm, i64 78
  %i.avn = load i16, ptr %i.avm, align 2, !tbaa !79
  %i.avo = zext i16 %i.avn to i64
  %i.avp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.avo ; 2 uses
  %i.avq = load i32, ptr %i.avp, align 4, !tbaa !74
  %i.avr = add nsw i32 %i.avq, 1
  store i32 %i.avr, ptr %i.avp, align 4, !tbaa !74
  %i.avs = getelementptr i8, ptr %i.amm, i64 80
  %i.avt = load i16, ptr %i.avs, align 2, !tbaa !79
  %i.avu = zext i16 %i.avt to i64
  %i.avv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.avu ; 2 uses
  %i.avw = load i32, ptr %i.avv, align 4, !tbaa !74
  %i.avx = add nsw i32 %i.avw, 1
  store i32 %i.avx, ptr %i.avv, align 4, !tbaa !74
  %i.avy = getelementptr i8, ptr %i.amm, i64 82
  %i.avz = load i16, ptr %i.avy, align 2, !tbaa !79
  %i.awa = zext i16 %i.avz to i64
  %i.awb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.awa ; 2 uses
  %i.awc = load i32, ptr %i.awb, align 4, !tbaa !74
  %i.awd = add nsw i32 %i.awc, 1
  store i32 %i.awd, ptr %i.awb, align 4, !tbaa !74
  %i.awe = getelementptr i8, ptr %i.amm, i64 84
  %i.awf = load i16, ptr %i.awe, align 2, !tbaa !79
  %i.awg = zext i16 %i.awf to i64
  %i.awh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.awg ; 2 uses
  %i.awi = load i32, ptr %i.awh, align 4, !tbaa !74
  %i.awj = add nsw i32 %i.awi, 1
  store i32 %i.awj, ptr %i.awh, align 4, !tbaa !74
  %i.awk = getelementptr i8, ptr %i.amm, i64 86
  %i.awl = load i16, ptr %i.awk, align 2, !tbaa !79
  %i.awm = zext i16 %i.awl to i64
  %i.awn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.awm ; 2 uses
  %i.awo = load i32, ptr %i.awn, align 4, !tbaa !74
  %i.awp = add nsw i32 %i.awo, 1
  store i32 %i.awp, ptr %i.awn, align 4, !tbaa !74
  %i.awq = getelementptr i8, ptr %i.amm, i64 88
  %i.awr = load i16, ptr %i.awq, align 2, !tbaa !79
  %i.aws = zext i16 %i.awr to i64
  %i.awt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aws ; 2 uses
  %i.awu = load i32, ptr %i.awt, align 4, !tbaa !74
  %i.awv = add nsw i32 %i.awu, 1
  store i32 %i.awv, ptr %i.awt, align 4, !tbaa !74
  %i.aww = getelementptr i8, ptr %i.amm, i64 90
  %i.awx = load i16, ptr %i.aww, align 2, !tbaa !79
  %i.awy = zext i16 %i.awx to i64
  %i.awz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.awy ; 2 uses
  %i.axa = load i32, ptr %i.awz, align 4, !tbaa !74
  %i.axb = add nsw i32 %i.axa, 1
  store i32 %i.axb, ptr %i.awz, align 4, !tbaa !74
  %i.axc = getelementptr i8, ptr %i.amm, i64 92
  %i.axd = load i16, ptr %i.axc, align 2, !tbaa !79
  %i.axe = zext i16 %i.axd to i64
  %i.axf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.axe ; 2 uses
  %i.axg = load i32, ptr %i.axf, align 4, !tbaa !74
  %i.axh = add nsw i32 %i.axg, 1
  store i32 %i.axh, ptr %i.axf, align 4, !tbaa !74
  %i.axi = getelementptr i8, ptr %i.amm, i64 94
  %i.axj = load i16, ptr %i.axi, align 2, !tbaa !79
  %i.axk = zext i16 %i.axj to i64
  %i.axl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.axk ; 2 uses
  %i.axm = load i32, ptr %i.axl, align 4, !tbaa !74
  %i.axn = add nsw i32 %i.axm, 1
  store i32 %i.axn, ptr %i.axl, align 4, !tbaa !74
  %i.axo = getelementptr i8, ptr %i.amm, i64 96
  %i.axp = load i16, ptr %i.axo, align 2, !tbaa !79
  %i.axq = zext i16 %i.axp to i64
  %i.axr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.axq ; 2 uses
  %i.axs = load i32, ptr %i.axr, align 4, !tbaa !74
  %i.axt = add nsw i32 %i.axs, 1
  store i32 %i.axt, ptr %i.axr, align 4, !tbaa !74
  %i.axu = getelementptr i8, ptr %i.amm, i64 98
  %i.axv = load i16, ptr %i.axu, align 2, !tbaa !79
  %i.axw = zext i16 %i.axv to i64
  %i.axx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.axw ; 2 uses
  %i.axy = load i32, ptr %i.axx, align 4, !tbaa !74
  %i.axz = add nsw i32 %i.axy, 1
  store i32 %i.axz, ptr %i.axx, align 4, !tbaa !74
  br label %.loopexit1971.i

.lr.ph2140.i.new:                                 ; preds = %.prol.loopexit, %.lr.ph2140.i.new
  %indvars.iv2391.i = phi i64 [ %indvars.iv.next2392.i.3, %.lr.ph2140.i.new ], [ %indvars.iv2391.i.unr, %.prol.loopexit ] ; 5 uses
  %i.aya = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %indvars.iv2391.i
  %i.ayb = load i16, ptr %i.aya, align 2, !tbaa !79
  %i.ayc = zext i16 %i.ayb to i64
  %i.ayd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ayc ; 2 uses
  %i.aye = load i32, ptr %i.ayd, align 4, !tbaa !74
  %i.ayf = add nsw i32 %i.aye, 1
  store i32 %i.ayf, ptr %i.ayd, align 4, !tbaa !74
  %i.ayg = getelementptr [2 x i8], ptr %i.jr, i64 %indvars.iv2391.i
  %i.ayh = getelementptr i8, ptr %i.ayg, i64 2
  %i.ayi = load i16, ptr %i.ayh, align 2, !tbaa !79
  %i.ayj = zext i16 %i.ayi to i64
  %i.ayk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ayj ; 2 uses
  %i.ayl = load i32, ptr %i.ayk, align 4, !tbaa !74
  %i.aym = add nsw i32 %i.ayl, 1
  store i32 %i.aym, ptr %i.ayk, align 4, !tbaa !74
  %i.ayn = getelementptr [2 x i8], ptr %i.jr, i64 %indvars.iv2391.i
  %i.ayo = getelementptr i8, ptr %i.ayn, i64 4
  %i.ayp = load i16, ptr %i.ayo, align 2, !tbaa !79
  %i.ayq = zext i16 %i.ayp to i64
  %i.ayr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ayq ; 2 uses
  %i.ays = load i32, ptr %i.ayr, align 4, !tbaa !74
  %i.ayt = add nsw i32 %i.ays, 1
  store i32 %i.ayt, ptr %i.ayr, align 4, !tbaa !74
  %i.ayu = getelementptr [2 x i8], ptr %i.jr, i64 %indvars.iv2391.i
  %i.ayv = getelementptr i8, ptr %i.ayu, i64 6
  %i.ayw = load i16, ptr %i.ayv, align 2, !tbaa !79
  %i.ayx = zext i16 %i.ayw to i64
  %i.ayy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ayx ; 2 uses
  %i.ayz = load i32, ptr %i.ayy, align 4, !tbaa !74
  %i.aza = add nsw i32 %i.ayz, 1
  store i32 %i.aza, ptr %i.ayy, align 4, !tbaa !74
  %indvars.iv.next2392.i.3 = add nsw i64 %indvars.iv2391.i, 4 ; 2 uses
  %lftr.wideiv2395.i.3 = trunc i64 %indvars.iv.next2392.i.3 to i32
  %exitcond2396.not.i.3 = icmp eq i32 %i.amb, %lftr.wideiv2395.i.3
  br i1 %exitcond2396.not.i.3, label %.loopexit1971.i, label %.lr.ph2140.i.new, !llvm.loop !39

.loopexit1971.i:                                  ; preds = %.prol.loopexit, %.lr.ph2140.i.new, %bb.bb
  %i.azb = add nsw i32 %spec.select.i127, 1       ; 2 uses
  %i.azc = load i32, ptr %i.nv, align 4, !tbaa !80 ; 2 uses
  %.not1510.i = icmp slt i32 %i.azb, %i.azc
  br i1 %.not1510.i, label %.lr.ph2146.i, label %._crit_edge2147.loopexit.i

._crit_edge2147.loopexit.i:                       ; preds = %.loopexit1971.i
  %i.azd = trunc nuw i64 %indvars.iv.next2398.i to i32
  %i.aze = lshr i32 %i.alu, 3
  br label %._crit_edge2147.i

._crit_edge2147.i:                                ; preds = %._crit_edge2147.loopexit.i, %.loopexit1976.i
  %.11488.lcssa.i = phi i32 [ 0, %.loopexit1976.i ], [ %i.azd, %._crit_edge2147.loopexit.i ] ; 6 uses
  %.01476.lcssa.i = phi i32 [ 0, %.loopexit1976.i ], [ %i.aze, %._crit_edge2147.loopexit.i ]
  %i.azf = load i32, ptr %i.nw, align 8, !tbaa !64
  %i.azg = icmp sgt i32 %i.azf, 2
  br i1 %i.azg, label %bb.bc, label %.preheader

bb.bc:                                            ; preds = %._crit_edge2147.i
  %i.azh = load ptr, ptr @stderr, align 8, !tbaa !66
  %i.azi = add nuw nsw i32 %.014892152.i, 1
  %i.azj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.azh, ptr noundef nonnull @.str.4, i32 noundef %i.azi, i32 noundef %.01476.lcssa.i) #10 ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %bb.bc
  %indvars.iv2400.i = phi i64 [ 0, %bb.bc ], [ %indvars.iv.next2401.i, %bb.bd ] ; 2 uses
  %i.azk = load ptr, ptr @stderr, align 8, !tbaa !66
  %i.azl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv2400.i
  %i.azm = load i32, ptr %i.azl, align 4, !tbaa !74
  %i.azn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.azk, ptr noundef nonnull @.str.5, i32 noundef %i.azm) #10 ; 0 uses
  %indvars.iv.next2401.i = add nuw nsw i64 %indvars.iv2400.i, 1 ; 2 uses
  %exitcond2404.not.i = icmp eq i64 %indvars.iv.next2401.i, %i.ow
  br i1 %exitcond2404.not.i, label %bb.be, label %bb.bd, !llvm.loop !40

bb.be:                                            ; preds = %bb.bd
  %i.azo = load ptr, ptr @stderr, align 8, !tbaa !66
  %fputc.i = call i32 @fputc(i32 10, ptr %i.azo)  ; 0 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.be, %._crit_edge2147.i
  br label %bb.bf

bb.bf:                                            ; preds = %.preheader, %bb.bf
  %indvars.iv2405.i = phi i64 [ %indvars.iv.next2406.i, %bb.bf ], [ 0, %.preheader ] ; 3 uses
  %i.azp = getelementptr inbounds nuw [258 x i8], ptr %i.og, i64 %indvars.iv2405.i
  %i.azq = getelementptr inbounds nuw [1032 x i8], ptr %i.oy, i64 %indvars.iv2405.i
  call void @BZ2_hbMakeCodeLengths(ptr noundef nonnull %i.azp, ptr noundef nonnull %i.azq, i32 noundef %i.oe, i32 noundef 17) #11
  %indvars.iv.next2406.i = add nuw nsw i64 %indvars.iv2405.i, 1 ; 2 uses
  %exitcond2409.not.i = icmp eq i64 %indvars.iv.next2406.i, %i.ow
  br i1 %exitcond2409.not.i, label %bb.bg, label %bb.bf, !llvm.loop !41

bb.bg:                                            ; preds = %bb.bf
  %i.azr = add nuw nsw i32 %.014892152.i, 1       ; 2 uses
  %exitcond2410.not.i = icmp eq i32 %i.azr, 4
  br i1 %exitcond2410.not.i, label %bb.bh, label %.preheader1978.i, !llvm.loop !42

bb.bh:                                            ; preds = %bb.bg
  %i.azs = icmp slt i32 %.11488.lcssa.i, 18003
  br i1 %i.azs, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @BZ2_bz__AssertH__fail(i32 noundef 3003) #11
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %min.iters.check1138 = icmp samesign ult i32 %.01481.i, 4
  br i1 %min.iters.check1138, label %scalar.ph1137.preheader, label %vector.body1141

vector.body1141:                                  ; preds = %bb.bj
  %n.vec1140 = and i64 %i.ow, 4                   ; 2 uses
  store <4 x i8> <i8 0, i8 1, i8 2, i8 3>, ptr %i.c, align 4, !tbaa !19
  %cmp.n1147 = icmp eq i64 %n.vec1140, %i.ow
  br i1 %cmp.n1147, label %.preheader1969.i, label %scalar.ph1137.preheader

scalar.ph1137.preheader:                          ; preds = %bb.bj, %vector.body1141
  %indvars.iv2411.i.ph = phi i64 [ 0, %bb.bj ], [ %n.vec1140, %vector.body1141 ]
  br label %scalar.ph1137

.preheader1969.i:                                 ; preds = %scalar.ph1137, %vector.body1141
  %i.azt = icmp sgt i32 %.11488.lcssa.i, 0        ; 2 uses
  br i1 %i.azt, label %.lr.ph2165.i, label %._crit_edge2166.i

.lr.ph2165.i:                                     ; preds = %.preheader1969.i
  %.promoted.i = load i8, ptr %i.c, align 4
  %i.azu = getelementptr inbounds nuw i8, ptr %0, i64 19706
  %wide.trip.count2421.i = zext nneg i32 %.11488.lcssa.i to i64
  br label %bb.bk

scalar.ph1137:                                    ; preds = %scalar.ph1137.preheader, %scalar.ph1137
  %indvars.iv2411.i = phi i64 [ %indvars.iv.next2412.i, %scalar.ph1137 ], [ %indvars.iv2411.i.ph, %scalar.ph1137.preheader ] ; 3 uses
  %i.azv = trunc i64 %indvars.iv2411.i to i8
  %i.azw = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv2411.i
  store i8 %i.azv, ptr %i.azw, align 1, !tbaa !19
  %indvars.iv.next2412.i = add nuw nsw i64 %indvars.iv2411.i, 1 ; 2 uses
  %exitcond2415.not.i = icmp eq i64 %indvars.iv.next2412.i, %i.ow
  br i1 %exitcond2415.not.i, label %.preheader1969.i, label %scalar.ph1137, !llvm.loop !43

bb.bk:                                            ; preds = %._crit_edge2159.i, %.lr.ph2165.i
  %indvars.iv2418.i = phi i64 [ 0, %.lr.ph2165.i ], [ %indvars.iv.next2419.i, %._crit_edge2159.i ] ; 3 uses
  %.01464.lcssa21622163.i = phi i8 [ %.promoted.i, %.lr.ph2165.i ], [ %.01464.lcssa.i, %._crit_edge2159.i ] ; 3 uses
  %i.azx = getelementptr inbounds nuw i8, ptr %i.pg, i64 %indvars.iv2418.i
  %i.azy = load i8, ptr %i.azx, align 1, !tbaa !19 ; 3 uses
  %.not15092154.i = icmp eq i8 %i.azy, %.01464.lcssa21622163.i
  br i1 %.not15092154.i, label %._crit_edge2159.i, label %.lr.ph2158.i

.lr.ph2158.i:                                     ; preds = %bb.bk, %.lr.ph2158.i
  %indvars.iv2416.i = phi i64 [ %indvars.iv.next2417.i, %.lr.ph2158.i ], [ 0, %bb.bk ]
  %.014642156.i = phi i8 [ %i.baa, %.lr.ph2158.i ], [ %.01464.lcssa21622163.i, %bb.bk ]
  %indvars.iv.next2417.i = add nuw nsw i64 %indvars.iv2416.i, 1 ; 3 uses
  %i.azz = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next2417.i ; 2 uses
  %i.baa = load i8, ptr %i.azz, align 1, !tbaa !19 ; 2 uses
  store i8 %.014642156.i, ptr %i.azz, align 1, !tbaa !19
  %.not1509.i = icmp eq i8 %i.azy, %i.baa
  br i1 %.not1509.i, label %._crit_edge2159.loopexit.i, label %.lr.ph2158.i, !llvm.loop !44

._crit_edge2159.loopexit.i:                       ; preds = %.lr.ph2158.i
  %i.bab = trunc i64 %indvars.iv.next2417.i to i8
  br label %._crit_edge2159.i

._crit_edge2159.i:                                ; preds = %._crit_edge2159.loopexit.i, %bb.bk
  %.01465.lcssa.i = phi i8 [ 0, %bb.bk ], [ %i.bab, %._crit_edge2159.loopexit.i ]
  %.01464.lcssa.i = phi i8 [ %.01464.lcssa21622163.i, %bb.bk ], [ %i.azy, %._crit_edge2159.loopexit.i ]
  %i.bac = getelementptr inbounds nuw i8, ptr %i.azu, i64 %indvars.iv2418.i
  store i8 %.01465.lcssa.i, ptr %i.bac, align 1, !tbaa !19
  %indvars.iv.next2419.i = add nuw nsw i64 %indvars.iv2418.i, 1 ; 2 uses
  %exitcond2422.not.i = icmp eq i64 %indvars.iv.next2419.i, %wide.trip.count2421.i
  br i1 %exitcond2422.not.i, label %._crit_edge2166.i, label %bb.bk, !llvm.loop !45

._crit_edge2166.i:                                ; preds = %._crit_edge2159.i, %.preheader1969.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.bad = getelementptr inbounds nuw i8, ptr %0, i64 39256 ; 3 uses
  %min.iters.check1150 = icmp slt i32 %i.oe, 8
  %n.vec1152 = and i64 %wide.trip.count.i122, 2147483640 ; 3 uses
  %cmp.n1163 = icmp eq i64 %n.vec1152, %wide.trip.count.i122
  br label %.preheader1968.i

.preheader1968.i:                                 ; preds = %.thread.i, %._crit_edge2166.i
  %indvars.iv2428.i = phi i64 [ 0, %._crit_edge2166.i ], [ %indvars.iv.next2429.i, %.thread.i ] ; 4 uses
  br i1 %i.of, label %.lr.ph2171.i, label %.thread.i

.lr.ph2171.i:                                     ; preds = %.preheader1968.i
  %i.bae = getelementptr inbounds nuw [258 x i8], ptr %i.og, i64 %indvars.iv2428.i ; 2 uses
  br i1 %min.iters.check1150, label %scalar.ph1149.preheader, label %vector.body1153

vector.body1153:                                  ; preds = %.lr.ph2171.i, %vector.body1153
  %index1154 = phi i64 [ %index.next1160, %vector.body1153 ], [ 0, %.lr.ph2171.i ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.baj, %vector.body1153 ], [ zeroinitializer, %.lr.ph2171.i ]
  %vec.phi1155 = phi <4 x i32> [ %i.bak, %vector.body1153 ], [ zeroinitializer, %.lr.ph2171.i ]
  %vec.phi1156 = phi <4 x i32> [ %i.bal, %vector.body1153 ], [ splat (i32 32), %.lr.ph2171.i ]
  %vec.phi1157 = phi <4 x i32> [ %i.bam, %vector.body1153 ], [ splat (i32 32), %.lr.ph2171.i ]
  %i.baf = getelementptr inbounds nuw i8, ptr %i.bae, i64 %index1154 ; 2 uses
  %i.bag = getelementptr inbounds nuw i8, ptr %i.baf, i64 4
  %wide.load1158 = load <4 x i8>, ptr %i.baf, align 1, !tbaa !19
  %wide.load1159 = load <4 x i8>, ptr %i.bag, align 1, !tbaa !19
  %i.bah = zext <4 x i8> %wide.load1158 to <4 x i32> ; 2 uses
  %i.bai = zext <4 x i8> %wide.load1159 to <4 x i32> ; 2 uses
  %i.baj = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.bah) ; 2 uses
  %i.bak = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi1155, <4 x i32> %i.bai) ; 2 uses
  %i.bal = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.phi1156, <4 x i32> %i.bah) ; 2 uses
  %i.bam = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.phi1157, <4 x i32> %i.bai) ; 2 uses
  %index.next1160 = add nuw i64 %index1154, 8     ; 2 uses
  %i.ban = icmp eq i64 %index.next1160, %n.vec1152
  br i1 %i.ban, label %middle.block1161, label %vector.body1153, !llvm.loop !46

middle.block1161:                                 ; preds = %vector.body1153
  %rdx.minmax = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.baj, <4 x i32> %i.bak)
  %i.bao = call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %rdx.minmax1162 = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.bal, <4 x i32> %i.bam)
  %i.bap = call i32 @llvm.vector.reduce.umin.v4i32(<4 x i32> %rdx.minmax1162) ; 2 uses
  br i1 %cmp.n1163, label %._crit_edge2172.i, label %scalar.ph1149.preheader

scalar.ph1149.preheader:                          ; preds = %.lr.ph2171.i, %middle.block1161
  %indvars.iv2423.i.ph = phi i64 [ 0, %.lr.ph2171.i ], [ %n.vec1152, %middle.block1161 ]
  %.014832169.i.ph = phi i32 [ 0, %.lr.ph2171.i ], [ %i.bao, %middle.block1161 ]
  %.014852168.i.ph = phi i32 [ 32, %.lr.ph2171.i ], [ %i.bap, %middle.block1161 ]
  br label %scalar.ph1149

scalar.ph1149:                                    ; preds = %scalar.ph1149.preheader, %scalar.ph1149
  %indvars.iv2423.i = phi i64 [ %indvars.iv.next2424.i, %scalar.ph1149 ], [ %indvars.iv2423.i.ph, %scalar.ph1149.preheader ] ; 2 uses
  %.014832169.i = phi i32 [ %spec.select1524.i, %scalar.ph1149 ], [ %.014832169.i.ph, %scalar.ph1149.preheader ]
  %.014852168.i = phi i32 [ %.11486.i, %scalar.ph1149 ], [ %.014852168.i.ph, %scalar.ph1149.preheader ]
  %i.baq = getelementptr inbounds nuw i8, ptr %i.bae, i64 %indvars.iv2423.i
  %i.bar = load i8, ptr %i.baq, align 1, !tbaa !19
  %i.bas = zext i8 %i.bar to i32                  ; 2 uses
  %spec.select1524.i = call i32 @llvm.umax.i32(i32 %.014832169.i, i32 %i.bas) ; 2 uses
  %.11486.i = call i32 @llvm.umin.i32(i32 %.014852168.i, i32 %i.bas) ; 2 uses
  %indvars.iv.next2424.i = add nuw nsw i64 %indvars.iv2423.i, 1 ; 2 uses
  %exitcond2427.not.i = icmp eq i64 %indvars.iv.next2424.i, %wide.trip.count.i122
  br i1 %exitcond2427.not.i, label %._crit_edge2172.i, label %scalar.ph1149, !llvm.loop !47

._crit_edge2172.i:                                ; preds = %scalar.ph1149, %middle.block1161
  %spec.select1524.i.lcssa = phi i32 [ %i.bao, %middle.block1161 ], [ %spec.select1524.i, %scalar.ph1149 ] ; 3 uses
  %.11486.i.lcssa = phi i32 [ %i.bap, %middle.block1161 ], [ %.11486.i, %scalar.ph1149 ] ; 2 uses
  %i.bat = icmp samesign ugt i32 %spec.select1524.i.lcssa, 17
  br i1 %i.bat, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %._crit_edge2172.i
  call void @BZ2_bz__AssertH__fail(i32 noundef 3004) #11
  br label %bb.bm

end_hunk_1
begin_hunk_2_@BZ2_compressBlock:bb.a
  %i.cnh = phi i32 [ %.pre.i1581.i, %bb.bz ], [ %i.cnd, %.lr.ph.i1580.i ]
  %.lcssa.i1579.i = phi i32 [ %i.cmo, %bb.bz ], [ %i.cnf, %.lr.ph.i1580.i ] ; 2 uses
  %i.cni = add nsw i32 %.lcssa.i1579.i, 5         ; 3 uses
  %i.cnj = sub i32 27, %.lcssa.i1579.i
  %i.cnk = shl i32 %i.cmr, %i.cnj
  %i.cnl = or i32 %i.cnk, %i.cnh                  ; 3 uses
  store i32 %i.cnl, ptr %i.cy, align 8, !tbaa !16
  store i32 %i.cni, ptr %i.cv, align 4, !tbaa !15
  br i1 %i.of, label %.preheader1963.i, label %._crit_edge2197.i

.preheader1963.i:                                 ; preds = %bsW.exit1583.i, %bsW.exit1604.i
  %.pre16.i15852519.i = phi i32 [ %i.cqk, %bsW.exit1604.i ], [ %i.cnl, %bsW.exit1583.i ] ; 2 uses
  %i.cnm = phi i32 [ %i.cql, %bsW.exit1604.i ], [ %i.cni, %bsW.exit1583.i ] ; 2 uses
  %.pre15.i15822516.i = phi i32 [ %.pre15.i15822509.i, %bsW.exit1604.i ], [ %.pre15.i15822517.i, %bsW.exit1583.i ] ; 2 uses
  %indvars.iv2459.i = phi i64 [ %indvars.iv.next2460.i, %bsW.exit1604.i ], [ 0, %bsW.exit1583.i ] ; 2 uses
  %.014612195.i = phi i32 [ %.21463.lcssa.i, %bsW.exit1604.i ], [ %i.cmr, %bsW.exit1583.i ] ; 3 uses
  %i.cnn = getelementptr inbounds nuw i8, ptr %i.cmp, i64 %indvars.iv2459.i ; 3 uses
  %i.cno = load i8, ptr %i.cnn, align 1, !tbaa !19 ; 3 uses
  %i.cnp = zext i8 %i.cno to i32                  ; 2 uses
  %i.cnq = icmp slt i32 %.014612195.i, %i.cnp
  br i1 %i.cnq, label %.lr.ph2188.i, label %.preheader1962.i

.preheader1962.i:                                 ; preds = %bsW.exit1590.i, %.preheader1963.i
  %.pre-phi.i = phi i32 [ %i.cnp, %.preheader1963.i ], [ %i.cos, %bsW.exit1590.i ]
  %.pre16.i15922522.i = phi i32 [ %.pre16.i15852519.i, %.preheader1963.i ], [ %i.coq, %bsW.exit1590.i ] ; 2 uses
  %i.cnr = phi i32 [ %i.cnm, %.preheader1963.i ], [ %i.con, %bsW.exit1590.i ] ; 2 uses
  %i.cns = phi i8 [ %i.cno, %.preheader1963.i ], [ %i.col, %bsW.exit1590.i ]
  %.pre15.i15822513.i = phi i32 [ %.pre15.i15822516.i, %.preheader1963.i ], [ %.pre15.i15822514.i, %bsW.exit1590.i ] ; 2 uses
  %.11462.lcssa.i = phi i32 [ %.014612195.i, %.preheader1963.i ], [ %i.cor, %bsW.exit1590.i ] ; 3 uses
  %i.cnt = icmp samesign ugt i32 %.11462.lcssa.i, %.pre-phi.i
  br i1 %i.cnt, label %.lr.ph2192.i, label %._crit_edge2193.i

.lr.ph2188.i:                                     ; preds = %.preheader1963.i, %bsW.exit1590.i
  %i.cnu = phi i8 [ %i.col, %bsW.exit1590.i ], [ %i.cno, %.preheader1963.i ]
  %.pre.i1588.i = phi i32 [ %i.coq, %bsW.exit1590.i ], [ %.pre16.i15852519.i, %.preheader1963.i ] ; 2 uses
  %i.cnv = phi i32 [ %i.con, %bsW.exit1590.i ], [ %i.cnm, %.preheader1963.i ] ; 2 uses
  %.pre15.i1589.i = phi i32 [ %.pre15.i15822514.i, %bsW.exit1590.i ], [ %.pre15.i15822516.i, %.preheader1963.i ] ; 2 uses
  %.114622187.i = phi i32 [ %i.cor, %bsW.exit1590.i ], [ %.014612195.i, %.preheader1963.i ]
  %i.cnw = icmp sgt i32 %i.cnv, 7
  br i1 %i.cnw, label %.lr.ph.i1587.i, label %bsW.exit1590.i

.lr.ph.i1587.i:                                   ; preds = %.lr.ph2188.i, %.lr.ph.i1587.i
  %i.cnx = phi i32 [ %i.cof, %.lr.ph.i1587.i ], [ %.pre15.i1589.i, %.lr.ph2188.i ]
  %i.cny = phi i32 [ %i.coh, %.lr.ph.i1587.i ], [ %.pre.i1588.i, %.lr.ph2188.i ]
  %i.cnz = lshr i32 %i.cny, 24
  %i.coa = trunc nuw i32 %i.cnz to i8
  %i.cob = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.coc = sext i32 %i.cnx to i64
  %i.cod = getelementptr inbounds i8, ptr %i.cob, i64 %i.coc
  store i8 %i.coa, ptr %i.cod, align 1, !tbaa !19
  %i.coe = load i32, ptr %i.cfq, align 4, !tbaa !17
  %i.cof = add nsw i32 %i.coe, 1                  ; 3 uses
  store i32 %i.cof, ptr %i.cfq, align 4, !tbaa !17
  %i.cog = load i32, ptr %i.cy, align 8, !tbaa !16
  %i.coh = shl i32 %i.cog, 8                      ; 3 uses
  store i32 %i.coh, ptr %i.cy, align 8, !tbaa !16
  %i.coi = load i32, ptr %i.cv, align 4, !tbaa !15 ; 2 uses
  %i.coj = add nsw i32 %i.coi, -8                 ; 2 uses
  store i32 %i.coj, ptr %i.cv, align 4, !tbaa !15
  %i.cok = icmp sgt i32 %i.coi, 15
  br i1 %i.cok, label %.lr.ph.i1587.i, label %bsW.exit1590.loopexit.i, !llvm.loop !0

bsW.exit1590.loopexit.i:                          ; preds = %.lr.ph.i1587.i
  %.pre2520.i = load i8, ptr %i.cnn, align 1, !tbaa !19
  br label %bsW.exit1590.i

bsW.exit1590.i:                                   ; preds = %bsW.exit1590.loopexit.i, %.lr.ph2188.i
  %i.col = phi i8 [ %.pre2520.i, %bsW.exit1590.loopexit.i ], [ %i.cnu, %.lr.ph2188.i ] ; 3 uses
  %.pre15.i15822514.i = phi i32 [ %i.cof, %bsW.exit1590.loopexit.i ], [ %.pre15.i1589.i, %.lr.ph2188.i ] ; 2 uses
  %i.com = phi i32 [ %i.coh, %bsW.exit1590.loopexit.i ], [ %.pre.i1588.i, %.lr.ph2188.i ]
  %.lcssa.i1586.i = phi i32 [ %i.coj, %bsW.exit1590.loopexit.i ], [ %i.cnv, %.lr.ph2188.i ] ; 2 uses
  %i.con = add nsw i32 %.lcssa.i1586.i, 2         ; 3 uses
  %i.coo = sub i32 30, %.lcssa.i1586.i
  %i.cop = shl i32 2, %i.coo
  %i.coq = or i32 %i.cop, %i.com                  ; 3 uses
  store i32 %i.coq, ptr %i.cy, align 8, !tbaa !16
  store i32 %i.con, ptr %i.cv, align 4, !tbaa !15
  %i.cor = add nuw nsw i32 %.114622187.i, 1       ; 3 uses
  %i.cos = zext i8 %i.col to i32                  ; 2 uses
  %i.cot = icmp slt i32 %i.cor, %i.cos
  br i1 %i.cot, label %.lr.ph2188.i, label %.preheader1962.i, !llvm.loop !54

.lr.ph2192.i:                                     ; preds = %.preheader1962.i, %bsW.exit1597.i
  %i.cou = phi i8 [ %i.cpl, %bsW.exit1597.i ], [ %i.cns, %.preheader1962.i ]
  %.pre.i1595.i = phi i32 [ %i.cpq, %bsW.exit1597.i ], [ %.pre16.i15922522.i, %.preheader1962.i ] ; 2 uses
  %i.cov = phi i32 [ %i.cpn, %bsW.exit1597.i ], [ %i.cnr, %.preheader1962.i ] ; 2 uses
  %.pre15.i1596.i = phi i32 [ %.pre15.i15822511.i, %bsW.exit1597.i ], [ %.pre15.i15822513.i, %.preheader1962.i ] ; 2 uses
  %.214632191.i = phi i32 [ %i.cpr, %bsW.exit1597.i ], [ %.11462.lcssa.i, %.preheader1962.i ]
  %i.cow = icmp sgt i32 %i.cov, 7
  br i1 %i.cow, label %.lr.ph.i1594.i, label %bsW.exit1597.i

.lr.ph.i1594.i:                                   ; preds = %.lr.ph2192.i, %.lr.ph.i1594.i
  %i.cox = phi i32 [ %i.cpf, %.lr.ph.i1594.i ], [ %.pre15.i1596.i, %.lr.ph2192.i ]
  %i.coy = phi i32 [ %i.cph, %.lr.ph.i1594.i ], [ %.pre.i1595.i, %.lr.ph2192.i ]
  %i.coz = lshr i32 %i.coy, 24
  %i.cpa = trunc nuw i32 %i.coz to i8
  %i.cpb = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.cpc = sext i32 %i.cox to i64
  %i.cpd = getelementptr inbounds i8, ptr %i.cpb, i64 %i.cpc
  store i8 %i.cpa, ptr %i.cpd, align 1, !tbaa !19
  %i.cpe = load i32, ptr %i.cfq, align 4, !tbaa !17
  %i.cpf = add nsw i32 %i.cpe, 1                  ; 3 uses
  store i32 %i.cpf, ptr %i.cfq, align 4, !tbaa !17
  %i.cpg = load i32, ptr %i.cy, align 8, !tbaa !16
  %i.cph = shl i32 %i.cpg, 8                      ; 3 uses
  store i32 %i.cph, ptr %i.cy, align 8, !tbaa !16
  %i.cpi = load i32, ptr %i.cv, align 4, !tbaa !15 ; 2 uses
  %i.cpj = add nsw i32 %i.cpi, -8                 ; 2 uses
  store i32 %i.cpj, ptr %i.cv, align 4, !tbaa !15
  %i.cpk = icmp sgt i32 %i.cpi, 15
  br i1 %i.cpk, label %.lr.ph.i1594.i, label %bsW.exit1597.loopexit.i, !llvm.loop !0

bsW.exit1597.loopexit.i:                          ; preds = %.lr.ph.i1594.i
  %.pre2523.i = load i8, ptr %i.cnn, align 1, !tbaa !19
  br label %bsW.exit1597.i

bsW.exit1597.i:                                   ; preds = %bsW.exit1597.loopexit.i, %.lr.ph2192.i
  %i.cpl = phi i8 [ %.pre2523.i, %bsW.exit1597.loopexit.i ], [ %i.cou, %.lr.ph2192.i ] ; 2 uses
  %.pre15.i15822511.i = phi i32 [ %i.cpf, %bsW.exit1597.loopexit.i ], [ %.pre15.i1596.i, %.lr.ph2192.i ] ; 2 uses
  %i.cpm = phi i32 [ %i.cph, %bsW.exit1597.loopexit.i ], [ %.pre.i1595.i, %.lr.ph2192.i ]
  %.lcssa.i1593.i = phi i32 [ %i.cpj, %bsW.exit1597.loopexit.i ], [ %i.cov, %.lr.ph2192.i ] ; 2 uses
  %i.cpn = add nsw i32 %.lcssa.i1593.i, 2         ; 3 uses
  %i.cpo = sub i32 30, %.lcssa.i1593.i
  %i.cpp = shl i32 3, %i.cpo
  %i.cpq = or i32 %i.cpp, %i.cpm                  ; 3 uses
  store i32 %i.cpq, ptr %i.cy, align 8, !tbaa !16
  store i32 %i.cpn, ptr %i.cv, align 4, !tbaa !15
  %i.cpr = add nsw i32 %.214632191.i, -1          ; 3 uses
  %i.cps = zext i8 %i.cpl to i32
  %i.cpt = icmp samesign ugt i32 %i.cpr, %i.cps
  br i1 %i.cpt, label %.lr.ph2192.i, label %._crit_edge2193.i, !llvm.loop !55

._crit_edge2193.i:                                ; preds = %bsW.exit1597.i, %.preheader1962.i
  %.pre.i1602.i = phi i32 [ %.pre16.i15922522.i, %.preheader1962.i ], [ %i.cpq, %bsW.exit1597.i ] ; 2 uses
  %i.cpu = phi i32 [ %i.cnr, %.preheader1962.i ], [ %i.cpn, %bsW.exit1597.i ] ; 2 uses
  %.pre15.i1603.i = phi i32 [ %.pre15.i15822513.i, %.preheader1962.i ], [ %.pre15.i15822511.i, %bsW.exit1597.i ] ; 2 uses
  %.21463.lcssa.i = phi i32 [ %.11462.lcssa.i, %.preheader1962.i ], [ %i.cpr, %bsW.exit1597.i ]
  %i.cpv = icmp sgt i32 %i.cpu, 7
  br i1 %i.cpv, label %.lr.ph.i1601.i, label %bsW.exit1604.i

.lr.ph.i1601.i:                                   ; preds = %._crit_edge2193.i, %.lr.ph.i1601.i
  %i.cpw = phi i32 [ %i.cqe, %.lr.ph.i1601.i ], [ %.pre15.i1603.i, %._crit_edge2193.i ]
  %i.cpx = phi i32 [ %i.cqg, %.lr.ph.i1601.i ], [ %.pre.i1602.i, %._crit_edge2193.i ]
  %i.cpy = lshr i32 %i.cpx, 24
  %i.cpz = trunc nuw i32 %i.cpy to i8
  %i.cqa = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.cqb = sext i32 %i.cpw to i64
  %i.cqc = getelementptr inbounds i8, ptr %i.cqa, i64 %i.cqb
  store i8 %i.cpz, ptr %i.cqc, align 1, !tbaa !19
  %i.cqd = load i32, ptr %i.cfq, align 4, !tbaa !17
  %i.cqe = add nsw i32 %i.cqd, 1                  ; 3 uses
  store i32 %i.cqe, ptr %i.cfq, align 4, !tbaa !17
  %i.cqf = load i32, ptr %i.cy, align 8, !tbaa !16
  %i.cqg = shl i32 %i.cqf, 8                      ; 3 uses
  store i32 %i.cqg, ptr %i.cy, align 8, !tbaa !16
  %i.cqh = load i32, ptr %i.cv, align 4, !tbaa !15 ; 2 uses
  %i.cqi = add nsw i32 %i.cqh, -8                 ; 2 uses
  store i32 %i.cqi, ptr %i.cv, align 4, !tbaa !15
  %i.cqj = icmp sgt i32 %i.cqh, 15
  br i1 %i.cqj, label %.lr.ph.i1601.i, label %bsW.exit1604.i, !llvm.loop !0

bsW.exit1604.i:                                   ; preds = %.lr.ph.i1601.i, %._crit_edge2193.i
  %.pre15.i15822509.i = phi i32 [ %.pre15.i1603.i, %._crit_edge2193.i ], [ %i.cqe, %.lr.ph.i1601.i ] ; 2 uses
  %i.cqk = phi i32 [ %.pre.i1602.i, %._crit_edge2193.i ], [ %i.cqg, %.lr.ph.i1601.i ] ; 3 uses
  %.lcssa.i1600.i = phi i32 [ %i.cpu, %._crit_edge2193.i ], [ %i.cqi, %.lr.ph.i1601.i ]
  %i.cql = add nsw i32 %.lcssa.i1600.i, 1         ; 3 uses
  store i32 %i.cqk, ptr %i.cy, align 8, !tbaa !16
  store i32 %i.cql, ptr %i.cv, align 4, !tbaa !15
  %indvars.iv.next2460.i = add nuw nsw i64 %indvars.iv2459.i, 1 ; 2 uses
  %exitcond2463.not.i = icmp eq i64 %indvars.iv.next2460.i, %wide.trip.count.i122
  br i1 %exitcond2463.not.i, label %._crit_edge2197.i, label %.preheader1963.i, !llvm.loop !56

._crit_edge2197.i:                                ; preds = %bsW.exit1604.i, %bsW.exit1583.i
  %.pre.i1581.i573 = phi i32 [ %i.cnl, %bsW.exit1583.i ], [ %i.cqk, %bsW.exit1604.i ]
  %i.cqm = phi i32 [ %.pre15.i15822517.i, %bsW.exit1583.i ], [ %.pre15.i15822509.i, %bsW.exit1604.i ] ; 3 uses
  %i.cqn = phi i32 [ %i.cni, %bsW.exit1583.i ], [ %i.cql, %bsW.exit1604.i ]
  %indvars.iv.next2465.i = add nuw nsw i64 %indvars.iv2464.i, 1 ; 2 uses
  %exitcond2468.not.i = icmp eq i64 %indvars.iv.next2465.i, %i.ow
  br i1 %exitcond2468.not.i, label %bb.ca, label %bb.bz, !llvm.loop !57

bb.ca:                                            ; preds = %._crit_edge2197.i
  %i.cqo = load i32, ptr %i.nw, align 8, !tbaa !64
  %i.cqp = icmp sgt i32 %i.cqo, 2
  br i1 %i.cqp, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.cqq = load ptr, ptr @stderr, align 8, !tbaa !66
  %i.cqr = sub nsw i32 %i.cqm, %i.cmn
  %i.cqs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cqq, ptr noundef nonnull @.str.9, i32 noundef %i.cqr) #10 ; 0 uses
  %.pre2525.i = load i32, ptr %i.cfq, align 4, !tbaa !17
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.cqt = phi i32 [ %.pre2525.i, %bb.cb ], [ %i.cqm, %bb.ca ]
  %i.cqu = load i32, ptr %i.nv, align 4, !tbaa !80 ; 2 uses
  %.not2202.i = icmp sgt i32 %i.cqu, 0
  br i1 %.not2202.i, label %.lr.ph2206.i, label %._crit_edge2207.i

.lr.ph2206.i:                                     ; preds = %bb.cc, %.loopexit.i
  %indvars.iv2475.i = phi i64 [ %indvars.iv.next2476.i, %.loopexit.i ], [ 0, %bb.cc ] ; 2 uses
  %i.cqv = phi i32 [ %i.euq, %.loopexit.i ], [ %i.cqu, %bb.cc ]
  %.214712204.i = phi i32 [ %i.eup, %.loopexit.i ], [ 0, %bb.cc ] ; 5 uses
  %i.cqw = add i32 %.214712204.i, 49
  %i.cqx = add nsw i32 %i.cqv, -1
  %spec.select1525.i = call i32 @llvm.smin.i32(i32 %i.cqw, i32 %i.cqx) ; 3 uses
  %i.cqy = getelementptr inbounds nuw i8, ptr %i.pg, i64 %indvars.iv2475.i ; 3 uses
  %i.cqz = load i8, ptr %i.cqy, align 1, !tbaa !19
  %i.cra = zext i8 %i.cqz to i32
  %i.crb = icmp samesign ugt i32 %.01481.i, %i.cra
  br i1 %i.crb, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph2206.i
  call void @BZ2_bz__AssertH__fail(i32 noundef 3006) #11
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %.lr.ph2206.i
  %i.crc = sub nsw i32 %spec.select1525.i, %.214712204.i
  %i.crd = icmp eq i32 %i.crc, 49
  %or.cond1527.i = select i1 %i.ou, i1 %i.crd, i1 false
  br i1 %or.cond1527.i, label %bb.cf, label %.lr.ph2201.preheader.i

.lr.ph2201.preheader.i:                           ; preds = %bb.ce
  %i.cre = sext i32 %.214712204.i to i64
  %smax2472.i = call i32 @llvm.smax.i32(i32 %.214712204.i, i32 %spec.select1525.i)
  %i.crf = add nsw i32 %smax2472.i, 1
  %.pre2526.i = load i32, ptr %i.cv, align 4, !tbaa !15
  %.pre.i1959.i.pre = load i32, ptr %i.cy, align 8, !tbaa !16
  br label %.lr.ph2201.i

bb.cf:                                            ; preds = %bb.ce
  %i.crg = load i8, ptr %i.cqy, align 1, !tbaa !19
  %i.crh = zext i8 %i.crg to i64                  ; 2 uses
  %i.cri = getelementptr inbounds nuw [258 x i8], ptr %i.og, i64 %i.crh ; 50 uses
  %i.crj = getelementptr inbounds nuw [1032 x i8], ptr %i.bad, i64 %i.crh ; 50 uses
  %i.crk = sext i32 %.214712204.i to i64
  %i.crl = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %i.crk ; 50 uses
  %i.crm = load i16, ptr %i.crl, align 2, !tbaa !79
  %i.crn = zext i16 %i.crm to i64                 ; 2 uses
  %i.cro = getelementptr inbounds nuw i8, ptr %i.cri, i64 %i.crn
  %i.crp = load i8, ptr %i.cro, align 1, !tbaa !19
  %i.crq = zext i8 %i.crp to i32
  %i.crr = getelementptr inbounds nuw [4 x i8], ptr %i.crj, i64 %i.crn
  %i.crs = load i32, ptr %i.crr, align 4, !tbaa !74
  %i.crt = load i32, ptr %i.cv, align 4, !tbaa !15 ; 2 uses
  %i.cru = icmp sgt i32 %i.crt, 7
  %.pre.i1609.i = load i32, ptr %i.cy, align 8, !tbaa !16 ; 2 uses
  br i1 %i.cru, label %.lr.ph.i1608.i, label %bsW.exit1611.i

.lr.ph.i1608.i:                                   ; preds = %bb.cf
  %.pre15.i1610.i = load i32, ptr %i.cfq, align 4, !tbaa !17
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cg, %.lr.ph.i1608.i
  %i.crv = phi i32 [ %.pre15.i1610.i, %.lr.ph.i1608.i ], [ %i.csd, %bb.cg ]
  %i.crw = phi i32 [ %.pre.i1609.i, %.lr.ph.i1608.i ], [ %i.csf, %bb.cg ]
  %i.crx = lshr i32 %i.crw, 24
  %i.cry = trunc nuw i32 %i.crx to i8
  %i.crz = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.csa = sext i32 %i.crv to i64
  %i.csb = getelementptr inbounds i8, ptr %i.crz, i64 %i.csa
  store i8 %i.cry, ptr %i.csb, align 1, !tbaa !19
  %i.csc = load i32, ptr %i.cfq, align 4, !tbaa !17
  %i.csd = add nsw i32 %i.csc, 1                  ; 2 uses
  store i32 %i.csd, ptr %i.cfq, align 4, !tbaa !17
  %i.cse = load i32, ptr %i.cy, align 8, !tbaa !16
  %i.csf = shl i32 %i.cse, 8                      ; 3 uses
  store i32 %i.csf, ptr %i.cy, align 8, !tbaa !16
  %i.csg = load i32, ptr %i.cv, align 4, !tbaa !15 ; 2 uses
  %i.csh = add nsw i32 %i.csg, -8                 ; 2 uses
  store i32 %i.csh, ptr %i.cv, align 4, !tbaa !15
  %i.csi = icmp sgt i32 %i.csg, 15
  br i1 %i.csi, label %bb.cg, label %bsW.exit1611.i, !llvm.loop !0

bsW.exit1611.i:                                   ; preds = %bb.cg, %bb.cf
  %i.csj = phi i32 [ %.pre.i1609.i, %bb.cf ], [ %i.csf, %bb.cg ]
  %.lcssa.i1607.i = phi i32 [ %i.crt, %bb.cf ], [ %i.csh, %bb.cg ]
  %i.csk = add nsw i32 %.lcssa.i1607.i, %i.crq    ; 4 uses
  %i.csl = sub i32 32, %i.csk
  %i.csm = shl i32 %i.crs, %i.csl
  %i.csn = or i32 %i.csm, %i.csj                  ; 3 uses
  store i32 %i.csn, ptr %i.cy, align 8, !tbaa !16
  store i32 %i.csk, ptr %i.cv, align 4, !tbaa !15
  %i.cso = getelementptr i8, ptr %i.crl, i64 2
  %i.csp = load i16, ptr %i.cso, align 2, !tbaa !79
  %i.csq = zext i16 %i.csp to i64                 ; 2 uses
  %i.csr = getelementptr inbounds nuw i8, ptr %i.cri, i64 %i.csq
  %i.css = load i8, ptr %i.csr, align 1, !tbaa !19
  %i.cst = zext i8 %i.css to i32
  %i.csu = getelementptr inbounds nuw [4 x i8], ptr %i.crj, i64 %i.csq
  %i.csv = load i32, ptr %i.csu, align 4, !tbaa !74
  %i.csw = icmp sgt i32 %i.csk, 7
  br i1 %i.csw, label %.lr.ph.i1615.i, label %bsW.exit1618.i

.lr.ph.i1615.i:                                   ; preds = %bsW.exit1611.i
  %.pre15.i1617.i = load i32, ptr %i.cfq, align 4, !tbaa !17
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ch, %.lr.ph.i1615.i
  %i.csx = phi i32 [ %.pre15.i1617.i, %.lr.ph.i1615.i ], [ %i.ctf, %bb.ch ]
  %i.csy = phi i32 [ %i.csn, %.lr.ph.i1615.i ], [ %i.cth, %bb.ch ]
  %i.csz = lshr i32 %i.csy, 24
  %i.cta = trunc nuw i32 %i.csz to i8
  %i.ctb = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.ctc = sext i32 %i.csx to i64
  %i.ctd = getelementptr inbounds i8, ptr %i.ctb, i64 %i.ctc
  store i8 %i.cta, ptr %i.ctd, align 1, !tbaa !19
  %i.cte = load i32, ptr %i.cfq, align 4, !tbaa !17
  %i.ctf = add nsw i32 %i.cte, 1                  ; 2 uses
  store i32 %i.ctf, ptr %i.cfq, align 4, !tbaa !17
  %i.ctg = load i32, ptr %i.cy, align 8, !tbaa !16
  %i.cth = shl i32 %i.ctg, 8                      ; 3 uses
  store i32 %i.cth, ptr %i.cy, align 8, !tbaa !16
  %i.cti = load i32, ptr %i.cv, align 4, !tbaa !15 ; 2 uses
  %i.ctj = add nsw i32 %i.cti, -8                 ; 2 uses
  store i32 %i.ctj, ptr %i.cv, align 4, !tbaa !15
  %i.ctk = icmp sgt i32 %i.cti, 15
  br i1 %i.ctk, label %bb.ch, label %bsW.exit1618.i, !llvm.loop !0

bsW.exit1618.i:                                   ; preds = %bb.ch, %bsW.exit1611.i
  %i.ctl = phi i32 [ %i.csn, %bsW.exit1611.i ], [ %i.cth, %bb.ch ]
  %.lcssa.i1614.i = phi i32 [ %i.csk, %bsW.exit1611.i ], [ %i.ctj, %bb.ch ]
  %i.ctm = add nsw i32 %.lcssa.i1614.i, %i.cst    ; 4 uses
  %i.ctn = sub i32 32, %i.ctm
  %i.cto = shl i32 %i.csv, %i.ctn
  %i.ctp = or i32 %i.cto, %i.ctl                  ; 3 uses
  store i32 %i.ctp, ptr %i.cy, align 8, !tbaa !16
  store i32 %i.ctm, ptr %i.cv, align 4, !tbaa !15
  %i.ctq = getelementptr i8, ptr %i.crl, i64 4
  %i.ctr = load i16, ptr %i.ctq, align 2, !tbaa !79
  %i.cts = zext i16 %i.ctr to i64                 ; 2 uses
  %i.ctt = getelementptr inbounds nuw i8, ptr %i.cri, i64 %i.cts
  %i.ctu = load i8, ptr %i.ctt, align 1, !tbaa !19
  %i.ctv = zext i8 %i.ctu to i32
  %i.ctw = getelementptr inbounds nuw [4 x i8], ptr %i.crj, i64 %i.cts
  %i.ctx = load i32, ptr %i.ctw, align 4, !tbaa !74
  %i.cty = icmp sgt i32 %i.ctm, 7
  br i1 %i.cty, label %.lr.ph.i1622.i, label %bsW.exit1625.i

.lr.ph.i1622.i:                                   ; preds = %bsW.exit1618.i
  %.pre15.i1624.i = load i32, ptr %i.cfq, align 4, !tbaa !17
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ci, %.lr.ph.i1622.i
  %i.ctz = phi i32 [ %.pre15.i1624.i, %.lr.ph.i1622.i ], [ %i.cuh, %bb.ci ]
  %i.cua = phi i32 [ %i.ctp, %.lr.ph.i1622.i ], [ %i.cuj, %bb.ci ]
  %i.cub = lshr i32 %i.cua, 24
  %i.cuc = trunc nuw i32 %i.cub to i8
  %i.cud = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.cue = sext i32 %i.ctz to i64
  %i.cuf = getelementptr inbounds i8, ptr %i.cud, i64 %i.cue
  store i8 %i.cuc, ptr %i.cuf, align 1, !tbaa !19
  %i.cug = load i32, ptr %i.cfq, align 4, !tbaa !17
  %i.cuh = add nsw i32 %i.cug, 1                  ; 2 uses
  store i32 %i.cuh, ptr %i.cfq, align 4, !tbaa !17
  %i.cui = load i32, ptr %i.cy, align 8, !tbaa !16
  %i.cuj = shl i32 %i.cui, 8                      ; 3 uses
  store i32 %i.cuj, ptr %i.cy, align 8, !tbaa !16
  %i.cuk = load i32, ptr %i.cv, align 4, !tbaa !15 ; 2 uses
  %i.cul = add nsw i32 %i.cuk, -8                 ; 2 uses
  store i32 %i.cul, ptr %i.cv, align 4, !tbaa !15
  %i.cum = icmp sgt i32 %i.cuk, 15
  br i1 %i.cum, label %bb.ci, label %bsW.exit1625.i, !llvm.loop !0

bsW.exit1625.i:                                   ; preds = %bb.ci, %bsW.exit1618.i
  %i.cun = phi i32 [ %i.ctp, %bsW.exit1618.i ], [ %i.cuj, %bb.ci ]
  %.lcssa.i1621.i = phi i32 [ %i.ctm, %bsW.exit1618.i ], [ %i.cul, %bb.ci ]
  %i.cuo = add nsw i32 %.lcssa.i1621.i, %i.ctv    ; 4 uses
  %i.cup = sub i32 32, %i.cuo
  %i.cuq = shl i32 %i.ctx, %i.cup
  %i.cur = or i32 %i.cuq, %i.cun                  ; 3 uses
  store i32 %i.cur, ptr %i.cy, align 8, !tbaa !16
  store i32 %i.cuo, ptr %i.cv, align 4, !tbaa !15
  %i.cus = getelementptr i8, ptr %i.crl, i64 6
  %i.cut = load i16, ptr %i.cus, align 2, !tbaa !79
  %i.cuu = zext i16 %i.cut to i64                 ; 2 uses
  %i.cuv = getelementptr inbounds nuw i8, ptr %i.cri, i64 %i.cuu
  %i.cuw = load i8, ptr %i.cuv, align 1, !tbaa !19
  %i.cux = zext i8 %i.cuw to i32
  %i.cuy = getelementptr inbounds nuw [4 x i8], ptr %i.crj, i64 %i.cuu
  %i.cuz = load i32, ptr %i.cuy, align 4, !tbaa !74
  %i.cva = icmp sgt i32 %i.cuo, 7
  br i1 %i.cva, label %.lr.ph.i1629.i, label %bsW.exit1632.i

.lr.ph.i1629.i:                                   ; preds = %bsW.exit1625.i
  %.pre15.i1631.i = load i32, ptr %i.cfq, align 4, !tbaa !17
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cj, %.lr.ph.i1629.i
  %i.cvb = phi i32 [ %.pre15.i1631.i, %.lr.ph.i1629.i ], [ %i.cvj, %bb.cj ]
  %i.cvc = phi i32 [ %i.cur, %.lr.ph.i1629.i ], [ %i.cvl, %bb.cj ]
  %i.cvd = lshr i32 %i.cvc, 24
  %i.cve = trunc nuw i32 %i.cvd to i8
  %i.cvf = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.cvg = sext i32 %i.cvb to i64
  %i.cvh = getelementptr inbounds i8, ptr %i.cvf, i64 %i.cvg
  store i8 %i.cve, ptr %i.cvh, align 1, !tbaa !19
  %i.cvi = load i32, ptr %i.cfq, align 4, !tbaa !17
  %i.cvj = add nsw i32 %i.cvi, 1                  ; 2 uses
  store i32 %i.cvj, ptr %i.cfq, align 4, !tbaa !17
  %i.cvk = load i32, ptr %i.cy, align 8, !tbaa !16
  %i.cvl = shl i32 %i.cvk, 8                      ; 3 uses
  store i32 %i.cvl, ptr %i.cy, align 8, !tbaa !16
  %i.cvm = load i32, ptr %i.cv, align 4, !tbaa !15 ; 2 uses
  %i.cvn = add nsw i32 %i.cvm, -8                 ; 2 uses
  store i32 %i.cvn, ptr %i.cv, align 4, !tbaa !15
  %i.cvo = icmp sgt i32 %i.cvm, 15
  br i1 %i.cvo, label %bb.cj, label %bsW.exit1632.i, !llvm.loop !0

bsW.exit1632.i:                                   ; preds = %bb.cj, %bsW.exit1625.i
  %i.cvp = phi i32 [ %i.cur, %bsW.exit1625.i ], [ %i.cvl, %bb.cj ]
  %.lcssa.i1628.i = phi i32 [ %i.cuo, %bsW.exit1625.i ], [ %i.cvn, %bb.cj ]
  %i.cvq = add nsw i32 %.lcssa.i1628.i, %i.cux    ; 4 uses
  %i.cvr = sub i32 32, %i.cvq
  %i.cvs = shl i32 %i.cuz, %i.cvr
  %i.cvt = or i32 %i.cvs, %i.cvp                  ; 3 uses
  store i32 %i.cvt, ptr %i.cy, align 8, !tbaa !16
  store i32 %i.cvq, ptr %i.cv, align 4, !tbaa !15
  %i.cvu = getelementptr i8, ptr %i.crl, i64 8
  %i.cvv = load i16, ptr %i.cvu, align 2, !tbaa !79
  %i.cvw = zext i16 %i.cvv to i64                 ; 2 uses
  %i.cvx = getelementptr inbounds nuw i8, ptr %i.cri, i64 %i.cvw
  %i.cvy = load i8, ptr %i.cvx, align 1, !tbaa !19
end_hunk_2
begin_hunk_3_@BZ2_compressBlock:bb.a
  %i.epz = sub i32 32, %i.epy
  %i.eqa = shl i32 %i.eph, %i.epz
  %i.eqb = or i32 %i.eqa, %i.epx                  ; 3 uses
  store i32 %i.eqb, ptr %i.cy, align 8, !tbaa !16
  store i32 %i.epy, ptr %i.cv, align 4, !tbaa !15
  %i.eqc = getelementptr i8, ptr %i.crl, i64 94
  %i.eqd = load i16, ptr %i.eqc, align 2, !tbaa !79
  %i.eqe = zext i16 %i.eqd to i64                 ; 2 uses
  %i.eqf = getelementptr inbounds nuw i8, ptr %i.cri, i64 %i.eqe
  %i.eqg = load i8, ptr %i.eqf, align 1, !tbaa !19
  %i.eqh = zext i8 %i.eqg to i32
  %i.eqi = getelementptr inbounds nuw [4 x i8], ptr %i.crj, i64 %i.eqe
  %i.eqj = load i32, ptr %i.eqi, align 4, !tbaa !74
  %i.eqk = icmp sgt i32 %i.epy, 7
  br i1 %i.eqk, label %.lr.ph.i1937.i, label %bsW.exit1940.i

.lr.ph.i1937.i:                                   ; preds = %bsW.exit1933.i
  %.pre15.i1939.i = load i32, ptr %i.cfq, align 4, !tbaa !17
  br label %bb.eb

bb.eb:                                            ; preds = %bb.eb, %.lr.ph.i1937.i
  %i.eql = phi i32 [ %.pre15.i1939.i, %.lr.ph.i1937.i ], [ %i.eqt, %bb.eb ]
  %i.eqm = phi i32 [ %i.eqb, %.lr.ph.i1937.i ], [ %i.eqv, %bb.eb ]
  %i.eqn = lshr i32 %i.eqm, 24
  %i.eqo = trunc nuw i32 %i.eqn to i8
  %i.eqp = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.eqq = sext i32 %i.eql to i64
  %i.eqr = getelementptr inbounds i8, ptr %i.eqp, i64 %i.eqq
  store i8 %i.eqo, ptr %i.eqr, align 1, !tbaa !19
  %i.eqs = load i32, ptr %i.cfq, align 4, !tbaa !17
  %i.eqt = add nsw i32 %i.eqs, 1                  ; 2 uses
  store i32 %i.eqt, ptr %i.cfq, align 4, !tbaa !17
  %i.equ = load i32, ptr %i.cy, align 8, !tbaa !16
  %i.eqv = shl i32 %i.equ, 8                      ; 3 uses
  store i32 %i.eqv, ptr %i.cy, align 8, !tbaa !16
  %i.eqw = load i32, ptr %i.cv, align 4, !tbaa !15 ; 2 uses
  %i.eqx = add nsw i32 %i.eqw, -8                 ; 2 uses
  store i32 %i.eqx, ptr %i.cv, align 4, !tbaa !15
  %i.eqy = icmp sgt i32 %i.eqw, 15
  br i1 %i.eqy, label %bb.eb, label %bsW.exit1940.i, !llvm.loop !0

bsW.exit1940.i:                                   ; preds = %bb.eb, %bsW.exit1933.i
  %i.eqz = phi i32 [ %i.eqb, %bsW.exit1933.i ], [ %i.eqv, %bb.eb ]
  %.lcssa.i1936.i = phi i32 [ %i.epy, %bsW.exit1933.i ], [ %i.eqx, %bb.eb ]
  %i.era = add nsw i32 %.lcssa.i1936.i, %i.eqh    ; 4 uses
  %i.erb = sub i32 32, %i.era
  %i.erc = shl i32 %i.eqj, %i.erb
  %i.erd = or i32 %i.erc, %i.eqz                  ; 3 uses
  store i32 %i.erd, ptr %i.cy, align 8, !tbaa !16
  store i32 %i.era, ptr %i.cv, align 4, !tbaa !15
  %i.ere = getelementptr i8, ptr %i.crl, i64 96
  %i.erf = load i16, ptr %i.ere, align 2, !tbaa !79
  %i.erg = zext i16 %i.erf to i64                 ; 2 uses
  %i.erh = getelementptr inbounds nuw i8, ptr %i.cri, i64 %i.erg
  %i.eri = load i8, ptr %i.erh, align 1, !tbaa !19
  %i.erj = zext i8 %i.eri to i32
  %i.erk = getelementptr inbounds nuw [4 x i8], ptr %i.crj, i64 %i.erg
  %i.erl = load i32, ptr %i.erk, align 4, !tbaa !74
  %i.erm = icmp sgt i32 %i.era, 7
  br i1 %i.erm, label %.lr.ph.i1944.i, label %bsW.exit1947.i

.lr.ph.i1944.i:                                   ; preds = %bsW.exit1940.i
  %.pre15.i1946.i = load i32, ptr %i.cfq, align 4, !tbaa !17
  br label %bb.ec

bb.ec:                                            ; preds = %bb.ec, %.lr.ph.i1944.i
  %i.ern = phi i32 [ %.pre15.i1946.i, %.lr.ph.i1944.i ], [ %i.erv, %bb.ec ]
  %i.ero = phi i32 [ %i.erd, %.lr.ph.i1944.i ], [ %i.erx, %bb.ec ]
  %i.erp = lshr i32 %i.ero, 24
  %i.erq = trunc nuw i32 %i.erp to i8
  %i.err = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.ers = sext i32 %i.ern to i64
  %i.ert = getelementptr inbounds i8, ptr %i.err, i64 %i.ers
  store i8 %i.erq, ptr %i.ert, align 1, !tbaa !19
  %i.eru = load i32, ptr %i.cfq, align 4, !tbaa !17
  %i.erv = add nsw i32 %i.eru, 1                  ; 2 uses
  store i32 %i.erv, ptr %i.cfq, align 4, !tbaa !17
  %i.erw = load i32, ptr %i.cy, align 8, !tbaa !16
  %i.erx = shl i32 %i.erw, 8                      ; 3 uses
  store i32 %i.erx, ptr %i.cy, align 8, !tbaa !16
  %i.ery = load i32, ptr %i.cv, align 4, !tbaa !15 ; 2 uses
  %i.erz = add nsw i32 %i.ery, -8                 ; 2 uses
  store i32 %i.erz, ptr %i.cv, align 4, !tbaa !15
  %i.esa = icmp sgt i32 %i.ery, 15
  br i1 %i.esa, label %bb.ec, label %bsW.exit1947.i, !llvm.loop !0

bsW.exit1947.i:                                   ; preds = %bb.ec, %bsW.exit1940.i
  %i.esb = phi i32 [ %i.erd, %bsW.exit1940.i ], [ %i.erx, %bb.ec ]
  %.lcssa.i1943.i = phi i32 [ %i.era, %bsW.exit1940.i ], [ %i.erz, %bb.ec ]
  %i.esc = add nsw i32 %.lcssa.i1943.i, %i.erj    ; 4 uses
  %i.esd = sub i32 32, %i.esc
  %i.ese = shl i32 %i.erl, %i.esd
  %i.esf = or i32 %i.ese, %i.esb                  ; 3 uses
  store i32 %i.esf, ptr %i.cy, align 8, !tbaa !16
  store i32 %i.esc, ptr %i.cv, align 4, !tbaa !15
  %i.esg = getelementptr i8, ptr %i.crl, i64 98
  %i.esh = load i16, ptr %i.esg, align 2, !tbaa !79
  %i.esi = zext i16 %i.esh to i64                 ; 2 uses
  %i.esj = getelementptr inbounds nuw i8, ptr %i.cri, i64 %i.esi
  %i.esk = load i8, ptr %i.esj, align 1, !tbaa !19
  %i.esl = zext i8 %i.esk to i32
  %i.esm = getelementptr inbounds nuw [4 x i8], ptr %i.crj, i64 %i.esi
  %i.esn = load i32, ptr %i.esm, align 4, !tbaa !74
  %i.eso = icmp sgt i32 %i.esc, 7
  br i1 %i.eso, label %.lr.ph.i1951.i, label %bsW.exit1954.i

.lr.ph.i1951.i:                                   ; preds = %bsW.exit1947.i
  %.pre15.i1953.i = load i32, ptr %i.cfq, align 4, !tbaa !17
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ed, %.lr.ph.i1951.i
  %i.esp = phi i32 [ %.pre15.i1953.i, %.lr.ph.i1951.i ], [ %i.esx, %bb.ed ]
  %i.esq = phi i32 [ %i.esf, %.lr.ph.i1951.i ], [ %i.esz, %bb.ed ]
  %i.esr = lshr i32 %i.esq, 24
  %i.ess = trunc nuw i32 %i.esr to i8
  %i.est = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.esu = sext i32 %i.esp to i64
  %i.esv = getelementptr inbounds i8, ptr %i.est, i64 %i.esu
  store i8 %i.ess, ptr %i.esv, align 1, !tbaa !19
  %i.esw = load i32, ptr %i.cfq, align 4, !tbaa !17
  %i.esx = add nsw i32 %i.esw, 1                  ; 2 uses
  store i32 %i.esx, ptr %i.cfq, align 4, !tbaa !17
  %i.esy = load i32, ptr %i.cy, align 8, !tbaa !16
  %i.esz = shl i32 %i.esy, 8                      ; 3 uses
  store i32 %i.esz, ptr %i.cy, align 8, !tbaa !16
  %i.eta = load i32, ptr %i.cv, align 4, !tbaa !15 ; 2 uses
  %i.etb = add nsw i32 %i.eta, -8                 ; 2 uses
  store i32 %i.etb, ptr %i.cv, align 4, !tbaa !15
  %i.etc = icmp sgt i32 %i.eta, 15
  br i1 %i.etc, label %bb.ed, label %bsW.exit1954.i, !llvm.loop !0

bsW.exit1954.i:                                   ; preds = %bb.ed, %bsW.exit1947.i
  %i.etd = phi i32 [ %i.esf, %bsW.exit1947.i ], [ %i.esz, %bb.ed ]
  %.lcssa.i1950.i = phi i32 [ %i.esc, %bsW.exit1947.i ], [ %i.etb, %bb.ed ]
  %i.ete = add nsw i32 %.lcssa.i1950.i, %i.esl    ; 2 uses
  %i.etf = sub i32 32, %i.ete
  %i.etg = shl i32 %i.esn, %i.etf
  %i.eth = or i32 %i.etg, %i.etd
  store i32 %i.eth, ptr %i.cy, align 8, !tbaa !16
  store i32 %i.ete, ptr %i.cv, align 4, !tbaa !15
  br label %.loopexit.i

.lr.ph2201.i:                                     ; preds = %bsW.exit1961.i, %.lr.ph2201.preheader.i
  %.pre.i1959.i = phi i32 [ %.pre.i1959.i.pre, %.lr.ph2201.preheader.i ], [ %i.euo, %bsW.exit1961.i ] ; 2 uses
  %i.eti = phi i32 [ %.pre2526.i, %.lr.ph2201.preheader.i ], [ %i.eul, %bsW.exit1961.i ] ; 2 uses
  %indvars.iv2469.i = phi i64 [ %i.cre, %.lr.ph2201.preheader.i ], [ %indvars.iv.next2470.i, %bsW.exit1961.i ] ; 2 uses
  %i.etj = load i8, ptr %i.cqy, align 1, !tbaa !19
  %i.etk = zext i8 %i.etj to i64                  ; 2 uses
  %i.etl = getelementptr inbounds nuw [258 x i8], ptr %i.og, i64 %i.etk
  %i.etm = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %indvars.iv2469.i
  %i.etn = load i16, ptr %i.etm, align 2, !tbaa !79
  %i.eto = zext i16 %i.etn to i64                 ; 2 uses
  %i.etp = getelementptr inbounds nuw i8, ptr %i.etl, i64 %i.eto
  %i.etq = load i8, ptr %i.etp, align 1, !tbaa !19
  %i.etr = zext i8 %i.etq to i32
  %i.ets = getelementptr inbounds nuw [1032 x i8], ptr %i.bad, i64 %i.etk
  %i.ett = getelementptr inbounds nuw [4 x i8], ptr %i.ets, i64 %i.eto
  %i.etu = load i32, ptr %i.ett, align 4, !tbaa !74
  %i.etv = icmp sgt i32 %i.eti, 7
  br i1 %i.etv, label %.lr.ph.i1958.i, label %bsW.exit1961.i

.lr.ph.i1958.i:                                   ; preds = %.lr.ph2201.i
  %.pre15.i1960.i = load i32, ptr %i.cfq, align 4, !tbaa !17
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ee, %.lr.ph.i1958.i
  %i.etw = phi i32 [ %.pre15.i1960.i, %.lr.ph.i1958.i ], [ %i.eue, %bb.ee ]
  %i.etx = phi i32 [ %.pre.i1959.i, %.lr.ph.i1958.i ], [ %i.eug, %bb.ee ]
  %i.ety = lshr i32 %i.etx, 24
  %i.etz = trunc nuw i32 %i.ety to i8
  %i.eua = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.eub = sext i32 %i.etw to i64
  %i.euc = getelementptr inbounds i8, ptr %i.eua, i64 %i.eub
  store i8 %i.etz, ptr %i.euc, align 1, !tbaa !19
  %i.eud = load i32, ptr %i.cfq, align 4, !tbaa !17
  %i.eue = add nsw i32 %i.eud, 1                  ; 2 uses
  store i32 %i.eue, ptr %i.cfq, align 4, !tbaa !17
  %i.euf = load i32, ptr %i.cy, align 8, !tbaa !16
  %i.eug = shl i32 %i.euf, 8                      ; 3 uses
  store i32 %i.eug, ptr %i.cy, align 8, !tbaa !16
  %i.euh = load i32, ptr %i.cv, align 4, !tbaa !15 ; 2 uses
  %i.eui = add nsw i32 %i.euh, -8                 ; 2 uses
  store i32 %i.eui, ptr %i.cv, align 4, !tbaa !15
  %i.euj = icmp sgt i32 %i.euh, 15
  br i1 %i.euj, label %bb.ee, label %bsW.exit1961.i, !llvm.loop !0

bsW.exit1961.i:                                   ; preds = %bb.ee, %.lr.ph2201.i
  %i.euk = phi i32 [ %.pre.i1959.i, %.lr.ph2201.i ], [ %i.eug, %bb.ee ]
  %.lcssa.i1957.i = phi i32 [ %i.eti, %.lr.ph2201.i ], [ %i.eui, %bb.ee ]
  %i.eul = add nsw i32 %.lcssa.i1957.i, %i.etr    ; 3 uses
  %i.eum = sub i32 32, %i.eul
  %i.eun = shl i32 %i.etu, %i.eum
  %i.euo = or i32 %i.eun, %i.euk                  ; 2 uses
  store i32 %i.euo, ptr %i.cy, align 8, !tbaa !16
  store i32 %i.eul, ptr %i.cv, align 4, !tbaa !15
  %indvars.iv.next2470.i = add nsw i64 %indvars.iv2469.i, 1 ; 2 uses
  %lftr.wideiv2473.i = trunc i64 %indvars.iv.next2470.i to i32
  %exitcond2474.not.i = icmp eq i32 %i.crf, %lftr.wideiv2473.i
  br i1 %exitcond2474.not.i, label %.loopexit.i, label %.lr.ph2201.i, !llvm.loop !58

.loopexit.i:                                      ; preds = %bsW.exit1961.i, %bsW.exit1954.i
  %i.eup = add nsw i32 %spec.select1525.i, 1      ; 2 uses
  %indvars.iv.next2476.i = add nuw nsw i64 %indvars.iv2475.i, 1 ; 2 uses
  %i.euq = load i32, ptr %i.nv, align 4, !tbaa !80 ; 2 uses
  %.not.i = icmp slt i32 %i.eup, %i.euq
  br i1 %.not.i, label %.lr.ph2206.i, label %._crit_edge2207.loopexit.i

._crit_edge2207.loopexit.i:                       ; preds = %.loopexit.i
  %i.eur = trunc nuw i64 %indvars.iv.next2476.i to i32
  br label %._crit_edge2207.i

._crit_edge2207.i:                                ; preds = %._crit_edge2207.loopexit.i, %bb.cc
  %.01482.lcssa.i = phi i32 [ 0, %bb.cc ], [ %i.eur, %._crit_edge2207.loopexit.i ]
  %i.eus = icmp eq i32 %.01482.lcssa.i, %.11488.lcssa.i
  br i1 %i.eus, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %._crit_edge2207.i
  call void @BZ2_bz__AssertH__fail(i32 noundef 3007) #11
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %._crit_edge2207.i
  %i.eut = load i32, ptr %i.nw, align 8, !tbaa !64
  %i.euu = icmp sgt i32 %i.eut, 2
  br i1 %i.euu, label %bb.eh, label %sendMTFValues.exit

bb.eh:                                            ; preds = %bb.eg
  %i.euv = load ptr, ptr @stderr, align 8, !tbaa !66
  %i.euw = load i32, ptr %i.cfq, align 4, !tbaa !17
  %i.eux = sub nsw i32 %i.euw, %i.cqt
  %i.euy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.euv, ptr noundef nonnull @.str.10, i32 noundef %i.eux) #10 ; 0 uses
  br label %sendMTFValues.exit

sendMTFValues.exit:                               ; preds = %bb.eg, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.ei

bb.ei:                                            ; preds = %sendMTFValues.exit, %bb.i
  %.not = icmp eq i8 %1, 0
  br i1 %.not, label %bsFinishWrite.exit, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.euz = getelementptr inbounds nuw i8, ptr %0, i64 644 ; 22 uses
  %i.eva = load i32, ptr %i.euz, align 4, !tbaa !15 ; 2 uses
  %i.evb = icmp sgt i32 %i.eva, 7
  %i.evc = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 23 uses
  br i1 %i.evb, label %.lr.ph.i.i136, label %.._crit_edge_crit_edge.i.i132

.._crit_edge_crit_edge.i.i132:                    ; preds = %bb.ej
  %.pre16.i.i133 = load i32, ptr %i.evc, align 8, !tbaa !16
  %i.evd = add nsw i32 %i.eva, 8
  br label %bsPutUChar.exit139

.lr.ph.i.i136:                                    ; preds = %bb.ej
  %i.eve = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %.pre.i.i137 = load i32, ptr %i.evc, align 8, !tbaa !16
  %.pre15.i.i138 = load i32, ptr %i.eve, align 4, !tbaa !17
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ek, %.lr.ph.i.i136
  %i.evf = phi i32 [ %.pre15.i.i138, %.lr.ph.i.i136 ], [ %i.evn, %bb.ek ]
  %i.evg = phi i32 [ %.pre.i.i137, %.lr.ph.i.i136 ], [ %i.evp, %bb.ek ]
  %i.evh = lshr i32 %i.evg, 24
  %i.evi = trunc nuw i32 %i.evh to i8
  %i.evj = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.evk = sext i32 %i.evf to i64
  %i.evl = getelementptr inbounds i8, ptr %i.evj, i64 %i.evk
  store i8 %i.evi, ptr %i.evl, align 1, !tbaa !19
  %i.evm = load i32, ptr %i.eve, align 4, !tbaa !17
  %i.evn = add nsw i32 %i.evm, 1                  ; 2 uses
  store i32 %i.evn, ptr %i.eve, align 4, !tbaa !17
  %i.evo = load i32, ptr %i.evc, align 8, !tbaa !16
  %i.evp = shl i32 %i.evo, 8                      ; 3 uses
  store i32 %i.evp, ptr %i.evc, align 8, !tbaa !16
  %i.evq = load i32, ptr %i.euz, align 4, !tbaa !15 ; 3 uses
  %i.evr = add nsw i32 %i.evq, -8
  store i32 %i.evr, ptr %i.euz, align 4, !tbaa !15
  %i.evs = icmp sgt i32 %i.evq, 15
  br i1 %i.evs, label %bb.ek, label %bsPutUChar.exit139, !llvm.loop !0

bsPutUChar.exit139:                               ; preds = %bb.ek, %.._crit_edge_crit_edge.i.i132
  %i.evt = phi i32 [ %.pre16.i.i133, %.._crit_edge_crit_edge.i.i132 ], [ %i.evp, %bb.ek ]
  %.lcssa.i.i135 = phi i32 [ %i.evd, %.._crit_edge_crit_edge.i.i132 ], [ %i.evq, %bb.ek ] ; 4 uses
  %i.evu = sub i32 32, %.lcssa.i.i135
  %i.evv = shl i32 23, %i.evu
  %i.evw = or i32 %i.evv, %i.evt                  ; 3 uses
  store i32 %i.evw, ptr %i.evc, align 8, !tbaa !16
  store i32 %.lcssa.i.i135, ptr %i.euz, align 4, !tbaa !15
  %i.evx = icmp sgt i32 %.lcssa.i.i135, 7
  br i1 %i.evx, label %.lr.ph.i.i144, label %.._crit_edge_crit_edge.i.i140

.._crit_edge_crit_edge.i.i140:                    ; preds = %bsPutUChar.exit139
  %i.evy = add nsw i32 %.lcssa.i.i135, 8
  br label %bsPutUChar.exit147

.lr.ph.i.i144:                                    ; preds = %bsPutUChar.exit139
  %i.evz = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %.pre15.i.i146 = load i32, ptr %i.evz, align 4, !tbaa !17
  br label %bb.el

bb.el:                                            ; preds = %bb.el, %.lr.ph.i.i144
  %i.ewa = phi i32 [ %.pre15.i.i146, %.lr.ph.i.i144 ], [ %i.ewi, %bb.el ]
  %i.ewb = phi i32 [ %i.evw, %.lr.ph.i.i144 ], [ %i.ewk, %bb.el ]
  %i.ewc = lshr i32 %i.ewb, 24
  %i.ewd = trunc nuw i32 %i.ewc to i8
  %i.ewe = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.ewf = sext i32 %i.ewa to i64
  %i.ewg = getelementptr inbounds i8, ptr %i.ewe, i64 %i.ewf
  store i8 %i.ewd, ptr %i.ewg, align 1, !tbaa !19
  %i.ewh = load i32, ptr %i.evz, align 4, !tbaa !17
  %i.ewi = add nsw i32 %i.ewh, 1                  ; 2 uses
  store i32 %i.ewi, ptr %i.evz, align 4, !tbaa !17
  %i.ewj = load i32, ptr %i.evc, align 8, !tbaa !16
  %i.ewk = shl i32 %i.ewj, 8                      ; 3 uses
  store i32 %i.ewk, ptr %i.evc, align 8, !tbaa !16
  %i.ewl = load i32, ptr %i.euz, align 4, !tbaa !15 ; 3 uses
  %i.ewm = add nsw i32 %i.ewl, -8
  store i32 %i.ewm, ptr %i.euz, align 4, !tbaa !15
  %i.ewn = icmp sgt i32 %i.ewl, 15
  br i1 %i.ewn, label %bb.el, label %bsPutUChar.exit147, !llvm.loop !0

bsPutUChar.exit147:                               ; preds = %bb.el, %.._crit_edge_crit_edge.i.i140
  %i.ewo = phi i32 [ %i.evw, %.._crit_edge_crit_edge.i.i140 ], [ %i.ewk, %bb.el ]
  %.lcssa.i.i143 = phi i32 [ %i.evy, %.._crit_edge_crit_edge.i.i140 ], [ %i.ewl, %bb.el ] ; 4 uses
  %i.ewp = sub i32 32, %.lcssa.i.i143
  %i.ewq = shl i32 114, %i.ewp
  %i.ewr = or i32 %i.ewq, %i.ewo                  ; 3 uses
  store i32 %i.ewr, ptr %i.evc, align 8, !tbaa !16
  store i32 %.lcssa.i.i143, ptr %i.euz, align 4, !tbaa !15
  %i.ews = icmp sgt i32 %.lcssa.i.i143, 7
  br i1 %i.ews, label %.lr.ph.i.i152, label %.._crit_edge_crit_edge.i.i148

.._crit_edge_crit_edge.i.i148:                    ; preds = %bsPutUChar.exit147
  %i.ewt = add nsw i32 %.lcssa.i.i143, 8
  br label %bsPutUChar.exit155

.lr.ph.i.i152:                                    ; preds = %bsPutUChar.exit147
  %i.ewu = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %.pre15.i.i154 = load i32, ptr %i.ewu, align 4, !tbaa !17
  br label %bb.em

bb.em:                                            ; preds = %bb.em, %.lr.ph.i.i152
  %i.ewv = phi i32 [ %.pre15.i.i154, %.lr.ph.i.i152 ], [ %i.exd, %bb.em ]
  %i.eww = phi i32 [ %i.ewr, %.lr.ph.i.i152 ], [ %i.exf, %bb.em ]
  %i.ewx = lshr i32 %i.eww, 24
  %i.ewy = trunc nuw i32 %i.ewx to i8
  %i.ewz = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.exa = sext i32 %i.ewv to i64
  %i.exb = getelementptr inbounds i8, ptr %i.ewz, i64 %i.exa
  store i8 %i.ewy, ptr %i.exb, align 1, !tbaa !19
  %i.exc = load i32, ptr %i.ewu, align 4, !tbaa !17
  %i.exd = add nsw i32 %i.exc, 1                  ; 2 uses
  store i32 %i.exd, ptr %i.ewu, align 4, !tbaa !17
  %i.exe = load i32, ptr %i.evc, align 8, !tbaa !16
  %i.exf = shl i32 %i.exe, 8                      ; 3 uses
  store i32 %i.exf, ptr %i.evc, align 8, !tbaa !16
  %i.exg = load i32, ptr %i.euz, align 4, !tbaa !15 ; 3 uses
  %i.exh = add nsw i32 %i.exg, -8
  store i32 %i.exh, ptr %i.euz, align 4, !tbaa !15
  %i.exi = icmp sgt i32 %i.exg, 15
  br i1 %i.exi, label %bb.em, label %bsPutUChar.exit155, !llvm.loop !0

bsPutUChar.exit155:                               ; preds = %bb.em, %.._crit_edge_crit_edge.i.i148
  %i.exj = phi i32 [ %i.ewr, %.._crit_edge_crit_edge.i.i148 ], [ %i.exf, %bb.em ]
  %.lcssa.i.i151 = phi i32 [ %i.ewt, %.._crit_edge_crit_edge.i.i148 ], [ %i.exg, %bb.em ] ; 4 uses
  %i.exk = sub i32 32, %.lcssa.i.i151
  %i.exl = shl i32 69, %i.exk
  %i.exm = or i32 %i.exl, %i.exj                  ; 3 uses
  store i32 %i.exm, ptr %i.evc, align 8, !tbaa !16
  store i32 %.lcssa.i.i151, ptr %i.euz, align 4, !tbaa !15
  %i.exn = icmp sgt i32 %.lcssa.i.i151, 7
  br i1 %i.exn, label %.lr.ph.i.i160, label %.._crit_edge_crit_edge.i.i156

.._crit_edge_crit_edge.i.i156:                    ; preds = %bsPutUChar.exit155
  %i.exo = add nsw i32 %.lcssa.i.i151, 8
  br label %bsPutUChar.exit163

.lr.ph.i.i160:                                    ; preds = %bsPutUChar.exit155
  %i.exp = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %.pre15.i.i162 = load i32, ptr %i.exp, align 4, !tbaa !17
  br label %bb.en

bb.en:                                            ; preds = %bb.en, %.lr.ph.i.i160
  %i.exq = phi i32 [ %.pre15.i.i162, %.lr.ph.i.i160 ], [ %i.exy, %bb.en ]
  %i.exr = phi i32 [ %i.exm, %.lr.ph.i.i160 ], [ %i.eya, %bb.en ]
  %i.exs = lshr i32 %i.exr, 24
  %i.ext = trunc nuw i32 %i.exs to i8
  %i.exu = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.exv = sext i32 %i.exq to i64
  %i.exw = getelementptr inbounds i8, ptr %i.exu, i64 %i.exv
  store i8 %i.ext, ptr %i.exw, align 1, !tbaa !19
  %i.exx = load i32, ptr %i.exp, align 4, !tbaa !17
  %i.exy = add nsw i32 %i.exx, 1                  ; 2 uses
  store i32 %i.exy, ptr %i.exp, align 4, !tbaa !17
  %i.exz = load i32, ptr %i.evc, align 8, !tbaa !16
  %i.eya = shl i32 %i.exz, 8                      ; 3 uses
  store i32 %i.eya, ptr %i.evc, align 8, !tbaa !16
  %i.eyb = load i32, ptr %i.euz, align 4, !tbaa !15 ; 3 uses
  %i.eyc = add nsw i32 %i.eyb, -8
  store i32 %i.eyc, ptr %i.euz, align 4, !tbaa !15
  %i.eyd = icmp sgt i32 %i.eyb, 15
end_hunk_3
