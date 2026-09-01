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
  %.1184.lcssa = phi i32 [ %.0183, %.critedge ], [ %i.epq, %._crit_edge828 ] ; 2 uses
  %.not844 = icmp eq i64 %.0607.lcssa, 0
  br i1 %.not844, label %._crit_edge840, label %.lr.ph839

.lr.ph833:                                        ; preds = %.critedge, %._crit_edge828
  %.0157832 = phi i64 [ %i.jm, %._crit_edge828 ], [ 0, %.critedge ] ; 2 uses
  %.1184831 = phi i32 [ %i.epq, %._crit_edge828 ], [ %.0183, %.critedge ]
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
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.jp ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !538)
  call void @llvm.experimental.noalias.scope.decl(metadata !541)
  call void @llvm.experimental.noalias.scope.decl(metadata !543)
  %.not82.i.i.i.i = icmp ult i64 %.0607830, 4
  br i1 %.not82.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.bl
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = load <2 x float>, ptr %i.jt, align 4, !tbaa !233, !alias.scope !538, !noalias !545 ; 2 uses
  %i.jw = shufflevector <2 x float> %i.jv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %14 = load <6 x float>, ptr %i.ju, align 4, !tbaa !233, !alias.scope !538, !noalias !545 ; 6 uses
  %i.jx = shufflevector <2 x float> %i.jv, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.jy = shufflevector <6 x float> %14, <6 x float> poison, <4 x i32> zeroinitializer
  %15 = shufflevector <6 x float> %14, <6 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %16 = shufflevector <6 x float> %14, <6 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %17 = shufflevector <6 x float> %14, <6 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %18 = shufflevector <6 x float> %14, <6 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %19 = shufflevector <6 x float> %14, <6 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  br label %.lr.ph.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i, %bb.bl
  %.075.lcssa.i.i.i.i = phi i64 [ 0, %bb.bl ], [ %i.km, %.lr.ph.i.i.i.i ] ; 6 uses
  %i.jz = icmp ult i64 %.075.lcssa.i.i.i.i, %.0607830
  br i1 %i.jz, label %.lr.ph87.preheader.i.i.i.i, label %.lr.ph827

.lr.ph87.preheader.i.i.i.i:                       ; preds = %.preheader.i.i.i.i
  %i.ka = load <8 x float>, ptr %i.jt, align 4, !tbaa !233, !alias.scope !538, !noalias !545 ; 3 uses
  %.neg = or disjoint i64 %.075.lcssa.i.i.i.i, 1
  %xtraiter = and i64 %.0607830, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph87.i.i.i.i.prol.loopexit, label %.lr.ph87.i.i.i.i.prol

.lr.ph87.i.i.i.i.prol:                            ; preds = %.lr.ph87.preheader.i.i.i.i
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.075.lcssa.i.i.i.i
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !21, !noalias !546
  %i.kd = zext i32 %i.kc to i64
  %i.ke = mul nsw i64 %i.go, %i.kd
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.ke
  %i.kg = load <8 x float>, ptr %i.kf, align 4, !tbaa !233, !alias.scope !541, !noalias !547
  %i.kh = fmul fast <8 x float> %i.kg, %i.ka
  %i.ki = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.kh)
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.075.lcssa.i.i.i.i
  store float %i.ki, ptr %i.kj, align 4, !tbaa !233, !alias.scope !543, !noalias !548
  %i.kk = or disjoint i64 %.075.lcssa.i.i.i.i, 1
  br label %.lr.ph87.i.i.i.i.prol.loopexit

