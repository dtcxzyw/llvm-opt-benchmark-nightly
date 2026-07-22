inline.NumInlined: 6
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 32
begin_hunk_0_@partQ__align:bb.a
  %i.fo = phi i32 [ %.pre800, %bb.i ], [ %i.dc, %bb.h ]
  %i.fp = tail call i32 @llvm.smax.i32(i32 %i.fo, i32 %i.fn) ; 2 uses
  %i.fq = tail call i32 @llvm.smax.i32(i32 %i.fm, i32 %i.fl) ; 2 uses
  %i.fr = add nsw i32 %i.fp, 10
  %i.fs = add nsw i32 %i.fq, 10
  %i.ft = tail call ptr @AllocateIntMtx(i32 noundef %i.fr, i32 noundef %i.fs) #13 ; 2 uses
  store ptr %i.ft, ptr @commonIP, align 8, !tbaa !67
  store i32 %i.fp, ptr @commonAlloc1, align 4, !tbaa !4
  store i32 %i.fq, ptr @commonAlloc2, align 4, !tbaa !4
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge804, %bb.j
  %i.fu = phi ptr [ %.pre805, %._crit_edge804 ], [ %i.ft, %bb.j ]
  store ptr %i.fu, ptr @partQ__align.ijp, align 8, !tbaa !67
  %i.fv = load ptr, ptr @partQ__align.cpmx1, align 8, !tbaa !8
  tail call void @cpmx_calc_new(ptr noundef nonnull %0, ptr noundef %i.fv, ptr noundef %2, i32 noundef %i.l, i32 noundef %4) #13
  %i.fw = load ptr, ptr @partQ__align.cpmx2, align 8, !tbaa !8
  tail call void @cpmx_calc_new(ptr noundef nonnull %1, ptr noundef %i.fw, ptr noundef %3, i32 noundef %i.o, i32 noundef %5) #13
  %.not = icmp eq ptr %15, null
  %i.fx = load ptr, ptr @partQ__align.ogcp1g, align 8, !tbaa !12 ; 2 uses
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @new_OpeningGapCount_zure(ptr noundef %i.fx, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.l, ptr noundef nonnull %15, ptr noundef %17) #13
  %i.fy = load ptr, ptr @partQ__align.ogcp2g, align 8, !tbaa !12
  tail call void @new_OpeningGapCount_zure(ptr noundef %i.fy, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.o, ptr noundef %16, ptr noundef %18) #13
  %i.fz = load ptr, ptr @partQ__align.fgcp1g, align 8, !tbaa !12
  tail call void @new_FinalGapCount_zure(ptr noundef %i.fz, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.l, ptr noundef nonnull %15, ptr noundef %17) #13
  %i.ga = load ptr, ptr @partQ__align.fgcp2g, align 8, !tbaa !12
  tail call void @new_FinalGapCount_zure(ptr noundef %i.ga, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.o, ptr noundef %16, ptr noundef %18) #13
  %i.gb = load ptr, ptr @partQ__align.digf1, align 8, !tbaa !12
  tail call void @getdigapfreq_part(ptr noundef %i.gb, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.l, ptr noundef nonnull %15, ptr noundef %17) #13
  %i.gc = load ptr, ptr @partQ__align.digf2, align 8, !tbaa !12
  tail call void @getdigapfreq_part(ptr noundef %i.gc, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.o, ptr noundef %16, ptr noundef %18) #13
  %i.gd = load ptr, ptr @partQ__align.diaf1, align 8, !tbaa !12
  tail call void @getdiaminofreq_part(ptr noundef %i.gd, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.l, ptr noundef nonnull %15, ptr noundef %17) #13
  %i.ge = load ptr, ptr @partQ__align.diaf2, align 8, !tbaa !12
  tail call void @getdiaminofreq_part(ptr noundef %i.ge, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.o, ptr noundef %16, ptr noundef %18) #13
  %i.gf = load ptr, ptr @partQ__align.gapf1, align 8, !tbaa !12
  tail call void @getgapfreq(ptr noundef %i.gf, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.l) #13
  %i.gg = load ptr, ptr @partQ__align.gapf2, align 8, !tbaa !12
  tail call void @getgapfreq(ptr noundef %i.gg, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.o) #13
  %i.gh = load ptr, ptr @partQ__align.gapz1, align 8, !tbaa !12
  tail call void @getgapfreq_zure_part(ptr noundef %i.gh, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.l, ptr noundef nonnull %15) #13
  %i.gi = load ptr, ptr @partQ__align.gapz2, align 8, !tbaa !12
  tail call void @getgapfreq_zure_part(ptr noundef %i.gi, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.o, ptr noundef nonnull %15) #13
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void @st_OpeningGapCount(ptr noundef %i.fx, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.l) #13
  %i.gj = load ptr, ptr @partQ__align.ogcp2g, align 8, !tbaa !12
  tail call void @st_OpeningGapCount(ptr noundef %i.gj, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.o) #13
  %i.gk = load ptr, ptr @partQ__align.fgcp1g, align 8, !tbaa !12
  tail call void @st_FinalGapCount_zure(ptr noundef %i.gk, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.l) #13
  %i.gl = load ptr, ptr @partQ__align.fgcp2g, align 8, !tbaa !12
  tail call void @st_FinalGapCount_zure(ptr noundef %i.gl, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.o) #13
  %i.gm = load ptr, ptr @partQ__align.digf1, align 8, !tbaa !12
  tail call void @getdigapfreq_st(ptr noundef %i.gm, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.l) #13
  %i.gn = load ptr, ptr @partQ__align.digf2, align 8, !tbaa !12
  tail call void @getdigapfreq_st(ptr noundef %i.gn, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.o) #13
  %i.go = load ptr, ptr @partQ__align.diaf1, align 8, !tbaa !12
  tail call void @getdiaminofreq_x(ptr noundef %i.go, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.l) #13
  %i.gp = load ptr, ptr @partQ__align.diaf2, align 8, !tbaa !12
  tail call void @getdiaminofreq_x(ptr noundef %i.gp, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.o) #13
  %i.gq = load ptr, ptr @partQ__align.gapf1, align 8, !tbaa !12
  tail call void @getgapfreq(ptr noundef %i.gq, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.l) #13
  %i.gr = load ptr, ptr @partQ__align.gapf2, align 8, !tbaa !12
  tail call void @getgapfreq(ptr noundef %i.gr, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.o) #13
  %i.gs = load ptr, ptr @partQ__align.gapz1, align 8, !tbaa !12
  tail call void @getgapfreq_zure(ptr noundef %i.gs, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.l) #13
  %i.gt = load ptr, ptr @partQ__align.gapz2, align 8, !tbaa !12
  tail call void @getgapfreq_zure(ptr noundef %i.gt, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.o) #13
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.gu = icmp sgt i32 %i.o, -2
  br i1 %i.gu, label %.lr.ph650, label %._crit_edge651

