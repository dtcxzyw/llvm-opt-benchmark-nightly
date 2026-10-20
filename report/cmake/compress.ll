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
  %xtraiter1378 = and i64 %i.ow, 3                ; 3 uses
  %i.pk = icmp samesign ult i32 %.01481.i, 4
  %unroll_iter1384 = and i64 %i.ow, 4
  %lcmp.mod1380.not = icmp eq i64 %xtraiter1378, 0
  %lcmp.mod1383 = icmp ne i64 %xtraiter1378, 0
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
  %.014892152.i = phi i32 [ 0, %.preheader1979.i ], [ %i.beb, %bb.bg ] ; 2 uses
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
  %i.so = phi i32 [ %i.bdm, %.loopexit1971.i ], [ %i.sn, %.loopexit1976.i ]
  %.114702144.i = phi i32 [ %i.bdl, %.loopexit1971.i ], [ 0, %.loopexit1976.i ] ; 8 uses
  %.014762143.i = phi i32 [ %i.aqe, %.loopexit1971.i ], [ 0, %.loopexit1976.i ]
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
  %i.sx = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.sw ; 3 uses
  %i.sy = load i32, ptr %i.sx, align 8, !tbaa !74
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sx, i64 4
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !74
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  %i.tc = load i32, ptr %i.tb, align 8, !tbaa !74
  %i.td = getelementptr i8, ptr %i.su, i64 2
  %i.te = load i16, ptr %i.td, align 2, !tbaa !79
  %i.tf = zext i16 %i.te to i64
  %i.tg = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.tf ; 3 uses
  %i.th = load i32, ptr %i.tg, align 8, !tbaa !74
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tg, i64 4
  %i.tj = load i32, ptr %i.ti, align 4, !tbaa !74
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %i.tl = load i32, ptr %i.tk, align 8, !tbaa !74
  %i.tm = getelementptr i8, ptr %i.su, i64 4
  %i.tn = load i16, ptr %i.tm, align 2, !tbaa !79
  %i.to = zext i16 %i.tn to i64
  %i.tp = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.to ; 3 uses
  %i.tq = load i32, ptr %i.tp, align 8, !tbaa !74
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tp, i64 4
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !74
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tp, i64 8
  %i.tu = load i32, ptr %i.tt, align 8, !tbaa !74
  %i.tv = getelementptr i8, ptr %i.su, i64 6
  %i.tw = load i16, ptr %i.tv, align 2, !tbaa !79
  %i.tx = zext i16 %i.tw to i64
  %i.ty = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.tx ; 3 uses
  %i.tz = load i32, ptr %i.ty, align 8, !tbaa !74
  %i.ua = getelementptr inbounds nuw i8, ptr %i.ty, i64 4
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !74
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  %i.ud = load i32, ptr %i.uc, align 8, !tbaa !74
  %i.ue = getelementptr i8, ptr %i.su, i64 8
  %i.uf = load i16, ptr %i.ue, align 2, !tbaa !79
  %i.ug = zext i16 %i.uf to i64
  %i.uh = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.ug ; 3 uses
  %i.ui = load i32, ptr %i.uh, align 8, !tbaa !74
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uh, i64 4
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !74
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uh, i64 8
  %i.um = load i32, ptr %i.ul, align 8, !tbaa !74
  %i.un = getelementptr i8, ptr %i.su, i64 10
  %i.uo = load i16, ptr %i.un, align 2, !tbaa !79
  %i.up = zext i16 %i.uo to i64
  %i.uq = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.up ; 3 uses
  %i.ur = load i32, ptr %i.uq, align 8, !tbaa !74
  %i.us = getelementptr inbounds nuw i8, ptr %i.uq, i64 4
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !74
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uq, i64 8
  %i.uv = load i32, ptr %i.uu, align 8, !tbaa !74
  %i.uw = getelementptr i8, ptr %i.su, i64 12
  %i.ux = load i16, ptr %i.uw, align 2, !tbaa !79
  %i.uy = zext i16 %i.ux to i64
  %i.uz = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.uy ; 3 uses
  %i.va = load i32, ptr %i.uz, align 8, !tbaa !74
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uz, i64 4
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !74
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  %i.ve = load i32, ptr %i.vd, align 8, !tbaa !74
  %i.vf = getelementptr i8, ptr %i.su, i64 14
  %i.vg = load i16, ptr %i.vf, align 2, !tbaa !79
  %i.vh = zext i16 %i.vg to i64
  %i.vi = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.vh ; 3 uses
  %i.vj = load i32, ptr %i.vi, align 8, !tbaa !74
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vi, i64 4
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !74
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vi, i64 8
  %i.vn = load i32, ptr %i.vm, align 8, !tbaa !74
  %i.vo = getelementptr i8, ptr %i.su, i64 16
  %i.vp = load i16, ptr %i.vo, align 2, !tbaa !79
  %i.vq = zext i16 %i.vp to i64
  %i.vr = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.vq ; 3 uses
  %i.vs = load i32, ptr %i.vr, align 8, !tbaa !74
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vr, i64 4
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !74
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  %i.vw = load i32, ptr %i.vv, align 8, !tbaa !74
  %i.vx = getelementptr i8, ptr %i.su, i64 18
  %i.vy = load i16, ptr %i.vx, align 2, !tbaa !79
  %i.vz = zext i16 %i.vy to i64
  %i.wa = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.vz ; 3 uses
  %i.wb = load i32, ptr %i.wa, align 8, !tbaa !74
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wa, i64 4
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !74
  %i.we = getelementptr inbounds nuw i8, ptr %i.wa, i64 8
  %i.wf = load i32, ptr %i.we, align 8, !tbaa !74
  %i.wg = getelementptr i8, ptr %i.su, i64 20
  %i.wh = load i16, ptr %i.wg, align 2, !tbaa !79
  %i.wi = zext i16 %i.wh to i64
  %i.wj = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.wi ; 3 uses
  %i.wk = load i32, ptr %i.wj, align 8, !tbaa !74
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wj, i64 4
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !74
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wj, i64 8
  %i.wo = load i32, ptr %i.wn, align 8, !tbaa !74
  %i.wp = getelementptr i8, ptr %i.su, i64 22
  %i.wq = load i16, ptr %i.wp, align 2, !tbaa !79
  %i.wr = zext i16 %i.wq to i64
  %i.ws = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.wr ; 3 uses
  %i.wt = load i32, ptr %i.ws, align 8, !tbaa !74
  %i.wu = getelementptr inbounds nuw i8, ptr %i.ws, i64 4
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !74
  %i.ww = getelementptr inbounds nuw i8, ptr %i.ws, i64 8
  %i.wx = load i32, ptr %i.ww, align 8, !tbaa !74
  %i.wy = getelementptr i8, ptr %i.su, i64 24
  %i.wz = load i16, ptr %i.wy, align 2, !tbaa !79
  %i.xa = zext i16 %i.wz to i64
  %i.xb = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.xa ; 3 uses
  %i.xc = load i32, ptr %i.xb, align 8, !tbaa !74
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xb, i64 4
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !74
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xb, i64 8
  %i.xg = load i32, ptr %i.xf, align 8, !tbaa !74
  %i.xh = getelementptr i8, ptr %i.su, i64 26
  %i.xi = load i16, ptr %i.xh, align 2, !tbaa !79
  %i.xj = zext i16 %i.xi to i64
  %i.xk = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.xj ; 3 uses
  %i.xl = load i32, ptr %i.xk, align 8, !tbaa !74
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xk, i64 4
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !74
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xk, i64 8
  %i.xp = load i32, ptr %i.xo, align 8, !tbaa !74
  %i.xq = getelementptr i8, ptr %i.su, i64 28
  %i.xr = load i16, ptr %i.xq, align 2, !tbaa !79
  %i.xs = zext i16 %i.xr to i64
  %i.xt = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.xs ; 3 uses
  %i.xu = load i32, ptr %i.xt, align 8, !tbaa !74
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xt, i64 4
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !74
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xt, i64 8
  %i.xy = load i32, ptr %i.xx, align 8, !tbaa !74
  %i.xz = getelementptr i8, ptr %i.su, i64 30
  %i.ya = load i16, ptr %i.xz, align 2, !tbaa !79
  %i.yb = zext i16 %i.ya to i64
  %i.yc = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.yb ; 3 uses
  %i.yd = load i32, ptr %i.yc, align 8, !tbaa !74
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yc, i64 4
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !74
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yc, i64 8
  %i.yh = load i32, ptr %i.yg, align 8, !tbaa !74
  %i.yi = getelementptr i8, ptr %i.su, i64 32
  %i.yj = load i16, ptr %i.yi, align 2, !tbaa !79
  %i.yk = zext i16 %i.yj to i64
  %i.yl = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.yk ; 3 uses
  %i.ym = load i32, ptr %i.yl, align 8, !tbaa !74
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yl, i64 4
  %i.yo = load i32, ptr %i.yn, align 4, !tbaa !74
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yl, i64 8
  %i.yq = load i32, ptr %i.yp, align 8, !tbaa !74
  %i.yr = getelementptr i8, ptr %i.su, i64 34
  %i.ys = load i16, ptr %i.yr, align 2, !tbaa !79
  %i.yt = zext i16 %i.ys to i64
  %i.yu = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.yt ; 3 uses
  %i.yv = load i32, ptr %i.yu, align 8, !tbaa !74
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yu, i64 4
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !74
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yu, i64 8
  %i.yz = load i32, ptr %i.yy, align 8, !tbaa !74
  %i.za = getelementptr i8, ptr %i.su, i64 36
  %i.zb = load i16, ptr %i.za, align 2, !tbaa !79
  %i.zc = zext i16 %i.zb to i64
  %i.zd = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.zc ; 3 uses
  %i.ze = load i32, ptr %i.zd, align 8, !tbaa !74
  %i.zf = getelementptr inbounds nuw i8, ptr %i.zd, i64 4
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !74
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zd, i64 8
  %i.zi = load i32, ptr %i.zh, align 8, !tbaa !74
  %i.zj = getelementptr i8, ptr %i.su, i64 38
  %i.zk = load i16, ptr %i.zj, align 2, !tbaa !79
  %i.zl = zext i16 %i.zk to i64
  %i.zm = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.zl ; 3 uses
  %i.zn = load i32, ptr %i.zm, align 8, !tbaa !74
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zm, i64 4
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !74
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zm, i64 8
  %i.zr = load i32, ptr %i.zq, align 8, !tbaa !74
  %i.zs = getelementptr i8, ptr %i.su, i64 40
  %i.zt = load i16, ptr %i.zs, align 2, !tbaa !79
  %i.zu = zext i16 %i.zt to i64
  %i.zv = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.zu ; 3 uses
  %i.zw = load i32, ptr %i.zv, align 8, !tbaa !74
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zv, i64 4
  %i.zy = load i32, ptr %i.zx, align 4, !tbaa !74
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zv, i64 8
  %i.aaa = load i32, ptr %i.zz, align 8, !tbaa !74
  %i.aab = getelementptr i8, ptr %i.su, i64 42
  %i.aac = load i16, ptr %i.aab, align 2, !tbaa !79
  %i.aad = zext i16 %i.aac to i64
  %i.aae = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.aad ; 3 uses
  %i.aaf = load i32, ptr %i.aae, align 8, !tbaa !74
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aae, i64 4
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !74
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aae, i64 8
  %i.aaj = load i32, ptr %i.aai, align 8, !tbaa !74
  %i.aak = getelementptr i8, ptr %i.su, i64 44
  %i.aal = load i16, ptr %i.aak, align 2, !tbaa !79
  %i.aam = zext i16 %i.aal to i64
end_hunk_0
begin_hunk_1_@BZ2_compressBlock:bb.a
  %i.aiv = load <2 x i32>, ptr %i.ahd, align 8, !tbaa !74
  %i.aiw = load <2 x i32>, ptr %i.ahj, align 8, !tbaa !74 ; 2 uses
  %i.aix = insertelement <2 x i32> %i.aiw, i32 %op.rdx1172, i64 0
  %i.aiy = add <2 x i32> %i.aix, %i.aiv
  %i.aiz = insertelement <2 x i32> %i.aiw, i32 %op.rdx, i64 1
  %i.aja = add <2 x i32> %i.aiy, %i.aiz
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.ahj, i64 8
  %i.ajc = load i32, ptr %i.ajb, align 8, !tbaa !74
  %i.ajd = getelementptr i8, ptr %i.su, i64 78
  %i.aje = load i16, ptr %i.ajd, align 2, !tbaa !79
  %i.ajf = zext i16 %i.aje to i64
  %i.ajg = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.ajf ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajg, i64 8
  %i.aji = load i32, ptr %i.ajh, align 8, !tbaa !74
  %i.ajj = getelementptr i8, ptr %i.su, i64 80
  %i.ajk = load i16, ptr %i.ajj, align 2, !tbaa !79
  %i.ajl = zext i16 %i.ajk to i64
  %i.ajm = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.ajl ; 2 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 8
  %i.ajo = load i32, ptr %i.ajn, align 8, !tbaa !74
  %i.ajp = getelementptr i8, ptr %i.su, i64 82
  %i.ajq = load i16, ptr %i.ajp, align 2, !tbaa !79
  %i.ajr = zext i16 %i.ajq to i64
  %i.ajs = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.ajr ; 2 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajs, i64 8
  %i.aju = load i32, ptr %i.ajt, align 8, !tbaa !74
  %i.ajv = getelementptr i8, ptr %i.su, i64 84
  %i.ajw = load i16, ptr %i.ajv, align 2, !tbaa !79
  %i.ajx = zext i16 %i.ajw to i64
  %i.ajy = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.ajx ; 2 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 8
  %i.aka = load i32, ptr %i.ajz, align 8, !tbaa !74
  %i.akb = getelementptr i8, ptr %i.su, i64 86
  %i.akc = load i16, ptr %i.akb, align 2, !tbaa !79
  %i.akd = zext i16 %i.akc to i64
  %i.ake = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.akd ; 2 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 8
  %i.akg = load i32, ptr %i.akf, align 8, !tbaa !74
  %i.akh = getelementptr i8, ptr %i.su, i64 88
  %i.aki = load i16, ptr %i.akh, align 2, !tbaa !79
  %i.akj = zext i16 %i.aki to i64
  %i.akk = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.akj ; 2 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 8
  %i.akm = load i32, ptr %i.akl, align 8, !tbaa !74
  %i.akn = getelementptr i8, ptr %i.su, i64 90
  %i.ako = load i16, ptr %i.akn, align 2, !tbaa !79
  %i.akp = zext i16 %i.ako to i64
  %i.akq = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.akp ; 2 uses
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akq, i64 8
  %i.aks = load i32, ptr %i.akr, align 8, !tbaa !74
  %i.akt = getelementptr i8, ptr %i.su, i64 92
  %i.aku = load i16, ptr %i.akt, align 2, !tbaa !79
  %i.akv = zext i16 %i.aku to i64
  %i.akw = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.akv ; 2 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akw, i64 8
  %i.aky = load i32, ptr %i.akx, align 8, !tbaa !74
  %i.akz = getelementptr i8, ptr %i.su, i64 94
  %i.ala = load i16, ptr %i.akz, align 2, !tbaa !79
  %i.alb = zext i16 %i.ala to i64
  %i.alc = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.alb ; 2 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 8
  %i.ale = load i32, ptr %i.ald, align 8, !tbaa !74
  %i.alf = getelementptr i8, ptr %i.su, i64 96
  %i.alg = load i16, ptr %i.alf, align 2, !tbaa !79
  %i.alh = zext i16 %i.alg to i64
  %i.ali = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.alh ; 2 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 8
  %i.alk = load i32, ptr %i.alj, align 8, !tbaa !74
  %i.all = getelementptr i8, ptr %i.su, i64 98
  %i.alm = load i16, ptr %i.all, align 2, !tbaa !79
  %i.aln = zext i16 %i.alm to i64
  %i.alo = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %i.aln ; 2 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 8
  %i.alq = load i32, ptr %i.alp, align 8, !tbaa !74
  %i.alr = insertelement <48 x i32> poison, i32 %i.tl, i64 0
  %i.als = insertelement <48 x i32> %i.alr, i32 %i.tc, i64 1
  %i.alt = insertelement <48 x i32> %i.als, i32 %i.tu, i64 2
  %i.alu = insertelement <48 x i32> %i.alt, i32 %i.ud, i64 3
  %i.alv = insertelement <48 x i32> %i.alu, i32 %i.um, i64 4
  %i.alw = insertelement <48 x i32> %i.alv, i32 %i.uv, i64 5
  %i.alx = insertelement <48 x i32> %i.alw, i32 %i.ve, i64 6
  %i.aly = insertelement <48 x i32> %i.alx, i32 %i.vn, i64 7
  %i.alz = insertelement <48 x i32> %i.aly, i32 %i.vw, i64 8
  %i.ama = insertelement <48 x i32> %i.alz, i32 %i.wf, i64 9
  %i.amb = insertelement <48 x i32> %i.ama, i32 %i.wo, i64 10
  %i.amc = insertelement <48 x i32> %i.amb, i32 %i.wx, i64 11
  %i.amd = insertelement <48 x i32> %i.amc, i32 %i.xg, i64 12
  %i.ame = insertelement <48 x i32> %i.amd, i32 %i.xp, i64 13
  %i.amf = insertelement <48 x i32> %i.ame, i32 %i.xy, i64 14
  %i.amg = insertelement <48 x i32> %i.amf, i32 %i.yh, i64 15
  %i.amh = insertelement <48 x i32> %i.amg, i32 %i.yq, i64 16
  %i.ami = insertelement <48 x i32> %i.amh, i32 %i.yz, i64 17
  %i.amj = insertelement <48 x i32> %i.ami, i32 %i.zi, i64 18
  %i.amk = insertelement <48 x i32> %i.amj, i32 %i.zr, i64 19
  %i.aml = insertelement <48 x i32> %i.amk, i32 %i.aaa, i64 20
  %i.amm = insertelement <48 x i32> %i.aml, i32 %i.aaj, i64 21
  %i.amn = insertelement <48 x i32> %i.amm, i32 %i.aas, i64 22
  %i.amo = insertelement <48 x i32> %i.amn, i32 %i.abb, i64 23
  %i.amp = insertelement <48 x i32> %i.amo, i32 %i.abk, i64 24
  %i.amq = insertelement <48 x i32> %i.amp, i32 %i.abt, i64 25
  %i.amr = insertelement <48 x i32> %i.amq, i32 %i.acc, i64 26
  %i.ams = insertelement <48 x i32> %i.amr, i32 %i.acl, i64 27
  %i.amt = insertelement <48 x i32> %i.ams, i32 %i.acu, i64 28
  %i.amu = insertelement <48 x i32> %i.amt, i32 %i.add, i64 29
  %i.amv = insertelement <48 x i32> %i.amu, i32 %i.adm, i64 30
  %i.amw = insertelement <48 x i32> %i.amv, i32 %i.adv, i64 31
  %i.amx = insertelement <48 x i32> %i.amw, i32 %i.aee, i64 32
  %i.amy = insertelement <48 x i32> %i.amx, i32 %i.aen, i64 33
  %i.amz = insertelement <48 x i32> %i.amy, i32 %i.aew, i64 34
  %i.ana = insertelement <48 x i32> %i.amz, i32 %i.aff, i64 35
  %i.anb = insertelement <48 x i32> %i.ana, i32 %i.agz, i64 36
  %i.anc = insertelement <48 x i32> %i.anb, i32 %i.ahf, i64 37
  %i.and = insertelement <48 x i32> %i.anc, i32 %i.ajc, i64 38
  %i.ane = insertelement <48 x i32> %i.and, i32 %i.aji, i64 39
  %i.anf = insertelement <48 x i32> %i.ane, i32 %i.ajo, i64 40
  %i.ang = insertelement <48 x i32> %i.anf, i32 %i.aju, i64 41
  %i.anh = insertelement <48 x i32> %i.ang, i32 %i.aka, i64 42
  %i.ani = insertelement <48 x i32> %i.anh, i32 %i.akg, i64 43
  %i.anj = insertelement <48 x i32> %i.ani, i32 %i.akm, i64 44
  %i.ank = insertelement <48 x i32> %i.anj, i32 %i.aks, i64 45
  %i.anl = insertelement <48 x i32> %i.ank, i32 %i.aky, i64 46
  %i.anm = insertelement <48 x i32> %i.anl, i32 %i.ale, i64 47
  %i.ann = call i32 @llvm.vector.reduce.add.v48i32(<48 x i32> %i.anm)
  %op.rdx1173 = add i32 %i.ann, %i.alk
  %op.rdx1174 = add i32 %op.rdx1173, %i.alq
  %i.ano = load <2 x i32>, ptr %i.ajg, align 8, !tbaa !74
  %i.anp = add <2 x i32> %i.aja, %i.ano
  %i.anq = load <2 x i32>, ptr %i.ajm, align 8, !tbaa !74
  %i.anr = add <2 x i32> %i.anp, %i.anq
  %i.ans = load <2 x i32>, ptr %i.ajs, align 8, !tbaa !74
  %i.ant = add <2 x i32> %i.anr, %i.ans
  %i.anu = load <2 x i32>, ptr %i.ajy, align 8, !tbaa !74
  %i.anv = add <2 x i32> %i.ant, %i.anu
  %i.anw = load <2 x i32>, ptr %i.ake, align 8, !tbaa !74
  %i.anx = add <2 x i32> %i.anv, %i.anw
  %i.any = load <2 x i32>, ptr %i.akk, align 8, !tbaa !74
  %i.anz = add <2 x i32> %i.anx, %i.any
  %i.aoa = load <2 x i32>, ptr %i.akq, align 8, !tbaa !74
  %i.aob = add <2 x i32> %i.anz, %i.aoa
  %i.aoc = load <2 x i32>, ptr %i.akw, align 8, !tbaa !74
  %i.aod = add <2 x i32> %i.aob, %i.aoc
  %i.aoe = load <2 x i32>, ptr %i.alc, align 8, !tbaa !74
  %i.aof = add <2 x i32> %i.aod, %i.aoe
  %i.aog = load <2 x i32>, ptr %i.ali, align 8, !tbaa !74
  %i.aoh = add <2 x i32> %i.aof, %i.aog
  %i.aoi = load <2 x i32>, ptr %i.alo, align 8, !tbaa !74
  %i.aoj = add <2 x i32> %i.aoh, %i.aoi
  store <2 x i32> %i.aoj, ptr %i.a, align 8
  store i32 %op.rdx1174, ptr %i.pf, align 8
  br label %.loopexit1973.i.preheader

