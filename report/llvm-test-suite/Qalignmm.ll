inline.NumInlined: 16
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 36
begin_hunk_0_@Q__align:bb.a
  %i.fe = phi i32 [ %.pre727, %bb.k ], [ %i.dc, %bb.j ]
  %i.ff = tail call i32 @llvm.smax.i32(i32 %i.fe, i32 %i.fd) ; 2 uses
  %i.fg = tail call i32 @llvm.smax.i32(i32 %i.fc, i32 %i.fb) ; 2 uses
  %i.fh = add nsw i32 %i.ff, 10
  %i.fi = add nsw i32 %i.fg, 10
  %i.fj = tail call ptr @AllocateIntMtx(i32 noundef %i.fh, i32 noundef %i.fi) #12 ; 2 uses
  store ptr %i.fj, ptr @commonIP, align 8, !tbaa !51
  store i32 %i.ff, ptr @commonAlloc1, align 4, !tbaa !4
  store i32 %i.fg, ptr @commonAlloc2, align 4, !tbaa !4
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge731, %bb.l
  %i.fk = phi ptr [ %.pre732, %._crit_edge731 ], [ %i.fj, %bb.l ]
  store ptr %i.fk, ptr @Q__align.ijp, align 8, !tbaa !51
  %i.fl = load ptr, ptr @Q__align.cpmx1, align 8, !tbaa !8
  tail call void @cpmx_calc_new(ptr noundef nonnull %0, ptr noundef %i.fl, ptr noundef %2, i32 noundef %i.l, i32 noundef %4) #12
  %i.fm = load ptr, ptr @Q__align.cpmx2, align 8, !tbaa !8
  tail call void @cpmx_calc_new(ptr noundef nonnull %1, ptr noundef %i.fm, ptr noundef %3, i32 noundef %i.o, i32 noundef %5) #12
  %.not = icmp eq ptr %9, null
  %i.fn = load ptr, ptr @Q__align.ogcp1g, align 8, !tbaa !12 ; 2 uses
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @new_OpeningGapCount_zure(ptr noundef %i.fn, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.l, ptr noundef nonnull %9, ptr noundef %11) #12
  %i.fo = load ptr, ptr @Q__align.ogcp2g, align 8, !tbaa !12
  tail call void @new_OpeningGapCount_zure(ptr noundef %i.fo, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.o, ptr noundef %10, ptr noundef %12) #12
  %i.fp = load ptr, ptr @Q__align.fgcp1g, align 8, !tbaa !12
  tail call void @new_FinalGapCount_zure(ptr noundef %i.fp, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.l, ptr noundef nonnull %9, ptr noundef %11) #12
  %i.fq = load ptr, ptr @Q__align.fgcp2g, align 8, !tbaa !12
  tail call void @new_FinalGapCount_zure(ptr noundef %i.fq, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.o, ptr noundef %10, ptr noundef %12) #12
  %i.fr = load ptr, ptr @Q__align.digf1, align 8, !tbaa !12
  tail call void @getdigapfreq_part(ptr noundef %i.fr, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.l, ptr noundef nonnull %9, ptr noundef %11) #12
  %i.fs = load ptr, ptr @Q__align.digf2, align 8, !tbaa !12
  tail call void @getdigapfreq_part(ptr noundef %i.fs, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.o, ptr noundef %10, ptr noundef %12) #12
  %i.ft = load ptr, ptr @Q__align.diaf1, align 8, !tbaa !12
  tail call void @getdiaminofreq_part(ptr noundef %i.ft, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.l, ptr noundef nonnull %9, ptr noundef %11) #12
  %i.fu = load ptr, ptr @Q__align.diaf2, align 8, !tbaa !12
  tail call void @getdiaminofreq_part(ptr noundef %i.fu, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.o, ptr noundef %10, ptr noundef %12) #12
  %i.fv = load ptr, ptr @Q__align.gapf1, align 8, !tbaa !12
  tail call void @getgapfreq(ptr noundef %i.fv, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.l) #12
  %i.fw = load ptr, ptr @Q__align.gapf2, align 8, !tbaa !12
  tail call void @getgapfreq(ptr noundef %i.fw, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.o) #12
  %i.fx = load ptr, ptr @Q__align.gapz1, align 8, !tbaa !12
  tail call void @getgapfreq_zure_part(ptr noundef %i.fx, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.l, ptr noundef nonnull %9) #12
  %i.fy = load ptr, ptr @Q__align.gapz2, align 8, !tbaa !12
  tail call void @getgapfreq_zure_part(ptr noundef %i.fy, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.o, ptr noundef nonnull %9) #12
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  tail call void @st_OpeningGapCount(ptr noundef %i.fn, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.l) #12
  %i.fz = load ptr, ptr @Q__align.ogcp2g, align 8, !tbaa !12
  tail call void @st_OpeningGapCount(ptr noundef %i.fz, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.o) #12
  %i.ga = load ptr, ptr @Q__align.fgcp1g, align 8, !tbaa !12
  tail call void @st_FinalGapCount_zure(ptr noundef %i.ga, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.l) #12
  %i.gb = load ptr, ptr @Q__align.fgcp2g, align 8, !tbaa !12
  tail call void @st_FinalGapCount_zure(ptr noundef %i.gb, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.o) #12
  %i.gc = load ptr, ptr @Q__align.digf1, align 8, !tbaa !12
  tail call void @getdigapfreq_st(ptr noundef %i.gc, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.l) #12
  %i.gd = load ptr, ptr @Q__align.digf2, align 8, !tbaa !12
  tail call void @getdigapfreq_st(ptr noundef %i.gd, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.o) #12
  %i.ge = load ptr, ptr @Q__align.diaf1, align 8, !tbaa !12
  tail call void @getdiaminofreq_x(ptr noundef %i.ge, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.l) #12
  %i.gf = load ptr, ptr @Q__align.diaf2, align 8, !tbaa !12
  tail call void @getdiaminofreq_x(ptr noundef %i.gf, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.o) #12
  %i.gg = load ptr, ptr @Q__align.gapf1, align 8, !tbaa !12
  tail call void @getgapfreq(ptr noundef %i.gg, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.l) #12
  %i.gh = load ptr, ptr @Q__align.gapf2, align 8, !tbaa !12
  tail call void @getgapfreq(ptr noundef %i.gh, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.o) #12
  %i.gi = load ptr, ptr @Q__align.gapz1, align 8, !tbaa !12
  tail call void @getgapfreq_zure(ptr noundef %i.gi, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.l) #12
  %i.gj = load ptr, ptr @Q__align.gapz2, align 8, !tbaa !12
  tail call void @getgapfreq_zure(ptr noundef %i.gj, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.o) #12
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.gk = icmp sgt i32 %i.o, -2
  br i1 %i.gk, label %.lr.ph571, label %._crit_edge572

