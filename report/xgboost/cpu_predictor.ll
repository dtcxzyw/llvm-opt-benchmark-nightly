Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/cpu_predictor?download=true
inline.NumInlined: 9576
inline.NumDeleted: 2555
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZN7xgboost9predictor5multi18PredValueByOneTreeILb1ELb1ELb0EEEvRKNS_4tree19MultiTargetTreeViewEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEEPiif:bb.a
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = and i32 %i.eu, 31
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.ew
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !83
  %i.fa = lshr exact i32 -2147483648, %i.ex
  %i.fb = and i32 %i.ez, %i.fa
  %.not5.i.i35 = icmp eq i32 %i.fb, 0
  br label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree19MultiTargetTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit38

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i28: ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.i27
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.dw
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !72
  %i.fe = fcmp olt float %i.dq, %i.fd
  br label %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree19MultiTargetTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit38

_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree19MultiTargetTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit38: ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i33, %bb.z, %bb.aa, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i28
  %.0.i29 = phi i1 [ %i.fe, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i28 ], [ true, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EE7subspanEmm.exit.i33 ], [ %.not5.i.i35, %bb.aa ], [ true, %bb.z ]
  %i.ff = xor i1 %.0.i29, true
  %i.fg = zext i1 %i.ff to i32
  %i.fh = add nuw nsw i32 %i.dk, %i.fg            ; 3 uses
  %i.fi = sext i32 %i.fh to i64                   ; 2 uses
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.fi
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !83 ; 2 uses
  %i.fl = icmp eq i32 %i.fk, -1
  br i1 %i.fl, label %_ZN7xgboost9predictor12_GLOBAL__N_112GetLeafIndexILb1ELb1ENS_4tree19MultiTargetTreeViewEEEiRKT1_RKNS_7RegTree4FVecERKNS8_22CategoricalSplitMatrixEi.exit, label %.lr.ph.i19.split, !llvm.loop !13

_ZN7xgboost9predictor12_GLOBAL__N_112GetLeafIndexILb1ELb1ENS_4tree19MultiTargetTreeViewEEEiRKT1_RKNS_7RegTree4FVecERKNS8_22CategoricalSplitMatrixEi.exit: ; preds = %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree19MultiTargetTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit38, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i28.us, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree19MultiTargetTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit18, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit17
  %i.fm = phi i32 [ %.0.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb1ENS_4tree19MultiTargetTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i ], [ 0, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit17 ], [ 0, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit18 ], [ %i.df, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread.i28.us ], [ %i.fh, %_ZN7xgboost9predictor11GetDecisionILb1ENS_4tree19MultiTargetTreeViewEEEbRKT0_ifRKNS_7RegTree22CategoricalSplitMatrixE.exit38 ]
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !83, !noalias !1223
  %i.fq = sext i32 %i.fp to i64
  %i.fr = mul i64 %i.o, %i.fq
  %i.fs = load i64, ptr %i.r, align 8, !tbaa !59, !noalias !1224 ; 9 uses
  %i.ft = load i64, ptr %i.s, align 8, !tbaa !434, !noalias !1224 ; 3 uses
  %i.fu = icmp eq i64 %i.ft, 0
  %i.fv = select i1 %i.fu, i64 0, i64 %i.fr       ; 4 uses
  %.not8.i.i.i = icmp ugt i64 %i.fv, %i.ft
  br i1 %.not8.i.i.i, label %bb.ab, label %bb.ac, !prof !173

bb.ab:                                            ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_112GetLeafIndexILb1ELb1ENS_4tree19MultiTargetTreeViewEEEiRKT1_RKNS_7RegTree4FVecERKNS8_22CategoricalSplitMatrixEi.exit
  tail call void @_ZSt9terminatev() #35, !noalias !1224
  unreachable

bb.ac:                                            ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_112GetLeafIndexILb1ELb1ENS_4tree19MultiTargetTreeViewEEEiRKT1_RKNS_7RegTree4FVecERKNS8_22CategoricalSplitMatrixEi.exit
  %i.fw = load ptr, ptr %.in.i.i.i21, align 8, !tbaa !435, !noalias !1224 ; 3 uses
  %i.fx = icmp ne ptr %i.fw, null
  %i.fy = icmp eq i64 %i.ft, %i.fv
  %.fr = freeze i1 %i.fy                          ; 2 uses
  %i.fz = or i1 %.fr, %i.fx
  br i1 %i.fz, label %_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit, label %bb.ad, !prof !70

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZSt9terminatev() #35, !noalias !1224
  unreachable

_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit: ; preds = %bb.ac
  %i.ga = getelementptr [4 x i8], ptr %i.fw, i64 %i.fv ; 5 uses
  %i.gb = add i64 %.060, %1
  %i.gc = mul i64 %i.t, %i.gb
  %i.gd = select i1 %i.y, i64 0, i64 %i.gc        ; 4 uses
  %.not8.i.i = icmp ugt i64 %i.gd, %i.x
  br i1 %.not8.i.i, label %bb.ae, label %bb.af, !prof !173

bb.ae:                                            ; preds = %_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit
  tail call void @_ZSt9terminatev() #35, !noalias !1225
  unreachable

bb.af:                                            ; preds = %_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit
  %i.ge = icmp eq i64 %i.x, %i.gd
  %i.gf = or i1 %i.ge, %i.aa
  br i1 %i.gf, label %_ZNK7xgboost6linalg10TensorViewIfLi2EE5SliceIJmNS0_6detail6AllTagEEEEDaDpOT_.exit, label %bb.ag, !prof !70

bb.ag:                                            ; preds = %bb.af
  tail call void @_ZSt9terminatev() #35, !noalias !1225
  unreachable

_ZNK7xgboost6linalg10TensorViewIfLi2EE5SliceIJmNS0_6detail6AllTagEEEEDaDpOT_.exit: ; preds = %bb.af
  %i.gg = getelementptr [4 x i8], ptr %i.z, i64 %i.gd ; 5 uses
  %i.gh = icmp eq i64 %i.fs, 0
  %.not5658 = select i1 %.fr, i1 true, i1 %i.gh
  br i1 %.not5658, label %._crit_edge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %_ZNK7xgboost6linalg10TensorViewIfLi2EE5SliceIJmNS0_6detail6AllTagEEEEDaDpOT_.exit
  %min.iters.check = icmp ult i64 %i.fs, 8
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.ab
  br i1 %brmerge, label %.lr.ph.split.preheader103, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.preheader
  %i.gi = add i64 %i.gd, %i.fs
  %i.gj = shl i64 %i.gi, 2
  %scevgep = getelementptr i8, ptr %i.z, i64 %i.gj
  %i.gk = add i64 %i.fv, %i.fs
  %i.gl = shl i64 %i.gk, 2
  %scevgep99 = getelementptr i8, ptr %i.fw, i64 %i.gl
  %bound0 = icmp ult ptr %i.gg, %scevgep99
  %bound1 = icmp ult ptr %i.ga, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.split.preheader103, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fs, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %index ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %wide.load = load <4 x float>, ptr %i.gm, align 4, !tbaa !72, !alias.scope !1226
  %wide.load100 = load <4 x float>, ptr %i.gn, align 4, !tbaa !72, !alias.scope !1226
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %index ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16 ; 2 uses
  %wide.load101 = load <4 x float>, ptr %i.go, align 4, !tbaa !72, !alias.scope !1227, !noalias !1226
  %wide.load102 = load <4 x float>, ptr %i.gp, align 4, !tbaa !72, !alias.scope !1227, !noalias !1226
  %i.gq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> %wide.load101)
  %i.gr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load100, <4 x float> %broadcast.splat, <4 x float> %wide.load102)
  store <4 x float> %i.gq, ptr %i.go, align 4, !tbaa !72, !alias.scope !1227, !noalias !1226
  store <4 x float> %i.gr, ptr %i.gp, align 4, !tbaa !72, !alias.scope !1227, !noalias !1226
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gs = icmp eq i64 %index.next, %n.vec
  br i1 %i.gs, label %middle.block, label %vector.body, !llvm.loop !1220

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fs, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.preheader103

.lr.ph.split.preheader103:                        ; preds = %.lr.ph.split.preheader, %vector.memcheck, %middle.block
  %storemerge59.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %middle.block ], [ 0, %.lr.ph.split.preheader ] ; 5 uses
  %.neg = or disjoint i64 %storemerge59.ph, 1
  %xtraiter = and i64 %i.fs, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader103
  %i.gt = mul i64 %storemerge59.ph, %i.q
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.gt
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !72
  %i.gw = mul i64 %storemerge59.ph, %i.v
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.gw ; 2 uses
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !72
  %i.gz = tail call float @llvm.fmuladd.f32(float %i.gv, float %8, float %i.gy)
  store float %i.gz, ptr %i.gx, align 4, !tbaa !72
  %i.ha = or disjoint i64 %storemerge59.ph, 1
  br label %.lr.ph.split.prol.loopexit

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol, %.lr.ph.split.preheader103
  %storemerge59.unr = phi i64 [ %storemerge59.ph, %.lr.ph.split.preheader103 ], [ %i.ha, %.lr.ph.split.prol ]
  %i.hb = icmp eq i64 %i.fs, %.neg
  br i1 %i.hb, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split, %middle.block, %_ZNK7xgboost6linalg10TensorViewIfLi2EE5SliceIJmNS0_6detail6AllTagEEEEDaDpOT_.exit
  %i.hc = add nuw i64 %.060, 1                    ; 2 uses
  %exitcond69.not = icmp eq i64 %i.hc, %4
  br i1 %exitcond69.not, label %._crit_edge63, label %bb.b, !llvm.loop !1221

.lr.ph.split:                                     ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split
  %storemerge59 = phi i64 [ %i.hs, %.lr.ph.split ], [ %storemerge59.unr, %.lr.ph.split.prol.loopexit ] ; 4 uses
  %i.hd = mul i64 %storemerge59, %i.q
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.hd
  %i.hf = load float, ptr %i.he, align 4, !tbaa !72
  %i.hg = mul i64 %storemerge59, %i.v
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.hg ; 2 uses
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !72
  %i.hj = tail call float @llvm.fmuladd.f32(float %i.hf, float %8, float %i.hi)
  store float %i.hj, ptr %i.hh, align 4, !tbaa !72
  %i.hk = add nuw i64 %storemerge59, 1            ; 2 uses
  %i.hl = mul i64 %i.hk, %i.q
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.hl
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !72
  %i.ho = mul i64 %i.hk, %i.v
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.ho ; 2 uses
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !72
  %i.hr = tail call float @llvm.fmuladd.f32(float %i.hn, float %8, float %i.hq)
  store float %i.hr, ptr %i.hp, align 4, !tbaa !72
  %i.hs = add nuw i64 %storemerge59, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.hs, %i.fs
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.split, !llvm.loop !1222
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost9predictor5multi18PredValueByOneTreeILb0ELb1ELb0EEEvRKNS_4tree19MultiTargetTreeViewEmNS_6common4SpanINS_7RegTree4FVecELm18446744073709551615EEEmNS_6linalg10TensorViewIfLi2EEEPiif(ptr noundef nonnull align 8 dereferenceable(192) %0, i64 noundef %1, i64 %2, ptr %3, i64 noundef %4, ptr noundef byval(%"class.xgboost::linalg::TensorView") align 8 %5, ptr noundef %6, i32 noundef %7, float noundef %8) local_unnamed_addr #9 comdat {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %._crit_edge47, label %.lr.ph46

.lr.ph46:                                         ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load i64, ptr %i.l, align 8              ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.o = load i64, ptr %i.n, align 8              ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  %i.r = icmp eq i64 %i.q, 0
  %.in.i.i.i22 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.s = load ptr, ptr %.in.i.i.i22, align 8      ; 3 uses
  %i.t = icmp ne ptr %i.s, null
  %i.u = load i64, ptr %5, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load i64, ptr %i.v, align 8              ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.y = load i64, ptr %i.x, align 8              ; 3 uses
  %i.z = icmp eq i64 %i.y, 0
  %.in.i.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.aa = load ptr, ptr %.in.i.i, align 8         ; 3 uses
  %i.ab = icmp ne ptr %i.aa, null
  %i.ac = icmp eq i64 %i.o, 0
  %min.iters.check = icmp ult i64 %i.o, 8
  %ident.check = icmp ne i64 %i.w, 1
  %ident.check64 = icmp ne i64 %i.m, 1
  %i.ad = or i1 %ident.check, %ident.check64
  %n.vec = and i64 %i.o, -8                       ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %8, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %i.o, %n.vec
  %xtraiter = and i64 %i.o, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %bb.b

._crit_edge47:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph46, %._crit_edge
  %.044 = phi i64 [ 0, %.lr.ph46 ], [ %i.de, %._crit_edge ] ; 4 uses
  %exitcond50.not = icmp eq i64 %.044, %2
  br i1 %exitcond50.not, label %bb.c, label %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit, !prof !173

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit: ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %3, i64 %.044 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !319, !range !140, !noundef !141
  %i.ah = trunc nuw i8 %i.ag to i1
  %.val = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ai = load i32, ptr %i.b, align 4, !tbaa !83  ; 3 uses
  %i.aj = icmp eq i32 %i.ai, -1                   ; 2 uses
  br i1 %i.ah, label %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit18, label %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit19

_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit18: ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit
  br i1 %i.aj, label %_ZN7xgboost9predictor12_GLOBAL__N_112GetLeafIndexILb1ELb0ENS_4tree19MultiTargetTreeViewEEEiRKT1_RKNS_7RegTree4FVecERKNS8_22CategoricalSplitMatrixEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit18
  %i.ak = load ptr, ptr %i.e, align 8
  %i.al = load ptr, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN7xgboost9predictor11GetNextNodeILb1ELb0ENS_4tree19MultiTargetTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i, %.lr.ph.i
  %i.am = phi i32 [ %i.ai, %.lr.ph.i ], [ %i.be, %_ZN7xgboost9predictor11GetNextNodeILb1ELb0ENS_4tree19MultiTargetTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i ]
  %i.an = phi i64 [ 0, %.lr.ph.i ], [ %i.bc, %_ZN7xgboost9predictor11GetNextNodeILb1ELb0ENS_4tree19MultiTargetTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i ] ; 4 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !83
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.aq
  %i.as = load float, ptr %i.ar, align 4, !tbaa !72 ; 2 uses
  %i.at = fcmp uno float %i.as, 0.000000e+00
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds i8, ptr %i.al, i64 %i.an
  %i.av = load i8, ptr %i.au, align 1, !tbaa !50
  %.not.i.i.i = icmp eq i8 %i.av, 0
  %.pn.in.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 48
  %.pn.in.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.pn.in.v.i.i.i
  %.pn.i.i.i = load ptr, ptr %.pn.in.i.i.i, align 8, !tbaa !131
  %.in.i.i.i = getelementptr inbounds [4 x i8], ptr %.pn.i.i.i, i64 %i.an
  %i.aw = load i32, ptr %.in.i.i.i, align 4, !tbaa !83
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb0ENS_4tree19MultiTargetTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.an
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !72
  %i.az = fcmp uge float %i.as, %i.ay
  %i.ba = zext i1 %i.az to i32
  %i.bb = add nuw nsw i32 %i.am, %i.ba
  br label %_ZN7xgboost9predictor11GetNextNodeILb1ELb0ENS_4tree19MultiTargetTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i

