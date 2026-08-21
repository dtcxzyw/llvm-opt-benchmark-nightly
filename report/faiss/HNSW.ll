Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/HNSW?download=true
inline.NumInlined: 2691
inline.NumDeleted: 1084
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN5faiss11hnsw_detail31search_from_candidates_panoramaERKNS_4HNSWEPKNS_9IndexHNSWERNS_16DistanceComputerERNS_22ResultHandlerUnorderedIflEERNS_12MinimaxHeapTINS_4CMaxIfiEEEERNS_12VisitedTableERNS_9HNSWStatsEiiPKNS_16SearchParametersE:bb.a

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
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !201 ; 2 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.1165815
  store i32 %i.il, ptr %i.iz, align 4, !tbaa !21
  %i.ja = call float @llvm.fmuladd.f32(float %i.iy, float %i.iy, float %i.fo)
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0456.0642, i64 %.1165815
  store float %i.ja, ptr %i.jb, align 4, !tbaa !201
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
  br i1 %exitcond.not, label %._crit_edge819, label %.lr.ph818, !llvm.loop !492

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
  %i.ji = load i64, ptr %i.fx, align 8, !tbaa !493
  %i.jj = add i64 %i.ji, %i.jh
  store i64 %i.jj, ptr %i.fx, align 8, !tbaa !493
  %i.jk = icmp ne i64 %.0164716, 0
  %i.jl = and i1 %i.fy, %i.jk
  br i1 %i.jl, label %.lr.ph833, label %.preheader

.preheader:                                       ; preds = %._crit_edge828, %.critedge
  %.0607.lcssa = phi i64 [ %.0164716, %.critedge ], [ %.1, %._crit_edge828 ] ; 2 uses
  %.1184.lcssa = phi i32 [ %.0183, %.critedge ], [ %i.esc, %._crit_edge828 ] ; 2 uses
  %.not844 = icmp eq i64 %.0607.lcssa, 0
  br i1 %.not844, label %._crit_edge840, label %.lr.ph839

.lr.ph833:                                        ; preds = %.critedge, %._crit_edge828
  %.0157832 = phi i64 [ %i.jm, %._crit_edge828 ], [ 0, %.critedge ] ; 2 uses
  %.1184831 = phi i32 [ %i.esc, %._crit_edge828 ], [ %.0183, %.critedge ]
  %.0607830 = phi i64 [ %.1, %._crit_edge828 ], [ %.0164716, %.critedge ] ; 76 uses
  %i.jm = add nuw i64 %.0157832, 1                ; 5 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0449.0, i64 %i.jm
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !201
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
  call void @llvm.experimental.noalias.scope.decl(metadata !494)
  call void @llvm.experimental.noalias.scope.decl(metadata !497)
  call void @llvm.experimental.noalias.scope.decl(metadata !499)
  %.not82.i.i.i.i = icmp ult i64 %.0607830, 4
  br i1 %.not82.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.bl
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %.pre.i.i.i.i = load float, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !201, !alias.scope !494, !noalias !501
  %i.ju = load <2 x float>, ptr %i.jt, align 4, !tbaa !201, !alias.scope !494, !noalias !501 ; 2 uses
  %14 = shufflevector <2 x float> %i.ju, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !201, !alias.scope !494, !noalias !501
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jt, i64 12
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !201, !alias.scope !494, !noalias !501
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jt, i64 20
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !201, !alias.scope !494, !noalias !501
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !201, !alias.scope !494, !noalias !501
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jt, i64 28
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !201, !alias.scope !494, !noalias !501
  %15 = shufflevector <2 x float> %i.ju, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %16 = insertelement <4 x float> poison, float %i.jw, i64 0
  %17 = shufflevector <4 x float> %16, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kf = insertelement <4 x float> poison, float %i.jy, i64 0
  %i.kg = shufflevector <4 x float> %i.kf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kh = insertelement <4 x float> poison, float %.pre.i.i.i.i, i64 0
  %i.ki = shufflevector <4 x float> %i.kh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kj = insertelement <4 x float> poison, float %i.ka, i64 0
  %i.kk = shufflevector <4 x float> %i.kj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kl = insertelement <4 x float> poison, float %i.kc, i64 0
  %i.km = shufflevector <4 x float> %i.kl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.kn = insertelement <4 x float> poison, float %i.ke, i64 0
  %i.ko = shufflevector <4 x float> %i.kn, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i, %bb.bl
  %.075.lcssa.i.i.i.i = phi i64 [ 0, %bb.bl ], [ %i.lc, %.lr.ph.i.i.i.i ] ; 6 uses
  %i.kp = icmp ult i64 %.075.lcssa.i.i.i.i, %.0607830
  br i1 %i.kp, label %.lr.ph87.preheader.i.i.i.i, label %.lr.ph827

.lr.ph87.preheader.i.i.i.i:                       ; preds = %.preheader.i.i.i.i
  %i.kq = load <8 x float>, ptr %i.jt, align 4, !tbaa !201, !alias.scope !494, !noalias !501 ; 3 uses
  %.neg = or disjoint i64 %.075.lcssa.i.i.i.i, 1
  %xtraiter = and i64 %.0607830, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph87.i.i.i.i.prol.loopexit, label %.lr.ph87.i.i.i.i.prol

.lr.ph87.i.i.i.i.prol:                            ; preds = %.lr.ph87.preheader.i.i.i.i
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.075.lcssa.i.i.i.i
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !21, !noalias !502
  %i.kt = zext i32 %i.ks to i64
  %i.ku = mul nsw i64 %i.go, %i.kt
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.ku
  %i.kw = load <8 x float>, ptr %i.kv, align 4, !tbaa !201, !alias.scope !497, !noalias !503
  %i.kx = fmul fast <8 x float> %i.kw, %i.kq
  %i.ky = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.kx)
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.075.lcssa.i.i.i.i
  store float %i.ky, ptr %i.kz, align 4, !tbaa !201, !alias.scope !499, !noalias !504
  %i.la = or disjoint i64 %.075.lcssa.i.i.i.i, 1
  br label %.lr.ph87.i.i.i.i.prol.loopexit