.lr.ph2134.i:                                     ; preds = %.loopexit, %.lr.ph2134.preheader.i
  %indvars.iv2381.i = phi i64 [ %2, %.lr.ph2134.preheader.i ], [ %indvars.iv.next2382.i, %.loopexit ] ; 2 uses
  %i.aok = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %indvars.iv2381.i
  %i.aol = load i16, ptr %i.aok, align 2, !tbaa !79
  %i.aom = zext i16 %i.aol to i64
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.aom ; 5 uses
  br i1 %min.iters.check1128, label %scalar.ph.preheader, label %vector.body1131

vector.body1131:                                  ; preds = %.lr.ph2134.i
  %i.aon = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 258
  %i.aoo = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 516
  %i.aop = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 774
  %i.aoq = load i8, ptr %invariant.gep.i, align 1, !tbaa !19
  %i.aor = load i8, ptr %i.aon, align 1, !tbaa !19
  %i.aos = load i8, ptr %i.aoo, align 1, !tbaa !19
  %i.aot = load i8, ptr %i.aop, align 1, !tbaa !19
  %i.aou = insertelement <4 x i8> poison, i8 %i.aoq, i64 0
  %i.aov = insertelement <4 x i8> %i.aou, i8 %i.aor, i64 1
  %i.aow = insertelement <4 x i8> %i.aov, i8 %i.aos, i64 2
  %i.aox = insertelement <4 x i8> %i.aow, i8 %i.aot, i64 3
  %i.aoy = zext <4 x i8> %i.aox to <4 x i16>
  %wide.load = load <4 x i16>, ptr %i.a, align 8, !tbaa !79
  %i.aoz = add <4 x i16> %wide.load, %i.aoy
  store <4 x i16> %i.aoz, ptr %i.a, align 8, !tbaa !79
  br i1 %cmp.n1135, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph2134.i, %vector.body1131
  %indvars.iv2376.i.ph = phi i64 [ 0, %.lr.ph2134.i ], [ %n.vec1130, %vector.body1131 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv2376.i = phi i64 [ %indvars.iv.next2377.i, %scalar.ph ], [ %indvars.iv2376.i.ph, %scalar.ph.preheader ] ; 3 uses
  %gep.i = getelementptr inbounds nuw [258 x i8], ptr %invariant.gep.i, i64 %indvars.iv2376.i
  %i.apa = load i8, ptr %gep.i, align 1, !tbaa !19
  %i.apb = zext i8 %i.apa to i16
  %i.apc = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv2376.i ; 2 uses
  %i.apd = load i16, ptr %i.apc, align 2, !tbaa !79
  %i.ape = add i16 %i.apd, %i.apb
  store i16 %i.ape, ptr %i.apc, align 2, !tbaa !79
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
  %niter1385 = phi i64 [ %niter1385.next.3, %.loopexit1973.i ], [ 0, %.loopexit1973.i.preheader ]
  %i.apf = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv2386.i
  %i.apg = load i16, ptr %i.apf, align 8, !tbaa !79
  %i.aph = zext i16 %i.apg to i32                 ; 2 uses
  %i.api = icmp samesign ugt i32 %.014902136.i, %i.aph
  %i.apj = trunc nuw nsw i64 %indvars.iv2386.i to i32
  %spec.select1520.i = select i1 %i.api, i32 %i.apj, i32 %.014922135.i
  %spec.select1521.i = call i32 @llvm.umin.i32(i32 %.014902136.i, i32 %i.aph) ; 2 uses
  %indvars.iv.next2387.i = or disjoint i64 %indvars.iv2386.i, 1 ; 2 uses
  %i.apk = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next2387.i
  %i.apl = load i16, ptr %i.apk, align 2, !tbaa !79
  %i.apm = zext i16 %i.apl to i32                 ; 2 uses
  %i.apn = icmp samesign ugt i32 %spec.select1521.i, %i.apm
  %i.apo = trunc nuw nsw i64 %indvars.iv.next2387.i to i32
  %spec.select1520.i.1 = select i1 %i.apn, i32 %i.apo, i32 %spec.select1520.i
  %spec.select1521.i.1 = call i32 @llvm.umin.i32(i32 %spec.select1521.i, i32 %i.apm) ; 2 uses
  %indvars.iv.next2387.i.1 = or disjoint i64 %indvars.iv2386.i, 2 ; 2 uses
  %i.app = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next2387.i.1
  %i.apq = load i16, ptr %i.app, align 4, !tbaa !79
  %i.apr = zext i16 %i.apq to i32                 ; 2 uses
  %i.aps = icmp samesign ugt i32 %spec.select1521.i.1, %i.apr
  %i.apt = trunc nuw nsw i64 %indvars.iv.next2387.i.1 to i32
  %spec.select1520.i.2 = select i1 %i.aps, i32 %i.apt, i32 %spec.select1520.i.1
  %spec.select1521.i.2 = call i32 @llvm.umin.i32(i32 %spec.select1521.i.1, i32 %i.apr) ; 2 uses
  %indvars.iv.next2387.i.2 = or disjoint i64 %indvars.iv2386.i, 3 ; 2 uses
  %i.apu = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next2387.i.2
  %i.apv = load i16, ptr %i.apu, align 2, !tbaa !79
  %i.apw = zext i16 %i.apv to i32                 ; 2 uses
  %i.apx = icmp samesign ugt i32 %spec.select1521.i.2, %i.apw
  %i.apy = trunc nuw nsw i64 %indvars.iv.next2387.i.2 to i32
  %spec.select1520.i.3 = select i1 %i.apx, i32 %i.apy, i32 %spec.select1520.i.2 ; 3 uses
  %spec.select1521.i.3 = call i32 @llvm.umin.i32(i32 %spec.select1521.i.2, i32 %i.apw) ; 3 uses
  %indvars.iv.next2387.i.3 = add nuw nsw i64 %indvars.iv2386.i, 4 ; 2 uses
  %niter1385.next.3 = add i64 %niter1385, 4       ; 2 uses
  %niter1385.ncmp.3 = icmp eq i64 %niter1385.next.3, %unroll_iter1384
  br i1 %niter1385.ncmp.3, label %.unr-lcssa, label %.loopexit1973.i, !llvm.loop !36

.unr-lcssa:                                       ; preds = %.loopexit1973.i
  br i1 %lcmp.mod1380.not, label %.epilog-lcssa, label %.loopexit1973.i.epil.preheader

.loopexit1973.i.epil.preheader:                   ; preds = %.unr-lcssa, %.loopexit1973.i.preheader
  %indvars.iv2386.i.epil.init = phi i64 [ 0, %.loopexit1973.i.preheader ], [ %indvars.iv.next2387.i.3, %.unr-lcssa ]
  %.014902136.i.epil.init = phi i32 [ 999999999, %.loopexit1973.i.preheader ], [ %spec.select1521.i.3, %.unr-lcssa ]
  %.014922135.i.epil.init = phi i32 [ -1, %.loopexit1973.i.preheader ], [ %spec.select1520.i.3, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1383)
  br label %.loopexit1973.i.epil

.loopexit1973.i.epil:                             ; preds = %.loopexit1973.i.epil, %.loopexit1973.i.epil.preheader
  %indvars.iv2386.i.epil = phi i64 [ %indvars.iv.next2387.i.epil, %.loopexit1973.i.epil ], [ %indvars.iv2386.i.epil.init, %.loopexit1973.i.epil.preheader ] ; 3 uses
  %.014902136.i.epil = phi i32 [ %spec.select1521.i.epil, %.loopexit1973.i.epil ], [ %.014902136.i.epil.init, %.loopexit1973.i.epil.preheader ] ; 2 uses
  %.014922135.i.epil = phi i32 [ %spec.select1520.i.epil, %.loopexit1973.i.epil ], [ %.014922135.i.epil.init, %.loopexit1973.i.epil.preheader ]
  %epil.iter1379 = phi i64 [ %epil.iter1379.next, %.loopexit1973.i.epil ], [ 0, %.loopexit1973.i.epil.preheader ]
  %i.apz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv2386.i.epil
  %i.aqa = load i16, ptr %i.apz, align 2, !tbaa !79
  %i.aqb = zext i16 %i.aqa to i32                 ; 2 uses
  %i.aqc = icmp samesign ugt i32 %.014902136.i.epil, %i.aqb
  %i.aqd = trunc nuw nsw i64 %indvars.iv2386.i.epil to i32
  %spec.select1520.i.epil = select i1 %i.aqc, i32 %i.aqd, i32 %.014922135.i.epil ; 2 uses
  %spec.select1521.i.epil = call i32 @llvm.umin.i32(i32 %.014902136.i.epil, i32 %i.aqb) ; 2 uses
  %indvars.iv.next2387.i.epil = add nuw nsw i64 %indvars.iv2386.i.epil, 1
  %epil.iter1379.next = add i64 %epil.iter1379, 1 ; 2 uses
  %epil.iter1379.cmp.not = icmp eq i64 %epil.iter1379.next, %xtraiter1378
  br i1 %epil.iter1379.cmp.not, label %.epilog-lcssa, label %.loopexit1973.i.epil, !llvm.loop !37

.epilog-lcssa:                                    ; preds = %.loopexit1973.i.epil, %.unr-lcssa
  %spec.select1520.i.lcssa = phi i32 [ %spec.select1520.i.3, %.unr-lcssa ], [ %spec.select1520.i.epil, %.loopexit1973.i.epil ] ; 2 uses
  %spec.select1521.i.lcssa = phi i32 [ %spec.select1521.i.3, %.unr-lcssa ], [ %spec.select1521.i.epil, %.loopexit1973.i.epil ]
  %i.aqe = add nuw nsw i32 %spec.select1521.i.lcssa, %.014762143.i ; 2 uses
  %i.aqf = sext i32 %spec.select1520.i.lcssa to i64 ; 2 uses
  %i.aqg = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aqf ; 2 uses
  %i.aqh = load i32, ptr %i.aqg, align 4, !tbaa !74
  %i.aqi = add nsw i32 %i.aqh, 1
  store i32 %i.aqi, ptr %i.aqg, align 4, !tbaa !74
  %i.aqj = trunc i32 %spec.select1520.i.lcssa to i8
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.pg, i64 %indvars.iv2397.i
  store i8 %i.aqj, ptr %i.aqk, align 1, !tbaa !19
  %indvars.iv.next2398.i = add nuw nsw i64 %indvars.iv2397.i, 1 ; 2 uses
  %3 = getelementptr inbounds [1032 x i8], ptr %i.oy, i64 %i.aqf ; 55 uses
  %4 = sext i32 %.114702144.i to i64              ; 3 uses
  br i1 %or.cond1519.i, label %bb.bb, label %.lr.ph2140.i

.lr.ph2140.i:                                     ; preds = %.epilog-lcssa
  %smax2394.i = call i32 @llvm.smax.i32(i32 %.114702144.i, i32 %spec.select.i127) ; 3 uses
  %i.aql = add nsw i32 %smax2394.i, 1
  %i.aqm = add i32 %smax2394.i, 1
  %i.aqn = sub i32 %i.aqm, %.114702144.i
  %i.aqo = sub i32 %smax2394.i, %.114702144.i
  %xtraiter1386 = and i32 %i.aqn, 3               ; 2 uses
  %lcmp.mod1387.not = icmp eq i32 %xtraiter1386, 0
  br i1 %lcmp.mod1387.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph2140.i, %.prol.preheader
  %indvars.iv2391.i.prol = phi i64 [ %indvars.iv.next2392.i.prol, %.prol.preheader ], [ %4, %.lr.ph2140.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph2140.i ]
  %i.aqp = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %indvars.iv2391.i.prol
  %i.aqq = load i16, ptr %i.aqp, align 2, !tbaa !79
  %i.aqr = zext i16 %i.aqq to i64
  %i.aqs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aqr ; 2 uses
  %i.aqt = load i32, ptr %i.aqs, align 4, !tbaa !74
  %i.aqu = add nsw i32 %i.aqt, 1
  store i32 %i.aqu, ptr %i.aqs, align 4, !tbaa !74
  %indvars.iv.next2392.i.prol = add nsw i64 %indvars.iv2391.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter1386
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !38

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph2140.i
  %indvars.iv2391.i.unr = phi i64 [ %4, %.lr.ph2140.i ], [ %indvars.iv.next2392.i.prol, %.prol.preheader ]
  %i.aqv = icmp ult i32 %i.aqo, 3
  br i1 %i.aqv, label %.loopexit1971.i, label %.lr.ph2140.i.new

bb.bb:                                            ; preds = %.epilog-lcssa
  %i.aqw = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %4 ; 50 uses
  %i.aqx = load i16, ptr %i.aqw, align 2, !tbaa !79
  %i.aqy = zext i16 %i.aqx to i64
  %i.aqz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aqy ; 2 uses
  %i.ara = load i32, ptr %i.aqz, align 4, !tbaa !74
  %i.arb = add nsw i32 %i.ara, 1
  store i32 %i.arb, ptr %i.aqz, align 4, !tbaa !74
  %i.arc = getelementptr i8, ptr %i.aqw, i64 2
  %i.ard = load i16, ptr %i.arc, align 2, !tbaa !79
  %i.are = zext i16 %i.ard to i64
  %i.arf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.are ; 2 uses
  %i.arg = load i32, ptr %i.arf, align 4, !tbaa !74
  %i.arh = add nsw i32 %i.arg, 1
  store i32 %i.arh, ptr %i.arf, align 4, !tbaa !74
  %i.ari = getelementptr i8, ptr %i.aqw, i64 4
  %i.arj = load i16, ptr %i.ari, align 2, !tbaa !79
  %i.ark = zext i16 %i.arj to i64
  %i.arl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ark ; 2 uses
  %i.arm = load i32, ptr %i.arl, align 4, !tbaa !74
  %i.arn = add nsw i32 %i.arm, 1
  store i32 %i.arn, ptr %i.arl, align 4, !tbaa !74
  %i.aro = getelementptr i8, ptr %i.aqw, i64 6
  %i.arp = load i16, ptr %i.aro, align 2, !tbaa !79
  %i.arq = zext i16 %i.arp to i64
  %i.arr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.arq ; 2 uses
  %i.ars = load i32, ptr %i.arr, align 4, !tbaa !74
  %i.art = add nsw i32 %i.ars, 1
  store i32 %i.art, ptr %i.arr, align 4, !tbaa !74
  %i.aru = getelementptr i8, ptr %i.aqw, i64 8
  %i.arv = load i16, ptr %i.aru, align 2, !tbaa !79
  %i.arw = zext i16 %i.arv to i64
  %i.arx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.arw ; 2 uses
  %i.ary = load i32, ptr %i.arx, align 4, !tbaa !74
  %i.arz = add nsw i32 %i.ary, 1
  store i32 %i.arz, ptr %i.arx, align 4, !tbaa !74
  %i.asa = getelementptr i8, ptr %i.aqw, i64 10
  %i.asb = load i16, ptr %i.asa, align 2, !tbaa !79
  %i.asc = zext i16 %i.asb to i64
  %i.asd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.asc ; 2 uses
  %i.ase = load i32, ptr %i.asd, align 4, !tbaa !74
  %i.asf = add nsw i32 %i.ase, 1
  store i32 %i.asf, ptr %i.asd, align 4, !tbaa !74
  %i.asg = getelementptr i8, ptr %i.aqw, i64 12
  %i.ash = load i16, ptr %i.asg, align 2, !tbaa !79
  %i.asi = zext i16 %i.ash to i64
  %i.asj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.asi ; 2 uses
  %i.ask = load i32, ptr %i.asj, align 4, !tbaa !74
  %i.asl = add nsw i32 %i.ask, 1
  store i32 %i.asl, ptr %i.asj, align 4, !tbaa !74
  %i.asm = getelementptr i8, ptr %i.aqw, i64 14
  %i.asn = load i16, ptr %i.asm, align 2, !tbaa !79
  %i.aso = zext i16 %i.asn to i64
  %i.asp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aso ; 2 uses
  %i.asq = load i32, ptr %i.asp, align 4, !tbaa !74
  %i.asr = add nsw i32 %i.asq, 1
  store i32 %i.asr, ptr %i.asp, align 4, !tbaa !74
  %i.ass = getelementptr i8, ptr %i.aqw, i64 16
  %i.ast = load i16, ptr %i.ass, align 2, !tbaa !79
  %i.asu = zext i16 %i.ast to i64
  %i.asv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.asu ; 2 uses
  %i.asw = load i32, ptr %i.asv, align 4, !tbaa !74
  %i.asx = add nsw i32 %i.asw, 1
  store i32 %i.asx, ptr %i.asv, align 4, !tbaa !74
  %i.asy = getelementptr i8, ptr %i.aqw, i64 18
  %i.asz = load i16, ptr %i.asy, align 2, !tbaa !79
  %i.ata = zext i16 %i.asz to i64
  %i.atb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ata ; 2 uses
  %i.atc = load i32, ptr %i.atb, align 4, !tbaa !74
  %i.atd = add nsw i32 %i.atc, 1
  store i32 %i.atd, ptr %i.atb, align 4, !tbaa !74
  %i.ate = getelementptr i8, ptr %i.aqw, i64 20
  %i.atf = load i16, ptr %i.ate, align 2, !tbaa !79
  %i.atg = zext i16 %i.atf to i64
  %i.ath = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.atg ; 2 uses
  %i.ati = load i32, ptr %i.ath, align 4, !tbaa !74
  %i.atj = add nsw i32 %i.ati, 1
  store i32 %i.atj, ptr %i.ath, align 4, !tbaa !74
  %i.atk = getelementptr i8, ptr %i.aqw, i64 22
  %i.atl = load i16, ptr %i.atk, align 2, !tbaa !79
  %i.atm = zext i16 %i.atl to i64
  %i.atn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.atm ; 2 uses
  %i.ato = load i32, ptr %i.atn, align 4, !tbaa !74
  %i.atp = add nsw i32 %i.ato, 1
  store i32 %i.atp, ptr %i.atn, align 4, !tbaa !74
  %i.atq = getelementptr i8, ptr %i.aqw, i64 24
  %i.atr = load i16, ptr %i.atq, align 2, !tbaa !79
  %i.ats = zext i16 %i.atr to i64
  %i.att = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ats ; 2 uses
  %i.atu = load i32, ptr %i.att, align 4, !tbaa !74
  %i.atv = add nsw i32 %i.atu, 1
  store i32 %i.atv, ptr %i.att, align 4, !tbaa !74
  %i.atw = getelementptr i8, ptr %i.aqw, i64 26
  %i.atx = load i16, ptr %i.atw, align 2, !tbaa !79
  %i.aty = zext i16 %i.atx to i64
  %i.atz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aty ; 2 uses
  %i.aua = load i32, ptr %i.atz, align 4, !tbaa !74
  %i.aub = add nsw i32 %i.aua, 1
  store i32 %i.aub, ptr %i.atz, align 4, !tbaa !74
  %i.auc = getelementptr i8, ptr %i.aqw, i64 28
  %i.aud = load i16, ptr %i.auc, align 2, !tbaa !79
  %i.aue = zext i16 %i.aud to i64
  %i.auf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aue ; 2 uses
  %i.aug = load i32, ptr %i.auf, align 4, !tbaa !74
  %i.auh = add nsw i32 %i.aug, 1
  store i32 %i.auh, ptr %i.auf, align 4, !tbaa !74
  %i.aui = getelementptr i8, ptr %i.aqw, i64 30
  %i.auj = load i16, ptr %i.aui, align 2, !tbaa !79
  %i.auk = zext i16 %i.auj to i64
  %i.aul = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.auk ; 2 uses
  %i.aum = load i32, ptr %i.aul, align 4, !tbaa !74
  %i.aun = add nsw i32 %i.aum, 1
  store i32 %i.aun, ptr %i.aul, align 4, !tbaa !74
  %i.auo = getelementptr i8, ptr %i.aqw, i64 32
  %i.aup = load i16, ptr %i.auo, align 2, !tbaa !79
  %i.auq = zext i16 %i.aup to i64
  %i.aur = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.auq ; 2 uses
  %i.aus = load i32, ptr %i.aur, align 4, !tbaa !74
  %i.aut = add nsw i32 %i.aus, 1
  store i32 %i.aut, ptr %i.aur, align 4, !tbaa !74
  %i.auu = getelementptr i8, ptr %i.aqw, i64 34
  %i.auv = load i16, ptr %i.auu, align 2, !tbaa !79
  %i.auw = zext i16 %i.auv to i64
  %i.aux = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.auw ; 2 uses
  %i.auy = load i32, ptr %i.aux, align 4, !tbaa !74
  %i.auz = add nsw i32 %i.auy, 1
  store i32 %i.auz, ptr %i.aux, align 4, !tbaa !74
  %i.ava = getelementptr i8, ptr %i.aqw, i64 36
  %i.avb = load i16, ptr %i.ava, align 2, !tbaa !79
  %i.avc = zext i16 %i.avb to i64
  %i.avd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.avc ; 2 uses
  %i.ave = load i32, ptr %i.avd, align 4, !tbaa !74
  %i.avf = add nsw i32 %i.ave, 1
  store i32 %i.avf, ptr %i.avd, align 4, !tbaa !74
  %i.avg = getelementptr i8, ptr %i.aqw, i64 38
  %i.avh = load i16, ptr %i.avg, align 2, !tbaa !79
  %i.avi = zext i16 %i.avh to i64
  %i.avj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.avi ; 2 uses
  %i.avk = load i32, ptr %i.avj, align 4, !tbaa !74
  %i.avl = add nsw i32 %i.avk, 1
  store i32 %i.avl, ptr %i.avj, align 4, !tbaa !74
  %i.avm = getelementptr i8, ptr %i.aqw, i64 40
  %i.avn = load i16, ptr %i.avm, align 2, !tbaa !79
  %i.avo = zext i16 %i.avn to i64
  %i.avp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.avo ; 2 uses
  %i.avq = load i32, ptr %i.avp, align 4, !tbaa !74
  %i.avr = add nsw i32 %i.avq, 1
  store i32 %i.avr, ptr %i.avp, align 4, !tbaa !74
  %i.avs = getelementptr i8, ptr %i.aqw, i64 42
  %i.avt = load i16, ptr %i.avs, align 2, !tbaa !79
  %i.avu = zext i16 %i.avt to i64
  %i.avv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.avu ; 2 uses
  %i.avw = load i32, ptr %i.avv, align 4, !tbaa !74
  %i.avx = add nsw i32 %i.avw, 1
  store i32 %i.avx, ptr %i.avv, align 4, !tbaa !74
  %i.avy = getelementptr i8, ptr %i.aqw, i64 44
  %i.avz = load i16, ptr %i.avy, align 2, !tbaa !79
  %i.awa = zext i16 %i.avz to i64
  %i.awb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.awa ; 2 uses
  %i.awc = load i32, ptr %i.awb, align 4, !tbaa !74
  %i.awd = add nsw i32 %i.awc, 1
  store i32 %i.awd, ptr %i.awb, align 4, !tbaa !74
  %i.awe = getelementptr i8, ptr %i.aqw, i64 46
  %i.awf = load i16, ptr %i.awe, align 2, !tbaa !79
  %i.awg = zext i16 %i.awf to i64
  %i.awh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.awg ; 2 uses
  %i.awi = load i32, ptr %i.awh, align 4, !tbaa !74
  %i.awj = add nsw i32 %i.awi, 1
  store i32 %i.awj, ptr %i.awh, align 4, !tbaa !74
  %i.awk = getelementptr i8, ptr %i.aqw, i64 48
  %i.awl = load i16, ptr %i.awk, align 2, !tbaa !79
  %i.awm = zext i16 %i.awl to i64
  %i.awn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.awm ; 2 uses
  %i.awo = load i32, ptr %i.awn, align 4, !tbaa !74
  %i.awp = add nsw i32 %i.awo, 1
  store i32 %i.awp, ptr %i.awn, align 4, !tbaa !74
  %i.awq = getelementptr i8, ptr %i.aqw, i64 50
  %i.awr = load i16, ptr %i.awq, align 2, !tbaa !79
  %i.aws = zext i16 %i.awr to i64
  %i.awt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aws ; 2 uses
  %i.awu = load i32, ptr %i.awt, align 4, !tbaa !74
  %i.awv = add nsw i32 %i.awu, 1
  store i32 %i.awv, ptr %i.awt, align 4, !tbaa !74
  %i.aww = getelementptr i8, ptr %i.aqw, i64 52
  %i.awx = load i16, ptr %i.aww, align 2, !tbaa !79
  %i.awy = zext i16 %i.awx to i64
  %i.awz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.awy ; 2 uses
  %i.axa = load i32, ptr %i.awz, align 4, !tbaa !74
  %i.axb = add nsw i32 %i.axa, 1
  store i32 %i.axb, ptr %i.awz, align 4, !tbaa !74
  %i.axc = getelementptr i8, ptr %i.aqw, i64 54
  %i.axd = load i16, ptr %i.axc, align 2, !tbaa !79
  %i.axe = zext i16 %i.axd to i64
  %i.axf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.axe ; 2 uses
  %i.axg = load i32, ptr %i.axf, align 4, !tbaa !74
  %i.axh = add nsw i32 %i.axg, 1
  store i32 %i.axh, ptr %i.axf, align 4, !tbaa !74
  %i.axi = getelementptr i8, ptr %i.aqw, i64 56
  %i.axj = load i16, ptr %i.axi, align 2, !tbaa !79
  %i.axk = zext i16 %i.axj to i64
  %i.axl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.axk ; 2 uses
  %i.axm = load i32, ptr %i.axl, align 4, !tbaa !74
  %i.axn = add nsw i32 %i.axm, 1
  store i32 %i.axn, ptr %i.axl, align 4, !tbaa !74
  %i.axo = getelementptr i8, ptr %i.aqw, i64 58
  %i.axp = load i16, ptr %i.axo, align 2, !tbaa !79
  %i.axq = zext i16 %i.axp to i64
  %i.axr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.axq ; 2 uses
  %i.axs = load i32, ptr %i.axr, align 4, !tbaa !74
  %i.axt = add nsw i32 %i.axs, 1
  store i32 %i.axt, ptr %i.axr, align 4, !tbaa !74
  %i.axu = getelementptr i8, ptr %i.aqw, i64 60
  %i.axv = load i16, ptr %i.axu, align 2, !tbaa !79
  %i.axw = zext i16 %i.axv to i64
  %i.axx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.axw ; 2 uses
  %i.axy = load i32, ptr %i.axx, align 4, !tbaa !74
  %i.axz = add nsw i32 %i.axy, 1
  store i32 %i.axz, ptr %i.axx, align 4, !tbaa !74
  %i.aya = getelementptr i8, ptr %i.aqw, i64 62
  %i.ayb = load i16, ptr %i.aya, align 2, !tbaa !79
  %i.ayc = zext i16 %i.ayb to i64
  %i.ayd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ayc ; 2 uses
  %i.aye = load i32, ptr %i.ayd, align 4, !tbaa !74
  %i.ayf = add nsw i32 %i.aye, 1
  store i32 %i.ayf, ptr %i.ayd, align 4, !tbaa !74
  %i.ayg = getelementptr i8, ptr %i.aqw, i64 64
  %i.ayh = load i16, ptr %i.ayg, align 2, !tbaa !79
  %i.ayi = zext i16 %i.ayh to i64
  %i.ayj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ayi ; 2 uses
  %i.ayk = load i32, ptr %i.ayj, align 4, !tbaa !74
  %i.ayl = add nsw i32 %i.ayk, 1
  store i32 %i.ayl, ptr %i.ayj, align 4, !tbaa !74
  %i.aym = getelementptr i8, ptr %i.aqw, i64 66
  %i.ayn = load i16, ptr %i.aym, align 2, !tbaa !79
  %i.ayo = zext i16 %i.ayn to i64
  %i.ayp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ayo ; 2 uses
  %i.ayq = load i32, ptr %i.ayp, align 4, !tbaa !74
  %i.ayr = add nsw i32 %i.ayq, 1
  store i32 %i.ayr, ptr %i.ayp, align 4, !tbaa !74
  %i.ays = getelementptr i8, ptr %i.aqw, i64 68
  %i.ayt = load i16, ptr %i.ays, align 2, !tbaa !79
  %i.ayu = zext i16 %i.ayt to i64
  %i.ayv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ayu ; 2 uses
  %i.ayw = load i32, ptr %i.ayv, align 4, !tbaa !74
  %i.ayx = add nsw i32 %i.ayw, 1
  store i32 %i.ayx, ptr %i.ayv, align 4, !tbaa !74
  %i.ayy = getelementptr i8, ptr %i.aqw, i64 70
  %i.ayz = load i16, ptr %i.ayy, align 2, !tbaa !79
  %i.aza = zext i16 %i.ayz to i64
  %i.azb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aza ; 2 uses
  %i.azc = load i32, ptr %i.azb, align 4, !tbaa !74
  %i.azd = add nsw i32 %i.azc, 1
  store i32 %i.azd, ptr %i.azb, align 4, !tbaa !74
  %i.aze = getelementptr i8, ptr %i.aqw, i64 72
  %i.azf = load i16, ptr %i.aze, align 2, !tbaa !79
  %i.azg = zext i16 %i.azf to i64
  %i.azh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.azg ; 2 uses
  %i.azi = load i32, ptr %i.azh, align 4, !tbaa !74
  %i.azj = add nsw i32 %i.azi, 1
  store i32 %i.azj, ptr %i.azh, align 4, !tbaa !74
  %i.azk = getelementptr i8, ptr %i.aqw, i64 74
  %i.azl = load i16, ptr %i.azk, align 2, !tbaa !79
  %i.azm = zext i16 %i.azl to i64
  %i.azn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.azm ; 2 uses
  %i.azo = load i32, ptr %i.azn, align 4, !tbaa !74
  %i.azp = add nsw i32 %i.azo, 1
  store i32 %i.azp, ptr %i.azn, align 4, !tbaa !74
  %i.azq = getelementptr i8, ptr %i.aqw, i64 76
  %i.azr = load i16, ptr %i.azq, align 2, !tbaa !79
  %i.azs = zext i16 %i.azr to i64
  %i.azt = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.azs ; 2 uses
  %i.azu = load i32, ptr %i.azt, align 4, !tbaa !74
  %i.azv = add nsw i32 %i.azu, 1
  store i32 %i.azv, ptr %i.azt, align 4, !tbaa !74
  %i.azw = getelementptr i8, ptr %i.aqw, i64 78
  %i.azx = load i16, ptr %i.azw, align 2, !tbaa !79
  %i.azy = zext i16 %i.azx to i64
  %i.azz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.azy ; 2 uses
  %i.baa = load i32, ptr %i.azz, align 4, !tbaa !74
  %i.bab = add nsw i32 %i.baa, 1
  store i32 %i.bab, ptr %i.azz, align 4, !tbaa !74
  %i.bac = getelementptr i8, ptr %i.aqw, i64 80
  %i.bad = load i16, ptr %i.bac, align 2, !tbaa !79
  %i.bae = zext i16 %i.bad to i64
  %i.baf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bae ; 2 uses
  %i.bag = load i32, ptr %i.baf, align 4, !tbaa !74
  %i.bah = add nsw i32 %i.bag, 1
  store i32 %i.bah, ptr %i.baf, align 4, !tbaa !74
  %i.bai = getelementptr i8, ptr %i.aqw, i64 82
  %i.baj = load i16, ptr %i.bai, align 2, !tbaa !79
  %i.bak = zext i16 %i.baj to i64
  %i.bal = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bak ; 2 uses
  %i.bam = load i32, ptr %i.bal, align 4, !tbaa !74
  %i.ban = add nsw i32 %i.bam, 1
  store i32 %i.ban, ptr %i.bal, align 4, !tbaa !74
  %i.bao = getelementptr i8, ptr %i.aqw, i64 84
  %i.bap = load i16, ptr %i.bao, align 2, !tbaa !79
  %i.baq = zext i16 %i.bap to i64
  %i.bar = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.baq ; 2 uses
  %i.bas = load i32, ptr %i.bar, align 4, !tbaa !74
  %i.bat = add nsw i32 %i.bas, 1
  store i32 %i.bat, ptr %i.bar, align 4, !tbaa !74
  %i.bau = getelementptr i8, ptr %i.aqw, i64 86
  %i.bav = load i16, ptr %i.bau, align 2, !tbaa !79
  %i.baw = zext i16 %i.bav to i64
  %i.bax = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.baw ; 2 uses
  %i.bay = load i32, ptr %i.bax, align 4, !tbaa !74
  %i.baz = add nsw i32 %i.bay, 1
  store i32 %i.baz, ptr %i.bax, align 4, !tbaa !74
  %i.bba = getelementptr i8, ptr %i.aqw, i64 88
  %i.bbb = load i16, ptr %i.bba, align 2, !tbaa !79
  %i.bbc = zext i16 %i.bbb to i64
  %i.bbd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bbc ; 2 uses
  %i.bbe = load i32, ptr %i.bbd, align 4, !tbaa !74
  %i.bbf = add nsw i32 %i.bbe, 1
  store i32 %i.bbf, ptr %i.bbd, align 4, !tbaa !74
  %i.bbg = getelementptr i8, ptr %i.aqw, i64 90
  %i.bbh = load i16, ptr %i.bbg, align 2, !tbaa !79
  %i.bbi = zext i16 %i.bbh to i64
  %i.bbj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bbi ; 2 uses
  %i.bbk = load i32, ptr %i.bbj, align 4, !tbaa !74
  %i.bbl = add nsw i32 %i.bbk, 1
  store i32 %i.bbl, ptr %i.bbj, align 4, !tbaa !74
  %i.bbm = getelementptr i8, ptr %i.aqw, i64 92
  %i.bbn = load i16, ptr %i.bbm, align 2, !tbaa !79
  %i.bbo = zext i16 %i.bbn to i64
  %i.bbp = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bbo ; 2 uses
  %i.bbq = load i32, ptr %i.bbp, align 4, !tbaa !74
  %i.bbr = add nsw i32 %i.bbq, 1
  store i32 %i.bbr, ptr %i.bbp, align 4, !tbaa !74
  %i.bbs = getelementptr i8, ptr %i.aqw, i64 94
  %i.bbt = load i16, ptr %i.bbs, align 2, !tbaa !79
  %i.bbu = zext i16 %i.bbt to i64
  %i.bbv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bbu ; 2 uses
  %i.bbw = load i32, ptr %i.bbv, align 4, !tbaa !74
  %i.bbx = add nsw i32 %i.bbw, 1
  store i32 %i.bbx, ptr %i.bbv, align 4, !tbaa !74
  %i.bby = getelementptr i8, ptr %i.aqw, i64 96
  %i.bbz = load i16, ptr %i.bby, align 2, !tbaa !79
  %i.bca = zext i16 %i.bbz to i64
  %i.bcb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bca ; 2 uses
  %i.bcc = load i32, ptr %i.bcb, align 4, !tbaa !74
  %i.bcd = add nsw i32 %i.bcc, 1
  store i32 %i.bcd, ptr %i.bcb, align 4, !tbaa !74
  %i.bce = getelementptr i8, ptr %i.aqw, i64 98
  %i.bcf = load i16, ptr %i.bce, align 2, !tbaa !79
  %i.bcg = zext i16 %i.bcf to i64
  %i.bch = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bcg ; 2 uses
  %i.bci = load i32, ptr %i.bch, align 4, !tbaa !74
  %i.bcj = add nsw i32 %i.bci, 1
  store i32 %i.bcj, ptr %i.bch, align 4, !tbaa !74
  br label %.loopexit1971.i

.lr.ph2140.i.new:                                 ; preds = %.prol.loopexit, %.lr.ph2140.i.new
  %indvars.iv2391.i = phi i64 [ %indvars.iv.next2392.i.3, %.lr.ph2140.i.new ], [ %indvars.iv2391.i.unr, %.prol.loopexit ] ; 5 uses
  %i.bck = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %indvars.iv2391.i
  %i.bcl = load i16, ptr %i.bck, align 2, !tbaa !79
  %i.bcm = zext i16 %i.bcl to i64
  %i.bcn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bcm ; 2 uses
  %i.bco = load i32, ptr %i.bcn, align 4, !tbaa !74
  %i.bcp = add nsw i32 %i.bco, 1
  store i32 %i.bcp, ptr %i.bcn, align 4, !tbaa !74
  %i.bcq = getelementptr [2 x i8], ptr %i.jr, i64 %indvars.iv2391.i
  %i.bcr = getelementptr i8, ptr %i.bcq, i64 2
  %i.bcs = load i16, ptr %i.bcr, align 2, !tbaa !79
  %i.bct = zext i16 %i.bcs to i64
  %i.bcu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bct ; 2 uses
  %i.bcv = load i32, ptr %i.bcu, align 4, !tbaa !74
  %i.bcw = add nsw i32 %i.bcv, 1
  store i32 %i.bcw, ptr %i.bcu, align 4, !tbaa !74
  %i.bcx = getelementptr [2 x i8], ptr %i.jr, i64 %indvars.iv2391.i
  %i.bcy = getelementptr i8, ptr %i.bcx, i64 4
  %i.bcz = load i16, ptr %i.bcy, align 2, !tbaa !79
  %i.bda = zext i16 %i.bcz to i64
  %i.bdb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bda ; 2 uses
  %i.bdc = load i32, ptr %i.bdb, align 4, !tbaa !74
  %i.bdd = add nsw i32 %i.bdc, 1
  store i32 %i.bdd, ptr %i.bdb, align 4, !tbaa !74
  %i.bde = getelementptr [2 x i8], ptr %i.jr, i64 %indvars.iv2391.i
  %i.bdf = getelementptr i8, ptr %i.bde, i64 6
  %i.bdg = load i16, ptr %i.bdf, align 2, !tbaa !79
  %i.bdh = zext i16 %i.bdg to i64
  %i.bdi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bdh ; 2 uses
  %i.bdj = load i32, ptr %i.bdi, align 4, !tbaa !74
  %i.bdk = add nsw i32 %i.bdj, 1
  store i32 %i.bdk, ptr %i.bdi, align 4, !tbaa !74
  %indvars.iv.next2392.i.3 = add nsw i64 %indvars.iv2391.i, 4 ; 2 uses
  %lftr.wideiv2395.i.3 = trunc i64 %indvars.iv.next2392.i.3 to i32
  %exitcond2396.not.i.3 = icmp eq i32 %i.aql, %lftr.wideiv2395.i.3
  br i1 %exitcond2396.not.i.3, label %.loopexit1971.i, label %.lr.ph2140.i.new, !llvm.loop !39

.loopexit1971.i:                                  ; preds = %.prol.loopexit, %.lr.ph2140.i.new, %bb.bb
  %i.bdl = add nsw i32 %spec.select.i127, 1       ; 2 uses
  %i.bdm = load i32, ptr %i.nv, align 4, !tbaa !80 ; 2 uses
  %.not1510.i = icmp slt i32 %i.bdl, %i.bdm
  br i1 %.not1510.i, label %.lr.ph2146.i, label %._crit_edge2147.loopexit.i

._crit_edge2147.loopexit.i:                       ; preds = %.loopexit1971.i
  %i.bdn = trunc nuw i64 %indvars.iv.next2398.i to i32
  %i.bdo = lshr i32 %i.aqe, 3
  br label %._crit_edge2147.i

._crit_edge2147.i:                                ; preds = %._crit_edge2147.loopexit.i, %.loopexit1976.i
  %.11488.lcssa.i = phi i32 [ 0, %.loopexit1976.i ], [ %i.bdn, %._crit_edge2147.loopexit.i ] ; 6 uses
  %.01476.lcssa.i = phi i32 [ 0, %.loopexit1976.i ], [ %i.bdo, %._crit_edge2147.loopexit.i ]
  %i.bdp = load i32, ptr %i.nw, align 8, !tbaa !64
  %i.bdq = icmp sgt i32 %i.bdp, 2
  br i1 %i.bdq, label %bb.bc, label %.preheader

bb.bc:                                            ; preds = %._crit_edge2147.i
  %i.bdr = load ptr, ptr @stderr, align 8, !tbaa !66
  %i.bds = add nuw nsw i32 %.014892152.i, 1
  %i.bdt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bdr, ptr noundef nonnull @.str.4, i32 noundef %i.bds, i32 noundef %.01476.lcssa.i) #10 ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %bb.bc
  %indvars.iv2400.i = phi i64 [ 0, %bb.bc ], [ %indvars.iv.next2401.i, %bb.bd ] ; 2 uses
  %i.bdu = load ptr, ptr @stderr, align 8, !tbaa !66
  %i.bdv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv2400.i
  %i.bdw = load i32, ptr %i.bdv, align 4, !tbaa !74
  %i.bdx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bdu, ptr noundef nonnull @.str.5, i32 noundef %i.bdw) #10 ; 0 uses
  %indvars.iv.next2401.i = add nuw nsw i64 %indvars.iv2400.i, 1 ; 2 uses
  %exitcond2404.not.i = icmp eq i64 %indvars.iv.next2401.i, %i.ow
  br i1 %exitcond2404.not.i, label %bb.be, label %bb.bd, !llvm.loop !40

