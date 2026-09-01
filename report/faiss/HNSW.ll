Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/HNSW?download=true
inline.NumInlined: 2707
inline.NumDeleted: 1075
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN5faiss11hnsw_detail31search_from_candidates_panoramaERKNS_4HNSWEPKNS_9IndexHNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINS_4CMaxIfiEEEERNS_12VisitedTableERNS_9HNSWStatsEiiPKNS_16SearchParametersE:bb.a
  %i.hk = fcmp ogt float %i.gu, %i.hj
  %i.hl = zext i1 %i.hk to i32
  %spec.select.i = add nuw nsw i32 %.067.i, %i.hl ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEE11count_belowEf.exit, label %scalar.ph1851, !llvm.loop !535

_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEE11count_belowEf.exit: ; preds = %scalar.ph1851, %middle.block1862, %bb.at
  %.06.lcssa.i = phi i32 [ 0, %bb.at ], [ %i.hh, %middle.block1862 ], [ %spec.select.i, %scalar.ph1851 ]
  %.not232 = icmp slt i32 %.06.lcssa.i, %.14731053
  br i1 %.not232, label %bb.bb, label %bb.au

bb.au:                                            ; preds = %_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEE11count_belowEf.exit
  %i.hm = icmp eq i64 %.01618241302, 0            ; 2 uses
  br i1 %i.hm, label %.thread658, label %bb.ba

_ZNSt6vectorIfSaIfEED2Ev.exit331.thread:          ; preds = %bb.am
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

_ZNSt6vectorIfSaIfEED2Ev.exit329.thread:          ; preds = %bb.an
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.av:                                            ; preds = %bb.ap, %bb.ao
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit327

bb.aw:                                            ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit287
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.ax:                                            ; preds = %bb.aq, %_ZN5faiss13PanoramaStatsC2Ev.exit
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.ay:                                            ; preds = %.preheader703.preheader
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.az:                                            ; preds = %bb.ba
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.ba:                                            ; preds = %bb.au
  invoke void @_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEE4pushEif(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %i.gt, float noundef %i.gu)
          to label %.thread658 unwind label %bb.az

.thread658:                                       ; preds = %bb.au, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %.critedge

bb.bb:                                            ; preds = %_ZN5faiss12MinimaxHeapTINS_4CMaxIfiEEE11count_belowEf.exit, %bb.as
  %i.hu = add i64 %.01618241302, 1                ; 3 uses
  %i.hv = sext i32 %i.gt to i64
  %i.hw = load ptr, ptr %i.ft, align 8, !tbaa !96
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.hv
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !99 ; 2 uses
  %i.hz = load ptr, ptr %i.fu, align 8, !tbaa !84
  %i.ia = getelementptr [4 x i8], ptr %i.hz, i64 %i.fv ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !21
  %i.ic = sext i32 %i.ib to i64
  %i.id = add i64 %i.hy, %i.ic                    ; 2 uses
  %i.ie = getelementptr i8, ptr %i.ia, i64 4
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !21
  %i.ig = sext i32 %i.if to i64
  %i.ih = add i64 %i.hy, %i.ig                    ; 2 uses
  %i.ii = icmp ult i64 %i.id, %i.ih
  br i1 %i.ii, label %.lr.ph818, label %._crit_edge819.thread

._crit_edge819.thread:                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %.preheader703thread-pre-split

.lr.ph818:                                        ; preds = %bb.bb, %bb.bj
  %.0158816 = phi i64 [ %i.jf, %bb.bj ], [ %i.id, %bb.bb ] ; 2 uses
  %.1165815 = phi i64 [ %.3167.ph, %bb.bj ], [ %.01648231303, %bb.bb ] ; 5 uses
  %i.ij = load ptr, ptr %i.fw, align 8, !tbaa !154
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %.0158816
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !21 ; 3 uses
  %i.im = icmp sgt i32 %i.il, -1
  br i1 %i.im, label %bb.bc, label %._crit_edge819

bb.bc:                                            ; preds = %.lr.ph818
  %i.in = zext nneg i32 %i.il to i64              ; 3 uses
  %i.io = load ptr, ptr %5, align 8, !tbaa !22
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8
  %i.ir = invoke noundef zeroext i1 %i.iq(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.in)
          to label %bb.bd unwind label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  br i1 %.not233, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.is = load ptr, ptr %.04741051, align 8, !tbaa !22
  %i.it = load ptr, ptr %i.is, align 8
  %i.iu = invoke noundef zeroext i1 %i.it(ptr noundef nonnull align 8 dereferenceable(8) %.04741051, i64 noundef %i.in)
          to label %bb.bf unwind label %bb.bi

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.iv = phi i1 [ true, %bb.bd ], [ %i.iu, %bb.be ]
  %or.cond = and i1 %i.ir, %i.iv
  br i1 %or.cond, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.iw = mul i64 %i.ev, %i.in
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.iw
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !233 ; 2 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.1165815
  store i32 %i.il, ptr %i.iz, align 4, !tbaa !21
  %i.ja = call float @llvm.fmuladd.f32(float %i.iy, float %i.iy, float %i.fo)
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0456.0642, i64 %.1165815
  store float %i.ja, ptr %i.jb, align 4, !tbaa !233
  %i.jc = add i64 %.1165815, 1
  br label %bb.bj

bb.bh:                                            ; preds = %bb.bc
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bi:                                            ; preds = %bb.be
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bf, %bb.bg
  %.3167.ph = phi i64 [ %.1165815, %bb.bf ], [ %i.jc, %bb.bg ] ; 2 uses
  %i.jf = add i64 %.0158816, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.jf, %i.ih
  br i1 %exitcond.not, label %._crit_edge819, label %.lr.ph818, !llvm.loop !536

