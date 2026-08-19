inline.NumInlined: 91
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@BZ2_compressBlock:bb.a
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %.lr.ph101.i, !llvm.loop !42

bb.x:                                             ; preds = %bb.ag, %.lr.ph110.i
  %i.lc = phi i32 [ %i.ku, %.lr.ph110.i ], [ %i.mu, %bb.ag ] ; 2 uses
  %i.ld = phi i8 [ %.pre.i121, %.lr.ph110.i ], [ %i.mv, %bb.ag ] ; 2 uses
  %i.le = phi i8 [ %.pre.i121, %.lr.ph110.i ], [ %i.lp, %bb.ag ]
  %indvars.iv120.i = phi i64 [ 0, %.lr.ph110.i ], [ %indvars.iv.next121.i, %bb.ag ] ; 2 uses
  %.079108.i = phi i32 [ 0, %.lr.ph110.i ], [ %.4.i, %bb.ag ] ; 3 uses
  %.082107.i = phi i32 [ 0, %.lr.ph110.i ], [ %.385.i, %bb.ag ] ; 4 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv120.i
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !36
  %i.lh = add i32 %i.lg, -1                       ; 2 uses
  %i.li = icmp slt i32 %i.lh, 0
  %i.lj = select i1 %i.li, i32 %i.lc, i32 0
  %spec.select.i = add nsw i32 %i.lj, %i.lh
  %i.lk = sext i32 %spec.select.i to i64
  %i.ll = getelementptr inbounds i8, ptr %i.jp, i64 %i.lk
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !26
  %i.ln = zext i8 %i.lm to i64
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.ln
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !26  ; 5 uses
  %i.lq = icmp eq i8 %i.le, %i.lp
  br i1 %i.lq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.lr = add nsw i32 %.082107.i, 1
  br label %bb.ag

bb.z:                                             ; preds = %bb.x
  %i.ls = icmp sgt i32 %.082107.i, 0
  br i1 %i.ls, label %bb.aa, label %.loopexit96.i

bb.aa:                                            ; preds = %bb.z
  %i.lt = add nsw i32 %.082107.i, -1
  %i.lu = sext i32 %.079108.i to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.af, %bb.aa
  %indvars.iv117.i = phi i64 [ %indvars.iv.next118.i, %bb.af ], [ %i.lu, %bb.aa ] ; 2 uses
  %.183.i = phi i32 [ %i.md, %bb.af ], [ %i.lt, %bb.aa ] ; 3 uses
  %i.lv = and i32 %.183.i, 1
  %.not94.i = icmp eq i32 %i.lv, 0
  br i1 %.not94.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.lw = load i32, ptr %i.kw, align 4, !tbaa !36
  %i.lx = add nsw i32 %i.lw, 1
  store i32 %i.lx, ptr %i.kw, align 4, !tbaa !36
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.ly = load i32, ptr %i.kx, align 8, !tbaa !36
  %i.lz = add nsw i32 %i.ly, 1
  store i32 %i.lz, ptr %i.kx, align 8, !tbaa !36
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sink.i = phi i16 [ 0, %bb.ad ], [ 1, %bb.ac ]
  %i.ma = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %indvars.iv117.i
  store i16 %.sink.i, ptr %i.ma, align 2, !tbaa !43
  %indvars.iv.next118.i = add nsw i64 %indvars.iv117.i, 1 ; 2 uses
  %i.mb = icmp slt i32 %.183.i, 2
  br i1 %i.mb, label %.loopexit96.loopexit.i, label %bb.af

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
  %i.mf = load i8, ptr %i.ky, align 1, !tbaa !26  ; 2 uses
  store i8 %i.ld, ptr %i.ky, align 1, !tbaa !26
  %.not95102.i = icmp eq i8 %i.lp, %i.mf
  br i1 %.not95102.i, label %._crit_edge.i, label %.lr.ph105.i

.lr.ph105.i:                                      ; preds = %.loopexit96.i, %.lr.ph105.i
  %.077104.i = phi ptr [ %i.mg, %.lr.ph105.i ], [ %i.ky, %.loopexit96.i ]
  %.078103.i = phi i8 [ %i.mh, %.lr.ph105.i ], [ %i.mf, %.loopexit96.i ]
  %i.mg = getelementptr inbounds nuw i8, ptr %.077104.i, i64 1 ; 4 uses
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !26  ; 2 uses
  store i8 %.078103.i, ptr %i.mg, align 1, !tbaa !26
  %.not95.i = icmp eq i8 %i.lp, %i.mh
  br i1 %.not95.i, label %._crit_edge.i, label %.lr.ph105.i, !llvm.loop !45

._crit_edge.i:                                    ; preds = %.lr.ph105.i, %.loopexit96.i
  %.077.lcssa.i = phi ptr [ %i.ky, %.loopexit96.i ], [ %i.mg, %.lr.ph105.i ]
  %i.mi = ptrtoint ptr %.077.lcssa.i to i64
  %i.mj = sub i64 %i.mi, %i.kz
  %i.mk = trunc i64 %i.mj to i32
  %i.ml = add nsw i32 %i.mk, 1                    ; 2 uses
  %i.mm = trunc i32 %i.ml to i16
  %i.mn = sext i32 %.3.i to i64
  %i.mo = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %i.mn
  store i16 %i.mm, ptr %i.mo, align 2, !tbaa !43
  %i.mp = add nsw i32 %.3.i, 1
  %i.mq = sext i32 %i.ml to i64
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.kx, i64 %i.mq ; 2 uses
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !36
  %i.mt = add nsw i32 %i.ms, 1
  store i32 %i.mt, ptr %i.mr, align 4, !tbaa !36
  %.pre127.i = load i32, ptr %i.f, align 4, !tbaa !16
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.i, %bb.y
  %i.mu = phi i32 [ %i.lc, %bb.y ], [ %.pre127.i, %._crit_edge.i ] ; 2 uses
  %i.mv = phi i8 [ %i.ld, %bb.y ], [ %i.lp, %._crit_edge.i ]
  %.385.i = phi i32 [ %i.lr, %bb.y ], [ %.284.i, %._crit_edge.i ] ; 3 uses
  %.4.i = phi i32 [ %.079108.i, %bb.y ], [ %i.mp, %._crit_edge.i ] ; 3 uses
  %indvars.iv.next121.i = add nuw nsw i64 %indvars.iv120.i, 1 ; 2 uses
  %i.mw = sext i32 %i.mu to i64
  %i.mx = icmp slt i64 %indvars.iv.next121.i, %i.mw
  br i1 %i.mx, label %bb.x, label %._crit_edge111.i, !llvm.loop !46

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
  %i.nc = load i32, ptr %i.kw, align 4, !tbaa !36
  %i.nd = add nsw i32 %i.nc, 1
  store i32 %i.nd, ptr %i.kw, align 4, !tbaa !36
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.ne = load i32, ptr %i.kx, align 8, !tbaa !36
  %i.nf = add nsw i32 %i.ne, 1
  store i32 %i.nf, ptr %i.kx, align 8, !tbaa !36
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sink126.i = phi i16 [ 0, %bb.ak ], [ 1, %bb.aj ]
  %i.ng = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %indvars.iv123.i
  store i16 %.sink126.i, ptr %i.ng, align 2, !tbaa !43
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
  store i16 %i.nm, ptr %i.no, align 2, !tbaa !43
  %i.np = add nsw i32 %.7.i, 1                    ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.nr = sext i32 %i.nl to i64
  %i.ns = getelementptr inbounds [4 x i8], ptr %i.nq, i64 %i.nr ; 2 uses
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !36
  %i.nu = add nsw i32 %i.nt, 1
  store i32 %i.nu, ptr %i.ns, align 4, !tbaa !36
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 668 ; 8 uses
  store i32 %i.np, ptr %i.nv, align 4, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 7 uses
  %i.nx = load i32, ptr %i.nw, align 8, !tbaa !21
  %i.ny = icmp sgt i32 %i.nx, 2
  br i1 %i.ny, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %generateMTFValues.exit
  %i.nz = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.oa = load i32, ptr %i.f, align 4, !tbaa !16
  %i.ob = load i32, ptr %i.js, align 4, !tbaa !34
  %i.oc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nz, ptr noundef nonnull @.str.2, i32 noundef %i.oa, i32 noundef %i.np, i32 noundef %i.ob) #10 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %generateMTFValues.exit
  %i.od = load i32, ptr %i.js, align 4, !tbaa !34 ; 4 uses
  %i.oe = add i32 %i.od, 2                        ; 7 uses
  %i.of = icmp sgt i32 %i.od, -2                  ; 6 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 37708 ; 9 uses
  br i1 %i.of, label %.preheader1980.preheader.i, label %.split2109.i

.preheader1980.preheader.i:                       ; preds = %bb.ao
  %smax.i = call i32 @llvm.smax.i32(i32 %i.oe, i32 1)
  %i.og = zext nneg i32 %smax.i to i64            ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %2, i8 15, i64 %i.og, i1 false), !tbaa !26
  %scevgep.1.i = getelementptr inbounds nuw i8, ptr %0, i64 37966
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.1.i, i8 15, i64 %i.og, i1 false), !tbaa !26
  %scevgep.2.i = getelementptr inbounds nuw i8, ptr %0, i64 38224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.2.i, i8 15, i64 %i.og, i1 false), !tbaa !26
  %scevgep.3.i = getelementptr inbounds nuw i8, ptr %0, i64 38482
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.3.i, i8 15, i64 %i.og, i1 false), !tbaa !26
  %scevgep.4.i = getelementptr inbounds nuw i8, ptr %0, i64 38740
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.4.i, i8 15, i64 %i.og, i1 false), !tbaa !26
  %scevgep.5.i = getelementptr inbounds nuw i8, ptr %0, i64 38998
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.5.i, i8 15, i64 %i.og, i1 false), !tbaa !26
  br label %.split2109.i

.split2109.i:                                     ; preds = %.preheader1980.preheader.i, %bb.ao
  %i.oh = load i32, ptr %i.nv, align 4, !tbaa !47 ; 2 uses
  %i.oi = icmp sgt i32 %i.oh, 0
  br i1 %i.oi, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.split2109.i
  call void @BZ2_bz__AssertH__fail(i32 noundef 3001) #11
  %.pr.i = load i32, ptr %i.nv, align 4, !tbaa !47
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.split2109.i
  %i.oj = phi i32 [ %.pr.i, %bb.ap ], [ %i.oh, %.split2109.i ] ; 5 uses
  %i.ok = icmp slt i32 %i.oj, 200
  br i1 %i.ok, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ol = icmp samesign ult i32 %i.oj, 600
  br i1 %i.ol, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.om = icmp samesign ult i32 %i.oj, 1200
  br i1 %i.om, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.on = icmp samesign ugt i32 %i.oj, 2399       ; 2 uses
  %.1516.i = select i1 %i.on, i32 6, i32 5
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq
  %i.oo = phi i1 [ false, %bb.as ], [ false, %bb.aq ], [ false, %bb.ar ], [ %i.on, %bb.at ] ; 3 uses
  %.01481.i = phi i32 [ 4, %bb.as ], [ 2, %bb.aq ], [ 3, %bb.ar ], [ %.1516.i, %bb.at ] ; 7 uses
  %i.op = sext i32 %i.od to i64
  %smax2353.i = call i32 @llvm.smax.i32(i32 %i.oe, i32 1)
  %i.oq = zext nneg i32 %.01481.i to i64          ; 17 uses
  %wide.trip.count.i122 = zext nneg i32 %smax2353.i to i64 ; 12 uses
  %min.iters.check1090 = icmp slt i32 %i.oe, 8
  %min.iters.check1092 = icmp slt i32 %i.oe, 16
  %i.or = and i64 %wide.trip.count.i122, 8
  %n.vec1094 = and i64 %wide.trip.count.i122, 2147483632 ; 4 uses
  %cmp.n1105 = icmp eq i64 %n.vec1094, %wide.trip.count.i122
  %min.epilog.iters.check1110.not.not = icmp eq i64 %i.or, 0
  %n.vec1112 = and i64 %wide.trip.count.i122, 2147483640 ; 3 uses
  %cmp.n1126 = icmp eq i64 %n.vec1112, %wide.trip.count.i122
  br label %bb.av

.preheader1979.i:                                 ; preds = %._crit_edge2118.i
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 45448 ; 4 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 37966
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 51640 ; 51 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 38482
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 38224
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 38998
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 38740
  %i.oz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 1704 ; 3 uses
  %i.pb = shl nuw nsw i64 %i.oq, 2
  %i.pc = shl nuw nsw i64 %wide.trip.count.i122, 2
  %i.pd = shl nuw nsw i64 %i.oq, 1
  %brmerge.not.i = and i1 %i.of, %i.oo
  %min.iters.check1128 = icmp samesign ult i32 %.01481.i, 4
  %n.vec1130 = and i64 %i.oq, 4                   ; 2 uses
  %cmp.n1135 = icmp eq i64 %n.vec1130, %i.oq
  %xtraiter1377 = and i64 %i.oq, 3                ; 3 uses
  %i.pe = icmp samesign ult i32 %.01481.i, 4
  %unroll_iter1383 = and i64 %i.oq, 4
  %lcmp.mod1379.not = icmp eq i64 %xtraiter1377, 0
  %lcmp.mod1382 = icmp ne i64 %xtraiter1377, 0
  br label %.preheader1978.i

bb.av:                                            ; preds = %._crit_edge2118.i, %bb.au
  %indvars.iv2354.i = phi i64 [ %i.oq, %bb.au ], [ %indvars.iv.next2355.i, %._crit_edge2118.i ] ; 6 uses
  %.014692121.i = phi i32 [ 0, %bb.au ], [ %i.rc, %._crit_edge2118.i ] ; 4 uses
  %.014792120.i = phi i32 [ %i.oj, %bb.au ], [ %i.rd, %._crit_edge2118.i ] ; 2 uses
  %i.pf = trunc nuw nsw i64 %indvars.iv2354.i to i32 ; 3 uses
  %i.pg = sdiv i32 %.014792120.i, %i.pf           ; 2 uses
  %i.ph = add nsw i32 %.014692121.i, -1           ; 3 uses
  %i.pi = icmp sgt i32 %i.pg, 0
  %i.pj = icmp sle i32 %i.ph, %i.od
  %i.pk = select i1 %i.pi, i1 %i.pj, i1 false
  br i1 %i.pk, label %.lr.ph.preheader.i, label %._crit_edge2113.thread.i

.lr.ph.preheader.i:                               ; preds = %bb.av
  %i.pl = sext i32 %i.ph to i64
  br label %.lr.ph.i129

.lr.ph.i129:                                      ; preds = %.lr.ph.i129, %.lr.ph.preheader.i
  %indvars.iv.i130 = phi i64 [ %i.pl, %.lr.ph.preheader.i ], [ %indvars.iv.next.i131, %.lr.ph.i129 ] ; 2 uses
  %.014772110.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.po, %.lr.ph.i129 ] ; 2 uses
  %indvars.iv.next.i131 = add nsw i64 %indvars.iv.i130, 1 ; 3 uses
  %i.pm = getelementptr inbounds [4 x i8], ptr %i.nq, i64 %indvars.iv.next.i131
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !36
  %i.po = add nsw i32 %i.pn, %.014772110.i        ; 5 uses
  %i.pp = icmp slt i32 %i.po, %i.pg
  %i.pq = icmp slt i64 %indvars.iv.i130, %i.op
  %i.pr = and i1 %i.pq, %i.pp
  br i1 %i.pr, label %.lr.ph.i129, label %._crit_edge2113.i, !llvm.loop !48

._crit_edge2113.i:                                ; preds = %.lr.ph.i129
  %i.ps = trunc nsw i64 %indvars.iv.next.i131 to i32 ; 4 uses
  %i.pt = icmp slt i32 %.014692121.i, %i.ps
  br i1 %i.pt, label %bb.aw, label %._crit_edge2113.thread.i

bb.aw:                                            ; preds = %._crit_edge2113.i
  %i.pu = icmp ne i64 %indvars.iv2354.i, %i.oq
  %i.pv = icmp ne i64 %indvars.iv2354.i, 1
  %or.cond.i = and i1 %i.pu, %i.pv
  br i1 %or.cond.i, label %bb.ax, label %._crit_edge2113.thread.i

bb.ax:                                            ; preds = %bb.aw
  %i.pw = sub i32 %.01481.i, %i.pf
  %i.px = and i32 %i.pw, -2147483647
  %i.py = icmp eq i32 %i.px, 1                    ; 2 uses
  %spec.select = select i1 %i.py, i32 %.014772110.i, i32 %i.po
  %i.pz = sext i1 %i.py to i32
  %spec.select183 = add nsw i32 %i.ps, %i.pz
  br label %._crit_edge2113.thread.i

._crit_edge2113.thread.i:                         ; preds = %bb.ax, %bb.aw, %._crit_edge2113.i, %bb.av
  %.11478.i = phi i32 [ 0, %bb.av ], [ %spec.select, %bb.ax ], [ %i.po, %bb.aw ], [ %i.po, %._crit_edge2113.i ] ; 3 uses
  %.11473.i = phi i32 [ %i.ph, %bb.av ], [ %spec.select183, %bb.ax ], [ %i.ps, %bb.aw ], [ %i.ps, %._crit_edge2113.i ] ; 3 uses
  %i.qa = load i32, ptr %i.nw, align 8, !tbaa !21
  %i.qb = icmp sgt i32 %i.qa, 2
  br i1 %i.qb, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %._crit_edge2113.thread.i
  %i.qc = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.qd = sitofp i32 %.11478.i to float
  %i.qe = fpext nnan ninf float %i.qd to double
  %i.qf = fmul nnan double %i.qe, 1.000000e+02
  %i.qg = load i32, ptr %i.nv, align 4, !tbaa !47
  %i.qh = sitofp i32 %i.qg to float
  %i.qi = fpext float %i.qh to double
  %i.qj = fdiv double %i.qf, %i.qi
  %i.qk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qc, ptr noundef nonnull @.str.3, i32 noundef %i.pf, i32 noundef %.014692121.i, i32 noundef %.11473.i, i32 noundef %.11478.i, double noundef %i.qj) #10 ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %._crit_edge2113.thread.i
  br i1 %i.of, label %iter.check1107, label %._crit_edge2118.i

iter.check1107:                                   ; preds = %bb.az
  %i.ql = getelementptr [258 x i8], ptr %0, i64 %indvars.iv2354.i
  %i.qm = getelementptr i8, ptr %i.ql, i64 37450  ; 3 uses
  %i.qn = sext i32 %.11473.i to i64               ; 3 uses
  %i.qo = sext i32 %.014692121.i to i64           ; 3 uses
  br i1 %min.iters.check1090, label %vec.epilog.scalar.ph1108.preheader, label %vector.main.loop.iter.check1091

vector.main.loop.iter.check1091:                  ; preds = %iter.check1107
  br i1 %min.iters.check1092, label %vec.epilog.ph1111, label %vector.ph1093

vector.ph1093:                                    ; preds = %vector.main.loop.iter.check1091
  %broadcast.splatinsert1095 = insertelement <16 x i64> poison, i64 %i.qn, i64 0
  %broadcast.splat1096 = shufflevector <16 x i64> %broadcast.splatinsert1095, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert1097 = insertelement <16 x i64> poison, i64 %i.qo, i64 0
  %broadcast.splat1098 = shufflevector <16 x i64> %broadcast.splatinsert1097, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body1099

vector.body1099:                                  ; preds = %vector.body1099, %vector.ph1093
  %index1100 = phi i64 [ 0, %vector.ph1093 ], [ %index.next1102, %vector.body1099 ] ; 2 uses
  %vec.ind1101 = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph1093 ], [ %vec.ind.next1103, %vector.body1099 ] ; 3 uses
  %i.qp = icmp slt <16 x i64> %vec.ind1101, %broadcast.splat1098
  %i.qq = icmp sgt <16 x i64> %vec.ind1101, %broadcast.splat1096
  %i.qr = select <16 x i1> %i.qp, <16 x i1> splat (i1 true), <16 x i1> %i.qq
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qm, i64 %index1100
  %i.qt = select <16 x i1> %i.qr, <16 x i8> splat (i8 15), <16 x i8> zeroinitializer
  store <16 x i8> %i.qt, ptr %i.qs, align 1, !tbaa !26
  %index.next1102 = add nuw i64 %index1100, 16    ; 2 uses
  %vec.ind.next1103 = add nuw nsw <16 x i64> %vec.ind1101, splat (i64 16)
  %i.qu = icmp eq i64 %index.next1102, %n.vec1094
  br i1 %i.qu, label %middle.block1104, label %vector.body1099, !llvm.loop !49

middle.block1104:                                 ; preds = %vector.body1099
  br i1 %cmp.n1105, label %._crit_edge2118.i, label %vec.epilog.iter.check1109

vec.epilog.iter.check1109:                        ; preds = %middle.block1104
  br i1 %min.epilog.iters.check1110.not.not, label %vec.epilog.scalar.ph1108.preheader, label %vec.epilog.ph1111, !prof !50

vec.epilog.ph1111:                                ; preds = %vector.main.loop.iter.check1091, %vec.epilog.iter.check1109
  %vec.epilog.resume.val1106 = phi i64 [ %n.vec1094, %vec.epilog.iter.check1109 ], [ 0, %vector.main.loop.iter.check1091 ] ; 2 uses
  %broadcast.splatinsert1113 = insertelement <8 x i64> poison, i64 %i.qn, i64 0
  %broadcast.splat1114 = shufflevector <8 x i64> %broadcast.splatinsert1113, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1115 = insertelement <8 x i64> poison, i64 %i.qo, i64 0
  %broadcast.splat1116 = shufflevector <8 x i64> %broadcast.splatinsert1115, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1117 = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val1106, i64 0
  %broadcast.splat1118 = shufflevector <8 x i64> %broadcast.splatinsert1117, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction1119 = or disjoint <8 x i64> %broadcast.splat1118, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body1120

vec.epilog.vector.body1120:                       ; preds = %vec.epilog.vector.body1120, %vec.epilog.ph1111
  %index1121 = phi i64 [ %vec.epilog.resume.val1106, %vec.epilog.ph1111 ], [ %index.next1123, %vec.epilog.vector.body1120 ] ; 2 uses
  %vec.ind1122 = phi <8 x i64> [ %induction1119, %vec.epilog.ph1111 ], [ %vec.ind.next1124, %vec.epilog.vector.body1120 ] ; 3 uses
  %i.qv = icmp slt <8 x i64> %vec.ind1122, %broadcast.splat1116
  %i.qw = icmp sgt <8 x i64> %vec.ind1122, %broadcast.splat1114
  %i.qx = select <8 x i1> %i.qv, <8 x i1> splat (i1 true), <8 x i1> %i.qw
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qm, i64 %index1121
  %i.qz = select <8 x i1> %i.qx, <8 x i8> splat (i8 15), <8 x i8> zeroinitializer
  store <8 x i8> %i.qz, ptr %i.qy, align 1, !tbaa !26
  %index.next1123 = add nuw i64 %index1121, 8     ; 2 uses
  %vec.ind.next1124 = add nuw nsw <8 x i64> %vec.ind1122, splat (i64 8)
  %i.ra = icmp eq i64 %index.next1123, %n.vec1112
  br i1 %i.ra, label %vec.epilog.middle.block1125, label %vec.epilog.vector.body1120, !llvm.loop !51

vec.epilog.middle.block1125:                      ; preds = %vec.epilog.vector.body1120
  br i1 %cmp.n1126, label %._crit_edge2118.i, label %vec.epilog.scalar.ph1108.preheader

vec.epilog.scalar.ph1108.preheader:               ; preds = %iter.check1107, %vec.epilog.iter.check1109, %vec.epilog.middle.block1125
  %indvars.iv2350.i.ph = phi i64 [ 0, %iter.check1107 ], [ %n.vec1094, %vec.epilog.iter.check1109 ], [ %n.vec1112, %vec.epilog.middle.block1125 ]
  br label %vec.epilog.scalar.ph1108

vec.epilog.scalar.ph1108:                         ; preds = %vec.epilog.scalar.ph1108.preheader, %vec.epilog.scalar.ph1108
  %indvars.iv2350.i = phi i64 [ %indvars.iv.next2351.i, %vec.epilog.scalar.ph1108 ], [ %indvars.iv2350.i.ph, %vec.epilog.scalar.ph1108.preheader ] ; 4 uses
  %.not1514.i = icmp slt i64 %indvars.iv2350.i, %i.qo
  %.not1515.i = icmp sgt i64 %indvars.iv2350.i, %i.qn
  %or.cond1517.i = select i1 %.not1514.i, i1 true, i1 %.not1515.i
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qm, i64 %indvars.iv2350.i
  %..i = select i1 %or.cond1517.i, i8 15, i8 0
  store i8 %..i, ptr %i.rb, align 1, !tbaa !26
  %indvars.iv.next2351.i = add nuw nsw i64 %indvars.iv2350.i, 1 ; 2 uses
  %exitcond.not.i128 = icmp eq i64 %indvars.iv.next2351.i, %wide.trip.count.i122
  br i1 %exitcond.not.i128, label %._crit_edge2118.i, label %vec.epilog.scalar.ph1108, !llvm.loop !52

._crit_edge2118.i:                                ; preds = %vec.epilog.scalar.ph1108, %middle.block1104, %vec.epilog.middle.block1125, %bb.az
  %indvars.iv.next2355.i = add nsw i64 %indvars.iv2354.i, -1
  %i.rc = add nsw i32 %.11473.i, 1
  %i.rd = sub nsw i32 %.014792120.i, %.11478.i
  %i.re = icmp sgt i64 %indvars.iv2354.i, 1
  br i1 %i.re, label %bb.av, label %.preheader1979.i, !llvm.loop !53

.preheader1978.i:                                 ; preds = %bb.bg, %.preheader1979.i
  %.014892152.i = phi i32 [ 0, %.preheader1979.i ], [ %i.beg, %bb.bg ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, i8 0, i64 %i.pb, i1 false), !tbaa !36
  br i1 %i.of, label %.preheader1974.i.epil, label %.loopexit1976.i

.preheader1974.i.epil:                            ; preds = %.preheader1978.i, %.preheader1974.i.epil
  %indvar.i.epil = phi i64 [ %indvar.next.i.epil, %.preheader1974.i.epil ], [ 0, %.preheader1978.i ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader1974.i.epil ], [ 0, %.preheader1978.i ]
  %3 = getelementptr inbounds nuw [1032 x i8], ptr %i.os, i64 %indvar.i.epil
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %3, i8 0, i64 %i.pc, i1 false), !tbaa !36
  %indvar.next.i.epil = add nuw nsw i64 %indvar.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.oq
  br i1 %epil.iter.cmp.not, label %.split2127.i, label %.preheader1974.i.epil, !llvm.loop !54