_ZN7xgboost9predictor11GetNextNodeILb1ELb0ENS_4tree19MultiTargetTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i: ; preds = %bb.f, %bb.e
  %.0.i.i = phi i32 [ %i.aw, %bb.e ], [ %i.bb, %bb.f ] ; 2 uses
  %i.bc = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !83 ; 2 uses
  %i.bf = icmp eq i32 %i.be, -1
  br i1 %i.bf, label %_ZN7xgboost9predictor12_GLOBAL__N_112GetLeafIndexILb1ELb0ENS_4tree19MultiTargetTreeViewEEEiRKT1_RKNS_7RegTree4FVecERKNS8_22CategoricalSplitMatrixEi.exit, label %bb.d, !llvm.loop !14

_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit19: ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit
  br i1 %i.aj, label %_ZN7xgboost9predictor12_GLOBAL__N_112GetLeafIndexILb1ELb0ENS_4tree19MultiTargetTreeViewEEEiRKT1_RKNS_7RegTree4FVecERKNS8_22CategoricalSplitMatrixEi.exit, label %.lr.ph.i20

.lr.ph.i20:                                       ; preds = %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit19, %.lr.ph.i20
  %i.bg = phi i32 [ %i.bu, %.lr.ph.i20 ], [ %i.ai, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit19 ]
  %i.bh = phi i64 [ %i.bs, %.lr.ph.i20 ], [ 0, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit19 ] ; 2 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !83
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.bk
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !72
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bh
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !72
  %i.bp = fcmp uge float %i.bm, %i.bo
  %i.bq = zext i1 %i.bp to i32
  %i.br = add nuw nsw i32 %i.bg, %i.bq            ; 2 uses
  %i.bs = sext i32 %i.br to i64                   ; 2 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !83 ; 2 uses
  %i.bv = icmp eq i32 %i.bu, -1
  br i1 %i.bv, label %_ZN7xgboost9predictor12_GLOBAL__N_112GetLeafIndexILb1ELb0ENS_4tree19MultiTargetTreeViewEEEiRKT1_RKNS_7RegTree4FVecERKNS8_22CategoricalSplitMatrixEi.exit, label %.lr.ph.i20, !llvm.loop !15

_ZN7xgboost9predictor12_GLOBAL__N_112GetLeafIndexILb1ELb0ENS_4tree19MultiTargetTreeViewEEEiRKT1_RKNS_7RegTree4FVecERKNS8_22CategoricalSplitMatrixEi.exit: ; preds = %.lr.ph.i20, %_ZN7xgboost9predictor11GetNextNodeILb1ELb0ENS_4tree19MultiTargetTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit19, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit18
  %i.bw = phi i32 [ %.0.i.i, %_ZN7xgboost9predictor11GetNextNodeILb1ELb0ENS_4tree19MultiTargetTreeViewEEEiRKT1_ifbRKNS_7RegTree22CategoricalSplitMatrixE.exit.i ], [ 0, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit18 ], [ 0, %_ZNK7xgboost6common4SpanINS_7RegTree4FVecELm18446744073709551615EEixEm.exit19 ], [ %i.br, %.lr.ph.i20 ]
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !83, !noalias !1240
  %i.ca = sext i32 %i.bz to i64
  %i.cb = mul i64 %i.k, %i.ca
  %i.cc = select i1 %i.r, i64 0, i64 %i.cb        ; 4 uses
  %.not8.i.i.i = icmp ugt i64 %i.cc, %i.q
  br i1 %.not8.i.i.i, label %bb.g, label %bb.h, !prof !173

bb.g:                                             ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_112GetLeafIndexILb1ELb0ENS_4tree19MultiTargetTreeViewEEEiRKT1_RKNS_7RegTree4FVecERKNS8_22CategoricalSplitMatrixEi.exit
  tail call void @_ZSt9terminatev() #35, !noalias !1241
  unreachable

bb.h:                                             ; preds = %_ZN7xgboost9predictor12_GLOBAL__N_112GetLeafIndexILb1ELb0ENS_4tree19MultiTargetTreeViewEEEiRKT1_RKNS_7RegTree4FVecERKNS8_22CategoricalSplitMatrixEi.exit
  %i.cd = icmp eq i64 %i.q, %i.cc
  %.fr = freeze i1 %i.cd                          ; 2 uses
  %i.ce = or i1 %.fr, %i.t
  br i1 %i.ce, label %_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit, label %bb.i, !prof !70

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt9terminatev() #35, !noalias !1241
  unreachable

_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit: ; preds = %bb.h
  %i.cf = getelementptr [4 x i8], ptr %i.s, i64 %i.cc ; 5 uses
  %i.cg = add i64 %.044, %1
  %i.ch = mul i64 %i.u, %i.cg
  %i.ci = select i1 %i.z, i64 0, i64 %i.ch        ; 4 uses
  %.not8.i.i = icmp ugt i64 %i.ci, %i.y
  br i1 %.not8.i.i, label %bb.j, label %bb.k, !prof !173

bb.j:                                             ; preds = %_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit
  tail call void @_ZSt9terminatev() #35, !noalias !1242
  unreachable

bb.k:                                             ; preds = %_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit
  %i.cj = icmp eq i64 %i.y, %i.ci
  %i.ck = or i1 %i.cj, %i.ab
  br i1 %i.ck, label %_ZNK7xgboost6linalg10TensorViewIfLi2EE5SliceIJmNS0_6detail6AllTagEEEEDaDpOT_.exit, label %bb.l, !prof !70

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt9terminatev() #35, !noalias !1242
  unreachable

_ZNK7xgboost6linalg10TensorViewIfLi2EE5SliceIJmNS0_6detail6AllTagEEEEDaDpOT_.exit: ; preds = %bb.k
  %i.cl = getelementptr [4 x i8], ptr %i.aa, i64 %i.ci ; 5 uses
  %.not4042 = select i1 %.fr, i1 true, i1 %i.ac
  br i1 %.not4042, label %._crit_edge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %_ZNK7xgboost6linalg10TensorViewIfLi2EE5SliceIJmNS0_6detail6AllTagEEEEDaDpOT_.exit
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.ad
  br i1 %brmerge, label %.lr.ph.split.preheader71, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.preheader
  %9 = add i64 %i.ci, %i.o
  %i.cm = shl i64 %9, 2
  %scevgep65 = getelementptr i8, ptr %i.aa, i64 %i.cm
  %10 = add i64 %i.cc, %i.o
  %i.cn = shl i64 %10, 2
  %scevgep67 = getelementptr i8, ptr %i.s, i64 %i.cn
  %bound0 = icmp ult ptr %i.cl, %scevgep67
  %bound1 = icmp ult ptr %i.cf, %scevgep65
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.split.preheader71, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %index ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %wide.load = load <4 x float>, ptr %i.co, align 4, !tbaa !72, !alias.scope !1243
  %wide.load68 = load <4 x float>, ptr %i.cp, align 4, !tbaa !72, !alias.scope !1243
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %index ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %wide.load69 = load <4 x float>, ptr %i.cq, align 4, !tbaa !72, !alias.scope !1244, !noalias !1243
  %wide.load70 = load <4 x float>, ptr %i.cr, align 4, !tbaa !72, !alias.scope !1244, !noalias !1243
  %i.cs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> %wide.load69)
  %i.ct = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load68, <4 x float> %broadcast.splat, <4 x float> %wide.load70)
  store <4 x float> %i.cs, ptr %i.cq, align 4, !tbaa !72, !alias.scope !1244, !noalias !1243
  store <4 x float> %i.ct, ptr %i.cr, align 4, !tbaa !72, !alias.scope !1244, !noalias !1243
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !1237

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.preheader71

.lr.ph.split.preheader71:                         ; preds = %.lr.ph.split.preheader, %vector.memcheck, %middle.block
  %storemerge43.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %middle.block ], [ 0, %.lr.ph.split.preheader ] ; 5 uses
  %.neg = or disjoint i64 %storemerge43.ph, 1
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader71
  %i.cv = mul i64 %storemerge43.ph, %i.m
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.cv
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !72
  %i.cy = mul i64 %storemerge43.ph, %i.w
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cy ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !72
  %i.db = tail call float @llvm.fmuladd.f32(float %i.cx, float %8, float %i.da)
  store float %i.db, ptr %i.cz, align 4, !tbaa !72
  %i.dc = or disjoint i64 %storemerge43.ph, 1
  br label %.lr.ph.split.prol.loopexit

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol, %.lr.ph.split.preheader71
  %storemerge43.unr = phi i64 [ %storemerge43.ph, %.lr.ph.split.preheader71 ], [ %i.dc, %.lr.ph.split.prol ]
  %i.dd = icmp eq i64 %i.o, %.neg
  br i1 %i.dd, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split, %middle.block, %_ZNK7xgboost6linalg10TensorViewIfLi2EE5SliceIJmNS0_6detail6AllTagEEEEDaDpOT_.exit
  %i.de = add nuw i64 %.044, 1                    ; 2 uses
  %exitcond51.not = icmp eq i64 %i.de, %4
  br i1 %exitcond51.not, label %._crit_edge47, label %bb.b, !llvm.loop !1238

.lr.ph.split:                                     ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split
  %storemerge43 = phi i64 [ %i.du, %.lr.ph.split ], [ %storemerge43.unr, %.lr.ph.split.prol.loopexit ] ; 4 uses
  %i.df = mul i64 %storemerge43, %i.m
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.df
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !72
  %i.di = mul i64 %storemerge43, %i.w
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.di ; 2 uses
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !72
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.dh, float %8, float %i.dk)
  store float %i.dl, ptr %i.dj, align 4, !tbaa !72
  %i.dm = add nuw i64 %storemerge43, 1            ; 2 uses
  %i.dn = mul i64 %i.dm, %i.m
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.dn
  %i.dp = load float, ptr %i.do, align 4, !tbaa !72
  %i.dq = mul i64 %i.dm, %i.w
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.dq ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !72
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.dp, float %8, float %i.ds)
  store float %i.dt, ptr %i.dr, align 4, !tbaa !72
  %i.du = add nuw i64 %storemerge43, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.du, %i.o
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.split, !llvm.loop !1239
}

declare noundef nonnull align 8 dereferenceable(218) ptr @_ZNK7xgboost16GHistIndexMatrix9TransposeEv(ptr noundef nonnull align 8 dereferenceable(225)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_10SparsePageEEELN9__gnu_cxx12_Lock_policyE2EE5resetIS3_EENSt9enable_ifIXsr21__sp_is_constructibleIS3_T_EE5valueEvE4typeEPS9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33
          to label %_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_10SparsePageEEELN9__gnu_cxx12_Lock_policyE2EEC2IS3_vEEPT_.exit unwind label %bb.b ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = tail call ptr @__cxa_begin_catch(ptr %i.c) #18 ; 0 uses
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1) #18, !inline_history !1245
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #32
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.i

bb.g:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #35
  unreachable

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_10SparsePageEEELN9__gnu_cxx12_Lock_policyE2EEC2IS3_vEEPT_.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.l, align 8, !tbaa !242
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.m, align 4, !tbaa !243
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7xgboost17BatchIteratorImplINS0_10SparsePageEEELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !64
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.n, align 8, !tbaa !437
  store ptr %1, ptr %0, align 8, !tbaa !1246
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !240  ; 8 uses
  store ptr %i.a, ptr %i.o, align 8, !tbaa !240
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_10SparsePageEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_10SparsePageEEELN9__gnu_cxx12_Lock_policyE2EEC2IS3_vEEPT_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.q, align 8, !tbaa !242
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !243
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !64
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #18, !inline_history !5
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !64
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #18, !inline_history !5
  br label %_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_10SparsePageEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !83
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.t, %bb.l ], [ %i.ad, %bb.m ]
  %i.ae = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ae, label %bb.n, label %_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_10SparsePageEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !173

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #18
  br label %_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_10SparsePageEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_10SparsePageEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_10SparsePageEEELN9__gnu_cxx12_Lock_policyE2EEC2IS3_vEEPT_.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN7xgboost17BatchIteratorImplINS0_10SparsePageEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !240  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN7xgboost6common11ParallelForImZNKS_9predictor12CPUPredictor18PredictFromLeafIdsENS0_4SpanIKNS_16HostDeviceVectorIiEELm18446744073709551615EEENS4_IPKNS_7RegTreeELm18446744073709551615EEENS_6linalg10TensorViewIfLi2EEEEUlmE_EEvT_iNS0_5SchedEOT0_:bb.a
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.042129
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !83 ; 2 uses
  %.lobit.i.i.i66 = ashr i32 %i.co, 31
  %i.cp = xor i32 %.lobit.i.i.i66, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.391.0.copyload, i64 48
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !399
  %i.cs = sext i32 %i.cp to i64
  %i.ct = getelementptr inbounds [20 x i8], ptr %i.cr, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !50
  %i.cw = load i64, ptr %.sroa.290.0.copyload, align 8, !tbaa !59
  %i.cx = mul i64 %i.cw, %.042129
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.290.0.copyload, i64 48
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !191
  %i.da = getelementptr [4 x i8], ptr %i.cz, i64 %i.cx ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !72
  %i.dc = fadd float %i.cv, %i.db
  store float %i.dc, ptr %i.da, align 4, !tbaa !72
  %i.dd = add nuw i64 %.042129, 1                 ; 2 uses
  %exitcond156.not = icmp eq i64 %i.dd, %0
  br i1 %exitcond156.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.r, !llvm.loop !1889

bb.u:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.de = icmp eq i64 %3, 0
  %.not139 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.de, label %.preheader118, label %.preheader120

.preheader120:                                    ; preds = %bb.u
  br i1 %.not139, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph126

.lr.ph126:                                        ; preds = %.preheader120
  %.sroa.0101.0.copyload = load ptr, ptr %4, align 8, !tbaa !179 ; 2 uses
  %i.df = load i64, ptr %.sroa.0101.0.copyload, align 8, !tbaa !340
  %.sroa.3103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.2102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0101.0.copyload, i64 8
  br label %bb.y

.preheader118:                                    ; preds = %bb.u
  br i1 %.not139, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph128

.lr.ph128:                                        ; preds = %.preheader118
  %.sroa.095.0.copyload = load ptr, ptr %4, align 8, !tbaa !179 ; 2 uses
  %i.dh = load i64, ptr %.sroa.095.0.copyload, align 8, !tbaa !340
  %.sroa.397.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.095.0.copyload, i64 8
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph128, %bb.x
  %.041127 = phi i64 [ 0, %.lr.ph128 ], [ %i.ea, %bb.x ] ; 4 uses
  %exitcond153.not = icmp eq i64 %.041127, %i.dh
  br i1 %exitcond153.not, label %bb.w, label %bb.x, !prof !173

bb.w:                                             ; preds = %bb.v
  call void @_ZSt9terminatev() #35
  unreachable