._crit_edge819:                                   ; preds = %.lr.ph818, %bb.bj
  %.1165.lcssa = phi i64 [ %.3167.ph, %bb.bj ], [ %.1165815, %.lr.ph818 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.jg = icmp ult i64 %.1165.lcssa, 64
  br i1 %i.jg, label %.preheader703thread-pre-split, label %.critedge

bb.bk:                                            ; preds = %bb.bh, %bb.bi, %bb.az, %bb.ay
  %.pn234.pn = phi { ptr, i32 } [ %i.hs, %bb.ay ], [ %i.ht, %bb.az ], [ %i.je, %bb.bi ], [ %i.jd, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.dj

.critedge:                                        ; preds = %._crit_edge819, %.preheader703thread-pre-split, %.thread658
  %.0164716 = phi i64 [ %.01648231303, %.thread658 ], [ %.1165.lcssa1065, %.preheader703thread-pre-split ], [ %.1165.lcssa, %._crit_edge819 ] ; 4 uses
  %.0161711 = phi i64 [ %.01618241302, %.thread658 ], [ %i.hu, %.preheader703thread-pre-split ], [ %i.hu, %._crit_edge819 ]
  %.6174 = phi i1 [ %i.hm, %.thread658 ], [ false, %.preheader703thread-pre-split ], [ false, %._crit_edge819 ]
  %i.jh = mul i64 %.0164716, %i.fg
  %i.ji = load i64, ptr %i.fx, align 8, !tbaa !537
  %i.jj = add i64 %i.ji, %i.jh
  store i64 %i.jj, ptr %i.fx, align 8, !tbaa !537
  %i.jk = icmp ne i64 %.0164716, 0
  %i.jl = and i1 %i.fy, %i.jk
  br i1 %i.jl, label %.lr.ph833, label %.preheader

.preheader:                                       ; preds = %._crit_edge828, %.critedge
  %.0607.lcssa = phi i64 [ %.0164716, %.critedge ], [ %.1, %._crit_edge828 ] ; 2 uses
  %.1184.lcssa = phi i32 [ %.0183, %.critedge ], [ %i.epp, %._crit_edge828 ] ; 2 uses
  %.not844 = icmp eq i64 %.0607.lcssa, 0
  br i1 %.not844, label %._crit_edge840, label %.lr.ph839

.lr.ph833:                                        ; preds = %.critedge, %._crit_edge828
  %.0157832 = phi i64 [ %i.jm, %._crit_edge828 ], [ 0, %.critedge ] ; 2 uses
  %.1184831 = phi i32 [ %i.epp, %._crit_edge828 ], [ %.0183, %.critedge ]
  %.0607830 = phi i64 [ %.1, %._crit_edge828 ], [ %.0164716, %.critedge ] ; 76 uses
  %i.jm = add nuw i64 %.0157832, 1                ; 5 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0449.0, i64 %i.jm
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !233
  %i.jp = mul i64 %.0157832, %i.eg                ; 20 uses
  %i.jq = mul i64 %i.jm, %i.eg
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.jq, i64 %i.fg) ; 3 uses
  %i.jr = sub i64 %.sroa.speculated, %i.jp        ; 12 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.jp ; 87 uses
  switch i64 %i.jr, label %bb.ca [
    i64 8, label %bb.bl
    i64 16, label %bb.bm
    i64 24, label %bb.bn
    i64 32, label %bb.bo
    i64 40, label %bb.bp
    i64 48, label %bb.bq
    i64 56, label %bb.br
    i64 64, label %bb.bs
    i64 72, label %bb.bt
    i64 80, label %bb.bu
    i64 88, label %bb.bv
    i64 96, label %bb.bw
    i64 104, label %bb.bx
    i64 112, label %bb.by
    i64 120, label %bb.bz
  ]

bb.bl:                                            ; preds = %.lr.ph833
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.jp ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !538)
  call void @llvm.experimental.noalias.scope.decl(metadata !541)
  call void @llvm.experimental.noalias.scope.decl(metadata !543)
  %.not82.i.i.i.i = icmp ult i64 %.0607830, 4
  br i1 %.not82.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.bl
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %.pre.i.i.i.i = load float, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !233, !alias.scope !538, !noalias !545
  %i.ju = load <2 x float>, ptr %i.jt, align 4, !tbaa !233, !alias.scope !538, !noalias !545 ; 2 uses
  %i.jv = shufflevector <2 x float> %i.ju, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %14 = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %15 = load float, ptr %14, align 4, !tbaa !233, !alias.scope !538, !noalias !545
  %16 = getelementptr inbounds nuw i8, ptr %i.jt, i64 12
  %17 = load float, ptr %16, align 4, !tbaa !233, !alias.scope !538, !noalias !545
  %18 = getelementptr inbounds nuw i8, ptr %i.jt, i64 20
  %19 = load float, ptr %18, align 4, !tbaa !233, !alias.scope !538, !noalias !545
  %20 = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %21 = load float, ptr %20, align 4, !tbaa !233, !alias.scope !538, !noalias !545
  %22 = getelementptr inbounds nuw i8, ptr %i.jt, i64 28
  %23 = load float, ptr %22, align 4, !tbaa !233, !alias.scope !538, !noalias !545
  %i.jw = shufflevector <2 x float> %i.ju, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %24 = insertelement <4 x float> poison, float %15, i64 0
  %25 = shufflevector <4 x float> %24, <4 x float> poison, <4 x i32> zeroinitializer
  %26 = insertelement <4 x float> poison, float %17, i64 0
  %27 = shufflevector <4 x float> %26, <4 x float> poison, <4 x i32> zeroinitializer
  %28 = insertelement <4 x float> poison, float %.pre.i.i.i.i, i64 0
  %i.jx = shufflevector <4 x float> %28, <4 x float> poison, <4 x i32> zeroinitializer
  %29 = insertelement <4 x float> poison, float %19, i64 0
  %30 = shufflevector <4 x float> %29, <4 x float> poison, <4 x i32> zeroinitializer
  %31 = insertelement <4 x float> poison, float %21, i64 0
  %32 = shufflevector <4 x float> %31, <4 x float> poison, <4 x i32> zeroinitializer
  %33 = insertelement <4 x float> poison, float %23, i64 0
  %34 = shufflevector <4 x float> %33, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i, %bb.bl
  %.075.lcssa.i.i.i.i = phi i64 [ 0, %bb.bl ], [ %i.kl, %.lr.ph.i.i.i.i ] ; 6 uses
  %i.jy = icmp ult i64 %.075.lcssa.i.i.i.i, %.0607830
  br i1 %i.jy, label %.lr.ph87.preheader.i.i.i.i, label %.lr.ph827

.lr.ph87.preheader.i.i.i.i:                       ; preds = %.preheader.i.i.i.i
  %i.jz = load <8 x float>, ptr %i.jt, align 4, !tbaa !233, !alias.scope !538, !noalias !545 ; 3 uses
  %.neg = or disjoint i64 %.075.lcssa.i.i.i.i, 1
  %xtraiter = and i64 %.0607830, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph87.i.i.i.i.prol.loopexit, label %.lr.ph87.i.i.i.i.prol

.lr.ph87.i.i.i.i.prol:                            ; preds = %.lr.ph87.preheader.i.i.i.i
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.075.lcssa.i.i.i.i
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !21, !noalias !546
  %i.kc = zext i32 %i.kb to i64
  %i.kd = mul nsw i64 %i.go, %i.kc
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.kd
  %i.kf = load <8 x float>, ptr %i.ke, align 4, !tbaa !233, !alias.scope !541, !noalias !547
  %i.kg = fmul fast <8 x float> %i.kf, %i.jz
  %i.kh = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.kg)
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.075.lcssa.i.i.i.i
  store float %i.kh, ptr %i.ki, align 4, !tbaa !233, !alias.scope !543, !noalias !548
  %i.kj = or disjoint i64 %.075.lcssa.i.i.i.i, 1
  br label %.lr.ph87.i.i.i.i.prol.loopexit