.split2127.i:                                     ; preds = %.preheader1974.i.epil
  br i1 %brmerge.not.i, label %.lr.ph2129.i, label %.loopexit1976.i

.lr.ph2129.i:                                     ; preds = %.split2127.i, %.lr.ph2129.i
  %indvars.iv2367.i = phi i64 [ %indvars.iv.next2368.i, %.lr.ph2129.i ], [ 0, %.split2127.i ] ; 8 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.ot, i64 %indvars.iv2367.i
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !26
  %i.rh = zext i8 %i.rg to i32
  %i.ri = shl nuw nsw i32 %i.rh, 16
  %i.rj = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv2367.i
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !26
  %i.rl = zext i8 %i.rk to i32
  %i.rm = or disjoint i32 %i.ri, %i.rl
  %i.rn = getelementptr inbounds nuw [16 x i8], ptr %i.ou, i64 %indvars.iv2367.i ; 3 uses
  store i32 %i.rm, ptr %i.rn, align 8, !tbaa !36
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ov, i64 %indvars.iv2367.i
  %i.rp = load i8, ptr %i.ro, align 1, !tbaa !26
  %i.rq = zext i8 %i.rp to i32
  %i.rr = shl nuw nsw i32 %i.rq, 16
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ow, i64 %indvars.iv2367.i
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !26
  %i.ru = zext i8 %i.rt to i32
  %i.rv = or disjoint i32 %i.rr, %i.ru
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rn, i64 4
  store i32 %i.rv, ptr %i.rw, align 4, !tbaa !36
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ox, i64 %indvars.iv2367.i
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !26
  %i.rz = zext i8 %i.ry to i32
  %i.sa = shl nuw nsw i32 %i.rz, 16
  %i.sb = getelementptr inbounds nuw i8, ptr %i.oy, i64 %indvars.iv2367.i
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !26
  %i.sd = zext i8 %i.sc to i32
  %i.se = or disjoint i32 %i.sa, %i.sd
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  store i32 %i.se, ptr %i.sf, align 8, !tbaa !36
  %indvars.iv.next2368.i = add nuw nsw i64 %indvars.iv2367.i, 1 ; 2 uses
  %exitcond2371.not.i = icmp eq i64 %indvars.iv.next2368.i, %wide.trip.count.i122
  br i1 %exitcond2371.not.i, label %.loopexit1976.i, label %.lr.ph2129.i, !llvm.loop !56

.loopexit1976.i:                                  ; preds = %.lr.ph2129.i, %.split2127.i, %.preheader1978.i
  %i.sg = load i32, ptr %i.nv, align 4, !tbaa !47 ; 2 uses
  %.not15102141.i = icmp sgt i32 %i.sg, 0
  br i1 %.not15102141.i, label %.lr.ph2146.i, label %._crit_edge2147.i

.lr.ph2146.i:                                     ; preds = %.loopexit1976.i, %.loopexit1971.i
  %indvars.iv2396.i = phi i64 [ %indvars.iv.next2397.i, %.loopexit1971.i ], [ 0, %.loopexit1976.i ] ; 2 uses
  %i.sh = phi i32 [ %i.bdr, %.loopexit1971.i ], [ %i.sg, %.loopexit1976.i ] ; 3 uses
  %.114702144.i = phi i32 [ %i.bdq, %.loopexit1971.i ], [ 0, %.loopexit1976.i ] ; 12 uses
  %.014762143.i = phi i32 [ %i.aqf, %.loopexit1971.i ], [ 0, %.loopexit1976.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, i8 0, i64 %i.pd, i1 false), !tbaa !43
  %i.si = add i32 %.114702144.i, 49
  %i.sj = add nsw i32 %i.sh, -1
  %spec.select.i127 = call i32 @llvm.smin.i32(i32 %i.si, i32 %i.sj) ; 4 uses
  %i.sk = sub nsw i32 %spec.select.i127, %.114702144.i
  %i.sl = icmp eq i32 %i.sk, 49
  %or.cond1519.i = select i1 %i.oo, i1 %i.sl, i1 false ; 2 uses
  br i1 %or.cond1519.i, label %bb.ba, label %.preheader1972.i

.preheader1972.i:                                 ; preds = %.lr.ph2146.i
  %.not15122132.not.i = icmp sgt i32 %i.sh, %.114702144.i
  br i1 %.not15122132.not.i, label %.lr.ph2134.preheader.i, label %.loopexit1973.i.preheader

.lr.ph2134.preheader.i:                           ; preds = %.preheader1972.i
  %i.sm = sext i32 %.114702144.i to i64
  %smax2383.i = call i32 @llvm.smax.i32(i32 %.114702144.i, i32 %spec.select.i127)
  %i.sn = add nsw i32 %smax2383.i, 1
  br label %.lr.ph2134.i

bb.ba:                                            ; preds = %.lr.ph2146.i
  %i.so = sext i32 %.114702144.i to i64
  %i.sp = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %i.so ; 50 uses
  %i.sq = load i16, ptr %i.sp, align 2, !tbaa !43
  %i.sr = zext i16 %i.sq to i64
  %i.ss = getelementptr inbounds nuw [16 x i8], ptr %i.ou, i64 %i.sr ; 3 uses
  %i.st = load i32, ptr %i.ss, align 8, !tbaa !36
  %i.su = getelementptr inbounds nuw i8, ptr %i.ss, i64 4
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !36
  %i.sw = getelementptr inbounds nuw i8, ptr %i.ss, i64 8
  %i.sx = load i32, ptr %i.sw, align 8, !tbaa !36
  %i.sy = getelementptr i8, ptr %i.sp, i64 2
  %i.sz = load i16, ptr %i.sy, align 2, !tbaa !43
  %i.ta = zext i16 %i.sz to i64
  %i.tb = getelementptr inbounds nuw [16 x i8], ptr %i.ou, i64 %i.ta ; 3 uses
  %i.tc = load i32, ptr %i.tb, align 8, !tbaa !36
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 4
  %i.te = load i32, ptr %i.td, align 4, !tbaa !36
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  %i.tg = load i32, ptr %i.tf, align 8, !tbaa !36
  %i.th = add i32 %i.tg, %i.sx
  %i.ti = getelementptr i8, ptr %i.sp, i64 4
  %i.tj = load i16, ptr %i.ti, align 2, !tbaa !43
  %i.tk = zext i16 %i.tj to i64
  %i.tl = getelementptr inbounds nuw [16 x i8], ptr %i.ou, i64 %i.tk ; 3 uses
  %i.tm = load i32, ptr %i.tl, align 8, !tbaa !36
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tl, i64 4
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !36
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  %i.tq = load i32, ptr %i.tp, align 8, !tbaa !36
  %i.tr = add i32 %i.th, %i.tq
  %i.ts = getelementptr i8, ptr %i.sp, i64 6
  %i.tt = load i16, ptr %i.ts, align 2, !tbaa !43
  %i.tu = zext i16 %i.tt to i64
  %i.tv = getelementptr inbounds nuw [16 x i8], ptr %i.ou, i64 %i.tu ; 3 uses
  %i.tw = load i32, ptr %i.tv, align 8, !tbaa !36
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tv, i64 4
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !36
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  %i.ua = load i32, ptr %i.tz, align 8, !tbaa !36
  %i.ub = add i32 %i.tr, %i.ua
  %i.uc = getelementptr i8, ptr %i.sp, i64 8
  %i.ud = load i16, ptr %i.uc, align 2, !tbaa !43
  %i.ue = zext i16 %i.ud to i64
  %i.uf = getelementptr inbounds nuw [16 x i8], ptr %i.ou, i64 %i.ue ; 3 uses
  %i.ug = load i32, ptr %i.uf, align 8, !tbaa !36
  %i.uh = getelementptr inbounds nuw i8, ptr %i.uf, i64 4
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !36
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uf, i64 8
  %i.uk = load i32, ptr %i.uj, align 8, !tbaa !36
  %i.ul = add i32 %i.ub, %i.uk
  %i.um = getelementptr i8, ptr %i.sp, i64 10
  %i.un = load i16, ptr %i.um, align 2, !tbaa !43
  %i.uo = zext i16 %i.un to i64
  %i.up = getelementptr inbounds nuw [16 x i8], ptr %i.ou, i64 %i.uo ; 3 uses
  %i.uq = load i32, ptr %i.up, align 8, !tbaa !36
  %i.ur = getelementptr inbounds nuw i8, ptr %i.up, i64 4
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !36
  %i.ut = getelementptr inbounds nuw i8, ptr %i.up, i64 8
  %i.uu = load i32, ptr %i.ut, align 8, !tbaa !36
  %i.uv = add i32 %i.ul, %i.uu
  %i.uw = getelementptr i8, ptr %i.sp, i64 12
  %i.ux = load i16, ptr %i.uw, align 2, !tbaa !43
  %i.uy = zext i16 %i.ux to i64
  %i.uz = getelementptr inbounds nuw [16 x i8], ptr %i.ou, i64 %i.uy ; 3 uses
  %i.va = load i32, ptr %i.uz, align 8, !tbaa !36
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uz, i64 4
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !36
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  %i.ve = load i32, ptr %i.vd, align 8, !tbaa !36
  %i.vf = add i32 %i.uv, %i.ve
  %i.vg = getelementptr i8, ptr %i.sp, i64 14
  %i.vh = load i16, ptr %i.vg, align 2, !tbaa !43
  %i.vi = zext i16 %i.vh to i64
  %i.vj = getelementptr inbounds nuw [16 x i8], ptr %i.ou, i64 %i.vi ; 3 uses
  %i.vk = load i32, ptr %i.vj, align 8, !tbaa !36
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vj, i64 4
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !36
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vj, i64 8
  %i.vo = load i32, ptr %i.vn, align 8, !tbaa !36
  %i.vp = add i32 %i.vf, %i.vo
  %i.vq = getelementptr i8, ptr %i.sp, i64 16
  %i.vr = load i16, ptr %i.vq, align 2, !tbaa !43
  %i.vs = zext i16 %i.vr to i64
  %i.vt = getelementptr inbounds nuw [16 x i8], ptr %i.ou, i64 %i.vs ; 3 uses
  %i.vu = load i32, ptr %i.vt, align 8, !tbaa !36
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vt, i64 4
  %i.vw = load i32, ptr %i.vv, align 4, !tbaa !36
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vt, i64 8
  %i.vy = load i32, ptr %i.vx, align 8, !tbaa !36
  %i.vz = add i32 %i.vp, %i.vy
  %i.wa = getelementptr i8, ptr %i.sp, i64 18
  %i.wb = load i16, ptr %i.wa, align 2, !tbaa !43
  %i.wc = zext i16 %i.wb to i64
  %i.wd = getelementptr inbounds nuw [16 x i8], ptr %i.ou, i64 %i.wc ; 3 uses
  %i.we = load i32, ptr %i.wd, align 8, !tbaa !36
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wd, i64 4
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !36
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wd, i64 8
  %i.wi = load i32, ptr %i.wh, align 8, !tbaa !36
  %i.wj = add i32 %i.vz, %i.wi
  %i.wk = getelementptr i8, ptr %i.sp, i64 20
  %i.wl = load i16, ptr %i.wk, align 2, !tbaa !43
  %i.wm = zext i16 %i.wl to i64
  %i.wn = getelementptr inbounds nuw [16 x i8], ptr %i.ou, i64 %i.wm ; 3 uses
  %i.wo = load i32, ptr %i.wn, align 8, !tbaa !36
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wn, i64 4
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !36
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wn, i64 8
  %i.ws = load i32, ptr %i.wr, align 8, !tbaa !36
  %i.wt = add i32 %i.wj, %i.ws
  %i.wu = getelementptr i8, ptr %i.sp, i64 22
  %i.wv = load i16, ptr %i.wu, align 2, !tbaa !43
  %i.ww = zext i16 %i.wv to i64
  %i.wx = getelementptr inbounds nuw [16 x i8], ptr %i.ou, i64 %i.ww ; 3 uses
  %i.wy = load i32, ptr %i.wx, align 8, !tbaa !36
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wx, i64 4
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !36
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wx, i64 8
  %i.xc = load i32, ptr %i.xb, align 8, !tbaa !36
  %i.xd = add i32 %i.wt, %i.xc
  %i.xe = getelementptr i8, ptr %i.sp, i64 24
  %i.xf = load i16, ptr %i.xe, align 2, !tbaa !43
  %i.xg = zext i16 %i.xf to i64
  %i.xh = getelementptr inbounds nuw [16 x i8], ptr %i.ou, i64 %i.xg ; 3 uses
  %i.xi = load i32, ptr %i.xh, align 8, !tbaa !36
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xh, i64 4
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !36
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xh, i64 8
  %i.xm = load i32, ptr %i.xl, align 8, !tbaa !36
  %i.xn = add i32 %i.xd, %i.xm
  %i.xo = getelementptr i8, ptr %i.sp, i64 26
  %i.xp = load i16, ptr %i.xo, align 2, !tbaa !43
  %i.xq = zext i16 %i.xp to i64
  %i.xr = getelementptr inbounds nuw [16 x i8], ptr %i.ou, i64 %i.xq ; 3 uses
  %i.xs = load i32, ptr %i.xr, align 8, !tbaa !36
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xr, i64 4
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !36
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xr, i64 8
  %i.xw = load i32, ptr %i.xv, align 8, !tbaa !36
  %i.xx = add i32 %i.xn, %i.xw
  %i.xy = getelementptr i8, ptr %i.sp, i64 28
end_hunk_0
begin_hunk_1_@BZ2_compressBlock:bb.a
  %i.ahg = insertelement <32 x i32> %i.ahf, i32 %i.zg, i64 17
  %i.ahh = insertelement <32 x i32> %i.ahg, i32 %i.zq, i64 18
  %i.ahi = insertelement <32 x i32> %i.ahh, i32 %i.aaa, i64 19
  %i.ahj = insertelement <32 x i32> %i.ahi, i32 %i.aak, i64 20
  %i.ahk = insertelement <32 x i32> %i.ahj, i32 %i.aau, i64 21
  %i.ahl = insertelement <32 x i32> %i.ahk, i32 %i.abe, i64 22
  %i.ahm = insertelement <32 x i32> %i.ahl, i32 %i.abo, i64 23
  %i.ahn = insertelement <32 x i32> %i.ahm, i32 %i.aby, i64 24
  %i.aho = insertelement <32 x i32> %i.ahn, i32 %i.aci, i64 25
  %i.ahp = insertelement <32 x i32> %i.aho, i32 %i.acs, i64 26
  %i.ahq = insertelement <32 x i32> %i.ahp, i32 %i.adc, i64 27
  %i.ahr = insertelement <32 x i32> %i.ahq, i32 %i.adm, i64 28
  %i.ahs = insertelement <32 x i32> %i.ahr, i32 %i.adw, i64 29
  %i.aht = insertelement <32 x i32> %i.ahs, i32 %i.aeg, i64 30
  %i.ahu = insertelement <32 x i32> %i.aht, i32 %i.aeq, i64 31
  %i.ahv = insertelement <4 x i32> poison, i32 %i.afa, i64 0
  %i.ahw = insertelement <4 x i32> %i.ahv, i32 %i.afk, i64 1
  %i.ahx = insertelement <4 x i32> %i.ahw, i32 %i.afu, i64 2
  %i.ahy = insertelement <4 x i32> %i.ahx, i32 %i.age, i64 3
  %i.ahz = shufflevector <32 x i32> %i.ags, <32 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op1172 = add <4 x i32> %i.ahz, %i.ahy
  %i.aia = shufflevector <4 x i32> %rdx.op1172, <4 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aib = shufflevector <32 x i32> %i.aia, <32 x i32> %i.ahu, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.aic = call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %i.aib)
  %op.rdx1173 = add i32 %i.aic, %i.ago
  %i.aid = getelementptr inbounds nuw i8, ptr %i.agn, i64 4
  %i.aie = load i32, ptr %i.aid, align 4, !tbaa !36
  %i.aif = getelementptr inbounds nuw i8, ptr %i.agn, i64 8
  %i.aig = load i32, ptr %i.aif, align 8, !tbaa !36
  %i.aih = add i32 %i.agj, %i.aig
  %i.aii = getelementptr i8, ptr %i.sp, i64 74
  %i.aij = load i16, ptr %i.aii, align 2, !tbaa !43
  %i.aik = zext i16 %i.aij to i64
  %i.ail = getelementptr inbounds nuw [16 x i8], ptr %i.ou, i64 %i.aik ; 2 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ail, i64 8
  %i.ain = load i32, ptr %i.aim, align 8, !tbaa !36
  %i.aio = add i32 %i.aih, %i.ain
  %i.aip = getelementptr i8, ptr %i.sp, i64 76
  %i.aiq = load i16, ptr %i.aip, align 2, !tbaa !43
  %i.air = zext i16 %i.aiq to i64
  %i.ais = getelementptr inbounds nuw [16 x i8], ptr %i.ou, i64 %i.air ; 2 uses
  %i.ait = insertelement <32 x i32> poison, i32 %i.te, i64 0
  %i.aiu = insertelement <32 x i32> %i.ait, i32 %i.sv, i64 1
  %i.aiv = insertelement <32 x i32> %i.aiu, i32 %i.to, i64 2
  %i.aiw = insertelement <32 x i32> %i.aiv, i32 %i.ty, i64 3 ; 2 uses
  %i.aix = insertelement <32 x i32> %i.aiw, i32 %i.ui, i64 4
  %i.aiy = insertelement <32 x i32> %i.aix, i32 %i.us, i64 5
  %i.aiz = insertelement <32 x i32> %i.aiy, i32 %i.vc, i64 6
  %i.aja = insertelement <32 x i32> %i.aiz, i32 %i.vm, i64 7
  %i.ajb = insertelement <32 x i32> %i.aja, i32 %i.vw, i64 8
  %i.ajc = insertelement <32 x i32> %i.ajb, i32 %i.wg, i64 9
  %i.ajd = insertelement <32 x i32> %i.ajc, i32 %i.wq, i64 10
  %i.aje = insertelement <32 x i32> %i.ajd, i32 %i.xa, i64 11
  %i.ajf = insertelement <32 x i32> %i.aje, i32 %i.xk, i64 12
  %i.ajg = insertelement <32 x i32> %i.ajf, i32 %i.xu, i64 13
  %i.ajh = insertelement <32 x i32> %i.ajg, i32 %i.ye, i64 14
  %i.aji = insertelement <32 x i32> %i.ajh, i32 %i.yo, i64 15
  %i.ajj = insertelement <32 x i32> %i.aji, i32 %i.yy, i64 16
  %i.ajk = insertelement <32 x i32> %i.ajj, i32 %i.zi, i64 17
  %i.ajl = insertelement <32 x i32> %i.ajk, i32 %i.zs, i64 18
  %i.ajm = insertelement <32 x i32> %i.ajl, i32 %i.aac, i64 19
  %i.ajn = insertelement <32 x i32> %i.ajm, i32 %i.aam, i64 20
  %i.ajo = insertelement <32 x i32> %i.ajn, i32 %i.aaw, i64 21
  %i.ajp = insertelement <32 x i32> %i.ajo, i32 %i.abg, i64 22
  %i.ajq = insertelement <32 x i32> %i.ajp, i32 %i.abq, i64 23
  %i.ajr = insertelement <32 x i32> %i.ajq, i32 %i.aca, i64 24
  %i.ajs = insertelement <32 x i32> %i.ajr, i32 %i.ack, i64 25
  %i.ajt = insertelement <32 x i32> %i.ajs, i32 %i.acu, i64 26
  %i.aju = insertelement <32 x i32> %i.ajt, i32 %i.ade, i64 27
  %i.ajv = insertelement <32 x i32> %i.aju, i32 %i.ado, i64 28
  %i.ajw = insertelement <32 x i32> %i.ajv, i32 %i.ady, i64 29
  %i.ajx = insertelement <32 x i32> %i.ajw, i32 %i.aei, i64 30
  %i.ajy = insertelement <32 x i32> %i.ajx, i32 %i.aes, i64 31
  %i.ajz = insertelement <4 x i32> poison, i32 %i.afc, i64 0
  %i.aka = insertelement <4 x i32> %i.ajz, i32 %i.afm, i64 1
  %i.akb = insertelement <4 x i32> %i.aka, i32 %i.afw, i64 2
  %i.akc = insertelement <4 x i32> %i.akb, i32 %i.agg, i64 3
  %i.akd = shufflevector <32 x i32> %i.aiw, <32 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = add <4 x i32> %i.akd, %i.akc
  %i.ake = shufflevector <4 x i32> %rdx.op, <4 x i32> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.akf = shufflevector <32 x i32> %i.ake, <32 x i32> %i.ajy, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.akg = call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %i.akf)
  %op.rdx = add i32 %i.akg, %i.aie
  %i.akh = load <2 x i32>, ptr %i.ail, align 8, !tbaa !36
  %i.aki = load <2 x i32>, ptr %i.ais, align 8, !tbaa !36 ; 2 uses
  %i.akj = insertelement <2 x i32> %i.aki, i32 %op.rdx1173, i64 0
  %i.akk = add <2 x i32> %i.akj, %i.akh
  %i.akl = insertelement <2 x i32> %i.aki, i32 %op.rdx, i64 1
  %i.akm = add <2 x i32> %i.akk, %i.akl
  %i.akn = getelementptr inbounds nuw i8, ptr %i.ais, i64 8
  %i.ako = load i32, ptr %i.akn, align 8, !tbaa !36
  %i.akp = add i32 %i.aio, %i.ako
  %i.akq = getelementptr i8, ptr %i.sp, i64 78
  %i.akr = load i16, ptr %i.akq, align 2, !tbaa !43
  %i.aks = zext i16 %i.akr to i64
  %i.akt = getelementptr inbounds nuw [16 x i8], ptr %i.ou, i64 %i.aks ; 2 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 8
  %i.akv = load i32, ptr %i.aku, align 8, !tbaa !36
  %i.akw = add i32 %i.akp, %i.akv
  %i.akx = getelementptr i8, ptr %i.sp, i64 80
  %i.aky = load i16, ptr %i.akx, align 2, !tbaa !43
  %i.akz = zext i16 %i.aky to i64
  %i.ala = getelementptr inbounds nuw [16 x i8], ptr %i.ou, i64 %i.akz ; 2 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ala, i64 8
  %i.alc = load i32, ptr %i.alb, align 8, !tbaa !36
  %i.ald = add i32 %i.akw, %i.alc
  %i.ale = getelementptr i8, ptr %i.sp, i64 82
  %i.alf = load i16, ptr %i.ale, align 2, !tbaa !43
  %i.alg = zext i16 %i.alf to i64
  %i.alh = getelementptr inbounds nuw [16 x i8], ptr %i.ou, i64 %i.alg ; 2 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alh, i64 8
  %i.alj = load i32, ptr %i.ali, align 8, !tbaa !36
  %i.alk = add i32 %i.ald, %i.alj
  %i.all = getelementptr i8, ptr %i.sp, i64 84
  %i.alm = load i16, ptr %i.all, align 2, !tbaa !43
  %i.aln = zext i16 %i.alm to i64
  %i.alo = getelementptr inbounds nuw [16 x i8], ptr %i.ou, i64 %i.aln ; 2 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alo, i64 8
  %i.alq = load i32, ptr %i.alp, align 8, !tbaa !36
  %i.alr = add i32 %i.alk, %i.alq
  %i.als = getelementptr i8, ptr %i.sp, i64 86
  %i.alt = load i16, ptr %i.als, align 2, !tbaa !43
  %i.alu = zext i16 %i.alt to i64
  %i.alv = getelementptr inbounds nuw [16 x i8], ptr %i.ou, i64 %i.alu ; 2 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alv, i64 8
  %i.alx = load i32, ptr %i.alw, align 8, !tbaa !36
  %i.aly = add i32 %i.alr, %i.alx
  %i.alz = getelementptr i8, ptr %i.sp, i64 88
  %i.ama = load i16, ptr %i.alz, align 2, !tbaa !43
  %i.amb = zext i16 %i.ama to i64
  %i.amc = getelementptr inbounds nuw [16 x i8], ptr %i.ou, i64 %i.amb ; 2 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amc, i64 8
  %i.ame = load i32, ptr %i.amd, align 8, !tbaa !36
  %i.amf = add i32 %i.aly, %i.ame
  %i.amg = getelementptr i8, ptr %i.sp, i64 90
  %i.amh = load i16, ptr %i.amg, align 2, !tbaa !43
  %i.ami = zext i16 %i.amh to i64
  %i.amj = getelementptr inbounds nuw [16 x i8], ptr %i.ou, i64 %i.ami ; 2 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 8
  %i.aml = load i32, ptr %i.amk, align 8, !tbaa !36
  %i.amm = add i32 %i.amf, %i.aml
  %i.amn = getelementptr i8, ptr %i.sp, i64 92
  %i.amo = load i16, ptr %i.amn, align 2, !tbaa !43
  %i.amp = zext i16 %i.amo to i64
  %i.amq = getelementptr inbounds nuw [16 x i8], ptr %i.ou, i64 %i.amp ; 2 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amq, i64 8
  %i.ams = load i32, ptr %i.amr, align 8, !tbaa !36
  %i.amt = add i32 %i.amm, %i.ams
  %i.amu = getelementptr i8, ptr %i.sp, i64 94
  %i.amv = load i16, ptr %i.amu, align 2, !tbaa !43
  %i.amw = zext i16 %i.amv to i64
  %i.amx = getelementptr inbounds nuw [16 x i8], ptr %i.ou, i64 %i.amw ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 8
  %i.amz = load i32, ptr %i.amy, align 8, !tbaa !36
  %i.ana = add i32 %i.amt, %i.amz
  %i.anb = getelementptr i8, ptr %i.sp, i64 96
  %i.anc = load i16, ptr %i.anb, align 2, !tbaa !43
  %i.and = zext i16 %i.anc to i64
  %i.ane = getelementptr inbounds nuw [16 x i8], ptr %i.ou, i64 %i.and ; 2 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 8
  %i.ang = load i32, ptr %i.anf, align 8, !tbaa !36
  %i.anh = add i32 %i.ana, %i.ang
  %i.ani = getelementptr i8, ptr %i.sp, i64 98
  %i.anj = load i16, ptr %i.ani, align 2, !tbaa !43
  %i.ank = zext i16 %i.anj to i64
  %i.anl = getelementptr inbounds nuw [16 x i8], ptr %i.ou, i64 %i.ank ; 2 uses
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anl, i64 8
  %i.ann = load i32, ptr %i.anm, align 8, !tbaa !36
  %i.ano = add i32 %i.anh, %i.ann
  %i.anp = load <2 x i32>, ptr %i.akt, align 8, !tbaa !36
  %i.anq = add <2 x i32> %i.akm, %i.anp
  %i.anr = load <2 x i32>, ptr %i.ala, align 8, !tbaa !36
  %i.ans = add <2 x i32> %i.anq, %i.anr
  %i.ant = load <2 x i32>, ptr %i.alh, align 8, !tbaa !36
  %i.anu = add <2 x i32> %i.ans, %i.ant
  %i.anv = load <2 x i32>, ptr %i.alo, align 8, !tbaa !36
  %i.anw = add <2 x i32> %i.anu, %i.anv
  %i.anx = load <2 x i32>, ptr %i.alv, align 8, !tbaa !36
  %i.any = add <2 x i32> %i.anw, %i.anx
  %i.anz = load <2 x i32>, ptr %i.amc, align 8, !tbaa !36
  %i.aoa = add <2 x i32> %i.any, %i.anz
  %i.aob = load <2 x i32>, ptr %i.amj, align 8, !tbaa !36
  %i.aoc = add <2 x i32> %i.aoa, %i.aob
  %i.aod = load <2 x i32>, ptr %i.amq, align 8, !tbaa !36
  %i.aoe = add <2 x i32> %i.aoc, %i.aod
  %i.aof = load <2 x i32>, ptr %i.amx, align 8, !tbaa !36
  %i.aog = add <2 x i32> %i.aoe, %i.aof
  %i.aoh = load <2 x i32>, ptr %i.ane, align 8, !tbaa !36
  %i.aoi = add <2 x i32> %i.aog, %i.aoh
  %i.aoj = load <2 x i32>, ptr %i.anl, align 8, !tbaa !36
  %i.aok = add <2 x i32> %i.aoi, %i.aoj
  store <2 x i32> %i.aok, ptr %i.a, align 8
  store i32 %i.ano, ptr %i.oz, align 8
  br label %.loopexit1973.i.preheader