bb.x:                                             ; preds = %bb.v
  %.sroa.397.0.copyload = load ptr, ptr %.sroa.397.0..sroa_idx, align 8, !tbaa !183
  %.sroa.296.0.copyload = load ptr, ptr %.sroa.296.0..sroa_idx, align 8, !tbaa !181 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !346
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %.041127
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !83 ; 2 uses
  %.lobit.i.i.i68 = ashr i32 %i.dl, 31
  %i.dm = xor i32 %.lobit.i.i.i68, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.397.0.copyload, i64 48
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !399
  %i.dp = sext i32 %i.dm to i64
  %i.dq = getelementptr inbounds [20 x i8], ptr %i.do, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !50
  %i.dt = load i64, ptr %.sroa.296.0.copyload, align 8, !tbaa !59
  %i.du = mul i64 %i.dt, %.041127
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.296.0.copyload, i64 48
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !191
  %i.dx = getelementptr [4 x i8], ptr %i.dw, i64 %i.du ; 2 uses
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !72
  %i.dz = fadd float %i.ds, %i.dy
  store float %i.dz, ptr %i.dx, align 4, !tbaa !72
  %i.ea = add nuw i64 %.041127, 1                 ; 2 uses
  %exitcond154.not = icmp eq i64 %i.ea, %0
  br i1 %exitcond154.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.v, !llvm.loop !1890

bb.y:                                             ; preds = %.lr.ph126, %bb.aa
  %.040125 = phi i64 [ 0, %.lr.ph126 ], [ %i.es, %bb.aa ] ; 4 uses
  %exitcond151.not = icmp eq i64 %.040125, %i.df
  br i1 %exitcond151.not, label %bb.z, label %bb.aa, !prof !173

bb.z:                                             ; preds = %bb.y
  call void @_ZSt9terminatev() #35
  unreachable

bb.aa:                                            ; preds = %bb.y
  %.sroa.3103.0.copyload = load ptr, ptr %.sroa.3103.0..sroa_idx, align 8, !tbaa !183
  %.sroa.2102.0.copyload = load ptr, ptr %.sroa.2102.0..sroa_idx, align 8, !tbaa !181 ; 2 uses
  %i.eb = load ptr, ptr %i.dg, align 8, !tbaa !346
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %.040125
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !83 ; 2 uses
  %.lobit.i.i.i70 = ashr i32 %i.ed, 31
  %i.ee = xor i32 %.lobit.i.i.i70, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.3103.0.copyload, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !399
  %i.eh = sext i32 %i.ee to i64
  %i.ei = getelementptr inbounds [20 x i8], ptr %i.eg, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !50
  %i.el = load i64, ptr %.sroa.2102.0.copyload, align 8, !tbaa !59
  %i.em = mul i64 %i.el, %.040125
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.2102.0.copyload, i64 48
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !191
  %i.ep = getelementptr [4 x i8], ptr %i.eo, i64 %i.em ; 2 uses
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !72
  %i.er = fadd float %i.ek, %i.eq
  store float %i.er, ptr %i.ep, align 4, !tbaa !72
  %i.es = add nuw i64 %.040125, 1                 ; 2 uses
  %exitcond152.not = icmp eq i64 %i.es, %0
  br i1 %exitcond152.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.y, !llvm.loop !1891

bb.ab:                                            ; preds = %.lr.ph, %bb.ad
  %.0124 = phi i64 [ 0, %.lr.ph ], [ %i.fk, %bb.ad ] ; 4 uses
  %exitcond.not = icmp eq i64 %.0124, %i.at
  br i1 %exitcond.not, label %bb.ac, label %bb.ad, !prof !173

bb.ac:                                            ; preds = %bb.ab
  call void @_ZSt9terminatev() #35
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %.sroa.3109.0.copyload = load ptr, ptr %.sroa.3109.0..sroa_idx, align 8, !tbaa !183
  %.sroa.2108.0.copyload = load ptr, ptr %.sroa.2108.0..sroa_idx, align 8, !tbaa !181 ; 2 uses
  %i.et = load ptr, ptr %i.au, align 8, !tbaa !346
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %.0124
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !83 ; 2 uses
  %.lobit.i.i.i72 = ashr i32 %i.ev, 31
  %i.ew = xor i32 %.lobit.i.i.i72, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.3109.0.copyload, i64 48
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !399
  %i.ez = sext i32 %i.ew to i64
  %i.fa = getelementptr inbounds [20 x i8], ptr %i.ey, i64 %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !50
  %i.fd = load i64, ptr %.sroa.2108.0.copyload, align 8, !tbaa !59
  %i.fe = mul i64 %i.fd, %.0124
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.2108.0.copyload, i64 48
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !191
  %i.fh = getelementptr [4 x i8], ptr %i.fg, i64 %i.fe ; 2 uses
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !72
  %i.fj = fadd float %i.fc, %i.fi
  store float %i.fj, ptr %i.fh, align 4, !tbaa !72
  %i.fk = add nuw i64 %.0124, 1                   ; 2 uses
  %exitcond150.not = icmp eq i64 %i.fk, %0
  br i1 %exitcond150.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.ab, !llvm.loop !1892

_ZN4dmlc12OMPExceptionD2Ev.exit:                  ; preds = %bb.ad, %bb.aa, %bb.x, %bb.t, %bb.q, %bb.m, %_ZZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS_6common4SpanIKNS_16HostDeviceVectorIiEELm18446744073709551615EEENS3_IPKNS_7RegTreeELm18446744073709551615EEENS_6linalg10TensorViewIfLi2EEEENKUlmE_clEm.exit, %.preheader122, %.preheader120, %.preheader118, %.preheader116, %.preheader114, %.preheader112, %.preheader, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  ret void

bb.ae:                                            ; preds = %bb.g
  %i.fl = landingpad { ptr, i32 }
          catch ptr null
  %i.fm = extractvalue { ptr, i32 } %i.fl, 0
  call void @__clang_call_terminate(ptr %i.fm) #35
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common11ParallelForImZNKS_9predictor12CPUPredictor18PredictFromLeafIdsENS0_4SpanIKNS_16HostDeviceVectorIiEELm18446744073709551615EEENS4_IPKNS_7RegTreeELm18446744073709551615EEENS_6linalg10TensorViewIfLi2EEEEUlmE0_EEvT_iNS0_5SchedEOT0_(i64 noundef %0, i32 noundef %1, i32 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %6 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.c = icmp eq i32 %1, 1
  br i1 %i.c, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.a
  %.not206 = icmp eq i64 %0, 0
  br i1 %.not206, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph199

.lr.ph199:                                        ; preds = %.preheader
  %i.d = load ptr, ptr %4, align 8, !tbaa !1969, !nonnull !141, !align !245 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !340
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !141, !align !245 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !141, !align !244
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !141, !align !245 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph199, %_ZZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS_6common4SpanIKNS_16HostDeviceVectorIiEELm18446744073709551615EEENS3_IPKNS_7RegTreeELm18446744073709551615EEENS_6linalg10TensorViewIfLi2EEEENKUlmE0_clEm.exit
  %.049198 = phi i64 [ 0, %.lr.ph199 ], [ %i.cc, %_ZZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS_6common4SpanIKNS_16HostDeviceVectorIiEELm18446744073709551615EEENS3_IPKNS_7RegTreeELm18446744073709551615EEENS_6linalg10TensorViewIfLi2EEEENKUlmE0_clEm.exit ] ; 5 uses
  %exitcond224.not = icmp eq i64 %.049198, %i.e
  br i1 %exitcond224.not, label %bb.c, label %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i, !prof !173

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i: ; preds = %bb.b
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !346
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.049198
  %i.u = load i32, ptr %i.t, align 4, !tbaa !83   ; 2 uses
  %.lobit.i.i = ashr i32 %i.u, 31
  %i.v = xor i32 %.lobit.i.i, %i.u
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !404, !noalias !1970
  %i.x = sext i32 %i.v to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !83, !noalias !1970
  %i.aa = load i64, ptr %i.j, align 8, !tbaa !59, !noalias !1971
  %i.ab = sext i32 %i.z to i64
  %i.ac = mul i64 %i.aa, %i.ab
  %i.ad = load i64, ptr %i.k, align 8, !tbaa !59, !noalias !1971 ; 4 uses
  %i.ae = load i64, ptr %i.l, align 8, !tbaa !434, !noalias !1971 ; 3 uses
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = select i1 %i.af, i64 0, i64 %i.ac       ; 4 uses
  %.not8.i.i.i.i = icmp ugt i64 %i.ag, %i.ae
  br i1 %.not8.i.i.i.i, label %bb.d, label %bb.e, !prof !173

bb.d:                                             ; preds = %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i
  tail call void @_ZSt9terminatev() #35, !noalias !1971
  unreachable

bb.e:                                             ; preds = %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i
  %i.ah = load ptr, ptr %.in.i.i.i.i, align 8, !tbaa !435, !noalias !1971 ; 3 uses
  %i.ai = icmp ne ptr %i.ah, null
  %i.aj = icmp eq i64 %i.ae, %i.ag
  %i.ak = or i1 %i.aj, %i.ai
  br i1 %i.ak, label %_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit.i, label %bb.f, !prof !70

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt9terminatev() #35, !noalias !1971
  unreachable

_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit.i: ; preds = %bb.e
  %i.al = getelementptr [4 x i8], ptr %i.ah, i64 %i.ag ; 5 uses
  %i.am = load i32, ptr %i.n, align 4, !tbaa !83  ; 3 uses
  %.not.i55 = icmp eq i32 %i.am, 0
  br i1 %.not.i55, label %_ZZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS_6common4SpanIKNS_16HostDeviceVectorIiEELm18446744073709551615EEENS3_IPKNS_7RegTreeELm18446744073709551615EEENS_6linalg10TensorViewIfLi2EEEENKUlmE0_clEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit.i
  %i.an = load i64, ptr %i.p, align 8, !tbaa !59  ; 2 uses
  %i.ao = mul i64 %i.an, %.049198
  %i.ap = load i64, ptr %i.q, align 8, !tbaa !59  ; 4 uses
  %i.aq = load ptr, ptr %i.r, align 8, !tbaa !191 ; 2 uses
  %i.ar = getelementptr [4 x i8], ptr %i.aq, i64 %i.ao ; 5 uses
  %wide.trip.count.i = zext i32 %i.am to i64      ; 7 uses
  %min.iters.check399 = icmp ult i32 %i.am, 12
  br i1 %min.iters.check399, label %scalar.ph398.preheader, label %vector.scevcheck389

vector.scevcheck389:                              ; preds = %.lr.ph.i
  %ident.check390 = icmp ne i64 %i.ap, 1
  %ident.check391 = icmp ne i64 %i.ad, 1
  %i.as = or i1 %ident.check390, %ident.check391
  br i1 %i.as, label %scalar.ph398.preheader, label %vector.memcheck392

vector.memcheck392:                               ; preds = %vector.scevcheck389
  %7 = shl i64 %.049198, 2
  %i.at = mul i64 %i.an, %7
  %i.au = shl nuw nsw i64 %wide.trip.count.i, 2
  %i.av = getelementptr i8, ptr %i.aq, i64 %i.at
  %scevgep393 = getelementptr i8, ptr %i.av, i64 %i.au
  %i.aw = add i64 %i.ag, %wide.trip.count.i
  %i.ax = shl i64 %i.aw, 2
  %scevgep394 = getelementptr i8, ptr %i.ah, i64 %i.ax
  %bound0395 = icmp ult ptr %i.ar, %scevgep394
  %bound1396 = icmp ult ptr %i.al, %scevgep393
  %found.conflict397 = and i1 %bound0395, %bound1396
  br i1 %found.conflict397, label %scalar.ph398.preheader, label %vector.ph400

vector.ph400:                                     ; preds = %vector.memcheck392
  %n.vec401 = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  br label %vector.body402

vector.body402:                                   ; preds = %vector.body402, %vector.ph400
  %index403 = phi i64 [ 0, %vector.ph400 ], [ %index.next408, %vector.body402 ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %index403 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load404 = load <4 x float>, ptr %i.ay, align 4, !tbaa !72, !alias.scope !1972
  %wide.load405 = load <4 x float>, ptr %i.az, align 4, !tbaa !72, !alias.scope !1972
  %i.ba = getelementptr [4 x i8], ptr %i.ar, i64 %index403 ; 3 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 16     ; 2 uses
  %wide.load406 = load <4 x float>, ptr %i.ba, align 4, !tbaa !72, !alias.scope !1973, !noalias !1972
  %wide.load407 = load <4 x float>, ptr %i.bb, align 4, !tbaa !72, !alias.scope !1973, !noalias !1972
  %i.bc = fadd <4 x float> %wide.load404, %wide.load406
  %i.bd = fadd <4 x float> %wide.load405, %wide.load407
  store <4 x float> %i.bc, ptr %i.ba, align 4, !tbaa !72, !alias.scope !1973, !noalias !1972
  store <4 x float> %i.bd, ptr %i.bb, align 4, !tbaa !72, !alias.scope !1973, !noalias !1972
  %index.next408 = add nuw i64 %index403, 8       ; 2 uses
  %i.be = icmp eq i64 %index.next408, %n.vec401
  br i1 %i.be, label %middle.block409, label %vector.body402, !llvm.loop !1903

middle.block409:                                  ; preds = %vector.body402
  %cmp.n410 = icmp eq i64 %n.vec401, %wide.trip.count.i
  br i1 %cmp.n410, label %_ZZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS_6common4SpanIKNS_16HostDeviceVectorIiEELm18446744073709551615EEENS3_IPKNS_7RegTreeELm18446744073709551615EEENS_6linalg10TensorViewIfLi2EEEENKUlmE0_clEm.exit, label %scalar.ph398.preheader

scalar.ph398.preheader:                           ; preds = %vector.memcheck392, %vector.scevcheck389, %.lr.ph.i, %middle.block409
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck392 ], [ 0, %vector.scevcheck389 ], [ 0, %.lr.ph.i ], [ %n.vec401, %middle.block409 ] ; 5 uses
  %xtraiter428 = and i64 %wide.trip.count.i, 1
  %lcmp.mod429.not = icmp eq i64 %xtraiter428, 0
  br i1 %lcmp.mod429.not, label %scalar.ph398.prol.loopexit, label %scalar.ph398.prol

scalar.ph398.prol:                                ; preds = %scalar.ph398.preheader
  %i.bf = mul i64 %indvars.iv.i.ph, %i.ad
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.bf
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !72
  %i.bi = mul i64 %indvars.iv.i.ph, %i.ap
  %i.bj = getelementptr [4 x i8], ptr %i.ar, i64 %i.bi ; 2 uses
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !72
  %i.bl = fadd float %i.bh, %i.bk
  store float %i.bl, ptr %i.bj, align 4, !tbaa !72
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph398.prol.loopexit

scalar.ph398.prol.loopexit:                       ; preds = %scalar.ph398.prol, %scalar.ph398.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph398.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph398.prol ]
  %i.bm = add nsw i64 %wide.trip.count.i, -1
  %i.bn = icmp eq i64 %indvars.iv.i.ph, %i.bm
  br i1 %i.bn, label %_ZZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS_6common4SpanIKNS_16HostDeviceVectorIiEELm18446744073709551615EEENS3_IPKNS_7RegTreeELm18446744073709551615EEENS_6linalg10TensorViewIfLi2EEEENKUlmE0_clEm.exit, label %scalar.ph398