.lr.ph87.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph87.i.i.i.i.prol, %.lr.ph87.preheader.i.i.i.i
  %.186.i.i.i.i.unr = phi i64 [ %.075.lcssa.i.i.i.i, %.lr.ph87.preheader.i.i.i.i ], [ %i.kj, %.lr.ph87.i.i.i.i.prol ]
  %i.kk = icmp eq i64 %.0607830, %.neg
  br i1 %i.kk, label %.lr.ph827, label %.lr.ph87.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %i.kl = phi i64 [ %i.nj, %.lr.ph.i.i.i.i ], [ 4, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.07583.i.i.i.i = phi i64 [ %i.kl, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i.i ] ; 5 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !21, !noalias !546
  %i.ko = zext i32 %i.kn to i64
  %i.kp = mul nsw i64 %i.go, %i.ko
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.kp ; 2 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !21, !noalias !546
  %i.ku = zext i32 %i.kt to i64
  %i.kv = mul nsw i64 %i.go, %i.ku
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.kv ; 2 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !21, !noalias !546
  %i.la = zext i32 %i.kz to i64
  %i.lb = mul nsw i64 %i.go, %i.la
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.lb ; 2 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 12
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !21, !noalias !546
  %i.lg = zext i32 %i.lf to i64
  %i.lh = mul nsw i64 %i.go, %i.lg
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.lh ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %i.lm = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.07583.i.i.i.i
  %i.lo = load <4 x float>, ptr %i.kq, align 4, !tbaa !233, !alias.scope !541, !noalias !547 ; 4 uses
  %i.lp = load <4 x float>, ptr %i.kw, align 4, !tbaa !233, !alias.scope !541, !noalias !547 ; 4 uses
  %i.lq = load <4 x float>, ptr %i.lc, align 4, !tbaa !233, !alias.scope !541, !noalias !547 ; 4 uses
  %i.lr = load <4 x float>, ptr %i.li, align 4, !tbaa !233, !alias.scope !541, !noalias !547 ; 4 uses
  %i.ls = shufflevector <4 x float> %i.lo, <4 x float> %i.lp, <4 x i32> <i32 1, i32 4, i32 poison, i32 poison>
  %i.lt = shufflevector <4 x float> %i.ls, <4 x float> %i.lq, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.lu = shufflevector <4 x float> %i.lt, <4 x float> %i.lr, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.lv = fmul fast <4 x float> %i.lu, %i.jw
  %i.lw = shufflevector <4 x float> %i.lo, <4 x float> %i.lp, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.lx = shufflevector <4 x float> %i.lw, <4 x float> %i.lq, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ly = shufflevector <4 x float> %i.lx, <4 x float> %i.lr, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.lz = fmul fast <4 x float> %i.ly, %i.jv
  %i.ma = fadd fast <4 x float> %i.lz, %i.lv
  %i.mb = shufflevector <4 x float> %i.lo, <4 x float> %i.lp, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.mc = shufflevector <4 x float> %i.mb, <4 x float> %i.lq, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.md = shufflevector <4 x float> %i.mc, <4 x float> %i.lr, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.me = fmul fast <4 x float> %i.md, %25
  %i.mf = fadd fast <4 x float> %i.ma, %i.me
  %i.mg = shufflevector <4 x float> %i.lo, <4 x float> %i.lp, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.mh = shufflevector <4 x float> %i.mg, <4 x float> %i.lq, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.mi = shufflevector <4 x float> %i.mh, <4 x float> %i.lr, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.mj = fmul fast <4 x float> %i.mi, %27
  %i.mk = fadd fast <4 x float> %i.mf, %i.mj
  %i.ml = load <4 x float>, ptr %i.lj, align 4, !tbaa !233, !alias.scope !541, !noalias !547 ; 4 uses
  %i.mm = load <4 x float>, ptr %i.lk, align 4, !tbaa !233, !alias.scope !541, !noalias !547 ; 4 uses
  %i.mn = load <4 x float>, ptr %i.ll, align 4, !tbaa !233, !alias.scope !541, !noalias !547 ; 4 uses
  %i.mo = load <4 x float>, ptr %i.lm, align 4, !tbaa !233, !alias.scope !541, !noalias !547 ; 4 uses
  %i.mp = shufflevector <4 x float> %i.ml, <4 x float> %i.mm, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.mq = shufflevector <4 x float> %i.mp, <4 x float> %i.mn, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.mr = shufflevector <4 x float> %i.mq, <4 x float> %i.mo, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ms = fmul fast <4 x float> %i.mr, %i.jx
  %i.mt = fadd fast <4 x float> %i.mk, %i.ms
  %i.mu = shufflevector <4 x float> %i.ml, <4 x float> %i.mm, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.mv = shufflevector <4 x float> %i.mu, <4 x float> %i.mn, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.mw = shufflevector <4 x float> %i.mv, <4 x float> %i.mo, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.mx = fmul fast <4 x float> %i.mw, %30
  %i.my = fadd fast <4 x float> %i.mt, %i.mx
  %i.mz = shufflevector <4 x float> %i.ml, <4 x float> %i.mm, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.na = shufflevector <4 x float> %i.mz, <4 x float> %i.mn, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.nb = shufflevector <4 x float> %i.na, <4 x float> %i.mo, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.nc = fmul fast <4 x float> %i.nb, %32
  %i.nd = fadd fast <4 x float> %i.my, %i.nc
  %i.ne = shufflevector <4 x float> %i.ml, <4 x float> %i.mm, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.nf = shufflevector <4 x float> %i.ne, <4 x float> %i.mn, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.ng = shufflevector <4 x float> %i.nf, <4 x float> %i.mo, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.nh = fmul fast <4 x float> %i.ng, %34
  %i.ni = fadd fast <4 x float> %i.nd, %i.nh
  store <4 x float> %i.ni, ptr %i.ln, align 4, !tbaa !233, !alias.scope !543, !noalias !548
  %i.nj = add i64 %i.kl, 4                        ; 2 uses
  %.not.i.i.i.i289 = icmp ugt i64 %i.nj, %.0607830
  br i1 %.not.i.i.i.i289, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !549

.lr.ph87.i.i.i.i:                                 ; preds = %.lr.ph87.i.i.i.i.prol.loopexit, %.lr.ph87.i.i.i.i
  %.186.i.i.i.i = phi i64 [ %i.od, %.lr.ph87.i.i.i.i ], [ %.186.i.i.i.i.unr, %.lr.ph87.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.186.i.i.i.i
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !21, !noalias !546
  %i.nm = zext i32 %i.nl to i64
  %i.nn = mul nsw i64 %i.go, %i.nm
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.nn
  %i.np = load <8 x float>, ptr %i.no, align 4, !tbaa !233, !alias.scope !541, !noalias !547
  %i.nq = fmul fast <8 x float> %i.np, %i.jz
  %i.nr = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.nq)
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.186.i.i.i.i
  store float %i.nr, ptr %i.ns, align 4, !tbaa !233, !alias.scope !543, !noalias !548
  %i.nt = add nuw i64 %.186.i.i.i.i, 1            ; 2 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %i.nt
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !21, !noalias !546
  %i.nw = zext i32 %i.nv to i64
  %i.nx = mul nsw i64 %i.go, %i.nw
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.nx
  %i.nz = load <8 x float>, ptr %i.ny, align 4, !tbaa !233, !alias.scope !541, !noalias !547
  %i.oa = fmul fast <8 x float> %i.nz, %i.jz
  %i.ob = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.oa)
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %i.nt
  store float %i.ob, ptr %i.oc, align 4, !tbaa !233, !alias.scope !543, !noalias !548
  %i.od = add nuw i64 %.186.i.i.i.i, 2            ; 2 uses
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %i.od, %.0607830
  br i1 %exitcond.not.i.i.i.i.1, label %.lr.ph827, label %.lr.ph87.i.i.i.i, !llvm.loop !550