.lr.ph2134.i:                                     ; preds = %.loopexit, %.lr.ph2134.preheader.i
  %indvars.iv2380.i = phi i64 [ %i.sm, %.lr.ph2134.preheader.i ], [ %indvars.iv.next2381.i, %.loopexit ] ; 2 uses
  %i.aol = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %indvars.iv2380.i
  %i.aom = load i16, ptr %i.aol, align 2, !tbaa !43
  %i.aon = zext i16 %i.aom to i64
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.aon ; 5 uses
  br i1 %min.iters.check1128, label %scalar.ph.preheader, label %vector.body1131

vector.body1131:                                  ; preds = %.lr.ph2134.i
  %i.aoo = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 258
  %i.aop = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 516
  %i.aoq = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 774
  %i.aor = load i8, ptr %invariant.gep.i, align 1, !tbaa !26
  %i.aos = load i8, ptr %i.aoo, align 1, !tbaa !26
  %i.aot = load i8, ptr %i.aop, align 1, !tbaa !26
  %i.aou = load i8, ptr %i.aoq, align 1, !tbaa !26
  %i.aov = insertelement <4 x i8> poison, i8 %i.aor, i64 0
  %i.aow = insertelement <4 x i8> %i.aov, i8 %i.aos, i64 1
  %i.aox = insertelement <4 x i8> %i.aow, i8 %i.aot, i64 2
  %i.aoy = insertelement <4 x i8> %i.aox, i8 %i.aou, i64 3
  %i.aoz = zext <4 x i8> %i.aoy to <4 x i16>
  %wide.load = load <4 x i16>, ptr %i.a, align 8, !tbaa !43
  %i.apa = add <4 x i16> %wide.load, %i.aoz
  store <4 x i16> %i.apa, ptr %i.a, align 8, !tbaa !43
  br i1 %cmp.n1135, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph2134.i, %vector.body1131
  %indvars.iv2375.i.ph = phi i64 [ 0, %.lr.ph2134.i ], [ %n.vec1130, %vector.body1131 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv2375.i = phi i64 [ %indvars.iv.next2376.i, %scalar.ph ], [ %indvars.iv2375.i.ph, %scalar.ph.preheader ] ; 3 uses
  %gep.i = getelementptr inbounds nuw [258 x i8], ptr %invariant.gep.i, i64 %indvars.iv2375.i
  %i.apb = load i8, ptr %gep.i, align 1, !tbaa !26
  %i.apc = zext i8 %i.apb to i16
  %i.apd = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv2375.i ; 2 uses
  %i.ape = load i16, ptr %i.apd, align 2, !tbaa !43
  %i.apf = add i16 %i.ape, %i.apc
  store i16 %i.apf, ptr %i.apd, align 2, !tbaa !43
  %indvars.iv.next2376.i = add nuw nsw i64 %indvars.iv2375.i, 1 ; 2 uses
  %exitcond2379.not.i = icmp eq i64 %indvars.iv.next2376.i, %i.oq
  br i1 %exitcond2379.not.i, label %.loopexit, label %scalar.ph, !llvm.loop !57

.loopexit:                                        ; preds = %scalar.ph, %vector.body1131
  %indvars.iv.next2381.i = add nsw i64 %indvars.iv2380.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next2381.i to i32
  %exitcond2384.not.i = icmp eq i32 %i.sn, %lftr.wideiv.i
  br i1 %exitcond2384.not.i, label %.loopexit1973.i.preheader, label %.lr.ph2134.i, !llvm.loop !58

.loopexit1973.i.preheader:                        ; preds = %.loopexit, %bb.ba, %.preheader1972.i
  br i1 %i.pe, label %.loopexit1973.i.epil.preheader, label %.loopexit1973.i

.loopexit1973.i:                                  ; preds = %.loopexit1973.i.preheader, %.loopexit1973.i
  %indvars.iv2385.i = phi i64 [ %indvars.iv.next2386.i.3, %.loopexit1973.i ], [ 0, %.loopexit1973.i.preheader ] ; 6 uses
  %.014902136.i = phi i32 [ %spec.select1521.i.3, %.loopexit1973.i ], [ 999999999, %.loopexit1973.i.preheader ] ; 2 uses
  %.014922135.i = phi i32 [ %spec.select1520.i.3, %.loopexit1973.i ], [ -1, %.loopexit1973.i.preheader ]
  %niter1384 = phi i64 [ %niter1384.next.3, %.loopexit1973.i ], [ 0, %.loopexit1973.i.preheader ]
  %i.apg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv2385.i
  %i.aph = load i16, ptr %i.apg, align 8, !tbaa !43
  %i.api = zext i16 %i.aph to i32                 ; 2 uses
  %i.apj = icmp samesign ugt i32 %.014902136.i, %i.api
  %i.apk = trunc nuw nsw i64 %indvars.iv2385.i to i32
  %spec.select1520.i = select i1 %i.apj, i32 %i.apk, i32 %.014922135.i
  %spec.select1521.i = call i32 @llvm.umin.i32(i32 %.014902136.i, i32 %i.api) ; 2 uses
  %indvars.iv.next2386.i = or disjoint i64 %indvars.iv2385.i, 1 ; 2 uses
  %i.apl = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next2386.i
  %i.apm = load i16, ptr %i.apl, align 2, !tbaa !43
  %i.apn = zext i16 %i.apm to i32                 ; 2 uses
  %i.apo = icmp samesign ugt i32 %spec.select1521.i, %i.apn
  %i.app = trunc nuw nsw i64 %indvars.iv.next2386.i to i32
  %spec.select1520.i.1 = select i1 %i.apo, i32 %i.app, i32 %spec.select1520.i
  %spec.select1521.i.1 = call i32 @llvm.umin.i32(i32 %spec.select1521.i, i32 %i.apn) ; 2 uses
  %indvars.iv.next2386.i.1 = or disjoint i64 %indvars.iv2385.i, 2 ; 2 uses
  %i.apq = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next2386.i.1
  %i.apr = load i16, ptr %i.apq, align 4, !tbaa !43
  %i.aps = zext i16 %i.apr to i32                 ; 2 uses
  %i.apt = icmp samesign ugt i32 %spec.select1521.i.1, %i.aps
  %i.apu = trunc nuw nsw i64 %indvars.iv.next2386.i.1 to i32
  %spec.select1520.i.2 = select i1 %i.apt, i32 %i.apu, i32 %spec.select1520.i.1
  %spec.select1521.i.2 = call i32 @llvm.umin.i32(i32 %spec.select1521.i.1, i32 %i.aps) ; 2 uses
  %indvars.iv.next2386.i.2 = or disjoint i64 %indvars.iv2385.i, 3 ; 2 uses
  %i.apv = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next2386.i.2
  %i.apw = load i16, ptr %i.apv, align 2, !tbaa !43
  %i.apx = zext i16 %i.apw to i32                 ; 2 uses
  %i.apy = icmp samesign ugt i32 %spec.select1521.i.2, %i.apx
  %i.apz = trunc nuw nsw i64 %indvars.iv.next2386.i.2 to i32
  %spec.select1520.i.3 = select i1 %i.apy, i32 %i.apz, i32 %spec.select1520.i.2 ; 3 uses
  %spec.select1521.i.3 = call i32 @llvm.umin.i32(i32 %spec.select1521.i.2, i32 %i.apx) ; 3 uses
  %indvars.iv.next2386.i.3 = add nuw nsw i64 %indvars.iv2385.i, 4 ; 2 uses
  %niter1384.next.3 = add i64 %niter1384, 4       ; 2 uses
  %niter1384.ncmp.3 = icmp eq i64 %niter1384.next.3, %unroll_iter1383
  br i1 %niter1384.ncmp.3, label %.unr-lcssa, label %.loopexit1973.i, !llvm.loop !59

.unr-lcssa:                                       ; preds = %.loopexit1973.i
  br i1 %lcmp.mod1379.not, label %.epilog-lcssa, label %.loopexit1973.i.epil.preheader

.loopexit1973.i.epil.preheader:                   ; preds = %.unr-lcssa, %.loopexit1973.i.preheader
  %indvars.iv2385.i.epil.init = phi i64 [ 0, %.loopexit1973.i.preheader ], [ %indvars.iv.next2386.i.3, %.unr-lcssa ]
  %.014902136.i.epil.init = phi i32 [ 999999999, %.loopexit1973.i.preheader ], [ %spec.select1521.i.3, %.unr-lcssa ]
  %.014922135.i.epil.init = phi i32 [ -1, %.loopexit1973.i.preheader ], [ %spec.select1520.i.3, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1382)
  br label %.loopexit1973.i.epil

.loopexit1973.i.epil:                             ; preds = %.loopexit1973.i.epil, %.loopexit1973.i.epil.preheader
  %indvars.iv2385.i.epil = phi i64 [ %indvars.iv.next2386.i.epil, %.loopexit1973.i.epil ], [ %indvars.iv2385.i.epil.init, %.loopexit1973.i.epil.preheader ] ; 3 uses
  %.014902136.i.epil = phi i32 [ %spec.select1521.i.epil, %.loopexit1973.i.epil ], [ %.014902136.i.epil.init, %.loopexit1973.i.epil.preheader ] ; 2 uses
  %.014922135.i.epil = phi i32 [ %spec.select1520.i.epil, %.loopexit1973.i.epil ], [ %.014922135.i.epil.init, %.loopexit1973.i.epil.preheader ]
  %epil.iter1378 = phi i64 [ %epil.iter1378.next, %.loopexit1973.i.epil ], [ 0, %.loopexit1973.i.epil.preheader ]
  %i.aqa = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv2385.i.epil
  %i.aqb = load i16, ptr %i.aqa, align 2, !tbaa !43
  %i.aqc = zext i16 %i.aqb to i32                 ; 2 uses
  %i.aqd = icmp samesign ugt i32 %.014902136.i.epil, %i.aqc
  %i.aqe = trunc nuw nsw i64 %indvars.iv2385.i.epil to i32
  %spec.select1520.i.epil = select i1 %i.aqd, i32 %i.aqe, i32 %.014922135.i.epil ; 2 uses
  %spec.select1521.i.epil = call i32 @llvm.umin.i32(i32 %.014902136.i.epil, i32 %i.aqc) ; 2 uses
  %indvars.iv.next2386.i.epil = add nuw nsw i64 %indvars.iv2385.i.epil, 1
  %epil.iter1378.next = add i64 %epil.iter1378, 1 ; 2 uses
  %epil.iter1378.cmp.not = icmp eq i64 %epil.iter1378.next, %xtraiter1377
  br i1 %epil.iter1378.cmp.not, label %.epilog-lcssa, label %.loopexit1973.i.epil, !llvm.loop !60

.epilog-lcssa:                                    ; preds = %.loopexit1973.i.epil, %.unr-lcssa
  %spec.select1520.i.lcssa = phi i32 [ %spec.select1520.i.3, %.unr-lcssa ], [ %spec.select1520.i.epil, %.loopexit1973.i.epil ] ; 2 uses
  %spec.select1521.i.lcssa = phi i32 [ %spec.select1521.i.3, %.unr-lcssa ], [ %spec.select1521.i.epil, %.loopexit1973.i.epil ]
  %i.aqf = add nuw nsw i32 %spec.select1521.i.lcssa, %.014762143.i ; 2 uses
  %i.aqg = sext i32 %spec.select1520.i.lcssa to i64 ; 3 uses
  %i.aqh = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aqg ; 2 uses
  %i.aqi = load i32, ptr %i.aqh, align 4, !tbaa !36
  %i.aqj = add nsw i32 %i.aqi, 1
  store i32 %i.aqj, ptr %i.aqh, align 4, !tbaa !36
  %i.aqk = trunc i32 %spec.select1520.i.lcssa to i8
  %i.aql = getelementptr inbounds nuw i8, ptr %i.pa, i64 %indvars.iv2396.i
  store i8 %i.aqk, ptr %i.aql, align 1, !tbaa !26
  %indvars.iv.next2397.i = add nuw nsw i64 %indvars.iv2396.i, 1 ; 2 uses
  br i1 %or.cond1519.i, label %bb.bb, label %.preheader1970.i

.preheader1970.i:                                 ; preds = %.epilog-lcssa
  %.not15132138.not.i = icmp sgt i32 %i.sh, %.114702144.i
  br i1 %.not15132138.not.i, label %.lr.ph2140.i, label %.loopexit1971.i

.lr.ph2140.i:                                     ; preds = %.preheader1970.i
  %i.aqm = getelementptr inbounds [1032 x i8], ptr %i.os, i64 %i.aqg ; 5 uses
  %i.aqn = sext i32 %.114702144.i to i64          ; 2 uses
  %smax2393.i = call i32 @llvm.smax.i32(i32 %.114702144.i, i32 %spec.select.i127) ; 3 uses
  %i.aqo = add nsw i32 %smax2393.i, 1
  %i.aqp = add i32 %smax2393.i, 1
  %i.aqq = sub i32 %i.aqp, %.114702144.i
  %i.aqr = sub i32 %smax2393.i, %.114702144.i
  %xtraiter1385 = and i32 %i.aqq, 3               ; 2 uses
  %lcmp.mod1386.not = icmp eq i32 %xtraiter1385, 0
  br i1 %lcmp.mod1386.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph2140.i, %.prol.preheader
  %indvars.iv2390.i.prol = phi i64 [ %indvars.iv.next2391.i.prol, %.prol.preheader ], [ %i.aqn, %.lr.ph2140.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph2140.i ]
  %i.aqs = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %indvars.iv2390.i.prol
  %i.aqt = load i16, ptr %i.aqs, align 2, !tbaa !43
  %i.aqu = zext i16 %i.aqt to i64
  %i.aqv = getelementptr inbounds nuw [4 x i8], ptr %i.aqm, i64 %i.aqu ; 2 uses
  %i.aqw = load i32, ptr %i.aqv, align 4, !tbaa !36
  %i.aqx = add nsw i32 %i.aqw, 1
  store i32 %i.aqx, ptr %i.aqv, align 4, !tbaa !36
  %indvars.iv.next2391.i.prol = add nsw i64 %indvars.iv2390.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter1385
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !61

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph2140.i
  %indvars.iv2390.i.unr = phi i64 [ %i.aqn, %.lr.ph2140.i ], [ %indvars.iv.next2391.i.prol, %.prol.preheader ]
  %i.aqy = icmp ult i32 %i.aqr, 3
  br i1 %i.aqy, label %.loopexit1971.i, label %.lr.ph2140.i.new

bb.bb:                                            ; preds = %.epilog-lcssa
  %i.aqz = getelementptr inbounds [1032 x i8], ptr %i.os, i64 %i.aqg ; 50 uses
  %i.ara = sext i32 %.114702144.i to i64
  %i.arb = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %i.ara ; 50 uses
  %i.arc = load i16, ptr %i.arb, align 2, !tbaa !43
  %i.ard = zext i16 %i.arc to i64
  %i.are = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.ard ; 2 uses
  %i.arf = load i32, ptr %i.are, align 4, !tbaa !36
  %i.arg = add nsw i32 %i.arf, 1
  store i32 %i.arg, ptr %i.are, align 4, !tbaa !36
  %i.arh = getelementptr i8, ptr %i.arb, i64 2
  %i.ari = load i16, ptr %i.arh, align 2, !tbaa !43
  %i.arj = zext i16 %i.ari to i64
  %i.ark = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.arj ; 2 uses
  %i.arl = load i32, ptr %i.ark, align 4, !tbaa !36
  %i.arm = add nsw i32 %i.arl, 1
  store i32 %i.arm, ptr %i.ark, align 4, !tbaa !36
  %i.arn = getelementptr i8, ptr %i.arb, i64 4
  %i.aro = load i16, ptr %i.arn, align 2, !tbaa !43
  %i.arp = zext i16 %i.aro to i64
  %i.arq = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.arp ; 2 uses
  %i.arr = load i32, ptr %i.arq, align 4, !tbaa !36
  %i.ars = add nsw i32 %i.arr, 1
  store i32 %i.ars, ptr %i.arq, align 4, !tbaa !36
  %i.art = getelementptr i8, ptr %i.arb, i64 6
  %i.aru = load i16, ptr %i.art, align 2, !tbaa !43
  %i.arv = zext i16 %i.aru to i64
  %i.arw = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.arv ; 2 uses
  %i.arx = load i32, ptr %i.arw, align 4, !tbaa !36
  %i.ary = add nsw i32 %i.arx, 1
  store i32 %i.ary, ptr %i.arw, align 4, !tbaa !36
  %i.arz = getelementptr i8, ptr %i.arb, i64 8
  %i.asa = load i16, ptr %i.arz, align 2, !tbaa !43
  %i.asb = zext i16 %i.asa to i64
  %i.asc = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.asb ; 2 uses
  %i.asd = load i32, ptr %i.asc, align 4, !tbaa !36
  %i.ase = add nsw i32 %i.asd, 1
  store i32 %i.ase, ptr %i.asc, align 4, !tbaa !36
  %i.asf = getelementptr i8, ptr %i.arb, i64 10
  %i.asg = load i16, ptr %i.asf, align 2, !tbaa !43
  %i.ash = zext i16 %i.asg to i64
  %i.asi = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.ash ; 2 uses
  %i.asj = load i32, ptr %i.asi, align 4, !tbaa !36
  %i.ask = add nsw i32 %i.asj, 1
  store i32 %i.ask, ptr %i.asi, align 4, !tbaa !36
  %i.asl = getelementptr i8, ptr %i.arb, i64 12
  %i.asm = load i16, ptr %i.asl, align 2, !tbaa !43
  %i.asn = zext i16 %i.asm to i64
  %i.aso = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.asn ; 2 uses
  %i.asp = load i32, ptr %i.aso, align 4, !tbaa !36
  %i.asq = add nsw i32 %i.asp, 1
  store i32 %i.asq, ptr %i.aso, align 4, !tbaa !36
  %i.asr = getelementptr i8, ptr %i.arb, i64 14
  %i.ass = load i16, ptr %i.asr, align 2, !tbaa !43
  %i.ast = zext i16 %i.ass to i64
  %i.asu = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.ast ; 2 uses
  %i.asv = load i32, ptr %i.asu, align 4, !tbaa !36
  %i.asw = add nsw i32 %i.asv, 1
  store i32 %i.asw, ptr %i.asu, align 4, !tbaa !36
  %i.asx = getelementptr i8, ptr %i.arb, i64 16
  %i.asy = load i16, ptr %i.asx, align 2, !tbaa !43
  %i.asz = zext i16 %i.asy to i64
  %i.ata = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.asz ; 2 uses
  %i.atb = load i32, ptr %i.ata, align 4, !tbaa !36
  %i.atc = add nsw i32 %i.atb, 1
  store i32 %i.atc, ptr %i.ata, align 4, !tbaa !36
  %i.atd = getelementptr i8, ptr %i.arb, i64 18
  %i.ate = load i16, ptr %i.atd, align 2, !tbaa !43
  %i.atf = zext i16 %i.ate to i64
  %i.atg = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.atf ; 2 uses
  %i.ath = load i32, ptr %i.atg, align 4, !tbaa !36
  %i.ati = add nsw i32 %i.ath, 1
  store i32 %i.ati, ptr %i.atg, align 4, !tbaa !36
  %i.atj = getelementptr i8, ptr %i.arb, i64 20
  %i.atk = load i16, ptr %i.atj, align 2, !tbaa !43
  %i.atl = zext i16 %i.atk to i64
  %i.atm = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.atl ; 2 uses
  %i.atn = load i32, ptr %i.atm, align 4, !tbaa !36
  %i.ato = add nsw i32 %i.atn, 1
  store i32 %i.ato, ptr %i.atm, align 4, !tbaa !36
  %i.atp = getelementptr i8, ptr %i.arb, i64 22
  %i.atq = load i16, ptr %i.atp, align 2, !tbaa !43
  %i.atr = zext i16 %i.atq to i64
  %i.ats = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.atr ; 2 uses
  %i.att = load i32, ptr %i.ats, align 4, !tbaa !36
  %i.atu = add nsw i32 %i.att, 1
  store i32 %i.atu, ptr %i.ats, align 4, !tbaa !36
  %i.atv = getelementptr i8, ptr %i.arb, i64 24
  %i.atw = load i16, ptr %i.atv, align 2, !tbaa !43
  %i.atx = zext i16 %i.atw to i64
  %i.aty = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.atx ; 2 uses
  %i.atz = load i32, ptr %i.aty, align 4, !tbaa !36
  %i.aua = add nsw i32 %i.atz, 1
  store i32 %i.aua, ptr %i.aty, align 4, !tbaa !36
  %i.aub = getelementptr i8, ptr %i.arb, i64 26
  %i.auc = load i16, ptr %i.aub, align 2, !tbaa !43
  %i.aud = zext i16 %i.auc to i64
  %i.aue = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.aud ; 2 uses
  %i.auf = load i32, ptr %i.aue, align 4, !tbaa !36
  %i.aug = add nsw i32 %i.auf, 1
  store i32 %i.aug, ptr %i.aue, align 4, !tbaa !36
  %i.auh = getelementptr i8, ptr %i.arb, i64 28
  %i.aui = load i16, ptr %i.auh, align 2, !tbaa !43
  %i.auj = zext i16 %i.aui to i64
  %i.auk = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.auj ; 2 uses
  %i.aul = load i32, ptr %i.auk, align 4, !tbaa !36
  %i.aum = add nsw i32 %i.aul, 1
  store i32 %i.aum, ptr %i.auk, align 4, !tbaa !36
  %i.aun = getelementptr i8, ptr %i.arb, i64 30
  %i.auo = load i16, ptr %i.aun, align 2, !tbaa !43
  %i.aup = zext i16 %i.auo to i64
  %i.auq = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.aup ; 2 uses
  %i.aur = load i32, ptr %i.auq, align 4, !tbaa !36
  %i.aus = add nsw i32 %i.aur, 1
  store i32 %i.aus, ptr %i.auq, align 4, !tbaa !36
  %i.aut = getelementptr i8, ptr %i.arb, i64 32
  %i.auu = load i16, ptr %i.aut, align 2, !tbaa !43
  %i.auv = zext i16 %i.auu to i64
  %i.auw = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.auv ; 2 uses
  %i.aux = load i32, ptr %i.auw, align 4, !tbaa !36
  %i.auy = add nsw i32 %i.aux, 1
  store i32 %i.auy, ptr %i.auw, align 4, !tbaa !36
  %i.auz = getelementptr i8, ptr %i.arb, i64 34
  %i.ava = load i16, ptr %i.auz, align 2, !tbaa !43
  %i.avb = zext i16 %i.ava to i64
  %i.avc = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.avb ; 2 uses
  %i.avd = load i32, ptr %i.avc, align 4, !tbaa !36
  %i.ave = add nsw i32 %i.avd, 1
  store i32 %i.ave, ptr %i.avc, align 4, !tbaa !36
  %i.avf = getelementptr i8, ptr %i.arb, i64 36
  %i.avg = load i16, ptr %i.avf, align 2, !tbaa !43
  %i.avh = zext i16 %i.avg to i64
  %i.avi = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.avh ; 2 uses
  %i.avj = load i32, ptr %i.avi, align 4, !tbaa !36
  %i.avk = add nsw i32 %i.avj, 1
  store i32 %i.avk, ptr %i.avi, align 4, !tbaa !36
  %i.avl = getelementptr i8, ptr %i.arb, i64 38
  %i.avm = load i16, ptr %i.avl, align 2, !tbaa !43
  %i.avn = zext i16 %i.avm to i64
  %i.avo = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.avn ; 2 uses
  %i.avp = load i32, ptr %i.avo, align 4, !tbaa !36
  %i.avq = add nsw i32 %i.avp, 1
  store i32 %i.avq, ptr %i.avo, align 4, !tbaa !36
  %i.avr = getelementptr i8, ptr %i.arb, i64 40
  %i.avs = load i16, ptr %i.avr, align 2, !tbaa !43
  %i.avt = zext i16 %i.avs to i64
  %i.avu = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.avt ; 2 uses
  %i.avv = load i32, ptr %i.avu, align 4, !tbaa !36
  %i.avw = add nsw i32 %i.avv, 1
  store i32 %i.avw, ptr %i.avu, align 4, !tbaa !36
  %i.avx = getelementptr i8, ptr %i.arb, i64 42
  %i.avy = load i16, ptr %i.avx, align 2, !tbaa !43
  %i.avz = zext i16 %i.avy to i64
  %i.awa = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.avz ; 2 uses
  %i.awb = load i32, ptr %i.awa, align 4, !tbaa !36
  %i.awc = add nsw i32 %i.awb, 1
  store i32 %i.awc, ptr %i.awa, align 4, !tbaa !36
  %i.awd = getelementptr i8, ptr %i.arb, i64 44
  %i.awe = load i16, ptr %i.awd, align 2, !tbaa !43
  %i.awf = zext i16 %i.awe to i64
  %i.awg = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.awf ; 2 uses
  %i.awh = load i32, ptr %i.awg, align 4, !tbaa !36
  %i.awi = add nsw i32 %i.awh, 1
  store i32 %i.awi, ptr %i.awg, align 4, !tbaa !36
  %i.awj = getelementptr i8, ptr %i.arb, i64 46
  %i.awk = load i16, ptr %i.awj, align 2, !tbaa !43
  %i.awl = zext i16 %i.awk to i64
  %i.awm = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.awl ; 2 uses
  %i.awn = load i32, ptr %i.awm, align 4, !tbaa !36
  %i.awo = add nsw i32 %i.awn, 1
  store i32 %i.awo, ptr %i.awm, align 4, !tbaa !36
  %i.awp = getelementptr i8, ptr %i.arb, i64 48
  %i.awq = load i16, ptr %i.awp, align 2, !tbaa !43
  %i.awr = zext i16 %i.awq to i64
  %i.aws = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.awr ; 2 uses
  %i.awt = load i32, ptr %i.aws, align 4, !tbaa !36
  %i.awu = add nsw i32 %i.awt, 1
  store i32 %i.awu, ptr %i.aws, align 4, !tbaa !36
  %i.awv = getelementptr i8, ptr %i.arb, i64 50
  %i.aww = load i16, ptr %i.awv, align 2, !tbaa !43
  %i.awx = zext i16 %i.aww to i64
  %i.awy = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.awx ; 2 uses
  %i.awz = load i32, ptr %i.awy, align 4, !tbaa !36
  %i.axa = add nsw i32 %i.awz, 1
  store i32 %i.axa, ptr %i.awy, align 4, !tbaa !36
  %i.axb = getelementptr i8, ptr %i.arb, i64 52
  %i.axc = load i16, ptr %i.axb, align 2, !tbaa !43
  %i.axd = zext i16 %i.axc to i64
  %i.axe = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.axd ; 2 uses
  %i.axf = load i32, ptr %i.axe, align 4, !tbaa !36
  %i.axg = add nsw i32 %i.axf, 1
  store i32 %i.axg, ptr %i.axe, align 4, !tbaa !36
  %i.axh = getelementptr i8, ptr %i.arb, i64 54
  %i.axi = load i16, ptr %i.axh, align 2, !tbaa !43
  %i.axj = zext i16 %i.axi to i64
  %i.axk = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.axj ; 2 uses
  %i.axl = load i32, ptr %i.axk, align 4, !tbaa !36
  %i.axm = add nsw i32 %i.axl, 1
  store i32 %i.axm, ptr %i.axk, align 4, !tbaa !36
  %i.axn = getelementptr i8, ptr %i.arb, i64 56
  %i.axo = load i16, ptr %i.axn, align 2, !tbaa !43
  %i.axp = zext i16 %i.axo to i64
end_hunk_1
begin_hunk_2_@BZ2_compressBlock:bb.a
  %i.ayu = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.ayt ; 2 uses
  %i.ayv = load i32, ptr %i.ayu, align 4, !tbaa !36
  %i.ayw = add nsw i32 %i.ayv, 1
  store i32 %i.ayw, ptr %i.ayu, align 4, !tbaa !36
  %i.ayx = getelementptr i8, ptr %i.arb, i64 68
  %i.ayy = load i16, ptr %i.ayx, align 2, !tbaa !43
  %i.ayz = zext i16 %i.ayy to i64
  %i.aza = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.ayz ; 2 uses
  %i.azb = load i32, ptr %i.aza, align 4, !tbaa !36
  %i.azc = add nsw i32 %i.azb, 1
  store i32 %i.azc, ptr %i.aza, align 4, !tbaa !36
  %i.azd = getelementptr i8, ptr %i.arb, i64 70
  %i.aze = load i16, ptr %i.azd, align 2, !tbaa !43
  %i.azf = zext i16 %i.aze to i64
  %i.azg = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.azf ; 2 uses
  %i.azh = load i32, ptr %i.azg, align 4, !tbaa !36
  %i.azi = add nsw i32 %i.azh, 1
  store i32 %i.azi, ptr %i.azg, align 4, !tbaa !36
  %i.azj = getelementptr i8, ptr %i.arb, i64 72
  %i.azk = load i16, ptr %i.azj, align 2, !tbaa !43
  %i.azl = zext i16 %i.azk to i64
  %i.azm = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.azl ; 2 uses
  %i.azn = load i32, ptr %i.azm, align 4, !tbaa !36
  %i.azo = add nsw i32 %i.azn, 1
  store i32 %i.azo, ptr %i.azm, align 4, !tbaa !36
  %i.azp = getelementptr i8, ptr %i.arb, i64 74
  %i.azq = load i16, ptr %i.azp, align 2, !tbaa !43
  %i.azr = zext i16 %i.azq to i64
  %i.azs = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.azr ; 2 uses
  %i.azt = load i32, ptr %i.azs, align 4, !tbaa !36
  %i.azu = add nsw i32 %i.azt, 1
  store i32 %i.azu, ptr %i.azs, align 4, !tbaa !36
  %i.azv = getelementptr i8, ptr %i.arb, i64 76
  %i.azw = load i16, ptr %i.azv, align 2, !tbaa !43
  %i.azx = zext i16 %i.azw to i64
  %i.azy = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.azx ; 2 uses
  %i.azz = load i32, ptr %i.azy, align 4, !tbaa !36
  %i.baa = add nsw i32 %i.azz, 1
  store i32 %i.baa, ptr %i.azy, align 4, !tbaa !36
  %i.bab = getelementptr i8, ptr %i.arb, i64 78
  %i.bac = load i16, ptr %i.bab, align 2, !tbaa !43
  %i.bad = zext i16 %i.bac to i64
  %i.bae = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.bad ; 2 uses
  %i.baf = load i32, ptr %i.bae, align 4, !tbaa !36
  %i.bag = add nsw i32 %i.baf, 1
  store i32 %i.bag, ptr %i.bae, align 4, !tbaa !36
  %i.bah = getelementptr i8, ptr %i.arb, i64 80
  %i.bai = load i16, ptr %i.bah, align 2, !tbaa !43
  %i.baj = zext i16 %i.bai to i64
  %i.bak = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.baj ; 2 uses
  %i.bal = load i32, ptr %i.bak, align 4, !tbaa !36
  %i.bam = add nsw i32 %i.bal, 1
  store i32 %i.bam, ptr %i.bak, align 4, !tbaa !36
  %i.ban = getelementptr i8, ptr %i.arb, i64 82
  %i.bao = load i16, ptr %i.ban, align 2, !tbaa !43
  %i.bap = zext i16 %i.bao to i64
  %i.baq = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.bap ; 2 uses
  %i.bar = load i32, ptr %i.baq, align 4, !tbaa !36
  %i.bas = add nsw i32 %i.bar, 1
  store i32 %i.bas, ptr %i.baq, align 4, !tbaa !36
  %i.bat = getelementptr i8, ptr %i.arb, i64 84
  %i.bau = load i16, ptr %i.bat, align 2, !tbaa !43
  %i.bav = zext i16 %i.bau to i64
  %i.baw = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.bav ; 2 uses
  %i.bax = load i32, ptr %i.baw, align 4, !tbaa !36
  %i.bay = add nsw i32 %i.bax, 1
  store i32 %i.bay, ptr %i.baw, align 4, !tbaa !36
  %i.baz = getelementptr i8, ptr %i.arb, i64 86
  %i.bba = load i16, ptr %i.baz, align 2, !tbaa !43
  %i.bbb = zext i16 %i.bba to i64
  %i.bbc = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.bbb ; 2 uses
  %i.bbd = load i32, ptr %i.bbc, align 4, !tbaa !36
  %i.bbe = add nsw i32 %i.bbd, 1
  store i32 %i.bbe, ptr %i.bbc, align 4, !tbaa !36
  %i.bbf = getelementptr i8, ptr %i.arb, i64 88
  %i.bbg = load i16, ptr %i.bbf, align 2, !tbaa !43
  %i.bbh = zext i16 %i.bbg to i64
  %i.bbi = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.bbh ; 2 uses
  %i.bbj = load i32, ptr %i.bbi, align 4, !tbaa !36
  %i.bbk = add nsw i32 %i.bbj, 1
  store i32 %i.bbk, ptr %i.bbi, align 4, !tbaa !36
  %i.bbl = getelementptr i8, ptr %i.arb, i64 90
  %i.bbm = load i16, ptr %i.bbl, align 2, !tbaa !43
  %i.bbn = zext i16 %i.bbm to i64
  %i.bbo = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.bbn ; 2 uses
  %i.bbp = load i32, ptr %i.bbo, align 4, !tbaa !36
  %i.bbq = add nsw i32 %i.bbp, 1
  store i32 %i.bbq, ptr %i.bbo, align 4, !tbaa !36
  %i.bbr = getelementptr i8, ptr %i.arb, i64 92
  %i.bbs = load i16, ptr %i.bbr, align 2, !tbaa !43
  %i.bbt = zext i16 %i.bbs to i64
  %i.bbu = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.bbt ; 2 uses
  %i.bbv = load i32, ptr %i.bbu, align 4, !tbaa !36
  %i.bbw = add nsw i32 %i.bbv, 1
  store i32 %i.bbw, ptr %i.bbu, align 4, !tbaa !36
  %i.bbx = getelementptr i8, ptr %i.arb, i64 94
  %i.bby = load i16, ptr %i.bbx, align 2, !tbaa !43
  %i.bbz = zext i16 %i.bby to i64
  %i.bca = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.bbz ; 2 uses
  %i.bcb = load i32, ptr %i.bca, align 4, !tbaa !36
  %i.bcc = add nsw i32 %i.bcb, 1
  store i32 %i.bcc, ptr %i.bca, align 4, !tbaa !36
  %i.bcd = getelementptr i8, ptr %i.arb, i64 96
  %i.bce = load i16, ptr %i.bcd, align 2, !tbaa !43
  %i.bcf = zext i16 %i.bce to i64
  %i.bcg = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.bcf ; 2 uses
  %i.bch = load i32, ptr %i.bcg, align 4, !tbaa !36
  %i.bci = add nsw i32 %i.bch, 1
  store i32 %i.bci, ptr %i.bcg, align 4, !tbaa !36
  %i.bcj = getelementptr i8, ptr %i.arb, i64 98
  %i.bck = load i16, ptr %i.bcj, align 2, !tbaa !43
  %i.bcl = zext i16 %i.bck to i64
  %i.bcm = getelementptr inbounds nuw [4 x i8], ptr %i.aqz, i64 %i.bcl ; 2 uses
  %i.bcn = load i32, ptr %i.bcm, align 4, !tbaa !36
  %i.bco = add nsw i32 %i.bcn, 1
  store i32 %i.bco, ptr %i.bcm, align 4, !tbaa !36
  br label %.loopexit1971.i

.lr.ph2140.i.new:                                 ; preds = %.prol.loopexit, %.lr.ph2140.i.new
  %indvars.iv2390.i = phi i64 [ %indvars.iv.next2391.i.3, %.lr.ph2140.i.new ], [ %indvars.iv2390.i.unr, %.prol.loopexit ] ; 5 uses
  %i.bcp = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %indvars.iv2390.i
  %i.bcq = load i16, ptr %i.bcp, align 2, !tbaa !43
  %i.bcr = zext i16 %i.bcq to i64
  %i.bcs = getelementptr inbounds nuw [4 x i8], ptr %i.aqm, i64 %i.bcr ; 2 uses
  %i.bct = load i32, ptr %i.bcs, align 4, !tbaa !36
  %i.bcu = add nsw i32 %i.bct, 1
  store i32 %i.bcu, ptr %i.bcs, align 4, !tbaa !36
  %i.bcv = getelementptr [2 x i8], ptr %i.jr, i64 %indvars.iv2390.i
  %i.bcw = getelementptr i8, ptr %i.bcv, i64 2
  %i.bcx = load i16, ptr %i.bcw, align 2, !tbaa !43
  %i.bcy = zext i16 %i.bcx to i64
  %i.bcz = getelementptr inbounds nuw [4 x i8], ptr %i.aqm, i64 %i.bcy ; 2 uses
  %i.bda = load i32, ptr %i.bcz, align 4, !tbaa !36
  %i.bdb = add nsw i32 %i.bda, 1
  store i32 %i.bdb, ptr %i.bcz, align 4, !tbaa !36
  %i.bdc = getelementptr [2 x i8], ptr %i.jr, i64 %indvars.iv2390.i
  %i.bdd = getelementptr i8, ptr %i.bdc, i64 4
  %i.bde = load i16, ptr %i.bdd, align 2, !tbaa !43
  %i.bdf = zext i16 %i.bde to i64
  %i.bdg = getelementptr inbounds nuw [4 x i8], ptr %i.aqm, i64 %i.bdf ; 2 uses
  %i.bdh = load i32, ptr %i.bdg, align 4, !tbaa !36
  %i.bdi = add nsw i32 %i.bdh, 1
  store i32 %i.bdi, ptr %i.bdg, align 4, !tbaa !36
  %i.bdj = getelementptr [2 x i8], ptr %i.jr, i64 %indvars.iv2390.i
  %i.bdk = getelementptr i8, ptr %i.bdj, i64 6
  %i.bdl = load i16, ptr %i.bdk, align 2, !tbaa !43
  %i.bdm = zext i16 %i.bdl to i64
  %i.bdn = getelementptr inbounds nuw [4 x i8], ptr %i.aqm, i64 %i.bdm ; 2 uses
  %i.bdo = load i32, ptr %i.bdn, align 4, !tbaa !36
  %i.bdp = add nsw i32 %i.bdo, 1
  store i32 %i.bdp, ptr %i.bdn, align 4, !tbaa !36
  %indvars.iv.next2391.i.3 = add nsw i64 %indvars.iv2390.i, 4 ; 2 uses
  %lftr.wideiv2394.i.3 = trunc i64 %indvars.iv.next2391.i.3 to i32
  %exitcond2395.not.i.3 = icmp eq i32 %i.aqo, %lftr.wideiv2394.i.3
  br i1 %exitcond2395.not.i.3, label %.loopexit1971.i, label %.lr.ph2140.i.new, !llvm.loop !62

.loopexit1971.i:                                  ; preds = %.prol.loopexit, %.lr.ph2140.i.new, %bb.bb, %.preheader1970.i
  %i.bdq = add nsw i32 %spec.select.i127, 1       ; 2 uses
  %i.bdr = load i32, ptr %i.nv, align 4, !tbaa !47 ; 2 uses
  %.not1510.i = icmp slt i32 %i.bdq, %i.bdr
  br i1 %.not1510.i, label %.lr.ph2146.i, label %._crit_edge2147.loopexit.i

._crit_edge2147.loopexit.i:                       ; preds = %.loopexit1971.i
  %i.bds = trunc nuw i64 %indvars.iv.next2397.i to i32
  %i.bdt = lshr i32 %i.aqf, 3
  br label %._crit_edge2147.i

._crit_edge2147.i:                                ; preds = %._crit_edge2147.loopexit.i, %.loopexit1976.i
  %.11488.lcssa.i = phi i32 [ 0, %.loopexit1976.i ], [ %i.bds, %._crit_edge2147.loopexit.i ] ; 6 uses
  %.01476.lcssa.i = phi i32 [ 0, %.loopexit1976.i ], [ %i.bdt, %._crit_edge2147.loopexit.i ]
  %i.bdu = load i32, ptr %i.nw, align 8, !tbaa !21
  %i.bdv = icmp sgt i32 %i.bdu, 2
  br i1 %i.bdv, label %bb.bc, label %.preheader

bb.bc:                                            ; preds = %._crit_edge2147.i
  %i.bdw = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.bdx = add nuw nsw i32 %.014892152.i, 1
  %i.bdy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bdw, ptr noundef nonnull @.str.4, i32 noundef %i.bdx, i32 noundef %.01476.lcssa.i) #10 ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %bb.bc
  %indvars.iv2399.i = phi i64 [ 0, %bb.bc ], [ %indvars.iv.next2400.i, %bb.bd ] ; 2 uses
  %i.bdz = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.bea = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv2399.i
  %i.beb = load i32, ptr %i.bea, align 4, !tbaa !36
  %i.bec = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bdz, ptr noundef nonnull @.str.5, i32 noundef %i.beb) #10 ; 0 uses
  %indvars.iv.next2400.i = add nuw nsw i64 %indvars.iv2399.i, 1 ; 2 uses
  %exitcond2403.not.i = icmp eq i64 %indvars.iv.next2400.i, %i.oq
  br i1 %exitcond2403.not.i, label %bb.be, label %bb.bd, !llvm.loop !63

