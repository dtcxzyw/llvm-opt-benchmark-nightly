Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/compress?download=true
inline.NumInlined: 91
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@BZ2_compressBlock:bb.a

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
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 45448 ; 4 uses
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
  %xtraiter1377 = and i64 %i.ow, 3                ; 3 uses
  %i.pk = icmp samesign ult i32 %.01481.i, 4
  %unroll_iter1383 = and i64 %i.ow, 4
  %lcmp.mod1379.not = icmp eq i64 %xtraiter1377, 0
  %lcmp.mod1382 = icmp ne i64 %xtraiter1377, 0
  br label %.preheader1978.i

bb.av:                                            ; preds = %._crit_edge2118.i, %bb.au
  %indvars.iv2354.i = phi i64 [ %i.ow, %bb.au ], [ %indvars.iv.next2355.i, %._crit_edge2118.i ] ; 6 uses
  %.014692121.i = phi i32 [ 0, %bb.au ], [ %i.rf, %._crit_edge2118.i ] ; 4 uses
  %.014792120.i = phi i32 [ %i.op, %bb.au ], [ %i.rg, %._crit_edge2118.i ] ; 2 uses
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
  %i.qc = sub i32 %.01481.i, %i.pl                ; 2 uses
  %.not2211.i = trunc i32 %i.qc to i1
  %spec.select = select i1 %.not2211.i, i32 %.014772110.i, i32 %i.pu
  %2 = and i32 %i.qc, 1
  %spec.select183 = sub nsw i32 %i.py, %2
  br label %._crit_edge2113.thread.i

._crit_edge2113.thread.i:                         ; preds = %bb.ax, %bb.aw, %._crit_edge2113.i, %bb.av
  %.11478.i = phi i32 [ 0, %bb.av ], [ %spec.select, %bb.ax ], [ %i.pu, %bb.aw ], [ %i.pu, %._crit_edge2113.i ] ; 3 uses
  %.11473.i = phi i32 [ %i.pn, %bb.av ], [ %spec.select183, %bb.ax ], [ %i.py, %bb.aw ], [ %i.py, %._crit_edge2113.i ] ; 3 uses
  %i.qd = load i32, ptr %i.nw, align 8, !tbaa !64
  %i.qe = icmp sgt i32 %i.qd, 2
  br i1 %i.qe, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %._crit_edge2113.thread.i
  %i.qf = load ptr, ptr @stderr, align 8, !tbaa !66
  %i.qg = sitofp i32 %.11478.i to float
  %i.qh = fpext nnan ninf float %i.qg to double
  %i.qi = fmul nnan double %i.qh, 1.000000e+02
  %i.qj = load i32, ptr %i.nv, align 4, !tbaa !80
  %i.qk = sitofp i32 %i.qj to float
  %i.ql = fpext float %i.qk to double
  %i.qm = fdiv double %i.qi, %i.ql
  %i.qn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qf, ptr noundef nonnull @.str.3, i32 noundef %i.pl, i32 noundef %.014692121.i, i32 noundef %.11473.i, i32 noundef %.11478.i, double noundef %i.qm) #10 ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %._crit_edge2113.thread.i
  br i1 %i.of, label %iter.check1107, label %._crit_edge2118.i

iter.check1107:                                   ; preds = %bb.az
  %i.qo = getelementptr [258 x i8], ptr %0, i64 %indvars.iv2354.i
  %i.qp = getelementptr i8, ptr %i.qo, i64 37450  ; 3 uses
  %i.qq = sext i32 %.11473.i to i64               ; 3 uses
  %i.qr = sext i32 %.014692121.i to i64           ; 3 uses
  br i1 %min.iters.check1090, label %vec.epilog.scalar.ph1108.preheader, label %vector.main.loop.iter.check1091

vector.main.loop.iter.check1091:                  ; preds = %iter.check1107
  br i1 %min.iters.check1092, label %vec.epilog.ph1111, label %vector.ph1093

vector.ph1093:                                    ; preds = %vector.main.loop.iter.check1091
  %broadcast.splatinsert1095 = insertelement <16 x i64> poison, i64 %i.qq, i64 0
  %broadcast.splat1096 = shufflevector <16 x i64> %broadcast.splatinsert1095, <16 x i64> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert1097 = insertelement <16 x i64> poison, i64 %i.qr, i64 0
  %broadcast.splat1098 = shufflevector <16 x i64> %broadcast.splatinsert1097, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %vector.body1099