.lr.ph571:                                        ; preds = %bb.p
  %i.gl = load ptr, ptr @Q__align.ogcp2g, align 8, !tbaa !12 ; 8 uses
  %i.gm = load ptr, ptr @Q__align.digf2, align 8, !tbaa !12 ; 8 uses
  %i.gn = fpext float %i.b to double              ; 5 uses
  %i.go = load ptr, ptr @Q__align.og_h_dg_n2_p, align 8, !tbaa !12 ; 4 uses
  %i.gp = load ptr, ptr @Q__align.fgcp2g, align 8, !tbaa !12 ; 8 uses
  %i.gq = load ptr, ptr @Q__align.fg_h_dg_n2_p, align 8, !tbaa !12 ; 8 uses
  %i.gr = load ptr, ptr @Q__align.og_t_fg_h_dg_n2_p, align 8, !tbaa !12 ; 7 uses
  %i.gs = load ptr, ptr @Q__align.fg_t_og_h_dg_n2_p, align 8, !tbaa !12 ; 7 uses
  %i.gt = load ptr, ptr @Q__align.gapz2, align 8, !tbaa !12 ; 8 uses
  %i.gu = load ptr, ptr @Q__align.gapz_n2, align 8, !tbaa !12 ; 7 uses
  %i.gv = add i64 %i.n, 2                         ; 2 uses
  %wide.trip.count662 = and i64 %i.gv, 4294967295 ; 4 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count662, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph571
  %i.gw = shl nuw nsw i64 %wide.trip.count662, 2  ; 9 uses
  %scevgep = getelementptr i8, ptr %i.go, i64 %i.gw
  %scevgep781 = getelementptr i8, ptr %i.gq, i64 %i.gw ; 5 uses
  %scevgep782 = getelementptr i8, ptr %i.gr, i64 %i.gw ; 4 uses
  %scevgep783 = getelementptr i8, ptr %i.gs, i64 %i.gw ; 4 uses
  %scevgep784 = getelementptr i8, ptr %i.gu, i64 %i.gw ; 4 uses
  %scevgep785 = getelementptr i8, ptr %i.gl, i64 %i.gw ; 5 uses
  %scevgep786 = getelementptr i8, ptr %i.gm, i64 %i.gw ; 5 uses
  %scevgep787 = getelementptr i8, ptr %i.gp, i64 %i.gw ; 5 uses
  %scevgep788 = getelementptr i8, ptr %i.gt, i64 %i.gw ; 5 uses
  %i.gx = insertelement <8 x ptr> poison, ptr %i.go, i64 0
  %i.gy = shufflevector <8 x ptr> %i.gx, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.gz = insertelement <8 x ptr> poison, ptr %scevgep781, i64 0
  %i.ha = insertelement <8 x ptr> %i.gz, ptr %scevgep782, i64 1
  %i.hb = insertelement <8 x ptr> %i.ha, ptr %scevgep783, i64 2
  %i.hc = insertelement <8 x ptr> %i.hb, ptr %scevgep784, i64 3
  %i.hd = insertelement <8 x ptr> %i.hc, ptr %scevgep785, i64 4
  %i.he = insertelement <8 x ptr> %i.hd, ptr %scevgep786, i64 5
  %i.hf = insertelement <8 x ptr> %i.he, ptr %scevgep787, i64 6
  %i.hg = insertelement <8 x ptr> %i.hf, ptr %scevgep788, i64 7
  %i.hh = icmp ult <8 x ptr> %i.gy, %i.hg
  %i.hi = insertelement <8 x ptr> poison, ptr %i.gq, i64 0
  %i.hj = insertelement <8 x ptr> %i.hi, ptr %i.gr, i64 1
  %i.hk = insertelement <8 x ptr> %i.hj, ptr %i.gs, i64 2
  %i.hl = insertelement <8 x ptr> %i.hk, ptr %i.gu, i64 3
  %i.hm = insertelement <8 x ptr> %i.hl, ptr %i.gl, i64 4
  %i.hn = insertelement <8 x ptr> %i.hm, ptr %i.gm, i64 5
  %i.ho = insertelement <8 x ptr> %i.hn, ptr %i.gp, i64 6
  %i.hp = insertelement <8 x ptr> %i.ho, ptr %i.gt, i64 7
  %i.hq = insertelement <8 x ptr> poison, ptr %scevgep, i64 0
  %i.hr = shufflevector <8 x ptr> %i.hq, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.hs = icmp ult <8 x ptr> %i.hp, %i.hr
  %i.ht = and <8 x i1> %i.hh, %i.hs               ; 2 uses
  %i.hu = insertelement <4 x ptr> poison, ptr %i.gq, i64 0
  %i.hv = shufflevector <4 x ptr> %i.hu, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.hw = insertelement <4 x ptr> poison, ptr %scevgep782, i64 0 ; 2 uses
  %i.hx = insertelement <4 x ptr> %i.hw, ptr %scevgep783, i64 1
  %i.hy = insertelement <4 x ptr> %i.hx, ptr %scevgep784, i64 2
  %i.hz = insertelement <4 x ptr> %i.hy, ptr %scevgep785, i64 3
  %i.ia = icmp ult <4 x ptr> %i.hv, %i.hz
  %i.ib = insertelement <4 x ptr> poison, ptr %i.gr, i64 0 ; 2 uses
  %i.ic = insertelement <4 x ptr> %i.ib, ptr %i.gs, i64 1
  %i.id = insertelement <4 x ptr> %i.ic, ptr %i.gu, i64 2
  %i.ie = insertelement <4 x ptr> %i.id, ptr %i.gl, i64 3
  %i.if = insertelement <4 x ptr> poison, ptr %scevgep781, i64 0
  %i.ig = shufflevector <4 x ptr> %i.if, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ih = icmp ult <4 x ptr> %i.ie, %i.ig
  %i.ii = and <4 x i1> %i.ia, %i.ih
  %bound0832 = icmp ult ptr %i.gq, %scevgep786
  %bound1833 = icmp ult ptr %i.gm, %scevgep781
  %found.conflict834 = and i1 %bound0832, %bound1833
  %bound0836 = icmp ult ptr %i.gq, %scevgep787
  %bound1837 = icmp ult ptr %i.gp, %scevgep781
  %found.conflict838 = and i1 %bound0836, %bound1837
  %bound0840 = icmp ult ptr %i.gq, %scevgep788
  %bound1841 = icmp ult ptr %i.gt, %scevgep781
  %found.conflict842 = and i1 %bound0840, %bound1841
  %i.ij = shufflevector <4 x ptr> %i.ib, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ik = insertelement <4 x ptr> poison, ptr %scevgep783, i64 0 ; 2 uses
  %i.il = insertelement <4 x ptr> %i.ik, ptr %scevgep784, i64 1
  %i.im = insertelement <4 x ptr> %i.il, ptr %scevgep785, i64 2
  %i.in = insertelement <4 x ptr> %i.im, ptr %scevgep786, i64 3
  %i.io = icmp ult <4 x ptr> %i.ij, %i.in
  %i.ip = insertelement <4 x ptr> poison, ptr %i.gs, i64 0 ; 2 uses
  %i.iq = insertelement <4 x ptr> %i.ip, ptr %i.gu, i64 1
  %i.ir = insertelement <4 x ptr> %i.iq, ptr %i.gl, i64 2
  %i.is = insertelement <4 x ptr> %i.ir, ptr %i.gm, i64 3
  %i.it = shufflevector <4 x ptr> %i.hw, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.iu = icmp ult <4 x ptr> %i.is, %i.it
  %i.iv = and <4 x i1> %i.io, %i.iu
  %bound0860 = icmp ult ptr %i.gr, %scevgep787
  %bound1861 = icmp ult ptr %i.gp, %scevgep782
  %found.conflict862 = and i1 %bound0860, %bound1861
  %bound0864 = icmp ult ptr %i.gr, %scevgep788
  %bound1865 = icmp ult ptr %i.gt, %scevgep782
  %found.conflict866 = and i1 %bound0864, %bound1865
  %i.iw = shufflevector <4 x ptr> %i.ip, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ix = insertelement <4 x ptr> poison, ptr %scevgep784, i64 0 ; 2 uses
  %i.iy = insertelement <4 x ptr> %i.ix, ptr %scevgep785, i64 1
  %i.iz = insertelement <4 x ptr> %i.iy, ptr %scevgep786, i64 2
  %i.ja = insertelement <4 x ptr> %i.iz, ptr %scevgep787, i64 3
  %i.jb = icmp ult <4 x ptr> %i.iw, %i.ja
  %i.jc = insertelement <4 x ptr> poison, ptr %i.gu, i64 0 ; 2 uses
  %i.jd = insertelement <4 x ptr> %i.jc, ptr %i.gl, i64 1
  %i.je = insertelement <4 x ptr> %i.jd, ptr %i.gm, i64 2
  %i.jf = insertelement <4 x ptr> %i.je, ptr %i.gp, i64 3
  %i.jg = shufflevector <4 x ptr> %i.ik, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.jh = icmp ult <4 x ptr> %i.jf, %i.jg
  %i.ji = and <4 x i1> %i.jb, %i.jh
  %bound0884 = icmp ult ptr %i.gs, %scevgep788
  %bound1885 = icmp ult ptr %i.gt, %scevgep783
  %found.conflict886 = and i1 %bound0884, %bound1885
  %i.jj = shufflevector <4 x ptr> %i.jc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.jk = insertelement <4 x ptr> poison, ptr %scevgep785, i64 0
  %i.jl = insertelement <4 x ptr> %i.jk, ptr %scevgep786, i64 1
  %i.jm = insertelement <4 x ptr> %i.jl, ptr %scevgep787, i64 2
  %i.jn = insertelement <4 x ptr> %i.jm, ptr %scevgep788, i64 3
  %i.jo = icmp ult <4 x ptr> %i.jj, %i.jn
  %i.jp = insertelement <4 x ptr> poison, ptr %i.gl, i64 0
  %i.jq = insertelement <4 x ptr> %i.jp, ptr %i.gm, i64 1
  %i.jr = insertelement <4 x ptr> %i.jq, ptr %i.gp, i64 2
  %i.js = insertelement <4 x ptr> %i.jr, ptr %i.gt, i64 3
  %i.jt = shufflevector <4 x ptr> %i.ix, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ju = icmp ult <4 x ptr> %i.js, %i.jt
  %i.jv = and <4 x i1> %i.jo, %i.ju
  %13 = or <4 x i1> %i.ii, %i.iv
  %14 = or <4 x i1> %13, %i.ji
  %15 = or <4 x i1> %14, %i.jv
  %i.jw = shufflevector <4 x i1> %15, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jx = or <8 x i1> %i.jw, %i.ht
  %i.jy = shufflevector <8 x i1> %i.jx, <8 x i1> %i.ht, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.jz = bitcast <8 x i1> %i.jy to i8
  %i.ka = icmp ne i8 %i.jz, 0
  %op.rdx1345 = or i1 %i.ka, %found.conflict834
  %op.rdx1346 = or i1 %found.conflict838, %found.conflict842
  %op.rdx1347 = or i1 %found.conflict862, %found.conflict866
  %op.rdx1348 = or i1 %op.rdx1345, %op.rdx1346
  %op.rdx1349 = or i1 %op.rdx1347, %found.conflict886
  %op.rdx1350 = or i1 %op.rdx1348, %op.rdx1349
  br i1 %op.rdx1350, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gv, 4294967292              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.gn, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %index ; 3 uses
  %wide.load = load <4 x float>, ptr %i.kb, align 4, !tbaa !14, !alias.scope !55
  %i.kc = fpext <4 x float> %wide.load to <4 x double>
  %i.kd = fsub <4 x double> splat (double 1.000000e+00), %i.kc
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %index ; 4 uses
  %wide.load904 = load <4 x float>, ptr %i.ke, align 4, !tbaa !14, !alias.scope !58
  %i.kf = fpext <4 x float> %wide.load904 to <4 x double>
  %i.kg = fsub <4 x double> %i.kd, %i.kf
  %i.kh = fmul <4 x double> %i.kg, %broadcast.splat
  %i.ki = fmul <4 x double> %i.kh, splat (double 5.000000e-01)
  %i.kj = fptrunc <4 x double> %i.ki to <4 x float>
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %index
  store <4 x float> %i.kj, ptr %i.kk, align 4, !tbaa !14, !alias.scope !60, !noalias !62
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %index ; 3 uses
  %wide.load905 = load <4 x float>, ptr %i.kl, align 4, !tbaa !14, !alias.scope !69
  %i.km = fpext <4 x float> %wide.load905 to <4 x double>
  %i.kn = fsub <4 x double> splat (double 1.000000e+00), %i.km
  %wide.load906 = load <4 x float>, ptr %i.ke, align 4, !tbaa !14, !alias.scope !58
  %i.ko = fpext <4 x float> %wide.load906 to <4 x double>
  %i.kp = fsub <4 x double> %i.kn, %i.ko
  %i.kq = fmul <4 x double> %i.kp, %broadcast.splat
  %i.kr = fmul <4 x double> %i.kq, splat (double 5.000000e-01)
  %i.ks = fptrunc <4 x double> %i.kr to <4 x float>
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %index
  store <4 x float> %i.ks, ptr %i.kt, align 4, !tbaa !14, !alias.scope !70, !noalias !71
  %wide.load907 = load <4 x float>, ptr %i.kb, align 4, !tbaa !14, !alias.scope !55
  %i.ku = fpext <4 x float> %wide.load907 to <4 x double>
  %i.kv = fsub <4 x double> splat (double 1.000000e+00), %i.ku
  %wide.load908 = load <4 x float>, ptr %i.kl, align 4, !tbaa !14, !alias.scope !69
  %i.kw = fpext <4 x float> %wide.load908 to <4 x double>
  %i.kx = fadd <4 x double> %i.kv, %i.kw
  %wide.load909 = load <4 x float>, ptr %i.ke, align 4, !tbaa !14, !alias.scope !58
  %i.ky = fpext <4 x float> %wide.load909 to <4 x double>
  %i.kz = fsub <4 x double> %i.kx, %i.ky
  %i.la = fmul <4 x double> %i.kz, splat (double 5.000000e-01)
  %i.lb = fmul <4 x double> %i.la, %broadcast.splat
  %i.lc = fptrunc <4 x double> %i.lb to <4 x float>
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %index
  store <4 x float> %i.lc, ptr %i.ld, align 4, !tbaa !14, !alias.scope !72, !noalias !73
  %wide.load910 = load <4 x float>, ptr %i.kl, align 4, !tbaa !14, !alias.scope !69
  %i.le = fpext <4 x float> %wide.load910 to <4 x double>
  %i.lf = fsub <4 x double> splat (double 1.000000e+00), %i.le
  %wide.load911 = load <4 x float>, ptr %i.kb, align 4, !tbaa !14, !alias.scope !55
  %i.lg = fpext <4 x float> %wide.load911 to <4 x double>
  %i.lh = fadd <4 x double> %i.lf, %i.lg
  %wide.load912 = load <4 x float>, ptr %i.ke, align 4, !tbaa !14, !alias.scope !58
  %i.li = fpext <4 x float> %wide.load912 to <4 x double>
  %i.lj = fsub <4 x double> %i.lh, %i.li
  %i.lk = fmul <4 x double> %i.lj, splat (double 5.000000e-01)
  %i.ll = fmul <4 x double> %i.lk, %broadcast.splat
  %i.lm = fptrunc <4 x double> %i.ll to <4 x float>
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %index
  store <4 x float> %i.lm, ptr %i.ln, align 4, !tbaa !14, !alias.scope !74, !noalias !75
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %index
  %wide.load913 = load <4 x float>, ptr %i.lo, align 4, !tbaa !14, !alias.scope !76
  %i.lp = fsub <4 x float> splat (float 1.000000e+00), %wide.load913
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %index
  store <4 x float> %i.lp, ptr %i.lq, align 4, !tbaa !14, !alias.scope !77, !noalias !78
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lr = icmp eq i64 %index.next, %n.vec
  br i1 %i.lr, label %middle.block, label %vector.body, !llvm.loop !79

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count662, %n.vec
  br i1 %cmp.n, label %._crit_edge572, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph571, %middle.block
  %indvars.iv659.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph571 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv659 = phi i64 [ %indvars.iv.next660, %scalar.ph ], [ %indvars.iv659.ph, %scalar.ph.preheader ] ; 10 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv659 ; 3 uses
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !14
  %i.lu = fpext float %i.lt to double
  %i.lv = fsub double 1.000000e+00, %i.lu
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv659 ; 4 uses
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !14
  %i.ly = fpext float %i.lx to double
  %i.lz = fsub double %i.lv, %i.ly
  %i.ma = fmul double %i.lz, %i.gn
  %i.mb = fmul double %i.ma, 5.000000e-01
  %i.mc = fptrunc double %i.mb to float
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv659
  store float %i.mc, ptr %i.md, align 4, !tbaa !14
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv659 ; 3 uses
  %i.mf = load float, ptr %i.me, align 4, !tbaa !14
  %i.mg = fpext float %i.mf to double
  %i.mh = fsub double 1.000000e+00, %i.mg
  %i.mi = load float, ptr %i.lw, align 4, !tbaa !14
  %i.mj = fpext float %i.mi to double
  %i.mk = fsub double %i.mh, %i.mj
  %i.ml = fmul double %i.mk, %i.gn
  %i.mm = fmul double %i.ml, 5.000000e-01
  %i.mn = fptrunc double %i.mm to float
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv659
  store float %i.mn, ptr %i.mo, align 4, !tbaa !14
  %i.mp = load float, ptr %i.ls, align 4, !tbaa !14
  %i.mq = fpext float %i.mp to double
  %i.mr = fsub double 1.000000e+00, %i.mq
  %i.ms = load float, ptr %i.me, align 4, !tbaa !14
  %i.mt = fpext float %i.ms to double
  %i.mu = fadd double %i.mr, %i.mt
  %i.mv = load float, ptr %i.lw, align 4, !tbaa !14
  %i.mw = fpext float %i.mv to double
  %i.mx = fsub double %i.mu, %i.mw
  %i.my = fmul double %i.mx, 5.000000e-01
  %i.mz = fmul double %i.my, %i.gn
  %i.na = fptrunc double %i.mz to float
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %indvars.iv659
  store float %i.na, ptr %i.nb, align 4, !tbaa !14
  %i.nc = load float, ptr %i.me, align 4, !tbaa !14
  %i.nd = fpext float %i.nc to double
  %i.ne = fsub double 1.000000e+00, %i.nd
  %i.nf = load float, ptr %i.ls, align 4, !tbaa !14
  %i.ng = fpext float %i.nf to double
  %i.nh = fadd double %i.ne, %i.ng
  %i.ni = load float, ptr %i.lw, align 4, !tbaa !14
  %i.nj = fpext float %i.ni to double
  %i.nk = fsub double %i.nh, %i.nj
  %i.nl = fmul double %i.nk, 5.000000e-01
  %i.nm = fmul double %i.nl, %i.gn
  %i.nn = fptrunc double %i.nm to float
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %indvars.iv659
  store float %i.nn, ptr %i.no, align 4, !tbaa !14
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv659
  %i.nq = load float, ptr %i.np, align 4, !tbaa !14
  %i.nr = fsub float 1.000000e+00, %i.nq
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv659
  store float %i.nr, ptr %i.ns, align 4, !tbaa !14
  %indvars.iv.next660 = add nuw nsw i64 %indvars.iv659, 1 ; 2 uses
  %exitcond663 = icmp eq i64 %indvars.iv.next660, %wide.trip.count662
  br i1 %exitcond663, label %._crit_edge572, label %scalar.ph, !llvm.loop !82