bb.bm:                                            ; preds = %.lr.ph833
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.jp ; 16 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !551)
  call void @llvm.experimental.noalias.scope.decl(metadata !554)
  call void @llvm.experimental.noalias.scope.decl(metadata !556)
  %.not82.i.i.i.i.i = icmp ult i64 %.0607830, 4
  br i1 %.not82.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.bm
  %35 = load <2 x float>, ptr %i.oe, align 4, !tbaa !233, !alias.scope !551, !noalias !558 ; 2 uses
  %36 = shufflevector <2 x float> %35, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  %37 = load float, ptr %i.of, align 4, !tbaa !233, !alias.scope !551, !noalias !558
  %38 = getelementptr inbounds nuw i8, ptr %i.oe, i64 12
  %39 = load float, ptr %38, align 4, !tbaa !233, !alias.scope !551, !noalias !558
  %40 = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  %41 = load float, ptr %40, align 4, !tbaa !233, !alias.scope !551, !noalias !558
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 20
  %i.oh = load float, ptr %i.og, align 4, !tbaa !233, !alias.scope !551, !noalias !558
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oe, i64 24
  %42 = load float, ptr %i.oi, align 4, !tbaa !233, !alias.scope !551, !noalias !558
  %43 = getelementptr inbounds nuw i8, ptr %i.oe, i64 28
  %44 = load float, ptr %43, align 4, !tbaa !233, !alias.scope !551, !noalias !558
  %45 = getelementptr inbounds nuw i8, ptr %i.oe, i64 32
  %46 = load float, ptr %45, align 4, !tbaa !233, !alias.scope !551, !noalias !558
  %47 = getelementptr inbounds nuw i8, ptr %i.oe, i64 36
  %48 = load float, ptr %47, align 4, !tbaa !233, !alias.scope !551, !noalias !558
  %49 = getelementptr inbounds nuw i8, ptr %i.oe, i64 40
  %50 = load float, ptr %49, align 4, !tbaa !233, !alias.scope !551, !noalias !558
  %51 = getelementptr inbounds nuw i8, ptr %i.oe, i64 44
  %52 = load float, ptr %51, align 4, !tbaa !233, !alias.scope !551, !noalias !558
  %53 = getelementptr inbounds nuw i8, ptr %i.oe, i64 48
  %54 = load float, ptr %53, align 4, !tbaa !233, !alias.scope !551, !noalias !558
  %55 = getelementptr inbounds nuw i8, ptr %i.oe, i64 52
  %56 = load float, ptr %55, align 4, !tbaa !233, !alias.scope !551, !noalias !558
  %57 = getelementptr inbounds nuw i8, ptr %i.oe, i64 56
  %58 = load float, ptr %57, align 4, !tbaa !233, !alias.scope !551, !noalias !558
  %59 = getelementptr inbounds nuw i8, ptr %i.oe, i64 60
  %60 = load float, ptr %59, align 4, !tbaa !233, !alias.scope !551, !noalias !558
  %61 = insertelement <4 x float> poison, float %42, i64 0
  %62 = shufflevector <4 x float> %61, <4 x float> poison, <4 x i32> zeroinitializer
  %63 = insertelement <4 x float> poison, float %44, i64 0
  %64 = shufflevector <4 x float> %63, <4 x float> poison, <4 x i32> zeroinitializer
  %65 = insertelement <4 x float> poison, float %46, i64 0
  %66 = shufflevector <4 x float> %65, <4 x float> poison, <4 x i32> zeroinitializer
  %67 = insertelement <4 x float> poison, float %48, i64 0
  %68 = shufflevector <4 x float> %67, <4 x float> poison, <4 x i32> zeroinitializer
  %69 = insertelement <4 x float> poison, float %50, i64 0
  %i.oj = shufflevector <4 x float> %69, <4 x float> poison, <4 x i32> zeroinitializer
  %70 = insertelement <4 x float> poison, float %52, i64 0
  %71 = shufflevector <4 x float> %70, <4 x float> poison, <4 x i32> zeroinitializer
  %72 = insertelement <4 x float> poison, float %54, i64 0
  %73 = shufflevector <4 x float> %72, <4 x float> poison, <4 x i32> zeroinitializer
  %74 = insertelement <4 x float> poison, float %56, i64 0
  %75 = shufflevector <4 x float> %74, <4 x float> poison, <4 x i32> zeroinitializer
  %76 = insertelement <4 x float> poison, float %58, i64 0
  %77 = shufflevector <4 x float> %76, <4 x float> poison, <4 x i32> zeroinitializer
  %78 = insertelement <4 x float> poison, float %60, i64 0
  %79 = shufflevector <4 x float> %78, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ok = insertelement <4 x float> poison, float %i.oh, i64 0
  %i.ol = shufflevector <4 x float> %i.ok, <4 x float> poison, <4 x i32> zeroinitializer
  %i.om = shufflevector <2 x float> %35, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %80 = insertelement <4 x float> poison, float %37, i64 0
  %81 = shufflevector <4 x float> %80, <4 x float> poison, <4 x i32> zeroinitializer
  %82 = insertelement <4 x float> poison, float %39, i64 0
  %i.on = shufflevector <4 x float> %82, <4 x float> poison, <4 x i32> zeroinitializer
  %83 = insertelement <4 x float> poison, float %41, i64 0
  %84 = shufflevector <4 x float> %83, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i, %bb.bm
  %.075.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.bm ], [ %i.oq, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.oo = icmp ult i64 %.075.lcssa.i.i.i.i.i, %.0607830
  br i1 %i.oo, label %.lr.ph87.preheader.i.i.i.i.i, label %.lr.ph827

.lr.ph87.preheader.i.i.i.i.i:                     ; preds = %.preheader.i.i.i.i.i
  %i.op = load <16 x float>, ptr %i.oe, align 4, !tbaa !233, !alias.scope !551, !noalias !558
  br label %.lr.ph87.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %i.oq = phi i64 [ %i.um, %.lr.ph.i.i.i.i.i ], [ 4, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.07583.i.i.i.i.i = phi i64 [ %i.oq, %.lr.ph.i.i.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i.i.i ] ; 5 uses
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i.i
  %i.os = load i32, ptr %i.or, align 4, !tbaa !21, !noalias !559
  %i.ot = zext i32 %i.os to i64
  %i.ou = mul nsw i64 %i.gn, %i.ot
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.ou ; 6 uses
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i.i
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 4
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !21, !noalias !559
  %i.oz = zext i32 %i.oy to i64
  %i.pa = mul nsw i64 %i.gn, %i.oz
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.pa ; 6 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i.i
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !21, !noalias !559
  %i.pf = zext i32 %i.pe to i64
  %i.pg = mul nsw i64 %i.gn, %i.pf
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.pg ; 6 uses
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i.i
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 12
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !21, !noalias !559
  %i.pl = zext i32 %i.pk to i64
  %i.pm = mul nsw i64 %i.gn, %i.pl
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.pm ; 6 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  %i.pp = load float, ptr %i.po, align 4, !tbaa !233, !alias.scope !554, !noalias !560
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pb, i64 16
  %i.pr = load float, ptr %i.pq, align 4, !tbaa !233, !alias.scope !554, !noalias !560
  %i.ps = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  %i.pt = load float, ptr %i.ps, align 4, !tbaa !233, !alias.scope !554, !noalias !560
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !233, !alias.scope !554, !noalias !560
  %i.pw = load <4 x float>, ptr %i.ov, align 4, !tbaa !233, !alias.scope !554, !noalias !560 ; 4 uses
  %i.px = load <4 x float>, ptr %i.pb, align 4, !tbaa !233, !alias.scope !554, !noalias !560 ; 4 uses
  %i.py = load <4 x float>, ptr %i.ph, align 4, !tbaa !233, !alias.scope !554, !noalias !560 ; 4 uses
  %i.pz = load <4 x float>, ptr %i.pn, align 4, !tbaa !233, !alias.scope !554, !noalias !560 ; 4 uses
  %i.qa = shufflevector <4 x float> %i.pw, <4 x float> %i.px, <4 x i32> <i32 1, i32 4, i32 poison, i32 poison>
  %i.qb = shufflevector <4 x float> %i.qa, <4 x float> %i.py, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.qc = shufflevector <4 x float> %i.qb, <4 x float> %i.pz, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.qd = fmul fast <4 x float> %i.qc, %i.om
  %i.qe = shufflevector <4 x float> %i.pw, <4 x float> %i.px, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.qf = shufflevector <4 x float> %i.qe, <4 x float> %i.py, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.qg = shufflevector <4 x float> %i.qf, <4 x float> %i.pz, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.qh = fmul fast <4 x float> %i.qg, %36
  %i.qi = fadd fast <4 x float> %i.qh, %i.qd
  %i.qj = shufflevector <4 x float> %i.pw, <4 x float> %i.px, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.qk = shufflevector <4 x float> %i.qj, <4 x float> %i.py, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.ql = shufflevector <4 x float> %i.qk, <4 x float> %i.pz, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.qm = fmul fast <4 x float> %i.ql, %81
  %i.qn = fadd fast <4 x float> %i.qi, %i.qm
  %i.qo = shufflevector <4 x float> %i.pw, <4 x float> %i.px, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.qp = shufflevector <4 x float> %i.qo, <4 x float> %i.py, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.qq = shufflevector <4 x float> %i.qp, <4 x float> %i.pz, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.qr = fmul fast <4 x float> %i.qq, %i.on
  %i.qs = fadd fast <4 x float> %i.qn, %i.qr
  %i.qt = insertelement <4 x float> poison, float %i.pp, i64 0
  %i.qu = insertelement <4 x float> %i.qt, float %i.pr, i64 1
  %i.qv = insertelement <4 x float> %i.qu, float %i.pt, i64 2
  %i.qw = insertelement <4 x float> %i.qv, float %i.pv, i64 3
  %i.qx = fmul fast <4 x float> %i.qw, %84
  %i.qy = fadd fast <4 x float> %i.qs, %i.qx
  %i.qz = getelementptr inbounds nuw i8, ptr %i.ov, i64 20
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !233, !alias.scope !554, !noalias !560
  %i.rb = getelementptr inbounds nuw i8, ptr %i.pb, i64 20
  %i.rc = load float, ptr %i.rb, align 4, !tbaa !233, !alias.scope !554, !noalias !560
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ph, i64 20
  %i.re = load float, ptr %i.rd, align 4, !tbaa !233, !alias.scope !554, !noalias !560
  %i.rf = getelementptr inbounds nuw i8, ptr %i.pn, i64 20
  %i.rg = load float, ptr %i.rf, align 4, !tbaa !233, !alias.scope !554, !noalias !560
  %i.rh = insertelement <4 x float> poison, float %i.ra, i64 0
  %i.ri = insertelement <4 x float> %i.rh, float %i.rc, i64 1
  %i.rj = insertelement <4 x float> %i.ri, float %i.re, i64 2
  %i.rk = insertelement <4 x float> %i.rj, float %i.rg, i64 3
  %i.rl = fmul fast <4 x float> %i.rk, %i.ol
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ov, i64 24
  %i.rn = getelementptr inbounds nuw i8, ptr %i.pb, i64 24
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  %i.rp = getelementptr inbounds nuw i8, ptr %i.pn, i64 24
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ov, i64 40
  %i.rr = getelementptr inbounds nuw i8, ptr %i.pb, i64 40
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ph, i64 40
  %i.rt = getelementptr inbounds nuw i8, ptr %i.pn, i64 40
  %i.ru = getelementptr inbounds nuw i8, ptr %i.ov, i64 56
  %i.rv = getelementptr inbounds nuw i8, ptr %i.pb, i64 56
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ph, i64 56
  %i.rx = getelementptr inbounds nuw i8, ptr %i.pn, i64 56
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.07583.i.i.i.i.i
  %i.rz = fadd fast <4 x float> %i.qy, %i.rl
  %i.sa = load <4 x float>, ptr %i.rm, align 4, !tbaa !233, !alias.scope !554, !noalias !560 ; 4 uses
  %i.sb = load <4 x float>, ptr %i.rn, align 4, !tbaa !233, !alias.scope !554, !noalias !560 ; 4 uses
  %i.sc = load <4 x float>, ptr %i.ro, align 4, !tbaa !233, !alias.scope !554, !noalias !560 ; 4 uses
  %i.sd = load <4 x float>, ptr %i.rp, align 4, !tbaa !233, !alias.scope !554, !noalias !560 ; 4 uses
  %i.se = shufflevector <4 x float> %i.sa, <4 x float> %i.sb, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.sf = shufflevector <4 x float> %i.se, <4 x float> %i.sc, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.sg = shufflevector <4 x float> %i.sf, <4 x float> %i.sd, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.sh = fmul fast <4 x float> %i.sg, %62
  %i.si = fadd fast <4 x float> %i.rz, %i.sh
  %i.sj = shufflevector <4 x float> %i.sa, <4 x float> %i.sb, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.sk = shufflevector <4 x float> %i.sj, <4 x float> %i.sc, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.sl = shufflevector <4 x float> %i.sk, <4 x float> %i.sd, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.sm = fmul fast <4 x float> %i.sl, %64
  %i.sn = fadd fast <4 x float> %i.si, %i.sm
  %i.so = shufflevector <4 x float> %i.sa, <4 x float> %i.sb, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.sp = shufflevector <4 x float> %i.so, <4 x float> %i.sc, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.sq = shufflevector <4 x float> %i.sp, <4 x float> %i.sd, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.sr = fmul fast <4 x float> %i.sq, %66
  %i.ss = fadd fast <4 x float> %i.sn, %i.sr
  %i.st = shufflevector <4 x float> %i.sa, <4 x float> %i.sb, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.su = shufflevector <4 x float> %i.st, <4 x float> %i.sc, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.sv = shufflevector <4 x float> %i.su, <4 x float> %i.sd, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.sw = fmul fast <4 x float> %i.sv, %68
  %i.sx = fadd fast <4 x float> %i.ss, %i.sw
  %i.sy = load <4 x float>, ptr %i.rq, align 4, !tbaa !233, !alias.scope !554, !noalias !560 ; 4 uses
  %i.sz = load <4 x float>, ptr %i.rr, align 4, !tbaa !233, !alias.scope !554, !noalias !560 ; 4 uses
  %i.ta = load <4 x float>, ptr %i.rs, align 4, !tbaa !233, !alias.scope !554, !noalias !560 ; 4 uses
  %i.tb = load <4 x float>, ptr %i.rt, align 4, !tbaa !233, !alias.scope !554, !noalias !560 ; 4 uses
  %i.tc = shufflevector <4 x float> %i.sy, <4 x float> %i.sz, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.td = shufflevector <4 x float> %i.tc, <4 x float> %i.ta, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.te = shufflevector <4 x float> %i.td, <4 x float> %i.tb, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.tf = fmul fast <4 x float> %i.te, %i.oj
  %i.tg = fadd fast <4 x float> %i.sx, %i.tf
  %i.th = shufflevector <4 x float> %i.sy, <4 x float> %i.sz, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.ti = shufflevector <4 x float> %i.th, <4 x float> %i.ta, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.tj = shufflevector <4 x float> %i.ti, <4 x float> %i.tb, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.tk = fmul fast <4 x float> %i.tj, %71
  %i.tl = fadd fast <4 x float> %i.tg, %i.tk
  %i.tm = shufflevector <4 x float> %i.sy, <4 x float> %i.sz, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.tn = shufflevector <4 x float> %i.tm, <4 x float> %i.ta, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.to = shufflevector <4 x float> %i.tn, <4 x float> %i.tb, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.tp = fmul fast <4 x float> %i.to, %73
  %i.tq = fadd fast <4 x float> %i.tl, %i.tp
  %i.tr = shufflevector <4 x float> %i.sy, <4 x float> %i.sz, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.ts = shufflevector <4 x float> %i.tr, <4 x float> %i.ta, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.tt = shufflevector <4 x float> %i.ts, <4 x float> %i.tb, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.tu = fmul fast <4 x float> %i.tt, %75
  %i.tv = fadd fast <4 x float> %i.tq, %i.tu
  %i.tw = load <2 x float>, ptr %i.ru, align 4, !tbaa !233, !alias.scope !554, !noalias !560 ; 2 uses
  %i.tx = load <2 x float>, ptr %i.rv, align 4, !tbaa !233, !alias.scope !554, !noalias !560 ; 2 uses
  %i.ty = load <2 x float>, ptr %i.rw, align 4, !tbaa !233, !alias.scope !554, !noalias !560
  %i.tz = load <2 x float>, ptr %i.rx, align 4, !tbaa !233, !alias.scope !554, !noalias !560
  %i.ua = shufflevector <2 x float> %i.tw, <2 x float> %i.tx, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ub = shufflevector <2 x float> %i.ty, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.uc = shufflevector <4 x float> %i.ua, <4 x float> %i.ub, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ud = shufflevector <2 x float> %i.tz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ue = shufflevector <4 x float> %i.uc, <4 x float> %i.ud, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.uf = fmul fast <4 x float> %i.ue, %77
  %i.ug = fadd fast <4 x float> %i.tv, %i.uf
  %i.uh = shufflevector <2 x float> %i.tw, <2 x float> %i.tx, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.ui = shufflevector <4 x float> %i.uh, <4 x float> %i.ub, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.uj = shufflevector <4 x float> %i.ui, <4 x float> %i.ud, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.uk = fmul fast <4 x float> %i.uj, %79
  %i.ul = fadd fast <4 x float> %i.ug, %i.uk
  store <4 x float> %i.ul, ptr %i.ry, align 4, !tbaa !233, !alias.scope !556, !noalias !561
  %i.um = add i64 %i.oq, 4                        ; 2 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.um, %.0607830
  br i1 %.not.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !562

.lr.ph87.i.i.i.i.i:                               ; preds = %.lr.ph87.i.i.i.i.i, %.lr.ph87.preheader.i.i.i.i.i
  %.186.i.i.i.i.i = phi i64 [ %i.uw, %.lr.ph87.i.i.i.i.i ], [ %.075.lcssa.i.i.i.i.i, %.lr.ph87.preheader.i.i.i.i.i ] ; 3 uses
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.186.i.i.i.i.i
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !21, !noalias !559
  %i.up = zext i32 %i.uo to i64
  %i.uq = mul nsw i64 %i.gn, %i.up
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.uq
  %i.us = load <16 x float>, ptr %i.ur, align 4, !tbaa !233, !alias.scope !554, !noalias !560
  %i.ut = fmul fast <16 x float> %i.us, %i.op
  %i.uu = call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %i.ut)
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.186.i.i.i.i.i
  store float %i.uu, ptr %i.uv, align 4, !tbaa !233, !alias.scope !556, !noalias !561
  %i.uw = add nuw i64 %.186.i.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.uw, %.0607830
  br i1 %exitcond.not.i.i.i.i.i, label %.lr.ph827, label %.lr.ph87.i.i.i.i.i, !llvm.loop !563

bb.bn:                                            ; preds = %.lr.ph833
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.jp ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !564)
  call void @llvm.experimental.noalias.scope.decl(metadata !567)
  call void @llvm.experimental.noalias.scope.decl(metadata !569)
  %.not82.i.i.i.i.i.i = icmp ult i64 %.0607830, 4
  br i1 %.not82.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.bn
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 16
  %wide.load1395 = load <4 x float>, ptr %i.ux, align 4, !tbaa !233, !alias.scope !564, !noalias !571 ; 4 uses
  %wide.load1396 = load <4 x float>, ptr %i.uy, align 4, !tbaa !233, !alias.scope !564, !noalias !571 ; 4 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ux, i64 32
  %i.va = getelementptr inbounds nuw i8, ptr %i.ux, i64 48
  %wide.load1395.1 = load <4 x float>, ptr %i.uz, align 4, !tbaa !233, !alias.scope !564, !noalias !571 ; 4 uses
  %wide.load1396.1 = load <4 x float>, ptr %i.va, align 4, !tbaa !233, !alias.scope !564, !noalias !571 ; 4 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ux, i64 64
  %i.vc = getelementptr inbounds nuw i8, ptr %i.ux, i64 80
  %wide.load1395.2 = load <4 x float>, ptr %i.vb, align 4, !tbaa !233, !alias.scope !564, !noalias !571 ; 4 uses
  %wide.load1396.2 = load <4 x float>, ptr %i.vc, align 4, !tbaa !233, !alias.scope !564, !noalias !571 ; 4 uses
  br label %.lr.ph.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i, %bb.bn
  %.075.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.bn ], [ %i.vf, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.vd = icmp ult i64 %.075.lcssa.i.i.i.i.i.i, %.0607830
  br i1 %i.vd, label %.lr.ph87.preheader.i.i.i.i.i.i, label %.lr.ph827

.lr.ph87.preheader.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i
  %i.ve = load <24 x float>, ptr %i.ux, align 4, !tbaa !233, !alias.scope !564, !noalias !571
  br label %.lr.ph87.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %i.vf = phi i64 [ %i.yt, %.lr.ph.i.i.i.i.i.i ], [ 4, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %.07583.i.i.i.i.i.i = phi i64 [ %i.vf, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ] ; 5 uses
  %i.vg = or disjoint i64 %.07583.i.i.i.i.i.i, 3  ; 2 uses
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %i.vg
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !21, !noalias !572
  %i.vj = zext i32 %i.vi to i64
  %i.vk = mul nsw i64 %i.gm, %i.vj
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.vk ; 6 uses
  %i.vm = or disjoint i64 %.07583.i.i.i.i.i.i, 2  ; 2 uses
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %i.vm
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !21, !noalias !572
  %i.vp = zext i32 %i.vo to i64
  %i.vq = mul nsw i64 %i.gm, %i.vp
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.vq ; 6 uses
  %i.vs = or disjoint i64 %.07583.i.i.i.i.i.i, 1  ; 2 uses
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %i.vs
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !21, !noalias !572
  %i.vv = zext i32 %i.vu to i64
  %i.vw = mul nsw i64 %i.gm, %i.vv
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.vw ; 6 uses
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i.i.i
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !21, !noalias !572
  %i.wa = zext i32 %i.vz to i64
  %i.wb = mul nsw i64 %i.gm, %i.wa
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.wb ; 6 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 16
  %wide.load1397 = load <4 x float>, ptr %i.wc, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %wide.load1398 = load <4 x float>, ptr %i.wd, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %i.we = fmul fast <4 x float> %wide.load1397, %wide.load1395
  %i.wf = fmul fast <4 x float> %wide.load1398, %wide.load1396
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vx, i64 16
  %wide.load1399 = load <4 x float>, ptr %i.vx, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %wide.load1400 = load <4 x float>, ptr %i.wg, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %i.wh = fmul fast <4 x float> %wide.load1399, %wide.load1395
  %i.wi = fmul fast <4 x float> %wide.load1400, %wide.load1396
  %i.wj = getelementptr inbounds nuw i8, ptr %i.vr, i64 16
  %wide.load1401 = load <4 x float>, ptr %i.vr, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %wide.load1402 = load <4 x float>, ptr %i.wj, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %i.wk = fmul fast <4 x float> %wide.load1401, %wide.load1395
  %i.wl = fmul fast <4 x float> %wide.load1402, %wide.load1396
  %i.wm = getelementptr inbounds nuw i8, ptr %i.vl, i64 16
  %wide.load1403 = load <4 x float>, ptr %i.vl, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %wide.load1404 = load <4 x float>, ptr %i.wm, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %i.wn = fmul fast <4 x float> %wide.load1403, %wide.load1395
  %i.wo = fmul fast <4 x float> %wide.load1404, %wide.load1396
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wc, i64 32
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wc, i64 48
  %wide.load1397.1 = load <4 x float>, ptr %i.wp, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %wide.load1398.1 = load <4 x float>, ptr %i.wq, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %i.wr = fmul fast <4 x float> %wide.load1397.1, %wide.load1395.1
  %i.ws = fmul fast <4 x float> %wide.load1398.1, %wide.load1396.1
  %i.wt = fadd fast <4 x float> %i.wr, %i.we
  %i.wu = fadd fast <4 x float> %i.ws, %i.wf
  %i.wv = getelementptr inbounds nuw i8, ptr %i.vx, i64 32
  %i.ww = getelementptr inbounds nuw i8, ptr %i.vx, i64 48
  %wide.load1399.1 = load <4 x float>, ptr %i.wv, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %wide.load1400.1 = load <4 x float>, ptr %i.ww, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %i.wx = fmul fast <4 x float> %wide.load1399.1, %wide.load1395.1
  %i.wy = fmul fast <4 x float> %wide.load1400.1, %wide.load1396.1
  %i.wz = fadd fast <4 x float> %i.wx, %i.wh
  %i.xa = fadd fast <4 x float> %i.wy, %i.wi
  %i.xb = getelementptr inbounds nuw i8, ptr %i.vr, i64 32
  %i.xc = getelementptr inbounds nuw i8, ptr %i.vr, i64 48
  %wide.load1401.1 = load <4 x float>, ptr %i.xb, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %wide.load1402.1 = load <4 x float>, ptr %i.xc, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %i.xd = fmul fast <4 x float> %wide.load1401.1, %wide.load1395.1
  %i.xe = fmul fast <4 x float> %wide.load1402.1, %wide.load1396.1
  %i.xf = fadd fast <4 x float> %i.xd, %i.wk
  %i.xg = fadd fast <4 x float> %i.xe, %i.wl
  %i.xh = getelementptr inbounds nuw i8, ptr %i.vl, i64 32
  %i.xi = getelementptr inbounds nuw i8, ptr %i.vl, i64 48
  %wide.load1403.1 = load <4 x float>, ptr %i.xh, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %wide.load1404.1 = load <4 x float>, ptr %i.xi, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %i.xj = fmul fast <4 x float> %wide.load1403.1, %wide.load1395.1
  %i.xk = fmul fast <4 x float> %wide.load1404.1, %wide.load1396.1
  %i.xl = fadd fast <4 x float> %i.xj, %i.wn
  %i.xm = fadd fast <4 x float> %i.xk, %i.wo
  %i.xn = getelementptr inbounds nuw i8, ptr %i.wc, i64 64
  %i.xo = getelementptr inbounds nuw i8, ptr %i.wc, i64 80
  %wide.load1397.2 = load <4 x float>, ptr %i.xn, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %wide.load1398.2 = load <4 x float>, ptr %i.xo, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %i.xp = fmul fast <4 x float> %wide.load1397.2, %wide.load1395.2
  %i.xq = fmul fast <4 x float> %wide.load1398.2, %wide.load1396.2
  %i.xr = fadd fast <4 x float> %i.xp, %i.wt
  %i.xs = fadd fast <4 x float> %i.xq, %i.wu
  %i.xt = getelementptr inbounds nuw i8, ptr %i.vx, i64 64
  %i.xu = getelementptr inbounds nuw i8, ptr %i.vx, i64 80
  %wide.load1399.2 = load <4 x float>, ptr %i.xt, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %wide.load1400.2 = load <4 x float>, ptr %i.xu, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %i.xv = fmul fast <4 x float> %wide.load1399.2, %wide.load1395.2
  %i.xw = fmul fast <4 x float> %wide.load1400.2, %wide.load1396.2
  %i.xx = fadd fast <4 x float> %i.xv, %i.wz
  %i.xy = fadd fast <4 x float> %i.xw, %i.xa
  %i.xz = getelementptr inbounds nuw i8, ptr %i.vr, i64 64
  %i.ya = getelementptr inbounds nuw i8, ptr %i.vr, i64 80
  %wide.load1401.2 = load <4 x float>, ptr %i.xz, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %wide.load1402.2 = load <4 x float>, ptr %i.ya, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %i.yb = fmul fast <4 x float> %wide.load1401.2, %wide.load1395.2
  %i.yc = fmul fast <4 x float> %wide.load1402.2, %wide.load1396.2
  %i.yd = fadd fast <4 x float> %i.yb, %i.xf
  %i.ye = fadd fast <4 x float> %i.yc, %i.xg
  %i.yf = getelementptr inbounds nuw i8, ptr %i.vl, i64 64
  %i.yg = getelementptr inbounds nuw i8, ptr %i.vl, i64 80
  %wide.load1403.2 = load <4 x float>, ptr %i.yf, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %wide.load1404.2 = load <4 x float>, ptr %i.yg, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %i.yh = fmul fast <4 x float> %wide.load1403.2, %wide.load1395.2
  %i.yi = fmul fast <4 x float> %wide.load1404.2, %wide.load1396.2
  %i.yj = fadd fast <4 x float> %i.yh, %i.xl
  %i.yk = fadd fast <4 x float> %i.yi, %i.xm
  %bin.rdx1410 = fadd fast <4 x float> %i.xs, %i.xr
  %i.yl = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx1410)
  %bin.rdx1409 = fadd fast <4 x float> %i.xy, %i.xx
  %i.ym = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx1409)
  %bin.rdx1408 = fadd fast <4 x float> %i.ye, %i.yd
  %i.yn = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx1408)
  %bin.rdx1407 = fadd fast <4 x float> %i.yk, %i.yj
  %i.yo = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx1407)
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.07583.i.i.i.i.i.i
  store float %i.yl, ptr %i.yp, align 4, !tbaa !233, !alias.scope !569, !noalias !574
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %i.vs
  store float %i.ym, ptr %i.yq, align 4, !tbaa !233, !alias.scope !569, !noalias !574
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %i.vm
  store float %i.yn, ptr %i.yr, align 4, !tbaa !233, !alias.scope !569, !noalias !574
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %i.vg
  store float %i.yo, ptr %i.ys, align 4, !tbaa !233, !alias.scope !569, !noalias !574
  %i.yt = add i64 %i.vf, 4                        ; 2 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.yt, %.0607830
  br i1 %.not.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !575