.lr.ph650:                                        ; preds = %bb.n
  %i.gv = load ptr, ptr @partQ__align.ogcp2g, align 8, !tbaa !12 ; 8 uses
  %i.gw = load ptr, ptr @partQ__align.digf2, align 8, !tbaa !12 ; 8 uses
  %i.gx = fpext float %i.b to double              ; 5 uses
  %i.gy = load ptr, ptr @partQ__align.og_h_dg_n2_p, align 8, !tbaa !12 ; 4 uses
  %i.gz = load ptr, ptr @partQ__align.fgcp2g, align 8, !tbaa !12 ; 8 uses
  %i.ha = load ptr, ptr @partQ__align.fg_h_dg_n2_p, align 8, !tbaa !12 ; 8 uses
  %i.hb = load ptr, ptr @partQ__align.og_t_fg_h_dg_n2_p, align 8, !tbaa !12 ; 7 uses
  %i.hc = load ptr, ptr @partQ__align.fg_t_og_h_dg_n2_p, align 8, !tbaa !12 ; 7 uses
  %i.hd = load ptr, ptr @partQ__align.gapz2, align 8, !tbaa !12 ; 8 uses
  %i.he = load ptr, ptr @partQ__align.gapz_n2, align 8, !tbaa !12 ; 7 uses
  %i.hf = add i64 %i.n, 2                         ; 2 uses
  %wide.trip.count739 = and i64 %i.hf, 4294967295 ; 4 uses
  %min.iters.check999 = icmp samesign ult i64 %wide.trip.count739, 20
  br i1 %min.iters.check999, label %scalar.ph998.preheader, label %vector.memcheck874