.lr.ph87.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph87.i.i.i.i.prol, %.lr.ph87.preheader.i.i.i.i
  %.186.i.i.i.i.unr = phi i64 [ %.075.lcssa.i.i.i.i, %.lr.ph87.preheader.i.i.i.i ], [ %i.la, %.lr.ph87.i.i.i.i.prol ]
  %i.lb = icmp eq i64 %.0607830, %.neg
  br i1 %i.lb, label %.lr.ph827, label %.lr.ph87.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %i.lc = phi i64 [ %i.oa, %.lr.ph.i.i.i.i ], [ 4, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.07583.i.i.i.i = phi i64 [ %i.lc, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i.i ] ; 5 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !21, !noalias !502
  %i.lf = zext i32 %i.le to i64
  %i.lg = mul nsw i64 %i.go, %i.lf
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.lg ; 2 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 4
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !21, !noalias !502
  %i.ll = zext i32 %i.lk to i64
  %i.lm = mul nsw i64 %i.go, %i.ll
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.lm ; 2 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !21, !noalias !502
  %i.lr = zext i32 %i.lq to i64
  %i.ls = mul nsw i64 %i.go, %i.lr
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.ls ; 2 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 12
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !21, !noalias !502
  %i.lx = zext i32 %i.lw to i64
  %i.ly = mul nsw i64 %i.go, %i.lx
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.ly ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.md = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.07583.i.i.i.i
  %i.mf = load <4 x float>, ptr %i.lh, align 4, !tbaa !201, !alias.scope !497, !noalias !503 ; 4 uses
  %i.mg = load <4 x float>, ptr %i.ln, align 4, !tbaa !201, !alias.scope !497, !noalias !503 ; 4 uses
  %i.mh = load <4 x float>, ptr %i.lt, align 4, !tbaa !201, !alias.scope !497, !noalias !503 ; 4 uses
  %i.mi = load <4 x float>, ptr %i.lz, align 4, !tbaa !201, !alias.scope !497, !noalias !503 ; 4 uses
  %i.mj = shufflevector <4 x float> %i.mf, <4 x float> %i.mg, <4 x i32> <i32 1, i32 4, i32 poison, i32 poison>
  %i.mk = shufflevector <4 x float> %i.mj, <4 x float> %i.mh, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.ml = shufflevector <4 x float> %i.mk, <4 x float> %i.mi, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.mm = fmul fast <4 x float> %i.ml, %15
  %i.mn = shufflevector <4 x float> %i.mf, <4 x float> %i.mg, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.mo = shufflevector <4 x float> %i.mn, <4 x float> %i.mh, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.mp = shufflevector <4 x float> %i.mo, <4 x float> %i.mi, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.mq = fmul fast <4 x float> %i.mp, %14
  %i.mr = fadd fast <4 x float> %i.mq, %i.mm
  %i.ms = shufflevector <4 x float> %i.mf, <4 x float> %i.mg, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.mt = shufflevector <4 x float> %i.ms, <4 x float> %i.mh, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.mu = shufflevector <4 x float> %i.mt, <4 x float> %i.mi, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.mv = fmul fast <4 x float> %i.mu, %17
  %i.mw = fadd fast <4 x float> %i.mr, %i.mv
  %i.mx = shufflevector <4 x float> %i.mf, <4 x float> %i.mg, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.my = shufflevector <4 x float> %i.mx, <4 x float> %i.mh, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.mz = shufflevector <4 x float> %i.my, <4 x float> %i.mi, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.na = fmul fast <4 x float> %i.mz, %i.kg
  %i.nb = fadd fast <4 x float> %i.mw, %i.na
  %i.nc = load <4 x float>, ptr %i.ma, align 4, !tbaa !201, !alias.scope !497, !noalias !503 ; 4 uses
  %i.nd = load <4 x float>, ptr %i.mb, align 4, !tbaa !201, !alias.scope !497, !noalias !503 ; 4 uses
  %i.ne = load <4 x float>, ptr %i.mc, align 4, !tbaa !201, !alias.scope !497, !noalias !503 ; 4 uses
  %i.nf = load <4 x float>, ptr %i.md, align 4, !tbaa !201, !alias.scope !497, !noalias !503 ; 4 uses
  %i.ng = shufflevector <4 x float> %i.nc, <4 x float> %i.nd, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.nh = shufflevector <4 x float> %i.ng, <4 x float> %i.ne, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ni = shufflevector <4 x float> %i.nh, <4 x float> %i.nf, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.nj = fmul fast <4 x float> %i.ni, %i.ki
  %i.nk = fadd fast <4 x float> %i.nb, %i.nj
  %i.nl = shufflevector <4 x float> %i.nc, <4 x float> %i.nd, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.nm = shufflevector <4 x float> %i.nl, <4 x float> %i.ne, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.nn = shufflevector <4 x float> %i.nm, <4 x float> %i.nf, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.no = fmul fast <4 x float> %i.nn, %i.kk
  %i.np = fadd fast <4 x float> %i.nk, %i.no
  %i.nq = shufflevector <4 x float> %i.nc, <4 x float> %i.nd, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.nr = shufflevector <4 x float> %i.nq, <4 x float> %i.ne, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.ns = shufflevector <4 x float> %i.nr, <4 x float> %i.nf, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.nt = fmul fast <4 x float> %i.ns, %i.km
  %i.nu = fadd fast <4 x float> %i.np, %i.nt
  %i.nv = shufflevector <4 x float> %i.nc, <4 x float> %i.nd, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.nw = shufflevector <4 x float> %i.nv, <4 x float> %i.ne, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.nx = shufflevector <4 x float> %i.nw, <4 x float> %i.nf, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ny = fmul fast <4 x float> %i.nx, %i.ko
  %i.nz = fadd fast <4 x float> %i.nu, %i.ny
  store <4 x float> %i.nz, ptr %i.me, align 4, !tbaa !201, !alias.scope !499, !noalias !504
  %i.oa = add i64 %i.lc, 4                        ; 2 uses
  %.not.i.i.i.i289 = icmp ugt i64 %i.oa, %.0607830
  br i1 %.not.i.i.i.i289, label %.preheader.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !505

.lr.ph87.i.i.i.i:                                 ; preds = %.lr.ph87.i.i.i.i.prol.loopexit, %.lr.ph87.i.i.i.i
  %.186.i.i.i.i = phi i64 [ %i.ou, %.lr.ph87.i.i.i.i ], [ %.186.i.i.i.i.unr, %.lr.ph87.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.186.i.i.i.i
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !21, !noalias !502
  %i.od = zext i32 %i.oc to i64
  %i.oe = mul nsw i64 %i.go, %i.od
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.oe
  %i.og = load <8 x float>, ptr %i.of, align 4, !tbaa !201, !alias.scope !497, !noalias !503
  %i.oh = fmul fast <8 x float> %i.og, %i.kq
  %i.oi = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.oh)
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.186.i.i.i.i
  store float %i.oi, ptr %i.oj, align 4, !tbaa !201, !alias.scope !499, !noalias !504
  %i.ok = add nuw i64 %.186.i.i.i.i, 1            ; 2 uses
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %i.ok
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !21, !noalias !502
  %i.on = zext i32 %i.om to i64
  %i.oo = mul nsw i64 %i.go, %i.on
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.oo
  %i.oq = load <8 x float>, ptr %i.op, align 4, !tbaa !201, !alias.scope !497, !noalias !503
  %i.or = fmul fast <8 x float> %i.oq, %i.kq
  %i.os = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.or)
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %i.ok
  store float %i.os, ptr %i.ot, align 4, !tbaa !201, !alias.scope !499, !noalias !504
  %i.ou = add nuw i64 %.186.i.i.i.i, 2            ; 2 uses
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %i.ou, %.0607830
  br i1 %exitcond.not.i.i.i.i.1, label %.lr.ph827, label %.lr.ph87.i.i.i.i, !llvm.loop !506