bb.be:                                            ; preds = %bb.bd
  %i.bed = load ptr, ptr @stderr, align 8, !tbaa !22
  %fputc.i = call i32 @fputc(i32 10, ptr %i.bed)  ; 0 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.be, %._crit_edge2147.i
  br label %bb.bf

bb.bf:                                            ; preds = %.preheader, %bb.bf
  %indvars.iv2404.i = phi i64 [ %indvars.iv.next2405.i, %bb.bf ], [ 0, %.preheader ] ; 3 uses
  %i.bee = getelementptr inbounds nuw [258 x i8], ptr %2, i64 %indvars.iv2404.i
  %i.bef = getelementptr inbounds nuw [1032 x i8], ptr %i.os, i64 %indvars.iv2404.i
  call void @BZ2_hbMakeCodeLengths(ptr noundef nonnull %i.bee, ptr noundef nonnull %i.bef, i32 noundef %i.oe, i32 noundef 17) #11
  %indvars.iv.next2405.i = add nuw nsw i64 %indvars.iv2404.i, 1 ; 2 uses
  %exitcond2408.not.i = icmp eq i64 %indvars.iv.next2405.i, %i.oq
  br i1 %exitcond2408.not.i, label %bb.bg, label %bb.bf, !llvm.loop !64

bb.bg:                                            ; preds = %bb.bf
  %i.beg = add nuw nsw i32 %.014892152.i, 1       ; 2 uses
  %exitcond2409.not.i = icmp eq i32 %i.beg, 4
  br i1 %exitcond2409.not.i, label %bb.bh, label %.preheader1978.i, !llvm.loop !65

bb.bh:                                            ; preds = %bb.bg
  %i.beh = icmp slt i32 %.11488.lcssa.i, 18003
  br i1 %i.beh, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @BZ2_bz__AssertH__fail(i32 noundef 3003) #11
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %min.iters.check1138 = icmp samesign ult i32 %.01481.i, 4
  br i1 %min.iters.check1138, label %scalar.ph1137.preheader, label %vector.body1141

vector.body1141:                                  ; preds = %bb.bj
  %n.vec1140 = and i64 %i.oq, 4                   ; 2 uses
  store <4 x i8> <i8 0, i8 1, i8 2, i8 3>, ptr %i.c, align 4, !tbaa !26
  %cmp.n1147 = icmp eq i64 %n.vec1140, %i.oq
  br i1 %cmp.n1147, label %.preheader1969.i, label %scalar.ph1137.preheader

scalar.ph1137.preheader:                          ; preds = %bb.bj, %vector.body1141
  %indvars.iv2410.i.ph = phi i64 [ 0, %bb.bj ], [ %n.vec1140, %vector.body1141 ]
  br label %scalar.ph1137

.preheader1969.i:                                 ; preds = %scalar.ph1137, %vector.body1141
  %i.bei = icmp sgt i32 %.11488.lcssa.i, 0        ; 2 uses
  br i1 %i.bei, label %.lr.ph2165.i, label %._crit_edge2166.i

.lr.ph2165.i:                                     ; preds = %.preheader1969.i
  %.promoted.i = load i8, ptr %i.c, align 4
  %i.bej = getelementptr inbounds nuw i8, ptr %0, i64 19706
  %wide.trip.count2420.i = zext nneg i32 %.11488.lcssa.i to i64
  br label %bb.bk

scalar.ph1137:                                    ; preds = %scalar.ph1137.preheader, %scalar.ph1137
  %indvars.iv2410.i = phi i64 [ %indvars.iv.next2411.i, %scalar.ph1137 ], [ %indvars.iv2410.i.ph, %scalar.ph1137.preheader ] ; 3 uses
  %i.bek = trunc i64 %indvars.iv2410.i to i8
  %i.bel = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv2410.i
  store i8 %i.bek, ptr %i.bel, align 1, !tbaa !26
  %indvars.iv.next2411.i = add nuw nsw i64 %indvars.iv2410.i, 1 ; 2 uses
  %exitcond2414.not.i = icmp eq i64 %indvars.iv.next2411.i, %i.oq
  br i1 %exitcond2414.not.i, label %.preheader1969.i, label %scalar.ph1137, !llvm.loop !66

bb.bk:                                            ; preds = %._crit_edge2159.i, %.lr.ph2165.i
  %indvars.iv2417.i = phi i64 [ 0, %.lr.ph2165.i ], [ %indvars.iv.next2418.i, %._crit_edge2159.i ] ; 3 uses
  %.01464.lcssa21622163.i = phi i8 [ %.promoted.i, %.lr.ph2165.i ], [ %.01464.lcssa.i, %._crit_edge2159.i ] ; 3 uses
  %i.bem = getelementptr inbounds nuw i8, ptr %i.pa, i64 %indvars.iv2417.i
  %i.ben = load i8, ptr %i.bem, align 1, !tbaa !26 ; 3 uses
  %.not15092154.i = icmp eq i8 %i.ben, %.01464.lcssa21622163.i
  br i1 %.not15092154.i, label %._crit_edge2159.i, label %.lr.ph2158.i

.lr.ph2158.i:                                     ; preds = %bb.bk, %.lr.ph2158.i
  %indvars.iv2415.i = phi i64 [ %indvars.iv.next2416.i, %.lr.ph2158.i ], [ 0, %bb.bk ]
  %.014642156.i = phi i8 [ %i.bep, %.lr.ph2158.i ], [ %.01464.lcssa21622163.i, %bb.bk ]
  %indvars.iv.next2416.i = add nuw nsw i64 %indvars.iv2415.i, 1 ; 3 uses
  %i.beo = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next2416.i ; 2 uses
  %i.bep = load i8, ptr %i.beo, align 1, !tbaa !26 ; 2 uses
  store i8 %.014642156.i, ptr %i.beo, align 1, !tbaa !26
  %.not1509.i = icmp eq i8 %i.ben, %i.bep
  br i1 %.not1509.i, label %._crit_edge2159.loopexit.i, label %.lr.ph2158.i, !llvm.loop !67

._crit_edge2159.loopexit.i:                       ; preds = %.lr.ph2158.i
  %i.beq = trunc i64 %indvars.iv.next2416.i to i8
  br label %._crit_edge2159.i

._crit_edge2159.i:                                ; preds = %._crit_edge2159.loopexit.i, %bb.bk
  %.01465.lcssa.i = phi i8 [ 0, %bb.bk ], [ %i.beq, %._crit_edge2159.loopexit.i ]
  %.01464.lcssa.i = phi i8 [ %.01464.lcssa21622163.i, %bb.bk ], [ %i.ben, %._crit_edge2159.loopexit.i ]
  %i.ber = getelementptr inbounds nuw i8, ptr %i.bej, i64 %indvars.iv2417.i
  store i8 %.01465.lcssa.i, ptr %i.ber, align 1, !tbaa !26
  %indvars.iv.next2418.i = add nuw nsw i64 %indvars.iv2417.i, 1 ; 2 uses
  %exitcond2421.not.i = icmp eq i64 %indvars.iv.next2418.i, %wide.trip.count2420.i
  br i1 %exitcond2421.not.i, label %._crit_edge2166.i, label %bb.bk, !llvm.loop !68

._crit_edge2166.i:                                ; preds = %._crit_edge2159.i, %.preheader1969.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.bes = getelementptr inbounds nuw i8, ptr %0, i64 39256 ; 3 uses
  %min.iters.check1150 = icmp slt i32 %i.oe, 8
  %n.vec1152 = and i64 %wide.trip.count.i122, 2147483640 ; 3 uses
  %cmp.n1163 = icmp eq i64 %n.vec1152, %wide.trip.count.i122
  br label %.preheader1968.i

.preheader1968.i:                                 ; preds = %.thread.i, %._crit_edge2166.i
  %indvars.iv2427.i = phi i64 [ 0, %._crit_edge2166.i ], [ %indvars.iv.next2428.i, %.thread.i ] ; 4 uses
  br i1 %i.of, label %.lr.ph2171.i, label %.thread.i

.lr.ph2171.i:                                     ; preds = %.preheader1968.i
  %i.bet = getelementptr inbounds nuw [258 x i8], ptr %2, i64 %indvars.iv2427.i ; 2 uses
  br i1 %min.iters.check1150, label %scalar.ph1149.preheader, label %vector.body1153

vector.body1153:                                  ; preds = %.lr.ph2171.i, %vector.body1153
  %index1154 = phi i64 [ %index.next1160, %vector.body1153 ], [ 0, %.lr.ph2171.i ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bey, %vector.body1153 ], [ zeroinitializer, %.lr.ph2171.i ]
  %vec.phi1155 = phi <4 x i32> [ %i.bez, %vector.body1153 ], [ zeroinitializer, %.lr.ph2171.i ]
  %vec.phi1156 = phi <4 x i32> [ %i.bfa, %vector.body1153 ], [ splat (i32 32), %.lr.ph2171.i ]
  %vec.phi1157 = phi <4 x i32> [ %i.bfb, %vector.body1153 ], [ splat (i32 32), %.lr.ph2171.i ]
  %i.beu = getelementptr inbounds nuw i8, ptr %i.bet, i64 %index1154 ; 2 uses
  %i.bev = getelementptr inbounds nuw i8, ptr %i.beu, i64 4
  %wide.load1158 = load <4 x i8>, ptr %i.beu, align 1, !tbaa !26
  %wide.load1159 = load <4 x i8>, ptr %i.bev, align 1, !tbaa !26
  %i.bew = zext <4 x i8> %wide.load1158 to <4 x i32> ; 2 uses
  %i.bex = zext <4 x i8> %wide.load1159 to <4 x i32> ; 2 uses
  %i.bey = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi, <4 x i32> %i.bew) ; 2 uses
  %i.bez = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %vec.phi1155, <4 x i32> %i.bex) ; 2 uses
  %i.bfa = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.phi1156, <4 x i32> %i.bew) ; 2 uses
  %i.bfb = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %vec.phi1157, <4 x i32> %i.bex) ; 2 uses
  %index.next1160 = add nuw i64 %index1154, 8     ; 2 uses
  %i.bfc = icmp eq i64 %index.next1160, %n.vec1152
  br i1 %i.bfc, label %middle.block1161, label %vector.body1153, !llvm.loop !69