vector.memcheck874:                               ; preds = %.lr.ph650
  %i.hg = shl nuw nsw i64 %wide.trip.count739, 2  ; 9 uses
  %scevgep = getelementptr i8, ptr %i.gy, i64 %i.hg
  %scevgep875 = getelementptr i8, ptr %i.ha, i64 %i.hg ; 5 uses
  %scevgep876 = getelementptr i8, ptr %i.hb, i64 %i.hg ; 4 uses
  %scevgep877 = getelementptr i8, ptr %i.hc, i64 %i.hg ; 4 uses
  %scevgep878 = getelementptr i8, ptr %i.he, i64 %i.hg ; 4 uses
  %scevgep879 = getelementptr i8, ptr %i.gv, i64 %i.hg ; 5 uses
  %scevgep880 = getelementptr i8, ptr %i.gw, i64 %i.hg ; 5 uses
  %scevgep881 = getelementptr i8, ptr %i.gz, i64 %i.hg ; 5 uses
  %scevgep882 = getelementptr i8, ptr %i.hd, i64 %i.hg ; 5 uses
  %i.hh = insertelement <8 x ptr> poison, ptr %i.gy, i64 0
  %i.hi = shufflevector <8 x ptr> %i.hh, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.hj = insertelement <8 x ptr> poison, ptr %scevgep875, i64 0
  %i.hk = insertelement <8 x ptr> %i.hj, ptr %scevgep876, i64 1
  %i.hl = insertelement <8 x ptr> %i.hk, ptr %scevgep877, i64 2
  %i.hm = insertelement <8 x ptr> %i.hl, ptr %scevgep878, i64 3
  %i.hn = insertelement <8 x ptr> %i.hm, ptr %scevgep879, i64 4
  %i.ho = insertelement <8 x ptr> %i.hn, ptr %scevgep880, i64 5
  %i.hp = insertelement <8 x ptr> %i.ho, ptr %scevgep881, i64 6
  %i.hq = insertelement <8 x ptr> %i.hp, ptr %scevgep882, i64 7
  %i.hr = icmp ult <8 x ptr> %i.hi, %i.hq
  %i.hs = insertelement <8 x ptr> poison, ptr %i.ha, i64 0
  %i.ht = insertelement <8 x ptr> %i.hs, ptr %i.hb, i64 1
  %i.hu = insertelement <8 x ptr> %i.ht, ptr %i.hc, i64 2
  %i.hv = insertelement <8 x ptr> %i.hu, ptr %i.he, i64 3
  %i.hw = insertelement <8 x ptr> %i.hv, ptr %i.gv, i64 4
  %i.hx = insertelement <8 x ptr> %i.hw, ptr %i.gw, i64 5
  %i.hy = insertelement <8 x ptr> %i.hx, ptr %i.gz, i64 6
  %i.hz = insertelement <8 x ptr> %i.hy, ptr %i.hd, i64 7
  %i.ia = insertelement <8 x ptr> poison, ptr %scevgep, i64 0
  %i.ib = shufflevector <8 x ptr> %i.ia, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.ic = icmp ult <8 x ptr> %i.hz, %i.ib
  %i.id = and <8 x i1> %i.hr, %i.ic               ; 2 uses
  %i.ie = insertelement <4 x ptr> poison, ptr %i.ha, i64 0
  %i.if = shufflevector <4 x ptr> %i.ie, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ig = insertelement <4 x ptr> poison, ptr %scevgep876, i64 0 ; 2 uses
  %i.ih = insertelement <4 x ptr> %i.ig, ptr %scevgep877, i64 1
  %i.ii = insertelement <4 x ptr> %i.ih, ptr %scevgep878, i64 2
  %i.ij = insertelement <4 x ptr> %i.ii, ptr %scevgep879, i64 3
  %i.ik = icmp ult <4 x ptr> %i.if, %i.ij
  %i.il = insertelement <4 x ptr> poison, ptr %i.hb, i64 0 ; 2 uses
  %i.im = insertelement <4 x ptr> %i.il, ptr %i.hc, i64 1
  %i.in = insertelement <4 x ptr> %i.im, ptr %i.he, i64 2
  %i.io = insertelement <4 x ptr> %i.in, ptr %i.gv, i64 3
  %i.ip = insertelement <4 x ptr> poison, ptr %scevgep875, i64 0
  %i.iq = shufflevector <4 x ptr> %i.ip, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ir = icmp ult <4 x ptr> %i.io, %i.iq
  %i.is = and <4 x i1> %i.ik, %i.ir
  %bound0926 = icmp ult ptr %i.ha, %scevgep880
  %bound1927 = icmp ult ptr %i.gw, %scevgep875
  %found.conflict928 = and i1 %bound0926, %bound1927
  %bound0930 = icmp ult ptr %i.ha, %scevgep881
  %bound1931 = icmp ult ptr %i.gz, %scevgep875
  %found.conflict932 = and i1 %bound0930, %bound1931
  %bound0934 = icmp ult ptr %i.ha, %scevgep882
  %bound1935 = icmp ult ptr %i.hd, %scevgep875
  %found.conflict936 = and i1 %bound0934, %bound1935
  %i.it = shufflevector <4 x ptr> %i.il, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.iu = insertelement <4 x ptr> poison, ptr %scevgep877, i64 0 ; 2 uses
  %i.iv = insertelement <4 x ptr> %i.iu, ptr %scevgep878, i64 1
  %i.iw = insertelement <4 x ptr> %i.iv, ptr %scevgep879, i64 2
  %i.ix = insertelement <4 x ptr> %i.iw, ptr %scevgep880, i64 3
  %i.iy = icmp ult <4 x ptr> %i.it, %i.ix
  %i.iz = insertelement <4 x ptr> poison, ptr %i.hc, i64 0 ; 2 uses
  %i.ja = insertelement <4 x ptr> %i.iz, ptr %i.he, i64 1
  %i.jb = insertelement <4 x ptr> %i.ja, ptr %i.gv, i64 2
  %i.jc = insertelement <4 x ptr> %i.jb, ptr %i.gw, i64 3
  %i.jd = shufflevector <4 x ptr> %i.ig, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.je = icmp ult <4 x ptr> %i.jc, %i.jd
  %i.jf = and <4 x i1> %i.iy, %i.je
  %bound0954 = icmp ult ptr %i.hb, %scevgep881
  %bound1955 = icmp ult ptr %i.gz, %scevgep876
  %found.conflict956 = and i1 %bound0954, %bound1955
  %bound0958 = icmp ult ptr %i.hb, %scevgep882
  %bound1959 = icmp ult ptr %i.hd, %scevgep876
  %found.conflict960 = and i1 %bound0958, %bound1959
  %i.jg = shufflevector <4 x ptr> %i.iz, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.jh = insertelement <4 x ptr> poison, ptr %scevgep878, i64 0 ; 2 uses
  %i.ji = insertelement <4 x ptr> %i.jh, ptr %scevgep879, i64 1
  %i.jj = insertelement <4 x ptr> %i.ji, ptr %scevgep880, i64 2
  %i.jk = insertelement <4 x ptr> %i.jj, ptr %scevgep881, i64 3
  %i.jl = icmp ult <4 x ptr> %i.jg, %i.jk
  %i.jm = insertelement <4 x ptr> poison, ptr %i.he, i64 0 ; 2 uses
  %i.jn = insertelement <4 x ptr> %i.jm, ptr %i.gv, i64 1
  %i.jo = insertelement <4 x ptr> %i.jn, ptr %i.gw, i64 2
  %i.jp = insertelement <4 x ptr> %i.jo, ptr %i.gz, i64 3
  %i.jq = shufflevector <4 x ptr> %i.iu, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.jr = icmp ult <4 x ptr> %i.jp, %i.jq
  %i.js = and <4 x i1> %i.jl, %i.jr
  %bound0978 = icmp ult ptr %i.hc, %scevgep882
  %bound1979 = icmp ult ptr %i.hd, %scevgep877
  %found.conflict980 = and i1 %bound0978, %bound1979
  %i.jt = shufflevector <4 x ptr> %i.jm, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ju = insertelement <4 x ptr> poison, ptr %scevgep879, i64 0
  %i.jv = insertelement <4 x ptr> %i.ju, ptr %scevgep880, i64 1
  %i.jw = insertelement <4 x ptr> %i.jv, ptr %scevgep881, i64 2
  %i.jx = insertelement <4 x ptr> %i.jw, ptr %scevgep882, i64 3
  %i.jy = icmp ult <4 x ptr> %i.jt, %i.jx
  %i.jz = insertelement <4 x ptr> poison, ptr %i.gv, i64 0
  %i.ka = insertelement <4 x ptr> %i.jz, ptr %i.gw, i64 1
  %i.kb = insertelement <4 x ptr> %i.ka, ptr %i.gz, i64 2
  %i.kc = insertelement <4 x ptr> %i.kb, ptr %i.hd, i64 3
  %i.kd = shufflevector <4 x ptr> %i.jh, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ke = icmp ult <4 x ptr> %i.kc, %i.kd
  %i.kf = and <4 x i1> %i.jy, %i.ke
  %19 = shufflevector <4 x i1> %i.is, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %20 = shufflevector <4 x i1> %i.jf, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %21 = or <8 x i1> %19, %20
  %22 = shufflevector <4 x i1> %i.js, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %23 = or <8 x i1> %21, %22
  %i.kg = shufflevector <4 x i1> %i.kf, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %24 = or <8 x i1> %23, %i.kg
  %i.kh = or <8 x i1> %24, %i.id
  %i.ki = shufflevector <8 x i1> %i.kh, <8 x i1> %i.id, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.kj = bitcast <8 x i1> %i.ki to i8
  %i.kk = icmp ne i8 %i.kj, 0
  %op.rdx1368 = or i1 %i.kk, %found.conflict928
  %op.rdx1369 = or i1 %found.conflict932, %found.conflict936
  %op.rdx1370 = or i1 %found.conflict956, %found.conflict960
  %op.rdx1371 = or i1 %op.rdx1368, %op.rdx1369
  %op.rdx1372 = or i1 %op.rdx1370, %found.conflict980
  %op.rdx1373 = or i1 %op.rdx1371, %op.rdx1372
  br i1 %op.rdx1373, label %scalar.ph998.preheader, label %vector.ph1000

vector.ph1000:                                    ; preds = %vector.memcheck874
  %n.vec1002 = and i64 %i.hf, 4294967292          ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.gx, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1003