scalar.ph398:                                     ; preds = %scalar.ph398.prol.loopexit, %scalar.ph398
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph398 ], [ %indvars.iv.i.unr, %scalar.ph398.prol.loopexit ] ; 4 uses
  %i.bo = mul i64 %indvars.iv.i, %i.ad
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !72
  %i.br = mul i64 %indvars.iv.i, %i.ap
  %i.bs = getelementptr [4 x i8], ptr %i.ar, i64 %i.br ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !72
  %i.bu = fadd float %i.bq, %i.bt
  store float %i.bu, ptr %i.bs, align 4, !tbaa !72
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bv = mul i64 %indvars.iv.next.i, %i.ad
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !72
  %i.by = mul i64 %indvars.iv.next.i, %i.ap
  %i.bz = getelementptr [4 x i8], ptr %i.ar, i64 %i.by ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !72
  %i.cb = fadd float %i.bx, %i.ca
  store float %i.cb, ptr %i.bz, align 4, !tbaa !72
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %_ZZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS_6common4SpanIKNS_16HostDeviceVectorIiEELm18446744073709551615EEENS3_IPKNS_7RegTreeELm18446744073709551615EEENS_6linalg10TensorViewIfLi2EEEENKUlmE0_clEm.exit, label %scalar.ph398, !llvm.loop !1904

_ZZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS_6common4SpanIKNS_16HostDeviceVectorIiEELm18446744073709551615EEENS3_IPKNS_7RegTreeELm18446744073709551615EEENS_6linalg10TensorViewIfLi2EEEENKUlmE0_clEm.exit: ; preds = %scalar.ph398.prol.loopexit, %scalar.ph398, %middle.block409, %_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit.i
  %i.cc = add nuw i64 %.049198, 1                 ; 2 uses
  %exitcond225.not = icmp eq i64 %i.cc, %0
  br i1 %exitcond225.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.b, !llvm.loop !1905

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %1, ptr %i.a, align 4, !tbaa !83, !noalias !1974
  store i32 1, ptr %i.b, align 4, !tbaa !83, !noalias !1974
  %.not.i = icmp slt i32 %1, 1
  br i1 %.not.i, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, label %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.g
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pr = load ptr, ptr %5, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.cd = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.cd, ptr noundef nonnull @.str.52, i32 noundef 196)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.i

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.ce = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.j ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull @.str.5, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef nonnull @.str.53, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ch = load ptr, ptr %5, align 8, !tbaa !53    ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !44
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !43
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef %i.ci, i64 noundef %i.ck)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.j

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull @.str.7, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63 unwind label %bb.j ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %.noexc, %bb.h, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit60, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.k unwind label %bb.at

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.cn, %bb.i ], [ %i.co, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  resume { ptr, i32 } %.pn

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %.pr173 = load ptr, ptr %5, align 8, !tbaa !53  ; 4 uses
  %.not.i64 = icmp eq ptr %.pr173, null
  br i1 %.not.i64, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cp = load ptr, ptr %.pr173, align 8, !tbaa !44 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.pr173, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.m
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !50
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr173, i64 noundef 32) #34
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_GEIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.l, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  switch i32 %2, label %_ZN4dmlc12OMPExceptionD2Ev.exit [
    i32 0, label %.preheader175
    i32 1, label %bb.s
    i32 2, label %bb.ad
    i32 3, label %.preheader185
  ]

.preheader185:                                    ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not200 = icmp eq i64 %0, 0
  br i1 %.not200, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader185
  %.sroa.0169.0.copyload = load ptr, ptr %4, align 8, !tbaa !179 ; 2 uses
  %.sroa.2170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2170.0.copyload = load ptr, ptr %.sroa.2170.0..sroa_idx, align 8, !tbaa !185 ; 5 uses
  %.sroa.3171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.3171.0.copyload = load ptr, ptr %.sroa.3171.0..sroa_idx, align 8, !tbaa !131
  %.sroa.4172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.4172.0.copyload = load ptr, ptr %.sroa.4172.0..sroa_idx, align 8, !tbaa !181 ; 3 uses
  %i.cu = load i64, ptr %.sroa.0169.0.copyload, align 8, !tbaa !340
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0169.0.copyload, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.2170.0.copyload, i64 56
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.2170.0.copyload, i64 104
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.2170.0.copyload, i64 112
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.2170.0.copyload, i64 136
  %.in.i.i.i.i.i116 = getelementptr inbounds nuw i8, ptr %.sroa.2170.0.copyload, i64 144
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.4172.0.copyload, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.4172.0.copyload, i64 48
  br label %bb.ao

.preheader175:                                    ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not205 = icmp eq i64 %0, 0
  br i1 %.not205, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph197

.lr.ph197:                                        ; preds = %.preheader175
  %.sroa.0131.0.copyload = load ptr, ptr %4, align 8, !tbaa !179 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !185 ; 5 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !131
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.4132.0.copyload = load ptr, ptr %.sroa.4132.0..sroa_idx, align 8, !tbaa !181 ; 3 uses
  %i.dc = load i64, ptr %.sroa.0131.0.copyload, align 8, !tbaa !340
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0131.0.copyload, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 56
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 104
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 112
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 136
  %.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 144
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.4132.0.copyload, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.4132.0.copyload, i64 48
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph197, %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit
  %.044196 = phi i64 [ 0, %.lr.ph197 ], [ %i.fu, %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit ] ; 5 uses
  %exitcond222.not = icmp eq i64 %.044196, %i.dc
  br i1 %exitcond222.not, label %bb.o, label %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i, !prof !173

bb.o:                                             ; preds = %bb.n
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i: ; preds = %bb.n
  %i.dk = load ptr, ptr %i.dd, align 8, !tbaa !346
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %.044196
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !83 ; 2 uses
  %.lobit.i.i.i = ashr i32 %i.dm, 31
  %i.dn = xor i32 %.lobit.i.i.i, %i.dm
  %i.do = load ptr, ptr %i.de, align 8, !tbaa !404, !noalias !1975
  %i.dp = sext i32 %i.dn to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !83, !noalias !1975
  %i.ds = load i64, ptr %i.df, align 8, !tbaa !59, !noalias !1976
  %i.dt = sext i32 %i.dr to i64
  %i.du = mul i64 %i.ds, %i.dt
  %i.dv = load i64, ptr %i.dg, align 8, !tbaa !59, !noalias !1976 ; 4 uses
  %i.dw = load i64, ptr %i.dh, align 8, !tbaa !434, !noalias !1976 ; 3 uses
  %i.dx = icmp eq i64 %i.dw, 0
  %i.dy = select i1 %i.dx, i64 0, i64 %i.du       ; 4 uses
  %.not8.i.i.i.i.i = icmp ugt i64 %i.dy, %i.dw
  br i1 %.not8.i.i.i.i.i, label %bb.p, label %bb.q, !prof !173

bb.p:                                             ; preds = %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i
  call void @_ZSt9terminatev() #35, !noalias !1976
  unreachable

bb.q:                                             ; preds = %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i
  %i.dz = load ptr, ptr %.in.i.i.i.i.i, align 8, !tbaa !435, !noalias !1976 ; 3 uses
  %i.ea = icmp ne ptr %i.dz, null
  %i.eb = icmp eq i64 %i.dw, %i.dy
  %i.ec = or i1 %i.eb, %i.ea
  br i1 %i.ec, label %_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit.i.i, label %bb.r, !prof !70

bb.r:                                             ; preds = %bb.q
  call void @_ZSt9terminatev() #35, !noalias !1976
  unreachable

_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit.i.i: ; preds = %bb.q
  %i.ed = getelementptr [4 x i8], ptr %i.dz, i64 %i.dy ; 5 uses
  %i.ee = load i32, ptr %.sroa.3.0.copyload, align 4, !tbaa !83 ; 3 uses
  %.not.i.i = icmp eq i32 %i.ee, 0
  br i1 %.not.i.i, label %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit.i.i
  %i.ef = load i64, ptr %.sroa.4132.0.copyload, align 8, !tbaa !59 ; 2 uses
  %i.eg = mul i64 %i.ef, %.044196
  %i.eh = load i64, ptr %i.di, align 8, !tbaa !59 ; 4 uses
  %i.ei = load ptr, ptr %i.dj, align 8, !tbaa !191 ; 2 uses
  %i.ej = getelementptr [4 x i8], ptr %i.ei, i64 %i.eg ; 5 uses
  %wide.trip.count.i.i = zext i32 %i.ee to i64    ; 7 uses
  %min.iters.check376 = icmp ult i32 %i.ee, 12
  br i1 %min.iters.check376, label %scalar.ph375.preheader, label %vector.scevcheck366

vector.scevcheck366:                              ; preds = %.lr.ph.i.i
  %ident.check367 = icmp ne i64 %i.eh, 1
  %ident.check368 = icmp ne i64 %i.dv, 1
  %i.ek = or i1 %ident.check367, %ident.check368
  br i1 %i.ek, label %scalar.ph375.preheader, label %vector.memcheck369

vector.memcheck369:                               ; preds = %vector.scevcheck366
  %8 = shl i64 %.044196, 2
  %i.el = mul i64 %i.ef, %8
  %i.em = shl nuw nsw i64 %wide.trip.count.i.i, 2
  %i.en = getelementptr i8, ptr %i.ei, i64 %i.el
  %scevgep370 = getelementptr i8, ptr %i.en, i64 %i.em
  %i.eo = add i64 %i.dy, %wide.trip.count.i.i
  %i.ep = shl i64 %i.eo, 2
  %scevgep371 = getelementptr i8, ptr %i.dz, i64 %i.ep
  %bound0372 = icmp ult ptr %i.ej, %scevgep371
  %bound1373 = icmp ult ptr %i.ed, %scevgep370
  %found.conflict374 = and i1 %bound0372, %bound1373
  br i1 %found.conflict374, label %scalar.ph375.preheader, label %vector.ph377

vector.ph377:                                     ; preds = %vector.memcheck369
  %n.vec378 = and i64 %wide.trip.count.i.i, 4294967288 ; 3 uses
  br label %vector.body379

vector.body379:                                   ; preds = %vector.body379, %vector.ph377
  %index380 = phi i64 [ 0, %vector.ph377 ], [ %index.next385, %vector.body379 ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %index380 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %wide.load381 = load <4 x float>, ptr %i.eq, align 4, !tbaa !72, !alias.scope !1977
  %wide.load382 = load <4 x float>, ptr %i.er, align 4, !tbaa !72, !alias.scope !1977
  %i.es = getelementptr [4 x i8], ptr %i.ej, i64 %index380 ; 3 uses
  %i.et = getelementptr i8, ptr %i.es, i64 16     ; 2 uses
  %wide.load383 = load <4 x float>, ptr %i.es, align 4, !tbaa !72, !alias.scope !1978, !noalias !1977
  %wide.load384 = load <4 x float>, ptr %i.et, align 4, !tbaa !72, !alias.scope !1978, !noalias !1977
  %i.eu = fadd <4 x float> %wide.load381, %wide.load383
  %i.ev = fadd <4 x float> %wide.load382, %wide.load384
  store <4 x float> %i.eu, ptr %i.es, align 4, !tbaa !72, !alias.scope !1978, !noalias !1977
  store <4 x float> %i.ev, ptr %i.et, align 4, !tbaa !72, !alias.scope !1978, !noalias !1977
  %index.next385 = add nuw i64 %index380, 8       ; 2 uses
  %i.ew = icmp eq i64 %index.next385, %n.vec378
  br i1 %i.ew, label %middle.block386, label %vector.body379, !llvm.loop !1915

middle.block386:                                  ; preds = %vector.body379
  %cmp.n387 = icmp eq i64 %n.vec378, %wide.trip.count.i.i
  br i1 %cmp.n387, label %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit, label %scalar.ph375.preheader

scalar.ph375.preheader:                           ; preds = %vector.memcheck369, %vector.scevcheck366, %.lr.ph.i.i, %middle.block386
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck369 ], [ 0, %vector.scevcheck366 ], [ 0, %.lr.ph.i.i ], [ %n.vec378, %middle.block386 ] ; 5 uses
  %xtraiter426 = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod427.not = icmp eq i64 %xtraiter426, 0
  br i1 %lcmp.mod427.not, label %scalar.ph375.prol.loopexit, label %scalar.ph375.prol

scalar.ph375.prol:                                ; preds = %scalar.ph375.preheader
  %i.ex = mul i64 %indvars.iv.i.i.ph, %i.dv
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.ex
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !72
  %i.fa = mul i64 %indvars.iv.i.i.ph, %i.eh
  %i.fb = getelementptr [4 x i8], ptr %i.ej, i64 %i.fa ; 2 uses
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !72
  %i.fd = fadd float %i.ez, %i.fc
  store float %i.fd, ptr %i.fb, align 4, !tbaa !72
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %scalar.ph375.prol.loopexit

scalar.ph375.prol.loopexit:                       ; preds = %scalar.ph375.prol, %scalar.ph375.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph375.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph375.prol ]
  %i.fe = add nsw i64 %wide.trip.count.i.i, -1
  %i.ff = icmp eq i64 %indvars.iv.i.i.ph, %i.fe
  br i1 %i.ff, label %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit, label %scalar.ph375

scalar.ph375:                                     ; preds = %scalar.ph375.prol.loopexit, %scalar.ph375
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %scalar.ph375 ], [ %indvars.iv.i.i.unr, %scalar.ph375.prol.loopexit ] ; 4 uses
  %i.fg = mul i64 %indvars.iv.i.i, %i.dv
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.fg
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !72
  %i.fj = mul i64 %indvars.iv.i.i, %i.eh
  %i.fk = getelementptr [4 x i8], ptr %i.ej, i64 %i.fj ; 2 uses
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !72
  %i.fm = fadd float %i.fi, %i.fl
  store float %i.fm, ptr %i.fk, align 4, !tbaa !72
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.fn = mul i64 %indvars.iv.next.i.i, %i.dv
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.fn
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !72
  %i.fq = mul i64 %indvars.iv.next.i.i, %i.eh
  %i.fr = getelementptr [4 x i8], ptr %i.ej, i64 %i.fq ; 2 uses
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !72
  %i.ft = fadd float %i.fp, %i.fs
  store float %i.ft, ptr %i.fr, align 4, !tbaa !72
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit, label %scalar.ph375, !llvm.loop !1916

_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit: ; preds = %scalar.ph375.prol.loopexit, %scalar.ph375, %middle.block386, %_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit.i.i
  %i.fu = add nuw i64 %.044196, 1                 ; 2 uses
  %exitcond223.not = icmp eq i64 %i.fu, %0
  br i1 %exitcond223.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.n, !llvm.loop !1917

bb.s:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.fv = icmp eq i64 %3, 0
  %.not204 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.fv, label %.preheader177, label %.preheader179

.preheader179:                                    ; preds = %bb.s
  br i1 %.not204, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph193

.lr.ph193:                                        ; preds = %.preheader179
  %.sroa.0145.0.copyload = load ptr, ptr %4, align 8, !tbaa !179 ; 2 uses
  %.sroa.2146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2146.0.copyload = load ptr, ptr %.sroa.2146.0..sroa_idx, align 8, !tbaa !185 ; 5 uses
  %.sroa.3147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.3147.0.copyload = load ptr, ptr %.sroa.3147.0..sroa_idx, align 8, !tbaa !131
  %.sroa.4148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.4148.0.copyload = load ptr, ptr %.sroa.4148.0..sroa_idx, align 8, !tbaa !181 ; 3 uses
  %i.fw = load i64, ptr %.sroa.0145.0.copyload, align 8, !tbaa !340
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0145.0.copyload, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.2146.0.copyload, i64 56
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.2146.0.copyload, i64 104
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.2146.0.copyload, i64 112
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.2146.0.copyload, i64 136
  %.in.i.i.i.i.i80 = getelementptr inbounds nuw i8, ptr %.sroa.2146.0.copyload, i64 144
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.4148.0.copyload, i64 8
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.4148.0.copyload, i64 48
  br label %bb.y