._crit_edge572:                                   ; preds = %scalar.ph, %middle.block, %bb.p
  %i.nt = icmp sgt i32 %i.l, -2
  br i1 %i.nt, label %.lr.ph575, label %._crit_edge576

.lr.ph575:                                        ; preds = %._crit_edge572
  %i.nu = load ptr, ptr @Q__align.ogcp1g, align 8, !tbaa !12 ; 8 uses
  %i.nv = load ptr, ptr @Q__align.digf1, align 8, !tbaa !12 ; 8 uses
  %i.nw = fpext float %i.b to double              ; 5 uses
  %i.nx = load ptr, ptr @Q__align.og_h_dg_n1_p, align 8, !tbaa !12 ; 4 uses
  %i.ny = load ptr, ptr @Q__align.fgcp1g, align 8, !tbaa !12 ; 8 uses
  %i.nz = load ptr, ptr @Q__align.fg_h_dg_n1_p, align 8, !tbaa !12 ; 8 uses
  %i.oa = load ptr, ptr @Q__align.og_t_fg_h_dg_n1_p, align 8, !tbaa !12 ; 7 uses
  %i.ob = load ptr, ptr @Q__align.fg_t_og_h_dg_n1_p, align 8, !tbaa !12 ; 7 uses
  %i.oc = load ptr, ptr @Q__align.gapz1, align 8, !tbaa !12 ; 8 uses
  %i.od = load ptr, ptr @Q__align.gapz_n1, align 8, !tbaa !12 ; 7 uses
  %i.oe = add i64 %i.k, 2                         ; 2 uses
  %wide.trip.count667 = and i64 %i.oe, 4294967295 ; 4 uses
  %min.iters.check1044 = icmp samesign ult i64 %wide.trip.count667, 20
  br i1 %min.iters.check1044, label %scalar.ph1043.preheader, label %vector.memcheck914

vector.memcheck914:                               ; preds = %.lr.ph575
  %i.of = shl nuw nsw i64 %wide.trip.count667, 2  ; 9 uses
  %scevgep915 = getelementptr i8, ptr %i.nx, i64 %i.of
  %scevgep916 = getelementptr i8, ptr %i.nz, i64 %i.of ; 5 uses
  %scevgep917 = getelementptr i8, ptr %i.oa, i64 %i.of ; 4 uses
  %scevgep918 = getelementptr i8, ptr %i.ob, i64 %i.of ; 4 uses
  %scevgep919 = getelementptr i8, ptr %i.od, i64 %i.of ; 4 uses
  %scevgep920 = getelementptr i8, ptr %i.nu, i64 %i.of ; 5 uses
  %scevgep921 = getelementptr i8, ptr %i.nv, i64 %i.of ; 5 uses
  %scevgep922 = getelementptr i8, ptr %i.ny, i64 %i.of ; 5 uses
  %scevgep923 = getelementptr i8, ptr %i.oc, i64 %i.of ; 5 uses
  %i.og = insertelement <8 x ptr> poison, ptr %i.nx, i64 0
  %i.oh = shufflevector <8 x ptr> %i.og, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.oi = insertelement <8 x ptr> poison, ptr %scevgep916, i64 0
  %i.oj = insertelement <8 x ptr> %i.oi, ptr %scevgep917, i64 1
  %i.ok = insertelement <8 x ptr> %i.oj, ptr %scevgep918, i64 2
  %i.ol = insertelement <8 x ptr> %i.ok, ptr %scevgep919, i64 3
  %i.om = insertelement <8 x ptr> %i.ol, ptr %scevgep920, i64 4
  %i.on = insertelement <8 x ptr> %i.om, ptr %scevgep921, i64 5
  %i.oo = insertelement <8 x ptr> %i.on, ptr %scevgep922, i64 6
  %i.op = insertelement <8 x ptr> %i.oo, ptr %scevgep923, i64 7
  %i.oq = icmp ult <8 x ptr> %i.oh, %i.op
  %i.or = insertelement <8 x ptr> poison, ptr %i.nz, i64 0
  %i.os = insertelement <8 x ptr> %i.or, ptr %i.oa, i64 1
  %i.ot = insertelement <8 x ptr> %i.os, ptr %i.ob, i64 2
  %i.ou = insertelement <8 x ptr> %i.ot, ptr %i.od, i64 3
  %i.ov = insertelement <8 x ptr> %i.ou, ptr %i.nu, i64 4
  %i.ow = insertelement <8 x ptr> %i.ov, ptr %i.nv, i64 5
  %i.ox = insertelement <8 x ptr> %i.ow, ptr %i.ny, i64 6
  %i.oy = insertelement <8 x ptr> %i.ox, ptr %i.oc, i64 7
  %i.oz = insertelement <8 x ptr> poison, ptr %scevgep915, i64 0
  %i.pa = shufflevector <8 x ptr> %i.oz, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.pb = icmp ult <8 x ptr> %i.oy, %i.pa
  %i.pc = and <8 x i1> %i.oq, %i.pb               ; 2 uses
  %i.pd = insertelement <4 x ptr> poison, ptr %i.nz, i64 0
  %i.pe = shufflevector <4 x ptr> %i.pd, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.pf = insertelement <4 x ptr> poison, ptr %scevgep917, i64 0 ; 2 uses
  %i.pg = insertelement <4 x ptr> %i.pf, ptr %scevgep918, i64 1
  %i.ph = insertelement <4 x ptr> %i.pg, ptr %scevgep919, i64 2
  %i.pi = insertelement <4 x ptr> %i.ph, ptr %scevgep920, i64 3
  %i.pj = icmp ult <4 x ptr> %i.pe, %i.pi
  %i.pk = insertelement <4 x ptr> poison, ptr %i.oa, i64 0 ; 2 uses
  %i.pl = insertelement <4 x ptr> %i.pk, ptr %i.ob, i64 1
  %i.pm = insertelement <4 x ptr> %i.pl, ptr %i.od, i64 2
  %i.pn = insertelement <4 x ptr> %i.pm, ptr %i.nu, i64 3
  %i.po = insertelement <4 x ptr> poison, ptr %scevgep916, i64 0
  %i.pp = shufflevector <4 x ptr> %i.po, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.pq = icmp ult <4 x ptr> %i.pn, %i.pp
  %i.pr = and <4 x i1> %i.pj, %i.pq
  %bound0971 = icmp ult ptr %i.nz, %scevgep921
  %bound1972 = icmp ult ptr %i.nv, %scevgep916
  %found.conflict973 = and i1 %bound0971, %bound1972
  %bound0975 = icmp ult ptr %i.nz, %scevgep922
  %bound1976 = icmp ult ptr %i.ny, %scevgep916
  %found.conflict977 = and i1 %bound0975, %bound1976
  %bound0979 = icmp ult ptr %i.nz, %scevgep923
  %bound1980 = icmp ult ptr %i.oc, %scevgep916
  %found.conflict981 = and i1 %bound0979, %bound1980
  %i.ps = shufflevector <4 x ptr> %i.pk, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.pt = insertelement <4 x ptr> poison, ptr %scevgep918, i64 0 ; 2 uses
  %i.pu = insertelement <4 x ptr> %i.pt, ptr %scevgep919, i64 1
  %i.pv = insertelement <4 x ptr> %i.pu, ptr %scevgep920, i64 2
  %i.pw = insertelement <4 x ptr> %i.pv, ptr %scevgep921, i64 3
  %i.px = icmp ult <4 x ptr> %i.ps, %i.pw
  %i.py = insertelement <4 x ptr> poison, ptr %i.ob, i64 0 ; 2 uses
  %i.pz = insertelement <4 x ptr> %i.py, ptr %i.od, i64 1
  %i.qa = insertelement <4 x ptr> %i.pz, ptr %i.nu, i64 2
  %i.qb = insertelement <4 x ptr> %i.qa, ptr %i.nv, i64 3
  %i.qc = shufflevector <4 x ptr> %i.pf, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.qd = icmp ult <4 x ptr> %i.qb, %i.qc
  %i.qe = and <4 x i1> %i.px, %i.qd
  %bound0999 = icmp ult ptr %i.oa, %scevgep922
  %bound11000 = icmp ult ptr %i.ny, %scevgep917
  %found.conflict1001 = and i1 %bound0999, %bound11000
  %bound01003 = icmp ult ptr %i.oa, %scevgep923
  %bound11004 = icmp ult ptr %i.oc, %scevgep917
  %found.conflict1005 = and i1 %bound01003, %bound11004
  %i.qf = shufflevector <4 x ptr> %i.py, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.qg = insertelement <4 x ptr> poison, ptr %scevgep919, i64 0 ; 2 uses
  %i.qh = insertelement <4 x ptr> %i.qg, ptr %scevgep920, i64 1
  %i.qi = insertelement <4 x ptr> %i.qh, ptr %scevgep921, i64 2
  %i.qj = insertelement <4 x ptr> %i.qi, ptr %scevgep922, i64 3
  %i.qk = icmp ult <4 x ptr> %i.qf, %i.qj
  %i.ql = insertelement <4 x ptr> poison, ptr %i.od, i64 0 ; 2 uses
  %i.qm = insertelement <4 x ptr> %i.ql, ptr %i.nu, i64 1
  %i.qn = insertelement <4 x ptr> %i.qm, ptr %i.nv, i64 2
  %i.qo = insertelement <4 x ptr> %i.qn, ptr %i.ny, i64 3
  %i.qp = shufflevector <4 x ptr> %i.pt, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.qq = icmp ult <4 x ptr> %i.qo, %i.qp
  %i.qr = and <4 x i1> %i.qk, %i.qq
  %bound01023 = icmp ult ptr %i.ob, %scevgep923
  %bound11024 = icmp ult ptr %i.oc, %scevgep918
  %found.conflict1025 = and i1 %bound01023, %bound11024
  %i.qs = shufflevector <4 x ptr> %i.ql, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.qt = insertelement <4 x ptr> poison, ptr %scevgep920, i64 0
  %i.qu = insertelement <4 x ptr> %i.qt, ptr %scevgep921, i64 1
  %i.qv = insertelement <4 x ptr> %i.qu, ptr %scevgep922, i64 2
  %i.qw = insertelement <4 x ptr> %i.qv, ptr %scevgep923, i64 3
  %i.qx = icmp ult <4 x ptr> %i.qs, %i.qw
  %i.qy = insertelement <4 x ptr> poison, ptr %i.nu, i64 0
  %i.qz = insertelement <4 x ptr> %i.qy, ptr %i.nv, i64 1
  %i.ra = insertelement <4 x ptr> %i.qz, ptr %i.ny, i64 2
  %i.rb = insertelement <4 x ptr> %i.ra, ptr %i.oc, i64 3
  %i.rc = shufflevector <4 x ptr> %i.qg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.rd = icmp ult <4 x ptr> %i.rb, %i.rc
  %i.re = and <4 x i1> %i.qx, %i.rd
  %16 = or <4 x i1> %i.pr, %i.qe
  %17 = or <4 x i1> %16, %i.qr
  %18 = or <4 x i1> %17, %i.re
  %i.rf = shufflevector <4 x i1> %18, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rg = or <8 x i1> %i.rf, %i.pc
  %i.rh = shufflevector <8 x i1> %i.rg, <8 x i1> %i.pc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.ri = bitcast <8 x i1> %i.rh to i8
  %i.rj = icmp ne i8 %i.ri, 0
  %op.rdx = or i1 %i.rj, %found.conflict973
  %op.rdx1336 = or i1 %found.conflict977, %found.conflict981
  %op.rdx1337 = or i1 %found.conflict1001, %found.conflict1005
  %op.rdx1338 = or i1 %op.rdx, %op.rdx1336
  %op.rdx1339 = or i1 %op.rdx1337, %found.conflict1025
  %op.rdx1340 = or i1 %op.rdx1338, %op.rdx1339
  br i1 %op.rdx1340, label %scalar.ph1043.preheader, label %vector.ph1045

vector.ph1045:                                    ; preds = %vector.memcheck914
  %n.vec1047 = and i64 %i.oe, 4294967292          ; 3 uses
  %broadcast.splatinsert1048 = insertelement <4 x double> poison, double %i.nw, i64 0
  %broadcast.splat1049 = shufflevector <4 x double> %broadcast.splatinsert1048, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1050