bb.be:                                            ; preds = %bb.bd
  %i.bdy = load ptr, ptr @stderr, align 8, !tbaa !66
  %fputc.i = call i32 @fputc(i32 10, ptr %i.bdy)  ; 0 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.be, %._crit_edge2147.i
  br label %bb.bf

bb.bf:                                            ; preds = %.preheader, %bb.bf
  %indvars.iv2405.i = phi i64 [ %indvars.iv.next2406.i, %bb.bf ], [ 0, %.preheader ] ; 3 uses
  %i.bdz = getelementptr inbounds nuw [258 x i8], ptr %i.og, i64 %indvars.iv2405.i
  %i.bea = getelementptr inbounds nuw [1032 x i8], ptr %i.oy, i64 %indvars.iv2405.i
  call void @BZ2_hbMakeCodeLengths(ptr noundef nonnull %i.bdz, ptr noundef nonnull %i.bea, i32 noundef %i.oe, i32 noundef 17) #11
  %indvars.iv.next2406.i = add nuw nsw i64 %indvars.iv2405.i, 1 ; 2 uses
  %exitcond2409.not.i = icmp eq i64 %indvars.iv.next2406.i, %i.ow
  br i1 %exitcond2409.not.i, label %bb.bg, label %bb.bf, !llvm.loop !41