.preheader177:                                    ; preds = %bb.s
  br i1 %.not204, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph195

.lr.ph195:                                        ; preds = %.preheader177
  %.sroa.0137.0.copyload = load ptr, ptr %4, align 8, !tbaa !179 ; 2 uses
  %.sroa.2138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2138.0.copyload = load ptr, ptr %.sroa.2138.0..sroa_idx, align 8, !tbaa !185 ; 5 uses
  %.sroa.3139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.3139.0.copyload = load ptr, ptr %.sroa.3139.0..sroa_idx, align 8, !tbaa !131
  %.sroa.4140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.4140.0.copyload = load ptr, ptr %.sroa.4140.0..sroa_idx, align 8, !tbaa !181 ; 3 uses
  %i.ge = load i64, ptr %.sroa.0137.0.copyload, align 8, !tbaa !340
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0137.0.copyload, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.2138.0.copyload, i64 56
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.2138.0.copyload, i64 104
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.2138.0.copyload, i64 112
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.2138.0.copyload, i64 136
  %.in.i.i.i.i.i68 = getelementptr inbounds nuw i8, ptr %.sroa.2138.0.copyload, i64 144
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.4140.0.copyload, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.4140.0.copyload, i64 48
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph195, %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit76
  %.043194 = phi i64 [ 0, %.lr.ph195 ], [ %i.iw, %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit76 ] ; 5 uses
  %exitcond220.not = icmp eq i64 %.043194, %i.ge
  br i1 %exitcond220.not, label %bb.u, label %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i65, !prof !173

bb.u:                                             ; preds = %bb.t
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i65: ; preds = %bb.t
  %i.gm = load ptr, ptr %i.gf, align 8, !tbaa !346
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %.043194
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !83 ; 2 uses
  %.lobit.i.i.i66 = ashr i32 %i.go, 31
  %i.gp = xor i32 %.lobit.i.i.i66, %i.go
  %i.gq = load ptr, ptr %i.gg, align 8, !tbaa !404, !noalias !1979
  %i.gr = sext i32 %i.gp to i64
  %i.gs = getelementptr inbounds [4 x i8], ptr %i.gq, i64 %i.gr
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !83, !noalias !1979
  %i.gu = load i64, ptr %i.gh, align 8, !tbaa !59, !noalias !1980
  %i.gv = sext i32 %i.gt to i64
  %i.gw = mul i64 %i.gu, %i.gv
  %i.gx = load i64, ptr %i.gi, align 8, !tbaa !59, !noalias !1980 ; 4 uses
  %i.gy = load i64, ptr %i.gj, align 8, !tbaa !434, !noalias !1980 ; 3 uses
  %i.gz = icmp eq i64 %i.gy, 0
  %i.ha = select i1 %i.gz, i64 0, i64 %i.gw       ; 4 uses
  %.not8.i.i.i.i.i67 = icmp ugt i64 %i.ha, %i.gy
  br i1 %.not8.i.i.i.i.i67, label %bb.v, label %bb.w, !prof !173

bb.v:                                             ; preds = %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i65
  call void @_ZSt9terminatev() #35, !noalias !1980
  unreachable

bb.w:                                             ; preds = %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i65
  %i.hb = load ptr, ptr %.in.i.i.i.i.i68, align 8, !tbaa !435, !noalias !1980 ; 3 uses
  %i.hc = icmp ne ptr %i.hb, null
  %i.hd = icmp eq i64 %i.gy, %i.ha
  %i.he = or i1 %i.hd, %i.hc
  br i1 %i.he, label %_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit.i.i69, label %bb.x, !prof !70

bb.x:                                             ; preds = %bb.w
  call void @_ZSt9terminatev() #35, !noalias !1980
  unreachable

_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit.i.i69: ; preds = %bb.w
  %i.hf = getelementptr [4 x i8], ptr %i.hb, i64 %i.ha ; 5 uses
  %i.hg = load i32, ptr %.sroa.3139.0.copyload, align 4, !tbaa !83 ; 3 uses
  %.not.i.i70 = icmp eq i32 %i.hg, 0
  br i1 %.not.i.i70, label %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit76, label %.lr.ph.i.i71

.lr.ph.i.i71:                                     ; preds = %_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit.i.i69
  %i.hh = load i64, ptr %.sroa.4140.0.copyload, align 8, !tbaa !59 ; 2 uses
  %i.hi = mul i64 %i.hh, %.043194
  %i.hj = load i64, ptr %i.gk, align 8, !tbaa !59 ; 4 uses
  %i.hk = load ptr, ptr %i.gl, align 8, !tbaa !191 ; 2 uses
  %i.hl = getelementptr [4 x i8], ptr %i.hk, i64 %i.hi ; 5 uses
  %wide.trip.count.i.i72 = zext i32 %i.hg to i64  ; 7 uses
  %min.iters.check353 = icmp ult i32 %i.hg, 12
  br i1 %min.iters.check353, label %scalar.ph352.preheader, label %vector.scevcheck343

vector.scevcheck343:                              ; preds = %.lr.ph.i.i71
  %ident.check344 = icmp ne i64 %i.hj, 1
  %ident.check345 = icmp ne i64 %i.gx, 1
  %i.hm = or i1 %ident.check344, %ident.check345
  br i1 %i.hm, label %scalar.ph352.preheader, label %vector.memcheck346

vector.memcheck346:                               ; preds = %vector.scevcheck343
  %9 = shl i64 %.043194, 2
  %i.hn = mul i64 %i.hh, %9
  %i.ho = shl nuw nsw i64 %wide.trip.count.i.i72, 2
  %i.hp = getelementptr i8, ptr %i.hk, i64 %i.hn
  %scevgep347 = getelementptr i8, ptr %i.hp, i64 %i.ho
  %i.hq = add i64 %i.ha, %wide.trip.count.i.i72
  %i.hr = shl i64 %i.hq, 2
  %scevgep348 = getelementptr i8, ptr %i.hb, i64 %i.hr
  %bound0349 = icmp ult ptr %i.hl, %scevgep348
  %bound1350 = icmp ult ptr %i.hf, %scevgep347
  %found.conflict351 = and i1 %bound0349, %bound1350
  br i1 %found.conflict351, label %scalar.ph352.preheader, label %vector.ph354

vector.ph354:                                     ; preds = %vector.memcheck346
  %n.vec355 = and i64 %wide.trip.count.i.i72, 4294967288 ; 3 uses
  br label %vector.body356

vector.body356:                                   ; preds = %vector.body356, %vector.ph354
  %index357 = phi i64 [ 0, %vector.ph354 ], [ %index.next362, %vector.body356 ] ; 3 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %index357 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %wide.load358 = load <4 x float>, ptr %i.hs, align 4, !tbaa !72, !alias.scope !1981
  %wide.load359 = load <4 x float>, ptr %i.ht, align 4, !tbaa !72, !alias.scope !1981
  %i.hu = getelementptr [4 x i8], ptr %i.hl, i64 %index357 ; 3 uses
  %i.hv = getelementptr i8, ptr %i.hu, i64 16     ; 2 uses
  %wide.load360 = load <4 x float>, ptr %i.hu, align 4, !tbaa !72, !alias.scope !1982, !noalias !1981
  %wide.load361 = load <4 x float>, ptr %i.hv, align 4, !tbaa !72, !alias.scope !1982, !noalias !1981
  %i.hw = fadd <4 x float> %wide.load358, %wide.load360
  %i.hx = fadd <4 x float> %wide.load359, %wide.load361
  store <4 x float> %i.hw, ptr %i.hu, align 4, !tbaa !72, !alias.scope !1982, !noalias !1981
  store <4 x float> %i.hx, ptr %i.hv, align 4, !tbaa !72, !alias.scope !1982, !noalias !1981
  %index.next362 = add nuw i64 %index357, 8       ; 2 uses
  %i.hy = icmp eq i64 %index.next362, %n.vec355
  br i1 %i.hy, label %middle.block363, label %vector.body356, !llvm.loop !1925

middle.block363:                                  ; preds = %vector.body356
  %cmp.n364 = icmp eq i64 %n.vec355, %wide.trip.count.i.i72
  br i1 %cmp.n364, label %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit76, label %scalar.ph352.preheader

scalar.ph352.preheader:                           ; preds = %vector.memcheck346, %vector.scevcheck343, %.lr.ph.i.i71, %middle.block363
  %indvars.iv.i.i73.ph = phi i64 [ 0, %vector.memcheck346 ], [ 0, %vector.scevcheck343 ], [ 0, %.lr.ph.i.i71 ], [ %n.vec355, %middle.block363 ] ; 5 uses
  %xtraiter424 = and i64 %wide.trip.count.i.i72, 1
  %lcmp.mod425.not = icmp eq i64 %xtraiter424, 0
  br i1 %lcmp.mod425.not, label %scalar.ph352.prol.loopexit, label %scalar.ph352.prol

scalar.ph352.prol:                                ; preds = %scalar.ph352.preheader
  %i.hz = mul i64 %indvars.iv.i.i73.ph, %i.gx
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.hz
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !72
  %i.ic = mul i64 %indvars.iv.i.i73.ph, %i.hj
  %i.id = getelementptr [4 x i8], ptr %i.hl, i64 %i.ic ; 2 uses
  %i.ie = load float, ptr %i.id, align 4, !tbaa !72
  %i.if = fadd float %i.ib, %i.ie
  store float %i.if, ptr %i.id, align 4, !tbaa !72
  %indvars.iv.next.i.i74.prol = or disjoint i64 %indvars.iv.i.i73.ph, 1
  br label %scalar.ph352.prol.loopexit

scalar.ph352.prol.loopexit:                       ; preds = %scalar.ph352.prol, %scalar.ph352.preheader
  %indvars.iv.i.i73.unr = phi i64 [ %indvars.iv.i.i73.ph, %scalar.ph352.preheader ], [ %indvars.iv.next.i.i74.prol, %scalar.ph352.prol ]
  %i.ig = add nsw i64 %wide.trip.count.i.i72, -1
  %i.ih = icmp eq i64 %indvars.iv.i.i73.ph, %i.ig
  br i1 %i.ih, label %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit76, label %scalar.ph352

scalar.ph352:                                     ; preds = %scalar.ph352.prol.loopexit, %scalar.ph352
  %indvars.iv.i.i73 = phi i64 [ %indvars.iv.next.i.i74.1, %scalar.ph352 ], [ %indvars.iv.i.i73.unr, %scalar.ph352.prol.loopexit ] ; 4 uses
  %i.ii = mul i64 %indvars.iv.i.i73, %i.gx
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.ii
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !72
  %i.il = mul i64 %indvars.iv.i.i73, %i.hj
  %i.im = getelementptr [4 x i8], ptr %i.hl, i64 %i.il ; 2 uses
  %i.in = load float, ptr %i.im, align 4, !tbaa !72
  %i.io = fadd float %i.ik, %i.in
  store float %i.io, ptr %i.im, align 4, !tbaa !72
  %indvars.iv.next.i.i74 = add nuw nsw i64 %indvars.iv.i.i73, 1 ; 2 uses
  %i.ip = mul i64 %indvars.iv.next.i.i74, %i.gx
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.ip
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !72
  %i.is = mul i64 %indvars.iv.next.i.i74, %i.hj
  %i.it = getelementptr [4 x i8], ptr %i.hl, i64 %i.is ; 2 uses
  %i.iu = load float, ptr %i.it, align 4, !tbaa !72
  %i.iv = fadd float %i.ir, %i.iu
  store float %i.iv, ptr %i.it, align 4, !tbaa !72
  %indvars.iv.next.i.i74.1 = add nuw nsw i64 %indvars.iv.i.i73, 2 ; 2 uses
  %exitcond.not.i.i75.1 = icmp eq i64 %indvars.iv.next.i.i74.1, %wide.trip.count.i.i72
  br i1 %exitcond.not.i.i75.1, label %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit76, label %scalar.ph352, !llvm.loop !1926

_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit76: ; preds = %scalar.ph352.prol.loopexit, %scalar.ph352, %middle.block363, %_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit.i.i69
  %i.iw = add nuw i64 %.043194, 1                 ; 2 uses
  %exitcond221.not = icmp eq i64 %i.iw, %0
  br i1 %exitcond221.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.t, !llvm.loop !1927

bb.y:                                             ; preds = %.lr.ph193, %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit88
  %.042192 = phi i64 [ 0, %.lr.ph193 ], [ %i.lh, %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit88 ] ; 5 uses
  %exitcond218.not = icmp eq i64 %.042192, %i.fw
  br i1 %exitcond218.not, label %bb.z, label %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i77, !prof !173

bb.z:                                             ; preds = %bb.y
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i77: ; preds = %bb.y
  %i.ix = load ptr, ptr %i.fx, align 8, !tbaa !346
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %.042192
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !83 ; 2 uses
  %.lobit.i.i.i78 = ashr i32 %i.iz, 31
  %i.ja = xor i32 %.lobit.i.i.i78, %i.iz
  %i.jb = load ptr, ptr %i.fy, align 8, !tbaa !404, !noalias !1983
  %i.jc = sext i32 %i.ja to i64
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.jb, i64 %i.jc
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !83, !noalias !1983
  %i.jf = load i64, ptr %i.fz, align 8, !tbaa !59, !noalias !1984
  %i.jg = sext i32 %i.je to i64
  %i.jh = mul i64 %i.jf, %i.jg
  %i.ji = load i64, ptr %i.ga, align 8, !tbaa !59, !noalias !1984 ; 4 uses
  %i.jj = load i64, ptr %i.gb, align 8, !tbaa !434, !noalias !1984 ; 3 uses
  %i.jk = icmp eq i64 %i.jj, 0
  %i.jl = select i1 %i.jk, i64 0, i64 %i.jh       ; 4 uses
  %.not8.i.i.i.i.i79 = icmp ugt i64 %i.jl, %i.jj
  br i1 %.not8.i.i.i.i.i79, label %bb.aa, label %bb.ab, !prof !173

bb.aa:                                            ; preds = %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i77
  call void @_ZSt9terminatev() #35, !noalias !1984
  unreachable

bb.ab:                                            ; preds = %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i77
  %i.jm = load ptr, ptr %.in.i.i.i.i.i80, align 8, !tbaa !435, !noalias !1984 ; 3 uses
  %i.jn = icmp ne ptr %i.jm, null
  %i.jo = icmp eq i64 %i.jj, %i.jl
  %i.jp = or i1 %i.jo, %i.jn
  br i1 %i.jp, label %_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit.i.i81, label %bb.ac, !prof !70

bb.ac:                                            ; preds = %bb.ab
  call void @_ZSt9terminatev() #35, !noalias !1984
  unreachable

_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit.i.i81: ; preds = %bb.ab
  %i.jq = getelementptr [4 x i8], ptr %i.jm, i64 %i.jl ; 5 uses
  %i.jr = load i32, ptr %.sroa.3147.0.copyload, align 4, !tbaa !83 ; 3 uses
  %.not.i.i82 = icmp eq i32 %i.jr, 0
  br i1 %.not.i.i82, label %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit88, label %.lr.ph.i.i83