vector.body1050:                                  ; preds = %vector.body1050, %vector.ph1045
  %index1051 = phi i64 [ 0, %vector.ph1045 ], [ %index.next1063, %vector.body1050 ] ; 10 uses
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %index1051 ; 3 uses
  %wide.load1052 = load <4 x float>, ptr %i.rk, align 4, !tbaa !14, !alias.scope !83
  %i.rl = fpext <4 x float> %wide.load1052 to <4 x double>
  %i.rm = fsub <4 x double> splat (double 1.000000e+00), %i.rl
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %index1051 ; 4 uses
  %wide.load1053 = load <4 x float>, ptr %i.rn, align 4, !tbaa !14, !alias.scope !86
  %i.ro = fpext <4 x float> %wide.load1053 to <4 x double>
  %i.rp = fsub <4 x double> %i.rm, %i.ro
  %i.rq = fmul <4 x double> %i.rp, %broadcast.splat1049
  %i.rr = fmul <4 x double> %i.rq, splat (double 5.000000e-01)
  %i.rs = fptrunc <4 x double> %i.rr to <4 x float>
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %index1051
  store <4 x float> %i.rs, ptr %i.rt, align 4, !tbaa !14, !alias.scope !88, !noalias !90
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %index1051 ; 3 uses
  %wide.load1054 = load <4 x float>, ptr %i.ru, align 4, !tbaa !14, !alias.scope !97
  %i.rv = fpext <4 x float> %wide.load1054 to <4 x double>
  %i.rw = fsub <4 x double> splat (double 1.000000e+00), %i.rv
  %wide.load1055 = load <4 x float>, ptr %i.rn, align 4, !tbaa !14, !alias.scope !86
  %i.rx = fpext <4 x float> %wide.load1055 to <4 x double>
  %i.ry = fsub <4 x double> %i.rw, %i.rx
  %i.rz = fmul <4 x double> %i.ry, %broadcast.splat1049
  %i.sa = fmul <4 x double> %i.rz, splat (double 5.000000e-01)
  %i.sb = fptrunc <4 x double> %i.sa to <4 x float>
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %index1051
  store <4 x float> %i.sb, ptr %i.sc, align 4, !tbaa !14, !alias.scope !98, !noalias !99
  %wide.load1056 = load <4 x float>, ptr %i.rk, align 4, !tbaa !14, !alias.scope !83
  %i.sd = fpext <4 x float> %wide.load1056 to <4 x double>
  %i.se = fsub <4 x double> splat (double 1.000000e+00), %i.sd
  %wide.load1057 = load <4 x float>, ptr %i.ru, align 4, !tbaa !14, !alias.scope !97
  %i.sf = fpext <4 x float> %wide.load1057 to <4 x double>
  %i.sg = fadd <4 x double> %i.se, %i.sf
  %wide.load1058 = load <4 x float>, ptr %i.rn, align 4, !tbaa !14, !alias.scope !86
  %i.sh = fpext <4 x float> %wide.load1058 to <4 x double>
  %i.si = fsub <4 x double> %i.sg, %i.sh
  %i.sj = fmul <4 x double> %i.si, splat (double 5.000000e-01)
  %i.sk = fmul <4 x double> %i.sj, %broadcast.splat1049
  %i.sl = fptrunc <4 x double> %i.sk to <4 x float>
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %index1051
  store <4 x float> %i.sl, ptr %i.sm, align 4, !tbaa !14, !alias.scope !100, !noalias !101
  %wide.load1059 = load <4 x float>, ptr %i.ru, align 4, !tbaa !14, !alias.scope !97
  %i.sn = fpext <4 x float> %wide.load1059 to <4 x double>
  %i.so = fsub <4 x double> splat (double 1.000000e+00), %i.sn
  %wide.load1060 = load <4 x float>, ptr %i.rk, align 4, !tbaa !14, !alias.scope !83
  %i.sp = fpext <4 x float> %wide.load1060 to <4 x double>
  %i.sq = fadd <4 x double> %i.so, %i.sp
  %wide.load1061 = load <4 x float>, ptr %i.rn, align 4, !tbaa !14, !alias.scope !86
  %i.sr = fpext <4 x float> %wide.load1061 to <4 x double>
  %i.ss = fsub <4 x double> %i.sq, %i.sr
  %i.st = fmul <4 x double> %i.ss, splat (double 5.000000e-01)
  %i.su = fmul <4 x double> %i.st, %broadcast.splat1049
  %i.sv = fptrunc <4 x double> %i.su to <4 x float>
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %index1051
  store <4 x float> %i.sv, ptr %i.sw, align 4, !tbaa !14, !alias.scope !102, !noalias !103
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %index1051
  %wide.load1062 = load <4 x float>, ptr %i.sx, align 4, !tbaa !14, !alias.scope !104
  %i.sy = fsub <4 x float> splat (float 1.000000e+00), %wide.load1062
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %index1051
  store <4 x float> %i.sy, ptr %i.sz, align 4, !tbaa !14, !alias.scope !105, !noalias !106
  %index.next1063 = add nuw i64 %index1051, 4     ; 2 uses
  %i.ta = icmp eq i64 %index.next1063, %n.vec1047
  br i1 %i.ta, label %middle.block1064, label %vector.body1050, !llvm.loop !107

middle.block1064:                                 ; preds = %vector.body1050
  %cmp.n1065 = icmp eq i64 %wide.trip.count667, %n.vec1047
  br i1 %cmp.n1065, label %._crit_edge576, label %scalar.ph1043.preheader

scalar.ph1043.preheader:                          ; preds = %vector.memcheck914, %.lr.ph575, %middle.block1064
  %indvars.iv664.ph = phi i64 [ 0, %vector.memcheck914 ], [ 0, %.lr.ph575 ], [ %n.vec1047, %middle.block1064 ]
  br label %scalar.ph1043

scalar.ph1043:                                    ; preds = %scalar.ph1043.preheader, %scalar.ph1043
  %indvars.iv664 = phi i64 [ %indvars.iv.next665, %scalar.ph1043 ], [ %indvars.iv664.ph, %scalar.ph1043.preheader ] ; 10 uses
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv664 ; 3 uses
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !14
  %i.td = fpext float %i.tc to double
  %i.te = fsub double 1.000000e+00, %i.td
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %indvars.iv664 ; 4 uses
  %i.tg = load float, ptr %i.tf, align 4, !tbaa !14
  %i.th = fpext float %i.tg to double
  %i.ti = fsub double %i.te, %i.th
  %i.tj = fmul double %i.ti, %i.nw
  %i.tk = fmul double %i.tj, 5.000000e-01
  %i.tl = fptrunc double %i.tk to float
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %indvars.iv664
  store float %i.tl, ptr %i.tm, align 4, !tbaa !14
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %indvars.iv664 ; 3 uses
  %i.to = load float, ptr %i.tn, align 4, !tbaa !14
  %i.tp = fpext float %i.to to double
  %i.tq = fsub double 1.000000e+00, %i.tp
  %i.tr = load float, ptr %i.tf, align 4, !tbaa !14
  %i.ts = fpext float %i.tr to double
  %i.tt = fsub double %i.tq, %i.ts
  %i.tu = fmul double %i.tt, %i.nw
  %i.tv = fmul double %i.tu, 5.000000e-01
  %i.tw = fptrunc double %i.tv to float
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %indvars.iv664
  store float %i.tw, ptr %i.tx, align 4, !tbaa !14
  %i.ty = load float, ptr %i.tb, align 4, !tbaa !14
  %i.tz = fpext float %i.ty to double
  %i.ua = fsub double 1.000000e+00, %i.tz
  %i.ub = load float, ptr %i.tn, align 4, !tbaa !14
  %i.uc = fpext float %i.ub to double
  %i.ud = fadd double %i.ua, %i.uc
  %i.ue = load float, ptr %i.tf, align 4, !tbaa !14
  %i.uf = fpext float %i.ue to double
  %i.ug = fsub double %i.ud, %i.uf
  %i.uh = fmul double %i.ug, 5.000000e-01
  %i.ui = fmul double %i.uh, %i.nw
  %i.uj = fptrunc double %i.ui to float
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %indvars.iv664
  store float %i.uj, ptr %i.uk, align 4, !tbaa !14
  %i.ul = load float, ptr %i.tn, align 4, !tbaa !14
  %i.um = fpext float %i.ul to double
  %i.un = fsub double 1.000000e+00, %i.um
  %i.uo = load float, ptr %i.tb, align 4, !tbaa !14
  %i.up = fpext float %i.uo to double
  %i.uq = fadd double %i.un, %i.up
  %i.ur = load float, ptr %i.tf, align 4, !tbaa !14
  %i.us = fpext float %i.ur to double
  %i.ut = fsub double %i.uq, %i.us
  %i.uu = fmul double %i.ut, 5.000000e-01
  %i.uv = fmul double %i.uu, %i.nw
  %i.uw = fptrunc double %i.uv to float
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %indvars.iv664
  store float %i.uw, ptr %i.ux, align 4, !tbaa !14
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %indvars.iv664
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !14
  %i.va = fsub float 1.000000e+00, %i.uz
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %indvars.iv664
  store float %i.va, ptr %i.vb, align 4, !tbaa !14
  %indvars.iv.next665 = add nuw nsw i64 %indvars.iv664, 1 ; 2 uses
  %exitcond668 = icmp eq i64 %indvars.iv.next665, %wide.trip.count667
  br i1 %exitcond668, label %._crit_edge576, label %scalar.ph1043, !llvm.loop !108

._crit_edge576:                                   ; preds = %scalar.ph1043, %middle.block1064, %._crit_edge572
  %i.vc = load ptr, ptr @Q__align.w1, align 8, !tbaa !12 ; 24 uses
  %i.vd = ptrtoaddr ptr %i.vc to i64
  %i.ve = load ptr, ptr @Q__align.w2, align 8, !tbaa !12
  %i.vf = load i8, ptr @RNAscoremtx, align 1, !tbaa !18
  %.not494 = icmp eq i8 %i.vf, 114
  br i1 %.not494, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge576
  %i.vg = load ptr, ptr @Q__align.initverticalw, align 8, !tbaa !12 ; 2 uses
  %i.vh = load ptr, ptr @Q__align.cpmx2, align 8, !tbaa !8
  %i.vi = load ptr, ptr @Q__align.cpmx1, align 8, !tbaa !8
  %i.vj = load ptr, ptr @Q__align.floatwork, align 8, !tbaa !8
  %i.vk = load ptr, ptr @Q__align.intwork, align 8, !tbaa !51
  tail call fastcc void @match_calc(ptr noundef %i.vg, ptr noundef %i.vh, ptr noundef %i.vi, i32 noundef 0, i32 noundef %i.l, ptr noundef %i.vj, ptr noundef %i.vk, i32 noundef 1)
  br label %clearvec.exit

bb.r:                                             ; preds = %._crit_edge576
  %.not2.i = icmp eq i32 %i.l, 0
  br i1 %.not2.i, label %clearvec.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.r
  %i.vl = load ptr, ptr @Q__align.initverticalw, align 8, !tbaa !12 ; 2 uses
  %i.vm = shl i64 %i.k, 2
  %i.vn = and i64 %i.vm, 17179869180
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.vl, i8 0, i64 %i.vn, i1 false), !tbaa !14
  br label %clearvec.exit

clearvec.exit:                                    ; preds = %.lr.ph.preheader.i, %bb.q
  %i.vo = phi ptr [ %i.vl, %.lr.ph.preheader.i ], [ %i.vg, %bb.q ] ; 2 uses
  %.not495 = icmp eq ptr %7, null
  br i1 %.not495, label %imp_match_out_vead_tateQ.exit, label %bb.s

clearvec.exit.thread:                             ; preds = %bb.r
  %.not495543 = icmp eq ptr %7, null
  br label %imp_match_out_vead_tateQ.exit

bb.s:                                             ; preds = %clearvec.exit
  %i.vp = icmp sgt i32 %i.l, 0
  br i1 %i.vp, label %.lr.ph.i, label %imp_match_out_vead_tateQ.exit

.lr.ph.i:                                         ; preds = %bb.s
  %i.vq = load ptr, ptr @impmtx, align 8, !tbaa !8 ; 5 uses
  %wide.trip.count.i = and i64 %i.k, 2147483647
  %i.vr = add nsw i64 %wide.trip.count.i, -1
  %xtraiter1367 = and i64 %i.k, 3                 ; 3 uses
  %i.vs = icmp ult i64 %i.vr, 3