bb.bg:                                            ; preds = %bb.bf
  %i.beb = add nuw nsw i32 %.014892152.i, 1       ; 2 uses
  %exitcond2410.not.i = icmp eq i32 %i.beb, 4
  br i1 %exitcond2410.not.i, label %bb.bh, label %.preheader1978.i, !llvm.loop !42

bb.bh:                                            ; preds = %bb.bg
  %i.bec = icmp slt i32 %.11488.lcssa.i, 18003
  br i1 %i.bec, label %bb.bj, label %bb.bi

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
  %i.bed = icmp sgt i32 %.11488.lcssa.i, 0        ; 2 uses
  br i1 %i.bed, label %.lr.ph2165.i, label %._crit_edge2166.i

.lr.ph2165.i:                                     ; preds = %.preheader1969.i
  %.promoted.i = load i8, ptr %i.c, align 4
  %i.bee = getelementptr inbounds nuw i8, ptr %0, i64 19706
  %wide.trip.count2421.i = zext nneg i32 %.11488.lcssa.i to i64
  br label %bb.bk

scalar.ph1137:                                    ; preds = %scalar.ph1137.preheader, %scalar.ph1137
  %indvars.iv2411.i = phi i64 [ %indvars.iv.next2412.i, %scalar.ph1137 ], [ %indvars.iv2411.i.ph, %scalar.ph1137.preheader ] ; 3 uses
  %i.bef = trunc i64 %indvars.iv2411.i to i8
  %i.beg = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv2411.i
  store i8 %i.bef, ptr %i.beg, align 1, !tbaa !19
  %indvars.iv.next2412.i = add nuw nsw i64 %indvars.iv2411.i, 1 ; 2 uses
  %exitcond2415.not.i = icmp eq i64 %indvars.iv.next2412.i, %i.ow
  br i1 %exitcond2415.not.i, label %.preheader1969.i, label %scalar.ph1137, !llvm.loop !43

bb.bk:                                            ; preds = %._crit_edge2159.i, %.lr.ph2165.i
  %indvars.iv2418.i = phi i64 [ 0, %.lr.ph2165.i ], [ %indvars.iv.next2419.i, %._crit_edge2159.i ] ; 3 uses
  %.01464.lcssa21622163.i = phi i8 [ %.promoted.i, %.lr.ph2165.i ], [ %.01464.lcssa.i, %._crit_edge2159.i ] ; 3 uses
  %i.beh = getelementptr inbounds nuw i8, ptr %i.pg, i64 %indvars.iv2418.i
  %i.bei = load i8, ptr %i.beh, align 1, !tbaa !19 ; 3 uses
  %.not15092154.i = icmp eq i8 %i.bei, %.01464.lcssa21622163.i
  br i1 %.not15092154.i, label %._crit_edge2159.i, label %.lr.ph2158.i

.lr.ph2158.i:                                     ; preds = %bb.bk, %.lr.ph2158.i
  %indvars.iv2416.i = phi i64 [ %indvars.iv.next2417.i, %.lr.ph2158.i ], [ 0, %bb.bk ]
  %.014642156.i = phi i8 [ %i.bek, %.lr.ph2158.i ], [ %.01464.lcssa21622163.i, %bb.bk ]
  %indvars.iv.next2417.i = add nuw nsw i64 %indvars.iv2416.i, 1 ; 3 uses
  %i.bej = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next2417.i ; 2 uses
  %i.bek = load i8, ptr %i.bej, align 1, !tbaa !19 ; 2 uses
  store i8 %.014642156.i, ptr %i.bej, align 1, !tbaa !19
  %.not1509.i = icmp eq i8 %i.bei, %i.bek
  br i1 %.not1509.i, label %._crit_edge2159.loopexit.i, label %.lr.ph2158.i, !llvm.loop !44

._crit_edge2159.loopexit.i:                       ; preds = %.lr.ph2158.i
  %i.bel = trunc i64 %indvars.iv.next2417.i to i8
  br label %._crit_edge2159.i

._crit_edge2159.i:                                ; preds = %._crit_edge2159.loopexit.i, %bb.bk
  %.01465.lcssa.i = phi i8 [ 0, %bb.bk ], [ %i.bel, %._crit_edge2159.loopexit.i ]
  %.01464.lcssa.i = phi i8 [ %.01464.lcssa21622163.i, %bb.bk ], [ %i.bei, %._crit_edge2159.loopexit.i ]
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bee, i64 %indvars.iv2418.i
  store i8 %.01465.lcssa.i, ptr %i.bem, align 1, !tbaa !19
  %indvars.iv.next2419.i = add nuw nsw i64 %indvars.iv2418.i, 1 ; 2 uses
  %exitcond2422.not.i = icmp eq i64 %indvars.iv.next2419.i, %wide.trip.count2421.i
  br i1 %exitcond2422.not.i, label %._crit_edge2166.i, label %bb.bk, !llvm.loop !45

._crit_edge2166.i:                                ; preds = %._crit_edge2159.i, %.preheader1969.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.ben = getelementptr inbounds nuw i8, ptr %0, i64 39256 ; 3 uses
  %min.iters.check1150 = icmp slt i32 %i.oe, 8
  %n.vec1152 = and i64 %wide.trip.count.i122, 2147483640 ; 3 uses
  %cmp.n1163 = icmp eq i64 %n.vec1152, %wide.trip.count.i122
  br label %.preheader1968.i

