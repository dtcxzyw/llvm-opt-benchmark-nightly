Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/updater_refresh?download=true
inline.NumInlined: 1828
inline.NumDeleted: 980
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZZN7xgboost4tree13TreeRefresher6UpdateEPKNS0_10TrainParamEPNS_17GradientContainerEPNS_7DMatrixENS_6common4SpanINS_16HostDeviceVectorIiEELm18446744073709551615EEERKSt6vectorIPNS_7RegTreeESaISG_EEENKUlT_E0_clImEEDaSL_:bb.a

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader42, %.lr.ph.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i.i ], [ %.07.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader42 ] ; 2 uses
  store float +qnan, ptr %.07.i.i.i.i.i.i, align 4, !tbaa !151
  %i.cr = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cr, %i.cf
  br i1 %.not.i.i.i.i.i.i, label %_ZN7xgboost7RegTree4FVec4DropEv.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !388

_ZN7xgboost7RegTree4FVec4DropEv.exit:             ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %._crit_edge
  store i8 1, ptr %i.bp, align 8, !tbaa !156
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN7xgboost4tree13TreeRefresher8AddStatsERKNS_7RegTreeERKNS2_4FVecERKSt6vectorINS_6detail20GradientPairInternalIfEESaISB_EERKNS_8MetaInfoEjPNS0_9GradStatsE.exit
  %i.cs = phi ptr [ %i.bv, %.lr.ph ], [ %i.hq, %_ZN7xgboost4tree13TreeRefresher8AddStatsERKNS_7RegTreeERKNS2_4FVecERKSt6vectorINS_6detail20GradientPairInternalIfEESaISB_EERKNS_8MetaInfoEjPNS0_9GradStatsE.exit ]
  %.022 = phi i64 [ 0, %.lr.ph ], [ %i.hm, %_ZN7xgboost4tree13TreeRefresher8AddStatsERKNS_7RegTreeERKNS2_4FVecERKSt6vectorINS_6detail20GradientPairInternalIfEESaISB_EERKNS_8MetaInfoEjPNS0_9GradStatsE.exit ] ; 3 uses
  %.01821 = phi i32 [ 0, %.lr.ph ], [ %i.hl, %_ZN7xgboost4tree13TreeRefresher8AddStatsERKNS_7RegTreeERKNS2_4FVecERKSt6vectorINS_6detail20GradientPairInternalIfEESaISB_EERKNS_8MetaInfoEjPNS0_9GradStatsE.exit ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.022
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !78 ; 2 uses
  %i.cv = load ptr, ptr %i.bw, align 8, !tbaa !410, !nonnull !143, !align !161 ; 3 uses
  %i.cw = load ptr, ptr %i.bx, align 8, !tbaa !411, !nonnull !143, !align !161
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !67 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !126
  %i.da = load ptr, ptr %i.cx, align 8, !tbaa !70 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  %spec.select.i = select i1 %i.db, ptr null, ptr %i.da
  %i.dc = sext i32 %.01821 to i64
  %i.dd = getelementptr inbounds [16 x i8], ptr %spec.select.i, i64 %i.dc ; 4 uses
  %i.de = load ptr, ptr %i.cv, align 8, !tbaa !414
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.by
  %.sroa.02.0.copyload.i = load <2 x float>, ptr %i.df, align 4
  %i.dg = fpext <2 x float> %.sroa.02.0.copyload.i to <2 x double>
  %i.dh = load <2 x double>, ptr %i.dd, align 8, !tbaa !136
  %i.di = fadd <2 x double> %i.dh, %i.dg
  store <2 x double> %i.di, ptr %i.dd, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZNK7xgboost7RegTree10HostScViewEv(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::tree::ScalarTreeView") align 8 %2, ptr noundef nonnull align 8 dereferenceable(96) %i.cu)
  %i.dj = load ptr, ptr %i.bz, align 8, !tbaa !422 ; 7 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !141 ; 3 uses
  %i.dm = icmp eq i32 %i.dl, -1
  br i1 %i.dm, label %_ZN7xgboost4tree13TreeRefresher8AddStatsERKNS_7RegTreeERKNS2_4FVecERKSt6vectorINS_6detail20GradientPairInternalIfEESaISB_EERKNS_8MetaInfoEjPNS0_9GradStatsE.exit, label %.lr.ph.i19.preheader

.lr.ph.i19.preheader:                             ; preds = %bb.c
  %i.dn = load ptr, ptr %i.v, align 8, !tbaa !62  ; 2 uses
  %.sroa.02.0.copyload.i20 = load i64, ptr %2, align 8
  %.sroa.02.0.copyload.i20.fr = freeze i64 %.sroa.02.0.copyload.i20 ; 2 uses
  %.sroa.23.0.copyload.i = load ptr, ptr %.sroa.23.0..sroa_idx.i, align 8
  %i.do = icmp eq i64 %.sroa.02.0.copyload.i20.fr, 0
  %i.dp = load i64, ptr %i.cb, align 8
  %i.dq = load ptr, ptr %i.cc, align 8
  %i.dr = load i64, ptr %i.ca, align 8            ; 3 uses
  %i.ds = load ptr, ptr %.in.i.i, align 8         ; 2 uses
  %i.dt = icmp ne ptr %i.ds, null
  br i1 %i.do, label %.lr.ph.i19.preheader.split.us, label %.lr.ph.i19

.lr.ph.i19.preheader.split.us:                    ; preds = %.lr.ph.i19.preheader
  %i.du = load ptr, ptr %i.cv, align 8, !tbaa !414
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.by
  br label %.lr.ph.i19.us

.lr.ph.i19.us:                                    ; preds = %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.us, %.lr.ph.i19.preheader.split.us
  %i.dw = phi i32 [ %i.ev, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.us ], [ %i.dl, %.lr.ph.i19.preheader.split.us ]
  %i.dx = phi ptr [ %i.et, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.us ], [ %i.dj, %.lr.ph.i19.preheader.split.us ] ; 2 uses
  %.019.i.us = phi i32 [ %.0.i.i.us, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.us ], [ 0, %.lr.ph.i19.preheader.split.us ]
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !423 ; 2 uses
  %i.ea = and i32 %i.dz, 2147483647
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.eb
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !151 ; 2 uses
  %i.ee = fcmp uno float %i.ed, 0.000000e+00
  br i1 %i.ee, label %bb.d, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i.us

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i.us: ; preds = %.lr.ph.i19.us
  %i.ef = sext i32 %.019.i.us to i64
  %i.eg = getelementptr inbounds [20 x i8], ptr %i.dj, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !32
  %i.ej = fcmp uge float %i.ed, %i.ei
  %i.ek = zext i1 %i.ej to i32
  %i.el = add nuw nsw i32 %i.dw, %i.ek
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.us

bb.d:                                             ; preds = %.lr.ph.i19.us
  %i.em = icmp slt i32 %i.dz, 0
  %.in.v.i.i.i.us = select i1 %i.em, i64 4, i64 8
  %.in.i.i.i.us = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.in.v.i.i.i.us
  %i.en = load i32, ptr %.in.i.i.i.us, align 4, !tbaa !55
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.us

_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.us: ; preds = %bb.d, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i.us
  %.0.i.i.us = phi i32 [ %i.en, %bb.d ], [ %i.el, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i.us ] ; 3 uses
  %i.eo = sext i32 %.0.i.i.us to i64              ; 2 uses
  %i.ep = getelementptr inbounds [16 x i8], ptr %i.dd, i64 %i.eo ; 2 uses
  %.sroa.0.0.copyload.i.us = load <2 x float>, ptr %i.dv, align 4
  %i.eq = fpext <2 x float> %.sroa.0.0.copyload.i.us to <2 x double>
  %i.er = load <2 x double>, ptr %i.ep, align 8, !tbaa !136
  %i.es = fadd <2 x double> %i.er, %i.eq
  store <2 x double> %i.es, ptr %i.ep, align 8, !tbaa !136
  %i.et = getelementptr inbounds [20 x i8], ptr %i.dj, i64 %i.eo ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !141 ; 2 uses
  %i.ew = icmp eq i32 %i.ev, -1
  br i1 %i.ew, label %_ZN7xgboost4tree13TreeRefresher8AddStatsERKNS_7RegTreeERKNS2_4FVecERKSt6vectorINS_6detail20GradientPairInternalIfEESaISB_EERKNS_8MetaInfoEjPNS0_9GradStatsE.exit, label %.lr.ph.i19.us, !llvm.loop !389

.lr.ph.i19:                                       ; preds = %.lr.ph.i19.preheader, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i
  %i.ex = phi i32 [ %i.hb, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i ], [ %i.dl, %.lr.ph.i19.preheader ]
  %i.ey = phi ptr [ %i.gz, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i ], [ %i.dj, %.lr.ph.i19.preheader ] ; 2 uses
  %.019.i = phi i32 [ %.0.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i ], [ 0, %.lr.ph.i19.preheader ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !423 ; 2 uses
  %i.fb = and i32 %i.fa, 2147483647
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.fc
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !151 ; 6 uses
  %i.ff = fcmp uno float %i.fe, 0.000000e+00
  br i1 %i.ff, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i19
  %i.fg = icmp slt i32 %i.fa, 0
  %.in.v.i.i.i = select i1 %i.fg, i64 4, i64 8
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.in.v.i.i.i
  %i.fh = load i32, ptr %.in.i.i.i, align 4, !tbaa !55
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i

bb.f:                                             ; preds = %.lr.ph.i19
  %i.fi = zext i32 %.019.i to i64                 ; 2 uses
  %i.fj = icmp ugt i64 %.sroa.02.0.copyload.i20.fr, %i.fi
  br i1 %i.fj, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i, label %bb.g, !prof !127

bb.g:                                             ; preds = %bb.f
  call void @_ZSt9terminatev() #34
  unreachable

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i: ; preds = %bb.f
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.23.0.copyload.i, i64 %i.fi
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !425
  %i.fm = icmp eq i8 %i.fl, 1
  %i.fn = sext i32 %.019.i to i64                 ; 3 uses
  br i1 %i.fm, label %bb.h, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i

bb.h:                                             ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i
  %i.fo = icmp ugt i64 %i.dp, %i.fn
  br i1 %i.fo, label %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i, label %bb.i, !prof !127

bb.i:                                             ; preds = %bb.h
  call void @_ZSt9terminatev() #34
  unreachable

_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i: ; preds = %bb.h
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %i.fn ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !427 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !428 ; 3 uses
  %i.ft = icmp eq i64 %i.fs, -1
  br i1 %i.ft, label %.split.i.i, label %bb.j

.split.i.i:                                       ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i
  %.not8.i.i = icmp ugt i64 %i.fq, %i.dr
  br i1 %.not8.i.i, label %bb.k, label %bb.l, !prof !119

bb.j:                                             ; preds = %_ZNK7xgboost6common4SpanIKNS_7RegTree22CategoricalSplitMatrix7SegmentELm18446744073709551615EEixEm.exit14.i
  %i.fu = add i64 %i.fs, %i.fq
  %.not.i.i = icmp ugt i64 %i.fu, %i.dr
  br i1 %.not.i.i, label %bb.k, label %bb.m, !prof !119

bb.k:                                             ; preds = %bb.j, %.split.i.i
  call void @_ZSt9terminatev() #34
  unreachable

bb.l:                                             ; preds = %.split.i.i
  %i.fv = sub nuw i64 %i.dr, %i.fq
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.fw = phi i64 [ %i.fv, %bb.l ], [ %i.fs, %bb.j ] ; 2 uses
  %i.fx = icmp eq i64 %i.fw, 0
  %i.fy = or i1 %i.fx, %i.dt
  br i1 %i.fy, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i, label %bb.n, !prof !127

bb.n:                                             ; preds = %bb.m
  call void @_ZSt9terminatev() #34
  unreachable

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i: ; preds = %bb.m
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.fq
  %i.ga = fcmp olt float %i.fe, 0.000000e+00
  %i.gb = fcmp oge float %i.fe, f0x4B800000
  %i.gc = or i1 %i.ga, %i.gb
  br i1 %i.gc, label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree14ScalarTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit, label %bb.o, !prof !119

bb.o:                                             ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i
  %i.gd = fptoui float %i.fe to i64
  %i.ge = lshr i64 %i.gd, 5
  %.not.i15.i = icmp ult i64 %i.ge, %i.fw
  br i1 %.not.i15.i, label %bb.p, label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree14ScalarTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit

bb.p:                                             ; preds = %bb.o
  %i.gf = fptosi float %i.fe to i32               ; 2 uses
  %3 = sext i32 %i.gf to i64
  %4 = lshr i64 %3, 5
  %i.gg = and i32 %i.gf, 31
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %4
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !55
  %i.gj = lshr exact i32 -2147483648, %i.gg
  %i.gk = and i32 %i.gi, %i.gj
  %.not5.i.i = icmp eq i32 %i.gk, 0
  br label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree14ScalarTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i: ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i
  %i.gl = getelementptr inbounds [20 x i8], ptr %i.dj, i64 %i.fn
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !32
  %i.go = fcmp olt float %i.fe, %i.gn
  br label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree14ScalarTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit

_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree14ScalarTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit: ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i, %bb.o, %bb.p, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i
  %.0.i = phi i1 [ %i.go, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i ], [ true, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i ], [ %.not5.i.i, %bb.p ], [ true, %bb.o ]
  %i.gp = xor i1 %.0.i, true
  %i.gq = zext i1 %i.gp to i32
  %i.gr = add nuw nsw i32 %i.ex, %i.gq
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i

_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i: ; preds = %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree14ScalarTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit, %bb.e
  %.0.i.i = phi i32 [ %i.fh, %bb.e ], [ %i.gr, %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree14ScalarTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit ] ; 3 uses
  %i.gs = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.gt = getelementptr inbounds [16 x i8], ptr %i.dd, i64 %i.gs ; 2 uses
  %i.gu = load ptr, ptr %i.cv, align 8, !tbaa !414
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.by
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.gv, align 4
  %i.gw = fpext <2 x float> %.sroa.0.0.copyload.i to <2 x double>
  %i.gx = load <2 x double>, ptr %i.gt, align 8, !tbaa !136
  %i.gy = fadd <2 x double> %i.gx, %i.gw
  store <2 x double> %i.gy, ptr %i.gt, align 8, !tbaa !136
  %i.gz = getelementptr inbounds [20 x i8], ptr %i.dj, i64 %i.gs ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !141 ; 2 uses
  %i.hc = icmp eq i32 %i.hb, -1
  br i1 %i.hc, label %_ZN7xgboost4tree13TreeRefresher8AddStatsERKNS_7RegTreeERKNS2_4FVecERKSt6vectorINS_6detail20GradientPairInternalIfEESaISB_EERKNS_8MetaInfoEjPNS0_9GradStatsE.exit, label %.lr.ph.i19, !llvm.loop !389

_ZN7xgboost4tree13TreeRefresher8AddStatsERKNS_7RegTreeERKNS2_4FVecERKSt6vectorINS_6detail20GradientPairInternalIfEESaISB_EERKNS_8MetaInfoEjPNS0_9GradStatsE.exit: ; preds = %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.us, %bb.c
  %.0.lcssa.i = phi i32 [ 0, %bb.c ], [ %.0.i.i.us, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i.us ], [ %.0.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree14ScalarTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.hd = load ptr, ptr %i.cd, align 8, !tbaa !429, !nonnull !143, !align !161
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !106
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %.022
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !108
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !114
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.by
  store i32 %.0.lcssa.i, ptr %i.hi, align 4, !tbaa !55
  %i.hj = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !103
  %i.hl = add nsw i32 %i.hk, %.01821
  %i.hm = add nuw i64 %.022, 1                    ; 2 uses
  %i.hn = load ptr, ptr %i.br, align 8, !tbaa !409, !nonnull !143, !align !161 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !51
  %i.hq = load ptr, ptr %i.hn, align 8, !tbaa !52 ; 2 uses
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = ptrtoint ptr %i.hq to i64
  %i.ht = sub i64 %i.hr, %i.hs
  %i.hu = ashr exact i64 %i.ht, 3
  %i.hv = icmp ult i64 %i.hm, %i.hu
  br i1 %i.hv, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !390
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4dmlc12OMPException3RunIZN7xgboost4tree13TreeRefresher6UpdateEPKNS3_10TrainParamEPNS2_17GradientContainerEPNS2_7DMatrixENS2_6common4SpanINS2_16HostDeviceVectorIiEELm18446744073709551615EEERKSt6vectorIPNS2_7RegTreeESaISJ_EEEUlT_E0_JmEEEvSO_DpT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef byval(%class.anon.114) align 8 %1, i64 noundef %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  invoke void @_ZZN7xgboost4tree13TreeRefresher6UpdateEPKNS0_10TrainParamEPNS_17GradientContainerEPNS_7DMatrixENS_6common4SpanINS_16HostDeviceVectorIiEELm18446744073709551615EEERKSt6vectorIPNS_7RegTreeESaISG_EEENKUlT_E0_clImEEDaSL_(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %2)
          to label %bb.n unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr @_ZTIN4dmlc5ErrorE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.b = extractvalue { ptr, i32 } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, i32 } %i.a, 1        ; 2 uses
  %i.d = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4dmlc5ErrorE) #18
  %i.e = icmp eq i32 %i.c, %i.d
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = call ptr @__cxa_begin_catch(ptr %i.b) #18 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #18 ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.h) #31
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !170
  %.not20 = icmp eq ptr %i.i, null
  br i1 %.not20, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.j = load ptr, ptr %6, align 8, !tbaa !170
  store ptr null, ptr %6, align 8, !tbaa !170
  %i.k = load ptr, ptr %0, align 8, !tbaa !170    ; 2 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !170
  store ptr %i.j, ptr %0, align 8, !tbaa !170
  %.not.i.i8 = icmp eq ptr %i.k, null
  br i1 %.not.i.i8, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit: ; preds = %bb.e
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %.pr = load ptr, ptr %6, align 8, !tbaa !170
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %.sink.split

bb.g:                                             ; preds = %bb.b
  %i.l = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #18
  %i.m = icmp eq i32 %i.c, %i.l
  br i1 %i.m, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.n = call ptr @__cxa_begin_catch(ptr %i.b) #18 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #18 ; 2 uses
  %.not.i.i9 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i9, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit11, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.p) #31
          to label %.noexc10 unwind label %bb.l

.noexc10:                                         ; preds = %bb.i
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit11:        ; preds = %bb.h
  %i.q = load ptr, ptr %0, align 8, !tbaa !170
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.j, label %.sink.split

bb.j:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.r = load ptr, ptr %5, align 8, !tbaa !170
  store ptr null, ptr %5, align 8, !tbaa !170
  %i.s = load ptr, ptr %0, align 8, !tbaa !170    ; 2 uses
  store ptr %i.s, ptr %3, align 8, !tbaa !170
  store ptr %i.r, ptr %0, align 8, !tbaa !170
  %.not.i.i12 = icmp eq ptr %i.s, null
  br i1 %.not.i.i12, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13.thread, label %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13.thread: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15

_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13: ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %.pr18 = load ptr, ptr %5, align 8, !tbaa !170
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %.not.i14 = icmp eq ptr %.pr18, null
  br i1 %.not.i14, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15, label %bb.k

bb.k:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15: ; preds = %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13.thread, %_ZNSt15__exception_ptr13exception_ptraSEOS0_.exit13, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %.sink.split

bb.l:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.p

bb.m:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
end_hunk_0
