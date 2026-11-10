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
  %i.gk = getelementptr i8, ptr %i.z, i64 %i.gj
  %i.gl = add i64 %i.fv, %i.fs
  %i.gm = shl i64 %i.gl, 2
  %i.gn = getelementptr i8, ptr %i.fw, i64 %i.gm
  %bound0 = icmp ult ptr %i.gg, %i.gn
  %bound1 = icmp ult ptr %i.ga, %i.gk
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.split.preheader103, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fs, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %index ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %wide.load = load <4 x float>, ptr %i.go, align 4, !tbaa !72, !alias.scope !1226
  %wide.load100 = load <4 x float>, ptr %i.gp, align 4, !tbaa !72, !alias.scope !1226
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %index ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16 ; 2 uses
  %wide.load101 = load <4 x float>, ptr %i.gq, align 4, !tbaa !72, !alias.scope !1227, !noalias !1226
  %wide.load102 = load <4 x float>, ptr %i.gr, align 4, !tbaa !72, !alias.scope !1227, !noalias !1226
  %i.gs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> %wide.load101)
  %i.gt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load100, <4 x float> %broadcast.splat, <4 x float> %wide.load102)
  store <4 x float> %i.gs, ptr %i.gq, align 4, !tbaa !72, !alias.scope !1227, !noalias !1226
  store <4 x float> %i.gt, ptr %i.gr, align 4, !tbaa !72, !alias.scope !1227, !noalias !1226
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gu = icmp eq i64 %index.next, %n.vec
  br i1 %i.gu, label %middle.block, label %vector.body, !llvm.loop !1220

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
  %i.gv = mul i64 %storemerge59.ph, %i.q
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.gv
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !72
  %i.gy = mul i64 %storemerge59.ph, %i.v
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.gy ; 2 uses
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !72
  %i.hb = tail call float @llvm.fmuladd.f32(float %i.gx, float %8, float %i.ha)
  store float %i.hb, ptr %i.gz, align 4, !tbaa !72
  %i.hc = or disjoint i64 %storemerge59.ph, 1
  br label %.lr.ph.split.prol.loopexit

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol, %.lr.ph.split.preheader103
  %storemerge59.unr = phi i64 [ %storemerge59.ph, %.lr.ph.split.preheader103 ], [ %i.hc, %.lr.ph.split.prol ]
  %i.hd = icmp eq i64 %i.fs, %.neg
  br i1 %i.hd, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split, %middle.block, %_ZNK7xgboost6linalg10TensorViewIfLi2EE5SliceIJmNS0_6detail6AllTagEEEEDaDpOT_.exit
  %i.he = add nuw i64 %.060, 1                    ; 2 uses
  %exitcond69.not = icmp eq i64 %i.he, %4
  br i1 %exitcond69.not, label %._crit_edge63, label %bb.b, !llvm.loop !1221