bb.bm:                                            ; preds = %.lr.ph833
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.jp ; 16 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !507)
  call void @llvm.experimental.noalias.scope.decl(metadata !510)
  call void @llvm.experimental.noalias.scope.decl(metadata !512)
  %.not82.i.i.i.i.i = icmp ult i64 %.0607830, 4
  br i1 %.not82.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.bm
  %i.ow = load <2 x float>, ptr %i.ov, align 4, !tbaa !201, !alias.scope !507, !noalias !514 ; 2 uses
  %18 = shufflevector <2 x float> %i.ow, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !201, !alias.scope !507, !noalias !514
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ov, i64 12
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !201, !alias.scope !507, !noalias !514
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ov, i64 16
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !201, !alias.scope !507, !noalias !514
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ov, i64 20
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !201, !alias.scope !507, !noalias !514
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ov, i64 24
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !201, !alias.scope !507, !noalias !514
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ov, i64 28
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !201, !alias.scope !507, !noalias !514
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ov, i64 32
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !201, !alias.scope !507, !noalias !514
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ov, i64 36
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !201, !alias.scope !507, !noalias !514
  %i.pn = getelementptr inbounds nuw i8, ptr %i.ov, i64 40
  %i.po = load float, ptr %i.pn, align 4, !tbaa !201, !alias.scope !507, !noalias !514
  %i.pp = getelementptr inbounds nuw i8, ptr %i.ov, i64 44
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !201, !alias.scope !507, !noalias !514
  %i.pr = getelementptr inbounds nuw i8, ptr %i.ov, i64 48
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !201, !alias.scope !507, !noalias !514
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ov, i64 52
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !201, !alias.scope !507, !noalias !514
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ov, i64 56
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !201, !alias.scope !507, !noalias !514
  %i.px = getelementptr inbounds nuw i8, ptr %i.ov, i64 60
  %i.py = load float, ptr %i.px, align 4, !tbaa !201, !alias.scope !507, !noalias !514
  %i.pz = insertelement <4 x float> poison, float %i.pg, i64 0
  %i.qa = shufflevector <4 x float> %i.pz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qb = insertelement <4 x float> poison, float %i.pi, i64 0
  %i.qc = shufflevector <4 x float> %i.qb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qd = insertelement <4 x float> poison, float %i.pk, i64 0
  %i.qe = shufflevector <4 x float> %i.qd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qf = insertelement <4 x float> poison, float %i.pm, i64 0
  %i.qg = shufflevector <4 x float> %i.qf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qh = insertelement <4 x float> poison, float %i.po, i64 0
  %i.qi = shufflevector <4 x float> %i.qh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qj = insertelement <4 x float> poison, float %i.pq, i64 0
  %i.qk = shufflevector <4 x float> %i.qj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ql = insertelement <4 x float> poison, float %i.ps, i64 0
  %i.qm = shufflevector <4 x float> %i.ql, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qn = insertelement <4 x float> poison, float %i.pu, i64 0
  %i.qo = shufflevector <4 x float> %i.qn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qp = insertelement <4 x float> poison, float %i.pw, i64 0
  %i.qq = shufflevector <4 x float> %i.qp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qr = insertelement <4 x float> poison, float %i.py, i64 0
  %i.qs = shufflevector <4 x float> %i.qr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qt = insertelement <4 x float> poison, float %i.pe, i64 0
  %i.qu = shufflevector <4 x float> %i.qt, <4 x float> poison, <4 x i32> zeroinitializer
  %19 = shufflevector <2 x float> %i.ow, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.qv = insertelement <4 x float> poison, float %i.oy, i64 0
  %i.qw = shufflevector <4 x float> %i.qv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qx = insertelement <4 x float> poison, float %i.pa, i64 0
  %i.qy = shufflevector <4 x float> %i.qx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qz = insertelement <4 x float> poison, float %i.pc, i64 0
  %i.ra = shufflevector <4 x float> %i.qz, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i, %bb.bm
  %.075.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.bm ], [ %i.rd, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.rb = icmp ult i64 %.075.lcssa.i.i.i.i.i, %.0607830
  br i1 %i.rb, label %.lr.ph87.preheader.i.i.i.i.i, label %.lr.ph827

.lr.ph87.preheader.i.i.i.i.i:                     ; preds = %.preheader.i.i.i.i.i
  %i.rc = load <16 x float>, ptr %i.ov, align 4, !tbaa !201, !alias.scope !507, !noalias !514
  br label %.lr.ph87.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %i.rd = phi i64 [ %i.wz, %.lr.ph.i.i.i.i.i ], [ 4, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.07583.i.i.i.i.i = phi i64 [ %i.rd, %.lr.ph.i.i.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i.i.i ] ; 5 uses
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i.i
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !21, !noalias !515
  %i.rg = zext i32 %i.rf to i64
  %i.rh = mul nsw i64 %i.gn, %i.rg
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.rh ; 6 uses
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i.i
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 4
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !21, !noalias !515
  %i.rm = zext i32 %i.rl to i64
  %i.rn = mul nsw i64 %i.gn, %i.rm
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.rn ; 6 uses
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i.i
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !21, !noalias !515
  %i.rs = zext i32 %i.rr to i64
  %i.rt = mul nsw i64 %i.gn, %i.rs
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.rt ; 6 uses
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i.i
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 12
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !21, !noalias !515
  %i.ry = zext i32 %i.rx to i64
  %i.rz = mul nsw i64 %i.gn, %i.ry
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.rz ; 6 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !201, !alias.scope !510, !noalias !516
  %i.sd = getelementptr inbounds nuw i8, ptr %i.ro, i64 16
  %i.se = load float, ptr %i.sd, align 4, !tbaa !201, !alias.scope !510, !noalias !516
  %i.sf = getelementptr inbounds nuw i8, ptr %i.ru, i64 16
  %i.sg = load float, ptr %i.sf, align 4, !tbaa !201, !alias.scope !510, !noalias !516
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sa, i64 16
  %i.si = load float, ptr %i.sh, align 4, !tbaa !201, !alias.scope !510, !noalias !516
  %i.sj = load <4 x float>, ptr %i.ri, align 4, !tbaa !201, !alias.scope !510, !noalias !516 ; 4 uses
  %i.sk = load <4 x float>, ptr %i.ro, align 4, !tbaa !201, !alias.scope !510, !noalias !516 ; 4 uses
  %i.sl = load <4 x float>, ptr %i.ru, align 4, !tbaa !201, !alias.scope !510, !noalias !516 ; 4 uses
  %i.sm = load <4 x float>, ptr %i.sa, align 4, !tbaa !201, !alias.scope !510, !noalias !516 ; 4 uses
  %i.sn = shufflevector <4 x float> %i.sj, <4 x float> %i.sk, <4 x i32> <i32 1, i32 4, i32 poison, i32 poison>
  %i.so = shufflevector <4 x float> %i.sn, <4 x float> %i.sl, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.sp = shufflevector <4 x float> %i.so, <4 x float> %i.sm, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.sq = fmul fast <4 x float> %i.sp, %19
  %i.sr = shufflevector <4 x float> %i.sj, <4 x float> %i.sk, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison>
  %i.ss = shufflevector <4 x float> %i.sr, <4 x float> %i.sl, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.st = shufflevector <4 x float> %i.ss, <4 x float> %i.sm, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.su = fmul fast <4 x float> %i.st, %18
  %i.sv = fadd fast <4 x float> %i.su, %i.sq
  %i.sw = shufflevector <4 x float> %i.sj, <4 x float> %i.sk, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.sx = shufflevector <4 x float> %i.sw, <4 x float> %i.sl, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.sy = shufflevector <4 x float> %i.sx, <4 x float> %i.sm, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.sz = fmul fast <4 x float> %i.sy, %i.qw
  %i.ta = fadd fast <4 x float> %i.sv, %i.sz
  %i.tb = shufflevector <4 x float> %i.sj, <4 x float> %i.sk, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.tc = shufflevector <4 x float> %i.tb, <4 x float> %i.sl, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.td = shufflevector <4 x float> %i.tc, <4 x float> %i.sm, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.te = fmul fast <4 x float> %i.td, %i.qy
  %i.tf = fadd fast <4 x float> %i.ta, %i.te
  %i.tg = insertelement <4 x float> poison, float %i.sc, i64 0
  %i.th = insertelement <4 x float> %i.tg, float %i.se, i64 1
  %i.ti = insertelement <4 x float> %i.th, float %i.sg, i64 2
  %i.tj = insertelement <4 x float> %i.ti, float %i.si, i64 3
  %i.tk = fmul fast <4 x float> %i.tj, %i.ra
  %i.tl = fadd fast <4 x float> %i.tf, %i.tk
  %i.tm = getelementptr inbounds nuw i8, ptr %i.ri, i64 20
  %i.tn = load float, ptr %i.tm, align 4, !tbaa !201, !alias.scope !510, !noalias !516
  %i.to = getelementptr inbounds nuw i8, ptr %i.ro, i64 20
  %i.tp = load float, ptr %i.to, align 4, !tbaa !201, !alias.scope !510, !noalias !516
  %i.tq = getelementptr inbounds nuw i8, ptr %i.ru, i64 20
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !201, !alias.scope !510, !noalias !516
  %i.ts = getelementptr inbounds nuw i8, ptr %i.sa, i64 20
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !201, !alias.scope !510, !noalias !516
  %i.tu = insertelement <4 x float> poison, float %i.tn, i64 0
  %i.tv = insertelement <4 x float> %i.tu, float %i.tp, i64 1
  %i.tw = insertelement <4 x float> %i.tv, float %i.tr, i64 2
  %i.tx = insertelement <4 x float> %i.tw, float %i.tt, i64 3
  %i.ty = fmul fast <4 x float> %i.tx, %i.qu
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ri, i64 24
  %i.ua = getelementptr inbounds nuw i8, ptr %i.ro, i64 24
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ru, i64 24
  %i.uc = getelementptr inbounds nuw i8, ptr %i.sa, i64 24
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ri, i64 40
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ro, i64 40
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ru, i64 40
  %i.ug = getelementptr inbounds nuw i8, ptr %i.sa, i64 40
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ri, i64 56
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ro, i64 56
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ru, i64 56
  %i.uk = getelementptr inbounds nuw i8, ptr %i.sa, i64 56
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.07583.i.i.i.i.i
  %i.um = fadd fast <4 x float> %i.tl, %i.ty
  %i.un = load <4 x float>, ptr %i.tz, align 4, !tbaa !201, !alias.scope !510, !noalias !516 ; 4 uses
  %i.uo = load <4 x float>, ptr %i.ua, align 4, !tbaa !201, !alias.scope !510, !noalias !516 ; 4 uses
  %i.up = load <4 x float>, ptr %i.ub, align 4, !tbaa !201, !alias.scope !510, !noalias !516 ; 4 uses
  %i.uq = load <4 x float>, ptr %i.uc, align 4, !tbaa !201, !alias.scope !510, !noalias !516 ; 4 uses
  %i.ur = shufflevector <4 x float> %i.un, <4 x float> %i.uo, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.us = shufflevector <4 x float> %i.ur, <4 x float> %i.up, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ut = shufflevector <4 x float> %i.us, <4 x float> %i.uq, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.uu = fmul fast <4 x float> %i.ut, %i.qa
  %i.uv = fadd fast <4 x float> %i.um, %i.uu
  %i.uw = shufflevector <4 x float> %i.un, <4 x float> %i.uo, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.ux = shufflevector <4 x float> %i.uw, <4 x float> %i.up, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.uy = shufflevector <4 x float> %i.ux, <4 x float> %i.uq, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.uz = fmul fast <4 x float> %i.uy, %i.qc
  %i.va = fadd fast <4 x float> %i.uv, %i.uz
  %i.vb = shufflevector <4 x float> %i.un, <4 x float> %i.uo, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.vc = shufflevector <4 x float> %i.vb, <4 x float> %i.up, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.vd = shufflevector <4 x float> %i.vc, <4 x float> %i.uq, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.ve = fmul fast <4 x float> %i.vd, %i.qe
  %i.vf = fadd fast <4 x float> %i.va, %i.ve
  %i.vg = shufflevector <4 x float> %i.un, <4 x float> %i.uo, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.vh = shufflevector <4 x float> %i.vg, <4 x float> %i.up, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.vi = shufflevector <4 x float> %i.vh, <4 x float> %i.uq, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.vj = fmul fast <4 x float> %i.vi, %i.qg
  %i.vk = fadd fast <4 x float> %i.vf, %i.vj
  %i.vl = load <4 x float>, ptr %i.ud, align 4, !tbaa !201, !alias.scope !510, !noalias !516 ; 4 uses
  %i.vm = load <4 x float>, ptr %i.ue, align 4, !tbaa !201, !alias.scope !510, !noalias !516 ; 4 uses
  %i.vn = load <4 x float>, ptr %i.uf, align 4, !tbaa !201, !alias.scope !510, !noalias !516 ; 4 uses
  %i.vo = load <4 x float>, ptr %i.ug, align 4, !tbaa !201, !alias.scope !510, !noalias !516 ; 4 uses
  %i.vp = shufflevector <4 x float> %i.vl, <4 x float> %i.vm, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.vq = shufflevector <4 x float> %i.vp, <4 x float> %i.vn, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.vr = shufflevector <4 x float> %i.vq, <4 x float> %i.vo, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.vs = fmul fast <4 x float> %i.vr, %i.qi
  %i.vt = fadd fast <4 x float> %i.vk, %i.vs
  %i.vu = shufflevector <4 x float> %i.vl, <4 x float> %i.vm, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.vv = shufflevector <4 x float> %i.vu, <4 x float> %i.vn, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.vw = shufflevector <4 x float> %i.vv, <4 x float> %i.vo, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.vx = fmul fast <4 x float> %i.vw, %i.qk
  %i.vy = fadd fast <4 x float> %i.vt, %i.vx
  %i.vz = shufflevector <4 x float> %i.vl, <4 x float> %i.vm, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.wa = shufflevector <4 x float> %i.vz, <4 x float> %i.vn, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.wb = shufflevector <4 x float> %i.wa, <4 x float> %i.vo, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.wc = fmul fast <4 x float> %i.wb, %i.qm
  %i.wd = fadd fast <4 x float> %i.vy, %i.wc
  %i.we = shufflevector <4 x float> %i.vl, <4 x float> %i.vm, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.wf = shufflevector <4 x float> %i.we, <4 x float> %i.vn, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.wg = shufflevector <4 x float> %i.wf, <4 x float> %i.vo, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.wh = fmul fast <4 x float> %i.wg, %i.qo
  %i.wi = fadd fast <4 x float> %i.wd, %i.wh
  %i.wj = load <2 x float>, ptr %i.uh, align 4, !tbaa !201, !alias.scope !510, !noalias !516 ; 2 uses
  %i.wk = load <2 x float>, ptr %i.ui, align 4, !tbaa !201, !alias.scope !510, !noalias !516 ; 2 uses
  %i.wl = load <2 x float>, ptr %i.uj, align 4, !tbaa !201, !alias.scope !510, !noalias !516
  %i.wm = load <2 x float>, ptr %i.uk, align 4, !tbaa !201, !alias.scope !510, !noalias !516
  %i.wn = shufflevector <2 x float> %i.wj, <2 x float> %i.wk, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.wo = shufflevector <2 x float> %i.wl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.wp = shufflevector <4 x float> %i.wn, <4 x float> %i.wo, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.wq = shufflevector <2 x float> %i.wm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.wr = shufflevector <4 x float> %i.wp, <4 x float> %i.wq, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ws = fmul fast <4 x float> %i.wr, %i.qq
  %i.wt = fadd fast <4 x float> %i.wi, %i.ws
  %i.wu = shufflevector <2 x float> %i.wj, <2 x float> %i.wk, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.wv = shufflevector <4 x float> %i.wu, <4 x float> %i.wo, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.ww = shufflevector <4 x float> %i.wv, <4 x float> %i.wq, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.wx = fmul fast <4 x float> %i.ww, %i.qs
  %i.wy = fadd fast <4 x float> %i.wt, %i.wx
  store <4 x float> %i.wy, ptr %i.ul, align 4, !tbaa !201, !alias.scope !512, !noalias !517
  %i.wz = add i64 %i.rd, 4                        ; 2 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.wz, %.0607830
  br i1 %.not.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !518

.lr.ph87.i.i.i.i.i:                               ; preds = %.lr.ph87.i.i.i.i.i, %.lr.ph87.preheader.i.i.i.i.i
  %.186.i.i.i.i.i = phi i64 [ %i.xj, %.lr.ph87.i.i.i.i.i ], [ %.075.lcssa.i.i.i.i.i, %.lr.ph87.preheader.i.i.i.i.i ] ; 3 uses
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.186.i.i.i.i.i
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !21, !noalias !515
  %i.xc = zext i32 %i.xb to i64
  %i.xd = mul nsw i64 %i.gn, %i.xc
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.xd
  %i.xf = load <16 x float>, ptr %i.xe, align 4, !tbaa !201, !alias.scope !510, !noalias !516
  %i.xg = fmul fast <16 x float> %i.xf, %i.rc
  %i.xh = call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %i.xg)
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.186.i.i.i.i.i
  store float %i.xh, ptr %i.xi, align 4, !tbaa !201, !alias.scope !512, !noalias !517
  %i.xj = add nuw i64 %.186.i.i.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.xj, %.0607830
  br i1 %exitcond.not.i.i.i.i.i, label %.lr.ph827, label %.lr.ph87.i.i.i.i.i, !llvm.loop !519

bb.bn:                                            ; preds = %.lr.ph833
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.jp ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !520)
  call void @llvm.experimental.noalias.scope.decl(metadata !523)
  call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %.not82.i.i.i.i.i.i = icmp ult i64 %.0607830, 4
  br i1 %.not82.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.bn
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 16
  %wide.load1395 = load <4 x float>, ptr %i.xk, align 4, !tbaa !201, !alias.scope !520, !noalias !527 ; 4 uses
  %wide.load1396 = load <4 x float>, ptr %i.xl, align 4, !tbaa !201, !alias.scope !520, !noalias !527 ; 4 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xk, i64 32
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xk, i64 48
  %wide.load1395.1 = load <4 x float>, ptr %i.xm, align 4, !tbaa !201, !alias.scope !520, !noalias !527 ; 4 uses
  %wide.load1396.1 = load <4 x float>, ptr %i.xn, align 4, !tbaa !201, !alias.scope !520, !noalias !527 ; 4 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xk, i64 64
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xk, i64 80
  %wide.load1395.2 = load <4 x float>, ptr %i.xo, align 4, !tbaa !201, !alias.scope !520, !noalias !527 ; 4 uses
  %wide.load1396.2 = load <4 x float>, ptr %i.xp, align 4, !tbaa !201, !alias.scope !520, !noalias !527 ; 4 uses
  br label %.lr.ph.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i, %bb.bn
  %.075.lcssa.i.i.i.i.i.i = phi i64 [ 0, %bb.bn ], [ %i.xs, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.xq = icmp ult i64 %.075.lcssa.i.i.i.i.i.i, %.0607830
  br i1 %i.xq, label %.lr.ph87.preheader.i.i.i.i.i.i, label %.lr.ph827

.lr.ph87.preheader.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i
  %i.xr = load <24 x float>, ptr %i.xk, align 4, !tbaa !201, !alias.scope !520, !noalias !527
  br label %.lr.ph87.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %i.xs = phi i64 [ %i.abg, %.lr.ph.i.i.i.i.i.i ], [ 4, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %.07583.i.i.i.i.i.i = phi i64 [ %i.xs, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ] ; 5 uses
  %i.xt = or disjoint i64 %.07583.i.i.i.i.i.i, 3  ; 2 uses
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %i.xt
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !21, !noalias !528
  %i.xw = zext i32 %i.xv to i64
  %i.xx = mul nsw i64 %i.gm, %i.xw
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.xx ; 6 uses
  %i.xz = or disjoint i64 %.07583.i.i.i.i.i.i, 2  ; 2 uses
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %i.xz
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !21, !noalias !528
  %i.yc = zext i32 %i.yb to i64
  %i.yd = mul nsw i64 %i.gm, %i.yc
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.yd ; 6 uses
  %i.yf = or disjoint i64 %.07583.i.i.i.i.i.i, 1  ; 2 uses
  %i.yg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %i.yf
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !21, !noalias !528
  %i.yi = zext i32 %i.yh to i64
  %i.yj = mul nsw i64 %i.gm, %i.yi
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.yj ; 6 uses
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.07583.i.i.i.i.i.i
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !21, !noalias !528
  %i.yn = zext i32 %i.ym to i64
  %i.yo = mul nsw i64 %i.gm, %i.yn
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.yo ; 6 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 16
  %wide.load1397 = load <4 x float>, ptr %i.yp, align 4, !tbaa !201, !alias.scope !523, !noalias !529
  %wide.load1398 = load <4 x float>, ptr %i.yq, align 4, !tbaa !201, !alias.scope !523, !noalias !529
  %i.yr = fmul fast <4 x float> %wide.load1397, %wide.load1395
  %i.ys = fmul fast <4 x float> %wide.load1398, %wide.load1396
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yk, i64 16
  %wide.load1399 = load <4 x float>, ptr %i.yk, align 4, !tbaa !201, !alias.scope !523, !noalias !529
  %wide.load1400 = load <4 x float>, ptr %i.yt, align 4, !tbaa !201, !alias.scope !523, !noalias !529
  %i.yu = fmul fast <4 x float> %wide.load1399, %wide.load1395
  %i.yv = fmul fast <4 x float> %wide.load1400, %wide.load1396
  %i.yw = getelementptr inbounds nuw i8, ptr %i.ye, i64 16
  %wide.load1401 = load <4 x float>, ptr %i.ye, align 4, !tbaa !201, !alias.scope !523, !noalias !529
  %wide.load1402 = load <4 x float>, ptr %i.yw, align 4, !tbaa !201, !alias.scope !523, !noalias !529
  %i.yx = fmul fast <4 x float> %wide.load1401, %wide.load1395
  %i.yy = fmul fast <4 x float> %wide.load1402, %wide.load1396
  %i.yz = getelementptr inbounds nuw i8, ptr %i.xy, i64 16
  %wide.load1403 = load <4 x float>, ptr %i.xy, align 4, !tbaa !201, !alias.scope !523, !noalias !529
  %wide.load1404 = load <4 x float>, ptr %i.yz, align 4, !tbaa !201, !alias.scope !523, !noalias !529
  %i.za = fmul fast <4 x float> %wide.load1403, %wide.load1395
  %i.zb = fmul fast <4 x float> %wide.load1404, %wide.load1396
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yp, i64 32
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yp, i64 48
  %wide.load1397.1 = load <4 x float>, ptr %i.zc, align 4, !tbaa !201, !alias.scope !523, !noalias !529
  %wide.load1398.1 = load <4 x float>, ptr %i.zd, align 4, !tbaa !201, !alias.scope !523, !noalias !529
  %i.ze = fmul fast <4 x float> %wide.load1397.1, %wide.load1395.1
  %i.zf = fmul fast <4 x float> %wide.load1398.1, %wide.load1396.1
  %i.zg = fadd fast <4 x float> %i.ze, %i.yr
  %i.zh = fadd fast <4 x float> %i.zf, %i.ys
  %i.zi = getelementptr inbounds nuw i8, ptr %i.yk, i64 32
  %i.zj = getelementptr inbounds nuw i8, ptr %i.yk, i64 48
  %wide.load1399.1 = load <4 x float>, ptr %i.zi, align 4, !tbaa !201, !alias.scope !523, !noalias !529
  %wide.load1400.1 = load <4 x float>, ptr %i.zj, align 4, !tbaa !201, !alias.scope !523, !noalias !529
  %i.zk = fmul fast <4 x float> %wide.load1399.1, %wide.load1395.1
  %i.zl = fmul fast <4 x float> %wide.load1400.1, %wide.load1396.1
  %i.zm = fadd fast <4 x float> %i.zk, %i.yu
  %i.zn = fadd fast <4 x float> %i.zl, %i.yv
  %i.zo = getelementptr inbounds nuw i8, ptr %i.ye, i64 32
  %i.zp = getelementptr inbounds nuw i8, ptr %i.ye, i64 48
  %wide.load1401.1 = load <4 x float>, ptr %i.zo, align 4, !tbaa !201, !alias.scope !523, !noalias !529
  %wide.load1402.1 = load <4 x float>, ptr %i.zp, align 4, !tbaa !201, !alias.scope !523, !noalias !529
  %i.zq = fmul fast <4 x float> %wide.load1401.1, %wide.load1395.1
  %i.zr = fmul fast <4 x float> %wide.load1402.1, %wide.load1396.1
  %i.zs = fadd fast <4 x float> %i.zq, %i.yx
  %i.zt = fadd fast <4 x float> %i.zr, %i.yy
  %i.zu = getelementptr inbounds nuw i8, ptr %i.xy, i64 32
  %i.zv = getelementptr inbounds nuw i8, ptr %i.xy, i64 48
  %wide.load1403.1 = load <4 x float>, ptr %i.zu, align 4, !tbaa !201, !alias.scope !523, !noalias !529
  %wide.load1404.1 = load <4 x float>, ptr %i.zv, align 4, !tbaa !201, !alias.scope !523, !noalias !529
  %i.zw = fmul fast <4 x float> %wide.load1403.1, %wide.load1395.1
  %i.zx = fmul fast <4 x float> %wide.load1404.1, %wide.load1396.1
  %i.zy = fadd fast <4 x float> %i.zw, %i.za
  %i.zz = fadd fast <4 x float> %i.zx, %i.zb
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.yp, i64 64
  %i.aab = getelementptr inbounds nuw i8, ptr %i.yp, i64 80
  %wide.load1397.2 = load <4 x float>, ptr %i.aaa, align 4, !tbaa !201, !alias.scope !523, !noalias !529
  %wide.load1398.2 = load <4 x float>, ptr %i.aab, align 4, !tbaa !201, !alias.scope !523, !noalias !529
  %i.aac = fmul fast <4 x float> %wide.load1397.2, %wide.load1395.2
  %i.aad = fmul fast <4 x float> %wide.load1398.2, %wide.load1396.2
  %i.aae = fadd fast <4 x float> %i.aac, %i.zg
  %i.aaf = fadd fast <4 x float> %i.aad, %i.zh
  %i.aag = getelementptr inbounds nuw i8, ptr %i.yk, i64 64
  %i.aah = getelementptr inbounds nuw i8, ptr %i.yk, i64 80
  %wide.load1399.2 = load <4 x float>, ptr %i.aag, align 4, !tbaa !201, !alias.scope !523, !noalias !529
  %wide.load1400.2 = load <4 x float>, ptr %i.aah, align 4, !tbaa !201, !alias.scope !523, !noalias !529
  %i.aai = fmul fast <4 x float> %wide.load1399.2, %wide.load1395.2
  %i.aaj = fmul fast <4 x float> %wide.load1400.2, %wide.load1396.2
  %i.aak = fadd fast <4 x float> %i.aai, %i.zm
  %i.aal = fadd fast <4 x float> %i.aaj, %i.zn
  %i.aam = getelementptr inbounds nuw i8, ptr %i.ye, i64 64
  %i.aan = getelementptr inbounds nuw i8, ptr %i.ye, i64 80
  %wide.load1401.2 = load <4 x float>, ptr %i.aam, align 4, !tbaa !201, !alias.scope !523, !noalias !529
  %wide.load1402.2 = load <4 x float>, ptr %i.aan, align 4, !tbaa !201, !alias.scope !523, !noalias !529
  %i.aao = fmul fast <4 x float> %wide.load1401.2, %wide.load1395.2
  %i.aap = fmul fast <4 x float> %wide.load1402.2, %wide.load1396.2
  %i.aaq = fadd fast <4 x float> %i.aao, %i.zs
  %i.aar = fadd fast <4 x float> %i.aap, %i.zt
  %i.aas = getelementptr inbounds nuw i8, ptr %i.xy, i64 64
  %i.aat = getelementptr inbounds nuw i8, ptr %i.xy, i64 80
  %wide.load1403.2 = load <4 x float>, ptr %i.aas, align 4, !tbaa !201, !alias.scope !523, !noalias !529
  %wide.load1404.2 = load <4 x float>, ptr %i.aat, align 4, !tbaa !201, !alias.scope !523, !noalias !529
  %i.aau = fmul fast <4 x float> %wide.load1403.2, %wide.load1395.2
  %i.aav = fmul fast <4 x float> %wide.load1404.2, %wide.load1396.2
  %i.aaw = fadd fast <4 x float> %i.aau, %i.zy
  %i.aax = fadd fast <4 x float> %i.aav, %i.zz
  %bin.rdx1410 = fadd fast <4 x float> %i.aaf, %i.aae
  %i.aay = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx1410)
  %bin.rdx1409 = fadd fast <4 x float> %i.aal, %i.aak
  %i.aaz = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx1409)
  %bin.rdx1408 = fadd fast <4 x float> %i.aar, %i.aaq
  %i.aba = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx1408)
  %bin.rdx1407 = fadd fast <4 x float> %i.aax, %i.aaw
  %i.abb = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx1407)
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.07583.i.i.i.i.i.i
  store float %i.aay, ptr %i.abc, align 4, !tbaa !201, !alias.scope !525, !noalias !530
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %i.yf
  store float %i.aaz, ptr %i.abd, align 4, !tbaa !201, !alias.scope !525, !noalias !530
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %i.xz
  store float %i.aba, ptr %i.abe, align 4, !tbaa !201, !alias.scope !525, !noalias !530
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %i.xt
  store float %i.abb, ptr %i.abf, align 4, !tbaa !201, !alias.scope !525, !noalias !530
  %i.abg = add i64 %i.xs, 4                       ; 2 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.abg, %.0607830
  br i1 %.not.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !531