end_hunk_0
begin_hunk_1_@Q__align_gapmap:bb.a
  %i.fe = phi i32 [ %.pre715, %bb.k ], [ %i.dc, %bb.j ]
  %i.ff = tail call i32 @llvm.smax.i32(i32 %i.fe, i32 %i.fd) ; 2 uses
  %i.fg = tail call i32 @llvm.smax.i32(i32 %i.fc, i32 %i.fb) ; 2 uses
  %i.fh = add nsw i32 %i.ff, 10
  %i.fi = add nsw i32 %i.fg, 10
  %i.fj = tail call ptr @AllocateIntMtx(i32 noundef %i.fh, i32 noundef %i.fi) #12 ; 2 uses
  store ptr %i.fj, ptr @commonIP, align 8, !tbaa !51
  store i32 %i.ff, ptr @commonAlloc1, align 4, !tbaa !4
  store i32 %i.fg, ptr @commonAlloc2, align 4, !tbaa !4
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge719, %bb.l
  %i.fk = phi ptr [ %.pre720, %._crit_edge719 ], [ %i.fj, %bb.l ]
  store ptr %i.fk, ptr @Q__align_gapmap.ijp, align 8, !tbaa !51
  %i.fl = load ptr, ptr @Q__align_gapmap.cpmx1, align 8, !tbaa !8
  tail call void @cpmx_calc_new(ptr noundef nonnull %0, ptr noundef %i.fl, ptr noundef %2, i32 noundef %i.l, i32 noundef %4) #12
  %i.fm = load ptr, ptr @Q__align_gapmap.cpmx2, align 8, !tbaa !8
  tail call void @cpmx_calc_new(ptr noundef nonnull %1, ptr noundef %i.fm, ptr noundef %3, i32 noundef %i.o, i32 noundef %5) #12
  %.not = icmp eq ptr %9, null
  %i.fn = load ptr, ptr @Q__align_gapmap.ogcp1g, align 8, !tbaa !12 ; 2 uses
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @new_OpeningGapCount_zure(ptr noundef %i.fn, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.l, ptr noundef nonnull %9, ptr noundef %11) #12
  %i.fo = load ptr, ptr @Q__align_gapmap.ogcp2g, align 8, !tbaa !12
  tail call void @new_OpeningGapCount_zure(ptr noundef %i.fo, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.o, ptr noundef %10, ptr noundef %12) #12
  %i.fp = load ptr, ptr @Q__align_gapmap.fgcp1g, align 8, !tbaa !12
  tail call void @new_FinalGapCount_zure(ptr noundef %i.fp, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.l, ptr noundef nonnull %9, ptr noundef %11) #12
  %i.fq = load ptr, ptr @Q__align_gapmap.fgcp2g, align 8, !tbaa !12
  tail call void @new_FinalGapCount_zure(ptr noundef %i.fq, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.o, ptr noundef %10, ptr noundef %12) #12
  %i.fr = load ptr, ptr @Q__align_gapmap.digf1, align 8, !tbaa !12
  tail call void @getdigapfreq_part(ptr noundef %i.fr, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.l, ptr noundef nonnull %9, ptr noundef %11) #12
  %i.fs = load ptr, ptr @Q__align_gapmap.digf2, align 8, !tbaa !12
  tail call void @getdigapfreq_part(ptr noundef %i.fs, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.o, ptr noundef %10, ptr noundef %12) #12
  %i.ft = load ptr, ptr @Q__align_gapmap.diaf1, align 8, !tbaa !12
  tail call void @getdiaminofreq_part(ptr noundef %i.ft, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.l, ptr noundef nonnull %9, ptr noundef %11) #12
  %i.fu = load ptr, ptr @Q__align_gapmap.diaf2, align 8, !tbaa !12
  tail call void @getdiaminofreq_part(ptr noundef %i.fu, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.o, ptr noundef %10, ptr noundef %12) #12
  %i.fv = load ptr, ptr @Q__align_gapmap.gapf1, align 8, !tbaa !12
  tail call void @getgapfreq(ptr noundef %i.fv, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.l) #12
  %i.fw = load ptr, ptr @Q__align_gapmap.gapf2, align 8, !tbaa !12
  tail call void @getgapfreq(ptr noundef %i.fw, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.o) #12
  %i.fx = load ptr, ptr @Q__align_gapmap.gapz1, align 8, !tbaa !12
  tail call void @getgapfreq_zure_part(ptr noundef %i.fx, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.l, ptr noundef nonnull %9) #12
  %i.fy = load ptr, ptr @Q__align_gapmap.gapz2, align 8, !tbaa !12
  tail call void @getgapfreq_zure_part(ptr noundef %i.fy, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.o, ptr noundef nonnull %9) #12
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  tail call void @st_OpeningGapCount(ptr noundef %i.fn, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.l) #12
  %i.fz = load ptr, ptr @Q__align_gapmap.ogcp2g, align 8, !tbaa !12
  tail call void @st_OpeningGapCount(ptr noundef %i.fz, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.o) #12
  %i.ga = load ptr, ptr @Q__align_gapmap.fgcp1g, align 8, !tbaa !12
  tail call void @st_FinalGapCount_zure(ptr noundef %i.ga, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.l) #12
  %i.gb = load ptr, ptr @Q__align_gapmap.fgcp2g, align 8, !tbaa !12
  tail call void @st_FinalGapCount_zure(ptr noundef %i.gb, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.o) #12
  %i.gc = load ptr, ptr @Q__align_gapmap.digf1, align 8, !tbaa !12
  tail call void @getdigapfreq_st(ptr noundef %i.gc, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.l) #12
  %i.gd = load ptr, ptr @Q__align_gapmap.digf2, align 8, !tbaa !12
  tail call void @getdigapfreq_st(ptr noundef %i.gd, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.o) #12
  %i.ge = load ptr, ptr @Q__align_gapmap.diaf1, align 8, !tbaa !12
  tail call void @getdiaminofreq_x(ptr noundef %i.ge, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.l) #12
  %i.gf = load ptr, ptr @Q__align_gapmap.diaf2, align 8, !tbaa !12
  tail call void @getdiaminofreq_x(ptr noundef %i.gf, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.o) #12
  %i.gg = load ptr, ptr @Q__align_gapmap.gapf1, align 8, !tbaa !12
  tail call void @getgapfreq(ptr noundef %i.gg, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.l) #12
  %i.gh = load ptr, ptr @Q__align_gapmap.gapf2, align 8, !tbaa !12
  tail call void @getgapfreq(ptr noundef %i.gh, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.o) #12
  %i.gi = load ptr, ptr @Q__align_gapmap.gapz1, align 8, !tbaa !12
  tail call void @getgapfreq_zure(ptr noundef %i.gi, i32 noundef %4, ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.l) #12
  %i.gj = load ptr, ptr @Q__align_gapmap.gapz2, align 8, !tbaa !12
  tail call void @getgapfreq_zure(ptr noundef %i.gj, i32 noundef %5, ptr noundef nonnull %1, ptr noundef %3, i32 noundef %i.o) #12
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.gk = icmp sgt i32 %i.o, -2
  br i1 %i.gk, label %.lr.ph567, label %._crit_edge568