.preheader1968.i:                                 ; preds = %.thread.i, %._crit_edge2166.i
  %indvars.iv2428.i = phi i64 [ 0, %._crit_edge2166.i ], [ %indvars.iv.next2429.i, %.thread.i ] ; 4 uses
  br i1 %i.of, label %.lr.ph2171.i, label %.thread.i

.lr.ph2171.i:                                     ; preds = %.preheader1968.i
  %i.beo = getelementptr inbounds nuw [258 x i8], ptr %i.og, i64 %indvars.iv2428.i ; 2 uses
  br i1 %min.iters.check1150, label %scalar.ph1149.preheader, label %vector.body1153

vector.body1153:                                  ; preds = %.lr.ph2171.i, %vector.body1153
  %index1154 = phi i64 [ %index.next1160, %vector.body1153 ], [ 0, %.lr.ph2171.i ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bet, %vector.body1153 ], [ zeroinitializer, %.lr.ph2171.i ]
  %vec.phi1155 = phi <4 x i32> [ %i.beu, %vector.body1153 ], [ zeroinitializer, %.lr.ph2171.i ]
  %vec.phi1156 = phi <4 x i32> [ %i.bev, %vector.body1153 ], [ splat (i32 32), %.lr.ph2171.i ]
  %vec.phi1157 = phi <4 x i32> [ %i.bew, %vector.body1153 ], [ splat (i32 32), %.lr.ph2171.i ]
  %i.bep = getelementptr inbounds nuw i8, ptr %i.beo, i64 %index1154 ; 2 uses
  %i.beq = getelementptr inbounds nuw i8, ptr %i.bep, i64 4
  %wide.load1158 = load <4 x i8>, ptr %i.bep, align 1, !tbaa !19
  %wide.load1159 = load <4 x i8>, ptr %i.beq, align 1, !tbaa !19
  %i.ber = zext <4 x i8> %wide.load1158 to <4 x i32> ; 2 uses
  %i.bes = zext <4 x i8> %wide.load1159 to <4 x i32> ; 2 uses
  %i.bet = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.ber) ; 2 uses
  %i.beu = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi1155, <4 x i32> %i.bes) ; 2 uses
  %i.bev = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.phi1156, <4 x i32> %i.ber) ; 2 uses
  %i.bew = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.phi1157, <4 x i32> %i.bes) ; 2 uses
  %index.next1160 = add nuw i64 %index1154, 8     ; 2 uses
  %i.bex = icmp eq i64 %index.next1160, %n.vec1152
  br i1 %i.bex, label %middle.block1161, label %vector.body1153, !llvm.loop !46

middle.block1161:                                 ; preds = %vector.body1153
  %rdx.minmax = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.bet, <4 x i32> %i.beu)
  %i.bey = call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %rdx.minmax1162 = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.bev, <4 x i32> %i.bew)
  %i.bez = call i32 @llvm.vector.reduce.umin.v4i32(<4 x i32> %rdx.minmax1162) ; 2 uses
  br i1 %cmp.n1163, label %._crit_edge2172.i, label %scalar.ph1149.preheader

scalar.ph1149.preheader:                          ; preds = %.lr.ph2171.i, %middle.block1161
  %indvars.iv2423.i.ph = phi i64 [ 0, %.lr.ph2171.i ], [ %n.vec1152, %middle.block1161 ]
  %.014832169.i.ph = phi i32 [ 0, %.lr.ph2171.i ], [ %i.bey, %middle.block1161 ]
  %.014852168.i.ph = phi i32 [ 32, %.lr.ph2171.i ], [ %i.bez, %middle.block1161 ]
  br label %scalar.ph1149

scalar.ph1149:                                    ; preds = %scalar.ph1149.preheader, %scalar.ph1149
  %indvars.iv2423.i = phi i64 [ %indvars.iv.next2424.i, %scalar.ph1149 ], [ %indvars.iv2423.i.ph, %scalar.ph1149.preheader ] ; 2 uses
  %.014832169.i = phi i32 [ %spec.select1524.i, %scalar.ph1149 ], [ %.014832169.i.ph, %scalar.ph1149.preheader ]
  %.014852168.i = phi i32 [ %.11486.i, %scalar.ph1149 ], [ %.014852168.i.ph, %scalar.ph1149.preheader ]
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.beo, i64 %indvars.iv2423.i
  %i.bfb = load i8, ptr %i.bfa, align 1, !tbaa !19
  %i.bfc = zext i8 %i.bfb to i32                  ; 2 uses
  %spec.select1524.i = call i32 @llvm.umax.i32(i32 %.014832169.i, i32 %i.bfc) ; 2 uses
  %.11486.i = call i32 @llvm.umin.i32(i32 %.014852168.i, i32 %i.bfc) ; 2 uses
  %indvars.iv.next2424.i = add nuw nsw i64 %indvars.iv2423.i, 1 ; 2 uses
  %exitcond2427.not.i = icmp eq i64 %indvars.iv.next2424.i, %wide.trip.count.i122
  br i1 %exitcond2427.not.i, label %._crit_edge2172.i, label %scalar.ph1149, !llvm.loop !47

._crit_edge2172.i:                                ; preds = %scalar.ph1149, %middle.block1161
  %spec.select1524.i.lcssa = phi i32 [ %i.bey, %middle.block1161 ], [ %spec.select1524.i, %scalar.ph1149 ] ; 3 uses
  %.11486.i.lcssa = phi i32 [ %i.bez, %middle.block1161 ], [ %.11486.i, %scalar.ph1149 ] ; 2 uses
  %i.bfd = icmp samesign ugt i32 %spec.select1524.i.lcssa, 17
  br i1 %i.bfd, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %._crit_edge2172.i
  call void @BZ2_bz__AssertH__fail(i32 noundef 3004) #11
  br label %bb.bm

end_hunk_1
begin_hunk_2_@BZ2_compressBlock:bb.a
  %i.crr = phi i32 [ %.pre.i1581.i, %bb.bz ], [ %i.crn, %.lr.ph.i1580.i ]
  %.lcssa.i1579.i = phi i32 [ %i.cqy, %bb.bz ], [ %i.crp, %.lr.ph.i1580.i ] ; 2 uses
  %i.crs = add nsw i32 %.lcssa.i1579.i, 5         ; 3 uses
  %i.crt = sub i32 27, %.lcssa.i1579.i
  %i.cru = shl i32 %i.crb, %i.crt
  %i.crv = or i32 %i.cru, %i.crr                  ; 3 uses
  store i32 %i.crv, ptr %i.cy, align 8, !tbaa !16
  store i32 %i.crs, ptr %i.cv, align 4, !tbaa !15
  br i1 %i.of, label %.preheader1963.i, label %._crit_edge2197.i

.preheader1963.i:                                 ; preds = %bsW.exit1583.i, %bsW.exit1604.i
  %.pre16.i15852519.i = phi i32 [ %i.cuu, %bsW.exit1604.i ], [ %i.crv, %bsW.exit1583.i ] ; 2 uses
  %i.crw = phi i32 [ %i.cuv, %bsW.exit1604.i ], [ %i.crs, %bsW.exit1583.i ] ; 2 uses
  %.pre15.i15822516.i = phi i32 [ %.pre15.i15822509.i, %bsW.exit1604.i ], [ %.pre15.i15822517.i, %bsW.exit1583.i ] ; 2 uses
  %indvars.iv2459.i = phi i64 [ %indvars.iv.next2460.i, %bsW.exit1604.i ], [ 0, %bsW.exit1583.i ] ; 2 uses
  %.014612195.i = phi i32 [ %.21463.lcssa.i, %bsW.exit1604.i ], [ %i.crb, %bsW.exit1583.i ] ; 3 uses
  %i.crx = getelementptr inbounds nuw i8, ptr %i.cqz, i64 %indvars.iv2459.i ; 3 uses
  %i.cry = load i8, ptr %i.crx, align 1, !tbaa !19 ; 3 uses
  %i.crz = zext i8 %i.cry to i32                  ; 2 uses
  %i.csa = icmp slt i32 %.014612195.i, %i.crz
  br i1 %i.csa, label %.lr.ph2188.i, label %.preheader1962.i

.preheader1962.i:                                 ; preds = %bsW.exit1590.i, %.preheader1963.i
  %.pre-phi.i = phi i32 [ %i.crz, %.preheader1963.i ], [ %i.ctc, %bsW.exit1590.i ]
  %.pre16.i15922522.i = phi i32 [ %.pre16.i15852519.i, %.preheader1963.i ], [ %i.cta, %bsW.exit1590.i ] ; 2 uses
  %i.csb = phi i32 [ %i.crw, %.preheader1963.i ], [ %i.csx, %bsW.exit1590.i ] ; 2 uses
  %i.csc = phi i8 [ %i.cry, %.preheader1963.i ], [ %i.csv, %bsW.exit1590.i ]
  %.pre15.i15822513.i = phi i32 [ %.pre15.i15822516.i, %.preheader1963.i ], [ %.pre15.i15822514.i, %bsW.exit1590.i ] ; 2 uses
  %.11462.lcssa.i = phi i32 [ %.014612195.i, %.preheader1963.i ], [ %i.ctb, %bsW.exit1590.i ] ; 3 uses
  %i.csd = icmp samesign ugt i32 %.11462.lcssa.i, %.pre-phi.i
  br i1 %i.csd, label %.lr.ph2192.i, label %._crit_edge2193.i

.lr.ph2188.i:                                     ; preds = %.preheader1963.i, %bsW.exit1590.i
  %i.cse = phi i8 [ %i.csv, %bsW.exit1590.i ], [ %i.cry, %.preheader1963.i ]
  %.pre.i1588.i = phi i32 [ %i.cta, %bsW.exit1590.i ], [ %.pre16.i15852519.i, %.preheader1963.i ] ; 2 uses
  %i.csf = phi i32 [ %i.csx, %bsW.exit1590.i ], [ %i.crw, %.preheader1963.i ] ; 2 uses
  %.pre15.i1589.i = phi i32 [ %.pre15.i15822514.i, %bsW.exit1590.i ], [ %.pre15.i15822516.i, %.preheader1963.i ] ; 2 uses
  %.114622187.i = phi i32 [ %i.ctb, %bsW.exit1590.i ], [ %.014612195.i, %.preheader1963.i ]
  %i.csg = icmp sgt i32 %i.csf, 7
  br i1 %i.csg, label %.lr.ph.i1587.i, label %bsW.exit1590.i

.lr.ph.i1587.i:                                   ; preds = %.lr.ph2188.i, %.lr.ph.i1587.i
  %i.csh = phi i32 [ %i.csp, %.lr.ph.i1587.i ], [ %.pre15.i1589.i, %.lr.ph2188.i ]
  %i.csi = phi i32 [ %i.csr, %.lr.ph.i1587.i ], [ %.pre.i1588.i, %.lr.ph2188.i ]
  %i.csj = lshr i32 %i.csi, 24
  %i.csk = trunc nuw i32 %i.csj to i8
  %i.csl = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.csm = sext i32 %i.csh to i64
  %i.csn = getelementptr inbounds i8, ptr %i.csl, i64 %i.csm
  store i8 %i.csk, ptr %i.csn, align 1, !tbaa !19
  %i.cso = load i32, ptr %i.cka, align 4, !tbaa !17
  %i.csp = add nsw i32 %i.cso, 1                  ; 3 uses
  store i32 %i.csp, ptr %i.cka, align 4, !tbaa !17
  %i.csq = load i32, ptr %i.cy, align 8, !tbaa !16
  %i.csr = shl i32 %i.csq, 8                      ; 3 uses
  store i32 %i.csr, ptr %i.cy, align 8, !tbaa !16
  %i.css = load i32, ptr %i.cv, align 4, !tbaa !15 ; 2 uses
  %i.cst = add nsw i32 %i.css, -8                 ; 2 uses
  store i32 %i.cst, ptr %i.cv, align 4, !tbaa !15
  %i.csu = icmp sgt i32 %i.css, 15
  br i1 %i.csu, label %.lr.ph.i1587.i, label %bsW.exit1590.loopexit.i, !llvm.loop !0

bsW.exit1590.loopexit.i:                          ; preds = %.lr.ph.i1587.i
  %.pre2520.i = load i8, ptr %i.crx, align 1, !tbaa !19
  br label %bsW.exit1590.i

bsW.exit1590.i:                                   ; preds = %bsW.exit1590.loopexit.i, %.lr.ph2188.i
  %i.csv = phi i8 [ %.pre2520.i, %bsW.exit1590.loopexit.i ], [ %i.cse, %.lr.ph2188.i ] ; 3 uses
  %.pre15.i15822514.i = phi i32 [ %i.csp, %bsW.exit1590.loopexit.i ], [ %.pre15.i1589.i, %.lr.ph2188.i ] ; 2 uses
  %i.csw = phi i32 [ %i.csr, %bsW.exit1590.loopexit.i ], [ %.pre.i1588.i, %.lr.ph2188.i ]
  %.lcssa.i1586.i = phi i32 [ %i.cst, %bsW.exit1590.loopexit.i ], [ %i.csf, %.lr.ph2188.i ] ; 2 uses
  %i.csx = add nsw i32 %.lcssa.i1586.i, 2         ; 3 uses
  %i.csy = sub i32 30, %.lcssa.i1586.i
  %i.csz = shl i32 2, %i.csy
  %i.cta = or i32 %i.csz, %i.csw                  ; 3 uses
  store i32 %i.cta, ptr %i.cy, align 8, !tbaa !16
  store i32 %i.csx, ptr %i.cv, align 4, !tbaa !15
  %i.ctb = add nuw nsw i32 %.114622187.i, 1       ; 3 uses
  %i.ctc = zext i8 %i.csv to i32                  ; 2 uses
  %i.ctd = icmp slt i32 %i.ctb, %i.ctc
  br i1 %i.ctd, label %.lr.ph2188.i, label %.preheader1962.i, !llvm.loop !54

.lr.ph2192.i:                                     ; preds = %.preheader1962.i, %bsW.exit1597.i
  %i.cte = phi i8 [ %i.ctv, %bsW.exit1597.i ], [ %i.csc, %.preheader1962.i ]
  %.pre.i1595.i = phi i32 [ %i.cua, %bsW.exit1597.i ], [ %.pre16.i15922522.i, %.preheader1962.i ] ; 2 uses
  %i.ctf = phi i32 [ %i.ctx, %bsW.exit1597.i ], [ %i.csb, %.preheader1962.i ] ; 2 uses
  %.pre15.i1596.i = phi i32 [ %.pre15.i15822511.i, %bsW.exit1597.i ], [ %.pre15.i15822513.i, %.preheader1962.i ] ; 2 uses
  %.214632191.i = phi i32 [ %i.cub, %bsW.exit1597.i ], [ %.11462.lcssa.i, %.preheader1962.i ]
  %i.ctg = icmp sgt i32 %i.ctf, 7
  br i1 %i.ctg, label %.lr.ph.i1594.i, label %bsW.exit1597.i

.lr.ph.i1594.i:                                   ; preds = %.lr.ph2192.i, %.lr.ph.i1594.i
  %i.cth = phi i32 [ %i.ctp, %.lr.ph.i1594.i ], [ %.pre15.i1596.i, %.lr.ph2192.i ]
  %i.cti = phi i32 [ %i.ctr, %.lr.ph.i1594.i ], [ %.pre.i1595.i, %.lr.ph2192.i ]
  %i.ctj = lshr i32 %i.cti, 24
  %i.ctk = trunc nuw i32 %i.ctj to i8
  %i.ctl = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.ctm = sext i32 %i.cth to i64
  %i.ctn = getelementptr inbounds i8, ptr %i.ctl, i64 %i.ctm
  store i8 %i.ctk, ptr %i.ctn, align 1, !tbaa !19
  %i.cto = load i32, ptr %i.cka, align 4, !tbaa !17
  %i.ctp = add nsw i32 %i.cto, 1                  ; 3 uses
  store i32 %i.ctp, ptr %i.cka, align 4, !tbaa !17
  %i.ctq = load i32, ptr %i.cy, align 8, !tbaa !16
  %i.ctr = shl i32 %i.ctq, 8                      ; 3 uses
  store i32 %i.ctr, ptr %i.cy, align 8, !tbaa !16
  %i.cts = load i32, ptr %i.cv, align 4, !tbaa !15 ; 2 uses
  %i.ctt = add nsw i32 %i.cts, -8                 ; 2 uses
  store i32 %i.ctt, ptr %i.cv, align 4, !tbaa !15
  %i.ctu = icmp sgt i32 %i.cts, 15
  br i1 %i.ctu, label %.lr.ph.i1594.i, label %bsW.exit1597.loopexit.i, !llvm.loop !0

bsW.exit1597.loopexit.i:                          ; preds = %.lr.ph.i1594.i
  %.pre2523.i = load i8, ptr %i.crx, align 1, !tbaa !19
  br label %bsW.exit1597.i