middle.block1161:                                 ; preds = %vector.body1153
  %rdx.minmax = call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.bey, <4 x i32> %i.bez)
  %i.bfd = call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %rdx.minmax1162 = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.bfa, <4 x i32> %i.bfb)
  %i.bfe = call i32 @llvm.vector.reduce.umin.v4i32(<4 x i32> %rdx.minmax1162) ; 2 uses
  br i1 %cmp.n1163, label %._crit_edge2172.i, label %scalar.ph1149.preheader

scalar.ph1149.preheader:                          ; preds = %.lr.ph2171.i, %middle.block1161
  %indvars.iv2422.i.ph = phi i64 [ 0, %.lr.ph2171.i ], [ %n.vec1152, %middle.block1161 ]
  %.014832169.i.ph = phi i32 [ 0, %.lr.ph2171.i ], [ %i.bfd, %middle.block1161 ]
  %.014852168.i.ph = phi i32 [ 32, %.lr.ph2171.i ], [ %i.bfe, %middle.block1161 ]
  br label %scalar.ph1149

scalar.ph1149:                                    ; preds = %scalar.ph1149.preheader, %scalar.ph1149
  %indvars.iv2422.i = phi i64 [ %indvars.iv.next2423.i, %scalar.ph1149 ], [ %indvars.iv2422.i.ph, %scalar.ph1149.preheader ] ; 2 uses
  %.014832169.i = phi i32 [ %spec.select1524.i, %scalar.ph1149 ], [ %.014832169.i.ph, %scalar.ph1149.preheader ]
  %.014852168.i = phi i32 [ %.11486.i, %scalar.ph1149 ], [ %.014852168.i.ph, %scalar.ph1149.preheader ]
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bet, i64 %indvars.iv2422.i
  %i.bfg = load i8, ptr %i.bff, align 1, !tbaa !26
  %i.bfh = zext i8 %i.bfg to i32                  ; 2 uses
  %spec.select1524.i = call i32 @llvm.umax.i32(i32 %.014832169.i, i32 %i.bfh) ; 2 uses
  %.11486.i = call i32 @llvm.umin.i32(i32 %.014852168.i, i32 %i.bfh) ; 2 uses
  %indvars.iv.next2423.i = add nuw nsw i64 %indvars.iv2422.i, 1 ; 2 uses
  %exitcond2426.not.i = icmp eq i64 %indvars.iv.next2423.i, %wide.trip.count.i122
  br i1 %exitcond2426.not.i, label %._crit_edge2172.i, label %scalar.ph1149, !llvm.loop !70

._crit_edge2172.i:                                ; preds = %scalar.ph1149, %middle.block1161
  %spec.select1524.i.lcssa = phi i32 [ %i.bfd, %middle.block1161 ], [ %spec.select1524.i, %scalar.ph1149 ] ; 3 uses
  %.11486.i.lcssa = phi i32 [ %i.bfe, %middle.block1161 ], [ %.11486.i, %scalar.ph1149 ] ; 2 uses
  %i.bfi = icmp samesign ugt i32 %spec.select1524.i.lcssa, 17
  br i1 %i.bfi, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %._crit_edge2172.i
  call void @BZ2_bz__AssertH__fail(i32 noundef 3004) #11
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %._crit_edge2172.i
  %i.bfj = icmp eq i32 %.11486.i.lcssa, 0
  br i1 %i.bfj, label %bb.bn, label %.thread.i

bb.bn:                                            ; preds = %bb.bm
  call void @BZ2_bz__AssertH__fail(i32 noundef 3005) #11
  br label %.thread.i

.thread.i:                                        ; preds = %bb.bn, %bb.bm, %.preheader1968.i
  %.01485.lcssa26162621.i = phi i32 [ %.11486.i.lcssa, %bb.bm ], [ 0, %bb.bn ], [ 32, %.preheader1968.i ]
  %.01483.lcssa26172620.i = phi i32 [ %spec.select1524.i.lcssa, %bb.bm ], [ %spec.select1524.i.lcssa, %bb.bn ], [ 0, %.preheader1968.i ]
  %i.bfk = getelementptr inbounds nuw [1032 x i8], ptr %i.bes, i64 %indvars.iv2427.i
  %i.bfl = getelementptr inbounds nuw [258 x i8], ptr %2, i64 %indvars.iv2427.i
  call void @BZ2_hbAssignCodes(ptr noundef nonnull %i.bfk, ptr noundef nonnull %i.bfl, i32 noundef %.01485.lcssa26162621.i, i32 noundef %.01483.lcssa26172620.i, i32 noundef %i.oe) #11
  %indvars.iv.next2428.i = add nuw nsw i64 %indvars.iv2427.i, 1 ; 2 uses
  %exitcond2431.not.i = icmp eq i64 %indvars.iv.next2428.i, %i.oq
  br i1 %exitcond2431.not.i, label %vector.ph1167, label %.preheader1968.i, !llvm.loop !71

vector.ph1167:                                    ; preds = %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.bfm = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bfn = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.bfo = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bfp = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bfq = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bfr = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bfs = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bft = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bfu = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bfv = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bfw = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bfx = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bfy = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bfz = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bga = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bgb = load i8, ptr %i.jt, align 8, !tbaa !26
  %i.bgc = load i8, ptr %i.bfm, align 8, !tbaa !26
  %i.bgd = load i8, ptr %i.bfn, align 8, !tbaa !26
  %i.bge = load i8, ptr %i.bfo, align 8, !tbaa !26
  %i.bgf = load i8, ptr %i.bfp, align 8, !tbaa !26
  %i.bgg = load i8, ptr %i.bfq, align 8, !tbaa !26
  %i.bgh = load i8, ptr %i.bfr, align 8, !tbaa !26
  %i.bgi = load i8, ptr %i.bfs, align 8, !tbaa !26
  %i.bgj = load i8, ptr %i.bft, align 8, !tbaa !26
  %i.bgk = load i8, ptr %i.bfu, align 8, !tbaa !26
  %i.bgl = load i8, ptr %i.bfv, align 8, !tbaa !26
  %i.bgm = load i8, ptr %i.bfw, align 8, !tbaa !26
  %i.bgn = load i8, ptr %i.bfx, align 8, !tbaa !26
  %i.bgo = load i8, ptr %i.bfy, align 8, !tbaa !26
  %i.bgp = load i8, ptr %i.bfz, align 8, !tbaa !26
  %i.bgq = load i8, ptr %i.bga, align 8, !tbaa !26
  %i.bgr = insertelement <16 x i8> poison, i8 %i.bgb, i64 0
  %i.bgs = insertelement <16 x i8> %i.bgr, i8 %i.bgc, i64 1
  %i.bgt = insertelement <16 x i8> %i.bgs, i8 %i.bgd, i64 2
  %i.bgu = insertelement <16 x i8> %i.bgt, i8 %i.bge, i64 3
  %i.bgv = insertelement <16 x i8> %i.bgu, i8 %i.bgf, i64 4
  %i.bgw = insertelement <16 x i8> %i.bgv, i8 %i.bgg, i64 5
  %i.bgx = insertelement <16 x i8> %i.bgw, i8 %i.bgh, i64 6
  %i.bgy = insertelement <16 x i8> %i.bgx, i8 %i.bgi, i64 7
  %i.bgz = insertelement <16 x i8> %i.bgy, i8 %i.bgj, i64 8
  %i.bha = insertelement <16 x i8> %i.bgz, i8 %i.bgk, i64 9
  %i.bhb = insertelement <16 x i8> %i.bha, i8 %i.bgl, i64 10
  %i.bhc = insertelement <16 x i8> %i.bhb, i8 %i.bgm, i64 11
  %i.bhd = insertelement <16 x i8> %i.bhc, i8 %i.bgn, i64 12
  %i.bhe = insertelement <16 x i8> %i.bhd, i8 %i.bgo, i64 13
  %i.bhf = insertelement <16 x i8> %i.bhe, i8 %i.bgp, i64 14
  %i.bhg = insertelement <16 x i8> %i.bhf, i8 %i.bgq, i64 15
  %i.bhh = icmp ne <16 x i8> %i.bhg, zeroinitializer
  %i.bhi = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.bhj = getelementptr inbounds nuw i8, ptr %0, i64 145
  %i.bhk = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.bhl = getelementptr inbounds nuw i8, ptr %0, i64 177
  %i.bhm = getelementptr inbounds nuw i8, ptr %0, i64 193
  %i.bhn = getelementptr inbounds nuw i8, ptr %0, i64 209
  %i.bho = getelementptr inbounds nuw i8, ptr %0, i64 225
  %i.bhp = getelementptr inbounds nuw i8, ptr %0, i64 241
  %i.bhq = getelementptr inbounds nuw i8, ptr %0, i64 257
  %i.bhr = getelementptr inbounds nuw i8, ptr %0, i64 273
  %i.bhs = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.bht = getelementptr inbounds nuw i8, ptr %0, i64 305
  %i.bhu = getelementptr inbounds nuw i8, ptr %0, i64 321
  %i.bhv = getelementptr inbounds nuw i8, ptr %0, i64 337
  %i.bhw = getelementptr inbounds nuw i8, ptr %0, i64 353
  %i.bhx = getelementptr inbounds nuw i8, ptr %0, i64 369
  %i.bhy = load i8, ptr %i.bhi, align 1, !tbaa !26
  %i.bhz = load i8, ptr %i.bhj, align 1, !tbaa !26
  %i.bia = load i8, ptr %i.bhk, align 1, !tbaa !26
  %i.bib = load i8, ptr %i.bhl, align 1, !tbaa !26
  %i.bic = load i8, ptr %i.bhm, align 1, !tbaa !26
  %i.bid = load i8, ptr %i.bhn, align 1, !tbaa !26
  %i.bie = load i8, ptr %i.bho, align 1, !tbaa !26
  %i.bif = load i8, ptr %i.bhp, align 1, !tbaa !26
  %i.big = load i8, ptr %i.bhq, align 1, !tbaa !26
  %i.bih = load i8, ptr %i.bhr, align 1, !tbaa !26
  %i.bii = load i8, ptr %i.bhs, align 1, !tbaa !26
  %i.bij = load i8, ptr %i.bht, align 1, !tbaa !26
  %i.bik = load i8, ptr %i.bhu, align 1, !tbaa !26
  %i.bil = load i8, ptr %i.bhv, align 1, !tbaa !26
  %i.bim = load i8, ptr %i.bhw, align 1, !tbaa !26
  %i.bin = load i8, ptr %i.bhx, align 1, !tbaa !26
  %i.bio = insertelement <16 x i8> poison, i8 %i.bhy, i64 0
  %i.bip = insertelement <16 x i8> %i.bio, i8 %i.bhz, i64 1
  %i.biq = insertelement <16 x i8> %i.bip, i8 %i.bia, i64 2
  %i.bir = insertelement <16 x i8> %i.biq, i8 %i.bib, i64 3
  %i.bis = insertelement <16 x i8> %i.bir, i8 %i.bic, i64 4
  %i.bit = insertelement <16 x i8> %i.bis, i8 %i.bid, i64 5
  %i.biu = insertelement <16 x i8> %i.bit, i8 %i.bie, i64 6
  %i.biv = insertelement <16 x i8> %i.biu, i8 %i.bif, i64 7
  %i.biw = insertelement <16 x i8> %i.biv, i8 %i.big, i64 8
  %i.bix = insertelement <16 x i8> %i.biw, i8 %i.bih, i64 9
  %i.biy = insertelement <16 x i8> %i.bix, i8 %i.bii, i64 10
  %i.biz = insertelement <16 x i8> %i.biy, i8 %i.bij, i64 11
  %i.bja = insertelement <16 x i8> %i.biz, i8 %i.bik, i64 12
  %i.bjb = insertelement <16 x i8> %i.bja, i8 %i.bil, i64 13
  %i.bjc = insertelement <16 x i8> %i.bjb, i8 %i.bim, i64 14
  %i.bjd = insertelement <16 x i8> %i.bjc, i8 %i.bin, i64 15
  %i.bje = icmp ne <16 x i8> %i.bjd, zeroinitializer
  %i.bjf = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.bjg = getelementptr inbounds nuw i8, ptr %0, i64 146
  %i.bjh = getelementptr inbounds nuw i8, ptr %0, i64 162
  %i.bji = getelementptr inbounds nuw i8, ptr %0, i64 178
  %i.bjj = getelementptr inbounds nuw i8, ptr %0, i64 194
  %i.bjk = getelementptr inbounds nuw i8, ptr %0, i64 210
  %i.bjl = getelementptr inbounds nuw i8, ptr %0, i64 226
  %i.bjm = getelementptr inbounds nuw i8, ptr %0, i64 242
  %i.bjn = getelementptr inbounds nuw i8, ptr %0, i64 258
  %i.bjo = getelementptr inbounds nuw i8, ptr %0, i64 274
  %i.bjp = getelementptr inbounds nuw i8, ptr %0, i64 290
  %i.bjq = getelementptr inbounds nuw i8, ptr %0, i64 306
  %i.bjr = getelementptr inbounds nuw i8, ptr %0, i64 322
  %i.bjs = getelementptr inbounds nuw i8, ptr %0, i64 338
  %i.bjt = getelementptr inbounds nuw i8, ptr %0, i64 354
  %i.bju = getelementptr inbounds nuw i8, ptr %0, i64 370
  %i.bjv = load i8, ptr %i.bjf, align 2, !tbaa !26
  %i.bjw = load i8, ptr %i.bjg, align 2, !tbaa !26
  %i.bjx = load i8, ptr %i.bjh, align 2, !tbaa !26
  %i.bjy = load i8, ptr %i.bji, align 2, !tbaa !26
  %i.bjz = load i8, ptr %i.bjj, align 2, !tbaa !26
  %i.bka = load i8, ptr %i.bjk, align 2, !tbaa !26
  %i.bkb = load i8, ptr %i.bjl, align 2, !tbaa !26
  %i.bkc = load i8, ptr %i.bjm, align 2, !tbaa !26
  %i.bkd = load i8, ptr %i.bjn, align 2, !tbaa !26
  %i.bke = load i8, ptr %i.bjo, align 2, !tbaa !26
  %i.bkf = load i8, ptr %i.bjp, align 2, !tbaa !26
  %i.bkg = load i8, ptr %i.bjq, align 2, !tbaa !26
  %i.bkh = load i8, ptr %i.bjr, align 2, !tbaa !26
  %i.bki = load i8, ptr %i.bjs, align 2, !tbaa !26
  %i.bkj = load i8, ptr %i.bjt, align 2, !tbaa !26
  %i.bkk = load i8, ptr %i.bju, align 2, !tbaa !26
  %i.bkl = insertelement <16 x i8> poison, i8 %i.bjv, i64 0
  %i.bkm = insertelement <16 x i8> %i.bkl, i8 %i.bjw, i64 1
  %i.bkn = insertelement <16 x i8> %i.bkm, i8 %i.bjx, i64 2
  %i.bko = insertelement <16 x i8> %i.bkn, i8 %i.bjy, i64 3
  %i.bkp = insertelement <16 x i8> %i.bko, i8 %i.bjz, i64 4
  %i.bkq = insertelement <16 x i8> %i.bkp, i8 %i.bka, i64 5
  %i.bkr = insertelement <16 x i8> %i.bkq, i8 %i.bkb, i64 6
  %i.bks = insertelement <16 x i8> %i.bkr, i8 %i.bkc, i64 7
  %i.bkt = insertelement <16 x i8> %i.bks, i8 %i.bkd, i64 8
  %i.bku = insertelement <16 x i8> %i.bkt, i8 %i.bke, i64 9
  %i.bkv = insertelement <16 x i8> %i.bku, i8 %i.bkf, i64 10
  %i.bkw = insertelement <16 x i8> %i.bkv, i8 %i.bkg, i64 11
  %i.bkx = insertelement <16 x i8> %i.bkw, i8 %i.bkh, i64 12
  %i.bky = insertelement <16 x i8> %i.bkx, i8 %i.bki, i64 13
  %i.bkz = insertelement <16 x i8> %i.bky, i8 %i.bkj, i64 14
  %i.bla = insertelement <16 x i8> %i.bkz, i8 %i.bkk, i64 15
  %i.blb = icmp ne <16 x i8> %i.bla, zeroinitializer
  %i.blc = getelementptr inbounds nuw i8, ptr %0, i64 131
  %i.bld = getelementptr inbounds nuw i8, ptr %0, i64 147
  %i.ble = getelementptr inbounds nuw i8, ptr %0, i64 163
  %i.blf = getelementptr inbounds nuw i8, ptr %0, i64 179
  %i.blg = getelementptr inbounds nuw i8, ptr %0, i64 195
  %i.blh = getelementptr inbounds nuw i8, ptr %0, i64 211
  %i.bli = getelementptr inbounds nuw i8, ptr %0, i64 227
  %i.blj = getelementptr inbounds nuw i8, ptr %0, i64 243
  %i.blk = getelementptr inbounds nuw i8, ptr %0, i64 259
  %i.bll = getelementptr inbounds nuw i8, ptr %0, i64 275
  %i.blm = getelementptr inbounds nuw i8, ptr %0, i64 291
  %i.bln = getelementptr inbounds nuw i8, ptr %0, i64 307
  %i.blo = getelementptr inbounds nuw i8, ptr %0, i64 323
  %i.blp = getelementptr inbounds nuw i8, ptr %0, i64 339
  %i.blq = getelementptr inbounds nuw i8, ptr %0, i64 355
  %i.blr = getelementptr inbounds nuw i8, ptr %0, i64 371
  %i.bls = load i8, ptr %i.blc, align 1, !tbaa !26
  %i.blt = load i8, ptr %i.bld, align 1, !tbaa !26
  %i.blu = load i8, ptr %i.ble, align 1, !tbaa !26
  %i.blv = load i8, ptr %i.blf, align 1, !tbaa !26
  %i.blw = load i8, ptr %i.blg, align 1, !tbaa !26
  %i.blx = load i8, ptr %i.blh, align 1, !tbaa !26
  %i.bly = load i8, ptr %i.bli, align 1, !tbaa !26
  %i.blz = load i8, ptr %i.blj, align 1, !tbaa !26
  %i.bma = load i8, ptr %i.blk, align 1, !tbaa !26
  %i.bmb = load i8, ptr %i.bll, align 1, !tbaa !26
  %i.bmc = load i8, ptr %i.blm, align 1, !tbaa !26
  %i.bmd = load i8, ptr %i.bln, align 1, !tbaa !26
  %i.bme = load i8, ptr %i.blo, align 1, !tbaa !26
  %i.bmf = load i8, ptr %i.blp, align 1, !tbaa !26
  %i.bmg = load i8, ptr %i.blq, align 1, !tbaa !26
  %i.bmh = load i8, ptr %i.blr, align 1, !tbaa !26
  %i.bmi = insertelement <16 x i8> poison, i8 %i.bls, i64 0
  %i.bmj = insertelement <16 x i8> %i.bmi, i8 %i.blt, i64 1
  %i.bmk = insertelement <16 x i8> %i.bmj, i8 %i.blu, i64 2
  %i.bml = insertelement <16 x i8> %i.bmk, i8 %i.blv, i64 3
  %i.bmm = insertelement <16 x i8> %i.bml, i8 %i.blw, i64 4
  %i.bmn = insertelement <16 x i8> %i.bmm, i8 %i.blx, i64 5
  %i.bmo = insertelement <16 x i8> %i.bmn, i8 %i.bly, i64 6
  %i.bmp = insertelement <16 x i8> %i.bmo, i8 %i.blz, i64 7
  %i.bmq = insertelement <16 x i8> %i.bmp, i8 %i.bma, i64 8
  %i.bmr = insertelement <16 x i8> %i.bmq, i8 %i.bmb, i64 9
  %i.bms = insertelement <16 x i8> %i.bmr, i8 %i.bmc, i64 10
  %i.bmt = insertelement <16 x i8> %i.bms, i8 %i.bmd, i64 11
  %i.bmu = insertelement <16 x i8> %i.bmt, i8 %i.bme, i64 12
  %i.bmv = insertelement <16 x i8> %i.bmu, i8 %i.bmf, i64 13
  %i.bmw = insertelement <16 x i8> %i.bmv, i8 %i.bmg, i64 14
end_hunk_2
begin_hunk_3_@BZ2_compressBlock:bb.a
  br i1 %i.cnn, label %.lr.ph.i1552.i, label %bsW.exit1555.i

.lr.ph.i1552.i:                                   ; preds = %bb.bw, %.lr.ph.i1552.i
  %i.cno = phi i32 [ %i.cnw, %.lr.ph.i1552.i ], [ %i.cnm, %bb.bw ]
  %i.cnp = phi i32 [ %i.cny, %.lr.ph.i1552.i ], [ %.pre.i1553.i, %bb.bw ]
  %i.cnq = lshr i32 %i.cnp, 24
  %i.cnr = trunc nuw i32 %i.cnq to i8
  %i.cns = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.cnt = sext i32 %i.cno to i64
  %i.cnu = getelementptr inbounds i8, ptr %i.cns, i64 %i.cnt
  store i8 %i.cnr, ptr %i.cnu, align 1, !tbaa !26
  %i.cnv = load i32, ptr %i.ckf, align 4, !tbaa !20
  %i.cnw = add nsw i32 %i.cnv, 1                  ; 3 uses
  store i32 %i.cnw, ptr %i.ckf, align 4, !tbaa !20
  %i.cnx = load i32, ptr %i.cy, align 8, !tbaa !15
  %i.cny = shl i32 %i.cnx, 8                      ; 3 uses
  store i32 %i.cny, ptr %i.cy, align 8, !tbaa !15
  %i.cnz = load i32, ptr %i.cv, align 4, !tbaa !9 ; 2 uses
  %i.coa = add nsw i32 %i.cnz, -8                 ; 2 uses
  store i32 %i.coa, ptr %i.cv, align 4, !tbaa !9
  %i.cob = icmp sgt i32 %i.cnz, 15
  br i1 %i.cob, label %.lr.ph.i1552.i, label %bsW.exit1555.i, !llvm.loop !27

bsW.exit1555.i:                                   ; preds = %.lr.ph.i1552.i, %bb.bw
  %.pre15.i1561.i = phi i32 [ %i.cnm, %bb.bw ], [ %i.cnw, %.lr.ph.i1552.i ] ; 2 uses
  %i.coc = phi i32 [ %.pre.i1553.i, %bb.bw ], [ %i.cny, %.lr.ph.i1552.i ]
  %.lcssa.i1551.i = phi i32 [ %i.cnl, %bb.bw ], [ %i.coa, %.lr.ph.i1552.i ] ; 3 uses
  %i.cod = add nsw i32 %.lcssa.i1551.i, 3         ; 2 uses
  %i.coe = sub i32 29, %.lcssa.i1551.i
  %i.cof = shl i32 %.01481.i, %i.coe
  %i.cog = or i32 %i.cof, %i.coc                  ; 3 uses
  store i32 %i.cog, ptr %i.cy, align 8, !tbaa !15
  store i32 %i.cod, ptr %i.cv, align 4, !tbaa !9
  %i.coh = icmp sgt i32 %.lcssa.i1551.i, 4
  br i1 %i.coh, label %.lr.ph.i1559.i, label %bsW.exit1562.i

.lr.ph.i1559.i:                                   ; preds = %bsW.exit1555.i, %.lr.ph.i1559.i
  %i.coi = phi i32 [ %i.coq, %.lr.ph.i1559.i ], [ %.pre15.i1561.i, %bsW.exit1555.i ]
  %i.coj = phi i32 [ %i.cos, %.lr.ph.i1559.i ], [ %i.cog, %bsW.exit1555.i ]
  %i.cok = lshr i32 %i.coj, 24
  %i.col = trunc nuw i32 %i.cok to i8
  %i.com = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.con = sext i32 %i.coi to i64
  %i.coo = getelementptr inbounds i8, ptr %i.com, i64 %i.con
  store i8 %i.col, ptr %i.coo, align 1, !tbaa !26
  %i.cop = load i32, ptr %i.ckf, align 4, !tbaa !20
  %i.coq = add nsw i32 %i.cop, 1                  ; 3 uses
  store i32 %i.coq, ptr %i.ckf, align 4, !tbaa !20
  %i.cor = load i32, ptr %i.cy, align 8, !tbaa !15
  %i.cos = shl i32 %i.cor, 8                      ; 3 uses
  store i32 %i.cos, ptr %i.cy, align 8, !tbaa !15
  %i.cot = load i32, ptr %i.cv, align 4, !tbaa !9 ; 2 uses
  %i.cou = add nsw i32 %i.cot, -8                 ; 2 uses
  store i32 %i.cou, ptr %i.cv, align 4, !tbaa !9
  %i.cov = icmp sgt i32 %i.cot, 15
  br i1 %i.cov, label %.lr.ph.i1559.i, label %bsW.exit1562.i, !llvm.loop !27

bsW.exit1562.i:                                   ; preds = %.lr.ph.i1559.i, %bsW.exit1555.i
  %.pre15.i15682501.i.a = phi i32 [ %.pre15.i1561.i, %bsW.exit1555.i ], [ %i.coq, %.lr.ph.i1559.i ] ; 2 uses
  %i.cow = phi i32 [ %i.cog, %bsW.exit1555.i ], [ %i.cos, %.lr.ph.i1559.i ]
  %.lcssa.i1558.i = phi i32 [ %i.cod, %bsW.exit1555.i ], [ %i.cou, %.lr.ph.i1559.i ] ; 2 uses
  %i.cox = add nsw i32 %.lcssa.i1558.i, 15        ; 3 uses
  %i.coy = sub i32 17, %.lcssa.i1558.i
  %i.coz = shl i32 %.11488.lcssa.i, %i.coy
  %i.cpa = or i32 %i.coz, %i.cow                  ; 3 uses
  store i32 %i.cpa, ptr %i.cy, align 8, !tbaa !15
  store i32 %i.cox, ptr %i.cv, align 4, !tbaa !9
  br i1 %i.bei, label %.preheader1964.lr.ph.i, label %._crit_edge2185.i

.preheader1964.lr.ph.i:                           ; preds = %bsW.exit1562.i
  %i.cpb = getelementptr inbounds nuw i8, ptr %0, i64 19706
  %wide.trip.count2456.i = zext nneg i32 %.11488.lcssa.i to i64
  br label %.preheader1964.i