vector.body1099:                                  ; preds = %vector.body1099, %vector.ph1093
  %index1100 = phi i64 [ 0, %vector.ph1093 ], [ %index.next1102, %vector.body1099 ] ; 2 uses
  %vec.ind1101 = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.ph1093 ], [ %vec.ind.next1103, %vector.body1099 ] ; 3 uses
  %i.qs = icmp slt <16 x i64> %vec.ind1101, %broadcast.splat1098
  %i.qt = icmp sgt <16 x i64> %vec.ind1101, %broadcast.splat1096
  %i.qu = select <16 x i1> %i.qs, <16 x i1> splat (i1 true), <16 x i1> %i.qt
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qp, i64 %index1100
  %i.qw = select <16 x i1> %i.qu, <16 x i8> splat (i8 15), <16 x i8> zeroinitializer
  store <16 x i8> %i.qw, ptr %i.qv, align 1, !tbaa !19
  %index.next1102 = add nuw i64 %index1100, 16    ; 2 uses
  %vec.ind.next1103 = add nuw nsw <16 x i64> %vec.ind1101, splat (i64 16)
  %i.qx = icmp eq i64 %index.next1102, %n.vec1094
  br i1 %i.qx, label %middle.block1104, label %vector.body1099, !llvm.loop !28

middle.block1104:                                 ; preds = %vector.body1099
  br i1 %cmp.n1105, label %._crit_edge2118.i, label %vec.epilog.iter.check1109

vec.epilog.iter.check1109:                        ; preds = %middle.block1104
  br i1 %min.epilog.iters.check1110.not.not, label %vec.epilog.scalar.ph1108.preheader, label %vec.epilog.ph1111, !prof !81

vec.epilog.ph1111:                                ; preds = %vector.main.loop.iter.check1091, %vec.epilog.iter.check1109
  %vec.epilog.resume.val1106 = phi i64 [ %n.vec1094, %vec.epilog.iter.check1109 ], [ 0, %vector.main.loop.iter.check1091 ] ; 2 uses
  %broadcast.splatinsert1113 = insertelement <8 x i64> poison, i64 %i.qq, i64 0
  %broadcast.splat1114 = shufflevector <8 x i64> %broadcast.splatinsert1113, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1115 = insertelement <8 x i64> poison, i64 %i.qr, i64 0
  %broadcast.splat1116 = shufflevector <8 x i64> %broadcast.splatinsert1115, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1117 = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val1106, i64 0
  %broadcast.splat1118 = shufflevector <8 x i64> %broadcast.splatinsert1117, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction1119 = or disjoint <8 x i64> %broadcast.splat1118, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body1120

vec.epilog.vector.body1120:                       ; preds = %vec.epilog.vector.body1120, %vec.epilog.ph1111
  %index1121 = phi i64 [ %vec.epilog.resume.val1106, %vec.epilog.ph1111 ], [ %index.next1123, %vec.epilog.vector.body1120 ] ; 2 uses
  %vec.ind1122 = phi <8 x i64> [ %induction1119, %vec.epilog.ph1111 ], [ %vec.ind.next1124, %vec.epilog.vector.body1120 ] ; 3 uses
  %i.qy = icmp slt <8 x i64> %vec.ind1122, %broadcast.splat1116
  %i.qz = icmp sgt <8 x i64> %vec.ind1122, %broadcast.splat1114
  %i.ra = select <8 x i1> %i.qy, <8 x i1> splat (i1 true), <8 x i1> %i.qz
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qp, i64 %index1121
  %i.rc = select <8 x i1> %i.ra, <8 x i8> splat (i8 15), <8 x i8> zeroinitializer
  store <8 x i8> %i.rc, ptr %i.rb, align 1, !tbaa !19
  %index.next1123 = add nuw i64 %index1121, 8     ; 2 uses
  %vec.ind.next1124 = add nuw nsw <8 x i64> %vec.ind1122, splat (i64 8)
  %i.rd = icmp eq i64 %index.next1123, %n.vec1112
  br i1 %i.rd, label %vec.epilog.middle.block1125, label %vec.epilog.vector.body1120, !llvm.loop !29

vec.epilog.middle.block1125:                      ; preds = %vec.epilog.vector.body1120
  br i1 %cmp.n1126, label %._crit_edge2118.i, label %vec.epilog.scalar.ph1108.preheader