vector.body1003:                                  ; preds = %vector.body1003, %vector.ph1000
  %index1004 = phi i64 [ 0, %vector.ph1000 ], [ %index.next1016, %vector.body1003 ] ; 10 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %index1004 ; 3 uses
  %wide.load1005 = load <4 x float>, ptr %i.kl, align 4, !tbaa !14, !alias.scope !77
  %i.km = fpext <4 x float> %wide.load1005 to <4 x double>
  %i.kn = fsub <4 x double> splat (double 1.000000e+00), %i.km
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %index1004 ; 4 uses
  %wide.load1006 = load <4 x float>, ptr %i.ko, align 4, !tbaa !14, !alias.scope !80
  %i.kp = fpext <4 x float> %wide.load1006 to <4 x double>
  %i.kq = fsub <4 x double> %i.kn, %i.kp
  %i.kr = fmul <4 x double> %i.kq, %broadcast.splat
  %i.ks = fmul <4 x double> %i.kr, splat (double 5.000000e-01)
  %i.kt = fptrunc <4 x double> %i.ks to <4 x float>
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %index1004
  store <4 x float> %i.kt, ptr %i.ku, align 4, !tbaa !14, !alias.scope !82, !noalias !84
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %index1004 ; 3 uses
  %wide.load1007 = load <4 x float>, ptr %i.kv, align 4, !tbaa !14, !alias.scope !91
  %i.kw = fpext <4 x float> %wide.load1007 to <4 x double>
  %i.kx = fsub <4 x double> splat (double 1.000000e+00), %i.kw
  %wide.load1008 = load <4 x float>, ptr %i.ko, align 4, !tbaa !14, !alias.scope !80
  %i.ky = fpext <4 x float> %wide.load1008 to <4 x double>
  %i.kz = fsub <4 x double> %i.kx, %i.ky
  %i.la = fmul <4 x double> %i.kz, %broadcast.splat
  %i.lb = fmul <4 x double> %i.la, splat (double 5.000000e-01)
  %i.lc = fptrunc <4 x double> %i.lb to <4 x float>
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %index1004
  store <4 x float> %i.lc, ptr %i.ld, align 4, !tbaa !14, !alias.scope !92, !noalias !93
  %wide.load1009 = load <4 x float>, ptr %i.kl, align 4, !tbaa !14, !alias.scope !77
  %i.le = fpext <4 x float> %wide.load1009 to <4 x double>
  %i.lf = fsub <4 x double> splat (double 1.000000e+00), %i.le
  %wide.load1010 = load <4 x float>, ptr %i.kv, align 4, !tbaa !14, !alias.scope !91
  %i.lg = fpext <4 x float> %wide.load1010 to <4 x double>
  %i.lh = fadd <4 x double> %i.lf, %i.lg
  %wide.load1011 = load <4 x float>, ptr %i.ko, align 4, !tbaa !14, !alias.scope !80
  %i.li = fpext <4 x float> %wide.load1011 to <4 x double>
  %i.lj = fsub <4 x double> %i.lh, %i.li
  %i.lk = fmul <4 x double> %i.lj, splat (double 5.000000e-01)
  %i.ll = fmul <4 x double> %i.lk, %broadcast.splat
  %i.lm = fptrunc <4 x double> %i.ll to <4 x float>
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %index1004
  store <4 x float> %i.lm, ptr %i.ln, align 4, !tbaa !14, !alias.scope !94, !noalias !95
  %wide.load1012 = load <4 x float>, ptr %i.kv, align 4, !tbaa !14, !alias.scope !91
  %i.lo = fpext <4 x float> %wide.load1012 to <4 x double>
  %i.lp = fsub <4 x double> splat (double 1.000000e+00), %i.lo
  %wide.load1013 = load <4 x float>, ptr %i.kl, align 4, !tbaa !14, !alias.scope !77
  %i.lq = fpext <4 x float> %wide.load1013 to <4 x double>
  %i.lr = fadd <4 x double> %i.lp, %i.lq
  %wide.load1014 = load <4 x float>, ptr %i.ko, align 4, !tbaa !14, !alias.scope !80
  %i.ls = fpext <4 x float> %wide.load1014 to <4 x double>
  %i.lt = fsub <4 x double> %i.lr, %i.ls
  %i.lu = fmul <4 x double> %i.lt, splat (double 5.000000e-01)
  %i.lv = fmul <4 x double> %i.lu, %broadcast.splat
  %i.lw = fptrunc <4 x double> %i.lv to <4 x float>
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %index1004
  store <4 x float> %i.lw, ptr %i.lx, align 4, !tbaa !14, !alias.scope !96, !noalias !97
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %index1004
  %wide.load1015 = load <4 x float>, ptr %i.ly, align 4, !tbaa !14, !alias.scope !98
  %i.lz = fsub <4 x float> splat (float 1.000000e+00), %wide.load1015
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %index1004
  store <4 x float> %i.lz, ptr %i.ma, align 4, !tbaa !14, !alias.scope !99, !noalias !100
  %index.next1016 = add nuw i64 %index1004, 4     ; 2 uses
  %i.mb = icmp eq i64 %index.next1016, %n.vec1002
  br i1 %i.mb, label %middle.block1017, label %vector.body1003, !llvm.loop !101

middle.block1017:                                 ; preds = %vector.body1003
  %cmp.n1018 = icmp eq i64 %wide.trip.count739, %n.vec1002
  br i1 %cmp.n1018, label %._crit_edge651, label %scalar.ph998.preheader

scalar.ph998.preheader:                           ; preds = %vector.memcheck874, %.lr.ph650, %middle.block1017
  %indvars.iv736.ph = phi i64 [ 0, %vector.memcheck874 ], [ 0, %.lr.ph650 ], [ %n.vec1002, %middle.block1017 ]
  br label %scalar.ph998

scalar.ph998:                                     ; preds = %scalar.ph998.preheader, %scalar.ph998
  %indvars.iv736 = phi i64 [ %indvars.iv.next737, %scalar.ph998 ], [ %indvars.iv736.ph, %scalar.ph998.preheader ] ; 10 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv736 ; 3 uses
  %i.md = load float, ptr %i.mc, align 4, !tbaa !14
  %i.me = fpext float %i.md to double
  %i.mf = fsub double 1.000000e+00, %i.me
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv736 ; 4 uses
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !14
  %i.mi = fpext float %i.mh to double
  %i.mj = fsub double %i.mf, %i.mi
  %i.mk = fmul double %i.mj, %i.gx
  %i.ml = fmul double %i.mk, 5.000000e-01
  %i.mm = fptrunc double %i.ml to float
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %indvars.iv736
  store float %i.mm, ptr %i.mn, align 4, !tbaa !14
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv736 ; 3 uses
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !14
  %i.mq = fpext float %i.mp to double
  %i.mr = fsub double 1.000000e+00, %i.mq
  %i.ms = load float, ptr %i.mg, align 4, !tbaa !14
  %i.mt = fpext float %i.ms to double
  %i.mu = fsub double %i.mr, %i.mt
  %i.mv = fmul double %i.mu, %i.gx
  %i.mw = fmul double %i.mv, 5.000000e-01
  %i.mx = fptrunc double %i.mw to float
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv736
  store float %i.mx, ptr %i.my, align 4, !tbaa !14
  %i.mz = load float, ptr %i.mc, align 4, !tbaa !14
  %i.na = fpext float %i.mz to double
  %i.nb = fsub double 1.000000e+00, %i.na
  %i.nc = load float, ptr %i.mo, align 4, !tbaa !14
  %i.nd = fpext float %i.nc to double
  %i.ne = fadd double %i.nb, %i.nd
  %i.nf = load float, ptr %i.mg, align 4, !tbaa !14
  %i.ng = fpext float %i.nf to double
  %i.nh = fsub double %i.ne, %i.ng
  %i.ni = fmul double %i.nh, 5.000000e-01
  %i.nj = fmul double %i.ni, %i.gx
  %i.nk = fptrunc double %i.nj to float
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %indvars.iv736
  store float %i.nk, ptr %i.nl, align 4, !tbaa !14
  %i.nm = load float, ptr %i.mo, align 4, !tbaa !14
  %i.nn = fpext float %i.nm to double
  %i.no = fsub double 1.000000e+00, %i.nn
  %i.np = load float, ptr %i.mc, align 4, !tbaa !14
  %i.nq = fpext float %i.np to double
  %i.nr = fadd double %i.no, %i.nq
  %i.ns = load float, ptr %i.mg, align 4, !tbaa !14
  %i.nt = fpext float %i.ns to double
  %i.nu = fsub double %i.nr, %i.nt
  %i.nv = fmul double %i.nu, 5.000000e-01
  %i.nw = fmul double %i.nv, %i.gx
  %i.nx = fptrunc double %i.nw to float
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv736
  store float %i.nx, ptr %i.ny, align 4, !tbaa !14
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv736
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !14
  %i.ob = fsub float 1.000000e+00, %i.oa
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv736
  store float %i.ob, ptr %i.oc, align 4, !tbaa !14
  %indvars.iv.next737 = add nuw nsw i64 %indvars.iv736, 1 ; 2 uses
  %exitcond740 = icmp eq i64 %indvars.iv.next737, %wide.trip.count739
  br i1 %exitcond740, label %._crit_edge651, label %scalar.ph998, !llvm.loop !102