bsW.exit1597.i:                                   ; preds = %bsW.exit1597.loopexit.i, %.lr.ph2192.i
  %i.ctv = phi i8 [ %.pre2523.i, %bsW.exit1597.loopexit.i ], [ %i.cte, %.lr.ph2192.i ] ; 2 uses
  %.pre15.i15822511.i = phi i32 [ %i.ctp, %bsW.exit1597.loopexit.i ], [ %.pre15.i1596.i, %.lr.ph2192.i ] ; 2 uses
  %i.ctw = phi i32 [ %i.ctr, %bsW.exit1597.loopexit.i ], [ %.pre.i1595.i, %.lr.ph2192.i ]
  %.lcssa.i1593.i = phi i32 [ %i.ctt, %bsW.exit1597.loopexit.i ], [ %i.ctf, %.lr.ph2192.i ] ; 2 uses
  %i.ctx = add nsw i32 %.lcssa.i1593.i, 2         ; 3 uses
  %i.cty = sub i32 30, %.lcssa.i1593.i
  %i.ctz = shl i32 3, %i.cty
  %i.cua = or i32 %i.ctz, %i.ctw                  ; 3 uses
  store i32 %i.cua, ptr %i.cy, align 8, !tbaa !16
  store i32 %i.ctx, ptr %i.cv, align 4, !tbaa !15
  %i.cub = add nsw i32 %.214632191.i, -1          ; 3 uses
  %i.cuc = zext i8 %i.ctv to i32
  %i.cud = icmp samesign ugt i32 %i.cub, %i.cuc
  br i1 %i.cud, label %.lr.ph2192.i, label %._crit_edge2193.i, !llvm.loop !55

._crit_edge2193.i:                                ; preds = %bsW.exit1597.i, %.preheader1962.i
  %.pre.i1602.i = phi i32 [ %.pre16.i15922522.i, %.preheader1962.i ], [ %i.cua, %bsW.exit1597.i ] ; 2 uses
  %i.cue = phi i32 [ %i.csb, %.preheader1962.i ], [ %i.ctx, %bsW.exit1597.i ] ; 2 uses
  %.pre15.i1603.i = phi i32 [ %.pre15.i15822513.i, %.preheader1962.i ], [ %.pre15.i15822511.i, %bsW.exit1597.i ] ; 2 uses
  %.21463.lcssa.i = phi i32 [ %.11462.lcssa.i, %.preheader1962.i ], [ %i.cub, %bsW.exit1597.i ]
  %i.cuf = icmp sgt i32 %i.cue, 7
  br i1 %i.cuf, label %.lr.ph.i1601.i, label %bsW.exit1604.i

.lr.ph.i1601.i:                                   ; preds = %._crit_edge2193.i, %.lr.ph.i1601.i
  %i.cug = phi i32 [ %i.cuo, %.lr.ph.i1601.i ], [ %.pre15.i1603.i, %._crit_edge2193.i ]
  %i.cuh = phi i32 [ %i.cuq, %.lr.ph.i1601.i ], [ %.pre.i1602.i, %._crit_edge2193.i ]
  %i.cui = lshr i32 %i.cuh, 24
  %i.cuj = trunc nuw i32 %i.cui to i8
  %i.cuk = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.cul = sext i32 %i.cug to i64
  %i.cum = getelementptr inbounds i8, ptr %i.cuk, i64 %i.cul
  store i8 %i.cuj, ptr %i.cum, align 1, !tbaa !19
  %i.cun = load i32, ptr %i.cka, align 4, !tbaa !17
  %i.cuo = add nsw i32 %i.cun, 1                  ; 3 uses
  store i32 %i.cuo, ptr %i.cka, align 4, !tbaa !17
  %i.cup = load i32, ptr %i.cy, align 8, !tbaa !16
  %i.cuq = shl i32 %i.cup, 8                      ; 3 uses
  store i32 %i.cuq, ptr %i.cy, align 8, !tbaa !16
  %i.cur = load i32, ptr %i.cv, align 4, !tbaa !15 ; 2 uses
  %i.cus = add nsw i32 %i.cur, -8                 ; 2 uses
  store i32 %i.cus, ptr %i.cv, align 4, !tbaa !15
  %i.cut = icmp sgt i32 %i.cur, 15
  br i1 %i.cut, label %.lr.ph.i1601.i, label %bsW.exit1604.i, !llvm.loop !0

bsW.exit1604.i:                                   ; preds = %.lr.ph.i1601.i, %._crit_edge2193.i
  %.pre15.i15822509.i = phi i32 [ %.pre15.i1603.i, %._crit_edge2193.i ], [ %i.cuo, %.lr.ph.i1601.i ] ; 2 uses
  %i.cuu = phi i32 [ %.pre.i1602.i, %._crit_edge2193.i ], [ %i.cuq, %.lr.ph.i1601.i ] ; 3 uses
  %.lcssa.i1600.i = phi i32 [ %i.cue, %._crit_edge2193.i ], [ %i.cus, %.lr.ph.i1601.i ]
  %i.cuv = add nsw i32 %.lcssa.i1600.i, 1         ; 3 uses
  store i32 %i.cuu, ptr %i.cy, align 8, !tbaa !16
  store i32 %i.cuv, ptr %i.cv, align 4, !tbaa !15
  %indvars.iv.next2460.i = add nuw nsw i64 %indvars.iv2459.i, 1 ; 2 uses
  %exitcond2463.not.i = icmp eq i64 %indvars.iv.next2460.i, %wide.trip.count.i122
  br i1 %exitcond2463.not.i, label %._crit_edge2197.i, label %.preheader1963.i, !llvm.loop !56

._crit_edge2197.i:                                ; preds = %bsW.exit1604.i, %bsW.exit1583.i
  %.pre.i1581.i573 = phi i32 [ %i.crv, %bsW.exit1583.i ], [ %i.cuu, %bsW.exit1604.i ]
  %i.cuw = phi i32 [ %.pre15.i15822517.i, %bsW.exit1583.i ], [ %.pre15.i15822509.i, %bsW.exit1604.i ] ; 3 uses
  %i.cux = phi i32 [ %i.crs, %bsW.exit1583.i ], [ %i.cuv, %bsW.exit1604.i ]
  %indvars.iv.next2465.i = add nuw nsw i64 %indvars.iv2464.i, 1 ; 2 uses
  %exitcond2468.not.i = icmp eq i64 %indvars.iv.next2465.i, %i.ow
  br i1 %exitcond2468.not.i, label %bb.ca, label %bb.bz, !llvm.loop !57

bb.ca:                                            ; preds = %._crit_edge2197.i
  %i.cuy = load i32, ptr %i.nw, align 8, !tbaa !64
  %i.cuz = icmp sgt i32 %i.cuy, 2
  br i1 %i.cuz, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.cva = load ptr, ptr @stderr, align 8, !tbaa !66
  %i.cvb = sub nsw i32 %i.cuw, %i.cqx
  %i.cvc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cva, ptr noundef nonnull @.str.9, i32 noundef %i.cvb) #10 ; 0 uses
  %.pre2525.i = load i32, ptr %i.cka, align 4, !tbaa !17
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.cvd = phi i32 [ %.pre2525.i, %bb.cb ], [ %i.cuw, %bb.ca ]
  %i.cve = load i32, ptr %i.nv, align 4, !tbaa !80 ; 2 uses
  %.not2202.i = icmp sgt i32 %i.cve, 0
  br i1 %.not2202.i, label %.lr.ph2206.i, label %._crit_edge2207.i

.lr.ph2206.i:                                     ; preds = %bb.cc, %.loopexit.i
  %indvars.iv2475.i = phi i64 [ %indvars.iv.next2476.i, %.loopexit.i ], [ 0, %bb.cc ] ; 2 uses
  %i.cvf = phi i32 [ %i.eza, %.loopexit.i ], [ %i.cve, %bb.cc ]
  %.214712204.i = phi i32 [ %i.eyz, %.loopexit.i ], [ 0, %bb.cc ] ; 5 uses
  %i.cvg = add i32 %.214712204.i, 49
  %i.cvh = add nsw i32 %i.cvf, -1
  %spec.select1525.i = call i32 @llvm.smin.i32(i32 %i.cvg, i32 %i.cvh) ; 3 uses
  %i.cvi = getelementptr inbounds nuw i8, ptr %i.pg, i64 %indvars.iv2475.i ; 3 uses
  %i.cvj = load i8, ptr %i.cvi, align 1, !tbaa !19
  %i.cvk = zext i8 %i.cvj to i32
  %i.cvl = icmp samesign ugt i32 %.01481.i, %i.cvk
  br i1 %i.cvl, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph2206.i
  call void @BZ2_bz__AssertH__fail(i32 noundef 3006) #11
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %.lr.ph2206.i
  %i.cvm = sub nsw i32 %spec.select1525.i, %.214712204.i
  %i.cvn = icmp eq i32 %i.cvm, 49
  %or.cond1527.i = select i1 %i.ou, i1 %i.cvn, i1 false
  br i1 %or.cond1527.i, label %bb.cf, label %.lr.ph2201.preheader.i

.lr.ph2201.preheader.i:                           ; preds = %bb.ce
  %i.cvo = sext i32 %.214712204.i to i64
  %smax2472.i = call i32 @llvm.smax.i32(i32 %.214712204.i, i32 %spec.select1525.i)
  %i.cvp = add nsw i32 %smax2472.i, 1
  %.pre2526.i = load i32, ptr %i.cv, align 4, !tbaa !15
  %.pre.i1959.i.pre = load i32, ptr %i.cy, align 8, !tbaa !16
  br label %.lr.ph2201.i

bb.cf:                                            ; preds = %bb.ce
  %i.cvq = load i8, ptr %i.cvi, align 1, !tbaa !19
  %i.cvr = zext i8 %i.cvq to i64                  ; 2 uses
  %i.cvs = getelementptr inbounds nuw [258 x i8], ptr %i.og, i64 %i.cvr ; 50 uses
  %i.cvt = getelementptr inbounds nuw [1032 x i8], ptr %i.ben, i64 %i.cvr ; 50 uses
  %i.cvu = sext i32 %.214712204.i to i64
  %i.cvv = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %i.cvu ; 50 uses
  %i.cvw = load i16, ptr %i.cvv, align 2, !tbaa !79
  %i.cvx = zext i16 %i.cvw to i64                 ; 2 uses
  %i.cvy = getelementptr inbounds nuw i8, ptr %i.cvs, i64 %i.cvx
  %i.cvz = load i8, ptr %i.cvy, align 1, !tbaa !19
  %i.cwa = zext i8 %i.cvz to i32
  %i.cwb = getelementptr inbounds nuw [4 x i8], ptr %i.cvt, i64 %i.cvx
  %i.cwc = load i32, ptr %i.cwb, align 4, !tbaa !74
  %i.cwd = load i32, ptr %i.cv, align 4, !tbaa !15 ; 2 uses
  %i.cwe = icmp sgt i32 %i.cwd, 7
  %.pre.i1609.i = load i32, ptr %i.cy, align 8, !tbaa !16 ; 2 uses
  br i1 %i.cwe, label %.lr.ph.i1608.i, label %bsW.exit1611.i

.lr.ph.i1608.i:                                   ; preds = %bb.cf
  %.pre15.i1610.i = load i32, ptr %i.cka, align 4, !tbaa !17
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cg, %.lr.ph.i1608.i
  %i.cwf = phi i32 [ %.pre15.i1610.i, %.lr.ph.i1608.i ], [ %i.cwn, %bb.cg ]
  %i.cwg = phi i32 [ %.pre.i1609.i, %.lr.ph.i1608.i ], [ %i.cwp, %bb.cg ]
  %i.cwh = lshr i32 %i.cwg, 24
  %i.cwi = trunc nuw i32 %i.cwh to i8
  %i.cwj = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.cwk = sext i32 %i.cwf to i64
  %i.cwl = getelementptr inbounds i8, ptr %i.cwj, i64 %i.cwk
  store i8 %i.cwi, ptr %i.cwl, align 1, !tbaa !19
  %i.cwm = load i32, ptr %i.cka, align 4, !tbaa !17
  %i.cwn = add nsw i32 %i.cwm, 1                  ; 2 uses
  store i32 %i.cwn, ptr %i.cka, align 4, !tbaa !17
  %i.cwo = load i32, ptr %i.cy, align 8, !tbaa !16
  %i.cwp = shl i32 %i.cwo, 8                      ; 3 uses
  store i32 %i.cwp, ptr %i.cy, align 8, !tbaa !16
  %i.cwq = load i32, ptr %i.cv, align 4, !tbaa !15 ; 2 uses
  %i.cwr = add nsw i32 %i.cwq, -8                 ; 2 uses
  store i32 %i.cwr, ptr %i.cv, align 4, !tbaa !15
  %i.cws = icmp sgt i32 %i.cwq, 15
  br i1 %i.cws, label %bb.cg, label %bsW.exit1611.i, !llvm.loop !0

bsW.exit1611.i:                                   ; preds = %bb.cg, %bb.cf
  %i.cwt = phi i32 [ %.pre.i1609.i, %bb.cf ], [ %i.cwp, %bb.cg ]
  %.lcssa.i1607.i = phi i32 [ %i.cwd, %bb.cf ], [ %i.cwr, %bb.cg ]
  %i.cwu = add nsw i32 %.lcssa.i1607.i, %i.cwa    ; 4 uses
  %i.cwv = sub i32 32, %i.cwu
  %i.cww = shl i32 %i.cwc, %i.cwv
  %i.cwx = or i32 %i.cww, %i.cwt                  ; 3 uses
  store i32 %i.cwx, ptr %i.cy, align 8, !tbaa !16
  store i32 %i.cwu, ptr %i.cv, align 4, !tbaa !15
  %i.cwy = getelementptr i8, ptr %i.cvv, i64 2
  %i.cwz = load i16, ptr %i.cwy, align 2, !tbaa !79
  %i.cxa = zext i16 %i.cwz to i64                 ; 2 uses
  %i.cxb = getelementptr inbounds nuw i8, ptr %i.cvs, i64 %i.cxa
  %i.cxc = load i8, ptr %i.cxb, align 1, !tbaa !19
  %i.cxd = zext i8 %i.cxc to i32
  %i.cxe = getelementptr inbounds nuw [4 x i8], ptr %i.cvt, i64 %i.cxa
  %i.cxf = load i32, ptr %i.cxe, align 4, !tbaa !74
  %i.cxg = icmp sgt i32 %i.cwu, 7
  br i1 %i.cxg, label %.lr.ph.i1615.i, label %bsW.exit1618.i

.lr.ph.i1615.i:                                   ; preds = %bsW.exit1611.i
  %.pre15.i1617.i = load i32, ptr %i.cka, align 4, !tbaa !17
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ch, %.lr.ph.i1615.i
  %i.cxh = phi i32 [ %.pre15.i1617.i, %.lr.ph.i1615.i ], [ %i.cxp, %bb.ch ]
  %i.cxi = phi i32 [ %i.cwx, %.lr.ph.i1615.i ], [ %i.cxr, %bb.ch ]
  %i.cxj = lshr i32 %i.cxi, 24
  %i.cxk = trunc nuw i32 %i.cxj to i8
  %i.cxl = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.cxm = sext i32 %i.cxh to i64
  %i.cxn = getelementptr inbounds i8, ptr %i.cxl, i64 %i.cxm
  store i8 %i.cxk, ptr %i.cxn, align 1, !tbaa !19
  %i.cxo = load i32, ptr %i.cka, align 4, !tbaa !17
  %i.cxp = add nsw i32 %i.cxo, 1                  ; 2 uses
  store i32 %i.cxp, ptr %i.cka, align 4, !tbaa !17
  %i.cxq = load i32, ptr %i.cy, align 8, !tbaa !16
  %i.cxr = shl i32 %i.cxq, 8                      ; 3 uses
  store i32 %i.cxr, ptr %i.cy, align 8, !tbaa !16
  %i.cxs = load i32, ptr %i.cv, align 4, !tbaa !15 ; 2 uses
  %i.cxt = add nsw i32 %i.cxs, -8                 ; 2 uses
  store i32 %i.cxt, ptr %i.cv, align 4, !tbaa !15
  %i.cxu = icmp sgt i32 %i.cxs, 15
  br i1 %i.cxu, label %bb.ch, label %bsW.exit1618.i, !llvm.loop !0

bsW.exit1618.i:                                   ; preds = %bb.ch, %bsW.exit1611.i
  %i.cxv = phi i32 [ %i.cwx, %bsW.exit1611.i ], [ %i.cxr, %bb.ch ]
  %.lcssa.i1614.i = phi i32 [ %i.cwu, %bsW.exit1611.i ], [ %i.cxt, %bb.ch ]
  %i.cxw = add nsw i32 %.lcssa.i1614.i, %i.cxd    ; 4 uses
  %i.cxx = sub i32 32, %i.cxw
  %i.cxy = shl i32 %i.cxf, %i.cxx
  %i.cxz = or i32 %i.cxy, %i.cxv                  ; 3 uses
  store i32 %i.cxz, ptr %i.cy, align 8, !tbaa !16
  store i32 %i.cxw, ptr %i.cv, align 4, !tbaa !15
  %i.cya = getelementptr i8, ptr %i.cvv, i64 4
  %i.cyb = load i16, ptr %i.cya, align 2, !tbaa !79
  %i.cyc = zext i16 %i.cyb to i64                 ; 2 uses
  %i.cyd = getelementptr inbounds nuw i8, ptr %i.cvs, i64 %i.cyc
  %i.cye = load i8, ptr %i.cyd, align 1, !tbaa !19
  %i.cyf = zext i8 %i.cye to i32
  %i.cyg = getelementptr inbounds nuw [4 x i8], ptr %i.cvt, i64 %i.cyc
  %i.cyh = load i32, ptr %i.cyg, align 4, !tbaa !74
  %i.cyi = icmp sgt i32 %i.cxw, 7
  br i1 %i.cyi, label %.lr.ph.i1622.i, label %bsW.exit1625.i