vec.epilog.scalar.ph1108.preheader:               ; preds = %iter.check1107, %vec.epilog.iter.check1109, %vec.epilog.middle.block1125
  %indvars.iv2350.i.ph = phi i64 [ 0, %iter.check1107 ], [ %n.vec1094, %vec.epilog.iter.check1109 ], [ %n.vec1112, %vec.epilog.middle.block1125 ]
  br label %vec.epilog.scalar.ph1108

vec.epilog.scalar.ph1108:                         ; preds = %vec.epilog.scalar.ph1108.preheader, %vec.epilog.scalar.ph1108
  %indvars.iv2350.i = phi i64 [ %indvars.iv.next2351.i, %vec.epilog.scalar.ph1108 ], [ %indvars.iv2350.i.ph, %vec.epilog.scalar.ph1108.preheader ] ; 4 uses
  %.not1514.i = icmp slt i64 %indvars.iv2350.i, %i.qr
  %.not1515.i = icmp sgt i64 %indvars.iv2350.i, %i.qq
  %or.cond1517.i = select i1 %.not1514.i, i1 true, i1 %.not1515.i
  %i.re = getelementptr inbounds nuw i8, ptr %i.qp, i64 %indvars.iv2350.i
  %..i = select i1 %or.cond1517.i, i8 15, i8 0
  store i8 %..i, ptr %i.re, align 1, !tbaa !19
  %indvars.iv.next2351.i = add nuw nsw i64 %indvars.iv2350.i, 1 ; 2 uses
  %exitcond.not.i128 = icmp eq i64 %indvars.iv.next2351.i, %wide.trip.count.i122
  br i1 %exitcond.not.i128, label %._crit_edge2118.i, label %vec.epilog.scalar.ph1108, !llvm.loop !30

._crit_edge2118.i:                                ; preds = %vec.epilog.scalar.ph1108, %middle.block1104, %vec.epilog.middle.block1125, %bb.az
  %indvars.iv.next2355.i = add nsw i64 %indvars.iv2354.i, -1
  %i.rf = add nsw i32 %.11473.i, 1
  %i.rg = sub nsw i32 %.014792120.i, %.11478.i
  %i.rh = icmp sgt i64 %indvars.iv2354.i, 1
  br i1 %i.rh, label %bb.av, label %.preheader1979.i, !llvm.loop !31

.preheader1978.i:                                 ; preds = %bb.bg, %.preheader1979.i
  %.014892152.i = phi i32 [ 0, %.preheader1979.i ], [ %i.bek, %bb.bg ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, i8 0, i64 %i.ph, i1 false), !tbaa !74
  br i1 %i.of, label %.preheader1974.i.epil, label %.loopexit1976.i

.preheader1974.i.epil:                            ; preds = %.preheader1978.i, %.preheader1974.i.epil
  %indvars.iv2363.i.epil = phi i64 [ %indvars.iv.next2364.i.epil, %.preheader1974.i.epil ], [ 0, %.preheader1978.i ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader1974.i.epil ], [ 0, %.preheader1978.i ]
  %i.ri = getelementptr inbounds nuw [1032 x i8], ptr %i.oy, i64 %indvars.iv2363.i.epil
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ri, i8 0, i64 %i.pi, i1 false), !tbaa !74
  %indvars.iv.next2364.i.epil = add nuw nsw i64 %indvars.iv2363.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %i.ow
  br i1 %epil.iter.cmp.not, label %.split2127.i, label %.preheader1974.i.epil, !llvm.loop !32

.split2127.i:                                     ; preds = %.preheader1974.i.epil
  br i1 %brmerge.not.i, label %.lr.ph2129.i, label %.loopexit1976.i