.lr.ph87.i.i.i.i.i.i:                             ; preds = %.lr.ph87.i.i.i.i.i.i, %.lr.ph87.preheader.i.i.i.i.i.i
  %.186.i.i.i.i.i.i = phi i64 [ %i.zd, %.lr.ph87.i.i.i.i.i.i ], [ %.075.lcssa.i.i.i.i.i.i, %.lr.ph87.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.186.i.i.i.i.i.i
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !21, !noalias !572
  %i.yw = zext i32 %i.yv to i64
  %i.yx = mul nsw i64 %i.gm, %i.yw
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.yx
  %i.yz = load <24 x float>, ptr %i.yy, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %i.za = fmul fast <24 x float> %i.yz, %i.ve
  %i.zb = call fast float @llvm.vector.reduce.fadd.v24f32(float 0.000000e+00, <24 x float> %i.za)
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.186.i.i.i.i.i.i
  store float %i.zb, ptr %i.zc, align 4, !tbaa !233, !alias.scope !569, !noalias !574
  %i.zd = add nuw i64 %.186.i.i.i.i.i.i, 1        ; 2 uses
  %exitcond94.not.i.i.i.i.i.i = icmp eq i64 %i.zd, %.0607830
  br i1 %exitcond94.not.i.i.i.i.i.i, label %.lr.ph827, label %.lr.ph87.i.i.i.i.i.i, !llvm.loop !576

bb.bo:                                            ; preds = %.lr.ph833
end_hunk_0