._crit_edge651:                                   ; preds = %scalar.ph998, %middle.block1017, %bb.n
  %i.od = icmp sgt i32 %i.l, -2
  br i1 %i.od, label %.lr.ph654, label %._crit_edge655

.lr.ph654:                                        ; preds = %._crit_edge651
  %i.oe = load ptr, ptr @partQ__align.ogcp1g, align 8, !tbaa !12 ; 8 uses
  %i.of = load ptr, ptr @partQ__align.digf1, align 8, !tbaa !12 ; 8 uses
  %i.og = fpext float %i.b to double              ; 5 uses
  %i.oh = load ptr, ptr @partQ__align.og_h_dg_n1_p, align 8, !tbaa !12 ; 4 uses
  %i.oi = load ptr, ptr @partQ__align.fgcp1g, align 8, !tbaa !12 ; 8 uses
  %i.oj = load ptr, ptr @partQ__align.fg_h_dg_n1_p, align 8, !tbaa !12 ; 8 uses
  %i.ok = load ptr, ptr @partQ__align.og_t_fg_h_dg_n1_p, align 8, !tbaa !12 ; 7 uses
  %i.ol = load ptr, ptr @partQ__align.fg_t_og_h_dg_n1_p, align 8, !tbaa !12 ; 7 uses
  %i.om = load ptr, ptr @partQ__align.gapz1, align 8, !tbaa !12 ; 8 uses
  %i.on = load ptr, ptr @partQ__align.gapz_n1, align 8, !tbaa !12 ; 7 uses
  %i.oo = add i64 %i.k, 2                         ; 2 uses
  %wide.trip.count744 = and i64 %i.oo, 4294967295 ; 4 uses
  %min.iters.check1150 = icmp samesign ult i64 %wide.trip.count744, 20
  br i1 %min.iters.check1150, label %scalar.ph1149.preheader, label %vector.memcheck1020