.lr.ph.i1622.i:                                   ; preds = %bsW.exit1618.i
  %.pre15.i1624.i = load i32, ptr %i.cka, align 4, !tbaa !17
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ci, %.lr.ph.i1622.i
  %i.cyj = phi i32 [ %.pre15.i1624.i, %.lr.ph.i1622.i ], [ %i.cyr, %bb.ci ]
  %i.cyk = phi i32 [ %i.cxz, %.lr.ph.i1622.i ], [ %i.cyt, %bb.ci ]
  %i.cyl = lshr i32 %i.cyk, 24
  %i.cym = trunc nuw i32 %i.cyl to i8
  %i.cyn = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.cyo = sext i32 %i.cyj to i64
  %i.cyp = getelementptr inbounds i8, ptr %i.cyn, i64 %i.cyo
  store i8 %i.cym, ptr %i.cyp, align 1, !tbaa !19
  %i.cyq = load i32, ptr %i.cka, align 4, !tbaa !17
  %i.cyr = add nsw i32 %i.cyq, 1                  ; 2 uses
  store i32 %i.cyr, ptr %i.cka, align 4, !tbaa !17
  %i.cys = load i32, ptr %i.cy, align 8, !tbaa !16
  %i.cyt = shl i32 %i.cys, 8                      ; 3 uses
  store i32 %i.cyt, ptr %i.cy, align 8, !tbaa !16
  %i.cyu = load i32, ptr %i.cv, align 4, !tbaa !15 ; 2 uses
  %i.cyv = add nsw i32 %i.cyu, -8                 ; 2 uses
  store i32 %i.cyv, ptr %i.cv, align 4, !tbaa !15
  %i.cyw = icmp sgt i32 %i.cyu, 15
  br i1 %i.cyw, label %bb.ci, label %bsW.exit1625.i, !llvm.loop !0

bsW.exit1625.i:                                   ; preds = %bb.ci, %bsW.exit1618.i
  %i.cyx = phi i32 [ %i.cxz, %bsW.exit1618.i ], [ %i.cyt, %bb.ci ]
  %.lcssa.i1621.i = phi i32 [ %i.cxw, %bsW.exit1618.i ], [ %i.cyv, %bb.ci ]
  %i.cyy = add nsw i32 %.lcssa.i1621.i, %i.cyf    ; 4 uses
  %i.cyz = sub i32 32, %i.cyy
  %i.cza = shl i32 %i.cyh, %i.cyz
  %i.czb = or i32 %i.cza, %i.cyx                  ; 3 uses
  store i32 %i.czb, ptr %i.cy, align 8, !tbaa !16
  store i32 %i.cyy, ptr %i.cv, align 4, !tbaa !15
  %i.czc = getelementptr i8, ptr %i.cvv, i64 6
  %i.czd = load i16, ptr %i.czc, align 2, !tbaa !79
  %i.cze = zext i16 %i.czd to i64                 ; 2 uses
  %i.czf = getelementptr inbounds nuw i8, ptr %i.cvs, i64 %i.cze
  %i.czg = load i8, ptr %i.czf, align 1, !tbaa !19
  %i.czh = zext i8 %i.czg to i32
  %i.czi = getelementptr inbounds nuw [4 x i8], ptr %i.cvt, i64 %i.cze
  %i.czj = load i32, ptr %i.czi, align 4, !tbaa !74
  %i.czk = icmp sgt i32 %i.cyy, 7
  br i1 %i.czk, label %.lr.ph.i1629.i, label %bsW.exit1632.i

.lr.ph.i1629.i:                                   ; preds = %bsW.exit1625.i
  %.pre15.i1631.i = load i32, ptr %i.cka, align 4, !tbaa !17
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cj, %.lr.ph.i1629.i
  %i.czl = phi i32 [ %.pre15.i1631.i, %.lr.ph.i1629.i ], [ %i.czt, %bb.cj ]
  %i.czm = phi i32 [ %i.czb, %.lr.ph.i1629.i ], [ %i.czv, %bb.cj ]
  %i.czn = lshr i32 %i.czm, 24
  %i.czo = trunc nuw i32 %i.czn to i8
  %i.czp = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.czq = sext i32 %i.czl to i64
  %i.czr = getelementptr inbounds i8, ptr %i.czp, i64 %i.czq
  store i8 %i.czo, ptr %i.czr, align 1, !tbaa !19
  %i.czs = load i32, ptr %i.cka, align 4, !tbaa !17
  %i.czt = add nsw i32 %i.czs, 1                  ; 2 uses
  store i32 %i.czt, ptr %i.cka, align 4, !tbaa !17
  %i.czu = load i32, ptr %i.cy, align 8, !tbaa !16
  %i.czv = shl i32 %i.czu, 8                      ; 3 uses
  store i32 %i.czv, ptr %i.cy, align 8, !tbaa !16
  %i.czw = load i32, ptr %i.cv, align 4, !tbaa !15 ; 2 uses
  %i.czx = add nsw i32 %i.czw, -8                 ; 2 uses
  store i32 %i.czx, ptr %i.cv, align 4, !tbaa !15
  %i.czy = icmp sgt i32 %i.czw, 15
  br i1 %i.czy, label %bb.cj, label %bsW.exit1632.i, !llvm.loop !0

bsW.exit1632.i:                                   ; preds = %bb.cj, %bsW.exit1625.i
  %i.czz = phi i32 [ %i.czb, %bsW.exit1625.i ], [ %i.czv, %bb.cj ]
  %.lcssa.i1628.i = phi i32 [ %i.cyy, %bsW.exit1625.i ], [ %i.czx, %bb.cj ]
  %i.daa = add nsw i32 %.lcssa.i1628.i, %i.czh    ; 4 uses
  %i.dab = sub i32 32, %i.daa
  %i.dac = shl i32 %i.czj, %i.dab
  %i.dad = or i32 %i.dac, %i.czz                  ; 3 uses
  store i32 %i.dad, ptr %i.cy, align 8, !tbaa !16
  store i32 %i.daa, ptr %i.cv, align 4, !tbaa !15
  %i.dae = getelementptr i8, ptr %i.cvv, i64 8
  %i.daf = load i16, ptr %i.dae, align 2, !tbaa !79
  %i.dag = zext i16 %i.daf to i64                 ; 2 uses
  %i.dah = getelementptr inbounds nuw i8, ptr %i.cvs, i64 %i.dag
  %i.dai = load i8, ptr %i.dah, align 1, !tbaa !19
end_hunk_2
begin_hunk_3_@BZ2_compressBlock:bb.a
  %i.euj = sub i32 32, %i.eui
  %i.euk = shl i32 %i.etr, %i.euj
  %i.eul = or i32 %i.euk, %i.euh                  ; 3 uses
  store i32 %i.eul, ptr %i.cy, align 8, !tbaa !16
  store i32 %i.eui, ptr %i.cv, align 4, !tbaa !15
  %i.eum = getelementptr i8, ptr %i.cvv, i64 94
  %i.eun = load i16, ptr %i.eum, align 2, !tbaa !79
  %i.euo = zext i16 %i.eun to i64                 ; 2 uses
  %i.eup = getelementptr inbounds nuw i8, ptr %i.cvs, i64 %i.euo
  %i.euq = load i8, ptr %i.eup, align 1, !tbaa !19
  %i.eur = zext i8 %i.euq to i32
  %i.eus = getelementptr inbounds nuw [4 x i8], ptr %i.cvt, i64 %i.euo
  %i.eut = load i32, ptr %i.eus, align 4, !tbaa !74
  %i.euu = icmp sgt i32 %i.eui, 7
  br i1 %i.euu, label %.lr.ph.i1937.i, label %bsW.exit1940.i

.lr.ph.i1937.i:                                   ; preds = %bsW.exit1933.i
  %.pre15.i1939.i = load i32, ptr %i.cka, align 4, !tbaa !17
  br label %bb.eb

bb.eb:                                            ; preds = %bb.eb, %.lr.ph.i1937.i
  %i.euv = phi i32 [ %.pre15.i1939.i, %.lr.ph.i1937.i ], [ %i.evd, %bb.eb ]
  %i.euw = phi i32 [ %i.eul, %.lr.ph.i1937.i ], [ %i.evf, %bb.eb ]
  %i.eux = lshr i32 %i.euw, 24
  %i.euy = trunc nuw i32 %i.eux to i8
  %i.euz = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.eva = sext i32 %i.euv to i64
  %i.evb = getelementptr inbounds i8, ptr %i.euz, i64 %i.eva
  store i8 %i.euy, ptr %i.evb, align 1, !tbaa !19
  %i.evc = load i32, ptr %i.cka, align 4, !tbaa !17
  %i.evd = add nsw i32 %i.evc, 1                  ; 2 uses
  store i32 %i.evd, ptr %i.cka, align 4, !tbaa !17
  %i.eve = load i32, ptr %i.cy, align 8, !tbaa !16
  %i.evf = shl i32 %i.eve, 8                      ; 3 uses
  store i32 %i.evf, ptr %i.cy, align 8, !tbaa !16
  %i.evg = load i32, ptr %i.cv, align 4, !tbaa !15 ; 2 uses
  %i.evh = add nsw i32 %i.evg, -8                 ; 2 uses
  store i32 %i.evh, ptr %i.cv, align 4, !tbaa !15
  %i.evi = icmp sgt i32 %i.evg, 15
  br i1 %i.evi, label %bb.eb, label %bsW.exit1940.i, !llvm.loop !0

bsW.exit1940.i:                                   ; preds = %bb.eb, %bsW.exit1933.i
  %i.evj = phi i32 [ %i.eul, %bsW.exit1933.i ], [ %i.evf, %bb.eb ]
  %.lcssa.i1936.i = phi i32 [ %i.eui, %bsW.exit1933.i ], [ %i.evh, %bb.eb ]
  %i.evk = add nsw i32 %.lcssa.i1936.i, %i.eur    ; 4 uses
  %i.evl = sub i32 32, %i.evk
  %i.evm = shl i32 %i.eut, %i.evl
  %i.evn = or i32 %i.evm, %i.evj                  ; 3 uses
  store i32 %i.evn, ptr %i.cy, align 8, !tbaa !16
  store i32 %i.evk, ptr %i.cv, align 4, !tbaa !15
  %i.evo = getelementptr i8, ptr %i.cvv, i64 96
  %i.evp = load i16, ptr %i.evo, align 2, !tbaa !79
  %i.evq = zext i16 %i.evp to i64                 ; 2 uses
  %i.evr = getelementptr inbounds nuw i8, ptr %i.cvs, i64 %i.evq
  %i.evs = load i8, ptr %i.evr, align 1, !tbaa !19
  %i.evt = zext i8 %i.evs to i32
  %i.evu = getelementptr inbounds nuw [4 x i8], ptr %i.cvt, i64 %i.evq
  %i.evv = load i32, ptr %i.evu, align 4, !tbaa !74
  %i.evw = icmp sgt i32 %i.evk, 7
  br i1 %i.evw, label %.lr.ph.i1944.i, label %bsW.exit1947.i

.lr.ph.i1944.i:                                   ; preds = %bsW.exit1940.i
  %.pre15.i1946.i = load i32, ptr %i.cka, align 4, !tbaa !17
  br label %bb.ec

bb.ec:                                            ; preds = %bb.ec, %.lr.ph.i1944.i
  %i.evx = phi i32 [ %.pre15.i1946.i, %.lr.ph.i1944.i ], [ %i.ewf, %bb.ec ]
  %i.evy = phi i32 [ %i.evn, %.lr.ph.i1944.i ], [ %i.ewh, %bb.ec ]
  %i.evz = lshr i32 %i.evy, 24
  %i.ewa = trunc nuw i32 %i.evz to i8
  %i.ewb = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.ewc = sext i32 %i.evx to i64
  %i.ewd = getelementptr inbounds i8, ptr %i.ewb, i64 %i.ewc
  store i8 %i.ewa, ptr %i.ewd, align 1, !tbaa !19
  %i.ewe = load i32, ptr %i.cka, align 4, !tbaa !17
  %i.ewf = add nsw i32 %i.ewe, 1                  ; 2 uses
  store i32 %i.ewf, ptr %i.cka, align 4, !tbaa !17
  %i.ewg = load i32, ptr %i.cy, align 8, !tbaa !16
  %i.ewh = shl i32 %i.ewg, 8                      ; 3 uses
  store i32 %i.ewh, ptr %i.cy, align 8, !tbaa !16
  %i.ewi = load i32, ptr %i.cv, align 4, !tbaa !15 ; 2 uses
  %i.ewj = add nsw i32 %i.ewi, -8                 ; 2 uses
  store i32 %i.ewj, ptr %i.cv, align 4, !tbaa !15
  %i.ewk = icmp sgt i32 %i.ewi, 15
  br i1 %i.ewk, label %bb.ec, label %bsW.exit1947.i, !llvm.loop !0

bsW.exit1947.i:                                   ; preds = %bb.ec, %bsW.exit1940.i
  %i.ewl = phi i32 [ %i.evn, %bsW.exit1940.i ], [ %i.ewh, %bb.ec ]
  %.lcssa.i1943.i = phi i32 [ %i.evk, %bsW.exit1940.i ], [ %i.ewj, %bb.ec ]
  %i.ewm = add nsw i32 %.lcssa.i1943.i, %i.evt    ; 4 uses
  %i.ewn = sub i32 32, %i.ewm
  %i.ewo = shl i32 %i.evv, %i.ewn
  %i.ewp = or i32 %i.ewo, %i.ewl                  ; 3 uses
  store i32 %i.ewp, ptr %i.cy, align 8, !tbaa !16
  store i32 %i.ewm, ptr %i.cv, align 4, !tbaa !15
  %i.ewq = getelementptr i8, ptr %i.cvv, i64 98
  %i.ewr = load i16, ptr %i.ewq, align 2, !tbaa !79
  %i.ews = zext i16 %i.ewr to i64                 ; 2 uses
  %i.ewt = getelementptr inbounds nuw i8, ptr %i.cvs, i64 %i.ews
  %i.ewu = load i8, ptr %i.ewt, align 1, !tbaa !19
  %i.ewv = zext i8 %i.ewu to i32
  %i.eww = getelementptr inbounds nuw [4 x i8], ptr %i.cvt, i64 %i.ews
  %i.ewx = load i32, ptr %i.eww, align 4, !tbaa !74
  %i.ewy = icmp sgt i32 %i.ewm, 7
  br i1 %i.ewy, label %.lr.ph.i1951.i, label %bsW.exit1954.i

.lr.ph.i1951.i:                                   ; preds = %bsW.exit1947.i
  %.pre15.i1953.i = load i32, ptr %i.cka, align 4, !tbaa !17
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ed, %.lr.ph.i1951.i
  %i.ewz = phi i32 [ %.pre15.i1953.i, %.lr.ph.i1951.i ], [ %i.exh, %bb.ed ]
  %i.exa = phi i32 [ %i.ewp, %.lr.ph.i1951.i ], [ %i.exj, %bb.ed ]
  %i.exb = lshr i32 %i.exa, 24
  %i.exc = trunc nuw i32 %i.exb to i8
  %i.exd = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.exe = sext i32 %i.ewz to i64
  %i.exf = getelementptr inbounds i8, ptr %i.exd, i64 %i.exe
  store i8 %i.exc, ptr %i.exf, align 1, !tbaa !19
  %i.exg = load i32, ptr %i.cka, align 4, !tbaa !17
  %i.exh = add nsw i32 %i.exg, 1                  ; 2 uses
  store i32 %i.exh, ptr %i.cka, align 4, !tbaa !17
  %i.exi = load i32, ptr %i.cy, align 8, !tbaa !16
  %i.exj = shl i32 %i.exi, 8                      ; 3 uses
  store i32 %i.exj, ptr %i.cy, align 8, !tbaa !16
  %i.exk = load i32, ptr %i.cv, align 4, !tbaa !15 ; 2 uses
  %i.exl = add nsw i32 %i.exk, -8                 ; 2 uses
  store i32 %i.exl, ptr %i.cv, align 4, !tbaa !15
  %i.exm = icmp sgt i32 %i.exk, 15
  br i1 %i.exm, label %bb.ed, label %bsW.exit1954.i, !llvm.loop !0

bsW.exit1954.i:                                   ; preds = %bb.ed, %bsW.exit1947.i
  %i.exn = phi i32 [ %i.ewp, %bsW.exit1947.i ], [ %i.exj, %bb.ed ]
  %.lcssa.i1950.i = phi i32 [ %i.ewm, %bsW.exit1947.i ], [ %i.exl, %bb.ed ]
  %i.exo = add nsw i32 %.lcssa.i1950.i, %i.ewv    ; 2 uses
  %i.exp = sub i32 32, %i.exo
  %i.exq = shl i32 %i.ewx, %i.exp
  %i.exr = or i32 %i.exq, %i.exn
  store i32 %i.exr, ptr %i.cy, align 8, !tbaa !16
  store i32 %i.exo, ptr %i.cv, align 4, !tbaa !15
  br label %.loopexit.i

.lr.ph2201.i:                                     ; preds = %bsW.exit1961.i, %.lr.ph2201.preheader.i
  %.pre.i1959.i = phi i32 [ %.pre.i1959.i.pre, %.lr.ph2201.preheader.i ], [ %i.eyy, %bsW.exit1961.i ] ; 2 uses
  %i.exs = phi i32 [ %.pre2526.i, %.lr.ph2201.preheader.i ], [ %i.eyv, %bsW.exit1961.i ] ; 2 uses
  %indvars.iv2469.i = phi i64 [ %i.cvo, %.lr.ph2201.preheader.i ], [ %indvars.iv.next2470.i, %bsW.exit1961.i ] ; 2 uses
  %i.ext = load i8, ptr %i.cvi, align 1, !tbaa !19
  %i.exu = zext i8 %i.ext to i64                  ; 2 uses
  %i.exv = getelementptr inbounds nuw [258 x i8], ptr %i.og, i64 %i.exu
  %i.exw = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %indvars.iv2469.i
  %i.exx = load i16, ptr %i.exw, align 2, !tbaa !79
  %i.exy = zext i16 %i.exx to i64                 ; 2 uses
  %i.exz = getelementptr inbounds nuw i8, ptr %i.exv, i64 %i.exy
  %i.eya = load i8, ptr %i.exz, align 1, !tbaa !19
  %i.eyb = zext i8 %i.eya to i32
  %i.eyc = getelementptr inbounds nuw [1032 x i8], ptr %i.ben, i64 %i.exu
  %i.eyd = getelementptr inbounds nuw [4 x i8], ptr %i.eyc, i64 %i.exy
  %i.eye = load i32, ptr %i.eyd, align 4, !tbaa !74
  %i.eyf = icmp sgt i32 %i.exs, 7
  br i1 %i.eyf, label %.lr.ph.i1958.i, label %bsW.exit1961.i