.lr.ph567:                                        ; preds = %bb.p
  %i.gl = load ptr, ptr @Q__align_gapmap.ogcp2g, align 8, !tbaa !12 ; 8 uses
  %i.gm = load ptr, ptr @Q__align_gapmap.digf2, align 8, !tbaa !12 ; 8 uses
  %i.gn = fpext float %i.b to double              ; 5 uses
  %i.go = load ptr, ptr @Q__align_gapmap.og_h_dg_n2_p, align 8, !tbaa !12 ; 4 uses
  %i.gp = load ptr, ptr @Q__align_gapmap.fgcp2g, align 8, !tbaa !12 ; 8 uses
  %i.gq = load ptr, ptr @Q__align_gapmap.fg_h_dg_n2_p, align 8, !tbaa !12 ; 8 uses
  %i.gr = load ptr, ptr @Q__align_gapmap.og_t_fg_h_dg_n2_p, align 8, !tbaa !12 ; 7 uses
  %i.gs = load ptr, ptr @Q__align_gapmap.fg_t_og_h_dg_n2_p, align 8, !tbaa !12 ; 7 uses
  %i.gt = load ptr, ptr @Q__align_gapmap.gapz2, align 8, !tbaa !12 ; 8 uses
  %i.gu = load ptr, ptr @Q__align_gapmap.gapz_n2, align 8, !tbaa !12 ; 7 uses
  %i.gv = add i64 %i.n, 2                         ; 2 uses
  %wide.trip.count654 = and i64 %i.gv, 4294967295 ; 4 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count654, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph567
  %i.gw = shl nuw nsw i64 %wide.trip.count654, 2  ; 9 uses
  %scevgep = getelementptr i8, ptr %i.go, i64 %i.gw
  %scevgep764 = getelementptr i8, ptr %i.gq, i64 %i.gw ; 5 uses
  %scevgep765 = getelementptr i8, ptr %i.gr, i64 %i.gw ; 4 uses
  %scevgep766 = getelementptr i8, ptr %i.gs, i64 %i.gw ; 4 uses
  %scevgep767 = getelementptr i8, ptr %i.gu, i64 %i.gw ; 4 uses
  %scevgep768 = getelementptr i8, ptr %i.gl, i64 %i.gw ; 5 uses
  %scevgep769 = getelementptr i8, ptr %i.gm, i64 %i.gw ; 5 uses
  %scevgep770 = getelementptr i8, ptr %i.gp, i64 %i.gw ; 5 uses
  %scevgep771 = getelementptr i8, ptr %i.gt, i64 %i.gw ; 5 uses
  %i.gx = insertelement <8 x ptr> poison, ptr %i.go, i64 0
  %i.gy = shufflevector <8 x ptr> %i.gx, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.gz = insertelement <8 x ptr> poison, ptr %scevgep764, i64 0
  %i.ha = insertelement <8 x ptr> %i.gz, ptr %scevgep765, i64 1
  %i.hb = insertelement <8 x ptr> %i.ha, ptr %scevgep766, i64 2
  %i.hc = insertelement <8 x ptr> %i.hb, ptr %scevgep767, i64 3
  %i.hd = insertelement <8 x ptr> %i.hc, ptr %scevgep768, i64 4
  %i.he = insertelement <8 x ptr> %i.hd, ptr %scevgep769, i64 5
  %i.hf = insertelement <8 x ptr> %i.he, ptr %scevgep770, i64 6
  %i.hg = insertelement <8 x ptr> %i.hf, ptr %scevgep771, i64 7
  %i.hh = icmp ult <8 x ptr> %i.gy, %i.hg
  %i.hi = insertelement <8 x ptr> poison, ptr %i.gq, i64 0
  %i.hj = insertelement <8 x ptr> %i.hi, ptr %i.gr, i64 1
  %i.hk = insertelement <8 x ptr> %i.hj, ptr %i.gs, i64 2
  %i.hl = insertelement <8 x ptr> %i.hk, ptr %i.gu, i64 3
  %i.hm = insertelement <8 x ptr> %i.hl, ptr %i.gl, i64 4
  %i.hn = insertelement <8 x ptr> %i.hm, ptr %i.gm, i64 5
  %i.ho = insertelement <8 x ptr> %i.hn, ptr %i.gp, i64 6
  %i.hp = insertelement <8 x ptr> %i.ho, ptr %i.gt, i64 7
  %i.hq = insertelement <8 x ptr> poison, ptr %scevgep, i64 0
  %i.hr = shufflevector <8 x ptr> %i.hq, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.hs = icmp ult <8 x ptr> %i.hp, %i.hr
  %i.ht = and <8 x i1> %i.hh, %i.hs               ; 2 uses
  %i.hu = insertelement <4 x ptr> poison, ptr %i.gq, i64 0
  %i.hv = shufflevector <4 x ptr> %i.hu, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.hw = insertelement <4 x ptr> poison, ptr %scevgep765, i64 0 ; 2 uses
  %i.hx = insertelement <4 x ptr> %i.hw, ptr %scevgep766, i64 1
  %i.hy = insertelement <4 x ptr> %i.hx, ptr %scevgep767, i64 2
  %i.hz = insertelement <4 x ptr> %i.hy, ptr %scevgep768, i64 3
  %i.ia = icmp ult <4 x ptr> %i.hv, %i.hz
  %i.ib = insertelement <4 x ptr> poison, ptr %i.gr, i64 0 ; 2 uses
  %i.ic = insertelement <4 x ptr> %i.ib, ptr %i.gs, i64 1
  %i.id = insertelement <4 x ptr> %i.ic, ptr %i.gu, i64 2
  %i.ie = insertelement <4 x ptr> %i.id, ptr %i.gl, i64 3
  %i.if = insertelement <4 x ptr> poison, ptr %scevgep764, i64 0
  %i.ig = shufflevector <4 x ptr> %i.if, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ih = icmp ult <4 x ptr> %i.ie, %i.ig
  %i.ii = and <4 x i1> %i.ia, %i.ih
  %bound0815 = icmp ult ptr %i.gq, %scevgep769
  %bound1816 = icmp ult ptr %i.gm, %scevgep764
  %found.conflict817 = and i1 %bound0815, %bound1816
  %bound0819 = icmp ult ptr %i.gq, %scevgep770
  %bound1820 = icmp ult ptr %i.gp, %scevgep764
  %found.conflict821 = and i1 %bound0819, %bound1820
  %bound0823 = icmp ult ptr %i.gq, %scevgep771
  %bound1824 = icmp ult ptr %i.gt, %scevgep764
  %found.conflict825 = and i1 %bound0823, %bound1824
  %i.ij = shufflevector <4 x ptr> %i.ib, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ik = insertelement <4 x ptr> poison, ptr %scevgep766, i64 0 ; 2 uses
  %i.il = insertelement <4 x ptr> %i.ik, ptr %scevgep767, i64 1
  %i.im = insertelement <4 x ptr> %i.il, ptr %scevgep768, i64 2
  %i.in = insertelement <4 x ptr> %i.im, ptr %scevgep769, i64 3
  %i.io = icmp ult <4 x ptr> %i.ij, %i.in
  %i.ip = insertelement <4 x ptr> poison, ptr %i.gs, i64 0 ; 2 uses
  %i.iq = insertelement <4 x ptr> %i.ip, ptr %i.gu, i64 1
  %i.ir = insertelement <4 x ptr> %i.iq, ptr %i.gl, i64 2
  %i.is = insertelement <4 x ptr> %i.ir, ptr %i.gm, i64 3
  %i.it = shufflevector <4 x ptr> %i.hw, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.iu = icmp ult <4 x ptr> %i.is, %i.it
  %i.iv = and <4 x i1> %i.io, %i.iu
  %bound0843 = icmp ult ptr %i.gr, %scevgep770
  %bound1844 = icmp ult ptr %i.gp, %scevgep765
  %found.conflict845 = and i1 %bound0843, %bound1844
  %bound0847 = icmp ult ptr %i.gr, %scevgep771
  %bound1848 = icmp ult ptr %i.gt, %scevgep765
  %found.conflict849 = and i1 %bound0847, %bound1848
  %i.iw = shufflevector <4 x ptr> %i.ip, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ix = insertelement <4 x ptr> poison, ptr %scevgep767, i64 0 ; 2 uses
  %i.iy = insertelement <4 x ptr> %i.ix, ptr %scevgep768, i64 1
  %i.iz = insertelement <4 x ptr> %i.iy, ptr %scevgep769, i64 2
  %i.ja = insertelement <4 x ptr> %i.iz, ptr %scevgep770, i64 3
  %i.jb = icmp ult <4 x ptr> %i.iw, %i.ja
  %i.jc = insertelement <4 x ptr> poison, ptr %i.gu, i64 0 ; 2 uses
  %i.jd = insertelement <4 x ptr> %i.jc, ptr %i.gl, i64 1
  %i.je = insertelement <4 x ptr> %i.jd, ptr %i.gm, i64 2
  %i.jf = insertelement <4 x ptr> %i.je, ptr %i.gp, i64 3
  %i.jg = shufflevector <4 x ptr> %i.ik, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.jh = icmp ult <4 x ptr> %i.jf, %i.jg
  %i.ji = and <4 x i1> %i.jb, %i.jh
  %bound0867 = icmp ult ptr %i.gs, %scevgep771
  %bound1868 = icmp ult ptr %i.gt, %scevgep766
  %found.conflict869 = and i1 %bound0867, %bound1868
  %i.jj = shufflevector <4 x ptr> %i.jc, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.jk = insertelement <4 x ptr> poison, ptr %scevgep768, i64 0
  %i.jl = insertelement <4 x ptr> %i.jk, ptr %scevgep769, i64 1
  %i.jm = insertelement <4 x ptr> %i.jl, ptr %scevgep770, i64 2
  %i.jn = insertelement <4 x ptr> %i.jm, ptr %scevgep771, i64 3
  %i.jo = icmp ult <4 x ptr> %i.jj, %i.jn
  %i.jp = insertelement <4 x ptr> poison, ptr %i.gl, i64 0
  %i.jq = insertelement <4 x ptr> %i.jp, ptr %i.gm, i64 1
  %i.jr = insertelement <4 x ptr> %i.jq, ptr %i.gp, i64 2
  %i.js = insertelement <4 x ptr> %i.jr, ptr %i.gt, i64 3
  %i.jt = shufflevector <4 x ptr> %i.ix, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ju = icmp ult <4 x ptr> %i.js, %i.jt
  %i.jv = and <4 x i1> %i.jo, %i.ju
  %15 = or <4 x i1> %i.ii, %i.iv
  %16 = or <4 x i1> %15, %i.ji
  %17 = or <4 x i1> %16, %i.jv
  %i.jw = shufflevector <4 x i1> %17, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jx = or <8 x i1> %i.jw, %i.ht
  %i.jy = shufflevector <8 x i1> %i.jx, <8 x i1> %i.ht, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.jz = bitcast <8 x i1> %i.jy to i8
  %i.ka = icmp ne i8 %i.jz, 0
  %op.rdx1227 = or i1 %i.ka, %found.conflict817
  %op.rdx1228 = or i1 %found.conflict821, %found.conflict825
  %op.rdx1229 = or i1 %found.conflict845, %found.conflict849
  %op.rdx1230 = or i1 %op.rdx1227, %op.rdx1228
  %op.rdx1231 = or i1 %op.rdx1229, %found.conflict869
  %op.rdx1232 = or i1 %op.rdx1230, %op.rdx1231
  br i1 %op.rdx1232, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gv, 4294967292              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.gn, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %index ; 3 uses
  %wide.load = load <4 x float>, ptr %i.kb, align 4, !tbaa !14, !alias.scope !207
  %i.kc = fpext <4 x float> %wide.load to <4 x double>
  %i.kd = fsub <4 x double> splat (double 1.000000e+00), %i.kc
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %index ; 4 uses
  %wide.load887 = load <4 x float>, ptr %i.ke, align 4, !tbaa !14, !alias.scope !210
  %i.kf = fpext <4 x float> %wide.load887 to <4 x double>
  %i.kg = fsub <4 x double> %i.kd, %i.kf
  %i.kh = fmul <4 x double> %i.kg, %broadcast.splat
  %i.ki = fmul <4 x double> %i.kh, splat (double 5.000000e-01)
  %i.kj = fptrunc <4 x double> %i.ki to <4 x float>
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %index
  store <4 x float> %i.kj, ptr %i.kk, align 4, !tbaa !14, !alias.scope !212, !noalias !214
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %index ; 3 uses
  %wide.load888 = load <4 x float>, ptr %i.kl, align 4, !tbaa !14, !alias.scope !221
  %i.km = fpext <4 x float> %wide.load888 to <4 x double>
  %i.kn = fsub <4 x double> splat (double 1.000000e+00), %i.km
  %wide.load889 = load <4 x float>, ptr %i.ke, align 4, !tbaa !14, !alias.scope !210
  %i.ko = fpext <4 x float> %wide.load889 to <4 x double>
  %i.kp = fsub <4 x double> %i.kn, %i.ko
  %i.kq = fmul <4 x double> %i.kp, %broadcast.splat
  %i.kr = fmul <4 x double> %i.kq, splat (double 5.000000e-01)
  %i.ks = fptrunc <4 x double> %i.kr to <4 x float>
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %index
  store <4 x float> %i.ks, ptr %i.kt, align 4, !tbaa !14, !alias.scope !222, !noalias !223
  %wide.load890 = load <4 x float>, ptr %i.kb, align 4, !tbaa !14, !alias.scope !207
  %i.ku = fpext <4 x float> %wide.load890 to <4 x double>
  %i.kv = fsub <4 x double> splat (double 1.000000e+00), %i.ku
  %wide.load891 = load <4 x float>, ptr %i.kl, align 4, !tbaa !14, !alias.scope !221
  %i.kw = fpext <4 x float> %wide.load891 to <4 x double>
  %i.kx = fadd <4 x double> %i.kv, %i.kw
  %wide.load892 = load <4 x float>, ptr %i.ke, align 4, !tbaa !14, !alias.scope !210
  %i.ky = fpext <4 x float> %wide.load892 to <4 x double>
  %i.kz = fsub <4 x double> %i.kx, %i.ky
  %i.la = fmul <4 x double> %i.kz, splat (double 5.000000e-01)
  %i.lb = fmul <4 x double> %i.la, %broadcast.splat
  %i.lc = fptrunc <4 x double> %i.lb to <4 x float>
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %index
  store <4 x float> %i.lc, ptr %i.ld, align 4, !tbaa !14, !alias.scope !224, !noalias !225
  %wide.load893 = load <4 x float>, ptr %i.kl, align 4, !tbaa !14, !alias.scope !221
  %i.le = fpext <4 x float> %wide.load893 to <4 x double>
  %i.lf = fsub <4 x double> splat (double 1.000000e+00), %i.le
  %wide.load894 = load <4 x float>, ptr %i.kb, align 4, !tbaa !14, !alias.scope !207
  %i.lg = fpext <4 x float> %wide.load894 to <4 x double>
  %i.lh = fadd <4 x double> %i.lf, %i.lg
  %wide.load895 = load <4 x float>, ptr %i.ke, align 4, !tbaa !14, !alias.scope !210
  %i.li = fpext <4 x float> %wide.load895 to <4 x double>
  %i.lj = fsub <4 x double> %i.lh, %i.li
  %i.lk = fmul <4 x double> %i.lj, splat (double 5.000000e-01)
  %i.ll = fmul <4 x double> %i.lk, %broadcast.splat
  %i.lm = fptrunc <4 x double> %i.ll to <4 x float>
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %index
  store <4 x float> %i.lm, ptr %i.ln, align 4, !tbaa !14, !alias.scope !226, !noalias !227
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %index
  %wide.load896 = load <4 x float>, ptr %i.lo, align 4, !tbaa !14, !alias.scope !228
  %i.lp = fsub <4 x float> splat (float 1.000000e+00), %wide.load896
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %index
  store <4 x float> %i.lp, ptr %i.lq, align 4, !tbaa !14, !alias.scope !229, !noalias !230
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lr = icmp eq i64 %index.next, %n.vec
  br i1 %i.lr, label %middle.block, label %vector.body, !llvm.loop !231

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count654, %n.vec
  br i1 %cmp.n, label %._crit_edge568, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph567, %middle.block
  %indvars.iv651.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph567 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv651 = phi i64 [ %indvars.iv.next652, %scalar.ph ], [ %indvars.iv651.ph, %scalar.ph.preheader ] ; 10 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv651 ; 3 uses
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !14
  %i.lu = fpext float %i.lt to double
  %i.lv = fsub double 1.000000e+00, %i.lu
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv651 ; 4 uses
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !14
  %i.ly = fpext float %i.lx to double
  %i.lz = fsub double %i.lv, %i.ly
  %i.ma = fmul double %i.lz, %i.gn
  %i.mb = fmul double %i.ma, 5.000000e-01
  %i.mc = fptrunc double %i.mb to float
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv651
  store float %i.mc, ptr %i.md, align 4, !tbaa !14
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv651 ; 3 uses
  %i.mf = load float, ptr %i.me, align 4, !tbaa !14
  %i.mg = fpext float %i.mf to double
  %i.mh = fsub double 1.000000e+00, %i.mg
  %i.mi = load float, ptr %i.lw, align 4, !tbaa !14
  %i.mj = fpext float %i.mi to double
  %i.mk = fsub double %i.mh, %i.mj
  %i.ml = fmul double %i.mk, %i.gn
  %i.mm = fmul double %i.ml, 5.000000e-01
  %i.mn = fptrunc double %i.mm to float
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %indvars.iv651
  store float %i.mn, ptr %i.mo, align 4, !tbaa !14
  %i.mp = load float, ptr %i.ls, align 4, !tbaa !14
  %i.mq = fpext float %i.mp to double
  %i.mr = fsub double 1.000000e+00, %i.mq
  %i.ms = load float, ptr %i.me, align 4, !tbaa !14
  %i.mt = fpext float %i.ms to double
  %i.mu = fadd double %i.mr, %i.mt
  %i.mv = load float, ptr %i.lw, align 4, !tbaa !14
  %i.mw = fpext float %i.mv to double
  %i.mx = fsub double %i.mu, %i.mw
  %i.my = fmul double %i.mx, 5.000000e-01
  %i.mz = fmul double %i.my, %i.gn
  %i.na = fptrunc double %i.mz to float
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %indvars.iv651
  store float %i.na, ptr %i.nb, align 4, !tbaa !14
  %i.nc = load float, ptr %i.me, align 4, !tbaa !14
  %i.nd = fpext float %i.nc to double
  %i.ne = fsub double 1.000000e+00, %i.nd
  %i.nf = load float, ptr %i.ls, align 4, !tbaa !14
  %i.ng = fpext float %i.nf to double
  %i.nh = fadd double %i.ne, %i.ng
  %i.ni = load float, ptr %i.lw, align 4, !tbaa !14
  %i.nj = fpext float %i.ni to double
  %i.nk = fsub double %i.nh, %i.nj
  %i.nl = fmul double %i.nk, 5.000000e-01
  %i.nm = fmul double %i.nl, %i.gn
  %i.nn = fptrunc double %i.nm to float
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %indvars.iv651
  store float %i.nn, ptr %i.no, align 4, !tbaa !14
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv651
  %i.nq = load float, ptr %i.np, align 4, !tbaa !14
  %i.nr = fsub float 1.000000e+00, %i.nq
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv651
  store float %i.nr, ptr %i.ns, align 4, !tbaa !14
  %indvars.iv.next652 = add nuw nsw i64 %indvars.iv651, 1 ; 2 uses
  %exitcond655 = icmp eq i64 %indvars.iv.next652, %wide.trip.count654
  br i1 %exitcond655, label %._crit_edge568, label %scalar.ph, !llvm.loop !232