.lr.ph87.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph87.i.i.i.i.prol, %.lr.ph87.preheader.i.i.i.i
  %.186.i.i.i.i.unr = phi i64 [ %.075.lcssa.i.i.i.i, %.lr.ph87.preheader.i.i.i.i ], [ %i.kk, %.lr.ph87.i.i.i.i.prol ]
  %i.kl = icmp eq i64 %.0607830, %.neg
  br i1 %i.kl, label %.lr.ph827, label %.lr.ph87.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %i.km = phi i64 [ %i.nk, %.lr.ph.i.i.i.i ], [ 4, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.07583.i.i.i.i = phi i64 [ %i.km, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i.i ] ; 5 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !21, !noalias !546
  %i.kp = zext i32 %i.ko to i64
  %i.kq = mul nsw i64 %i.go, %i.kp
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.kq ; 2 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 4
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !21, !noalias !546
  %i.kv = zext i32 %i.ku to i64
  %i.kw = mul nsw i64 %i.go, %i.kv
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.kw ; 2 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !21, !noalias !546
  %i.lb = zext i32 %i.la to i64
  %i.lc = mul nsw i64 %i.go, %i.lb
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.lc ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 12
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !21, !noalias !546
  %i.lh = zext i32 %i.lg to i64
  %i.li = mul nsw i64 %i.go, %i.lh
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.li ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.07583.i.i.i.i
  %i.lp = load <4 x float>, ptr %i.kr, align 4, !tbaa !233, !alias.scope !541, !noalias !547 ; 4 uses
  %i.lq = load <4 x float>, ptr %i.kx, align 4, !tbaa !233, !alias.scope !541, !noalias !547 ; 4 uses
  %i.lr = load <4 x float>, ptr %i.ld, align 4, !tbaa !233, !alias.scope !541, !noalias !547 ; 4 uses
  %i.ls = load <4 x float>, ptr %i.lj, align 4, !tbaa !233, !alias.scope !541, !noalias !547 ; 4 uses
  %i.lt = shufflevector <4 x float> %i.lp, <4 x float> %i.lq, <4 x i32> <i32 1, i32 4, i32 poison, i32 poison>
  %i.lu = shufflevector <4 x float> %i.lt, <4 x float> %i.lr, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.lv = shufflevector <4 x float> %i.lu, <4 x float> %i.ls, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.lw = fmul fast <4 x float> %i.lv, %i.jx
  %i.lx = shufflevector <4 x float> %i.lp, <4 x float> %i.lq, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.ly = shufflevector <4 x float> %i.lx, <4 x float> %i.lr, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.lz = shufflevector <4 x float> %i.ly, <4 x float> %i.ls, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ma = fmul fast <4 x float> %i.lz, %i.jw
  %i.mb = fadd fast <4 x float> %i.ma, %i.lw
  %i.mc = shufflevector <4 x float> %i.lp, <4 x float> %i.lq, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.md = shufflevector <4 x float> %i.mc, <4 x float> %i.lr, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.me = shufflevector <4 x float> %i.md, <4 x float> %i.ls, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.mf = fmul fast <4 x float> %i.me, %i.jy
  %i.mg = fadd fast <4 x float> %i.mb, %i.mf
  %i.mh = shufflevector <4 x float> %i.lp, <4 x float> %i.lq, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.mi = shufflevector <4 x float> %i.mh, <4 x float> %i.lr, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.mj = shufflevector <4 x float> %i.mi, <4 x float> %i.ls, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.mk = fmul fast <4 x float> %i.mj, %15
  %i.ml = fadd fast <4 x float> %i.mg, %i.mk
  %i.mm = load <4 x float>, ptr %i.lk, align 4, !tbaa !233, !alias.scope !541, !noalias !547 ; 4 uses
  %i.mn = load <4 x float>, ptr %i.ll, align 4, !tbaa !233, !alias.scope !541, !noalias !547 ; 4 uses
  %i.mo = load <4 x float>, ptr %i.lm, align 4, !tbaa !233, !alias.scope !541, !noalias !547 ; 4 uses
  %i.mp = load <4 x float>, ptr %i.ln, align 4, !tbaa !233, !alias.scope !541, !noalias !547 ; 4 uses
  %i.mq = shufflevector <4 x float> %i.mm, <4 x float> %i.mn, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.mr = shufflevector <4 x float> %i.mq, <4 x float> %i.mo, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ms = shufflevector <4 x float> %i.mr, <4 x float> %i.mp, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.mt = fmul fast <4 x float> %i.ms, %16
  %i.mu = fadd fast <4 x float> %i.ml, %i.mt
  %i.mv = shufflevector <4 x float> %i.mm, <4 x float> %i.mn, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.mw = shufflevector <4 x float> %i.mv, <4 x float> %i.mo, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.mx = shufflevector <4 x float> %i.mw, <4 x float> %i.mp, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.my = fmul fast <4 x float> %i.mx, %17
  %i.mz = fadd fast <4 x float> %i.mu, %i.my
  %i.na = shufflevector <4 x float> %i.mm, <4 x float> %i.mn, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.nb = shufflevector <4 x float> %i.na, <4 x float> %i.mo, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.nc = shufflevector <4 x float> %i.nb, <4 x float> %i.mp, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.nd = fmul fast <4 x float> %i.nc, %18
  %i.ne = fadd fast <4 x float> %i.mz, %i.nd
  %i.nf = shufflevector <4 x float> %i.mm, <4 x float> %i.mn, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.ng = shufflevector <4 x float> %i.nf, <4 x float> %i.mo, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.nh = shufflevector <4 x float> %i.ng, <4 x float> %i.mp, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ni = fmul fast <4 x float> %i.nh, %19
  %i.nj = fadd fast <4 x float> %i.ne, %i.ni
  store <4 x float> %i.nj, ptr %i.lo, align 4, !tbaa !233, !alias.scope !543, !noalias !548
  %i.nk = add i64 %i.km, 4                        ; 2 uses
  %.not.i.i.i.i289 = icmp ugt i64 %i.nk, %.0607830
  br i1 %.not.i.i.i.i289, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !549

.lr.ph87.i.i.i.i:                                 ; preds = %.lr.ph87.i.i.i.i.prol.loopexit, %.lr.ph87.i.i.i.i
  %.186.i.i.i.i = phi i64 [ %i.oe, %.lr.ph87.i.i.i.i ], [ %.186.i.i.i.i.unr, %.lr.ph87.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.186.i.i.i.i
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !21, !noalias !546
  %i.nn = zext i32 %i.nm to i64
  %i.no = mul nsw i64 %i.go, %i.nn
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.no
  %i.nq = load <8 x float>, ptr %i.np, align 4, !tbaa !233, !alias.scope !541, !noalias !547
  %i.nr = fmul fast <8 x float> %i.nq, %i.ka
  %i.ns = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.nr)
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.186.i.i.i.i
  store float %i.ns, ptr %i.nt, align 4, !tbaa !233, !alias.scope !543, !noalias !548
  %i.nu = add nuw i64 %.186.i.i.i.i, 1            ; 2 uses
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %i.nu
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !21, !noalias !546
  %i.nx = zext i32 %i.nw to i64
  %i.ny = mul nsw i64 %i.go, %i.nx
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.ny
  %i.oa = load <8 x float>, ptr %i.nz, align 4, !tbaa !233, !alias.scope !541, !noalias !547
  %i.ob = fmul fast <8 x float> %i.oa, %i.ka
  %i.oc = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.ob)
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %i.nu
  store float %i.oc, ptr %i.od, align 4, !tbaa !233, !alias.scope !543, !noalias !548
  %i.oe = add nuw i64 %.186.i.i.i.i, 2            ; 2 uses
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %i.oe, %.0607830
  br i1 %exitcond.not.i.i.i.i.1, label %.lr.ph827, label %.lr.ph87.i.i.i.i, !llvm.loop !550