.lr.ph.i1958.i:                                   ; preds = %.lr.ph2201.i
  %.pre15.i1960.i = load i32, ptr %i.cka, align 4, !tbaa !17
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ee, %.lr.ph.i1958.i
  %i.eyg = phi i32 [ %.pre15.i1960.i, %.lr.ph.i1958.i ], [ %i.eyo, %bb.ee ]
  %i.eyh = phi i32 [ %.pre.i1959.i, %.lr.ph.i1958.i ], [ %i.eyq, %bb.ee ]
  %i.eyi = lshr i32 %i.eyh, 24
  %i.eyj = trunc nuw i32 %i.eyi to i8
  %i.eyk = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.eyl = sext i32 %i.eyg to i64
  %i.eym = getelementptr inbounds i8, ptr %i.eyk, i64 %i.eyl
  store i8 %i.eyj, ptr %i.eym, align 1, !tbaa !19
  %i.eyn = load i32, ptr %i.cka, align 4, !tbaa !17
  %i.eyo = add nsw i32 %i.eyn, 1                  ; 2 uses
  store i32 %i.eyo, ptr %i.cka, align 4, !tbaa !17
  %i.eyp = load i32, ptr %i.cy, align 8, !tbaa !16
  %i.eyq = shl i32 %i.eyp, 8                      ; 3 uses
  store i32 %i.eyq, ptr %i.cy, align 8, !tbaa !16
  %i.eyr = load i32, ptr %i.cv, align 4, !tbaa !15 ; 2 uses
  %i.eys = add nsw i32 %i.eyr, -8                 ; 2 uses
  store i32 %i.eys, ptr %i.cv, align 4, !tbaa !15
  %i.eyt = icmp sgt i32 %i.eyr, 15
  br i1 %i.eyt, label %bb.ee, label %bsW.exit1961.i, !llvm.loop !0

bsW.exit1961.i:                                   ; preds = %bb.ee, %.lr.ph2201.i
  %i.eyu = phi i32 [ %.pre.i1959.i, %.lr.ph2201.i ], [ %i.eyq, %bb.ee ]
  %.lcssa.i1957.i = phi i32 [ %i.exs, %.lr.ph2201.i ], [ %i.eys, %bb.ee ]
  %i.eyv = add nsw i32 %.lcssa.i1957.i, %i.eyb    ; 3 uses
  %i.eyw = sub i32 32, %i.eyv
  %i.eyx = shl i32 %i.eye, %i.eyw
  %i.eyy = or i32 %i.eyx, %i.eyu                  ; 2 uses
  store i32 %i.eyy, ptr %i.cy, align 8, !tbaa !16
  store i32 %i.eyv, ptr %i.cv, align 4, !tbaa !15
  %indvars.iv.next2470.i = add nsw i64 %indvars.iv2469.i, 1 ; 2 uses
  %lftr.wideiv2473.i = trunc i64 %indvars.iv.next2470.i to i32
  %exitcond2474.not.i = icmp eq i32 %i.cvp, %lftr.wideiv2473.i
  br i1 %exitcond2474.not.i, label %.loopexit.i, label %.lr.ph2201.i, !llvm.loop !58

.loopexit.i:                                      ; preds = %bsW.exit1961.i, %bsW.exit1954.i
  %i.eyz = add nsw i32 %spec.select1525.i, 1      ; 2 uses
  %indvars.iv.next2476.i = add nuw nsw i64 %indvars.iv2475.i, 1 ; 2 uses
  %i.eza = load i32, ptr %i.nv, align 4, !tbaa !80 ; 2 uses
  %.not.i = icmp slt i32 %i.eyz, %i.eza
  br i1 %.not.i, label %.lr.ph2206.i, label %._crit_edge2207.loopexit.i

._crit_edge2207.loopexit.i:                       ; preds = %.loopexit.i
  %i.ezb = trunc nuw i64 %indvars.iv.next2476.i to i32
  br label %._crit_edge2207.i

._crit_edge2207.i:                                ; preds = %._crit_edge2207.loopexit.i, %bb.cc
  %.01482.lcssa.i = phi i32 [ 0, %bb.cc ], [ %i.ezb, %._crit_edge2207.loopexit.i ]
  %i.ezc = icmp eq i32 %.01482.lcssa.i, %.11488.lcssa.i
  br i1 %i.ezc, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %._crit_edge2207.i
  call void @BZ2_bz__AssertH__fail(i32 noundef 3007) #11
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %._crit_edge2207.i
  %i.ezd = load i32, ptr %i.nw, align 8, !tbaa !64
  %i.eze = icmp sgt i32 %i.ezd, 2
  br i1 %i.eze, label %bb.eh, label %sendMTFValues.exit

bb.eh:                                            ; preds = %bb.eg
  %i.ezf = load ptr, ptr @stderr, align 8, !tbaa !66
  %i.ezg = load i32, ptr %i.cka, align 4, !tbaa !17
  %i.ezh = sub nsw i32 %i.ezg, %i.cvd
  %i.ezi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ezf, ptr noundef nonnull @.str.10, i32 noundef %i.ezh) #10 ; 0 uses
  br label %sendMTFValues.exit

sendMTFValues.exit:                               ; preds = %bb.eg, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.ei

bb.ei:                                            ; preds = %sendMTFValues.exit, %bb.i
  %.not = icmp eq i8 %1, 0
  br i1 %.not, label %bsFinishWrite.exit, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ezj = getelementptr inbounds nuw i8, ptr %0, i64 644 ; 22 uses
  %i.ezk = load i32, ptr %i.ezj, align 4, !tbaa !15 ; 2 uses
  %i.ezl = icmp sgt i32 %i.ezk, 7
  %i.ezm = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 23 uses
  br i1 %i.ezl, label %.lr.ph.i.i136, label %.._crit_edge_crit_edge.i.i132

.._crit_edge_crit_edge.i.i132:                    ; preds = %bb.ej
  %.pre16.i.i133 = load i32, ptr %i.ezm, align 8, !tbaa !16
  %i.ezn = add nsw i32 %i.ezk, 8
  br label %bsPutUChar.exit139

.lr.ph.i.i136:                                    ; preds = %bb.ej
  %i.ezo = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %.pre.i.i137 = load i32, ptr %i.ezm, align 8, !tbaa !16
  %.pre15.i.i138 = load i32, ptr %i.ezo, align 4, !tbaa !17
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ek, %.lr.ph.i.i136
  %i.ezp = phi i32 [ %.pre15.i.i138, %.lr.ph.i.i136 ], [ %i.ezx, %bb.ek ]
  %i.ezq = phi i32 [ %.pre.i.i137, %.lr.ph.i.i136 ], [ %i.ezz, %bb.ek ]
  %i.ezr = lshr i32 %i.ezq, 24
  %i.ezs = trunc nuw i32 %i.ezr to i8
  %i.ezt = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.ezu = sext i32 %i.ezp to i64
  %i.ezv = getelementptr inbounds i8, ptr %i.ezt, i64 %i.ezu
  store i8 %i.ezs, ptr %i.ezv, align 1, !tbaa !19
  %i.ezw = load i32, ptr %i.ezo, align 4, !tbaa !17
  %i.ezx = add nsw i32 %i.ezw, 1                  ; 2 uses
  store i32 %i.ezx, ptr %i.ezo, align 4, !tbaa !17
  %i.ezy = load i32, ptr %i.ezm, align 8, !tbaa !16
  %i.ezz = shl i32 %i.ezy, 8                      ; 3 uses
  store i32 %i.ezz, ptr %i.ezm, align 8, !tbaa !16
  %i.faa = load i32, ptr %i.ezj, align 4, !tbaa !15 ; 3 uses
  %i.fab = add nsw i32 %i.faa, -8
  store i32 %i.fab, ptr %i.ezj, align 4, !tbaa !15
  %i.fac = icmp sgt i32 %i.faa, 15
  br i1 %i.fac, label %bb.ek, label %bsPutUChar.exit139, !llvm.loop !0

bsPutUChar.exit139:                               ; preds = %bb.ek, %.._crit_edge_crit_edge.i.i132
  %i.fad = phi i32 [ %.pre16.i.i133, %.._crit_edge_crit_edge.i.i132 ], [ %i.ezz, %bb.ek ]
  %.lcssa.i.i135 = phi i32 [ %i.ezn, %.._crit_edge_crit_edge.i.i132 ], [ %i.faa, %bb.ek ] ; 4 uses
  %i.fae = sub i32 32, %.lcssa.i.i135
  %i.faf = shl i32 23, %i.fae
  %i.fag = or i32 %i.faf, %i.fad                  ; 3 uses
  store i32 %i.fag, ptr %i.ezm, align 8, !tbaa !16
  store i32 %.lcssa.i.i135, ptr %i.ezj, align 4, !tbaa !15
  %i.fah = icmp sgt i32 %.lcssa.i.i135, 7
  br i1 %i.fah, label %.lr.ph.i.i144, label %.._crit_edge_crit_edge.i.i140

.._crit_edge_crit_edge.i.i140:                    ; preds = %bsPutUChar.exit139
  %i.fai = add nsw i32 %.lcssa.i.i135, 8
  br label %bsPutUChar.exit147

.lr.ph.i.i144:                                    ; preds = %bsPutUChar.exit139
  %i.faj = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %.pre15.i.i146 = load i32, ptr %i.faj, align 4, !tbaa !17
  br label %bb.el

bb.el:                                            ; preds = %bb.el, %.lr.ph.i.i144
  %i.fak = phi i32 [ %.pre15.i.i146, %.lr.ph.i.i144 ], [ %i.fas, %bb.el ]
  %i.fal = phi i32 [ %i.fag, %.lr.ph.i.i144 ], [ %i.fau, %bb.el ]
  %i.fam = lshr i32 %i.fal, 24
  %i.fan = trunc nuw i32 %i.fam to i8
  %i.fao = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.fap = sext i32 %i.fak to i64
  %i.faq = getelementptr inbounds i8, ptr %i.fao, i64 %i.fap
  store i8 %i.fan, ptr %i.faq, align 1, !tbaa !19
  %i.far = load i32, ptr %i.faj, align 4, !tbaa !17
  %i.fas = add nsw i32 %i.far, 1                  ; 2 uses
  store i32 %i.fas, ptr %i.faj, align 4, !tbaa !17
  %i.fat = load i32, ptr %i.ezm, align 8, !tbaa !16
  %i.fau = shl i32 %i.fat, 8                      ; 3 uses
  store i32 %i.fau, ptr %i.ezm, align 8, !tbaa !16
  %i.fav = load i32, ptr %i.ezj, align 4, !tbaa !15 ; 3 uses
  %i.faw = add nsw i32 %i.fav, -8
  store i32 %i.faw, ptr %i.ezj, align 4, !tbaa !15
  %i.fax = icmp sgt i32 %i.fav, 15
  br i1 %i.fax, label %bb.el, label %bsPutUChar.exit147, !llvm.loop !0

bsPutUChar.exit147:                               ; preds = %bb.el, %.._crit_edge_crit_edge.i.i140
  %i.fay = phi i32 [ %i.fag, %.._crit_edge_crit_edge.i.i140 ], [ %i.fau, %bb.el ]
  %.lcssa.i.i143 = phi i32 [ %i.fai, %.._crit_edge_crit_edge.i.i140 ], [ %i.fav, %bb.el ] ; 4 uses
  %i.faz = sub i32 32, %.lcssa.i.i143
  %i.fba = shl i32 114, %i.faz
  %i.fbb = or i32 %i.fba, %i.fay                  ; 3 uses
  store i32 %i.fbb, ptr %i.ezm, align 8, !tbaa !16
  store i32 %.lcssa.i.i143, ptr %i.ezj, align 4, !tbaa !15
  %i.fbc = icmp sgt i32 %.lcssa.i.i143, 7
  br i1 %i.fbc, label %.lr.ph.i.i152, label %.._crit_edge_crit_edge.i.i148

.._crit_edge_crit_edge.i.i148:                    ; preds = %bsPutUChar.exit147
  %i.fbd = add nsw i32 %.lcssa.i.i143, 8
  br label %bsPutUChar.exit155

.lr.ph.i.i152:                                    ; preds = %bsPutUChar.exit147
  %i.fbe = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %.pre15.i.i154 = load i32, ptr %i.fbe, align 4, !tbaa !17
  br label %bb.em

bb.em:                                            ; preds = %bb.em, %.lr.ph.i.i152
  %i.fbf = phi i32 [ %.pre15.i.i154, %.lr.ph.i.i152 ], [ %i.fbn, %bb.em ]
  %i.fbg = phi i32 [ %i.fbb, %.lr.ph.i.i152 ], [ %i.fbp, %bb.em ]
  %i.fbh = lshr i32 %i.fbg, 24
  %i.fbi = trunc nuw i32 %i.fbh to i8
  %i.fbj = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.fbk = sext i32 %i.fbf to i64
  %i.fbl = getelementptr inbounds i8, ptr %i.fbj, i64 %i.fbk
  store i8 %i.fbi, ptr %i.fbl, align 1, !tbaa !19
  %i.fbm = load i32, ptr %i.fbe, align 4, !tbaa !17
  %i.fbn = add nsw i32 %i.fbm, 1                  ; 2 uses
  store i32 %i.fbn, ptr %i.fbe, align 4, !tbaa !17
  %i.fbo = load i32, ptr %i.ezm, align 8, !tbaa !16
  %i.fbp = shl i32 %i.fbo, 8                      ; 3 uses
  store i32 %i.fbp, ptr %i.ezm, align 8, !tbaa !16
  %i.fbq = load i32, ptr %i.ezj, align 4, !tbaa !15 ; 3 uses
  %i.fbr = add nsw i32 %i.fbq, -8
  store i32 %i.fbr, ptr %i.ezj, align 4, !tbaa !15
  %i.fbs = icmp sgt i32 %i.fbq, 15
  br i1 %i.fbs, label %bb.em, label %bsPutUChar.exit155, !llvm.loop !0

bsPutUChar.exit155:                               ; preds = %bb.em, %.._crit_edge_crit_edge.i.i148
  %i.fbt = phi i32 [ %i.fbb, %.._crit_edge_crit_edge.i.i148 ], [ %i.fbp, %bb.em ]
  %.lcssa.i.i151 = phi i32 [ %i.fbd, %.._crit_edge_crit_edge.i.i148 ], [ %i.fbq, %bb.em ] ; 4 uses
  %i.fbu = sub i32 32, %.lcssa.i.i151
  %i.fbv = shl i32 69, %i.fbu
  %i.fbw = or i32 %i.fbv, %i.fbt                  ; 3 uses
  store i32 %i.fbw, ptr %i.ezm, align 8, !tbaa !16
  store i32 %.lcssa.i.i151, ptr %i.ezj, align 4, !tbaa !15
  %i.fbx = icmp sgt i32 %.lcssa.i.i151, 7
  br i1 %i.fbx, label %.lr.ph.i.i160, label %.._crit_edge_crit_edge.i.i156

.._crit_edge_crit_edge.i.i156:                    ; preds = %bsPutUChar.exit155
  %i.fby = add nsw i32 %.lcssa.i.i151, 8
  br label %bsPutUChar.exit163

.lr.ph.i.i160:                                    ; preds = %bsPutUChar.exit155
  %i.fbz = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %.pre15.i.i162 = load i32, ptr %i.fbz, align 4, !tbaa !17
  br label %bb.en

bb.en:                                            ; preds = %bb.en, %.lr.ph.i.i160
  %i.fca = phi i32 [ %.pre15.i.i162, %.lr.ph.i.i160 ], [ %i.fci, %bb.en ]
  %i.fcb = phi i32 [ %i.fbw, %.lr.ph.i.i160 ], [ %i.fck, %bb.en ]
  %i.fcc = lshr i32 %i.fcb, 24
  %i.fcd = trunc nuw i32 %i.fcc to i8
  %i.fce = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.fcf = sext i32 %i.fca to i64
  %i.fcg = getelementptr inbounds i8, ptr %i.fce, i64 %i.fcf
  store i8 %i.fcd, ptr %i.fcg, align 1, !tbaa !19
  %i.fch = load i32, ptr %i.fbz, align 4, !tbaa !17
  %i.fci = add nsw i32 %i.fch, 1                  ; 2 uses
  store i32 %i.fci, ptr %i.fbz, align 4, !tbaa !17
  %i.fcj = load i32, ptr %i.ezm, align 8, !tbaa !16
  %i.fck = shl i32 %i.fcj, 8                      ; 3 uses
  store i32 %i.fck, ptr %i.ezm, align 8, !tbaa !16
  %i.fcl = load i32, ptr %i.ezj, align 4, !tbaa !15 ; 3 uses
  %i.fcm = add nsw i32 %i.fcl, -8
  store i32 %i.fcm, ptr %i.ezj, align 4, !tbaa !15
  %i.fcn = icmp sgt i32 %i.fcl, 15
end_hunk_3