.lr.ph.i.i83:                                     ; preds = %_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit.i.i81
  %i.js = load i64, ptr %.sroa.4148.0.copyload, align 8, !tbaa !59 ; 2 uses
  %i.jt = mul i64 %i.js, %.042192
  %i.ju = load i64, ptr %i.gc, align 8, !tbaa !59 ; 4 uses
  %i.jv = load ptr, ptr %i.gd, align 8, !tbaa !191 ; 2 uses
  %i.jw = getelementptr [4 x i8], ptr %i.jv, i64 %i.jt ; 5 uses
  %wide.trip.count.i.i84 = zext i32 %i.jr to i64  ; 7 uses
  %min.iters.check330 = icmp ult i32 %i.jr, 12
  br i1 %min.iters.check330, label %scalar.ph329.preheader, label %vector.scevcheck320

vector.scevcheck320:                              ; preds = %.lr.ph.i.i83
  %ident.check321 = icmp ne i64 %i.ju, 1
  %ident.check322 = icmp ne i64 %i.ji, 1
  %i.jx = or i1 %ident.check321, %ident.check322
  br i1 %i.jx, label %scalar.ph329.preheader, label %vector.memcheck323

vector.memcheck323:                               ; preds = %vector.scevcheck320
  %10 = shl i64 %.042192, 2
  %i.jy = mul i64 %i.js, %10
  %i.jz = shl nuw nsw i64 %wide.trip.count.i.i84, 2
  %i.ka = getelementptr i8, ptr %i.jv, i64 %i.jy
  %scevgep324 = getelementptr i8, ptr %i.ka, i64 %i.jz
  %i.kb = add i64 %i.jl, %wide.trip.count.i.i84
  %i.kc = shl i64 %i.kb, 2
  %scevgep325 = getelementptr i8, ptr %i.jm, i64 %i.kc
  %bound0326 = icmp ult ptr %i.jw, %scevgep325
  %bound1327 = icmp ult ptr %i.jq, %scevgep324
  %found.conflict328 = and i1 %bound0326, %bound1327
  br i1 %found.conflict328, label %scalar.ph329.preheader, label %vector.ph331

vector.ph331:                                     ; preds = %vector.memcheck323
  %n.vec332 = and i64 %wide.trip.count.i.i84, 4294967288 ; 3 uses
  br label %vector.body333

vector.body333:                                   ; preds = %vector.body333, %vector.ph331
  %index334 = phi i64 [ 0, %vector.ph331 ], [ %index.next339, %vector.body333 ] ; 3 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %index334 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %wide.load335 = load <4 x float>, ptr %i.kd, align 4, !tbaa !72, !alias.scope !1985
  %wide.load336 = load <4 x float>, ptr %i.ke, align 4, !tbaa !72, !alias.scope !1985
  %i.kf = getelementptr [4 x i8], ptr %i.jw, i64 %index334 ; 3 uses
  %i.kg = getelementptr i8, ptr %i.kf, i64 16     ; 2 uses
  %wide.load337 = load <4 x float>, ptr %i.kf, align 4, !tbaa !72, !alias.scope !1986, !noalias !1985
  %wide.load338 = load <4 x float>, ptr %i.kg, align 4, !tbaa !72, !alias.scope !1986, !noalias !1985
  %i.kh = fadd <4 x float> %wide.load335, %wide.load337
  %i.ki = fadd <4 x float> %wide.load336, %wide.load338
  store <4 x float> %i.kh, ptr %i.kf, align 4, !tbaa !72, !alias.scope !1986, !noalias !1985
  store <4 x float> %i.ki, ptr %i.kg, align 4, !tbaa !72, !alias.scope !1986, !noalias !1985
  %index.next339 = add nuw i64 %index334, 8       ; 2 uses
  %i.kj = icmp eq i64 %index.next339, %n.vec332
  br i1 %i.kj, label %middle.block340, label %vector.body333, !llvm.loop !1935

middle.block340:                                  ; preds = %vector.body333
  %cmp.n341 = icmp eq i64 %n.vec332, %wide.trip.count.i.i84
  br i1 %cmp.n341, label %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit88, label %scalar.ph329.preheader

scalar.ph329.preheader:                           ; preds = %vector.memcheck323, %vector.scevcheck320, %.lr.ph.i.i83, %middle.block340
  %indvars.iv.i.i85.ph = phi i64 [ 0, %vector.memcheck323 ], [ 0, %vector.scevcheck320 ], [ 0, %.lr.ph.i.i83 ], [ %n.vec332, %middle.block340 ] ; 5 uses
  %xtraiter422 = and i64 %wide.trip.count.i.i84, 1
  %lcmp.mod423.not = icmp eq i64 %xtraiter422, 0
  br i1 %lcmp.mod423.not, label %scalar.ph329.prol.loopexit, label %scalar.ph329.prol

scalar.ph329.prol:                                ; preds = %scalar.ph329.preheader
  %i.kk = mul i64 %indvars.iv.i.i85.ph, %i.ji
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.kk
  %i.km = load float, ptr %i.kl, align 4, !tbaa !72
  %i.kn = mul i64 %indvars.iv.i.i85.ph, %i.ju
  %i.ko = getelementptr [4 x i8], ptr %i.jw, i64 %i.kn ; 2 uses
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !72
  %i.kq = fadd float %i.km, %i.kp
  store float %i.kq, ptr %i.ko, align 4, !tbaa !72
  %indvars.iv.next.i.i86.prol = or disjoint i64 %indvars.iv.i.i85.ph, 1
  br label %scalar.ph329.prol.loopexit

scalar.ph329.prol.loopexit:                       ; preds = %scalar.ph329.prol, %scalar.ph329.preheader
  %indvars.iv.i.i85.unr = phi i64 [ %indvars.iv.i.i85.ph, %scalar.ph329.preheader ], [ %indvars.iv.next.i.i86.prol, %scalar.ph329.prol ]
  %i.kr = add nsw i64 %wide.trip.count.i.i84, -1
  %i.ks = icmp eq i64 %indvars.iv.i.i85.ph, %i.kr
  br i1 %i.ks, label %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit88, label %scalar.ph329

scalar.ph329:                                     ; preds = %scalar.ph329.prol.loopexit, %scalar.ph329
  %indvars.iv.i.i85 = phi i64 [ %indvars.iv.next.i.i86.1, %scalar.ph329 ], [ %indvars.iv.i.i85.unr, %scalar.ph329.prol.loopexit ] ; 4 uses
  %i.kt = mul i64 %indvars.iv.i.i85, %i.ji
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.kt
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !72
  %i.kw = mul i64 %indvars.iv.i.i85, %i.ju
  %i.kx = getelementptr [4 x i8], ptr %i.jw, i64 %i.kw ; 2 uses
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !72
  %i.kz = fadd float %i.kv, %i.ky
  store float %i.kz, ptr %i.kx, align 4, !tbaa !72
  %indvars.iv.next.i.i86 = add nuw nsw i64 %indvars.iv.i.i85, 1 ; 2 uses
  %i.la = mul i64 %indvars.iv.next.i.i86, %i.ji
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.la
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !72
  %i.ld = mul i64 %indvars.iv.next.i.i86, %i.ju
  %i.le = getelementptr [4 x i8], ptr %i.jw, i64 %i.ld ; 2 uses
  %i.lf = load float, ptr %i.le, align 4, !tbaa !72
  %i.lg = fadd float %i.lc, %i.lf
  store float %i.lg, ptr %i.le, align 4, !tbaa !72
  %indvars.iv.next.i.i86.1 = add nuw nsw i64 %indvars.iv.i.i85, 2 ; 2 uses
  %exitcond.not.i.i87.1 = icmp eq i64 %indvars.iv.next.i.i86.1, %wide.trip.count.i.i84
  br i1 %exitcond.not.i.i87.1, label %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit88, label %scalar.ph329, !llvm.loop !1936

_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit88: ; preds = %scalar.ph329.prol.loopexit, %scalar.ph329, %middle.block340, %_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit.i.i81
  %i.lh = add nuw i64 %.042192, 1                 ; 2 uses
  %exitcond219.not = icmp eq i64 %i.lh, %0
  br i1 %exitcond219.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.y, !llvm.loop !1937

bb.ad:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %i.li = icmp eq i64 %3, 0
  %.not202 = icmp eq i64 %0, 0                    ; 2 uses
  br i1 %i.li, label %.preheader181, label %.preheader183

.preheader183:                                    ; preds = %bb.ad
  br i1 %.not202, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph189

.lr.ph189:                                        ; preds = %.preheader183
  %.sroa.0161.0.copyload = load ptr, ptr %4, align 8, !tbaa !179 ; 2 uses
  %.sroa.2162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2162.0.copyload = load ptr, ptr %.sroa.2162.0..sroa_idx, align 8, !tbaa !185 ; 5 uses
  %.sroa.3163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.3163.0.copyload = load ptr, ptr %.sroa.3163.0..sroa_idx, align 8, !tbaa !131
  %.sroa.4164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.4164.0.copyload = load ptr, ptr %.sroa.4164.0..sroa_idx, align 8, !tbaa !181 ; 3 uses
  %i.lj = load i64, ptr %.sroa.0161.0.copyload, align 8, !tbaa !340
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.0161.0.copyload, i64 8
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.2162.0.copyload, i64 56
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.2162.0.copyload, i64 104
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.2162.0.copyload, i64 112
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.2162.0.copyload, i64 136
  %.in.i.i.i.i.i104 = getelementptr inbounds nuw i8, ptr %.sroa.2162.0.copyload, i64 144
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.4164.0.copyload, i64 8
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.4164.0.copyload, i64 48
  br label %bb.aj

.preheader181:                                    ; preds = %bb.ad
  br i1 %.not202, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %.lr.ph191

.lr.ph191:                                        ; preds = %.preheader181
  %.sroa.0153.0.copyload = load ptr, ptr %4, align 8, !tbaa !179 ; 2 uses
  %.sroa.2154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.2154.0.copyload = load ptr, ptr %.sroa.2154.0..sroa_idx, align 8, !tbaa !185 ; 5 uses
  %.sroa.3155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.3155.0.copyload = load ptr, ptr %.sroa.3155.0..sroa_idx, align 8, !tbaa !131
  %.sroa.4156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.4156.0.copyload = load ptr, ptr %.sroa.4156.0..sroa_idx, align 8, !tbaa !181 ; 3 uses
  %i.lr = load i64, ptr %.sroa.0153.0.copyload, align 8, !tbaa !340
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.0153.0.copyload, i64 8
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.2154.0.copyload, i64 56
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.2154.0.copyload, i64 104
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.2154.0.copyload, i64 112
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.2154.0.copyload, i64 136
  %.in.i.i.i.i.i92 = getelementptr inbounds nuw i8, ptr %.sroa.2154.0.copyload, i64 144
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.4156.0.copyload, i64 8
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.4156.0.copyload, i64 48
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph191, %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit100
  %.041190 = phi i64 [ 0, %.lr.ph191 ], [ %i.oj, %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit100 ] ; 5 uses
  %exitcond216.not = icmp eq i64 %.041190, %i.lr
  br i1 %exitcond216.not, label %bb.af, label %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i89, !prof !173

bb.af:                                            ; preds = %bb.ae
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i89: ; preds = %bb.ae
  %i.lz = load ptr, ptr %i.ls, align 8, !tbaa !346
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %.041190
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !83 ; 2 uses
  %.lobit.i.i.i90 = ashr i32 %i.mb, 31
  %i.mc = xor i32 %.lobit.i.i.i90, %i.mb
  %i.md = load ptr, ptr %i.lt, align 8, !tbaa !404, !noalias !1987
  %i.me = sext i32 %i.mc to i64
  %i.mf = getelementptr inbounds [4 x i8], ptr %i.md, i64 %i.me
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !83, !noalias !1987
  %i.mh = load i64, ptr %i.lu, align 8, !tbaa !59, !noalias !1988
  %i.mi = sext i32 %i.mg to i64
  %i.mj = mul i64 %i.mh, %i.mi
  %i.mk = load i64, ptr %i.lv, align 8, !tbaa !59, !noalias !1988 ; 4 uses
  %i.ml = load i64, ptr %i.lw, align 8, !tbaa !434, !noalias !1988 ; 3 uses
  %i.mm = icmp eq i64 %i.ml, 0
  %i.mn = select i1 %i.mm, i64 0, i64 %i.mj       ; 4 uses
  %.not8.i.i.i.i.i91 = icmp ugt i64 %i.mn, %i.ml
  br i1 %.not8.i.i.i.i.i91, label %bb.ag, label %bb.ah, !prof !173

bb.ag:                                            ; preds = %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i89
  call void @_ZSt9terminatev() #35, !noalias !1988
  unreachable

bb.ah:                                            ; preds = %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i89
  %i.mo = load ptr, ptr %.in.i.i.i.i.i92, align 8, !tbaa !435, !noalias !1988 ; 3 uses
  %i.mp = icmp ne ptr %i.mo, null
  %i.mq = icmp eq i64 %i.ml, %i.mn
  %i.mr = or i1 %i.mq, %i.mp
  br i1 %i.mr, label %_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit.i.i93, label %bb.ai, !prof !70

bb.ai:                                            ; preds = %bb.ah
  call void @_ZSt9terminatev() #35, !noalias !1988
  unreachable

_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit.i.i93: ; preds = %bb.ah
  %i.ms = getelementptr [4 x i8], ptr %i.mo, i64 %i.mn ; 5 uses
  %i.mt = load i32, ptr %.sroa.3155.0.copyload, align 4, !tbaa !83 ; 3 uses
  %.not.i.i94 = icmp eq i32 %i.mt, 0
  br i1 %.not.i.i94, label %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit100, label %.lr.ph.i.i95

.lr.ph.i.i95:                                     ; preds = %_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit.i.i93
  %i.mu = load i64, ptr %.sroa.4156.0.copyload, align 8, !tbaa !59 ; 2 uses
  %i.mv = mul i64 %i.mu, %.041190
  %i.mw = load i64, ptr %i.lx, align 8, !tbaa !59 ; 4 uses
  %i.mx = load ptr, ptr %i.ly, align 8, !tbaa !191 ; 2 uses
  %i.my = getelementptr [4 x i8], ptr %i.mx, i64 %i.mv ; 5 uses
  %wide.trip.count.i.i96 = zext i32 %i.mt to i64  ; 7 uses
  %min.iters.check307 = icmp ult i32 %i.mt, 12
  br i1 %min.iters.check307, label %scalar.ph306.preheader, label %vector.scevcheck297

vector.scevcheck297:                              ; preds = %.lr.ph.i.i95
  %ident.check298 = icmp ne i64 %i.mw, 1
  %ident.check299 = icmp ne i64 %i.mk, 1
  %i.mz = or i1 %ident.check298, %ident.check299
  br i1 %i.mz, label %scalar.ph306.preheader, label %vector.memcheck300

vector.memcheck300:                               ; preds = %vector.scevcheck297
  %11 = shl i64 %.041190, 2
  %i.na = mul i64 %i.mu, %11
  %i.nb = shl nuw nsw i64 %wide.trip.count.i.i96, 2
  %i.nc = getelementptr i8, ptr %i.mx, i64 %i.na
  %scevgep301 = getelementptr i8, ptr %i.nc, i64 %i.nb
  %i.nd = add i64 %i.mn, %wide.trip.count.i.i96
  %i.ne = shl i64 %i.nd, 2
  %scevgep302 = getelementptr i8, ptr %i.mo, i64 %i.ne
  %bound0303 = icmp ult ptr %i.my, %scevgep302
  %bound1304 = icmp ult ptr %i.ms, %scevgep301
  %found.conflict305 = and i1 %bound0303, %bound1304
  br i1 %found.conflict305, label %scalar.ph306.preheader, label %vector.ph308