._crit_edge568:                                   ; preds = %scalar.ph, %middle.block, %bb.p
  %i.nt = icmp sgt i32 %i.l, -2
  br i1 %i.nt, label %.lr.ph571, label %._crit_edge572

.lr.ph571:                                        ; preds = %._crit_edge568
  %i.nu = load ptr, ptr @Q__align_gapmap.ogcp1g, align 8, !tbaa !12 ; 8 uses
  %i.nv = load ptr, ptr @Q__align_gapmap.digf1, align 8, !tbaa !12 ; 8 uses
  %i.nw = fpext float %i.b to double              ; 5 uses
  %i.nx = load ptr, ptr @Q__align_gapmap.og_h_dg_n1_p, align 8, !tbaa !12 ; 4 uses
  %i.ny = load ptr, ptr @Q__align_gapmap.fgcp1g, align 8, !tbaa !12 ; 8 uses
  %i.nz = load ptr, ptr @Q__align_gapmap.fg_h_dg_n1_p, align 8, !tbaa !12 ; 8 uses
  %i.oa = load ptr, ptr @Q__align_gapmap.og_t_fg_h_dg_n1_p, align 8, !tbaa !12 ; 7 uses
  %i.ob = load ptr, ptr @Q__align_gapmap.fg_t_og_h_dg_n1_p, align 8, !tbaa !12 ; 7 uses
  %i.oc = load ptr, ptr @Q__align_gapmap.gapz1, align 8, !tbaa !12 ; 8 uses
  %i.od = load ptr, ptr @Q__align_gapmap.gapz_n1, align 8, !tbaa !12 ; 7 uses
  %i.oe = add i64 %i.k, 2                         ; 2 uses
  %wide.trip.count659 = and i64 %i.oe, 4294967295 ; 4 uses
  %min.iters.check1027 = icmp samesign ult i64 %wide.trip.count659, 20
  br i1 %min.iters.check1027, label %scalar.ph1026.preheader, label %vector.memcheck897

vector.memcheck897:                               ; preds = %.lr.ph571
  %i.of = shl nuw nsw i64 %wide.trip.count659, 2  ; 9 uses
  %scevgep898 = getelementptr i8, ptr %i.nx, i64 %i.of
  %scevgep899 = getelementptr i8, ptr %i.nz, i64 %i.of ; 5 uses
  %scevgep900 = getelementptr i8, ptr %i.oa, i64 %i.of ; 4 uses
  %scevgep901 = getelementptr i8, ptr %i.ob, i64 %i.of ; 4 uses
  %scevgep902 = getelementptr i8, ptr %i.od, i64 %i.of ; 4 uses
  %scevgep903 = getelementptr i8, ptr %i.nu, i64 %i.of ; 5 uses
  %scevgep904 = getelementptr i8, ptr %i.nv, i64 %i.of ; 5 uses
  %scevgep905 = getelementptr i8, ptr %i.ny, i64 %i.of ; 5 uses
  %scevgep906 = getelementptr i8, ptr %i.oc, i64 %i.of ; 5 uses
  %i.og = insertelement <8 x ptr> poison, ptr %i.nx, i64 0
  %i.oh = shufflevector <8 x ptr> %i.og, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.oi = insertelement <8 x ptr> poison, ptr %scevgep899, i64 0
  %i.oj = insertelement <8 x ptr> %i.oi, ptr %scevgep900, i64 1
  %i.ok = insertelement <8 x ptr> %i.oj, ptr %scevgep901, i64 2
  %i.ol = insertelement <8 x ptr> %i.ok, ptr %scevgep902, i64 3
  %i.om = insertelement <8 x ptr> %i.ol, ptr %scevgep903, i64 4
  %i.on = insertelement <8 x ptr> %i.om, ptr %scevgep904, i64 5
  %i.oo = insertelement <8 x ptr> %i.on, ptr %scevgep905, i64 6
  %i.op = insertelement <8 x ptr> %i.oo, ptr %scevgep906, i64 7
  %i.oq = icmp ult <8 x ptr> %i.oh, %i.op
  %i.or = insertelement <8 x ptr> poison, ptr %i.nz, i64 0
  %i.os = insertelement <8 x ptr> %i.or, ptr %i.oa, i64 1
  %i.ot = insertelement <8 x ptr> %i.os, ptr %i.ob, i64 2
  %i.ou = insertelement <8 x ptr> %i.ot, ptr %i.od, i64 3
  %i.ov = insertelement <8 x ptr> %i.ou, ptr %i.nu, i64 4
  %i.ow = insertelement <8 x ptr> %i.ov, ptr %i.nv, i64 5
  %i.ox = insertelement <8 x ptr> %i.ow, ptr %i.ny, i64 6
  %i.oy = insertelement <8 x ptr> %i.ox, ptr %i.oc, i64 7
  %i.oz = insertelement <8 x ptr> poison, ptr %scevgep898, i64 0
  %i.pa = shufflevector <8 x ptr> %i.oz, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.pb = icmp ult <8 x ptr> %i.oy, %i.pa
  %i.pc = and <8 x i1> %i.oq, %i.pb               ; 2 uses
  %i.pd = insertelement <4 x ptr> poison, ptr %i.nz, i64 0
  %i.pe = shufflevector <4 x ptr> %i.pd, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.pf = insertelement <4 x ptr> poison, ptr %scevgep900, i64 0 ; 2 uses
  %i.pg = insertelement <4 x ptr> %i.pf, ptr %scevgep901, i64 1
  %i.ph = insertelement <4 x ptr> %i.pg, ptr %scevgep902, i64 2
  %i.pi = insertelement <4 x ptr> %i.ph, ptr %scevgep903, i64 3
  %i.pj = icmp ult <4 x ptr> %i.pe, %i.pi
  %i.pk = insertelement <4 x ptr> poison, ptr %i.oa, i64 0 ; 2 uses
  %i.pl = insertelement <4 x ptr> %i.pk, ptr %i.ob, i64 1
  %i.pm = insertelement <4 x ptr> %i.pl, ptr %i.od, i64 2
  %i.pn = insertelement <4 x ptr> %i.pm, ptr %i.nu, i64 3
  %i.po = insertelement <4 x ptr> poison, ptr %scevgep899, i64 0
  %i.pp = shufflevector <4 x ptr> %i.po, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.pq = icmp ult <4 x ptr> %i.pn, %i.pp
  %i.pr = and <4 x i1> %i.pj, %i.pq
  %bound0954 = icmp ult ptr %i.nz, %scevgep904
  %bound1955 = icmp ult ptr %i.nv, %scevgep899
  %found.conflict956 = and i1 %bound0954, %bound1955
  %bound0958 = icmp ult ptr %i.nz, %scevgep905
  %bound1959 = icmp ult ptr %i.ny, %scevgep899
  %found.conflict960 = and i1 %bound0958, %bound1959
  %bound0962 = icmp ult ptr %i.nz, %scevgep906
  %bound1963 = icmp ult ptr %i.oc, %scevgep899
  %found.conflict964 = and i1 %bound0962, %bound1963
  %i.ps = shufflevector <4 x ptr> %i.pk, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.pt = insertelement <4 x ptr> poison, ptr %scevgep901, i64 0 ; 2 uses
  %i.pu = insertelement <4 x ptr> %i.pt, ptr %scevgep902, i64 1
  %i.pv = insertelement <4 x ptr> %i.pu, ptr %scevgep903, i64 2
  %i.pw = insertelement <4 x ptr> %i.pv, ptr %scevgep904, i64 3
  %i.px = icmp ult <4 x ptr> %i.ps, %i.pw
  %i.py = insertelement <4 x ptr> poison, ptr %i.ob, i64 0 ; 2 uses
  %i.pz = insertelement <4 x ptr> %i.py, ptr %i.od, i64 1
  %i.qa = insertelement <4 x ptr> %i.pz, ptr %i.nu, i64 2
  %i.qb = insertelement <4 x ptr> %i.qa, ptr %i.nv, i64 3
  %i.qc = shufflevector <4 x ptr> %i.pf, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.qd = icmp ult <4 x ptr> %i.qb, %i.qc
  %i.qe = and <4 x i1> %i.px, %i.qd
  %bound0982 = icmp ult ptr %i.oa, %scevgep905
  %bound1983 = icmp ult ptr %i.ny, %scevgep900
  %found.conflict984 = and i1 %bound0982, %bound1983
  %bound0986 = icmp ult ptr %i.oa, %scevgep906
  %bound1987 = icmp ult ptr %i.oc, %scevgep900
  %found.conflict988 = and i1 %bound0986, %bound1987
  %i.qf = shufflevector <4 x ptr> %i.py, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.qg = insertelement <4 x ptr> poison, ptr %scevgep902, i64 0 ; 2 uses
  %i.qh = insertelement <4 x ptr> %i.qg, ptr %scevgep903, i64 1
  %i.qi = insertelement <4 x ptr> %i.qh, ptr %scevgep904, i64 2
  %i.qj = insertelement <4 x ptr> %i.qi, ptr %scevgep905, i64 3
  %i.qk = icmp ult <4 x ptr> %i.qf, %i.qj
  %i.ql = insertelement <4 x ptr> poison, ptr %i.od, i64 0 ; 2 uses
  %i.qm = insertelement <4 x ptr> %i.ql, ptr %i.nu, i64 1
  %i.qn = insertelement <4 x ptr> %i.qm, ptr %i.nv, i64 2
  %i.qo = insertelement <4 x ptr> %i.qn, ptr %i.ny, i64 3
  %i.qp = shufflevector <4 x ptr> %i.pt, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.qq = icmp ult <4 x ptr> %i.qo, %i.qp
  %i.qr = and <4 x i1> %i.qk, %i.qq
  %bound01006 = icmp ult ptr %i.ob, %scevgep906
  %bound11007 = icmp ult ptr %i.oc, %scevgep901
  %found.conflict1008 = and i1 %bound01006, %bound11007
  %i.qs = shufflevector <4 x ptr> %i.ql, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.qt = insertelement <4 x ptr> poison, ptr %scevgep903, i64 0
  %i.qu = insertelement <4 x ptr> %i.qt, ptr %scevgep904, i64 1
  %i.qv = insertelement <4 x ptr> %i.qu, ptr %scevgep905, i64 2
  %i.qw = insertelement <4 x ptr> %i.qv, ptr %scevgep906, i64 3
  %i.qx = icmp ult <4 x ptr> %i.qs, %i.qw
  %i.qy = insertelement <4 x ptr> poison, ptr %i.nu, i64 0
  %i.qz = insertelement <4 x ptr> %i.qy, ptr %i.nv, i64 1
  %i.ra = insertelement <4 x ptr> %i.qz, ptr %i.ny, i64 2
  %i.rb = insertelement <4 x ptr> %i.ra, ptr %i.oc, i64 3
  %i.rc = shufflevector <4 x ptr> %i.qg, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.rd = icmp ult <4 x ptr> %i.rb, %i.rc
  %i.re = and <4 x i1> %i.qx, %i.rd
  %18 = or <4 x i1> %i.pr, %i.qe
  %19 = or <4 x i1> %18, %i.qr
  %20 = or <4 x i1> %19, %i.re
  %i.rf = shufflevector <4 x i1> %20, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rg = or <8 x i1> %i.rf, %i.pc
  %i.rh = shufflevector <8 x i1> %i.rg, <8 x i1> %i.pc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.ri = bitcast <8 x i1> %i.rh to i8
  %i.rj = icmp ne i8 %i.ri, 0
  %op.rdx = or i1 %i.rj, %found.conflict956
  %op.rdx1218 = or i1 %found.conflict960, %found.conflict964
  %op.rdx1219 = or i1 %found.conflict984, %found.conflict988
  %op.rdx1220 = or i1 %op.rdx, %op.rdx1218
  %op.rdx1221 = or i1 %op.rdx1219, %found.conflict1008
  %op.rdx1222 = or i1 %op.rdx1220, %op.rdx1221
  br i1 %op.rdx1222, label %scalar.ph1026.preheader, label %vector.ph1028