.preheader1964.i:                                 ; preds = %bsW.exit1576.i, %.preheader1964.lr.ph.i
  %.pre15.i15682499.i = phi i32 [ %.pre15.i15682501.i.a, %.preheader1964.lr.ph.i ], [ %.pre15.i15682500.i, %bsW.exit1576.i ] ; 2 uses
  %.pre16.i15642495.i = phi i32 [ %i.cpa, %.preheader1964.lr.ph.i ], [ %i.cqu, %bsW.exit1576.i ] ; 2 uses
  %i.cpc = phi i32 [ %i.cox, %.preheader1964.lr.ph.i ], [ %i.cqv, %bsW.exit1576.i ] ; 2 uses
  %indvars.iv2452.i = phi i64 [ 0, %.preheader1964.lr.ph.i ], [ %indvars.iv.next2453.i, %bsW.exit1576.i ] ; 2 uses
  %i.cpd = getelementptr inbounds nuw i8, ptr %i.cpb, i64 %indvars.iv2452.i ; 2 uses
  %i.cpe = load i8, ptr %i.cpd, align 1, !tbaa !26 ; 2 uses
  %.not2212.i = icmp eq i8 %i.cpe, 0
  br i1 %.not2212.i, label %._crit_edge2183.i, label %.lr.ph2182.i

.lr.ph2182.i:                                     ; preds = %.preheader1964.i, %bsW.exit1569.i
  %i.cpf = phi i8 [ %i.cpw, %bsW.exit1569.i ], [ %i.cpe, %.preheader1964.i ]
  %.pre15.i1568.i = phi i32 [ %.pre15.i15682496.i, %bsW.exit1569.i ], [ %.pre15.i15682499.i, %.preheader1964.i ] ; 2 uses
  %.pre.i1567.i = phi i32 [ %i.cqa, %bsW.exit1569.i ], [ %.pre16.i15642495.i, %.preheader1964.i ] ; 2 uses
  %i.cpg = phi i32 [ %i.cpy, %bsW.exit1569.i ], [ %i.cpc, %.preheader1964.i ] ; 2 uses
  %.314682181.i = phi i32 [ %i.cqb, %bsW.exit1569.i ], [ 0, %.preheader1964.i ]
  %i.cph = icmp sgt i32 %i.cpg, 7
  br i1 %i.cph, label %.lr.ph.i1566.i, label %bsW.exit1569.i

.lr.ph.i1566.i:                                   ; preds = %.lr.ph2182.i, %.lr.ph.i1566.i
  %i.cpi = phi i32 [ %i.cpq, %.lr.ph.i1566.i ], [ %.pre15.i1568.i, %.lr.ph2182.i ]
  %i.cpj = phi i32 [ %i.cps, %.lr.ph.i1566.i ], [ %.pre.i1567.i, %.lr.ph2182.i ]
  %i.cpk = lshr i32 %i.cpj, 24
  %i.cpl = trunc nuw i32 %i.cpk to i8
  %i.cpm = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.cpn = sext i32 %i.cpi to i64
  %i.cpo = getelementptr inbounds i8, ptr %i.cpm, i64 %i.cpn
  store i8 %i.cpl, ptr %i.cpo, align 1, !tbaa !26
  %i.cpp = load i32, ptr %i.ckf, align 4, !tbaa !20
  %i.cpq = add nsw i32 %i.cpp, 1                  ; 3 uses
  store i32 %i.cpq, ptr %i.ckf, align 4, !tbaa !20
  %i.cpr = load i32, ptr %i.cy, align 8, !tbaa !15
  %i.cps = shl i32 %i.cpr, 8                      ; 3 uses
  store i32 %i.cps, ptr %i.cy, align 8, !tbaa !15
  %i.cpt = load i32, ptr %i.cv, align 4, !tbaa !9 ; 2 uses
  %i.cpu = add nsw i32 %i.cpt, -8                 ; 2 uses
  store i32 %i.cpu, ptr %i.cv, align 4, !tbaa !9
  %i.cpv = icmp sgt i32 %i.cpt, 15
  br i1 %i.cpv, label %.lr.ph.i1566.i, label %bsW.exit1569.loopexit.i, !llvm.loop !27

bsW.exit1569.loopexit.i:                          ; preds = %.lr.ph.i1566.i
  %.pre2502.i = load i8, ptr %i.cpd, align 1, !tbaa !26
  br label %bsW.exit1569.i

bsW.exit1569.i:                                   ; preds = %bsW.exit1569.loopexit.i, %.lr.ph2182.i
  %i.cpw = phi i8 [ %.pre2502.i, %bsW.exit1569.loopexit.i ], [ %i.cpf, %.lr.ph2182.i ] ; 2 uses
  %.pre15.i15682496.i = phi i32 [ %i.cpq, %bsW.exit1569.loopexit.i ], [ %.pre15.i1568.i, %.lr.ph2182.i ] ; 2 uses
  %i.cpx = phi i32 [ %i.cps, %bsW.exit1569.loopexit.i ], [ %.pre.i1567.i, %.lr.ph2182.i ]
  %.lcssa.i1565.i = phi i32 [ %i.cpu, %bsW.exit1569.loopexit.i ], [ %i.cpg, %.lr.ph2182.i ] ; 2 uses
  %i.cpy = add nsw i32 %.lcssa.i1565.i, 1         ; 3 uses
  %i.cpz = lshr exact i32 -2147483648, %.lcssa.i1565.i
  %i.cqa = or i32 %i.cpz, %i.cpx                  ; 3 uses
  store i32 %i.cqa, ptr %i.cy, align 8, !tbaa !15
  store i32 %i.cpy, ptr %i.cv, align 4, !tbaa !9
  %i.cqb = add nuw nsw i32 %.314682181.i, 1       ; 2 uses
  %i.cqc = zext i8 %i.cpw to i32
  %i.cqd = icmp samesign ult i32 %i.cqb, %i.cqc
  br i1 %i.cqd, label %.lr.ph2182.i, label %._crit_edge2183.i, !llvm.loop !75

._crit_edge2183.i:                                ; preds = %bsW.exit1569.i, %.preheader1964.i
  %.pre.i1574.i = phi i32 [ %.pre16.i15642495.i, %.preheader1964.i ], [ %i.cqa, %bsW.exit1569.i ] ; 2 uses
  %i.cqe = phi i32 [ %i.cpc, %.preheader1964.i ], [ %i.cpy, %bsW.exit1569.i ] ; 2 uses
  %.pre15.i1575.i = phi i32 [ %.pre15.i15682499.i, %.preheader1964.i ], [ %.pre15.i15682496.i, %bsW.exit1569.i ] ; 2 uses
  %i.cqf = icmp sgt i32 %i.cqe, 7
  br i1 %i.cqf, label %.lr.ph.i1573.i, label %bsW.exit1576.i

.lr.ph.i1573.i:                                   ; preds = %._crit_edge2183.i, %.lr.ph.i1573.i
  %i.cqg = phi i32 [ %i.cqo, %.lr.ph.i1573.i ], [ %.pre15.i1575.i, %._crit_edge2183.i ]
  %i.cqh = phi i32 [ %i.cqq, %.lr.ph.i1573.i ], [ %.pre.i1574.i, %._crit_edge2183.i ]
  %i.cqi = lshr i32 %i.cqh, 24
  %i.cqj = trunc nuw i32 %i.cqi to i8
  %i.cqk = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.cql = sext i32 %i.cqg to i64
  %i.cqm = getelementptr inbounds i8, ptr %i.cqk, i64 %i.cql
  store i8 %i.cqj, ptr %i.cqm, align 1, !tbaa !26
  %i.cqn = load i32, ptr %i.ckf, align 4, !tbaa !20
  %i.cqo = add nsw i32 %i.cqn, 1                  ; 3 uses
  store i32 %i.cqo, ptr %i.ckf, align 4, !tbaa !20
  %i.cqp = load i32, ptr %i.cy, align 8, !tbaa !15
  %i.cqq = shl i32 %i.cqp, 8                      ; 3 uses
  store i32 %i.cqq, ptr %i.cy, align 8, !tbaa !15
  %i.cqr = load i32, ptr %i.cv, align 4, !tbaa !9 ; 2 uses
  %i.cqs = add nsw i32 %i.cqr, -8                 ; 2 uses
  store i32 %i.cqs, ptr %i.cv, align 4, !tbaa !9
  %i.cqt = icmp sgt i32 %i.cqr, 15
  br i1 %i.cqt, label %.lr.ph.i1573.i, label %bsW.exit1576.i, !llvm.loop !27

bsW.exit1576.i:                                   ; preds = %.lr.ph.i1573.i, %._crit_edge2183.i
  %.pre15.i15682500.i = phi i32 [ %.pre15.i1575.i, %._crit_edge2183.i ], [ %i.cqo, %.lr.ph.i1573.i ] ; 2 uses
  %i.cqu = phi i32 [ %.pre.i1574.i, %._crit_edge2183.i ], [ %i.cqq, %.lr.ph.i1573.i ] ; 3 uses
  %.lcssa.i1572.i = phi i32 [ %i.cqe, %._crit_edge2183.i ], [ %i.cqs, %.lr.ph.i1573.i ]
  %i.cqv = add nsw i32 %.lcssa.i1572.i, 1         ; 3 uses
  store i32 %i.cqu, ptr %i.cy, align 8, !tbaa !15
  store i32 %i.cqv, ptr %i.cv, align 4, !tbaa !9
  %indvars.iv.next2453.i = add nuw nsw i64 %indvars.iv2452.i, 1 ; 2 uses
  %exitcond2457.not.i = icmp eq i64 %indvars.iv.next2453.i, %wide.trip.count2456.i
  br i1 %exitcond2457.not.i, label %._crit_edge2185.i, label %.preheader1964.i, !llvm.loop !76

._crit_edge2185.i:                                ; preds = %bsW.exit1576.i, %bsW.exit1562.i
  %.pre.i1581.i.pre576 = phi i32 [ %i.cpa, %bsW.exit1562.i ], [ %i.cqu, %bsW.exit1576.i ]
  %.pre25052527.i = phi i32 [ %i.cox, %bsW.exit1562.i ], [ %i.cqv, %bsW.exit1576.i ]
  %i.cqw = phi i32 [ %.pre15.i15682501.i.a, %bsW.exit1562.i ], [ %.pre15.i15682500.i, %bsW.exit1576.i ] ; 2 uses
  %i.cqx = load i32, ptr %i.nw, align 8, !tbaa !21
  %i.cqy = icmp sgt i32 %i.cqx, 2
  br i1 %i.cqy, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %._crit_edge2185.i
  %i.cqz = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.cra = sub nsw i32 %i.cqw, %i.cnm
  %i.crb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cqz, ptr noundef nonnull @.str.8, i32 noundef %i.cra) #10 ; 0 uses
  %.pre2504.i = load i32, ptr %i.ckf, align 4, !tbaa !20
  %.pre2505.pre.i = load i32, ptr %i.cv, align 4, !tbaa !9
  %.pre.i1581.i.pre.pre = load i32, ptr %i.cy, align 8, !tbaa !15
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %._crit_edge2185.i
  %.pre.i1581.i.pre = phi i32 [ %.pre.i1581.i.pre.pre, %bb.bx ], [ %.pre.i1581.i.pre576, %._crit_edge2185.i ]
  %.pre2505.i = phi i32 [ %.pre2505.pre.i, %bb.bx ], [ %.pre25052527.i, %._crit_edge2185.i ]
  %i.crc = phi i32 [ %.pre2504.i, %bb.bx ], [ %i.cqw, %._crit_edge2185.i ] ; 2 uses
  br label %bb.bz

bb.bz:                                            ; preds = %._crit_edge2197.i, %bb.by
  %.pre.i1581.i = phi i32 [ %.pre.i1581.i.pre, %bb.by ], [ %.pre.i1581.i573, %._crit_edge2197.i ] ; 2 uses
  %.pre15.i1582.i = phi i32 [ %i.crc, %bb.by ], [ %i.cvb, %._crit_edge2197.i ] ; 2 uses
  %i.crd = phi i32 [ %.pre2505.i, %bb.by ], [ %i.cvc, %._crit_edge2197.i ] ; 2 uses
  %indvars.iv2463.i = phi i64 [ 0, %bb.by ], [ %indvars.iv.next2464.i, %._crit_edge2197.i ] ; 2 uses
  %i.cre = getelementptr inbounds nuw [258 x i8], ptr %2, i64 %indvars.iv2463.i ; 2 uses
  %i.crf = load i8, ptr %i.cre, align 2, !tbaa !26
  %i.crg = zext i8 %i.crf to i32                  ; 2 uses
  %i.crh = icmp sgt i32 %i.crd, 7
  br i1 %i.crh, label %.lr.ph.i1580.i, label %bsW.exit1583.i

.lr.ph.i1580.i:                                   ; preds = %bb.bz, %.lr.ph.i1580.i
  %i.cri = phi i32 [ %i.crq, %.lr.ph.i1580.i ], [ %.pre15.i1582.i, %bb.bz ]
  %i.crj = phi i32 [ %i.crs, %.lr.ph.i1580.i ], [ %.pre.i1581.i, %bb.bz ]
  %i.crk = lshr i32 %i.crj, 24
  %i.crl = trunc nuw i32 %i.crk to i8
  %i.crm = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.crn = sext i32 %i.cri to i64
  %i.cro = getelementptr inbounds i8, ptr %i.crm, i64 %i.crn
  store i8 %i.crl, ptr %i.cro, align 1, !tbaa !26
  %i.crp = load i32, ptr %i.ckf, align 4, !tbaa !20
  %i.crq = add nsw i32 %i.crp, 1                  ; 3 uses
  store i32 %i.crq, ptr %i.ckf, align 4, !tbaa !20
  %i.crr = load i32, ptr %i.cy, align 8, !tbaa !15
  %i.crs = shl i32 %i.crr, 8                      ; 3 uses
  store i32 %i.crs, ptr %i.cy, align 8, !tbaa !15
  %i.crt = load i32, ptr %i.cv, align 4, !tbaa !9 ; 2 uses
  %i.cru = add nsw i32 %i.crt, -8                 ; 2 uses
  store i32 %i.cru, ptr %i.cv, align 4, !tbaa !9
  %i.crv = icmp sgt i32 %i.crt, 15
  br i1 %i.crv, label %.lr.ph.i1580.i, label %bsW.exit1583.i, !llvm.loop !27

bsW.exit1583.i:                                   ; preds = %.lr.ph.i1580.i, %bb.bz
  %.pre15.i15822516.i.a = phi i32 [ %.pre15.i1582.i, %bb.bz ], [ %i.crq, %.lr.ph.i1580.i ] ; 2 uses
  %i.crw = phi i32 [ %.pre.i1581.i, %bb.bz ], [ %i.crs, %.lr.ph.i1580.i ]
  %.lcssa.i1579.i = phi i32 [ %i.crd, %bb.bz ], [ %i.cru, %.lr.ph.i1580.i ] ; 2 uses
  %i.crx = add nsw i32 %.lcssa.i1579.i, 5         ; 3 uses
  %i.cry = sub i32 27, %.lcssa.i1579.i
  %i.crz = shl i32 %i.crg, %i.cry
  %i.csa = or i32 %i.crz, %i.crw                  ; 3 uses
  store i32 %i.csa, ptr %i.cy, align 8, !tbaa !15
  store i32 %i.crx, ptr %i.cv, align 4, !tbaa !9
  br i1 %i.of, label %.preheader1963.i, label %._crit_edge2197.i

.preheader1963.i:                                 ; preds = %bsW.exit1583.i, %bsW.exit1604.i
  %.pre16.i15852518.i = phi i32 [ %i.cuz, %bsW.exit1604.i ], [ %i.csa, %bsW.exit1583.i ] ; 2 uses
  %i.csb = phi i32 [ %i.cva, %bsW.exit1604.i ], [ %i.crx, %bsW.exit1583.i ] ; 2 uses
  %.pre15.i15822515.i = phi i32 [ %.pre15.i15822508.i, %bsW.exit1604.i ], [ %.pre15.i15822516.i.a, %bsW.exit1583.i ] ; 2 uses
  %indvars.iv2458.i = phi i64 [ %indvars.iv.next2459.i, %bsW.exit1604.i ], [ 0, %bsW.exit1583.i ] ; 2 uses
  %.014612195.i = phi i32 [ %.21463.lcssa.i, %bsW.exit1604.i ], [ %i.crg, %bsW.exit1583.i ] ; 3 uses
  %i.csc = getelementptr inbounds nuw i8, ptr %i.cre, i64 %indvars.iv2458.i ; 3 uses
  %i.csd = load i8, ptr %i.csc, align 1, !tbaa !26 ; 3 uses
  %i.cse = zext i8 %i.csd to i32                  ; 2 uses
  %i.csf = icmp slt i32 %.014612195.i, %i.cse
  br i1 %i.csf, label %.lr.ph2188.i, label %.preheader1962.i

.preheader1962.i:                                 ; preds = %bsW.exit1590.i, %.preheader1963.i
  %.pre-phi.i = phi i32 [ %i.cse, %.preheader1963.i ], [ %i.cth, %bsW.exit1590.i ]
  %.pre16.i15922521.i = phi i32 [ %.pre16.i15852518.i, %.preheader1963.i ], [ %i.ctf, %bsW.exit1590.i ] ; 2 uses
  %i.csg = phi i32 [ %i.csb, %.preheader1963.i ], [ %i.ctc, %bsW.exit1590.i ] ; 2 uses
  %i.csh = phi i8 [ %i.csd, %.preheader1963.i ], [ %i.cta, %bsW.exit1590.i ]
  %.pre15.i15822512.i = phi i32 [ %.pre15.i15822515.i, %.preheader1963.i ], [ %.pre15.i15822513.i, %bsW.exit1590.i ] ; 2 uses
  %.11462.lcssa.i = phi i32 [ %.014612195.i, %.preheader1963.i ], [ %i.ctg, %bsW.exit1590.i ] ; 3 uses
  %i.csi = icmp samesign ugt i32 %.11462.lcssa.i, %.pre-phi.i
  br i1 %i.csi, label %.lr.ph2192.i, label %._crit_edge2193.i

.lr.ph2188.i:                                     ; preds = %.preheader1963.i, %bsW.exit1590.i
  %i.csj = phi i8 [ %i.cta, %bsW.exit1590.i ], [ %i.csd, %.preheader1963.i ]
  %.pre.i1588.i = phi i32 [ %i.ctf, %bsW.exit1590.i ], [ %.pre16.i15852518.i, %.preheader1963.i ] ; 2 uses
  %i.csk = phi i32 [ %i.ctc, %bsW.exit1590.i ], [ %i.csb, %.preheader1963.i ] ; 2 uses
  %.pre15.i1589.i = phi i32 [ %.pre15.i15822513.i, %bsW.exit1590.i ], [ %.pre15.i15822515.i, %.preheader1963.i ] ; 2 uses
  %.114622187.i = phi i32 [ %i.ctg, %bsW.exit1590.i ], [ %.014612195.i, %.preheader1963.i ]
  %i.csl = icmp sgt i32 %i.csk, 7
  br i1 %i.csl, label %.lr.ph.i1587.i, label %bsW.exit1590.i

.lr.ph.i1587.i:                                   ; preds = %.lr.ph2188.i, %.lr.ph.i1587.i
  %i.csm = phi i32 [ %i.csu, %.lr.ph.i1587.i ], [ %.pre15.i1589.i, %.lr.ph2188.i ]
  %i.csn = phi i32 [ %i.csw, %.lr.ph.i1587.i ], [ %.pre.i1588.i, %.lr.ph2188.i ]
  %i.cso = lshr i32 %i.csn, 24
  %i.csp = trunc nuw i32 %i.cso to i8
  %i.csq = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.csr = sext i32 %i.csm to i64
  %i.css = getelementptr inbounds i8, ptr %i.csq, i64 %i.csr
  store i8 %i.csp, ptr %i.css, align 1, !tbaa !26
  %i.cst = load i32, ptr %i.ckf, align 4, !tbaa !20
  %i.csu = add nsw i32 %i.cst, 1                  ; 3 uses
  store i32 %i.csu, ptr %i.ckf, align 4, !tbaa !20
  %i.csv = load i32, ptr %i.cy, align 8, !tbaa !15
  %i.csw = shl i32 %i.csv, 8                      ; 3 uses
  store i32 %i.csw, ptr %i.cy, align 8, !tbaa !15
  %i.csx = load i32, ptr %i.cv, align 4, !tbaa !9 ; 2 uses
  %i.csy = add nsw i32 %i.csx, -8                 ; 2 uses
  store i32 %i.csy, ptr %i.cv, align 4, !tbaa !9
  %i.csz = icmp sgt i32 %i.csx, 15
  br i1 %i.csz, label %.lr.ph.i1587.i, label %bsW.exit1590.loopexit.i, !llvm.loop !27

bsW.exit1590.loopexit.i:                          ; preds = %.lr.ph.i1587.i
  %.pre2519.i = load i8, ptr %i.csc, align 1, !tbaa !26
  br label %bsW.exit1590.i

bsW.exit1590.i:                                   ; preds = %bsW.exit1590.loopexit.i, %.lr.ph2188.i
  %i.cta = phi i8 [ %.pre2519.i, %bsW.exit1590.loopexit.i ], [ %i.csj, %.lr.ph2188.i ] ; 3 uses
  %.pre15.i15822513.i = phi i32 [ %i.csu, %bsW.exit1590.loopexit.i ], [ %.pre15.i1589.i, %.lr.ph2188.i ] ; 2 uses
  %i.ctb = phi i32 [ %i.csw, %bsW.exit1590.loopexit.i ], [ %.pre.i1588.i, %.lr.ph2188.i ]
  %.lcssa.i1586.i = phi i32 [ %i.csy, %bsW.exit1590.loopexit.i ], [ %i.csk, %.lr.ph2188.i ] ; 2 uses
  %i.ctc = add nsw i32 %.lcssa.i1586.i, 2         ; 3 uses
  %i.ctd = sub i32 30, %.lcssa.i1586.i
  %i.cte = shl i32 2, %i.ctd
  %i.ctf = or i32 %i.cte, %i.ctb                  ; 3 uses
  store i32 %i.ctf, ptr %i.cy, align 8, !tbaa !15
  store i32 %i.ctc, ptr %i.cv, align 4, !tbaa !9
  %i.ctg = add nuw nsw i32 %.114622187.i, 1       ; 3 uses
  %i.cth = zext i8 %i.cta to i32                  ; 2 uses
  %i.cti = icmp slt i32 %i.ctg, %i.cth
  br i1 %i.cti, label %.lr.ph2188.i, label %.preheader1962.i, !llvm.loop !77

.lr.ph2192.i:                                     ; preds = %.preheader1962.i, %bsW.exit1597.i
  %i.ctj = phi i8 [ %i.cua, %bsW.exit1597.i ], [ %i.csh, %.preheader1962.i ]
  %.pre.i1595.i = phi i32 [ %i.cuf, %bsW.exit1597.i ], [ %.pre16.i15922521.i, %.preheader1962.i ] ; 2 uses
  %i.ctk = phi i32 [ %i.cuc, %bsW.exit1597.i ], [ %i.csg, %.preheader1962.i ] ; 2 uses
  %.pre15.i1596.i = phi i32 [ %.pre15.i15822510.i, %bsW.exit1597.i ], [ %.pre15.i15822512.i, %.preheader1962.i ] ; 2 uses
  %.214632191.i = phi i32 [ %i.cug, %bsW.exit1597.i ], [ %.11462.lcssa.i, %.preheader1962.i ]
  %i.ctl = icmp sgt i32 %i.ctk, 7
  br i1 %i.ctl, label %.lr.ph.i1594.i, label %bsW.exit1597.i

.lr.ph.i1594.i:                                   ; preds = %.lr.ph2192.i, %.lr.ph.i1594.i
  %i.ctm = phi i32 [ %i.ctu, %.lr.ph.i1594.i ], [ %.pre15.i1596.i, %.lr.ph2192.i ]
  %i.ctn = phi i32 [ %i.ctw, %.lr.ph.i1594.i ], [ %.pre.i1595.i, %.lr.ph2192.i ]
  %i.cto = lshr i32 %i.ctn, 24
  %i.ctp = trunc nuw i32 %i.cto to i8
  %i.ctq = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.ctr = sext i32 %i.ctm to i64
  %i.cts = getelementptr inbounds i8, ptr %i.ctq, i64 %i.ctr
  store i8 %i.ctp, ptr %i.cts, align 1, !tbaa !26
  %i.ctt = load i32, ptr %i.ckf, align 4, !tbaa !20
  %i.ctu = add nsw i32 %i.ctt, 1                  ; 3 uses
  store i32 %i.ctu, ptr %i.ckf, align 4, !tbaa !20
  %i.ctv = load i32, ptr %i.cy, align 8, !tbaa !15
  %i.ctw = shl i32 %i.ctv, 8                      ; 3 uses
  store i32 %i.ctw, ptr %i.cy, align 8, !tbaa !15
  %i.ctx = load i32, ptr %i.cv, align 4, !tbaa !9 ; 2 uses
  %i.cty = add nsw i32 %i.ctx, -8                 ; 2 uses
  store i32 %i.cty, ptr %i.cv, align 4, !tbaa !9
  %i.ctz = icmp sgt i32 %i.ctx, 15
  br i1 %i.ctz, label %.lr.ph.i1594.i, label %bsW.exit1597.loopexit.i, !llvm.loop !27

bsW.exit1597.loopexit.i:                          ; preds = %.lr.ph.i1594.i
  %.pre2522.i = load i8, ptr %i.csc, align 1, !tbaa !26
  br label %bsW.exit1597.i

bsW.exit1597.i:                                   ; preds = %bsW.exit1597.loopexit.i, %.lr.ph2192.i
  %i.cua = phi i8 [ %.pre2522.i, %bsW.exit1597.loopexit.i ], [ %i.ctj, %.lr.ph2192.i ] ; 2 uses
  %.pre15.i15822510.i = phi i32 [ %i.ctu, %bsW.exit1597.loopexit.i ], [ %.pre15.i1596.i, %.lr.ph2192.i ] ; 2 uses
  %i.cub = phi i32 [ %i.ctw, %bsW.exit1597.loopexit.i ], [ %.pre.i1595.i, %.lr.ph2192.i ]
  %.lcssa.i1593.i = phi i32 [ %i.cty, %bsW.exit1597.loopexit.i ], [ %i.ctk, %.lr.ph2192.i ] ; 2 uses
  %i.cuc = add nsw i32 %.lcssa.i1593.i, 2         ; 3 uses
  %i.cud = sub i32 30, %.lcssa.i1593.i
  %i.cue = shl i32 3, %i.cud
  %i.cuf = or i32 %i.cue, %i.cub                  ; 3 uses
  store i32 %i.cuf, ptr %i.cy, align 8, !tbaa !15
  store i32 %i.cuc, ptr %i.cv, align 4, !tbaa !9
  %i.cug = add nsw i32 %.214632191.i, -1          ; 3 uses
  %i.cuh = zext i8 %i.cua to i32
  %i.cui = icmp samesign ugt i32 %i.cug, %i.cuh
  br i1 %i.cui, label %.lr.ph2192.i, label %._crit_edge2193.i, !llvm.loop !78