bb.bm:                                            ; preds = %.lr.ph833
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.jp ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !551)
  call void @llvm.experimental.noalias.scope.decl(metadata !554)
  call void @llvm.experimental.noalias.scope.decl(metadata !556)
  %.not82.i.i.i.i.i = icmp ult i64 %.0607830, 4
  br i1 %.not82.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.bm
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %20 = load <2 x float>, ptr %i.of, align 4, !tbaa !233, !alias.scope !551, !noalias !558 ; 2 uses
  %21 = shufflevector <2 x float> %20, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %22 = load <3 x float>, ptr %i.og, align 4, !tbaa !233, !alias.scope !551, !noalias !558 ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 20
  %i.oi = load float, ptr %i.oh, align 4, !tbaa !233, !alias.scope !551, !noalias !558
  %i.oj = getelementptr inbounds nuw i8, ptr %i.of, i64 24
  %23 = load <10 x float>, ptr %i.oj, align 4, !tbaa !233, !alias.scope !551, !noalias !558 ; 10 uses
  %i.ok = shufflevector <10 x float> %23, <10 x float> poison, <4 x i32> zeroinitializer
  %24 = shufflevector <10 x float> %23, <10 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %25 = shufflevector <10 x float> %23, <10 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %26 = shufflevector <10 x float> %23, <10 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %27 = shufflevector <10 x float> %23, <10 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %28 = shufflevector <10 x float> %23, <10 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %29 = shufflevector <10 x float> %23, <10 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %30 = shufflevector <10 x float> %23, <10 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %31 = shufflevector <10 x float> %23, <10 x float> poison, <4 x i32> <i32 8, i32 8, i32 8, i32 8>
  %32 = shufflevector <10 x float> %23, <10 x float> poison, <4 x i32> <i32 9, i32 9, i32 9, i32 9>
  %i.ol = insertelement <4 x float> poison, float %i.oi, i64 0
  %i.om = shufflevector <4 x float> %i.ol, <4 x float> poison, <4 x i32> zeroinitializer
  %i.on = shufflevector <2 x float> %20, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.oo = shufflevector <3 x float> %22, <3 x float> poison, <4 x i32> zeroinitializer
  %33 = shufflevector <3 x float> %22, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %34 = shufflevector <3 x float> %22, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  br label %.lr.ph.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i, %bb.bm
  %.075.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.bm ], [ %i.or, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.op = icmp ult i64 %.075.lcssa.i.i.i.i.i, %.0607830
  br i1 %i.op, label %.lr.ph87.preheader.i.i.i.i.i, label %.lr.ph827

.lr.ph87.preheader.i.i.i.i.i:                     ; preds = %.preheader.i.i.i.i.i
  %i.oq = load <16 x float>, ptr %i.of, align 4, !tbaa !233, !alias.scope !551, !noalias !558
  br label %.lr.ph87.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %i.or = phi i64 [ %i.un, %.lr.ph.i.i.i.i.i ], [ 4, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.07583.i.i.i.i.i = phi i64 [ %i.or, %.lr.ph.i.i.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i.i.i ] ; 5 uses
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i.i
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !21, !noalias !559
  %i.ou = zext i32 %i.ot to i64
  %i.ov = mul nsw i64 %i.gn, %i.ou
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.ov ; 6 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i.i
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 4
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !21, !noalias !559
  %i.pa = zext i32 %i.oz to i64
  %i.pb = mul nsw i64 %i.gn, %i.pa
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.pb ; 6 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i.i
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !21, !noalias !559
  %i.pg = zext i32 %i.pf to i64
  %i.ph = mul nsw i64 %i.gn, %i.pg
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.ph ; 6 uses
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i.i
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 12
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !21, !noalias !559
  %i.pm = zext i32 %i.pl to i64
  %i.pn = mul nsw i64 %i.gn, %i.pm
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.pn ; 6 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !233, !alias.scope !554, !noalias !560
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !233, !alias.scope !554, !noalias !560
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pi, i64 16
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !233, !alias.scope !554, !noalias !560
  %i.pv = getelementptr inbounds nuw i8, ptr %i.po, i64 16
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !233, !alias.scope !554, !noalias !560
  %i.px = load <4 x float>, ptr %i.ow, align 4, !tbaa !233, !alias.scope !554, !noalias !560 ; 4 uses
  %i.py = load <4 x float>, ptr %i.pc, align 4, !tbaa !233, !alias.scope !554, !noalias !560 ; 4 uses
  %i.pz = load <4 x float>, ptr %i.pi, align 4, !tbaa !233, !alias.scope !554, !noalias !560 ; 4 uses
  %i.qa = load <4 x float>, ptr %i.po, align 4, !tbaa !233, !alias.scope !554, !noalias !560 ; 4 uses
  %i.qb = shufflevector <4 x float> %i.px, <4 x float> %i.py, <4 x i32> <i32 1, i32 4, i32 poison, i32 poison>
  %i.qc = shufflevector <4 x float> %i.qb, <4 x float> %i.pz, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.qd = shufflevector <4 x float> %i.qc, <4 x float> %i.qa, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.qe = fmul fast <4 x float> %i.qd, %i.on
  %i.qf = shufflevector <4 x float> %i.px, <4 x float> %i.py, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.qg = shufflevector <4 x float> %i.qf, <4 x float> %i.pz, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.qh = shufflevector <4 x float> %i.qg, <4 x float> %i.qa, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.qi = fmul fast <4 x float> %i.qh, %21
  %i.qj = fadd fast <4 x float> %i.qi, %i.qe
  %i.qk = shufflevector <4 x float> %i.px, <4 x float> %i.py, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.ql = shufflevector <4 x float> %i.qk, <4 x float> %i.pz, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.qm = shufflevector <4 x float> %i.ql, <4 x float> %i.qa, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.qn = fmul fast <4 x float> %i.qm, %i.oo
  %i.qo = fadd fast <4 x float> %i.qj, %i.qn
  %i.qp = shufflevector <4 x float> %i.px, <4 x float> %i.py, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.qq = shufflevector <4 x float> %i.qp, <4 x float> %i.pz, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.qr = shufflevector <4 x float> %i.qq, <4 x float> %i.qa, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.qs = fmul fast <4 x float> %i.qr, %33
  %i.qt = fadd fast <4 x float> %i.qo, %i.qs
  %i.qu = insertelement <4 x float> poison, float %i.pq, i64 0
  %i.qv = insertelement <4 x float> %i.qu, float %i.ps, i64 1
  %i.qw = insertelement <4 x float> %i.qv, float %i.pu, i64 2
  %i.qx = insertelement <4 x float> %i.qw, float %i.pw, i64 3
  %i.qy = fmul fast <4 x float> %i.qx, %34
  %i.qz = fadd fast <4 x float> %i.qt, %i.qy
  %i.ra = getelementptr inbounds nuw i8, ptr %i.ow, i64 20
  %i.rb = load float, ptr %i.ra, align 4, !tbaa !233, !alias.scope !554, !noalias !560
  %i.rc = getelementptr inbounds nuw i8, ptr %i.pc, i64 20
  %i.rd = load float, ptr %i.rc, align 4, !tbaa !233, !alias.scope !554, !noalias !560
  %i.re = getelementptr inbounds nuw i8, ptr %i.pi, i64 20
  %i.rf = load float, ptr %i.re, align 4, !tbaa !233, !alias.scope !554, !noalias !560
  %i.rg = getelementptr inbounds nuw i8, ptr %i.po, i64 20
  %i.rh = load float, ptr %i.rg, align 4, !tbaa !233, !alias.scope !554, !noalias !560
  %i.ri = insertelement <4 x float> poison, float %i.rb, i64 0
  %i.rj = insertelement <4 x float> %i.ri, float %i.rd, i64 1
  %i.rk = insertelement <4 x float> %i.rj, float %i.rf, i64 2
  %i.rl = insertelement <4 x float> %i.rk, float %i.rh, i64 3
  %i.rm = fmul fast <4 x float> %i.rl, %i.om
  %i.rn = getelementptr inbounds nuw i8, ptr %i.ow, i64 24
  %i.ro = getelementptr inbounds nuw i8, ptr %i.pc, i64 24
  %i.rp = getelementptr inbounds nuw i8, ptr %i.pi, i64 24
  %i.rq = getelementptr inbounds nuw i8, ptr %i.po, i64 24
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ow, i64 40
  %i.rs = getelementptr inbounds nuw i8, ptr %i.pc, i64 40
  %i.rt = getelementptr inbounds nuw i8, ptr %i.pi, i64 40
  %i.ru = getelementptr inbounds nuw i8, ptr %i.po, i64 40
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ow, i64 56
  %i.rw = getelementptr inbounds nuw i8, ptr %i.pc, i64 56
  %i.rx = getelementptr inbounds nuw i8, ptr %i.pi, i64 56
  %i.ry = getelementptr inbounds nuw i8, ptr %i.po, i64 56
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.07583.i.i.i.i.i
  %i.sa = fadd fast <4 x float> %i.qz, %i.rm
  %i.sb = load <4 x float>, ptr %i.rn, align 4, !tbaa !233, !alias.scope !554, !noalias !560 ; 4 uses
  %i.sc = load <4 x float>, ptr %i.ro, align 4, !tbaa !233, !alias.scope !554, !noalias !560 ; 4 uses
  %i.sd = load <4 x float>, ptr %i.rp, align 4, !tbaa !233, !alias.scope !554, !noalias !560 ; 4 uses
  %i.se = load <4 x float>, ptr %i.rq, align 4, !tbaa !233, !alias.scope !554, !noalias !560 ; 4 uses
  %i.sf = shufflevector <4 x float> %i.sb, <4 x float> %i.sc, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.sg = shufflevector <4 x float> %i.sf, <4 x float> %i.sd, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.sh = shufflevector <4 x float> %i.sg, <4 x float> %i.se, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.si = fmul fast <4 x float> %i.sh, %i.ok
  %i.sj = fadd fast <4 x float> %i.sa, %i.si
  %i.sk = shufflevector <4 x float> %i.sb, <4 x float> %i.sc, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.sl = shufflevector <4 x float> %i.sk, <4 x float> %i.sd, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.sm = shufflevector <4 x float> %i.sl, <4 x float> %i.se, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.sn = fmul fast <4 x float> %i.sm, %24
  %i.so = fadd fast <4 x float> %i.sj, %i.sn
  %i.sp = shufflevector <4 x float> %i.sb, <4 x float> %i.sc, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.sq = shufflevector <4 x float> %i.sp, <4 x float> %i.sd, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.sr = shufflevector <4 x float> %i.sq, <4 x float> %i.se, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.ss = fmul fast <4 x float> %i.sr, %25
  %i.st = fadd fast <4 x float> %i.so, %i.ss
  %i.su = shufflevector <4 x float> %i.sb, <4 x float> %i.sc, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.sv = shufflevector <4 x float> %i.su, <4 x float> %i.sd, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.sw = shufflevector <4 x float> %i.sv, <4 x float> %i.se, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.sx = fmul fast <4 x float> %i.sw, %26
  %i.sy = fadd fast <4 x float> %i.st, %i.sx
  %i.sz = load <4 x float>, ptr %i.rr, align 4, !tbaa !233, !alias.scope !554, !noalias !560 ; 4 uses
  %i.ta = load <4 x float>, ptr %i.rs, align 4, !tbaa !233, !alias.scope !554, !noalias !560 ; 4 uses
  %i.tb = load <4 x float>, ptr %i.rt, align 4, !tbaa !233, !alias.scope !554, !noalias !560 ; 4 uses
  %i.tc = load <4 x float>, ptr %i.ru, align 4, !tbaa !233, !alias.scope !554, !noalias !560 ; 4 uses
  %i.td = shufflevector <4 x float> %i.sz, <4 x float> %i.ta, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.te = shufflevector <4 x float> %i.td, <4 x float> %i.tb, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.tf = shufflevector <4 x float> %i.te, <4 x float> %i.tc, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.tg = fmul fast <4 x float> %i.tf, %27
  %i.th = fadd fast <4 x float> %i.sy, %i.tg
  %i.ti = shufflevector <4 x float> %i.sz, <4 x float> %i.ta, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.tj = shufflevector <4 x float> %i.ti, <4 x float> %i.tb, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.tk = shufflevector <4 x float> %i.tj, <4 x float> %i.tc, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.tl = fmul fast <4 x float> %i.tk, %28
  %i.tm = fadd fast <4 x float> %i.th, %i.tl
  %i.tn = shufflevector <4 x float> %i.sz, <4 x float> %i.ta, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.to = shufflevector <4 x float> %i.tn, <4 x float> %i.tb, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.tp = shufflevector <4 x float> %i.to, <4 x float> %i.tc, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.tq = fmul fast <4 x float> %i.tp, %29
  %i.tr = fadd fast <4 x float> %i.tm, %i.tq
  %i.ts = shufflevector <4 x float> %i.sz, <4 x float> %i.ta, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.tt = shufflevector <4 x float> %i.ts, <4 x float> %i.tb, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.tu = shufflevector <4 x float> %i.tt, <4 x float> %i.tc, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.tv = fmul fast <4 x float> %i.tu, %30
  %i.tw = fadd fast <4 x float> %i.tr, %i.tv
  %i.tx = load <2 x float>, ptr %i.rv, align 4, !tbaa !233, !alias.scope !554, !noalias !560 ; 2 uses
  %i.ty = load <2 x float>, ptr %i.rw, align 4, !tbaa !233, !alias.scope !554, !noalias !560 ; 2 uses
  %i.tz = load <2 x float>, ptr %i.rx, align 4, !tbaa !233, !alias.scope !554, !noalias !560
  %i.ua = load <2 x float>, ptr %i.ry, align 4, !tbaa !233, !alias.scope !554, !noalias !560
  %i.ub = shufflevector <2 x float> %i.tx, <2 x float> %i.ty, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.uc = shufflevector <2 x float> %i.tz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ud = shufflevector <4 x float> %i.ub, <4 x float> %i.uc, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ue = shufflevector <2 x float> %i.ua, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.uf = shufflevector <4 x float> %i.ud, <4 x float> %i.ue, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ug = fmul fast <4 x float> %i.uf, %31
  %i.uh = fadd fast <4 x float> %i.tw, %i.ug
  %i.ui = shufflevector <2 x float> %i.tx, <2 x float> %i.ty, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.uj = shufflevector <4 x float> %i.ui, <4 x float> %i.uc, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.uk = shufflevector <4 x float> %i.uj, <4 x float> %i.ue, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ul = fmul fast <4 x float> %i.uk, %32
  %i.um = fadd fast <4 x float> %i.uh, %i.ul
  store <4 x float> %i.um, ptr %i.rz, align 4, !tbaa !233, !alias.scope !556, !noalias !561
  %i.un = add i64 %i.or, 4                        ; 2 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.un, %.0607830
  br i1 %.not.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !562

.lr.ph87.i.i.i.i.i:                               ; preds = %.lr.ph87.i.i.i.i.i, %.lr.ph87.preheader.i.i.i.i.i
  %.186.i.i.i.i.i = phi i64 [ %i.ux, %.lr.ph87.i.i.i.i.i ], [ %.075.lcssa.i.i.i.i.i, %.lr.ph87.preheader.i.i.i.i.i ] ; 3 uses
  %i.uo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.186.i.i.i.i.i
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !21, !noalias !559
  %i.uq = zext i32 %i.up to i64
  %i.ur = mul nsw i64 %i.gn, %i.uq
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.ur
  %i.ut = load <16 x float>, ptr %i.us, align 4, !tbaa !233, !alias.scope !554, !noalias !560
  %i.uu = fmul fast <16 x float> %i.ut, %i.oq
  %i.uv = call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %i.uu)
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.186.i.i.i.i.i
  store float %i.uv, ptr %i.uw, align 4, !tbaa !233, !alias.scope !556, !noalias !561
  %i.ux = add nuw i64 %.186.i.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ux, %.0607830
  br i1 %exitcond.not.i.i.i.i.i, label %.lr.ph827, label %.lr.ph87.i.i.i.i.i, !llvm.loop !563

bb.bn:                                            ; preds = %.lr.ph833
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.jp ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !564)
  call void @llvm.experimental.noalias.scope.decl(metadata !567)
  call void @llvm.experimental.noalias.scope.decl(metadata !569)
  %.not82.i.i.i.i.i.i = icmp ult i64 %.0607830, 4
  br i1 %.not82.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.bn
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 16
  %wide.load1395 = load <4 x float>, ptr %i.uy, align 4, !tbaa !233, !alias.scope !564, !noalias !571 ; 4 uses
  %wide.load1396 = load <4 x float>, ptr %i.uz, align 4, !tbaa !233, !alias.scope !564, !noalias !571 ; 4 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.uy, i64 32
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uy, i64 48
  %wide.load1395.1 = load <4 x float>, ptr %i.va, align 4, !tbaa !233, !alias.scope !564, !noalias !571 ; 4 uses
  %wide.load1396.1 = load <4 x float>, ptr %i.vb, align 4, !tbaa !233, !alias.scope !564, !noalias !571 ; 4 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uy, i64 64
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uy, i64 80
  %wide.load1395.2 = load <4 x float>, ptr %i.vc, align 4, !tbaa !233, !alias.scope !564, !noalias !571 ; 4 uses
  %wide.load1396.2 = load <4 x float>, ptr %i.vd, align 4, !tbaa !233, !alias.scope !564, !noalias !571 ; 4 uses
  br label %.lr.ph.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i, %bb.bn
  %.075.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.bn ], [ %i.vg, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.ve = icmp ult i64 %.075.lcssa.i.i.i.i.i.i, %.0607830
  br i1 %i.ve, label %.lr.ph87.preheader.i.i.i.i.i.i, label %.lr.ph827

.lr.ph87.preheader.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i
  %i.vf = load <24 x float>, ptr %i.uy, align 4, !tbaa !233, !alias.scope !564, !noalias !571
  br label %.lr.ph87.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %i.vg = phi i64 [ %i.yu, %.lr.ph.i.i.i.i.i.i ], [ 4, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %.07583.i.i.i.i.i.i = phi i64 [ %i.vg, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ] ; 5 uses
  %i.vh = or disjoint i64 %.07583.i.i.i.i.i.i, 3  ; 2 uses
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %i.vh
  %i.vj = load i32, ptr %i.vi, align 4, !tbaa !21, !noalias !572
  %i.vk = zext i32 %i.vj to i64
  %i.vl = mul nsw i64 %i.gm, %i.vk
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.vl ; 6 uses
  %i.vn = or disjoint i64 %.07583.i.i.i.i.i.i, 2  ; 2 uses
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %i.vn
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !21, !noalias !572
  %i.vq = zext i32 %i.vp to i64
  %i.vr = mul nsw i64 %i.gm, %i.vq
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.vr ; 6 uses
  %i.vt = or disjoint i64 %.07583.i.i.i.i.i.i, 1  ; 2 uses
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %i.vt
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !21, !noalias !572
  %i.vw = zext i32 %i.vv to i64
  %i.vx = mul nsw i64 %i.gm, %i.vw
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.vx ; 6 uses
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i.i.i
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !21, !noalias !572
  %i.wb = zext i32 %i.wa to i64
  %i.wc = mul nsw i64 %i.gm, %i.wb
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.wc ; 6 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 16
  %wide.load1397 = load <4 x float>, ptr %i.wd, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %wide.load1398 = load <4 x float>, ptr %i.we, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %i.wf = fmul fast <4 x float> %wide.load1397, %wide.load1395
  %i.wg = fmul fast <4 x float> %wide.load1398, %wide.load1396
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vy, i64 16
  %wide.load1399 = load <4 x float>, ptr %i.vy, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %wide.load1400 = load <4 x float>, ptr %i.wh, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %i.wi = fmul fast <4 x float> %wide.load1399, %wide.load1395
  %i.wj = fmul fast <4 x float> %wide.load1400, %wide.load1396
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vs, i64 16
  %wide.load1401 = load <4 x float>, ptr %i.vs, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %wide.load1402 = load <4 x float>, ptr %i.wk, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %i.wl = fmul fast <4 x float> %wide.load1401, %wide.load1395
  %i.wm = fmul fast <4 x float> %wide.load1402, %wide.load1396
  %i.wn = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  %wide.load1403 = load <4 x float>, ptr %i.vm, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %wide.load1404 = load <4 x float>, ptr %i.wn, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %i.wo = fmul fast <4 x float> %wide.load1403, %wide.load1395
  %i.wp = fmul fast <4 x float> %wide.load1404, %wide.load1396
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wd, i64 32
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wd, i64 48
  %wide.load1397.1 = load <4 x float>, ptr %i.wq, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %wide.load1398.1 = load <4 x float>, ptr %i.wr, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %i.ws = fmul fast <4 x float> %wide.load1397.1, %wide.load1395.1
  %i.wt = fmul fast <4 x float> %wide.load1398.1, %wide.load1396.1
  %i.wu = fadd fast <4 x float> %i.ws, %i.wf
  %i.wv = fadd fast <4 x float> %i.wt, %i.wg
  %i.ww = getelementptr inbounds nuw i8, ptr %i.vy, i64 32
  %i.wx = getelementptr inbounds nuw i8, ptr %i.vy, i64 48
  %wide.load1399.1 = load <4 x float>, ptr %i.ww, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %wide.load1400.1 = load <4 x float>, ptr %i.wx, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %i.wy = fmul fast <4 x float> %wide.load1399.1, %wide.load1395.1
  %i.wz = fmul fast <4 x float> %wide.load1400.1, %wide.load1396.1
  %i.xa = fadd fast <4 x float> %i.wy, %i.wi
  %i.xb = fadd fast <4 x float> %i.wz, %i.wj
  %i.xc = getelementptr inbounds nuw i8, ptr %i.vs, i64 32
  %i.xd = getelementptr inbounds nuw i8, ptr %i.vs, i64 48
  %wide.load1401.1 = load <4 x float>, ptr %i.xc, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %wide.load1402.1 = load <4 x float>, ptr %i.xd, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %i.xe = fmul fast <4 x float> %wide.load1401.1, %wide.load1395.1
  %i.xf = fmul fast <4 x float> %wide.load1402.1, %wide.load1396.1
  %i.xg = fadd fast <4 x float> %i.xe, %i.wl
  %i.xh = fadd fast <4 x float> %i.xf, %i.wm
  %i.xi = getelementptr inbounds nuw i8, ptr %i.vm, i64 32
  %i.xj = getelementptr inbounds nuw i8, ptr %i.vm, i64 48
  %wide.load1403.1 = load <4 x float>, ptr %i.xi, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %wide.load1404.1 = load <4 x float>, ptr %i.xj, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %i.xk = fmul fast <4 x float> %wide.load1403.1, %wide.load1395.1
  %i.xl = fmul fast <4 x float> %wide.load1404.1, %wide.load1396.1
  %i.xm = fadd fast <4 x float> %i.xk, %i.wo
  %i.xn = fadd fast <4 x float> %i.xl, %i.wp
  %i.xo = getelementptr inbounds nuw i8, ptr %i.wd, i64 64
  %i.xp = getelementptr inbounds nuw i8, ptr %i.wd, i64 80
  %wide.load1397.2 = load <4 x float>, ptr %i.xo, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %wide.load1398.2 = load <4 x float>, ptr %i.xp, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %i.xq = fmul fast <4 x float> %wide.load1397.2, %wide.load1395.2
  %i.xr = fmul fast <4 x float> %wide.load1398.2, %wide.load1396.2
  %i.xs = fadd fast <4 x float> %i.xq, %i.wu
  %i.xt = fadd fast <4 x float> %i.xr, %i.wv
  %i.xu = getelementptr inbounds nuw i8, ptr %i.vy, i64 64
  %i.xv = getelementptr inbounds nuw i8, ptr %i.vy, i64 80
  %wide.load1399.2 = load <4 x float>, ptr %i.xu, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %wide.load1400.2 = load <4 x float>, ptr %i.xv, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %i.xw = fmul fast <4 x float> %wide.load1399.2, %wide.load1395.2
  %i.xx = fmul fast <4 x float> %wide.load1400.2, %wide.load1396.2
  %i.xy = fadd fast <4 x float> %i.xw, %i.xa
  %i.xz = fadd fast <4 x float> %i.xx, %i.xb
  %i.ya = getelementptr inbounds nuw i8, ptr %i.vs, i64 64
  %i.yb = getelementptr inbounds nuw i8, ptr %i.vs, i64 80
  %wide.load1401.2 = load <4 x float>, ptr %i.ya, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %wide.load1402.2 = load <4 x float>, ptr %i.yb, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %i.yc = fmul fast <4 x float> %wide.load1401.2, %wide.load1395.2
  %i.yd = fmul fast <4 x float> %wide.load1402.2, %wide.load1396.2
  %i.ye = fadd fast <4 x float> %i.yc, %i.xg
  %i.yf = fadd fast <4 x float> %i.yd, %i.xh
  %i.yg = getelementptr inbounds nuw i8, ptr %i.vm, i64 64
  %i.yh = getelementptr inbounds nuw i8, ptr %i.vm, i64 80
  %wide.load1403.2 = load <4 x float>, ptr %i.yg, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %wide.load1404.2 = load <4 x float>, ptr %i.yh, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %i.yi = fmul fast <4 x float> %wide.load1403.2, %wide.load1395.2
  %i.yj = fmul fast <4 x float> %wide.load1404.2, %wide.load1396.2
  %i.yk = fadd fast <4 x float> %i.yi, %i.xm
  %i.yl = fadd fast <4 x float> %i.yj, %i.xn
  %bin.rdx1410 = fadd fast <4 x float> %i.xt, %i.xs
  %i.ym = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx1410)
  %bin.rdx1409 = fadd fast <4 x float> %i.xz, %i.xy
  %i.yn = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx1409)
  %bin.rdx1408 = fadd fast <4 x float> %i.yf, %i.ye
  %i.yo = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx1408)
  %bin.rdx1407 = fadd fast <4 x float> %i.yl, %i.yk
  %i.yp = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx1407)
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.07583.i.i.i.i.i.i
  store float %i.ym, ptr %i.yq, align 4, !tbaa !233, !alias.scope !569, !noalias !574
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %i.vt
  store float %i.yn, ptr %i.yr, align 4, !tbaa !233, !alias.scope !569, !noalias !574
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %i.vn
  store float %i.yo, ptr %i.ys, align 4, !tbaa !233, !alias.scope !569, !noalias !574
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %i.vh
  store float %i.yp, ptr %i.yt, align 4, !tbaa !233, !alias.scope !569, !noalias !574
  %i.yu = add i64 %i.vg, 4                        ; 2 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.yu, %.0607830
  br i1 %.not.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !575