vector.ph308:                                     ; preds = %vector.memcheck300
  %n.vec309 = and i64 %wide.trip.count.i.i96, 4294967288 ; 3 uses
  br label %vector.body310

vector.body310:                                   ; preds = %vector.body310, %vector.ph308
  %index311 = phi i64 [ 0, %vector.ph308 ], [ %index.next316, %vector.body310 ] ; 3 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %index311 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  %wide.load312 = load <4 x float>, ptr %i.nf, align 4, !tbaa !72, !alias.scope !1989
  %wide.load313 = load <4 x float>, ptr %i.ng, align 4, !tbaa !72, !alias.scope !1989
  %i.nh = getelementptr [4 x i8], ptr %i.my, i64 %index311 ; 3 uses
  %i.ni = getelementptr i8, ptr %i.nh, i64 16     ; 2 uses
  %wide.load314 = load <4 x float>, ptr %i.nh, align 4, !tbaa !72, !alias.scope !1990, !noalias !1989
  %wide.load315 = load <4 x float>, ptr %i.ni, align 4, !tbaa !72, !alias.scope !1990, !noalias !1989
  %i.nj = fadd <4 x float> %wide.load312, %wide.load314
  %i.nk = fadd <4 x float> %wide.load313, %wide.load315
  store <4 x float> %i.nj, ptr %i.nh, align 4, !tbaa !72, !alias.scope !1990, !noalias !1989
  store <4 x float> %i.nk, ptr %i.ni, align 4, !tbaa !72, !alias.scope !1990, !noalias !1989
  %index.next316 = add nuw i64 %index311, 8       ; 2 uses
  %i.nl = icmp eq i64 %index.next316, %n.vec309
  br i1 %i.nl, label %middle.block317, label %vector.body310, !llvm.loop !1945

middle.block317:                                  ; preds = %vector.body310
  %cmp.n318 = icmp eq i64 %n.vec309, %wide.trip.count.i.i96
  br i1 %cmp.n318, label %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit100, label %scalar.ph306.preheader

scalar.ph306.preheader:                           ; preds = %vector.memcheck300, %vector.scevcheck297, %.lr.ph.i.i95, %middle.block317
  %indvars.iv.i.i97.ph = phi i64 [ 0, %vector.memcheck300 ], [ 0, %vector.scevcheck297 ], [ 0, %.lr.ph.i.i95 ], [ %n.vec309, %middle.block317 ] ; 5 uses
  %xtraiter420 = and i64 %wide.trip.count.i.i96, 1
  %lcmp.mod421.not = icmp eq i64 %xtraiter420, 0
  br i1 %lcmp.mod421.not, label %scalar.ph306.prol.loopexit, label %scalar.ph306.prol

scalar.ph306.prol:                                ; preds = %scalar.ph306.preheader
  %i.nm = mul i64 %indvars.iv.i.i97.ph, %i.mk
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %i.nm
  %i.no = load float, ptr %i.nn, align 4, !tbaa !72
  %i.np = mul i64 %indvars.iv.i.i97.ph, %i.mw
  %i.nq = getelementptr [4 x i8], ptr %i.my, i64 %i.np ; 2 uses
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !72
  %i.ns = fadd float %i.no, %i.nr
  store float %i.ns, ptr %i.nq, align 4, !tbaa !72
  %indvars.iv.next.i.i98.prol = or disjoint i64 %indvars.iv.i.i97.ph, 1
  br label %scalar.ph306.prol.loopexit

scalar.ph306.prol.loopexit:                       ; preds = %scalar.ph306.prol, %scalar.ph306.preheader
  %indvars.iv.i.i97.unr = phi i64 [ %indvars.iv.i.i97.ph, %scalar.ph306.preheader ], [ %indvars.iv.next.i.i98.prol, %scalar.ph306.prol ]
  %i.nt = add nsw i64 %wide.trip.count.i.i96, -1
  %i.nu = icmp eq i64 %indvars.iv.i.i97.ph, %i.nt
  br i1 %i.nu, label %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit100, label %scalar.ph306

scalar.ph306:                                     ; preds = %scalar.ph306.prol.loopexit, %scalar.ph306
  %indvars.iv.i.i97 = phi i64 [ %indvars.iv.next.i.i98.1, %scalar.ph306 ], [ %indvars.iv.i.i97.unr, %scalar.ph306.prol.loopexit ] ; 4 uses
  %i.nv = mul i64 %indvars.iv.i.i97, %i.mk
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %i.nv
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !72
  %i.ny = mul i64 %indvars.iv.i.i97, %i.mw
  %i.nz = getelementptr [4 x i8], ptr %i.my, i64 %i.ny ; 2 uses
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !72
  %i.ob = fadd float %i.nx, %i.oa
  store float %i.ob, ptr %i.nz, align 4, !tbaa !72
  %indvars.iv.next.i.i98 = add nuw nsw i64 %indvars.iv.i.i97, 1 ; 2 uses
  %i.oc = mul i64 %indvars.iv.next.i.i98, %i.mk
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %i.oc
  %i.oe = load float, ptr %i.od, align 4, !tbaa !72
  %i.of = mul i64 %indvars.iv.next.i.i98, %i.mw
  %i.og = getelementptr [4 x i8], ptr %i.my, i64 %i.of ; 2 uses
  %i.oh = load float, ptr %i.og, align 4, !tbaa !72
  %i.oi = fadd float %i.oe, %i.oh
  store float %i.oi, ptr %i.og, align 4, !tbaa !72
  %indvars.iv.next.i.i98.1 = add nuw nsw i64 %indvars.iv.i.i97, 2 ; 2 uses
  %exitcond.not.i.i99.1 = icmp eq i64 %indvars.iv.next.i.i98.1, %wide.trip.count.i.i96
  br i1 %exitcond.not.i.i99.1, label %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit100, label %scalar.ph306, !llvm.loop !1946

_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit100: ; preds = %scalar.ph306.prol.loopexit, %scalar.ph306, %middle.block317, %_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit.i.i93
  %i.oj = add nuw i64 %.041190, 1                 ; 2 uses
  %exitcond217.not = icmp eq i64 %i.oj, %0
  br i1 %exitcond217.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.ae, !llvm.loop !1947

bb.aj:                                            ; preds = %.lr.ph189, %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit112
  %.040188 = phi i64 [ 0, %.lr.ph189 ], [ %i.qu, %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit112 ] ; 5 uses
  %exitcond214.not = icmp eq i64 %.040188, %i.lj
  br i1 %exitcond214.not, label %bb.ak, label %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i101, !prof !173

bb.ak:                                            ; preds = %bb.aj
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i101: ; preds = %bb.aj
  %i.ok = load ptr, ptr %i.lk, align 8, !tbaa !346
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.ok, i64 %.040188
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !83 ; 2 uses
  %.lobit.i.i.i102 = ashr i32 %i.om, 31
  %i.on = xor i32 %.lobit.i.i.i102, %i.om
  %i.oo = load ptr, ptr %i.ll, align 8, !tbaa !404, !noalias !1991
  %i.op = sext i32 %i.on to i64
  %i.oq = getelementptr inbounds [4 x i8], ptr %i.oo, i64 %i.op
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !83, !noalias !1991
  %i.os = load i64, ptr %i.lm, align 8, !tbaa !59, !noalias !1992
  %i.ot = sext i32 %i.or to i64
  %i.ou = mul i64 %i.os, %i.ot
  %i.ov = load i64, ptr %i.ln, align 8, !tbaa !59, !noalias !1992 ; 4 uses
  %i.ow = load i64, ptr %i.lo, align 8, !tbaa !434, !noalias !1992 ; 3 uses
  %i.ox = icmp eq i64 %i.ow, 0
  %i.oy = select i1 %i.ox, i64 0, i64 %i.ou       ; 4 uses
  %.not8.i.i.i.i.i103 = icmp ugt i64 %i.oy, %i.ow
  br i1 %.not8.i.i.i.i.i103, label %bb.al, label %bb.am, !prof !173

bb.al:                                            ; preds = %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i101
  call void @_ZSt9terminatev() #35, !noalias !1992
  unreachable

bb.am:                                            ; preds = %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i101
  %i.oz = load ptr, ptr %.in.i.i.i.i.i104, align 8, !tbaa !435, !noalias !1992 ; 3 uses
  %i.pa = icmp ne ptr %i.oz, null
  %i.pb = icmp eq i64 %i.ow, %i.oy
  %i.pc = or i1 %i.pb, %i.pa
  br i1 %i.pc, label %_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit.i.i105, label %bb.an, !prof !70

bb.an:                                            ; preds = %bb.am
  call void @_ZSt9terminatev() #35, !noalias !1992
  unreachable

_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit.i.i105: ; preds = %bb.am
  %i.pd = getelementptr [4 x i8], ptr %i.oz, i64 %i.oy ; 5 uses
  %i.pe = load i32, ptr %.sroa.3163.0.copyload, align 4, !tbaa !83 ; 3 uses
  %.not.i.i106 = icmp eq i32 %i.pe, 0
  br i1 %.not.i.i106, label %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit112, label %.lr.ph.i.i107

.lr.ph.i.i107:                                    ; preds = %_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit.i.i105
  %i.pf = load i64, ptr %.sroa.4164.0.copyload, align 8, !tbaa !59 ; 2 uses
  %i.pg = mul i64 %i.pf, %.040188
  %i.ph = load i64, ptr %i.lp, align 8, !tbaa !59 ; 4 uses
  %i.pi = load ptr, ptr %i.lq, align 8, !tbaa !191 ; 2 uses
  %i.pj = getelementptr [4 x i8], ptr %i.pi, i64 %i.pg ; 5 uses
  %wide.trip.count.i.i108 = zext i32 %i.pe to i64 ; 7 uses
  %min.iters.check284 = icmp ult i32 %i.pe, 12
  br i1 %min.iters.check284, label %scalar.ph283.preheader, label %vector.scevcheck274

vector.scevcheck274:                              ; preds = %.lr.ph.i.i107
  %ident.check275 = icmp ne i64 %i.ph, 1
  %ident.check276 = icmp ne i64 %i.ov, 1
  %i.pk = or i1 %ident.check275, %ident.check276
  br i1 %i.pk, label %scalar.ph283.preheader, label %vector.memcheck277

vector.memcheck277:                               ; preds = %vector.scevcheck274
  %12 = shl i64 %.040188, 2
  %i.pl = mul i64 %i.pf, %12
  %i.pm = shl nuw nsw i64 %wide.trip.count.i.i108, 2
  %i.pn = getelementptr i8, ptr %i.pi, i64 %i.pl
  %scevgep278 = getelementptr i8, ptr %i.pn, i64 %i.pm
  %i.po = add i64 %i.oy, %wide.trip.count.i.i108
  %i.pp = shl i64 %i.po, 2
  %scevgep279 = getelementptr i8, ptr %i.oz, i64 %i.pp
  %bound0280 = icmp ult ptr %i.pj, %scevgep279
  %bound1281 = icmp ult ptr %i.pd, %scevgep278
  %found.conflict282 = and i1 %bound0280, %bound1281
  br i1 %found.conflict282, label %scalar.ph283.preheader, label %vector.ph285

vector.ph285:                                     ; preds = %vector.memcheck277
  %n.vec286 = and i64 %wide.trip.count.i.i108, 4294967288 ; 3 uses
  br label %vector.body287

vector.body287:                                   ; preds = %vector.body287, %vector.ph285
  %index288 = phi i64 [ 0, %vector.ph285 ], [ %index.next293, %vector.body287 ] ; 3 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %index288 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  %wide.load289 = load <4 x float>, ptr %i.pq, align 4, !tbaa !72, !alias.scope !1993
  %wide.load290 = load <4 x float>, ptr %i.pr, align 4, !tbaa !72, !alias.scope !1993
  %i.ps = getelementptr [4 x i8], ptr %i.pj, i64 %index288 ; 3 uses
  %i.pt = getelementptr i8, ptr %i.ps, i64 16     ; 2 uses
  %wide.load291 = load <4 x float>, ptr %i.ps, align 4, !tbaa !72, !alias.scope !1994, !noalias !1993
  %wide.load292 = load <4 x float>, ptr %i.pt, align 4, !tbaa !72, !alias.scope !1994, !noalias !1993
  %i.pu = fadd <4 x float> %wide.load289, %wide.load291
  %i.pv = fadd <4 x float> %wide.load290, %wide.load292
  store <4 x float> %i.pu, ptr %i.ps, align 4, !tbaa !72, !alias.scope !1994, !noalias !1993
  store <4 x float> %i.pv, ptr %i.pt, align 4, !tbaa !72, !alias.scope !1994, !noalias !1993
  %index.next293 = add nuw i64 %index288, 8       ; 2 uses
  %i.pw = icmp eq i64 %index.next293, %n.vec286
  br i1 %i.pw, label %middle.block294, label %vector.body287, !llvm.loop !1955

middle.block294:                                  ; preds = %vector.body287
  %cmp.n295 = icmp eq i64 %n.vec286, %wide.trip.count.i.i108
  br i1 %cmp.n295, label %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit112, label %scalar.ph283.preheader

scalar.ph283.preheader:                           ; preds = %vector.memcheck277, %vector.scevcheck274, %.lr.ph.i.i107, %middle.block294
  %indvars.iv.i.i109.ph = phi i64 [ 0, %vector.memcheck277 ], [ 0, %vector.scevcheck274 ], [ 0, %.lr.ph.i.i107 ], [ %n.vec286, %middle.block294 ] ; 5 uses
  %xtraiter418 = and i64 %wide.trip.count.i.i108, 1
  %lcmp.mod419.not = icmp eq i64 %xtraiter418, 0
  br i1 %lcmp.mod419.not, label %scalar.ph283.prol.loopexit, label %scalar.ph283.prol

scalar.ph283.prol:                                ; preds = %scalar.ph283.preheader
  %i.px = mul i64 %indvars.iv.i.i109.ph, %i.ov
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.px
  %i.pz = load float, ptr %i.py, align 4, !tbaa !72
  %i.qa = mul i64 %indvars.iv.i.i109.ph, %i.ph
  %i.qb = getelementptr [4 x i8], ptr %i.pj, i64 %i.qa ; 2 uses
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !72
  %i.qd = fadd float %i.pz, %i.qc
  store float %i.qd, ptr %i.qb, align 4, !tbaa !72
  %indvars.iv.next.i.i110.prol = or disjoint i64 %indvars.iv.i.i109.ph, 1
  br label %scalar.ph283.prol.loopexit

scalar.ph283.prol.loopexit:                       ; preds = %scalar.ph283.prol, %scalar.ph283.preheader
  %indvars.iv.i.i109.unr = phi i64 [ %indvars.iv.i.i109.ph, %scalar.ph283.preheader ], [ %indvars.iv.next.i.i110.prol, %scalar.ph283.prol ]
  %i.qe = add nsw i64 %wide.trip.count.i.i108, -1
  %i.qf = icmp eq i64 %indvars.iv.i.i109.ph, %i.qe
  br i1 %i.qf, label %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit112, label %scalar.ph283