._crit_edge2193.i:                                ; preds = %bsW.exit1597.i, %.preheader1962.i
  %.pre.i1602.i = phi i32 [ %.pre16.i15922521.i, %.preheader1962.i ], [ %i.cuf, %bsW.exit1597.i ] ; 2 uses
  %i.cuj = phi i32 [ %i.csg, %.preheader1962.i ], [ %i.cuc, %bsW.exit1597.i ] ; 2 uses
  %.pre15.i1603.i = phi i32 [ %.pre15.i15822512.i, %.preheader1962.i ], [ %.pre15.i15822510.i, %bsW.exit1597.i ] ; 2 uses
  %.21463.lcssa.i = phi i32 [ %.11462.lcssa.i, %.preheader1962.i ], [ %i.cug, %bsW.exit1597.i ]
  %i.cuk = icmp sgt i32 %i.cuj, 7
  br i1 %i.cuk, label %.lr.ph.i1601.i, label %bsW.exit1604.i

.lr.ph.i1601.i:                                   ; preds = %._crit_edge2193.i, %.lr.ph.i1601.i
  %i.cul = phi i32 [ %i.cut, %.lr.ph.i1601.i ], [ %.pre15.i1603.i, %._crit_edge2193.i ]
  %i.cum = phi i32 [ %i.cuv, %.lr.ph.i1601.i ], [ %.pre.i1602.i, %._crit_edge2193.i ]
  %i.cun = lshr i32 %i.cum, 24
  %i.cuo = trunc nuw i32 %i.cun to i8
  %i.cup = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.cuq = sext i32 %i.cul to i64
  %i.cur = getelementptr inbounds i8, ptr %i.cup, i64 %i.cuq
  store i8 %i.cuo, ptr %i.cur, align 1, !tbaa !26
  %i.cus = load i32, ptr %i.ckf, align 4, !tbaa !20
  %i.cut = add nsw i32 %i.cus, 1                  ; 3 uses
  store i32 %i.cut, ptr %i.ckf, align 4, !tbaa !20
  %i.cuu = load i32, ptr %i.cy, align 8, !tbaa !15
  %i.cuv = shl i32 %i.cuu, 8                      ; 3 uses
  store i32 %i.cuv, ptr %i.cy, align 8, !tbaa !15
  %i.cuw = load i32, ptr %i.cv, align 4, !tbaa !9 ; 2 uses
  %i.cux = add nsw i32 %i.cuw, -8                 ; 2 uses
  store i32 %i.cux, ptr %i.cv, align 4, !tbaa !9
  %i.cuy = icmp sgt i32 %i.cuw, 15
  br i1 %i.cuy, label %.lr.ph.i1601.i, label %bsW.exit1604.i, !llvm.loop !27

bsW.exit1604.i:                                   ; preds = %.lr.ph.i1601.i, %._crit_edge2193.i
  %.pre15.i15822508.i = phi i32 [ %.pre15.i1603.i, %._crit_edge2193.i ], [ %i.cut, %.lr.ph.i1601.i ] ; 2 uses
  %i.cuz = phi i32 [ %.pre.i1602.i, %._crit_edge2193.i ], [ %i.cuv, %.lr.ph.i1601.i ] ; 3 uses
  %.lcssa.i1600.i = phi i32 [ %i.cuj, %._crit_edge2193.i ], [ %i.cux, %.lr.ph.i1601.i ]
  %i.cva = add nsw i32 %.lcssa.i1600.i, 1         ; 3 uses
  store i32 %i.cuz, ptr %i.cy, align 8, !tbaa !15
  store i32 %i.cva, ptr %i.cv, align 4, !tbaa !9
  %indvars.iv.next2459.i = add nuw nsw i64 %indvars.iv2458.i, 1 ; 2 uses
  %exitcond2462.not.i = icmp eq i64 %indvars.iv.next2459.i, %wide.trip.count.i122
  br i1 %exitcond2462.not.i, label %._crit_edge2197.i, label %.preheader1963.i, !llvm.loop !79

._crit_edge2197.i:                                ; preds = %bsW.exit1604.i, %bsW.exit1583.i
  %.pre.i1581.i573 = phi i32 [ %i.csa, %bsW.exit1583.i ], [ %i.cuz, %bsW.exit1604.i ]
  %i.cvb = phi i32 [ %.pre15.i15822516.i.a, %bsW.exit1583.i ], [ %.pre15.i15822508.i, %bsW.exit1604.i ] ; 3 uses
  %i.cvc = phi i32 [ %i.crx, %bsW.exit1583.i ], [ %i.cva, %bsW.exit1604.i ]
  %indvars.iv.next2464.i = add nuw nsw i64 %indvars.iv2463.i, 1 ; 2 uses
  %exitcond2467.not.i = icmp eq i64 %indvars.iv.next2464.i, %i.oq
  br i1 %exitcond2467.not.i, label %bb.ca, label %bb.bz, !llvm.loop !80

bb.ca:                                            ; preds = %._crit_edge2197.i
  %i.cvd = load i32, ptr %i.nw, align 8, !tbaa !21
  %i.cve = icmp sgt i32 %i.cvd, 2
  br i1 %i.cve, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.cvf = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.cvg = sub nsw i32 %i.cvb, %i.crc
  %i.cvh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cvf, ptr noundef nonnull @.str.9, i32 noundef %i.cvg) #10 ; 0 uses
  %.pre2524.i = load i32, ptr %i.ckf, align 4, !tbaa !20
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.cvi = phi i32 [ %.pre2524.i, %bb.cb ], [ %i.cvb, %bb.ca ]
  %i.cvj = load i32, ptr %i.nv, align 4, !tbaa !47 ; 2 uses
  %.not2202.i = icmp sgt i32 %i.cvj, 0
  br i1 %.not2202.i, label %.lr.ph2206.i, label %._crit_edge2207.i

.lr.ph2206.i:                                     ; preds = %bb.cc, %.loopexit.i
  %indvars.iv2474.i = phi i64 [ %indvars.iv.next2475.i, %.loopexit.i ], [ 0, %bb.cc ] ; 2 uses
  %i.cvk = phi i32 [ %i.ezf, %.loopexit.i ], [ %i.cvj, %bb.cc ] ; 2 uses
  %.214712204.i = phi i32 [ %i.eze, %.loopexit.i ], [ 0, %bb.cc ] ; 6 uses
  %i.cvl = add i32 %.214712204.i, 49
  %i.cvm = add nsw i32 %i.cvk, -1
  %spec.select1525.i = call i32 @llvm.smin.i32(i32 %i.cvl, i32 %i.cvm) ; 3 uses
  %i.cvn = getelementptr inbounds nuw i8, ptr %i.pa, i64 %indvars.iv2474.i ; 3 uses
  %i.cvo = load i8, ptr %i.cvn, align 1, !tbaa !26
  %i.cvp = zext i8 %i.cvo to i32
  %i.cvq = icmp samesign ugt i32 %.01481.i, %i.cvp
  br i1 %i.cvq, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph2206.i
  call void @BZ2_bz__AssertH__fail(i32 noundef 3006) #11
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %.lr.ph2206.i
  %i.cvr = sub nsw i32 %spec.select1525.i, %.214712204.i
  %i.cvs = icmp eq i32 %i.cvr, 49
  %or.cond1527.i = select i1 %i.oo, i1 %i.cvs, i1 false
  br i1 %or.cond1527.i, label %bb.cf, label %.preheader.i124

.preheader.i124:                                  ; preds = %bb.ce
  %.not15042199.not.i = icmp sgt i32 %i.cvk, %.214712204.i
  br i1 %.not15042199.not.i, label %.lr.ph2201.preheader.i, label %.loopexit.i

.lr.ph2201.preheader.i:                           ; preds = %.preheader.i124
  %i.cvt = sext i32 %.214712204.i to i64
  %smax2471.i = call i32 @llvm.smax.i32(i32 %.214712204.i, i32 %spec.select1525.i)
  %i.cvu = add nsw i32 %smax2471.i, 1
  %.pre2525.i = load i32, ptr %i.cv, align 4, !tbaa !9
  %.pre.i1959.i.pre = load i32, ptr %i.cy, align 8, !tbaa !15
  br label %.lr.ph2201.i

bb.cf:                                            ; preds = %bb.ce
  %i.cvv = load i8, ptr %i.cvn, align 1, !tbaa !26
  %i.cvw = zext i8 %i.cvv to i64                  ; 2 uses
  %i.cvx = getelementptr inbounds nuw [258 x i8], ptr %2, i64 %i.cvw ; 50 uses
  %i.cvy = getelementptr inbounds nuw [1032 x i8], ptr %i.bes, i64 %i.cvw ; 50 uses
  %i.cvz = sext i32 %.214712204.i to i64
  %i.cwa = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %i.cvz ; 50 uses
  %i.cwb = load i16, ptr %i.cwa, align 2, !tbaa !43
  %i.cwc = zext i16 %i.cwb to i64                 ; 2 uses
  %i.cwd = getelementptr inbounds nuw i8, ptr %i.cvx, i64 %i.cwc
  %i.cwe = load i8, ptr %i.cwd, align 1, !tbaa !26
  %i.cwf = zext i8 %i.cwe to i32
  %i.cwg = getelementptr inbounds nuw [4 x i8], ptr %i.cvy, i64 %i.cwc
  %i.cwh = load i32, ptr %i.cwg, align 4, !tbaa !36
  %i.cwi = load i32, ptr %i.cv, align 4, !tbaa !9 ; 2 uses
  %i.cwj = icmp sgt i32 %i.cwi, 7
  %.pre.i1609.i = load i32, ptr %i.cy, align 8, !tbaa !15 ; 2 uses
  br i1 %i.cwj, label %.lr.ph.i1608.i, label %bsW.exit1611.i

.lr.ph.i1608.i:                                   ; preds = %bb.cf
  %.pre15.i1610.i = load i32, ptr %i.ckf, align 4, !tbaa !20
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cg, %.lr.ph.i1608.i
  %i.cwk = phi i32 [ %.pre15.i1610.i, %.lr.ph.i1608.i ], [ %i.cws, %bb.cg ]
  %i.cwl = phi i32 [ %.pre.i1609.i, %.lr.ph.i1608.i ], [ %i.cwu, %bb.cg ]
  %i.cwm = lshr i32 %i.cwl, 24
  %i.cwn = trunc nuw i32 %i.cwm to i8
  %i.cwo = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.cwp = sext i32 %i.cwk to i64
  %i.cwq = getelementptr inbounds i8, ptr %i.cwo, i64 %i.cwp
  store i8 %i.cwn, ptr %i.cwq, align 1, !tbaa !26
  %i.cwr = load i32, ptr %i.ckf, align 4, !tbaa !20
  %i.cws = add nsw i32 %i.cwr, 1                  ; 2 uses
  store i32 %i.cws, ptr %i.ckf, align 4, !tbaa !20
  %i.cwt = load i32, ptr %i.cy, align 8, !tbaa !15
  %i.cwu = shl i32 %i.cwt, 8                      ; 3 uses
  store i32 %i.cwu, ptr %i.cy, align 8, !tbaa !15
  %i.cwv = load i32, ptr %i.cv, align 4, !tbaa !9 ; 2 uses
  %i.cww = add nsw i32 %i.cwv, -8                 ; 2 uses
  store i32 %i.cww, ptr %i.cv, align 4, !tbaa !9
  %i.cwx = icmp sgt i32 %i.cwv, 15
  br i1 %i.cwx, label %bb.cg, label %bsW.exit1611.i, !llvm.loop !27

bsW.exit1611.i:                                   ; preds = %bb.cg, %bb.cf
  %i.cwy = phi i32 [ %.pre.i1609.i, %bb.cf ], [ %i.cwu, %bb.cg ]
  %.lcssa.i1607.i = phi i32 [ %i.cwi, %bb.cf ], [ %i.cww, %bb.cg ]
  %i.cwz = add nsw i32 %.lcssa.i1607.i, %i.cwf    ; 4 uses
  %i.cxa = sub i32 32, %i.cwz
  %i.cxb = shl i32 %i.cwh, %i.cxa
  %i.cxc = or i32 %i.cxb, %i.cwy                  ; 3 uses
  store i32 %i.cxc, ptr %i.cy, align 8, !tbaa !15
  store i32 %i.cwz, ptr %i.cv, align 4, !tbaa !9
  %i.cxd = getelementptr i8, ptr %i.cwa, i64 2
  %i.cxe = load i16, ptr %i.cxd, align 2, !tbaa !43
  %i.cxf = zext i16 %i.cxe to i64                 ; 2 uses
  %i.cxg = getelementptr inbounds nuw i8, ptr %i.cvx, i64 %i.cxf
  %i.cxh = load i8, ptr %i.cxg, align 1, !tbaa !26
  %i.cxi = zext i8 %i.cxh to i32
  %i.cxj = getelementptr inbounds nuw [4 x i8], ptr %i.cvy, i64 %i.cxf
  %i.cxk = load i32, ptr %i.cxj, align 4, !tbaa !36
  %i.cxl = icmp sgt i32 %i.cwz, 7
  br i1 %i.cxl, label %.lr.ph.i1615.i, label %bsW.exit1618.i

.lr.ph.i1615.i:                                   ; preds = %bsW.exit1611.i
  %.pre15.i1617.i = load i32, ptr %i.ckf, align 4, !tbaa !20
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ch, %.lr.ph.i1615.i
  %i.cxm = phi i32 [ %.pre15.i1617.i, %.lr.ph.i1615.i ], [ %i.cxu, %bb.ch ]
  %i.cxn = phi i32 [ %i.cxc, %.lr.ph.i1615.i ], [ %i.cxw, %bb.ch ]
  %i.cxo = lshr i32 %i.cxn, 24
  %i.cxp = trunc nuw i32 %i.cxo to i8
  %i.cxq = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.cxr = sext i32 %i.cxm to i64
  %i.cxs = getelementptr inbounds i8, ptr %i.cxq, i64 %i.cxr
  store i8 %i.cxp, ptr %i.cxs, align 1, !tbaa !26
  %i.cxt = load i32, ptr %i.ckf, align 4, !tbaa !20
  %i.cxu = add nsw i32 %i.cxt, 1                  ; 2 uses
  store i32 %i.cxu, ptr %i.ckf, align 4, !tbaa !20
  %i.cxv = load i32, ptr %i.cy, align 8, !tbaa !15
  %i.cxw = shl i32 %i.cxv, 8                      ; 3 uses
  store i32 %i.cxw, ptr %i.cy, align 8, !tbaa !15
  %i.cxx = load i32, ptr %i.cv, align 4, !tbaa !9 ; 2 uses
  %i.cxy = add nsw i32 %i.cxx, -8                 ; 2 uses
  store i32 %i.cxy, ptr %i.cv, align 4, !tbaa !9
  %i.cxz = icmp sgt i32 %i.cxx, 15
  br i1 %i.cxz, label %bb.ch, label %bsW.exit1618.i, !llvm.loop !27

bsW.exit1618.i:                                   ; preds = %bb.ch, %bsW.exit1611.i
  %i.cya = phi i32 [ %i.cxc, %bsW.exit1611.i ], [ %i.cxw, %bb.ch ]
  %.lcssa.i1614.i = phi i32 [ %i.cwz, %bsW.exit1611.i ], [ %i.cxy, %bb.ch ]
  %i.cyb = add nsw i32 %.lcssa.i1614.i, %i.cxi    ; 4 uses
  %i.cyc = sub i32 32, %i.cyb
  %i.cyd = shl i32 %i.cxk, %i.cyc
  %i.cye = or i32 %i.cyd, %i.cya                  ; 3 uses
  store i32 %i.cye, ptr %i.cy, align 8, !tbaa !15
  store i32 %i.cyb, ptr %i.cv, align 4, !tbaa !9
  %i.cyf = getelementptr i8, ptr %i.cwa, i64 4
  %i.cyg = load i16, ptr %i.cyf, align 2, !tbaa !43
  %i.cyh = zext i16 %i.cyg to i64                 ; 2 uses
  %i.cyi = getelementptr inbounds nuw i8, ptr %i.cvx, i64 %i.cyh
  %i.cyj = load i8, ptr %i.cyi, align 1, !tbaa !26
  %i.cyk = zext i8 %i.cyj to i32
  %i.cyl = getelementptr inbounds nuw [4 x i8], ptr %i.cvy, i64 %i.cyh
  %i.cym = load i32, ptr %i.cyl, align 4, !tbaa !36
  %i.cyn = icmp sgt i32 %i.cyb, 7
  br i1 %i.cyn, label %.lr.ph.i1622.i, label %bsW.exit1625.i

.lr.ph.i1622.i:                                   ; preds = %bsW.exit1618.i
  %.pre15.i1624.i = load i32, ptr %i.ckf, align 4, !tbaa !20
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ci, %.lr.ph.i1622.i
  %i.cyo = phi i32 [ %.pre15.i1624.i, %.lr.ph.i1622.i ], [ %i.cyw, %bb.ci ]
  %i.cyp = phi i32 [ %i.cye, %.lr.ph.i1622.i ], [ %i.cyy, %bb.ci ]
  %i.cyq = lshr i32 %i.cyp, 24
  %i.cyr = trunc nuw i32 %i.cyq to i8
  %i.cys = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.cyt = sext i32 %i.cyo to i64
  %i.cyu = getelementptr inbounds i8, ptr %i.cys, i64 %i.cyt
  store i8 %i.cyr, ptr %i.cyu, align 1, !tbaa !26
  %i.cyv = load i32, ptr %i.ckf, align 4, !tbaa !20
  %i.cyw = add nsw i32 %i.cyv, 1                  ; 2 uses
  store i32 %i.cyw, ptr %i.ckf, align 4, !tbaa !20
  %i.cyx = load i32, ptr %i.cy, align 8, !tbaa !15
  %i.cyy = shl i32 %i.cyx, 8                      ; 3 uses
  store i32 %i.cyy, ptr %i.cy, align 8, !tbaa !15
  %i.cyz = load i32, ptr %i.cv, align 4, !tbaa !9 ; 2 uses
  %i.cza = add nsw i32 %i.cyz, -8                 ; 2 uses
  store i32 %i.cza, ptr %i.cv, align 4, !tbaa !9
  %i.czb = icmp sgt i32 %i.cyz, 15
  br i1 %i.czb, label %bb.ci, label %bsW.exit1625.i, !llvm.loop !27

bsW.exit1625.i:                                   ; preds = %bb.ci, %bsW.exit1618.i
  %i.czc = phi i32 [ %i.cye, %bsW.exit1618.i ], [ %i.cyy, %bb.ci ]
  %.lcssa.i1621.i = phi i32 [ %i.cyb, %bsW.exit1618.i ], [ %i.cza, %bb.ci ]
  %i.czd = add nsw i32 %.lcssa.i1621.i, %i.cyk    ; 4 uses
  %i.cze = sub i32 32, %i.czd
  %i.czf = shl i32 %i.cym, %i.cze
  %i.czg = or i32 %i.czf, %i.czc                  ; 3 uses
  store i32 %i.czg, ptr %i.cy, align 8, !tbaa !15
  store i32 %i.czd, ptr %i.cv, align 4, !tbaa !9
  %i.czh = getelementptr i8, ptr %i.cwa, i64 6
  %i.czi = load i16, ptr %i.czh, align 2, !tbaa !43
  %i.czj = zext i16 %i.czi to i64                 ; 2 uses
  %i.czk = getelementptr inbounds nuw i8, ptr %i.cvx, i64 %i.czj
  %i.czl = load i8, ptr %i.czk, align 1, !tbaa !26
  %i.czm = zext i8 %i.czl to i32
  %i.czn = getelementptr inbounds nuw [4 x i8], ptr %i.cvy, i64 %i.czj
  %i.czo = load i32, ptr %i.czn, align 4, !tbaa !36
  %i.czp = icmp sgt i32 %i.czd, 7
  br i1 %i.czp, label %.lr.ph.i1629.i, label %bsW.exit1632.i

.lr.ph.i1629.i:                                   ; preds = %bsW.exit1625.i
  %.pre15.i1631.i = load i32, ptr %i.ckf, align 4, !tbaa !20
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cj, %.lr.ph.i1629.i
  %i.czq = phi i32 [ %.pre15.i1631.i, %.lr.ph.i1629.i ], [ %i.czy, %bb.cj ]
  %i.czr = phi i32 [ %i.czg, %.lr.ph.i1629.i ], [ %i.daa, %bb.cj ]
  %i.czs = lshr i32 %i.czr, 24
  %i.czt = trunc nuw i32 %i.czs to i8
  %i.czu = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.czv = sext i32 %i.czq to i64
  %i.czw = getelementptr inbounds i8, ptr %i.czu, i64 %i.czv
  store i8 %i.czt, ptr %i.czw, align 1, !tbaa !26
  %i.czx = load i32, ptr %i.ckf, align 4, !tbaa !20
  %i.czy = add nsw i32 %i.czx, 1                  ; 2 uses
  store i32 %i.czy, ptr %i.ckf, align 4, !tbaa !20
  %i.czz = load i32, ptr %i.cy, align 8, !tbaa !15
  %i.daa = shl i32 %i.czz, 8                      ; 3 uses
  store i32 %i.daa, ptr %i.cy, align 8, !tbaa !15
  %i.dab = load i32, ptr %i.cv, align 4, !tbaa !9 ; 2 uses
  %i.dac = add nsw i32 %i.dab, -8                 ; 2 uses
  store i32 %i.dac, ptr %i.cv, align 4, !tbaa !9
  %i.dad = icmp sgt i32 %i.dab, 15
  br i1 %i.dad, label %bb.cj, label %bsW.exit1632.i, !llvm.loop !27

bsW.exit1632.i:                                   ; preds = %bb.cj, %bsW.exit1625.i
  %i.dae = phi i32 [ %i.czg, %bsW.exit1625.i ], [ %i.daa, %bb.cj ]
  %.lcssa.i1628.i = phi i32 [ %i.czd, %bsW.exit1625.i ], [ %i.dac, %bb.cj ]
  %i.daf = add nsw i32 %.lcssa.i1628.i, %i.czm    ; 4 uses
  %i.dag = sub i32 32, %i.daf
  %i.dah = shl i32 %i.czo, %i.dag
  %i.dai = or i32 %i.dah, %i.dae                  ; 3 uses
  store i32 %i.dai, ptr %i.cy, align 8, !tbaa !15
  store i32 %i.daf, ptr %i.cv, align 4, !tbaa !9
  %i.daj = getelementptr i8, ptr %i.cwa, i64 8
  %i.dak = load i16, ptr %i.daj, align 2, !tbaa !43
  %i.dal = zext i16 %i.dak to i64                 ; 2 uses
  %i.dam = getelementptr inbounds nuw i8, ptr %i.cvx, i64 %i.dal
  %i.dan = load i8, ptr %i.dam, align 1, !tbaa !26
  %i.dao = zext i8 %i.dan to i32
  %i.dap = getelementptr inbounds nuw [4 x i8], ptr %i.cvy, i64 %i.dal
  %i.daq = load i32, ptr %i.dap, align 4, !tbaa !36
  %i.dar = icmp sgt i32 %i.daf, 7
  br i1 %i.dar, label %.lr.ph.i1636.i, label %bsW.exit1639.i

.lr.ph.i1636.i:                                   ; preds = %bsW.exit1632.i
  %.pre15.i1638.i = load i32, ptr %i.ckf, align 4, !tbaa !20
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ck, %.lr.ph.i1636.i
end_hunk_3
begin_hunk_4_@BZ2_compressBlock:bb.a
  %i.etj = icmp sgt i32 %i.eth, 15
  br i1 %i.etj, label %bb.dz, label %bsW.exit1926.i, !llvm.loop !27

bsW.exit1926.i:                                   ; preds = %bb.dz, %bsW.exit1919.i
  %i.etk = phi i32 [ %i.esm, %bsW.exit1919.i ], [ %i.etg, %bb.dz ]
  %.lcssa.i1922.i = phi i32 [ %i.esj, %bsW.exit1919.i ], [ %i.eti, %bb.dz ]
  %i.etl = add nsw i32 %.lcssa.i1922.i, %i.ess    ; 4 uses
  %i.etm = sub i32 32, %i.etl
  %i.etn = shl i32 %i.esu, %i.etm
  %i.eto = or i32 %i.etn, %i.etk                  ; 3 uses
  store i32 %i.eto, ptr %i.cy, align 8, !tbaa !15
  store i32 %i.etl, ptr %i.cv, align 4, !tbaa !9
  %i.etp = getelementptr i8, ptr %i.cwa, i64 92
  %i.etq = load i16, ptr %i.etp, align 2, !tbaa !43
  %i.etr = zext i16 %i.etq to i64                 ; 2 uses
  %i.ets = getelementptr inbounds nuw i8, ptr %i.cvx, i64 %i.etr
  %i.ett = load i8, ptr %i.ets, align 1, !tbaa !26
  %i.etu = zext i8 %i.ett to i32
  %i.etv = getelementptr inbounds nuw [4 x i8], ptr %i.cvy, i64 %i.etr
  %i.etw = load i32, ptr %i.etv, align 4, !tbaa !36
  %i.etx = icmp sgt i32 %i.etl, 7
  br i1 %i.etx, label %.lr.ph.i1930.i, label %bsW.exit1933.i

.lr.ph.i1930.i:                                   ; preds = %bsW.exit1926.i
  %.pre15.i1932.i = load i32, ptr %i.ckf, align 4, !tbaa !20
  br label %bb.ea