vector.memcheck1020:                              ; preds = %.lr.ph654
  %i.op = shl nuw nsw i64 %wide.trip.count744, 2  ; 9 uses
  %scevgep1021 = getelementptr i8, ptr %i.oh, i64 %i.op
  %scevgep1022 = getelementptr i8, ptr %i.oj, i64 %i.op ; 5 uses
  %scevgep1023 = getelementptr i8, ptr %i.ok, i64 %i.op ; 4 uses
  %scevgep1024 = getelementptr i8, ptr %i.ol, i64 %i.op ; 4 uses
  %scevgep1025 = getelementptr i8, ptr %i.on, i64 %i.op ; 4 uses
  %scevgep1026 = getelementptr i8, ptr %i.oe, i64 %i.op ; 5 uses
  %scevgep1027 = getelementptr i8, ptr %i.of, i64 %i.op ; 5 uses
  %scevgep1028 = getelementptr i8, ptr %i.oi, i64 %i.op ; 5 uses
  %scevgep1029 = getelementptr i8, ptr %i.om, i64 %i.op ; 5 uses
  %i.oq = insertelement <8 x ptr> poison, ptr %i.oh, i64 0
  %i.or = shufflevector <8 x ptr> %i.oq, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.os = insertelement <8 x ptr> poison, ptr %scevgep1022, i64 0
  %i.ot = insertelement <8 x ptr> %i.os, ptr %scevgep1023, i64 1
  %i.ou = insertelement <8 x ptr> %i.ot, ptr %scevgep1024, i64 2
  %i.ov = insertelement <8 x ptr> %i.ou, ptr %scevgep1025, i64 3
  %i.ow = insertelement <8 x ptr> %i.ov, ptr %scevgep1026, i64 4
  %i.ox = insertelement <8 x ptr> %i.ow, ptr %scevgep1027, i64 5
  %i.oy = insertelement <8 x ptr> %i.ox, ptr %scevgep1028, i64 6
  %i.oz = insertelement <8 x ptr> %i.oy, ptr %scevgep1029, i64 7
  %i.pa = icmp ult <8 x ptr> %i.or, %i.oz
  %i.pb = insertelement <8 x ptr> poison, ptr %i.oj, i64 0
  %i.pc = insertelement <8 x ptr> %i.pb, ptr %i.ok, i64 1
  %i.pd = insertelement <8 x ptr> %i.pc, ptr %i.ol, i64 2
  %i.pe = insertelement <8 x ptr> %i.pd, ptr %i.on, i64 3
  %i.pf = insertelement <8 x ptr> %i.pe, ptr %i.oe, i64 4
  %i.pg = insertelement <8 x ptr> %i.pf, ptr %i.of, i64 5
  %i.ph = insertelement <8 x ptr> %i.pg, ptr %i.oi, i64 6
  %i.pi = insertelement <8 x ptr> %i.ph, ptr %i.om, i64 7
  %i.pj = insertelement <8 x ptr> poison, ptr %scevgep1021, i64 0
  %i.pk = shufflevector <8 x ptr> %i.pj, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.pl = icmp ult <8 x ptr> %i.pi, %i.pk
  %i.pm = and <8 x i1> %i.pa, %i.pl               ; 2 uses
  %i.pn = insertelement <4 x ptr> poison, ptr %i.oj, i64 0
  %i.po = shufflevector <4 x ptr> %i.pn, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.pp = insertelement <4 x ptr> poison, ptr %scevgep1023, i64 0 ; 2 uses
  %i.pq = insertelement <4 x ptr> %i.pp, ptr %scevgep1024, i64 1
  %i.pr = insertelement <4 x ptr> %i.pq, ptr %scevgep1025, i64 2
  %i.ps = insertelement <4 x ptr> %i.pr, ptr %scevgep1026, i64 3
  %i.pt = icmp ult <4 x ptr> %i.po, %i.ps
  %i.pu = insertelement <4 x ptr> poison, ptr %i.ok, i64 0 ; 2 uses
  %i.pv = insertelement <4 x ptr> %i.pu, ptr %i.ol, i64 1
  %i.pw = insertelement <4 x ptr> %i.pv, ptr %i.on, i64 2
  %i.px = insertelement <4 x ptr> %i.pw, ptr %i.oe, i64 3
  %i.py = insertelement <4 x ptr> poison, ptr %scevgep1022, i64 0
  %i.pz = shufflevector <4 x ptr> %i.py, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.qa = icmp ult <4 x ptr> %i.px, %i.pz
  %i.qb = and <4 x i1> %i.pt, %i.qa
  %bound01077 = icmp ult ptr %i.oj, %scevgep1027
  %bound11078 = icmp ult ptr %i.of, %scevgep1022
  %found.conflict1079 = and i1 %bound01077, %bound11078
  %bound01081 = icmp ult ptr %i.oj, %scevgep1028
  %bound11082 = icmp ult ptr %i.oi, %scevgep1022
  %found.conflict1083 = and i1 %bound01081, %bound11082
  %bound01085 = icmp ult ptr %i.oj, %scevgep1029
  %bound11086 = icmp ult ptr %i.om, %scevgep1022
  %found.conflict1087 = and i1 %bound01085, %bound11086
  %i.qc = shufflevector <4 x ptr> %i.pu, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.qd = insertelement <4 x ptr> poison, ptr %scevgep1024, i64 0 ; 2 uses
  %i.qe = insertelement <4 x ptr> %i.qd, ptr %scevgep1025, i64 1
  %i.qf = insertelement <4 x ptr> %i.qe, ptr %scevgep1026, i64 2
  %i.qg = insertelement <4 x ptr> %i.qf, ptr %scevgep1027, i64 3
  %i.qh = icmp ult <4 x ptr> %i.qc, %i.qg
  %i.qi = insertelement <4 x ptr> poison, ptr %i.ol, i64 0 ; 2 uses
  %i.qj = insertelement <4 x ptr> %i.qi, ptr %i.on, i64 1
  %i.qk = insertelement <4 x ptr> %i.qj, ptr %i.oe, i64 2
  %i.ql = insertelement <4 x ptr> %i.qk, ptr %i.of, i64 3
  %i.qm = shufflevector <4 x ptr> %i.pp, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.qn = icmp ult <4 x ptr> %i.ql, %i.qm
  %i.qo = and <4 x i1> %i.qh, %i.qn
  %bound01105 = icmp ult ptr %i.ok, %scevgep1028
  %bound11106 = icmp ult ptr %i.oi, %scevgep1023
  %found.conflict1107 = and i1 %bound01105, %bound11106
  %bound01109 = icmp ult ptr %i.ok, %scevgep1029
  %bound11110 = icmp ult ptr %i.om, %scevgep1023
  %found.conflict1111 = and i1 %bound01109, %bound11110
  %i.qp = shufflevector <4 x ptr> %i.qi, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.qq = insertelement <4 x ptr> poison, ptr %scevgep1025, i64 0 ; 2 uses
  %i.qr = insertelement <4 x ptr> %i.qq, ptr %scevgep1026, i64 1
  %i.qs = insertelement <4 x ptr> %i.qr, ptr %scevgep1027, i64 2
  %i.qt = insertelement <4 x ptr> %i.qs, ptr %scevgep1028, i64 3
  %i.qu = icmp ult <4 x ptr> %i.qp, %i.qt
  %i.qv = insertelement <4 x ptr> poison, ptr %i.on, i64 0 ; 2 uses
  %i.qw = insertelement <4 x ptr> %i.qv, ptr %i.oe, i64 1
  %i.qx = insertelement <4 x ptr> %i.qw, ptr %i.of, i64 2
  %i.qy = insertelement <4 x ptr> %i.qx, ptr %i.oi, i64 3
  %i.qz = shufflevector <4 x ptr> %i.qd, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ra = icmp ult <4 x ptr> %i.qy, %i.qz
  %i.rb = and <4 x i1> %i.qu, %i.ra
  %bound01129 = icmp ult ptr %i.ol, %scevgep1029
  %bound11130 = icmp ult ptr %i.om, %scevgep1024
  %found.conflict1131 = and i1 %bound01129, %bound11130
  %i.rc = shufflevector <4 x ptr> %i.qv, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.rd = insertelement <4 x ptr> poison, ptr %scevgep1026, i64 0
  %i.re = insertelement <4 x ptr> %i.rd, ptr %scevgep1027, i64 1
  %i.rf = insertelement <4 x ptr> %i.re, ptr %scevgep1028, i64 2
  %i.rg = insertelement <4 x ptr> %i.rf, ptr %scevgep1029, i64 3
  %i.rh = icmp ult <4 x ptr> %i.rc, %i.rg
  %i.ri = insertelement <4 x ptr> poison, ptr %i.oe, i64 0
  %i.rj = insertelement <4 x ptr> %i.ri, ptr %i.of, i64 1
  %i.rk = insertelement <4 x ptr> %i.rj, ptr %i.oi, i64 2
  %i.rl = insertelement <4 x ptr> %i.rk, ptr %i.om, i64 3
  %i.rm = shufflevector <4 x ptr> %i.qq, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.rn = icmp ult <4 x ptr> %i.rl, %i.rm
  %i.ro = and <4 x i1> %i.rh, %i.rn
  %25 = shufflevector <4 x i1> %i.qb, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %26 = shufflevector <4 x i1> %i.qo, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %27 = or <8 x i1> %25, %26
  %28 = shufflevector <4 x i1> %i.rb, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %29 = or <8 x i1> %27, %28
  %i.rp = shufflevector <4 x i1> %i.ro, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %30 = or <8 x i1> %29, %i.rp
  %i.rq = or <8 x i1> %30, %i.pm
  %i.rr = shufflevector <8 x i1> %i.rq, <8 x i1> %i.pm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.rs = bitcast <8 x i1> %i.rr to i8
  %i.rt = icmp ne i8 %i.rs, 0
  %op.rdx = or i1 %i.rt, %found.conflict1079
  %op.rdx1359 = or i1 %found.conflict1083, %found.conflict1087
  %op.rdx1360 = or i1 %found.conflict1107, %found.conflict1111
  %op.rdx1361 = or i1 %op.rdx, %op.rdx1359
  %op.rdx1362 = or i1 %op.rdx1360, %found.conflict1131
  %op.rdx1363 = or i1 %op.rdx1361, %op.rdx1362
  br i1 %op.rdx1363, label %scalar.ph1149.preheader, label %vector.ph1151