vector.ph1028:                                    ; preds = %vector.memcheck897
  %n.vec1030 = and i64 %i.oe, 4294967292          ; 3 uses
  %broadcast.splatinsert1031 = insertelement <4 x double> poison, double %i.nw, i64 0
  %broadcast.splat1032 = shufflevector <4 x double> %broadcast.splatinsert1031, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1033

vector.body1033:                                  ; preds = %vector.body1033, %vector.ph1028
  %index1034 = phi i64 [ 0, %vector.ph1028 ], [ %index.next1046, %vector.body1033 ] ; 10 uses
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %index1034 ; 3 uses
  %wide.load1035 = load <4 x float>, ptr %i.rk, align 4, !tbaa !14, !alias.scope !233
  %i.rl = fpext <4 x float> %wide.load1035 to <4 x double>
  %i.rm = fsub <4 x double> splat (double 1.000000e+00), %i.rl
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %index1034 ; 4 uses
  %wide.load1036 = load <4 x float>, ptr %i.rn, align 4, !tbaa !14, !alias.scope !236
  %i.ro = fpext <4 x float> %wide.load1036 to <4 x double>
  %i.rp = fsub <4 x double> %i.rm, %i.ro
  %i.rq = fmul <4 x double> %i.rp, %broadcast.splat1032
  %i.rr = fmul <4 x double> %i.rq, splat (double 5.000000e-01)
  %i.rs = fptrunc <4 x double> %i.rr to <4 x float>
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %index1034
  store <4 x float> %i.rs, ptr %i.rt, align 4, !tbaa !14, !alias.scope !238, !noalias !240
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %index1034 ; 3 uses
  %wide.load1037 = load <4 x float>, ptr %i.ru, align 4, !tbaa !14, !alias.scope !247
  %i.rv = fpext <4 x float> %wide.load1037 to <4 x double>
  %i.rw = fsub <4 x double> splat (double 1.000000e+00), %i.rv
  %wide.load1038 = load <4 x float>, ptr %i.rn, align 4, !tbaa !14, !alias.scope !236
  %i.rx = fpext <4 x float> %wide.load1038 to <4 x double>
  %i.ry = fsub <4 x double> %i.rw, %i.rx
  %i.rz = fmul <4 x double> %i.ry, %broadcast.splat1032
  %i.sa = fmul <4 x double> %i.rz, splat (double 5.000000e-01)
  %i.sb = fptrunc <4 x double> %i.sa to <4 x float>
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %index1034
  store <4 x float> %i.sb, ptr %i.sc, align 4, !tbaa !14, !alias.scope !248, !noalias !249
  %wide.load1039 = load <4 x float>, ptr %i.rk, align 4, !tbaa !14, !alias.scope !233
  %i.sd = fpext <4 x float> %wide.load1039 to <4 x double>
  %i.se = fsub <4 x double> splat (double 1.000000e+00), %i.sd
  %wide.load1040 = load <4 x float>, ptr %i.ru, align 4, !tbaa !14, !alias.scope !247
  %i.sf = fpext <4 x float> %wide.load1040 to <4 x double>
  %i.sg = fadd <4 x double> %i.se, %i.sf
  %wide.load1041 = load <4 x float>, ptr %i.rn, align 4, !tbaa !14, !alias.scope !236
  %i.sh = fpext <4 x float> %wide.load1041 to <4 x double>
  %i.si = fsub <4 x double> %i.sg, %i.sh
  %i.sj = fmul <4 x double> %i.si, splat (double 5.000000e-01)
  %i.sk = fmul <4 x double> %i.sj, %broadcast.splat1032
  %i.sl = fptrunc <4 x double> %i.sk to <4 x float>
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %index1034
  store <4 x float> %i.sl, ptr %i.sm, align 4, !tbaa !14, !alias.scope !250, !noalias !251
  %wide.load1042 = load <4 x float>, ptr %i.ru, align 4, !tbaa !14, !alias.scope !247
  %i.sn = fpext <4 x float> %wide.load1042 to <4 x double>
  %i.so = fsub <4 x double> splat (double 1.000000e+00), %i.sn
  %wide.load1043 = load <4 x float>, ptr %i.rk, align 4, !tbaa !14, !alias.scope !233
  %i.sp = fpext <4 x float> %wide.load1043 to <4 x double>
  %i.sq = fadd <4 x double> %i.so, %i.sp
  %wide.load1044 = load <4 x float>, ptr %i.rn, align 4, !tbaa !14, !alias.scope !236
  %i.sr = fpext <4 x float> %wide.load1044 to <4 x double>
  %i.ss = fsub <4 x double> %i.sq, %i.sr
  %i.st = fmul <4 x double> %i.ss, splat (double 5.000000e-01)
  %i.su = fmul <4 x double> %i.st, %broadcast.splat1032
  %i.sv = fptrunc <4 x double> %i.su to <4 x float>
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %index1034
  store <4 x float> %i.sv, ptr %i.sw, align 4, !tbaa !14, !alias.scope !252, !noalias !253
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %index1034
  %wide.load1045 = load <4 x float>, ptr %i.sx, align 4, !tbaa !14, !alias.scope !254
  %i.sy = fsub <4 x float> splat (float 1.000000e+00), %wide.load1045
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %index1034
  store <4 x float> %i.sy, ptr %i.sz, align 4, !tbaa !14, !alias.scope !255, !noalias !256
  %index.next1046 = add nuw i64 %index1034, 4     ; 2 uses
  %i.ta = icmp eq i64 %index.next1046, %n.vec1030
  br i1 %i.ta, label %middle.block1047, label %vector.body1033, !llvm.loop !257

middle.block1047:                                 ; preds = %vector.body1033
  %cmp.n1048 = icmp eq i64 %wide.trip.count659, %n.vec1030
  br i1 %cmp.n1048, label %._crit_edge572, label %scalar.ph1026.preheader

scalar.ph1026.preheader:                          ; preds = %vector.memcheck897, %.lr.ph571, %middle.block1047
  %indvars.iv656.ph = phi i64 [ 0, %vector.memcheck897 ], [ 0, %.lr.ph571 ], [ %n.vec1030, %middle.block1047 ]
  br label %scalar.ph1026

scalar.ph1026:                                    ; preds = %scalar.ph1026.preheader, %scalar.ph1026
  %indvars.iv656 = phi i64 [ %indvars.iv.next657, %scalar.ph1026 ], [ %indvars.iv656.ph, %scalar.ph1026.preheader ] ; 10 uses
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv656 ; 3 uses
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !14
  %i.td = fpext float %i.tc to double
  %i.te = fsub double 1.000000e+00, %i.td
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.nv, i64 %indvars.iv656 ; 4 uses
  %i.tg = load float, ptr %i.tf, align 4, !tbaa !14
  %i.th = fpext float %i.tg to double
  %i.ti = fsub double %i.te, %i.th
  %i.tj = fmul double %i.ti, %i.nw
  %i.tk = fmul double %i.tj, 5.000000e-01
  %i.tl = fptrunc double %i.tk to float
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %indvars.iv656
  store float %i.tl, ptr %i.tm, align 4, !tbaa !14
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.ny, i64 %indvars.iv656 ; 3 uses
  %i.to = load float, ptr %i.tn, align 4, !tbaa !14
  %i.tp = fpext float %i.to to double
  %i.tq = fsub double 1.000000e+00, %i.tp
  %i.tr = load float, ptr %i.tf, align 4, !tbaa !14
  %i.ts = fpext float %i.tr to double
  %i.tt = fsub double %i.tq, %i.ts
  %i.tu = fmul double %i.tt, %i.nw
  %i.tv = fmul double %i.tu, 5.000000e-01
  %i.tw = fptrunc double %i.tv to float
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.nz, i64 %indvars.iv656
  store float %i.tw, ptr %i.tx, align 4, !tbaa !14
  %i.ty = load float, ptr %i.tb, align 4, !tbaa !14
  %i.tz = fpext float %i.ty to double
  %i.ua = fsub double 1.000000e+00, %i.tz
  %i.ub = load float, ptr %i.tn, align 4, !tbaa !14
  %i.uc = fpext float %i.ub to double
  %i.ud = fadd double %i.ua, %i.uc
  %i.ue = load float, ptr %i.tf, align 4, !tbaa !14
  %i.uf = fpext float %i.ue to double
  %i.ug = fsub double %i.ud, %i.uf
  %i.uh = fmul double %i.ug, 5.000000e-01
  %i.ui = fmul double %i.uh, %i.nw
  %i.uj = fptrunc double %i.ui to float
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %i.oa, i64 %indvars.iv656
  store float %i.uj, ptr %i.uk, align 4, !tbaa !14
  %i.ul = load float, ptr %i.tn, align 4, !tbaa !14
  %i.um = fpext float %i.ul to double
  %i.un = fsub double 1.000000e+00, %i.um
  %i.uo = load float, ptr %i.tb, align 4, !tbaa !14
  %i.up = fpext float %i.uo to double
  %i.uq = fadd double %i.un, %i.up
  %i.ur = load float, ptr %i.tf, align 4, !tbaa !14
  %i.us = fpext float %i.ur to double
  %i.ut = fsub double %i.uq, %i.us
  %i.uu = fmul double %i.ut, 5.000000e-01
  %i.uv = fmul double %i.uu, %i.nw
  %i.uw = fptrunc double %i.uv to float
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %indvars.iv656
  store float %i.uw, ptr %i.ux, align 4, !tbaa !14
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.oc, i64 %indvars.iv656
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !14
  %i.va = fsub float 1.000000e+00, %i.uz
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.od, i64 %indvars.iv656
  store float %i.va, ptr %i.vb, align 4, !tbaa !14
  %indvars.iv.next657 = add nuw nsw i64 %indvars.iv656, 1 ; 2 uses
  %exitcond660 = icmp eq i64 %indvars.iv.next657, %wide.trip.count659
  br i1 %exitcond660, label %._crit_edge572, label %scalar.ph1026, !llvm.loop !258

._crit_edge572:                                   ; preds = %scalar.ph1026, %middle.block1047, %._crit_edge568
  %i.vc = load ptr, ptr @Q__align_gapmap.w1, align 8, !tbaa !12 ; 20 uses
  %i.vd = ptrtoaddr ptr %i.vc to i64
  %i.ve = load ptr, ptr @Q__align_gapmap.w2, align 8, !tbaa !12
  %i.vf = load i8, ptr @RNAscoremtx, align 1, !tbaa !18
  %.not502 = icmp eq i8 %i.vf, 114
  br i1 %.not502, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge572
  %i.vg = load ptr, ptr @Q__align_gapmap.initverticalw, align 8, !tbaa !12 ; 2 uses
  %i.vh = load ptr, ptr @Q__align_gapmap.cpmx2, align 8, !tbaa !8
  %i.vi = load ptr, ptr @Q__align_gapmap.cpmx1, align 8, !tbaa !8
  %i.vj = load ptr, ptr @Q__align_gapmap.floatwork, align 8, !tbaa !8
  %i.vk = load ptr, ptr @Q__align_gapmap.intwork, align 8, !tbaa !51
  tail call fastcc void @match_calc(ptr noundef %i.vg, ptr noundef %i.vh, ptr noundef %i.vi, i32 noundef 0, i32 noundef %i.l, ptr noundef %i.vj, ptr noundef %i.vk, i32 noundef 1)
  br label %clearvec.exit

bb.r:                                             ; preds = %._crit_edge572
  %.not2.i = icmp eq i32 %i.l, 0
  br i1 %.not2.i, label %clearvec.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.r
  %i.vl = load ptr, ptr @Q__align_gapmap.initverticalw, align 8, !tbaa !12 ; 2 uses
  %i.vm = shl i64 %i.k, 2
  %i.vn = and i64 %i.vm, 17179869180
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.vl, i8 0, i64 %i.vn, i1 false), !tbaa !14
  br label %clearvec.exit

clearvec.exit:                                    ; preds = %.lr.ph.preheader.i, %bb.q
  %i.vo = phi ptr [ %i.vl, %.lr.ph.preheader.i ], [ %i.vg, %bb.q ] ; 4 uses
  %.not503 = icmp eq ptr %7, null
  br i1 %.not503, label %imp_match_out_vead_tateQ_gapmap.exit, label %bb.s

clearvec.exit.thread:                             ; preds = %bb.r
  %.not503546 = icmp eq ptr %7, null
  br label %imp_match_out_vead_tateQ_gapmap.exit

bb.s:                                             ; preds = %clearvec.exit
  %.not6.i = icmp eq i32 %i.l, 0
  br i1 %.not6.i, label %imp_match_out_vead_tateQ_gapmap.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s
  %i.vp = load i32, ptr %14, align 4, !tbaa !4
  %i.vq = load ptr, ptr @impmtx, align 8, !tbaa !8 ; 3 uses
  %i.vr = sext i32 %i.vp to i64                   ; 3 uses
  %xtraiter1240 = and i32 %i.l, 1
  %lcmp.mod1241.not = icmp eq i32 %xtraiter1240, 0
end_hunk_1