bb.ea:                                            ; preds = %bb.ea, %.lr.ph.i1930.i
  %i.ety = phi i32 [ %.pre15.i1932.i, %.lr.ph.i1930.i ], [ %i.eug, %bb.ea ]
  %i.etz = phi i32 [ %i.eto, %.lr.ph.i1930.i ], [ %i.eui, %bb.ea ]
  %i.eua = lshr i32 %i.etz, 24
  %i.eub = trunc nuw i32 %i.eua to i8
  %i.euc = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.eud = sext i32 %i.ety to i64
  %i.eue = getelementptr inbounds i8, ptr %i.euc, i64 %i.eud
  store i8 %i.eub, ptr %i.eue, align 1, !tbaa !26
  %i.euf = load i32, ptr %i.ckf, align 4, !tbaa !20
  %i.eug = add nsw i32 %i.euf, 1                  ; 2 uses
  store i32 %i.eug, ptr %i.ckf, align 4, !tbaa !20
  %i.euh = load i32, ptr %i.cy, align 8, !tbaa !15
  %i.eui = shl i32 %i.euh, 8                      ; 3 uses
  store i32 %i.eui, ptr %i.cy, align 8, !tbaa !15
  %i.euj = load i32, ptr %i.cv, align 4, !tbaa !9 ; 2 uses
  %i.euk = add nsw i32 %i.euj, -8                 ; 2 uses
  store i32 %i.euk, ptr %i.cv, align 4, !tbaa !9
  %i.eul = icmp sgt i32 %i.euj, 15
  br i1 %i.eul, label %bb.ea, label %bsW.exit1933.i, !llvm.loop !27

bsW.exit1933.i:                                   ; preds = %bb.ea, %bsW.exit1926.i
  %i.eum = phi i32 [ %i.eto, %bsW.exit1926.i ], [ %i.eui, %bb.ea ]
  %.lcssa.i1929.i = phi i32 [ %i.etl, %bsW.exit1926.i ], [ %i.euk, %bb.ea ]
  %i.eun = add nsw i32 %.lcssa.i1929.i, %i.etu    ; 4 uses
  %i.euo = sub i32 32, %i.eun
  %i.eup = shl i32 %i.etw, %i.euo
  %i.euq = or i32 %i.eup, %i.eum                  ; 3 uses
  store i32 %i.euq, ptr %i.cy, align 8, !tbaa !15
  store i32 %i.eun, ptr %i.cv, align 4, !tbaa !9
  %i.eur = getelementptr i8, ptr %i.cwa, i64 94
  %i.eus = load i16, ptr %i.eur, align 2, !tbaa !43
  %i.eut = zext i16 %i.eus to i64                 ; 2 uses
  %i.euu = getelementptr inbounds nuw i8, ptr %i.cvx, i64 %i.eut
  %i.euv = load i8, ptr %i.euu, align 1, !tbaa !26
  %i.euw = zext i8 %i.euv to i32
  %i.eux = getelementptr inbounds nuw [4 x i8], ptr %i.cvy, i64 %i.eut
  %i.euy = load i32, ptr %i.eux, align 4, !tbaa !36
  %i.euz = icmp sgt i32 %i.eun, 7
  br i1 %i.euz, label %.lr.ph.i1937.i, label %bsW.exit1940.i

.lr.ph.i1937.i:                                   ; preds = %bsW.exit1933.i
  %.pre15.i1939.i = load i32, ptr %i.ckf, align 4, !tbaa !20
  br label %bb.eb

bb.eb:                                            ; preds = %bb.eb, %.lr.ph.i1937.i
  %i.eva = phi i32 [ %.pre15.i1939.i, %.lr.ph.i1937.i ], [ %i.evi, %bb.eb ]
  %i.evb = phi i32 [ %i.euq, %.lr.ph.i1937.i ], [ %i.evk, %bb.eb ]
  %i.evc = lshr i32 %i.evb, 24
  %i.evd = trunc nuw i32 %i.evc to i8
  %i.eve = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.evf = sext i32 %i.eva to i64
  %i.evg = getelementptr inbounds i8, ptr %i.eve, i64 %i.evf
  store i8 %i.evd, ptr %i.evg, align 1, !tbaa !26
  %i.evh = load i32, ptr %i.ckf, align 4, !tbaa !20
  %i.evi = add nsw i32 %i.evh, 1                  ; 2 uses
  store i32 %i.evi, ptr %i.ckf, align 4, !tbaa !20
  %i.evj = load i32, ptr %i.cy, align 8, !tbaa !15
  %i.evk = shl i32 %i.evj, 8                      ; 3 uses
  store i32 %i.evk, ptr %i.cy, align 8, !tbaa !15
  %i.evl = load i32, ptr %i.cv, align 4, !tbaa !9 ; 2 uses
  %i.evm = add nsw i32 %i.evl, -8                 ; 2 uses
  store i32 %i.evm, ptr %i.cv, align 4, !tbaa !9
  %i.evn = icmp sgt i32 %i.evl, 15
  br i1 %i.evn, label %bb.eb, label %bsW.exit1940.i, !llvm.loop !27

bsW.exit1940.i:                                   ; preds = %bb.eb, %bsW.exit1933.i
  %i.evo = phi i32 [ %i.euq, %bsW.exit1933.i ], [ %i.evk, %bb.eb ]
  %.lcssa.i1936.i = phi i32 [ %i.eun, %bsW.exit1933.i ], [ %i.evm, %bb.eb ]
  %i.evp = add nsw i32 %.lcssa.i1936.i, %i.euw    ; 4 uses
  %i.evq = sub i32 32, %i.evp
  %i.evr = shl i32 %i.euy, %i.evq
  %i.evs = or i32 %i.evr, %i.evo                  ; 3 uses
  store i32 %i.evs, ptr %i.cy, align 8, !tbaa !15
  store i32 %i.evp, ptr %i.cv, align 4, !tbaa !9
  %i.evt = getelementptr i8, ptr %i.cwa, i64 96
  %i.evu = load i16, ptr %i.evt, align 2, !tbaa !43
  %i.evv = zext i16 %i.evu to i64                 ; 2 uses
  %i.evw = getelementptr inbounds nuw i8, ptr %i.cvx, i64 %i.evv
  %i.evx = load i8, ptr %i.evw, align 1, !tbaa !26
  %i.evy = zext i8 %i.evx to i32
  %i.evz = getelementptr inbounds nuw [4 x i8], ptr %i.cvy, i64 %i.evv
  %i.ewa = load i32, ptr %i.evz, align 4, !tbaa !36
  %i.ewb = icmp sgt i32 %i.evp, 7
  br i1 %i.ewb, label %.lr.ph.i1944.i, label %bsW.exit1947.i

.lr.ph.i1944.i:                                   ; preds = %bsW.exit1940.i
  %.pre15.i1946.i = load i32, ptr %i.ckf, align 4, !tbaa !20
  br label %bb.ec

bb.ec:                                            ; preds = %bb.ec, %.lr.ph.i1944.i
  %i.ewc = phi i32 [ %.pre15.i1946.i, %.lr.ph.i1944.i ], [ %i.ewk, %bb.ec ]
  %i.ewd = phi i32 [ %i.evs, %.lr.ph.i1944.i ], [ %i.ewm, %bb.ec ]
  %i.ewe = lshr i32 %i.ewd, 24
  %i.ewf = trunc nuw i32 %i.ewe to i8
  %i.ewg = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.ewh = sext i32 %i.ewc to i64
  %i.ewi = getelementptr inbounds i8, ptr %i.ewg, i64 %i.ewh
  store i8 %i.ewf, ptr %i.ewi, align 1, !tbaa !26
  %i.ewj = load i32, ptr %i.ckf, align 4, !tbaa !20
  %i.ewk = add nsw i32 %i.ewj, 1                  ; 2 uses
  store i32 %i.ewk, ptr %i.ckf, align 4, !tbaa !20
  %i.ewl = load i32, ptr %i.cy, align 8, !tbaa !15
  %i.ewm = shl i32 %i.ewl, 8                      ; 3 uses
  store i32 %i.ewm, ptr %i.cy, align 8, !tbaa !15
  %i.ewn = load i32, ptr %i.cv, align 4, !tbaa !9 ; 2 uses
  %i.ewo = add nsw i32 %i.ewn, -8                 ; 2 uses
  store i32 %i.ewo, ptr %i.cv, align 4, !tbaa !9
  %i.ewp = icmp sgt i32 %i.ewn, 15
  br i1 %i.ewp, label %bb.ec, label %bsW.exit1947.i, !llvm.loop !27

bsW.exit1947.i:                                   ; preds = %bb.ec, %bsW.exit1940.i
  %i.ewq = phi i32 [ %i.evs, %bsW.exit1940.i ], [ %i.ewm, %bb.ec ]
  %.lcssa.i1943.i = phi i32 [ %i.evp, %bsW.exit1940.i ], [ %i.ewo, %bb.ec ]
  %i.ewr = add nsw i32 %.lcssa.i1943.i, %i.evy    ; 4 uses
  %i.ews = sub i32 32, %i.ewr
  %i.ewt = shl i32 %i.ewa, %i.ews
  %i.ewu = or i32 %i.ewt, %i.ewq                  ; 3 uses
  store i32 %i.ewu, ptr %i.cy, align 8, !tbaa !15
  store i32 %i.ewr, ptr %i.cv, align 4, !tbaa !9
  %i.ewv = getelementptr i8, ptr %i.cwa, i64 98
  %i.eww = load i16, ptr %i.ewv, align 2, !tbaa !43
  %i.ewx = zext i16 %i.eww to i64                 ; 2 uses
  %i.ewy = getelementptr inbounds nuw i8, ptr %i.cvx, i64 %i.ewx
  %i.ewz = load i8, ptr %i.ewy, align 1, !tbaa !26
  %i.exa = zext i8 %i.ewz to i32
  %i.exb = getelementptr inbounds nuw [4 x i8], ptr %i.cvy, i64 %i.ewx
  %i.exc = load i32, ptr %i.exb, align 4, !tbaa !36
  %i.exd = icmp sgt i32 %i.ewr, 7
  br i1 %i.exd, label %.lr.ph.i1951.i, label %bsW.exit1954.i

.lr.ph.i1951.i:                                   ; preds = %bsW.exit1947.i
  %.pre15.i1953.i = load i32, ptr %i.ckf, align 4, !tbaa !20
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ed, %.lr.ph.i1951.i
  %i.exe = phi i32 [ %.pre15.i1953.i, %.lr.ph.i1951.i ], [ %i.exm, %bb.ed ]
  %i.exf = phi i32 [ %i.ewu, %.lr.ph.i1951.i ], [ %i.exo, %bb.ed ]
  %i.exg = lshr i32 %i.exf, 24
  %i.exh = trunc nuw i32 %i.exg to i8
  %i.exi = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.exj = sext i32 %i.exe to i64
  %i.exk = getelementptr inbounds i8, ptr %i.exi, i64 %i.exj
  store i8 %i.exh, ptr %i.exk, align 1, !tbaa !26
  %i.exl = load i32, ptr %i.ckf, align 4, !tbaa !20
  %i.exm = add nsw i32 %i.exl, 1                  ; 2 uses
  store i32 %i.exm, ptr %i.ckf, align 4, !tbaa !20
  %i.exn = load i32, ptr %i.cy, align 8, !tbaa !15
  %i.exo = shl i32 %i.exn, 8                      ; 3 uses
  store i32 %i.exo, ptr %i.cy, align 8, !tbaa !15
  %i.exp = load i32, ptr %i.cv, align 4, !tbaa !9 ; 2 uses
  %i.exq = add nsw i32 %i.exp, -8                 ; 2 uses
  store i32 %i.exq, ptr %i.cv, align 4, !tbaa !9
  %i.exr = icmp sgt i32 %i.exp, 15
  br i1 %i.exr, label %bb.ed, label %bsW.exit1954.i, !llvm.loop !27

bsW.exit1954.i:                                   ; preds = %bb.ed, %bsW.exit1947.i
  %i.exs = phi i32 [ %i.ewu, %bsW.exit1947.i ], [ %i.exo, %bb.ed ]
  %.lcssa.i1950.i = phi i32 [ %i.ewr, %bsW.exit1947.i ], [ %i.exq, %bb.ed ]
  %i.ext = add nsw i32 %.lcssa.i1950.i, %i.exa    ; 2 uses
  %i.exu = sub i32 32, %i.ext
  %i.exv = shl i32 %i.exc, %i.exu
  %i.exw = or i32 %i.exv, %i.exs
  store i32 %i.exw, ptr %i.cy, align 8, !tbaa !15
  store i32 %i.ext, ptr %i.cv, align 4, !tbaa !9
  br label %.loopexit.i

.lr.ph2201.i:                                     ; preds = %bsW.exit1961.i, %.lr.ph2201.preheader.i
  %.pre.i1959.i = phi i32 [ %.pre.i1959.i.pre, %.lr.ph2201.preheader.i ], [ %i.ezd, %bsW.exit1961.i ] ; 2 uses
  %i.exx = phi i32 [ %.pre2525.i, %.lr.ph2201.preheader.i ], [ %i.eza, %bsW.exit1961.i ] ; 2 uses
  %indvars.iv2468.i = phi i64 [ %i.cvt, %.lr.ph2201.preheader.i ], [ %indvars.iv.next2469.i, %bsW.exit1961.i ] ; 2 uses
  %i.exy = load i8, ptr %i.cvn, align 1, !tbaa !26
  %i.exz = zext i8 %i.exy to i64                  ; 2 uses
  %i.eya = getelementptr inbounds nuw [258 x i8], ptr %2, i64 %i.exz
  %i.eyb = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %indvars.iv2468.i
  %i.eyc = load i16, ptr %i.eyb, align 2, !tbaa !43
  %i.eyd = zext i16 %i.eyc to i64                 ; 2 uses
  %i.eye = getelementptr inbounds nuw i8, ptr %i.eya, i64 %i.eyd
  %i.eyf = load i8, ptr %i.eye, align 1, !tbaa !26
  %i.eyg = zext i8 %i.eyf to i32
  %i.eyh = getelementptr inbounds nuw [1032 x i8], ptr %i.bes, i64 %i.exz
  %i.eyi = getelementptr inbounds nuw [4 x i8], ptr %i.eyh, i64 %i.eyd
  %i.eyj = load i32, ptr %i.eyi, align 4, !tbaa !36
  %i.eyk = icmp sgt i32 %i.exx, 7
  br i1 %i.eyk, label %.lr.ph.i1958.i, label %bsW.exit1961.i

.lr.ph.i1958.i:                                   ; preds = %.lr.ph2201.i
  %.pre15.i1960.i = load i32, ptr %i.ckf, align 4, !tbaa !20
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ee, %.lr.ph.i1958.i
  %i.eyl = phi i32 [ %.pre15.i1960.i, %.lr.ph.i1958.i ], [ %i.eyt, %bb.ee ]
  %i.eym = phi i32 [ %.pre.i1959.i, %.lr.ph.i1958.i ], [ %i.eyv, %bb.ee ]
  %i.eyn = lshr i32 %i.eym, 24
  %i.eyo = trunc nuw i32 %i.eyn to i8
  %i.eyp = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.eyq = sext i32 %i.eyl to i64
  %i.eyr = getelementptr inbounds i8, ptr %i.eyp, i64 %i.eyq
  store i8 %i.eyo, ptr %i.eyr, align 1, !tbaa !26
  %i.eys = load i32, ptr %i.ckf, align 4, !tbaa !20
  %i.eyt = add nsw i32 %i.eys, 1                  ; 2 uses
  store i32 %i.eyt, ptr %i.ckf, align 4, !tbaa !20
  %i.eyu = load i32, ptr %i.cy, align 8, !tbaa !15
  %i.eyv = shl i32 %i.eyu, 8                      ; 3 uses
  store i32 %i.eyv, ptr %i.cy, align 8, !tbaa !15
  %i.eyw = load i32, ptr %i.cv, align 4, !tbaa !9 ; 2 uses
  %i.eyx = add nsw i32 %i.eyw, -8                 ; 2 uses
  store i32 %i.eyx, ptr %i.cv, align 4, !tbaa !9
  %i.eyy = icmp sgt i32 %i.eyw, 15
  br i1 %i.eyy, label %bb.ee, label %bsW.exit1961.i, !llvm.loop !27

bsW.exit1961.i:                                   ; preds = %bb.ee, %.lr.ph2201.i
  %i.eyz = phi i32 [ %.pre.i1959.i, %.lr.ph2201.i ], [ %i.eyv, %bb.ee ]
  %.lcssa.i1957.i = phi i32 [ %i.exx, %.lr.ph2201.i ], [ %i.eyx, %bb.ee ]
  %i.eza = add nsw i32 %.lcssa.i1957.i, %i.eyg    ; 3 uses
  %i.ezb = sub i32 32, %i.eza
  %i.ezc = shl i32 %i.eyj, %i.ezb
  %i.ezd = or i32 %i.ezc, %i.eyz                  ; 2 uses
  store i32 %i.ezd, ptr %i.cy, align 8, !tbaa !15
  store i32 %i.eza, ptr %i.cv, align 4, !tbaa !9
  %indvars.iv.next2469.i = add nsw i64 %indvars.iv2468.i, 1 ; 2 uses
  %lftr.wideiv2472.i = trunc i64 %indvars.iv.next2469.i to i32
  %exitcond2473.not.i = icmp eq i32 %i.cvu, %lftr.wideiv2472.i
  br i1 %exitcond2473.not.i, label %.loopexit.i, label %.lr.ph2201.i, !llvm.loop !81

.loopexit.i:                                      ; preds = %bsW.exit1961.i, %bsW.exit1954.i, %.preheader.i124
  %i.eze = add nsw i32 %spec.select1525.i, 1      ; 2 uses
  %indvars.iv.next2475.i = add nuw nsw i64 %indvars.iv2474.i, 1 ; 2 uses
  %i.ezf = load i32, ptr %i.nv, align 4, !tbaa !47 ; 2 uses
  %.not.i = icmp slt i32 %i.eze, %i.ezf
  br i1 %.not.i, label %.lr.ph2206.i, label %._crit_edge2207.loopexit.i

._crit_edge2207.loopexit.i:                       ; preds = %.loopexit.i
  %i.ezg = trunc nuw i64 %indvars.iv.next2475.i to i32
  br label %._crit_edge2207.i

._crit_edge2207.i:                                ; preds = %._crit_edge2207.loopexit.i, %bb.cc
  %.01482.lcssa.i = phi i32 [ 0, %bb.cc ], [ %i.ezg, %._crit_edge2207.loopexit.i ]
  %i.ezh = icmp eq i32 %.01482.lcssa.i, %.11488.lcssa.i
  br i1 %i.ezh, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %._crit_edge2207.i
  call void @BZ2_bz__AssertH__fail(i32 noundef 3007) #11
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %._crit_edge2207.i
  %i.ezi = load i32, ptr %i.nw, align 8, !tbaa !21
  %i.ezj = icmp sgt i32 %i.ezi, 2
  br i1 %i.ezj, label %bb.eh, label %sendMTFValues.exit

bb.eh:                                            ; preds = %bb.eg
  %i.ezk = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.ezl = load i32, ptr %i.ckf, align 4, !tbaa !20
  %i.ezm = sub nsw i32 %i.ezl, %i.cvi
  %i.ezn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ezk, ptr noundef nonnull @.str.10, i32 noundef %i.ezm) #10 ; 0 uses
  br label %sendMTFValues.exit

sendMTFValues.exit:                               ; preds = %bb.eg, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.ei

bb.ei:                                            ; preds = %sendMTFValues.exit, %bb.i
  %.not = icmp eq i8 %1, 0
  br i1 %.not, label %bsFinishWrite.exit, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ezo = getelementptr inbounds nuw i8, ptr %0, i64 644 ; 22 uses
  %i.ezp = load i32, ptr %i.ezo, align 4, !tbaa !9 ; 2 uses
  %i.ezq = icmp sgt i32 %i.ezp, 7
  %i.ezr = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 23 uses
  br i1 %i.ezq, label %.lr.ph.i.i136, label %.._crit_edge_crit_edge.i.i132

.._crit_edge_crit_edge.i.i132:                    ; preds = %bb.ej
  %.pre16.i.i133 = load i32, ptr %i.ezr, align 8, !tbaa !15
  %i.ezs = add nsw i32 %i.ezp, 8
  br label %bsPutUChar.exit139

.lr.ph.i.i136:                                    ; preds = %bb.ej
  %i.ezt = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %.pre.i.i137 = load i32, ptr %i.ezr, align 8, !tbaa !15
  %.pre15.i.i138 = load i32, ptr %i.ezt, align 4, !tbaa !20
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ek, %.lr.ph.i.i136
  %i.ezu = phi i32 [ %.pre15.i.i138, %.lr.ph.i.i136 ], [ %i.fac, %bb.ek ]
  %i.ezv = phi i32 [ %.pre.i.i137, %.lr.ph.i.i136 ], [ %i.fae, %bb.ek ]
  %i.ezw = lshr i32 %i.ezv, 24
  %i.ezx = trunc nuw i32 %i.ezw to i8
  %i.ezy = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.ezz = sext i32 %i.ezu to i64
  %i.faa = getelementptr inbounds i8, ptr %i.ezy, i64 %i.ezz
  store i8 %i.ezx, ptr %i.faa, align 1, !tbaa !26
  %i.fab = load i32, ptr %i.ezt, align 4, !tbaa !20
  %i.fac = add nsw i32 %i.fab, 1                  ; 2 uses
  store i32 %i.fac, ptr %i.ezt, align 4, !tbaa !20
  %i.fad = load i32, ptr %i.ezr, align 8, !tbaa !15
  %i.fae = shl i32 %i.fad, 8                      ; 3 uses
  store i32 %i.fae, ptr %i.ezr, align 8, !tbaa !15
  %i.faf = load i32, ptr %i.ezo, align 4, !tbaa !9 ; 3 uses
  %i.fag = add nsw i32 %i.faf, -8
  store i32 %i.fag, ptr %i.ezo, align 4, !tbaa !9
  %i.fah = icmp sgt i32 %i.faf, 15
  br i1 %i.fah, label %bb.ek, label %bsPutUChar.exit139, !llvm.loop !27

bsPutUChar.exit139:                               ; preds = %bb.ek, %.._crit_edge_crit_edge.i.i132
  %i.fai = phi i32 [ %.pre16.i.i133, %.._crit_edge_crit_edge.i.i132 ], [ %i.fae, %bb.ek ]
  %.lcssa.i.i135 = phi i32 [ %i.ezs, %.._crit_edge_crit_edge.i.i132 ], [ %i.faf, %bb.ek ] ; 4 uses
  %i.faj = sub i32 32, %.lcssa.i.i135
  %i.fak = shl i32 23, %i.faj
  %i.fal = or i32 %i.fak, %i.fai                  ; 3 uses
  store i32 %i.fal, ptr %i.ezr, align 8, !tbaa !15
  store i32 %.lcssa.i.i135, ptr %i.ezo, align 4, !tbaa !9
  %i.fam = icmp sgt i32 %.lcssa.i.i135, 7
  br i1 %i.fam, label %.lr.ph.i.i144, label %.._crit_edge_crit_edge.i.i140

.._crit_edge_crit_edge.i.i140:                    ; preds = %bsPutUChar.exit139
  %i.fan = add nsw i32 %.lcssa.i.i135, 8
  br label %bsPutUChar.exit147

.lr.ph.i.i144:                                    ; preds = %bsPutUChar.exit139
  %i.fao = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %.pre15.i.i146 = load i32, ptr %i.fao, align 4, !tbaa !20
  br label %bb.el

bb.el:                                            ; preds = %bb.el, %.lr.ph.i.i144
  %i.fap = phi i32 [ %.pre15.i.i146, %.lr.ph.i.i144 ], [ %i.fax, %bb.el ]
  %i.faq = phi i32 [ %i.fal, %.lr.ph.i.i144 ], [ %i.faz, %bb.el ]
  %i.far = lshr i32 %i.faq, 24
  %i.fas = trunc nuw i32 %i.far to i8
  %i.fat = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.fau = sext i32 %i.fap to i64
  %i.fav = getelementptr inbounds i8, ptr %i.fat, i64 %i.fau
  store i8 %i.fas, ptr %i.fav, align 1, !tbaa !26
  %i.faw = load i32, ptr %i.fao, align 4, !tbaa !20
  %i.fax = add nsw i32 %i.faw, 1                  ; 2 uses
  store i32 %i.fax, ptr %i.fao, align 4, !tbaa !20
  %i.fay = load i32, ptr %i.ezr, align 8, !tbaa !15
  %i.faz = shl i32 %i.fay, 8                      ; 3 uses
  store i32 %i.faz, ptr %i.ezr, align 8, !tbaa !15
  %i.fba = load i32, ptr %i.ezo, align 4, !tbaa !9 ; 3 uses
  %i.fbb = add nsw i32 %i.fba, -8
  store i32 %i.fbb, ptr %i.ezo, align 4, !tbaa !9
  %i.fbc = icmp sgt i32 %i.fba, 15
  br i1 %i.fbc, label %bb.el, label %bsPutUChar.exit147, !llvm.loop !27

bsPutUChar.exit147:                               ; preds = %bb.el, %.._crit_edge_crit_edge.i.i140
  %i.fbd = phi i32 [ %i.fal, %.._crit_edge_crit_edge.i.i140 ], [ %i.faz, %bb.el ]
  %.lcssa.i.i143 = phi i32 [ %i.fan, %.._crit_edge_crit_edge.i.i140 ], [ %i.fba, %bb.el ] ; 4 uses
  %i.fbe = sub i32 32, %.lcssa.i.i143
  %i.fbf = shl i32 114, %i.fbe
  %i.fbg = or i32 %i.fbf, %i.fbd                  ; 3 uses
  store i32 %i.fbg, ptr %i.ezr, align 8, !tbaa !15
  store i32 %.lcssa.i.i143, ptr %i.ezo, align 4, !tbaa !9
  %i.fbh = icmp sgt i32 %.lcssa.i.i143, 7
  br i1 %i.fbh, label %.lr.ph.i.i152, label %.._crit_edge_crit_edge.i.i148

.._crit_edge_crit_edge.i.i148:                    ; preds = %bsPutUChar.exit147
  %i.fbi = add nsw i32 %.lcssa.i.i143, 8
  br label %bsPutUChar.exit155

.lr.ph.i.i152:                                    ; preds = %bsPutUChar.exit147
  %i.fbj = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %.pre15.i.i154 = load i32, ptr %i.fbj, align 4, !tbaa !20
  br label %bb.em

bb.em:                                            ; preds = %bb.em, %.lr.ph.i.i152
  %i.fbk = phi i32 [ %.pre15.i.i154, %.lr.ph.i.i152 ], [ %i.fbs, %bb.em ]
  %i.fbl = phi i32 [ %i.fbg, %.lr.ph.i.i152 ], [ %i.fbu, %bb.em ]
  %i.fbm = lshr i32 %i.fbl, 24
  %i.fbn = trunc nuw i32 %i.fbm to i8
  %i.fbo = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.fbp = sext i32 %i.fbk to i64
  %i.fbq = getelementptr inbounds i8, ptr %i.fbo, i64 %i.fbp
end_hunk_4