vector.ph1151:                                    ; preds = %vector.memcheck1020
  %n.vec1153 = and i64 %i.oo, 4294967292          ; 3 uses
  %broadcast.splatinsert1154 = insertelement <4 x double> poison, double %i.og, i64 0
  %broadcast.splat1155 = shufflevector <4 x double> %broadcast.splatinsert1154, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1156

vector.body1156:                                  ; preds = %vector.body1156, %vector.ph1151
  %index1157 = phi i64 [ 0, %vector.ph1151 ], [ %index.next1169, %vector.body1156 ] ; 10 uses
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %index1157 ; 3 uses
  %wide.load1158 = load <4 x float>, ptr %i.ru, align 4, !tbaa !14, !alias.scope !103
  %i.rv = fpext <4 x float> %wide.load1158 to <4 x double>
  %i.rw = fsub <4 x double> splat (double 1.000000e+00), %i.rv
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %index1157 ; 4 uses
  %wide.load1159 = load <4 x float>, ptr %i.rx, align 4, !tbaa !14, !alias.scope !106
  %i.ry = fpext <4 x float> %wide.load1159 to <4 x double>
  %i.rz = fsub <4 x double> %i.rw, %i.ry
  %i.sa = fmul <4 x double> %i.rz, %broadcast.splat1155
  %i.sb = fmul <4 x double> %i.sa, splat (double 5.000000e-01)
  %i.sc = fptrunc <4 x double> %i.sb to <4 x float>
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %index1157
  store <4 x float> %i.sc, ptr %i.sd, align 4, !tbaa !14, !alias.scope !108, !noalias !110
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %index1157 ; 3 uses
  %wide.load1160 = load <4 x float>, ptr %i.se, align 4, !tbaa !14, !alias.scope !117
  %i.sf = fpext <4 x float> %wide.load1160 to <4 x double>
  %i.sg = fsub <4 x double> splat (double 1.000000e+00), %i.sf
  %wide.load1161 = load <4 x float>, ptr %i.rx, align 4, !tbaa !14, !alias.scope !106
  %i.sh = fpext <4 x float> %wide.load1161 to <4 x double>
  %i.si = fsub <4 x double> %i.sg, %i.sh
  %i.sj = fmul <4 x double> %i.si, %broadcast.splat1155
  %i.sk = fmul <4 x double> %i.sj, splat (double 5.000000e-01)
  %i.sl = fptrunc <4 x double> %i.sk to <4 x float>
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %index1157
  store <4 x float> %i.sl, ptr %i.sm, align 4, !tbaa !14, !alias.scope !118, !noalias !119
  %wide.load1162 = load <4 x float>, ptr %i.ru, align 4, !tbaa !14, !alias.scope !103
  %i.sn = fpext <4 x float> %wide.load1162 to <4 x double>
  %i.so = fsub <4 x double> splat (double 1.000000e+00), %i.sn
  %wide.load1163 = load <4 x float>, ptr %i.se, align 4, !tbaa !14, !alias.scope !117
  %i.sp = fpext <4 x float> %wide.load1163 to <4 x double>
  %i.sq = fadd <4 x double> %i.so, %i.sp
  %wide.load1164 = load <4 x float>, ptr %i.rx, align 4, !tbaa !14, !alias.scope !106
  %i.sr = fpext <4 x float> %wide.load1164 to <4 x double>
  %i.ss = fsub <4 x double> %i.sq, %i.sr
  %i.st = fmul <4 x double> %i.ss, splat (double 5.000000e-01)
  %i.su = fmul <4 x double> %i.st, %broadcast.splat1155
  %i.sv = fptrunc <4 x double> %i.su to <4 x float>
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %index1157
  store <4 x float> %i.sv, ptr %i.sw, align 4, !tbaa !14, !alias.scope !120, !noalias !121
  %wide.load1165 = load <4 x float>, ptr %i.se, align 4, !tbaa !14, !alias.scope !117
  %i.sx = fpext <4 x float> %wide.load1165 to <4 x double>
  %i.sy = fsub <4 x double> splat (double 1.000000e+00), %i.sx
  %wide.load1166 = load <4 x float>, ptr %i.ru, align 4, !tbaa !14, !alias.scope !103
  %i.sz = fpext <4 x float> %wide.load1166 to <4 x double>
  %i.ta = fadd <4 x double> %i.sy, %i.sz
  %wide.load1167 = load <4 x float>, ptr %i.rx, align 4, !tbaa !14, !alias.scope !106
  %i.tb = fpext <4 x float> %wide.load1167 to <4 x double>
  %i.tc = fsub <4 x double> %i.ta, %i.tb
  %i.td = fmul <4 x double> %i.tc, splat (double 5.000000e-01)
  %i.te = fmul <4 x double> %i.td, %broadcast.splat1155
  %i.tf = fptrunc <4 x double> %i.te to <4 x float>
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %index1157
  store <4 x float> %i.tf, ptr %i.tg, align 4, !tbaa !14, !alias.scope !122, !noalias !123
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %index1157
  %wide.load1168 = load <4 x float>, ptr %i.th, align 4, !tbaa !14, !alias.scope !124
  %i.ti = fsub <4 x float> splat (float 1.000000e+00), %wide.load1168
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %index1157
  store <4 x float> %i.ti, ptr %i.tj, align 4, !tbaa !14, !alias.scope !125, !noalias !126
  %index.next1169 = add nuw i64 %index1157, 4     ; 2 uses
  %i.tk = icmp eq i64 %index.next1169, %n.vec1153
  br i1 %i.tk, label %middle.block1170, label %vector.body1156, !llvm.loop !127

middle.block1170:                                 ; preds = %vector.body1156
  %cmp.n1171 = icmp eq i64 %wide.trip.count744, %n.vec1153
  br i1 %cmp.n1171, label %._crit_edge655, label %scalar.ph1149.preheader

scalar.ph1149.preheader:                          ; preds = %vector.memcheck1020, %.lr.ph654, %middle.block1170
  %indvars.iv741.ph = phi i64 [ 0, %vector.memcheck1020 ], [ 0, %.lr.ph654 ], [ %n.vec1153, %middle.block1170 ]
  br label %scalar.ph1149