.lr.ph87.i.i.i.i.i.i:                             ; preds = %.lr.ph87.i.i.i.i.i.i, %.lr.ph87.preheader.i.i.i.i.i.i
  %.186.i.i.i.i.i.i = phi i64 [ %i.abq, %.lr.ph87.i.i.i.i.i.i ], [ %.075.lcssa.i.i.i.i.i.i, %.lr.ph87.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0533.0617634, i64 %.186.i.i.i.i.i.i
  %i.abi = load i32, ptr %i.abh, align 4, !tbaa !21, !noalias !528
  %i.abj = zext i32 %i.abi to i64
  %i.abk = mul nsw i64 %i.gm, %i.abj
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %i.abk
  %i.abm = load <24 x float>, ptr %i.abl, align 4, !tbaa !201, !alias.scope !523, !noalias !529
  %i.abn = fmul fast <24 x float> %i.abm, %i.xr
  %i.abo = call fast float @llvm.vector.reduce.fadd.v24f32(float 0.000000e+00, <24 x float> %i.abn)
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0, i64 %.186.i.i.i.i.i.i
  store float %i.abo, ptr %i.abp, align 4, !tbaa !201, !alias.scope !525, !noalias !530
  %i.abq = add nuw i64 %.186.i.i.i.i.i.i, 1       ; 2 uses
  %exitcond94.not.i.i.i.i.i.i = icmp eq i64 %i.abq, %.0607830
  br i1 %exitcond94.not.i.i.i.i.i.i, label %.lr.ph827, label %.lr.ph87.i.i.i.i.i.i, !llvm.loop !532

bb.bo:                                            ; preds = %.lr.ph833
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %i.jp ; 9 uses
end_hunk_0