.lr.ph87.i.i.i.i.i.i:                             ; preds = %.lr.ph87.i.i.i.i.i.i, %.lr.ph87.preheader.i.i.i.i.i.i
  %.186.i.i.i.i.i.i = phi i64 [ %i.ze, %.lr.ph87.i.i.i.i.i.i ], [ %.075.lcssa.i.i.i.i.i.i, %.lr.ph87.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.186.i.i.i.i.i.i
  %i.yw = load i32, ptr %i.yv, align 4, !tbaa !21, !noalias !572
  %i.yx = zext i32 %i.yw to i64
  %i.yy = mul nsw i64 %i.gm, %i.yx
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.yy
  %i.za = load <24 x float>, ptr %i.yz, align 4, !tbaa !233, !alias.scope !567, !noalias !573
  %i.zb = fmul fast <24 x float> %i.za, %i.vf
  %i.zc = call fast float @llvm.vector.reduce.fadd.v24f32(float 0.000000e+00, <24 x float> %i.zb)
  %i.zd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.186.i.i.i.i.i.i
  store float %i.zc, ptr %i.zd, align 4, !tbaa !233, !alias.scope !569, !noalias !574
  %i.ze = add nuw i64 %.186.i.i.i.i.i.i, 1        ; 2 uses
  %exitcond94.not.i.i.i.i.i.i = icmp eq i64 %i.ze, %.0607830
  br i1 %exitcond94.not.i.i.i.i.i.i, label %.lr.ph827, label %.lr.ph87.i.i.i.i.i.i, !llvm.loop !576

bb.bo:                                            ; preds = %.lr.ph833
end_hunk_0