scalar.ph1149:                                    ; preds = %scalar.ph1149.preheader, %scalar.ph1149
  %indvars.iv741 = phi i64 [ %indvars.iv.next742, %scalar.ph1149 ], [ %indvars.iv741.ph, %scalar.ph1149.preheader ] ; 10 uses
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.oe, i64 %indvars.iv741 ; 3 uses
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !14
  %i.tn = fpext float %i.tm to double
  %i.to = fsub double 1.000000e+00, %i.tn
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %indvars.iv741 ; 4 uses
  %i.tq = load float, ptr %i.tp, align 4, !tbaa !14
  %i.tr = fpext float %i.tq to double
  %i.ts = fsub double %i.to, %i.tr
  %i.tt = fmul double %i.ts, %i.og
  %i.tu = fmul double %i.tt, 5.000000e-01
  %i.tv = fptrunc double %i.tu to float
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.oh, i64 %indvars.iv741
  store float %i.tv, ptr %i.tw, align 4, !tbaa !14
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %indvars.iv741 ; 3 uses
  %i.ty = load float, ptr %i.tx, align 4, !tbaa !14
  %i.tz = fpext float %i.ty to double
  %i.ua = fsub double 1.000000e+00, %i.tz
  %i.ub = load float, ptr %i.tp, align 4, !tbaa !14
  %i.uc = fpext float %i.ub to double
  %i.ud = fsub double %i.ua, %i.uc
  %i.ue = fmul double %i.ud, %i.og
  %i.uf = fmul double %i.ue, 5.000000e-01
  %i.ug = fptrunc double %i.uf to float
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %indvars.iv741
  store float %i.ug, ptr %i.uh, align 4, !tbaa !14
  %i.ui = load float, ptr %i.tl, align 4, !tbaa !14
  %i.uj = fpext float %i.ui to double
  %i.uk = fsub double 1.000000e+00, %i.uj
  %i.ul = load float, ptr %i.tx, align 4, !tbaa !14
  %i.um = fpext float %i.ul to double
  %i.un = fadd double %i.uk, %i.um
  %i.uo = load float, ptr %i.tp, align 4, !tbaa !14
  %i.up = fpext float %i.uo to double
  %i.uq = fsub double %i.un, %i.up
  %i.ur = fmul double %i.uq, 5.000000e-01
  %i.us = fmul double %i.ur, %i.og
  %i.ut = fptrunc double %i.us to float
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %indvars.iv741
  store float %i.ut, ptr %i.uu, align 4, !tbaa !14
  %i.uv = load float, ptr %i.tx, align 4, !tbaa !14
  %i.uw = fpext float %i.uv to double
  %i.ux = fsub double 1.000000e+00, %i.uw
  %i.uy = load float, ptr %i.tl, align 4, !tbaa !14
  %i.uz = fpext float %i.uy to double
  %i.va = fadd double %i.ux, %i.uz
  %i.vb = load float, ptr %i.tp, align 4, !tbaa !14
  %i.vc = fpext float %i.vb to double
  %i.vd = fsub double %i.va, %i.vc
  %i.ve = fmul double %i.vd, 5.000000e-01
  %i.vf = fmul double %i.ve, %i.og
  %i.vg = fptrunc double %i.vf to float
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %indvars.iv741
  store float %i.vg, ptr %i.vh, align 4, !tbaa !14
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %indvars.iv741
  %i.vj = load float, ptr %i.vi, align 4, !tbaa !14
  %i.vk = fsub float 1.000000e+00, %i.vj
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.on, i64 %indvars.iv741
  store float %i.vk, ptr %i.vl, align 4, !tbaa !14
  %indvars.iv.next742 = add nuw nsw i64 %indvars.iv741, 1 ; 2 uses
  %exitcond745 = icmp eq i64 %indvars.iv.next742, %wide.trip.count744
  br i1 %exitcond745, label %._crit_edge655, label %scalar.ph1149, !llvm.loop !128

._crit_edge655:                                   ; preds = %scalar.ph1149, %middle.block1170, %._crit_edge651
  %i.vm = load ptr, ptr @partQ__align.w1, align 8, !tbaa !12 ; 21 uses
  %i.vn = ptrtoaddr ptr %i.vm to i64
  %i.vo = load ptr, ptr @partQ__align.w2, align 8, !tbaa !12
  %i.vp = load ptr, ptr @partQ__align.initverticalw, align 8, !tbaa !12 ; 14 uses
  %i.vq = load ptr, ptr @partQ__align.cpmx2, align 8, !tbaa !8 ; 4 uses
  %i.vr = load ptr, ptr @partQ__align.cpmx1, align 8, !tbaa !8 ; 4 uses
  %i.vs = load ptr, ptr @partQ__align.floatwork, align 8, !tbaa !8 ; 4 uses
  %i.vt = load ptr, ptr @partQ__align.intwork, align 8, !tbaa !67 ; 4 uses
  tail call fastcc void @match_calc(ptr noundef %i.vp, ptr noundef %i.vq, ptr noundef %i.vr, i32 noundef 0, i32 noundef %i.l, ptr noundef %i.vs, ptr noundef %i.vt, i32 noundef 1)
  %.not500 = icmp ne ptr %7, null                 ; 3 uses
  br i1 %.not500, label %bb.o, label %.critedge

bb.o:                                             ; preds = %._crit_edge655
  %i.vu = icmp sgt i32 %i.l, 0
  br i1 %i.vu, label %.lr.ph.i, label %part_imp_match_out_vead_tate_gapmapQ.exit

.lr.ph.i:                                         ; preds = %bb.o
  %i.vv = load i32, ptr %14, align 4, !tbaa !4
  %i.vw = add nsw i32 %i.vv, %11
  %i.vx = load ptr, ptr @impmtx, align 8, !tbaa !8 ; 3 uses
  %i.vy = sext i32 %i.vw to i64                   ; 3 uses
  %wide.trip.count.i = and i64 %i.k, 2147483647
  %xtraiter1379 = and i64 %i.k, 1
  %i.vz = icmp eq i64 %wide.trip.count.i, 1
  br i1 %i.vz, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.k, 2147483646
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.p ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.p ]
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %indvars.iv.i
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !4
  %i.wc = add nsw i32 %i.wb, %9
  %i.wd = sext i32 %i.wc to i64
  %i.we = getelementptr inbounds [8 x i8], ptr %i.vx, i64 %i.wd
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !12
  %i.wg = getelementptr inbounds [4 x i8], ptr %i.wf, i64 %i.vy
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !14
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.vp, i64 %indvars.iv.i ; 2 uses
  %i.wj = load float, ptr %i.wi, align 4, !tbaa !14
  %i.wk = fadd float %i.wh, %i.wj
  store float %i.wk, ptr %i.wi, align 4, !tbaa !14
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
end_hunk_0