scalar.ph283:                                     ; preds = %scalar.ph283.prol.loopexit, %scalar.ph283
  %indvars.iv.i.i109 = phi i64 [ %indvars.iv.next.i.i110.1, %scalar.ph283 ], [ %indvars.iv.i.i109.unr, %scalar.ph283.prol.loopexit ] ; 4 uses
  %i.qg = mul i64 %indvars.iv.i.i109, %i.ov
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.qg
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !72
  %i.qj = mul i64 %indvars.iv.i.i109, %i.ph
  %i.qk = getelementptr [4 x i8], ptr %i.pj, i64 %i.qj ; 2 uses
  %i.ql = load float, ptr %i.qk, align 4, !tbaa !72
  %i.qm = fadd float %i.qi, %i.ql
  store float %i.qm, ptr %i.qk, align 4, !tbaa !72
  %indvars.iv.next.i.i110 = add nuw nsw i64 %indvars.iv.i.i109, 1 ; 2 uses
  %i.qn = mul i64 %indvars.iv.next.i.i110, %i.ov
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %i.qn
  %i.qp = load float, ptr %i.qo, align 4, !tbaa !72
  %i.qq = mul i64 %indvars.iv.next.i.i110, %i.ph
  %i.qr = getelementptr [4 x i8], ptr %i.pj, i64 %i.qq ; 2 uses
  %i.qs = load float, ptr %i.qr, align 4, !tbaa !72
  %i.qt = fadd float %i.qp, %i.qs
  store float %i.qt, ptr %i.qr, align 4, !tbaa !72
  %indvars.iv.next.i.i110.1 = add nuw nsw i64 %indvars.iv.i.i109, 2 ; 2 uses
  %exitcond.not.i.i111.1 = icmp eq i64 %indvars.iv.next.i.i110.1, %wide.trip.count.i.i108
  br i1 %exitcond.not.i.i111.1, label %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit112, label %scalar.ph283, !llvm.loop !1956

_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit112: ; preds = %scalar.ph283.prol.loopexit, %scalar.ph283, %middle.block294, %_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit.i.i105
  %i.qu = add nuw i64 %.040188, 1                 ; 2 uses
  %exitcond215.not = icmp eq i64 %i.qu, %0
  br i1 %exitcond215.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.aj, !llvm.loop !1957

bb.ao:                                            ; preds = %.lr.ph, %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit124
  %.0187 = phi i64 [ 0, %.lr.ph ], [ %i.tf, %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit124 ] ; 5 uses
  %exitcond.not = icmp eq i64 %.0187, %i.cu
  br i1 %exitcond.not, label %bb.ap, label %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i113, !prof !173

bb.ap:                                            ; preds = %bb.ao
  call void @_ZSt9terminatev() #35
  unreachable

_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i113: ; preds = %bb.ao
  %i.qv = load ptr, ptr %i.cv, align 8, !tbaa !346
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.qv, i64 %.0187
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !83 ; 2 uses
  %.lobit.i.i.i114 = ashr i32 %i.qx, 31
  %i.qy = xor i32 %.lobit.i.i.i114, %i.qx
  %i.qz = load ptr, ptr %i.cw, align 8, !tbaa !404, !noalias !1995
  %i.ra = sext i32 %i.qy to i64
  %i.rb = getelementptr inbounds [4 x i8], ptr %i.qz, i64 %i.ra
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !83, !noalias !1995
  %i.rd = load i64, ptr %i.cx, align 8, !tbaa !59, !noalias !1996
  %i.re = sext i32 %i.rc to i64
  %i.rf = mul i64 %i.rd, %i.re
  %i.rg = load i64, ptr %i.cy, align 8, !tbaa !59, !noalias !1996 ; 4 uses
  %i.rh = load i64, ptr %i.cz, align 8, !tbaa !434, !noalias !1996 ; 3 uses
  %i.ri = icmp eq i64 %i.rh, 0
  %i.rj = select i1 %i.ri, i64 0, i64 %i.rf       ; 4 uses
  %.not8.i.i.i.i.i115 = icmp ugt i64 %i.rj, %i.rh
  br i1 %.not8.i.i.i.i.i115, label %bb.aq, label %bb.ar, !prof !173

bb.aq:                                            ; preds = %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i113
  call void @_ZSt9terminatev() #35, !noalias !1996
  unreachable

bb.ar:                                            ; preds = %_ZNK7xgboost6common4SpanIKiLm18446744073709551615EEixEm.exit.i.i113
  %i.rk = load ptr, ptr %.in.i.i.i.i.i116, align 8, !tbaa !435, !noalias !1996 ; 3 uses
  %i.rl = icmp ne ptr %i.rk, null
  %i.rm = icmp eq i64 %i.rh, %i.rj
  %i.rn = or i1 %i.rm, %i.rl
  br i1 %i.rn, label %_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit.i.i117, label %bb.as, !prof !70

bb.as:                                            ; preds = %bb.ar
  call void @_ZSt9terminatev() #35, !noalias !1996
  unreachable

_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit.i.i117: ; preds = %bb.ar
  %i.ro = getelementptr [4 x i8], ptr %i.rk, i64 %i.rj ; 5 uses
  %i.rp = load i32, ptr %.sroa.3171.0.copyload, align 4, !tbaa !83 ; 3 uses
  %.not.i.i118 = icmp eq i32 %i.rp, 0
  br i1 %.not.i.i118, label %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit124, label %.lr.ph.i.i119

.lr.ph.i.i119:                                    ; preds = %_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit.i.i117
  %i.rq = load i64, ptr %.sroa.4172.0.copyload, align 8, !tbaa !59 ; 2 uses
  %i.rr = mul i64 %i.rq, %.0187
  %i.rs = load i64, ptr %i.da, align 8, !tbaa !59 ; 4 uses
  %i.rt = load ptr, ptr %i.db, align 8, !tbaa !191 ; 2 uses
  %i.ru = getelementptr [4 x i8], ptr %i.rt, i64 %i.rr ; 5 uses
  %wide.trip.count.i.i120 = zext i32 %i.rp to i64 ; 7 uses
  %min.iters.check = icmp ult i32 %i.rp, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i.i119
  %ident.check = icmp ne i64 %i.rs, 1
  %ident.check269 = icmp ne i64 %i.rg, 1
  %i.rv = or i1 %ident.check, %ident.check269
  br i1 %i.rv, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %13 = shl i64 %.0187, 2
  %i.rw = mul i64 %i.rq, %13
  %i.rx = shl nuw nsw i64 %wide.trip.count.i.i120, 2
  %i.ry = getelementptr i8, ptr %i.rt, i64 %i.rw
  %scevgep = getelementptr i8, ptr %i.ry, i64 %i.rx
  %i.rz = add i64 %i.rj, %wide.trip.count.i.i120
  %i.sa = shl i64 %i.rz, 2
  %scevgep270 = getelementptr i8, ptr %i.rk, i64 %i.sa
  %bound0 = icmp ult ptr %i.ru, %scevgep270
  %bound1 = icmp ult ptr %i.ro, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i120, 4294967288 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.ro, i64 %index ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 16
  %wide.load = load <4 x float>, ptr %i.sb, align 4, !tbaa !72, !alias.scope !1997
  %wide.load271 = load <4 x float>, ptr %i.sc, align 4, !tbaa !72, !alias.scope !1997
  %i.sd = getelementptr [4 x i8], ptr %i.ru, i64 %index ; 3 uses
  %i.se = getelementptr i8, ptr %i.sd, i64 16     ; 2 uses
  %wide.load272 = load <4 x float>, ptr %i.sd, align 4, !tbaa !72, !alias.scope !1998, !noalias !1997
  %wide.load273 = load <4 x float>, ptr %i.se, align 4, !tbaa !72, !alias.scope !1998, !noalias !1997
  %i.sf = fadd <4 x float> %wide.load, %wide.load272
  %i.sg = fadd <4 x float> %wide.load271, %wide.load273
  store <4 x float> %i.sf, ptr %i.sd, align 4, !tbaa !72, !alias.scope !1998, !noalias !1997
  store <4 x float> %i.sg, ptr %i.se, align 4, !tbaa !72, !alias.scope !1998, !noalias !1997
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.sh = icmp eq i64 %index.next, %n.vec
  br i1 %i.sh, label %middle.block, label %vector.body, !llvm.loop !1965

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i120
  br i1 %cmp.n, label %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit124, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.i.i119, %middle.block
  %indvars.iv.i.i121.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i119 ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count.i.i120, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.si = mul i64 %indvars.iv.i.i121.ph, %i.rg
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.ro, i64 %i.si
  %i.sk = load float, ptr %i.sj, align 4, !tbaa !72
  %i.sl = mul i64 %indvars.iv.i.i121.ph, %i.rs
  %i.sm = getelementptr [4 x i8], ptr %i.ru, i64 %i.sl ; 2 uses
  %i.sn = load float, ptr %i.sm, align 4, !tbaa !72
  %i.so = fadd float %i.sk, %i.sn
  store float %i.so, ptr %i.sm, align 4, !tbaa !72
  %indvars.iv.next.i.i122.prol = or disjoint i64 %indvars.iv.i.i121.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i121.unr = phi i64 [ %indvars.iv.i.i121.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i122.prol, %scalar.ph.prol ]
  %i.sp = add nsw i64 %wide.trip.count.i.i120, -1
  %i.sq = icmp eq i64 %indvars.iv.i.i121.ph, %i.sp
  br i1 %i.sq, label %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit124, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i121 = phi i64 [ %indvars.iv.next.i.i122.1, %scalar.ph ], [ %indvars.iv.i.i121.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.sr = mul i64 %indvars.iv.i.i121, %i.rg
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.ro, i64 %i.sr
  %i.st = load float, ptr %i.ss, align 4, !tbaa !72
  %i.su = mul i64 %indvars.iv.i.i121, %i.rs
  %i.sv = getelementptr [4 x i8], ptr %i.ru, i64 %i.su ; 2 uses
  %i.sw = load float, ptr %i.sv, align 4, !tbaa !72
  %i.sx = fadd float %i.st, %i.sw
  store float %i.sx, ptr %i.sv, align 4, !tbaa !72
  %indvars.iv.next.i.i122 = add nuw nsw i64 %indvars.iv.i.i121, 1 ; 2 uses
  %i.sy = mul i64 %indvars.iv.next.i.i122, %i.rg
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.ro, i64 %i.sy
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !72
  %i.tb = mul i64 %indvars.iv.next.i.i122, %i.rs
  %i.tc = getelementptr [4 x i8], ptr %i.ru, i64 %i.tb ; 2 uses
  %i.td = load float, ptr %i.tc, align 4, !tbaa !72
  %i.te = fadd float %i.ta, %i.td
  store float %i.te, ptr %i.tc, align 4, !tbaa !72
  %indvars.iv.next.i.i122.1 = add nuw nsw i64 %indvars.iv.i.i121, 2 ; 2 uses
  %exitcond.not.i.i123.1 = icmp eq i64 %indvars.iv.next.i.i122.1, %wide.trip.count.i.i120
  br i1 %exitcond.not.i.i123.1, label %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit124, label %scalar.ph, !llvm.loop !1966

_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit124: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK7xgboost4tree19MultiTargetTreeView9LeafValueEi.exit.i.i117
  %i.tf = add nuw i64 %.0187, 1                   ; 2 uses
  %exitcond213.not = icmp eq i64 %i.tf, %0
  br i1 %exitcond213.not, label %_ZN4dmlc12OMPExceptionD2Ev.exit, label %bb.ao, !llvm.loop !1967

_ZN4dmlc12OMPExceptionD2Ev.exit:                  ; preds = %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit124, %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit112, %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit100, %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit88, %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit76, %_ZN4dmlc12OMPException3RunIZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS2_6common4SpanIKNS2_16HostDeviceVectorIiEELm18446744073709551615EEENS6_IPKNS2_7RegTreeELm18446744073709551615EEENS2_6linalg10TensorViewIfLi2EEEEUlmE0_JmEEEvT_DpT0_.exit, %_ZZNK7xgboost9predictor12CPUPredictor18PredictFromLeafIdsENS_6common4SpanIKNS_16HostDeviceVectorIiEELm18446744073709551615EEENS3_IPKNS_7RegTreeELm18446744073709551615EEENS_6linalg10TensorViewIfLi2EEEENKUlmE0_clEm.exit, %.preheader185, %.preheader183, %.preheader181, %.preheader179, %.preheader177, %.preheader175, %.preheader, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  ret void

bb.at:                                            ; preds = %bb.j
  %i.tg = landingpad { ptr, i32 }
          catch ptr null
  %i.th = extractvalue { ptr, i32 } %i.tg, 0
  call void @__clang_call_terminate(ptr %i.th) #35
  unreachable
}

declare void @_ZN7xgboost16interpretability8cpu_impl23ApproxFeatureImportanceEPKNS_7ContextEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEE(ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(192), i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN7xgboost16interpretability8cpu_impl10ShapValuesEPKNS_7ContextEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEij(ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(192), i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN7xgboost16interpretability8cpu_impl21ShapInteractionValuesEPKNS_7ContextEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEb(ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(192), i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_cpu_predictor.cc() #29 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::function", align 8     ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = tail call noundef ptr @_ZN4dmlc8RegistryIN7xgboost12PredictorRegEE3GetEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.c, ptr noundef nonnull align 1 dereferenceable(13) @.str, i64 13, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 13, ptr %i.d, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 29
  store i8 0, ptr %i.e, align 1, !tbaa !50
  %i.f = invoke noundef nonnull align 8 dereferenceable(152) ptr @_ZN4dmlc8RegistryIN7xgboost12PredictorRegEE12__REGISTER__ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc.i10.i unwind label %bb.d ; 5 uses

.noexc.i10.i:                                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 27, ptr %i.a, align 8, !tbaa !59
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc11.i unwind label %bb.e ; 2 uses

.noexc11.i:                                       ; preds = %.noexc.i10.i
  store ptr %i.h, ptr %2, align 8, !tbaa !44
  %i.i = load i64, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.h, ptr noundef nonnull align 1 dereferenceable(27) @.str.1, i64 27, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !43
  %i.k = load ptr, ptr %2, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt8functionIFPN7xgboost9PredictorEPKNS0_7ContextEEEC2ERKS7_.exit.i.i.i unwind label %_ZNSt14_Function_baseD2Ev.exit18.i

_ZNSt8functionIFPN7xgboost9PredictorEPKNS0_7ContextEEEC2ERKS7_.exit.i.i.i: ; preds = %.noexc11.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 16, i1 false), !tbaa.struct !1999
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.r = load <2 x ptr>, ptr %i.p, align 8, !tbaa !65
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !65   ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFPN7xgboost9PredictorEPKNS0_7ContextEENS0_9predictor3$_0EE10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation", ptr %i.p, align 8, !tbaa !65
  store <2 x ptr> %i.r, ptr %i.o, align 8, !tbaa !65
  store ptr @"_ZNSt17_Function_handlerIFPN7xgboost9PredictorEPKNS0_7ContextEENS0_9predictor3$_0EE9_M_invokeERKSt9_Any_dataOS5_", ptr %i.q, align 8, !tbaa !65
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt8functionIFPN7xgboost9PredictorEPKNS0_7ContextEEEC2ERKS7_.exit.i.i.i
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #35
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.b, %_ZNSt8functionIFPN7xgboost9PredictorEPKNS0_7ContextEEEC2ERKS7_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  %i.w = load ptr, ptr %2, align 8, !tbaa !44     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.g
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.y = load i64, ptr %i.g, align 8, !tbaa !50
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.aa = load ptr, ptr %1, align 8, !tbaa !44    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.c
  br i1 %i.ab, label %__cxx_global_var_init.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !50
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #34
  br label %__cxx_global_var_init.exit
end_hunk_1