.lr.ph.split:                                     ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split
  %storemerge59 = phi i64 [ %i.hu, %.lr.ph.split ], [ %storemerge59.unr, %.lr.ph.split.prol.loopexit ] ; 4 uses
  %i.hf = mul i64 %storemerge59, %i.q
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.hf
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !72
  %i.hi = mul i64 %storemerge59, %i.v
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.hi ; 2 uses
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !72
  %i.hl = tail call float @llvm.fmuladd.f32(float %i.hh, float %8, float %i.hk)
  store float %i.hl, ptr %i.hj, align 4, !tbaa !72
  %i.hm = add nuw i64 %storemerge59, 1            ; 2 uses
  %i.hn = mul i64 %i.hm, %i.q
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.hn
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !72
  %i.hq = mul i64 %i.hm, %i.v
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.hq ; 2 uses
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !72
  %i.ht = tail call float @llvm.fmuladd.f32(float %i.hp, float %8, float %i.hs)
  store float %i.ht, ptr %i.hr, align 4, !tbaa !72
  %i.hu = add nuw i64 %storemerge59, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.hu, %i.fs
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
  %.044 = phi i64 [ 0, %.lr.ph46 ], [ %i.dg, %._crit_edge ] ; 4 uses
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
  %i.cn = getelementptr i8, ptr %i.aa, i64 %i.cm
  %10 = add i64 %i.cc, %i.o
  %i.co = shl i64 %10, 2
  %i.cp = getelementptr i8, ptr %i.s, i64 %i.co
  %bound0 = icmp ult ptr %i.cl, %i.cp
  %bound1 = icmp ult ptr %i.cf, %i.cn
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.split.preheader71, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %index ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %wide.load = load <4 x float>, ptr %i.cq, align 4, !tbaa !72, !alias.scope !1243
  %wide.load68 = load <4 x float>, ptr %i.cr, align 4, !tbaa !72, !alias.scope !1243
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %index ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %wide.load69 = load <4 x float>, ptr %i.cs, align 4, !tbaa !72, !alias.scope !1244, !noalias !1243
  %wide.load70 = load <4 x float>, ptr %i.ct, align 4, !tbaa !72, !alias.scope !1244, !noalias !1243
  %i.cu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat, <4 x float> %wide.load69)
  %i.cv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load68, <4 x float> %broadcast.splat, <4 x float> %wide.load70)
  store <4 x float> %i.cu, ptr %i.cs, align 4, !tbaa !72, !alias.scope !1244, !noalias !1243
  store <4 x float> %i.cv, ptr %i.ct, align 4, !tbaa !72, !alias.scope !1244, !noalias !1243
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !1237

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.preheader71

.lr.ph.split.preheader71:                         ; preds = %.lr.ph.split.preheader, %vector.memcheck, %middle.block
  %storemerge43.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %middle.block ], [ 0, %.lr.ph.split.preheader ] ; 5 uses
  %.neg = or disjoint i64 %storemerge43.ph, 1
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader71
  %i.cx = mul i64 %storemerge43.ph, %i.m
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.cx
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !72
  %i.da = mul i64 %storemerge43.ph, %i.w
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.da ; 2 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !72
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.cz, float %8, float %i.dc)
  store float %i.dd, ptr %i.db, align 4, !tbaa !72
  %i.de = or disjoint i64 %storemerge43.ph, 1
  br label %.lr.ph.split.prol.loopexit

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol, %.lr.ph.split.preheader71
  %storemerge43.unr = phi i64 [ %storemerge43.ph, %.lr.ph.split.preheader71 ], [ %i.de, %.lr.ph.split.prol ]
  %i.df = icmp eq i64 %i.o, %.neg
  br i1 %i.df, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split, %middle.block, %_ZNK7xgboost6linalg10TensorViewIfLi2EE5SliceIJmNS0_6detail6AllTagEEEEDaDpOT_.exit
  %i.dg = add nuw i64 %.044, 1                    ; 2 uses
  %exitcond51.not = icmp eq i64 %i.dg, %4
  br i1 %exitcond51.not, label %._crit_edge47, label %bb.b, !llvm.loop !1238

.lr.ph.split:                                     ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split
  %storemerge43 = phi i64 [ %i.dw, %.lr.ph.split ], [ %storemerge43.unr, %.lr.ph.split.prol.loopexit ] ; 4 uses
  %i.dh = mul i64 %storemerge43, %i.m
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.dh
  %i.dj = load float, ptr %i.di, align 4, !tbaa !72
  %i.dk = mul i64 %storemerge43, %i.w
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.dk ; 2 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !72
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.dj, float %8, float %i.dm)
  store float %i.dn, ptr %i.dl, align 4, !tbaa !72
  %i.do = add nuw i64 %storemerge43, 1            ; 2 uses
  %i.dp = mul i64 %i.do, %i.m
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.dp
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !72
  %i.ds = mul i64 %i.do, %i.w
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.ds ; 2 uses
  %i.du = load float, ptr %i.dt, align 4, !tbaa !72
  %i.dv = tail call float @llvm.fmuladd.f32(float %i.dr, float %8, float %i.du)
  store float %i.dv, ptr %i.dt, align 4, !tbaa !72
  %i.dw = add nuw i64 %storemerge43, 2            ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dw, %i.o
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