.lr.ph2129.i:                                     ; preds = %.split2127.i, %.lr.ph2129.i
  %indvars.iv2368.i = phi i64 [ %indvars.iv.next2369.i, %.lr.ph2129.i ], [ 0, %.split2127.i ] ; 8 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.oz, i64 %indvars.iv2368.i
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !19
  %i.rl = zext i8 %i.rk to i32
  %i.rm = shl nuw nsw i32 %i.rl, 16
  %i.rn = getelementptr inbounds nuw i8, ptr %i.og, i64 %indvars.iv2368.i
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !19
  %i.rp = zext i8 %i.ro to i32
  %i.rq = or disjoint i32 %i.rm, %i.rp
  %i.rr = getelementptr inbounds nuw [16 x i8], ptr %i.pa, i64 %indvars.iv2368.i ; 3 uses
  store i32 %i.rq, ptr %i.rr, align 8, !tbaa !74
  %i.rs = getelementptr inbounds nuw i8, ptr %i.pb, i64 %indvars.iv2368.i
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !19
  %i.ru = zext i8 %i.rt to i32
  %i.rv = shl nuw nsw i32 %i.ru, 16
  %i.rw = getelementptr inbounds nuw i8, ptr %i.pc, i64 %indvars.iv2368.i
  %i.rx = load i8, ptr %i.rw, align 1, !tbaa !19
  %i.ry = zext i8 %i.rx to i32
  %i.rz = or disjoint i32 %i.rv, %i.ry
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rr, i64 4
  store i32 %i.rz, ptr %i.sa, align 4, !tbaa !74
  %i.sb = getelementptr inbounds nuw i8, ptr %i.pd, i64 %indvars.iv2368.i
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !19
  %i.sd = zext i8 %i.sc to i32
  %i.se = shl nuw nsw i32 %i.sd, 16
  %i.sf = getelementptr inbounds nuw i8, ptr %i.pe, i64 %indvars.iv2368.i
  %i.sg = load i8, ptr %i.sf, align 1, !tbaa !19
  %i.sh = zext i8 %i.sg to i32
  %i.si = or disjoint i32 %i.se, %i.sh
  %i.sj = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  store i32 %i.si, ptr %i.sj, align 8, !tbaa !74
  %indvars.iv.next2369.i = add nuw nsw i64 %indvars.iv2368.i, 1 ; 2 uses
  %exitcond2372.not.i = icmp eq i64 %indvars.iv.next2369.i, %wide.trip.count.i122
  br i1 %exitcond2372.not.i, label %.loopexit1976.i, label %.lr.ph2129.i, !llvm.loop !33

.loopexit1976.i:                                  ; preds = %.lr.ph2129.i, %.split2127.i, %.preheader1978.i
  %i.sk = load i32, ptr %i.nv, align 4, !tbaa !80 ; 2 uses
  %.not15102141.i = icmp sgt i32 %i.sk, 0
  br i1 %.not15102141.i, label %.lr.ph2146.i, label %._crit_edge2147.i

.lr.ph2146.i:                                     ; preds = %.loopexit1976.i, %.loopexit1971.i
  %indvars.iv2397.i = phi i64 [ %indvars.iv.next2398.i, %.loopexit1971.i ], [ 0, %.loopexit1976.i ] ; 2 uses
  %i.sl = phi i32 [ %i.bdv, %.loopexit1971.i ], [ %i.sk, %.loopexit1976.i ] ; 3 uses
  %.114702144.i = phi i32 [ %i.bdu, %.loopexit1971.i ], [ 0, %.loopexit1976.i ] ; 12 uses
  %.014762143.i = phi i32 [ %i.aqj, %.loopexit1971.i ], [ 0, %.loopexit1976.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, i8 0, i64 %i.pj, i1 false), !tbaa !79
  %i.sm = add i32 %.114702144.i, 49
  %i.sn = add nsw i32 %i.sl, -1
  %spec.select.i127 = call i32 @llvm.smin.i32(i32 %i.sm, i32 %i.sn) ; 4 uses
  %i.so = sub nsw i32 %spec.select.i127, %.114702144.i
  %i.sp = icmp eq i32 %i.so, 49
  %or.cond1519.i = select i1 %i.ou, i1 %i.sp, i1 false ; 2 uses
  br i1 %or.cond1519.i, label %bb.ba, label %.preheader1972.i

.preheader1972.i:                                 ; preds = %.lr.ph2146.i
  %.not15122132.not.i = icmp sgt i32 %i.sl, %.114702144.i
  br i1 %.not15122132.not.i, label %.lr.ph2134.preheader.i, label %.loopexit1973.i.preheader

.lr.ph2134.preheader.i:                           ; preds = %.preheader1972.i
  %i.sq = sext i32 %.114702144.i to i64
  %smax2384.i = call i32 @llvm.smax.i32(i32 %.114702144.i, i32 %spec.select.i127)
  %i.sr = add nsw i32 %smax2384.i, 1
  br label %.lr.ph2134.i

bb.ba:                                            ; preds = %.lr.ph2146.i
  %i.ss = sext i32 %.114702144.i to i64
  %i.st = getelementptr inbounds [2 x i8], ptr %i.jr, i64 %i.ss ; 50 uses
  %i.su = load i16, ptr %i.st, align 2, !tbaa !79
  %i.sv = zext i16 %i.su to i64
end_hunk_0
