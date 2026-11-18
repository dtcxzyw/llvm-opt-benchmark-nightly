Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/shap?download=true
inline.NumInlined: 4414
inline.NumDeleted: 1676
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 49
begin_hunk_0_@"_ZZZN7xgboost16interpretability8cpu_impl23ApproxFeatureImportanceEPKNS_7ContextEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEENK3$_1clIRNS_9predictor14SparsePageViewINS_11CatAccessorEEEEEDaOT_ENKUlSQ_E_clImEEDaSQ_":bb.a

_ZN7xgboost7RegTree4FVec4DropEv.exit:             ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block158, %._crit_edge65
  store i8 1, ptr %i.cd, align 8, !tbaa !363
  ret void

bb.g:                                             ; preds = %.lr.ph64, %bb.s
  %i.df = phi ptr [ %.pre75, %.lr.ph64 ], [ %.sink102, %bb.s ] ; 2 uses
  %i.dg = phi i64 [ %.pre76, %.lr.ph64 ], [ %i.jt, %bb.s ]
  %indvars.iv71 = phi i64 [ 0, %.lr.ph64 ], [ %indvars.iv.next72, %bb.s ] ; 5 uses
  %i.dh = phi i32 [ %i.cg, %.lr.ph64 ], [ %i.jz, %bb.s ]
  %i.di = load ptr, ptr %i.ch, align 8, !tbaa !1275, !nonnull !198, !align !199
  %i.dj = zext i32 %i.dh to i64
  %i.dk = mul i64 %i.as, %i.dj
  %i.dl = add i64 %i.dk, %indvars.iv71
  %i.dm = mul i64 %i.dg, %i.dl
  %i.dn = load ptr, ptr %i.di, align 8, !tbaa !94
  %i.do = getelementptr [4 x i8], ptr %i.dn, i64 %i.dm ; 16 uses
  %i.dp = load ptr, ptr %i.cj, align 8, !tbaa !1276, !nonnull !198, !align !369
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !18 ; 2 uses
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %.lr.ph61, label %._crit_edge62

._crit_edge62:                                    ; preds = %bb.j, %bb.g
  %i.ds = phi ptr [ %i.df, %bb.g ], [ %i.ib, %bb.j ]
  %i.dt = load ptr, ptr %i.cp, align 8, !tbaa !1277, !nonnull !198, !align !199 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 56
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !240
  %.not = icmp eq i64 %i.dv, 0
  br i1 %.not, label %bb.r, label %bb.k

.lr.ph61:                                         ; preds = %bb.g, %bb.j
  %i.dw = phi ptr [ %i.ib, %bb.j ], [ %i.df, %bb.g ]
  %i.dx = phi i32 [ %i.ic, %bb.j ], [ %i.dq, %bb.g ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %bb.g ] ; 7 uses
  %i.dy = load ptr, ptr %i.ck, align 8, !tbaa !1278, !nonnull !198, !align !199 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !333
  %i.ea = icmp ugt i64 %i.dz, %indvars.iv
  br i1 %i.ea, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit, label %bb.h, !prof !161

bb.h:                                             ; preds = %.lr.ph61
  call void @_ZSt9terminatev() #31
  unreachable

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit: ; preds = %.lr.ph61
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !334
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !18
  %i.ef = zext i32 %i.ee to i64
  %.not39 = icmp eq i64 %indvars.iv71, %i.ef
  br i1 %.not39, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit
  %i.eg = load ptr, ptr %i.an, align 8, !tbaa !95 ; 3 uses
  %i.eh = load ptr, ptr %i.cl, align 8, !tbaa !95 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.eg, %i.eh
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEiEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.i
  %i.ei = ptrtoaddr ptr %i.eh to i64
  %i.ej = ptrtoaddr ptr %i.eg to i64
  %i.ek = add i64 %i.ei, -4
  %i.el = sub i64 %i.ek, %i.ej
  %i.em = and i64 %i.el, -4
  %i.en = add i64 %i.em, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.eg, i8 0, i64 %i.en, i1 false), !tbaa !97
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEiEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEiEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i.preheader, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.eo = load ptr, ptr %i.cm, align 8, !tbaa !1270, !nonnull !198, !align !199
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !35
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !220
  call void @_ZNK7xgboost7RegTree10HostScViewEv(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::tree::ScalarTreeView") align 8 %2, ptr noundef nonnull align 8 dereferenceable(96) %i.es)
  %i.et = load ptr, ptr %i.cn, align 8, !tbaa !1279, !nonnull !198, !align !199
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !107
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %i.eu, i64 %indvars.iv
  call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_128CalculateApproxContributionsERKNS_4tree14ScalarTreeViewERKNS_7RegTree4FVecEPSt6vectorIfSaIfEESD_(ptr noundef nonnull align 8 dereferenceable(68) %2, ptr noundef nonnull align 8 dereferenceable(25) %i.c, ptr noundef %i.ev, ptr noundef %i.an)
  %i.ew = load ptr, ptr %i.ci, align 8, !tbaa !1274, !nonnull !198, !align !199 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !29 ; 15 uses
  %.not67 = icmp eq i64 %i.ex, 0
  br i1 %.not67, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEiEvT_S7_RKT0_.exit
  %i.ey = load ptr, ptr %i.an, align 8, !tbaa !94 ; 14 uses
  %i.ez = load ptr, ptr %i.co, align 8, !tbaa !1280, !nonnull !198, !align !199
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !174 ; 2 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %min.iters.check107 = icmp ult i64 %i.ex, 8
  br i1 %min.iters.check107, label %.lr.ph.split.us.preheader162, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.preheader
  %i.fc = shl i64 %i.ex, 2                        ; 2 uses
  %i.fd = getelementptr i8, ptr %i.do, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.ey, i64 %i.fc
  %bound0 = icmp ult ptr %i.do, %i.fe
  %bound1 = icmp ult ptr %i.ey, %i.fd
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.split.us.preheader162, label %vector.ph108

vector.ph108:                                     ; preds = %vector.memcheck
  %n.vec109 = and i64 %i.ex, -8                   ; 3 uses
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph108
  %index111 = phi i64 [ 0, %vector.ph108 ], [ %index.next115, %vector.body110 ] ; 3 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %index111 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %wide.load = load <4 x float>, ptr %i.ff, align 4, !tbaa !97, !alias.scope !1281
  %wide.load112 = load <4 x float>, ptr %i.fg, align 4, !tbaa !97, !alias.scope !1281
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %index111 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  %wide.load113 = load <4 x float>, ptr %i.fh, align 4, !tbaa !97, !alias.scope !1282, !noalias !1281
  %wide.load114 = load <4 x float>, ptr %i.fi, align 4, !tbaa !97, !alias.scope !1282, !noalias !1281
  %i.fj = fadd <4 x float> %wide.load, %wide.load113
  %i.fk = fadd <4 x float> %wide.load112, %wide.load114
  store <4 x float> %i.fj, ptr %i.fh, align 4, !tbaa !97, !alias.scope !1282, !noalias !1281
  store <4 x float> %i.fk, ptr %i.fi, align 4, !tbaa !97, !alias.scope !1282, !noalias !1281
  %index.next115 = add nuw i64 %index111, 8       ; 2 uses
  %i.fl = icmp eq i64 %index.next115, %n.vec109
  br i1 %i.fl, label %middle.block116, label %vector.body110, !llvm.loop !1255

middle.block116:                                  ; preds = %vector.body110
  %cmp.n117 = icmp eq i64 %i.ex, %n.vec109
  br i1 %cmp.n117, label %._crit_edge, label %.lr.ph.split.us.preheader162

.lr.ph.split.us.preheader162:                     ; preds = %vector.memcheck, %.lr.ph.split.us.preheader, %middle.block116
  %.03358.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.preheader ], [ %n.vec109, %middle.block116 ] ; 3 uses
  %xtraiter165 = and i64 %i.ex, 3                 ; 2 uses
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br i1 %lcmp.mod166.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader162, %.lr.ph.split.us.prol
  %.03358.us.prol = phi i64 [ %i.fr, %.lr.ph.split.us.prol ], [ %.03358.us.ph, %.lr.ph.split.us.preheader162 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader162 ]
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %.03358.us.prol
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !97
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %.03358.us.prol ; 2 uses
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !97
  %i.fq = fadd float %i.fn, %i.fp
  store float %i.fq, ptr %i.fo, align 4, !tbaa !97
  %i.fr = add nuw i64 %.03358.us.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter165
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !1256

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader162
  %.03358.us.unr = phi i64 [ %.03358.us.ph, %.lr.ph.split.us.preheader162 ], [ %i.fr, %.lr.ph.split.us.prol ]
  %i.fs = sub i64 %.03358.us.ph, %i.ex
  %i.ft = icmp ugt i64 %i.fs, -4
  br i1 %i.ft, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %.03358.us = phi i64 [ %i.gr, %.lr.ph.split.us ], [ %.03358.us.unr, %.lr.ph.split.us.prol.loopexit ] ; 6 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %.03358.us
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !97
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %.03358.us ; 2 uses
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !97
  %i.fy = fadd float %i.fv, %i.fx
  store float %i.fy, ptr %i.fw, align 4, !tbaa !97
  %i.fz = add nuw i64 %.03358.us, 1               ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.fz
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !97
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.fz ; 2 uses
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !97
  %i.ge = fadd float %i.gb, %i.gd
  store float %i.ge, ptr %i.gc, align 4, !tbaa !97
  %i.gf = add nuw i64 %.03358.us, 2               ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.gf
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !97
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.gf ; 2 uses
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !97
  %i.gk = fadd float %i.gh, %i.gj
  store float %i.gk, ptr %i.gi, align 4, !tbaa !97
  %i.gl = add nuw i64 %.03358.us, 3               ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.gl
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !97
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.gl ; 2 uses
  %i.gp = load float, ptr %i.go, align 4, !tbaa !97
  %i.gq = fadd float %i.gn, %i.gp
  store float %i.gq, ptr %i.go, align 4, !tbaa !97
  %i.gr = add nuw i64 %.03358.us, 4               ; 2 uses
  %exitcond69.not.3 = icmp eq i64 %i.gr, %i.ex
  br i1 %exitcond69.not.3, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !1257

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.gs = load ptr, ptr %i.fa, align 8, !tbaa !94 ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %indvars.iv ; 5 uses
  %min.iters.check130 = icmp ult i64 %i.ex, 8
  br i1 %min.iters.check130, label %scalar.ph129.preheader, label %vector.memcheck131

vector.memcheck131:                               ; preds = %.lr.ph.split
  %i.gu = shl i64 %i.ex, 2                        ; 2 uses
  %i.gv = getelementptr i8, ptr %i.do, i64 %i.gu  ; 2 uses
  %i.gw = getelementptr i8, ptr %i.ey, i64 %i.gu
  %5 = shl nuw nsw i64 %indvars.iv, 2
  %6 = getelementptr i8, ptr %i.gs, i64 %5
  %7 = getelementptr i8, ptr %6, i64 4
  %bound0132 = icmp ult ptr %i.do, %i.gw
  %bound1133 = icmp ult ptr %i.ey, %i.gv
  %found.conflict134 = and i1 %bound0132, %bound1133
  %bound0135 = icmp ult ptr %i.do, %7
  %bound1136 = icmp ult ptr %i.gt, %i.gv
  %found.conflict137 = and i1 %bound0135, %bound1136
  %conflict.rdx = or i1 %found.conflict134, %found.conflict137
  br i1 %conflict.rdx, label %scalar.ph129.preheader, label %vector.ph138

vector.ph138:                                     ; preds = %vector.memcheck131
  %n.vec139 = and i64 %i.ex, -8                   ; 3 uses
  %i.gx = load float, ptr %i.gt, align 4, !tbaa !97, !alias.scope !1283
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.gx, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body140

vector.body140:                                   ; preds = %vector.body140, %vector.ph138
  %index141 = phi i64 [ 0, %vector.ph138 ], [ %index.next146, %vector.body140 ] ; 3 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %index141 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %wide.load142 = load <4 x float>, ptr %i.gy, align 4, !tbaa !97, !alias.scope !1284
  %wide.load143 = load <4 x float>, ptr %i.gz, align 4, !tbaa !97, !alias.scope !1284
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %index141 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16 ; 2 uses
  %wide.load144 = load <4 x float>, ptr %i.ha, align 4, !tbaa !97, !alias.scope !1285, !noalias !1286
  %wide.load145 = load <4 x float>, ptr %i.hb, align 4, !tbaa !97, !alias.scope !1285, !noalias !1286
  %i.hc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load142, <4 x float> %broadcast.splat, <4 x float> %wide.load144)
  %i.hd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load143, <4 x float> %broadcast.splat, <4 x float> %wide.load145)
  store <4 x float> %i.hc, ptr %i.ha, align 4, !tbaa !97, !alias.scope !1285, !noalias !1286
  store <4 x float> %i.hd, ptr %i.hb, align 4, !tbaa !97, !alias.scope !1285, !noalias !1286
  %index.next146 = add nuw i64 %index141, 8       ; 2 uses
  %i.he = icmp eq i64 %index.next146, %n.vec139
  br i1 %i.he, label %middle.block147, label %vector.body140, !llvm.loop !1262

middle.block147:                                  ; preds = %vector.body140
  %cmp.n148 = icmp eq i64 %i.ex, %n.vec139
  br i1 %cmp.n148, label %._crit_edge, label %scalar.ph129.preheader

scalar.ph129.preheader:                           ; preds = %vector.memcheck131, %.lr.ph.split, %middle.block147
  %.03358.ph = phi i64 [ 0, %vector.memcheck131 ], [ 0, %.lr.ph.split ], [ %n.vec139, %middle.block147 ] ; 5 uses
  %.neg = or disjoint i64 %.03358.ph, 1
  %xtraiter = and i64 %i.ex, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph129.prol.loopexit, label %scalar.ph129.prol

scalar.ph129.prol:                                ; preds = %scalar.ph129.preheader
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %.03358.ph
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !97
  %i.hh = load float, ptr %i.gt, align 4, !tbaa !97
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %.03358.ph ; 2 uses
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !97
  %i.hk = call float @llvm.fmuladd.f32(float %i.hg, float %i.hh, float %i.hj)
  store float %i.hk, ptr %i.hi, align 4, !tbaa !97
  %i.hl = or disjoint i64 %.03358.ph, 1
  br label %scalar.ph129.prol.loopexit

scalar.ph129.prol.loopexit:                       ; preds = %scalar.ph129.prol, %scalar.ph129.preheader
  %.03358.unr = phi i64 [ %.03358.ph, %scalar.ph129.preheader ], [ %i.hl, %scalar.ph129.prol ]
  %i.hm = icmp eq i64 %i.ex, %.neg
  br i1 %i.hm, label %._crit_edge, label %scalar.ph129

._crit_edge:                                      ; preds = %scalar.ph129.prol.loopexit, %scalar.ph129, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block147, %middle.block116, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEiEvT_S7_RKT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %.pre77 = load ptr, ptr %i.cj, align 8, !tbaa !1276
  %.pre78 = load i32, ptr %.pre77, align 4, !tbaa !18
  br label %bb.j

scalar.ph129:                                     ; preds = %scalar.ph129.prol.loopexit, %scalar.ph129
  %.03358 = phi i64 [ %i.ia, %scalar.ph129 ], [ %.03358.unr, %scalar.ph129.prol.loopexit ] ; 4 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %.03358
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !97
  %i.hp = load float, ptr %i.gt, align 4, !tbaa !97
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %.03358 ; 2 uses
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !97
  %i.hs = call float @llvm.fmuladd.f32(float %i.ho, float %i.hp, float %i.hr)
  store float %i.hs, ptr %i.hq, align 4, !tbaa !97
  %i.ht = add nuw i64 %.03358, 1                  ; 2 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.ht
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !97
  %i.hw = load float, ptr %i.gt, align 4, !tbaa !97
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ht ; 2 uses
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !97
  %i.hz = call float @llvm.fmuladd.f32(float %i.hv, float %i.hw, float %i.hy)
  store float %i.hz, ptr %i.hx, align 4, !tbaa !97
  %i.ia = add nuw i64 %.03358, 2                  ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ia, %i.ex
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph129, !llvm.loop !1263

bb.j:                                             ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit, %._crit_edge
  %i.ib = phi ptr [ %i.dw, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit ], [ %i.ew, %._crit_edge ] ; 2 uses
  %i.ic = phi i32 [ %i.dx, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit ], [ %.pre78, %._crit_edge ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.id = sext i32 %i.ic to i64
  %i.ie = icmp slt i64 %indvars.iv.next, %i.id
  br i1 %i.ie, label %.lr.ph61, label %._crit_edge62, !llvm.loop !1264

bb.k:                                             ; preds = %._crit_edge62
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.if = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !29 ; 2 uses
  store i64 %i.ig, ptr %i.a, align 8, !tbaa !29
  %i.ih = load ptr, ptr %i.ce, align 8, !tbaa !1273, !nonnull !198, !align !369 ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !18, !noalias !1287
  %i.ij = zext i32 %i.ii to i64
  %i.ik = icmp eq i64 %i.ig, %i.ij
  br i1 %i.ik, label %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.k
  call void @_ZN4dmlc14LogCheckFormatImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.ih)
  %.pr = load ptr, ptr %3, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not57 = icmp eq ptr %.pr, null
  br i1 %.not57, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.il = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.l
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.il, ptr noundef nonnull @.str, i32 noundef 798)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.m

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.im = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.n ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.in = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.im, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.io = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.im, ptr noundef nonnull @.str.70, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ip = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !26
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !27
  %i.it = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.im, ptr noundef %i.iq, i64 noundef %i.is)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.n

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45
  %i.iu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.it, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.p unwind label %bb.m

bb.m:                                             ; preds = %.noexc, %bb.l, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit45, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.iw = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.iv, %bb.m ], [ %i.iw, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %.pn

bb.p:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit48
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %.pr55 = load ptr, ptr %3, align 8, !tbaa !21   ; 4 uses
  %.not.i = icmp eq ptr %.pr55, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ix = load ptr, ptr %.pr55, align 8, !tbaa !26 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.pr55, i64 16 ; 2 uses
  %i.iz = icmp eq ptr %i.ix, %i.iy
  br i1 %i.iz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.q
  %i.ja = load i64, ptr %i.iy, align 8, !tbaa !28
  %i.jb = add i64 %i.ja, 1
  call void @_ZdlPvm(ptr noundef %i.ix, i64 noundef %i.jb) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr55, i64 noundef 32) #30
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.p, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.jc = load ptr, ptr %i.cp, align 8, !tbaa !1277, !nonnull !198, !align !199 ; 3 uses
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !29
  %i.je = mul i64 %i.jd, %i.as
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !29
end_hunk_0
begin_hunk_1_@"_ZZZN7xgboost16interpretability8cpu_impl23ApproxFeatureImportanceEPKNS_7ContextEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEENK3$_1clIRNS_9predictor20GHistIndexMatrixViewINS_11CatAccessorEEEEEDaOT_ENKUlSQ_E_clImEEDaSQ_":bb.a

_ZN7xgboost7RegTree4FVec4DropEv.exit:             ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block154, %._crit_edge65
  store i8 1, ptr %i.bb, align 8, !tbaa !363
  ret void

bb.e:                                             ; preds = %.lr.ph64, %bb.q
  %i.cd = phi ptr [ %.pre, %.lr.ph64 ], [ %.sink98, %bb.q ] ; 2 uses
  %i.ce = phi i64 [ %.pre74, %.lr.ph64 ], [ %i.ir, %bb.q ]
  %indvars.iv71 = phi i64 [ 0, %.lr.ph64 ], [ %indvars.iv.next72, %bb.q ] ; 5 uses
  %i.cf = phi i32 [ %i.be, %.lr.ph64 ], [ %i.ix, %bb.q ]
  %i.cg = load ptr, ptr %i.bf, align 8, !tbaa !1317, !nonnull !198, !align !199
  %i.ch = zext i32 %i.cf to i64
  %i.ci = mul i64 %i.ar, %i.ch
  %i.cj = add i64 %i.ci, %indvars.iv71
  %i.ck = mul i64 %i.ce, %i.cj
  %i.cl = load ptr, ptr %i.cg, align 8, !tbaa !94
  %i.cm = getelementptr [4 x i8], ptr %i.cl, i64 %i.ck ; 16 uses
  %i.cn = load ptr, ptr %i.bh, align 8, !tbaa !1318, !nonnull !198, !align !369
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !18 ; 2 uses
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph60, label %._crit_edge61

._crit_edge61:                                    ; preds = %bb.h, %bb.e
  %i.cq = phi ptr [ %i.cd, %bb.e ], [ %i.gz, %bb.h ]
  %i.cr = load ptr, ptr %i.bn, align 8, !tbaa !1319, !nonnull !198, !align !199 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !240
  %.not = icmp eq i64 %i.ct, 0
  br i1 %.not, label %bb.p, label %bb.i

.lr.ph60:                                         ; preds = %bb.e, %bb.h
  %i.cu = phi ptr [ %i.gz, %bb.h ], [ %i.cd, %bb.e ]
  %i.cv = phi i32 [ %i.ha, %bb.h ], [ %i.co, %bb.e ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %bb.e ] ; 7 uses
  %i.cw = load ptr, ptr %i.bi, align 8, !tbaa !1320, !nonnull !198, !align !199 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !333
  %i.cy = icmp ugt i64 %i.cx, %indvars.iv
  br i1 %i.cy, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit, label %bb.f, !prof !161

bb.f:                                             ; preds = %.lr.ph60
  call void @_ZSt9terminatev() #31
  unreachable

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit: ; preds = %.lr.ph60
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !334
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !18
  %i.dd = zext i32 %i.dc to i64
  %.not39 = icmp eq i64 %indvars.iv71, %i.dd
  br i1 %.not39, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit
  %i.de = load ptr, ptr %i.am, align 8, !tbaa !95 ; 3 uses
  %i.df = load ptr, ptr %i.bj, align 8, !tbaa !95 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.de, %i.df
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEiEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.g
  %i.dg = ptrtoaddr ptr %i.df to i64
  %i.dh = ptrtoaddr ptr %i.de to i64
  %i.di = add i64 %i.dg, -4
  %i.dj = sub i64 %i.di, %i.dh
  %i.dk = and i64 %i.dj, -4
  %i.dl = add i64 %i.dk, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.de, i8 0, i64 %i.dl, i1 false), !tbaa !97
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEiEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEiEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i.preheader, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.dm = load ptr, ptr %i.bk, align 8, !tbaa !1312, !nonnull !198, !align !199
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !35
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !220
  call void @_ZNK7xgboost7RegTree10HostScViewEv(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::tree::ScalarTreeView") align 8 %2, ptr noundef nonnull align 8 dereferenceable(96) %i.dq)
  %i.dr = load ptr, ptr %i.bl, align 8, !tbaa !1321, !nonnull !198, !align !199
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !107
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %indvars.iv
  call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_128CalculateApproxContributionsERKNS_4tree14ScalarTreeViewERKNS_7RegTree4FVecEPSt6vectorIfSaIfEESD_(ptr noundef nonnull align 8 dereferenceable(68) %2, ptr noundef nonnull align 8 dereferenceable(25) %i.c, ptr noundef %i.dt, ptr noundef %i.am)
  %i.du = load ptr, ptr %i.bg, align 8, !tbaa !1316, !nonnull !198, !align !199 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !29 ; 15 uses
  %.not67 = icmp eq i64 %i.dv, 0
  br i1 %.not67, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEiEvT_S7_RKT0_.exit
  %i.dw = load ptr, ptr %i.am, align 8, !tbaa !94 ; 14 uses
  %i.dx = load ptr, ptr %i.bm, align 8, !tbaa !1322, !nonnull !198, !align !199
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !174 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %min.iters.check103 = icmp ult i64 %i.dv, 8
  br i1 %min.iters.check103, label %.lr.ph.split.us.preheader158, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.preheader
  %i.ea = shl i64 %i.dv, 2                        ; 2 uses
  %i.eb = getelementptr i8, ptr %i.cm, i64 %i.ea
  %i.ec = getelementptr i8, ptr %i.dw, i64 %i.ea
  %bound0 = icmp ult ptr %i.cm, %i.ec
  %bound1 = icmp ult ptr %i.dw, %i.eb
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.split.us.preheader158, label %vector.ph104

vector.ph104:                                     ; preds = %vector.memcheck
  %n.vec105 = and i64 %i.dv, -8                   ; 3 uses
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph104
  %index107 = phi i64 [ 0, %vector.ph104 ], [ %index.next111, %vector.body106 ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %index107 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %wide.load = load <4 x float>, ptr %i.ed, align 4, !tbaa !97, !alias.scope !1323
  %wide.load108 = load <4 x float>, ptr %i.ee, align 4, !tbaa !97, !alias.scope !1323
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %index107 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 2 uses
  %wide.load109 = load <4 x float>, ptr %i.ef, align 4, !tbaa !97, !alias.scope !1324, !noalias !1323
  %wide.load110 = load <4 x float>, ptr %i.eg, align 4, !tbaa !97, !alias.scope !1324, !noalias !1323
  %i.eh = fadd <4 x float> %wide.load, %wide.load109
  %i.ei = fadd <4 x float> %wide.load108, %wide.load110
  store <4 x float> %i.eh, ptr %i.ef, align 4, !tbaa !97, !alias.scope !1324, !noalias !1323
  store <4 x float> %i.ei, ptr %i.eg, align 4, !tbaa !97, !alias.scope !1324, !noalias !1323
  %index.next111 = add nuw i64 %index107, 8       ; 2 uses
  %i.ej = icmp eq i64 %index.next111, %n.vec105
  br i1 %i.ej, label %middle.block112, label %vector.body106, !llvm.loop !1297

middle.block112:                                  ; preds = %vector.body106
  %cmp.n113 = icmp eq i64 %i.dv, %n.vec105
  br i1 %cmp.n113, label %._crit_edge, label %.lr.ph.split.us.preheader158

.lr.ph.split.us.preheader158:                     ; preds = %vector.memcheck, %.lr.ph.split.us.preheader, %middle.block112
  %.03357.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.preheader ], [ %n.vec105, %middle.block112 ] ; 3 uses
  %xtraiter161 = and i64 %i.dv, 3                 ; 2 uses
  %lcmp.mod162.not = icmp eq i64 %xtraiter161, 0
  br i1 %lcmp.mod162.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader158, %.lr.ph.split.us.prol
  %.03357.us.prol = phi i64 [ %i.ep, %.lr.ph.split.us.prol ], [ %.03357.us.ph, %.lr.ph.split.us.preheader158 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader158 ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.03357.us.prol
  %i.el = load float, ptr %i.ek, align 4, !tbaa !97
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.03357.us.prol ; 2 uses
  %i.en = load float, ptr %i.em, align 4, !tbaa !97
  %i.eo = fadd float %i.el, %i.en
  store float %i.eo, ptr %i.em, align 4, !tbaa !97
  %i.ep = add nuw i64 %.03357.us.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter161
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !1298

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader158
  %.03357.us.unr = phi i64 [ %.03357.us.ph, %.lr.ph.split.us.preheader158 ], [ %i.ep, %.lr.ph.split.us.prol ]
  %i.eq = sub i64 %.03357.us.ph, %i.dv
  %i.er = icmp ugt i64 %i.eq, -4
  br i1 %i.er, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %.03357.us = phi i64 [ %i.fp, %.lr.ph.split.us ], [ %.03357.us.unr, %.lr.ph.split.us.prol.loopexit ] ; 6 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.03357.us
  %i.et = load float, ptr %i.es, align 4, !tbaa !97
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.03357.us ; 2 uses
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !97
  %i.ew = fadd float %i.et, %i.ev
  store float %i.ew, ptr %i.eu, align 4, !tbaa !97
  %i.ex = add nuw i64 %.03357.us, 1               ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.ex
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !97
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.ex ; 2 uses
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !97
  %i.fc = fadd float %i.ez, %i.fb
  store float %i.fc, ptr %i.fa, align 4, !tbaa !97
  %i.fd = add nuw i64 %.03357.us, 2               ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.fd
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !97
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.fd ; 2 uses
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !97
  %i.fi = fadd float %i.ff, %i.fh
  store float %i.fi, ptr %i.fg, align 4, !tbaa !97
  %i.fj = add nuw i64 %.03357.us, 3               ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.fj
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !97
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.fj ; 2 uses
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !97
  %i.fo = fadd float %i.fl, %i.fn
  store float %i.fo, ptr %i.fm, align 4, !tbaa !97
  %i.fp = add nuw i64 %.03357.us, 4               ; 2 uses
  %exitcond69.not.3 = icmp eq i64 %i.fp, %i.dv
  br i1 %exitcond69.not.3, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !1299

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.fq = load ptr, ptr %i.dy, align 8, !tbaa !94 ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv ; 5 uses
  %min.iters.check126 = icmp ult i64 %i.dv, 8
  br i1 %min.iters.check126, label %scalar.ph125.preheader, label %vector.memcheck127

vector.memcheck127:                               ; preds = %.lr.ph.split
  %i.fs = shl i64 %i.dv, 2                        ; 2 uses
  %i.ft = getelementptr i8, ptr %i.cm, i64 %i.fs  ; 2 uses
  %i.fu = getelementptr i8, ptr %i.dw, i64 %i.fs
  %5 = shl nuw nsw i64 %indvars.iv, 2
  %6 = getelementptr i8, ptr %i.fq, i64 %5
  %7 = getelementptr i8, ptr %6, i64 4
  %bound0128 = icmp ult ptr %i.cm, %i.fu
  %bound1129 = icmp ult ptr %i.dw, %i.ft
  %found.conflict130 = and i1 %bound0128, %bound1129
  %bound0131 = icmp ult ptr %i.cm, %7
  %bound1132 = icmp ult ptr %i.fr, %i.ft
  %found.conflict133 = and i1 %bound0131, %bound1132
  %conflict.rdx = or i1 %found.conflict130, %found.conflict133
  br i1 %conflict.rdx, label %scalar.ph125.preheader, label %vector.ph134

vector.ph134:                                     ; preds = %vector.memcheck127
  %n.vec135 = and i64 %i.dv, -8                   ; 3 uses
  %i.fv = load float, ptr %i.fr, align 4, !tbaa !97, !alias.scope !1325
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fv, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body136

vector.body136:                                   ; preds = %vector.body136, %vector.ph134
  %index137 = phi i64 [ 0, %vector.ph134 ], [ %index.next142, %vector.body136 ] ; 3 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %index137 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %wide.load138 = load <4 x float>, ptr %i.fw, align 4, !tbaa !97, !alias.scope !1326
  %wide.load139 = load <4 x float>, ptr %i.fx, align 4, !tbaa !97, !alias.scope !1326
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %index137 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 2 uses
  %wide.load140 = load <4 x float>, ptr %i.fy, align 4, !tbaa !97, !alias.scope !1327, !noalias !1328
  %wide.load141 = load <4 x float>, ptr %i.fz, align 4, !tbaa !97, !alias.scope !1327, !noalias !1328
  %i.ga = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load138, <4 x float> %broadcast.splat, <4 x float> %wide.load140)
  %i.gb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load139, <4 x float> %broadcast.splat, <4 x float> %wide.load141)
  store <4 x float> %i.ga, ptr %i.fy, align 4, !tbaa !97, !alias.scope !1327, !noalias !1328
  store <4 x float> %i.gb, ptr %i.fz, align 4, !tbaa !97, !alias.scope !1327, !noalias !1328
  %index.next142 = add nuw i64 %index137, 8       ; 2 uses
  %i.gc = icmp eq i64 %index.next142, %n.vec135
  br i1 %i.gc, label %middle.block143, label %vector.body136, !llvm.loop !1304

middle.block143:                                  ; preds = %vector.body136
  %cmp.n144 = icmp eq i64 %i.dv, %n.vec135
  br i1 %cmp.n144, label %._crit_edge, label %scalar.ph125.preheader

scalar.ph125.preheader:                           ; preds = %vector.memcheck127, %.lr.ph.split, %middle.block143
  %.03357.ph = phi i64 [ 0, %vector.memcheck127 ], [ 0, %.lr.ph.split ], [ %n.vec135, %middle.block143 ] ; 5 uses
  %.neg = or disjoint i64 %.03357.ph, 1
  %xtraiter = and i64 %i.dv, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph125.prol.loopexit, label %scalar.ph125.prol

scalar.ph125.prol:                                ; preds = %scalar.ph125.preheader
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.03357.ph
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !97
  %i.gf = load float, ptr %i.fr, align 4, !tbaa !97
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.03357.ph ; 2 uses
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !97
  %i.gi = call float @llvm.fmuladd.f32(float %i.ge, float %i.gf, float %i.gh)
  store float %i.gi, ptr %i.gg, align 4, !tbaa !97
  %i.gj = or disjoint i64 %.03357.ph, 1
  br label %scalar.ph125.prol.loopexit

scalar.ph125.prol.loopexit:                       ; preds = %scalar.ph125.prol, %scalar.ph125.preheader
  %.03357.unr = phi i64 [ %.03357.ph, %scalar.ph125.preheader ], [ %i.gj, %scalar.ph125.prol ]
  %i.gk = icmp eq i64 %i.dv, %.neg
  br i1 %i.gk, label %._crit_edge, label %scalar.ph125

._crit_edge:                                      ; preds = %scalar.ph125.prol.loopexit, %scalar.ph125, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block143, %middle.block112, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEiEvT_S7_RKT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %.pre75 = load ptr, ptr %i.bh, align 8, !tbaa !1318
  %.pre76 = load i32, ptr %.pre75, align 4, !tbaa !18
  br label %bb.h

scalar.ph125:                                     ; preds = %scalar.ph125.prol.loopexit, %scalar.ph125
  %.03357 = phi i64 [ %i.gy, %scalar.ph125 ], [ %.03357.unr, %scalar.ph125.prol.loopexit ] ; 4 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.03357
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !97
  %i.gn = load float, ptr %i.fr, align 4, !tbaa !97
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.03357 ; 2 uses
  %i.gp = load float, ptr %i.go, align 4, !tbaa !97
  %i.gq = call float @llvm.fmuladd.f32(float %i.gm, float %i.gn, float %i.gp)
  store float %i.gq, ptr %i.go, align 4, !tbaa !97
  %i.gr = add nuw i64 %.03357, 1                  ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.gr
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !97
  %i.gu = load float, ptr %i.fr, align 4, !tbaa !97
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.gr ; 2 uses
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !97
  %i.gx = call float @llvm.fmuladd.f32(float %i.gt, float %i.gu, float %i.gw)
  store float %i.gx, ptr %i.gv, align 4, !tbaa !97
  %i.gy = add nuw i64 %.03357, 2                  ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.gy, %i.dv
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph125, !llvm.loop !1305

bb.h:                                             ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit, %._crit_edge
  %i.gz = phi ptr [ %i.cu, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit ], [ %i.du, %._crit_edge ] ; 2 uses
  %i.ha = phi i32 [ %i.cv, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit ], [ %.pre76, %._crit_edge ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hb = sext i32 %i.ha to i64
  %i.hc = icmp slt i64 %indvars.iv.next, %i.hb
  br i1 %i.hc, label %.lr.ph60, label %._crit_edge61, !llvm.loop !1306

bb.i:                                             ; preds = %._crit_edge61
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.hd = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !29 ; 2 uses
  store i64 %i.he, ptr %i.a, align 8, !tbaa !29
  %i.hf = load ptr, ptr %i.bc, align 8, !tbaa !1315, !nonnull !198, !align !369 ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !18, !noalias !1329
  %i.hh = zext i32 %i.hg to i64
  %i.hi = icmp eq i64 %i.he, %i.hh
  br i1 %i.hi, label %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.i
  call void @_ZN4dmlc14LogCheckFormatImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.hf)
  %.pr = load ptr, ptr %3, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not56 = icmp eq ptr %.pr, null
  br i1 %.not56, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.hj = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.j
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.hj, ptr noundef nonnull @.str, i32 noundef 798)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.k

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.hk = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.l ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.hl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hk, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.hm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hk, ptr noundef nonnull @.str.70, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.hn = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !26
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !27
  %i.hr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hk, ptr noundef %i.ho, i64 noundef %i.hq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.l

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44
  %i.hs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hr, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.n unwind label %bb.k

bb.k:                                             ; preds = %.noexc, %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.hu = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ht, %bb.k ], [ %i.hu, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %.pn

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %.pr54 = load ptr, ptr %3, align 8, !tbaa !21   ; 4 uses
  %.not.i = icmp eq ptr %.pr54, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hv = load ptr, ptr %.pr54, align 8, !tbaa !26 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.pr54, i64 16 ; 2 uses
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.o
  %i.hy = load i64, ptr %i.hw, align 8, !tbaa !28
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hz) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr54, i64 noundef 32) #30
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.n, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.ia = load ptr, ptr %i.bn, align 8, !tbaa !1319, !nonnull !198, !align !199 ; 3 uses
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !29
  %i.ic = mul i64 %i.ib, %i.ar
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !29
end_hunk_1
begin_hunk_2_@"_ZZZN7xgboost16interpretability8cpu_impl23ApproxFeatureImportanceEPKNS_7ContextEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEENK3$_1clIRNS_9predictor14SparsePageViewINS_12NoOpAccessorEEEEEDaOT_ENKUlSQ_E_clImEEDaSQ_":bb.a

_ZN7xgboost7RegTree4FVec4DropEv.exit:             ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block161, %._crit_edge64
  store i8 1, ptr %i.ct, align 8, !tbaa !363
  ret void

bb.f:                                             ; preds = %.lr.ph63, %bb.r
  %i.dv = phi ptr [ %.pre, %.lr.ph63 ], [ %.sink105, %bb.r ] ; 2 uses
  %i.dw = phi i64 [ %.pre73, %.lr.ph63 ], [ %i.kj, %bb.r ]
  %indvars.iv70 = phi i64 [ 0, %.lr.ph63 ], [ %indvars.iv.next71, %bb.r ] ; 5 uses
  %i.dx = phi i32 [ %i.cw, %.lr.ph63 ], [ %i.kp, %bb.r ]
  %i.dy = load ptr, ptr %i.cx, align 8, !tbaa !1359, !nonnull !198, !align !199
  %i.dz = zext i32 %i.dx to i64
  %i.ea = mul i64 %i.as, %i.dz
  %i.eb = add i64 %i.ea, %indvars.iv70
  %i.ec = mul i64 %i.dw, %i.eb
  %i.ed = load ptr, ptr %i.dy, align 8, !tbaa !94
  %i.ee = getelementptr [4 x i8], ptr %i.ed, i64 %i.ec ; 16 uses
  %i.ef = load ptr, ptr %i.cz, align 8, !tbaa !1360, !nonnull !198, !align !369
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !18 ; 2 uses
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %.lr.ph60, label %._crit_edge61

._crit_edge61:                                    ; preds = %bb.i, %bb.f
  %i.ei = phi ptr [ %i.dv, %bb.f ], [ %i.ir, %bb.i ]
  %i.ej = load ptr, ptr %i.df, align 8, !tbaa !1361, !nonnull !198, !align !199 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 56
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !240
  %.not = icmp eq i64 %i.el, 0
  br i1 %.not, label %bb.q, label %bb.j

.lr.ph60:                                         ; preds = %bb.f, %bb.i
  %i.em = phi ptr [ %i.ir, %bb.i ], [ %i.dv, %bb.f ]
  %i.en = phi i32 [ %i.is, %bb.i ], [ %i.eg, %bb.f ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %bb.f ] ; 7 uses
  %i.eo = load ptr, ptr %i.da, align 8, !tbaa !1362, !nonnull !198, !align !199 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !333
  %i.eq = icmp ugt i64 %i.ep, %indvars.iv
  br i1 %i.eq, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit, label %bb.g, !prof !161

bb.g:                                             ; preds = %.lr.ph60
  call void @_ZSt9terminatev() #31
  unreachable

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit: ; preds = %.lr.ph60
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !334
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !18
  %i.ev = zext i32 %i.eu to i64
  %.not39 = icmp eq i64 %indvars.iv70, %i.ev
  br i1 %.not39, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit
  %i.ew = load ptr, ptr %i.an, align 8, !tbaa !95 ; 3 uses
  %i.ex = load ptr, ptr %i.db, align 8, !tbaa !95 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.ew, %i.ex
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEiEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.h
  %i.ey = ptrtoaddr ptr %i.ex to i64
  %i.ez = ptrtoaddr ptr %i.ew to i64
  %i.fa = add i64 %i.ey, -4
  %i.fb = sub i64 %i.fa, %i.ez
  %i.fc = and i64 %i.fb, -4
  %i.fd = add i64 %i.fc, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.ew, i8 0, i64 %i.fd, i1 false), !tbaa !97
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEiEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEiEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i.preheader, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.fe = load ptr, ptr %i.dc, align 8, !tbaa !1354, !nonnull !198, !align !199
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !35
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !220
  call void @_ZNK7xgboost7RegTree10HostScViewEv(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::tree::ScalarTreeView") align 8 %2, ptr noundef nonnull align 8 dereferenceable(96) %i.fi)
  %i.fj = load ptr, ptr %i.dd, align 8, !tbaa !1363, !nonnull !198, !align !199
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !107
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.fk, i64 %indvars.iv
  call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_128CalculateApproxContributionsERKNS_4tree14ScalarTreeViewERKNS_7RegTree4FVecEPSt6vectorIfSaIfEESD_(ptr noundef nonnull align 8 dereferenceable(68) %2, ptr noundef nonnull align 8 dereferenceable(25) %i.c, ptr noundef %i.fl, ptr noundef %i.an)
  %i.fm = load ptr, ptr %i.cy, align 8, !tbaa !1358, !nonnull !198, !align !199 ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !29 ; 15 uses
  %.not66 = icmp eq i64 %i.fn, 0
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEiEvT_S7_RKT0_.exit
  %i.fo = load ptr, ptr %i.an, align 8, !tbaa !94 ; 14 uses
  %i.fp = load ptr, ptr %i.de, align 8, !tbaa !1364, !nonnull !198, !align !199
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !174 ; 2 uses
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %min.iters.check110 = icmp ult i64 %i.fn, 8
  br i1 %min.iters.check110, label %.lr.ph.split.us.preheader165, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.preheader
  %i.fs = shl i64 %i.fn, 2                        ; 2 uses
  %i.ft = getelementptr i8, ptr %i.ee, i64 %i.fs
  %i.fu = getelementptr i8, ptr %i.fo, i64 %i.fs
  %bound0 = icmp ult ptr %i.ee, %i.fu
  %bound1 = icmp ult ptr %i.fo, %i.ft
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.split.us.preheader165, label %vector.ph111

vector.ph111:                                     ; preds = %vector.memcheck
  %n.vec112 = and i64 %i.fn, -8                   ; 3 uses
  br label %vector.body113

vector.body113:                                   ; preds = %vector.body113, %vector.ph111
  %index114 = phi i64 [ 0, %vector.ph111 ], [ %index.next118, %vector.body113 ] ; 3 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %index114 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %wide.load = load <4 x float>, ptr %i.fv, align 4, !tbaa !97, !alias.scope !1365
  %wide.load115 = load <4 x float>, ptr %i.fw, align 4, !tbaa !97, !alias.scope !1365
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %index114 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16 ; 2 uses
  %wide.load116 = load <4 x float>, ptr %i.fx, align 4, !tbaa !97, !alias.scope !1366, !noalias !1365
  %wide.load117 = load <4 x float>, ptr %i.fy, align 4, !tbaa !97, !alias.scope !1366, !noalias !1365
  %i.fz = fadd <4 x float> %wide.load, %wide.load116
  %i.ga = fadd <4 x float> %wide.load115, %wide.load117
  store <4 x float> %i.fz, ptr %i.fx, align 4, !tbaa !97, !alias.scope !1366, !noalias !1365
  store <4 x float> %i.ga, ptr %i.fy, align 4, !tbaa !97, !alias.scope !1366, !noalias !1365
  %index.next118 = add nuw i64 %index114, 8       ; 2 uses
  %i.gb = icmp eq i64 %index.next118, %n.vec112
  br i1 %i.gb, label %middle.block119, label %vector.body113, !llvm.loop !1339

middle.block119:                                  ; preds = %vector.body113
  %cmp.n120 = icmp eq i64 %i.fn, %n.vec112
  br i1 %cmp.n120, label %._crit_edge, label %.lr.ph.split.us.preheader165

.lr.ph.split.us.preheader165:                     ; preds = %vector.memcheck, %.lr.ph.split.us.preheader, %middle.block119
  %.03357.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.preheader ], [ %n.vec112, %middle.block119 ] ; 3 uses
  %xtraiter171 = and i64 %i.fn, 3                 ; 2 uses
  %lcmp.mod172.not = icmp eq i64 %xtraiter171, 0
  br i1 %lcmp.mod172.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader165, %.lr.ph.split.us.prol
  %.03357.us.prol = phi i64 [ %i.gh, %.lr.ph.split.us.prol ], [ %.03357.us.ph, %.lr.ph.split.us.preheader165 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader165 ]
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %.03357.us.prol
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !97
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.03357.us.prol ; 2 uses
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !97
  %i.gg = fadd float %i.gd, %i.gf
  store float %i.gg, ptr %i.ge, align 4, !tbaa !97
  %i.gh = add nuw i64 %.03357.us.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter171
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !1340

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader165
  %.03357.us.unr = phi i64 [ %.03357.us.ph, %.lr.ph.split.us.preheader165 ], [ %i.gh, %.lr.ph.split.us.prol ]
  %i.gi = sub i64 %.03357.us.ph, %i.fn
  %i.gj = icmp ugt i64 %i.gi, -4
  br i1 %i.gj, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %.03357.us = phi i64 [ %i.hh, %.lr.ph.split.us ], [ %.03357.us.unr, %.lr.ph.split.us.prol.loopexit ] ; 6 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %.03357.us
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !97
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.03357.us ; 2 uses
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !97
  %i.go = fadd float %i.gl, %i.gn
  store float %i.go, ptr %i.gm, align 4, !tbaa !97
  %i.gp = add nuw i64 %.03357.us, 1               ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.gp
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !97
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.gp ; 2 uses
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !97
  %i.gu = fadd float %i.gr, %i.gt
  store float %i.gu, ptr %i.gs, align 4, !tbaa !97
  %i.gv = add nuw i64 %.03357.us, 2               ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.gv
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !97
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.gv ; 2 uses
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !97
  %i.ha = fadd float %i.gx, %i.gz
  store float %i.ha, ptr %i.gy, align 4, !tbaa !97
  %i.hb = add nuw i64 %.03357.us, 3               ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.hb
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !97
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.hb ; 2 uses
  %i.hf = load float, ptr %i.he, align 4, !tbaa !97
  %i.hg = fadd float %i.hd, %i.hf
  store float %i.hg, ptr %i.he, align 4, !tbaa !97
  %i.hh = add nuw i64 %.03357.us, 4               ; 2 uses
  %exitcond68.not.3 = icmp eq i64 %i.hh, %i.fn
  br i1 %exitcond68.not.3, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !1341

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.hi = load ptr, ptr %i.fq, align 8, !tbaa !94 ; 2 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv ; 5 uses
  %min.iters.check133 = icmp ult i64 %i.fn, 8
  br i1 %min.iters.check133, label %scalar.ph132.preheader, label %vector.memcheck134

vector.memcheck134:                               ; preds = %.lr.ph.split
  %i.hk = shl i64 %i.fn, 2                        ; 2 uses
  %i.hl = getelementptr i8, ptr %i.ee, i64 %i.hk  ; 2 uses
  %i.hm = getelementptr i8, ptr %i.fo, i64 %i.hk
  %5 = shl nuw nsw i64 %indvars.iv, 2
  %6 = getelementptr i8, ptr %i.hi, i64 %5
  %7 = getelementptr i8, ptr %6, i64 4
  %bound0135 = icmp ult ptr %i.ee, %i.hm
  %bound1136 = icmp ult ptr %i.fo, %i.hl
  %found.conflict137 = and i1 %bound0135, %bound1136
  %bound0138 = icmp ult ptr %i.ee, %7
  %bound1139 = icmp ult ptr %i.hj, %i.hl
  %found.conflict140 = and i1 %bound0138, %bound1139
  %conflict.rdx = or i1 %found.conflict137, %found.conflict140
  br i1 %conflict.rdx, label %scalar.ph132.preheader, label %vector.ph141

vector.ph141:                                     ; preds = %vector.memcheck134
  %n.vec142 = and i64 %i.fn, -8                   ; 3 uses
  %i.hn = load float, ptr %i.hj, align 4, !tbaa !97, !alias.scope !1367
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.hn, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next149, %vector.body143 ] ; 3 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %index144 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %wide.load145 = load <4 x float>, ptr %i.ho, align 4, !tbaa !97, !alias.scope !1368
  %wide.load146 = load <4 x float>, ptr %i.hp, align 4, !tbaa !97, !alias.scope !1368
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %index144 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16 ; 2 uses
  %wide.load147 = load <4 x float>, ptr %i.hq, align 4, !tbaa !97, !alias.scope !1369, !noalias !1370
  %wide.load148 = load <4 x float>, ptr %i.hr, align 4, !tbaa !97, !alias.scope !1369, !noalias !1370
  %i.hs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load145, <4 x float> %broadcast.splat, <4 x float> %wide.load147)
  %i.ht = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load146, <4 x float> %broadcast.splat, <4 x float> %wide.load148)
  store <4 x float> %i.hs, ptr %i.hq, align 4, !tbaa !97, !alias.scope !1369, !noalias !1370
  store <4 x float> %i.ht, ptr %i.hr, align 4, !tbaa !97, !alias.scope !1369, !noalias !1370
  %index.next149 = add nuw i64 %index144, 8       ; 2 uses
  %i.hu = icmp eq i64 %index.next149, %n.vec142
  br i1 %i.hu, label %middle.block150, label %vector.body143, !llvm.loop !1346

middle.block150:                                  ; preds = %vector.body143
  %cmp.n151 = icmp eq i64 %i.fn, %n.vec142
  br i1 %cmp.n151, label %._crit_edge, label %scalar.ph132.preheader

scalar.ph132.preheader:                           ; preds = %vector.memcheck134, %.lr.ph.split, %middle.block150
  %.03357.ph = phi i64 [ 0, %vector.memcheck134 ], [ 0, %.lr.ph.split ], [ %n.vec142, %middle.block150 ] ; 5 uses
  %.neg = or disjoint i64 %.03357.ph, 1
  %xtraiter169 = and i64 %i.fn, 1
  %lcmp.mod170.not = icmp eq i64 %xtraiter169, 0
  br i1 %lcmp.mod170.not, label %scalar.ph132.prol.loopexit, label %scalar.ph132.prol

scalar.ph132.prol:                                ; preds = %scalar.ph132.preheader
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %.03357.ph
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !97
  %i.hx = load float, ptr %i.hj, align 4, !tbaa !97
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.03357.ph ; 2 uses
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !97
  %i.ia = call float @llvm.fmuladd.f32(float %i.hw, float %i.hx, float %i.hz)
  store float %i.ia, ptr %i.hy, align 4, !tbaa !97
  %i.ib = or disjoint i64 %.03357.ph, 1
  br label %scalar.ph132.prol.loopexit

scalar.ph132.prol.loopexit:                       ; preds = %scalar.ph132.prol, %scalar.ph132.preheader
  %.03357.unr = phi i64 [ %.03357.ph, %scalar.ph132.preheader ], [ %i.ib, %scalar.ph132.prol ]
  %i.ic = icmp eq i64 %i.fn, %.neg
  br i1 %i.ic, label %._crit_edge, label %scalar.ph132

._crit_edge:                                      ; preds = %scalar.ph132.prol.loopexit, %scalar.ph132, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block150, %middle.block119, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEiEvT_S7_RKT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %.pre74 = load ptr, ptr %i.cz, align 8, !tbaa !1360
  %.pre75 = load i32, ptr %.pre74, align 4, !tbaa !18
  br label %bb.i

scalar.ph132:                                     ; preds = %scalar.ph132.prol.loopexit, %scalar.ph132
  %.03357 = phi i64 [ %i.iq, %scalar.ph132 ], [ %.03357.unr, %scalar.ph132.prol.loopexit ] ; 4 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %.03357
  %i.ie = load float, ptr %i.id, align 4, !tbaa !97
  %i.if = load float, ptr %i.hj, align 4, !tbaa !97
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.03357 ; 2 uses
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !97
  %i.ii = call float @llvm.fmuladd.f32(float %i.ie, float %i.if, float %i.ih)
  store float %i.ii, ptr %i.ig, align 4, !tbaa !97
  %i.ij = add nuw i64 %.03357, 1                  ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %i.ij
  %i.il = load float, ptr %i.ik, align 4, !tbaa !97
  %i.im = load float, ptr %i.hj, align 4, !tbaa !97
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.ij ; 2 uses
  %i.io = load float, ptr %i.in, align 4, !tbaa !97
  %i.ip = call float @llvm.fmuladd.f32(float %i.il, float %i.im, float %i.io)
  store float %i.ip, ptr %i.in, align 4, !tbaa !97
  %i.iq = add nuw i64 %.03357, 2                  ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.iq, %i.fn
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph132, !llvm.loop !1347

bb.i:                                             ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit, %._crit_edge
  %i.ir = phi ptr [ %i.em, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit ], [ %i.fm, %._crit_edge ] ; 2 uses
  %i.is = phi i32 [ %i.en, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit ], [ %.pre75, %._crit_edge ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.it = sext i32 %i.is to i64
  %i.iu = icmp slt i64 %indvars.iv.next, %i.it
  br i1 %i.iu, label %.lr.ph60, label %._crit_edge61, !llvm.loop !1348

bb.j:                                             ; preds = %._crit_edge61
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !29 ; 2 uses
  store i64 %i.iw, ptr %i.a, align 8, !tbaa !29
  %i.ix = load ptr, ptr %i.cu, align 8, !tbaa !1357, !nonnull !198, !align !369 ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !18, !noalias !1371
  %i.iz = zext i32 %i.iy to i64
  %i.ja = icmp eq i64 %i.iw, %i.iz
  br i1 %i.ja, label %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.j
  call void @_ZN4dmlc14LogCheckFormatImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.ix)
  %.pr = load ptr, ptr %3, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not56 = icmp eq ptr %.pr, null
  br i1 %.not56, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.jb = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.k
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.jb, ptr noundef nonnull @.str, i32 noundef 798)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.l

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.jc = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.m ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.jd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jc, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.je = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jc, ptr noundef nonnull @.str.70, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.jf = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !26
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !27
  %i.jj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jc, ptr noundef %i.jg, i64 noundef %i.ji)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.m

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44
  %i.jk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.jj, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47 unwind label %bb.m ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %.noexc, %bb.k, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.jm = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.jl, %bb.l ], [ %i.jm, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %.pn

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %.pr54 = load ptr, ptr %3, align 8, !tbaa !21   ; 4 uses
  %.not.i = icmp eq ptr %.pr54, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.jn = load ptr, ptr %.pr54, align 8, !tbaa !26 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.pr54, i64 16 ; 2 uses
  %i.jp = icmp eq ptr %i.jn, %i.jo
  br i1 %i.jp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.p
  %i.jq = load i64, ptr %i.jo, align 8, !tbaa !28
  %i.jr = add i64 %i.jq, 1
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jr) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr54, i64 noundef 32) #30
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.o, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.js = load ptr, ptr %i.df, align 8, !tbaa !1361, !nonnull !198, !align !199 ; 3 uses
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !29
  %i.ju = mul i64 %i.jt, %i.as
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !29
end_hunk_2
begin_hunk_3_@"_ZZZN7xgboost16interpretability8cpu_impl23ApproxFeatureImportanceEPKNS_7ContextEPNS_7DMatrixEPNS_16HostDeviceVectorIfEERKNS_3gbm11GBTreeModelEiPKSt6vectorIfSaIfEEENK3$_1clIRNS_9predictor20GHistIndexMatrixViewINS_12NoOpAccessorEEEEEDaOT_ENKUlSQ_E_clImEEDaSQ_":bb.a

_ZN7xgboost7RegTree4FVec4DropEv.exit:             ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block154, %._crit_edge65
  store i8 1, ptr %i.bb, align 8, !tbaa !363
  ret void

bb.e:                                             ; preds = %.lr.ph64, %bb.q
  %i.cd = phi ptr [ %.pre, %.lr.ph64 ], [ %.sink98, %bb.q ] ; 2 uses
  %i.ce = phi i64 [ %.pre74, %.lr.ph64 ], [ %i.ir, %bb.q ]
  %indvars.iv71 = phi i64 [ 0, %.lr.ph64 ], [ %indvars.iv.next72, %bb.q ] ; 5 uses
  %i.cf = phi i32 [ %i.be, %.lr.ph64 ], [ %i.ix, %bb.q ]
  %i.cg = load ptr, ptr %i.bf, align 8, !tbaa !1400, !nonnull !198, !align !199
  %i.ch = zext i32 %i.cf to i64
  %i.ci = mul i64 %i.ar, %i.ch
  %i.cj = add i64 %i.ci, %indvars.iv71
  %i.ck = mul i64 %i.ce, %i.cj
  %i.cl = load ptr, ptr %i.cg, align 8, !tbaa !94
  %i.cm = getelementptr [4 x i8], ptr %i.cl, i64 %i.ck ; 16 uses
  %i.cn = load ptr, ptr %i.bh, align 8, !tbaa !1401, !nonnull !198, !align !369
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !18 ; 2 uses
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph60, label %._crit_edge61

._crit_edge61:                                    ; preds = %bb.h, %bb.e
  %i.cq = phi ptr [ %i.cd, %bb.e ], [ %i.gz, %bb.h ]
  %i.cr = load ptr, ptr %i.bn, align 8, !tbaa !1402, !nonnull !198, !align !199 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !240
  %.not = icmp eq i64 %i.ct, 0
  br i1 %.not, label %bb.p, label %bb.i

.lr.ph60:                                         ; preds = %bb.e, %bb.h
  %i.cu = phi ptr [ %i.gz, %bb.h ], [ %i.cd, %bb.e ]
  %i.cv = phi i32 [ %i.ha, %bb.h ], [ %i.co, %bb.e ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %bb.e ] ; 7 uses
  %i.cw = load ptr, ptr %i.bi, align 8, !tbaa !1403, !nonnull !198, !align !199 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !333
  %i.cy = icmp ugt i64 %i.cx, %indvars.iv
  br i1 %i.cy, label %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit, label %bb.f, !prof !161

bb.f:                                             ; preds = %.lr.ph60
  call void @_ZSt9terminatev() #31
  unreachable

_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit: ; preds = %.lr.ph60
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !334
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !18
  %i.dd = zext i32 %i.dc to i64
  %.not39 = icmp eq i64 %indvars.iv71, %i.dd
  br i1 %.not39, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit
  %i.de = load ptr, ptr %i.am, align 8, !tbaa !95 ; 3 uses
  %i.df = load ptr, ptr %i.bj, align 8, !tbaa !95 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.de, %i.df
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEiEvT_S7_RKT0_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.g
  %i.dg = ptrtoaddr ptr %i.df to i64
  %i.dh = ptrtoaddr ptr %i.de to i64
  %i.di = add i64 %i.dg, -4
  %i.dj = sub i64 %i.di, %i.dh
  %i.dk = and i64 %i.dj, -4
  %i.dl = add i64 %i.dk, 4
  call void @llvm.memset.p0.i64(ptr align 4 %i.de, i8 0, i64 %i.dl, i1 false), !tbaa !97
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEiEvT_S7_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEiEvT_S7_RKT0_.exit: ; preds = %.lr.ph.i.i.i.i.preheader, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.dm = load ptr, ptr %i.bk, align 8, !tbaa !1395, !nonnull !198, !align !199
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !35
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !220
  call void @_ZNK7xgboost7RegTree10HostScViewEv(ptr dead_on_unwind nonnull writable sret(%"struct.xgboost::tree::ScalarTreeView") align 8 %2, ptr noundef nonnull align 8 dereferenceable(96) %i.dq)
  %i.dr = load ptr, ptr %i.bl, align 8, !tbaa !1404, !nonnull !198, !align !199
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !107
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %indvars.iv
  call fastcc void @_ZN7xgboost16interpretability12_GLOBAL__N_128CalculateApproxContributionsERKNS_4tree14ScalarTreeViewERKNS_7RegTree4FVecEPSt6vectorIfSaIfEESD_(ptr noundef nonnull align 8 dereferenceable(68) %2, ptr noundef nonnull align 8 dereferenceable(25) %i.c, ptr noundef %i.dt, ptr noundef %i.am)
  %i.du = load ptr, ptr %i.bg, align 8, !tbaa !1399, !nonnull !198, !align !199 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !29 ; 15 uses
  %.not67 = icmp eq i64 %i.dv, 0
  br i1 %.not67, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEiEvT_S7_RKT0_.exit
  %i.dw = load ptr, ptr %i.am, align 8, !tbaa !94 ; 14 uses
  %i.dx = load ptr, ptr %i.bm, align 8, !tbaa !1405, !nonnull !198, !align !199
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !174 ; 2 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %min.iters.check103 = icmp ult i64 %i.dv, 8
  br i1 %min.iters.check103, label %.lr.ph.split.us.preheader158, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.us.preheader
  %i.ea = shl i64 %i.dv, 2                        ; 2 uses
  %i.eb = getelementptr i8, ptr %i.cm, i64 %i.ea
  %i.ec = getelementptr i8, ptr %i.dw, i64 %i.ea
  %bound0 = icmp ult ptr %i.cm, %i.ec
  %bound1 = icmp ult ptr %i.dw, %i.eb
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.split.us.preheader158, label %vector.ph104

vector.ph104:                                     ; preds = %vector.memcheck
  %n.vec105 = and i64 %i.dv, -8                   ; 3 uses
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph104
  %index107 = phi i64 [ 0, %vector.ph104 ], [ %index.next111, %vector.body106 ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %index107 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %wide.load = load <4 x float>, ptr %i.ed, align 4, !tbaa !97, !alias.scope !1406
  %wide.load108 = load <4 x float>, ptr %i.ee, align 4, !tbaa !97, !alias.scope !1406
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %index107 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 2 uses
  %wide.load109 = load <4 x float>, ptr %i.ef, align 4, !tbaa !97, !alias.scope !1407, !noalias !1406
  %wide.load110 = load <4 x float>, ptr %i.eg, align 4, !tbaa !97, !alias.scope !1407, !noalias !1406
  %i.eh = fadd <4 x float> %wide.load, %wide.load109
  %i.ei = fadd <4 x float> %wide.load108, %wide.load110
  store <4 x float> %i.eh, ptr %i.ef, align 4, !tbaa !97, !alias.scope !1407, !noalias !1406
  store <4 x float> %i.ei, ptr %i.eg, align 4, !tbaa !97, !alias.scope !1407, !noalias !1406
  %index.next111 = add nuw i64 %index107, 8       ; 2 uses
  %i.ej = icmp eq i64 %index.next111, %n.vec105
  br i1 %i.ej, label %middle.block112, label %vector.body106, !llvm.loop !1380

middle.block112:                                  ; preds = %vector.body106
  %cmp.n113 = icmp eq i64 %i.dv, %n.vec105
  br i1 %cmp.n113, label %._crit_edge, label %.lr.ph.split.us.preheader158

.lr.ph.split.us.preheader158:                     ; preds = %vector.memcheck, %.lr.ph.split.us.preheader, %middle.block112
  %.03357.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.us.preheader ], [ %n.vec105, %middle.block112 ] ; 3 uses
  %xtraiter161 = and i64 %i.dv, 3                 ; 2 uses
  %lcmp.mod162.not = icmp eq i64 %xtraiter161, 0
  br i1 %lcmp.mod162.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader158, %.lr.ph.split.us.prol
  %.03357.us.prol = phi i64 [ %i.ep, %.lr.ph.split.us.prol ], [ %.03357.us.ph, %.lr.ph.split.us.preheader158 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader158 ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.03357.us.prol
  %i.el = load float, ptr %i.ek, align 4, !tbaa !97
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.03357.us.prol ; 2 uses
  %i.en = load float, ptr %i.em, align 4, !tbaa !97
  %i.eo = fadd float %i.el, %i.en
  store float %i.eo, ptr %i.em, align 4, !tbaa !97
  %i.ep = add nuw i64 %.03357.us.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter161
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !1381

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader158
  %.03357.us.unr = phi i64 [ %.03357.us.ph, %.lr.ph.split.us.preheader158 ], [ %i.ep, %.lr.ph.split.us.prol ]
  %i.eq = sub i64 %.03357.us.ph, %i.dv
  %i.er = icmp ugt i64 %i.eq, -4
  br i1 %i.er, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %.03357.us = phi i64 [ %i.fp, %.lr.ph.split.us ], [ %.03357.us.unr, %.lr.ph.split.us.prol.loopexit ] ; 6 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.03357.us
  %i.et = load float, ptr %i.es, align 4, !tbaa !97
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.03357.us ; 2 uses
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !97
  %i.ew = fadd float %i.et, %i.ev
  store float %i.ew, ptr %i.eu, align 4, !tbaa !97
  %i.ex = add nuw i64 %.03357.us, 1               ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.ex
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !97
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.ex ; 2 uses
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !97
  %i.fc = fadd float %i.ez, %i.fb
  store float %i.fc, ptr %i.fa, align 4, !tbaa !97
  %i.fd = add nuw i64 %.03357.us, 2               ; 2 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.fd
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !97
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.fd ; 2 uses
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !97
  %i.fi = fadd float %i.ff, %i.fh
  store float %i.fi, ptr %i.fg, align 4, !tbaa !97
  %i.fj = add nuw i64 %.03357.us, 3               ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.fj
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !97
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.fj ; 2 uses
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !97
  %i.fo = fadd float %i.fl, %i.fn
  store float %i.fo, ptr %i.fm, align 4, !tbaa !97
  %i.fp = add nuw i64 %.03357.us, 4               ; 2 uses
  %exitcond69.not.3 = icmp eq i64 %i.fp, %i.dv
  br i1 %exitcond69.not.3, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !1382

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.fq = load ptr, ptr %i.dy, align 8, !tbaa !94 ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv ; 5 uses
  %min.iters.check126 = icmp ult i64 %i.dv, 8
  br i1 %min.iters.check126, label %scalar.ph125.preheader, label %vector.memcheck127

vector.memcheck127:                               ; preds = %.lr.ph.split
  %i.fs = shl i64 %i.dv, 2                        ; 2 uses
  %i.ft = getelementptr i8, ptr %i.cm, i64 %i.fs  ; 2 uses
  %i.fu = getelementptr i8, ptr %i.dw, i64 %i.fs
  %5 = shl nuw nsw i64 %indvars.iv, 2
  %6 = getelementptr i8, ptr %i.fq, i64 %5
  %7 = getelementptr i8, ptr %6, i64 4
  %bound0128 = icmp ult ptr %i.cm, %i.fu
  %bound1129 = icmp ult ptr %i.dw, %i.ft
  %found.conflict130 = and i1 %bound0128, %bound1129
  %bound0131 = icmp ult ptr %i.cm, %7
  %bound1132 = icmp ult ptr %i.fr, %i.ft
  %found.conflict133 = and i1 %bound0131, %bound1132
  %conflict.rdx = or i1 %found.conflict130, %found.conflict133
  br i1 %conflict.rdx, label %scalar.ph125.preheader, label %vector.ph134

vector.ph134:                                     ; preds = %vector.memcheck127
  %n.vec135 = and i64 %i.dv, -8                   ; 3 uses
  %i.fv = load float, ptr %i.fr, align 4, !tbaa !97, !alias.scope !1408
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fv, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body136

vector.body136:                                   ; preds = %vector.body136, %vector.ph134
  %index137 = phi i64 [ 0, %vector.ph134 ], [ %index.next142, %vector.body136 ] ; 3 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %index137 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %wide.load138 = load <4 x float>, ptr %i.fw, align 4, !tbaa !97, !alias.scope !1409
  %wide.load139 = load <4 x float>, ptr %i.fx, align 4, !tbaa !97, !alias.scope !1409
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %index137 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 2 uses
  %wide.load140 = load <4 x float>, ptr %i.fy, align 4, !tbaa !97, !alias.scope !1410, !noalias !1411
  %wide.load141 = load <4 x float>, ptr %i.fz, align 4, !tbaa !97, !alias.scope !1410, !noalias !1411
  %i.ga = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load138, <4 x float> %broadcast.splat, <4 x float> %wide.load140)
  %i.gb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load139, <4 x float> %broadcast.splat, <4 x float> %wide.load141)
  store <4 x float> %i.ga, ptr %i.fy, align 4, !tbaa !97, !alias.scope !1410, !noalias !1411
  store <4 x float> %i.gb, ptr %i.fz, align 4, !tbaa !97, !alias.scope !1410, !noalias !1411
  %index.next142 = add nuw i64 %index137, 8       ; 2 uses
  %i.gc = icmp eq i64 %index.next142, %n.vec135
  br i1 %i.gc, label %middle.block143, label %vector.body136, !llvm.loop !1387

middle.block143:                                  ; preds = %vector.body136
  %cmp.n144 = icmp eq i64 %i.dv, %n.vec135
  br i1 %cmp.n144, label %._crit_edge, label %scalar.ph125.preheader

scalar.ph125.preheader:                           ; preds = %vector.memcheck127, %.lr.ph.split, %middle.block143
  %.03357.ph = phi i64 [ 0, %vector.memcheck127 ], [ 0, %.lr.ph.split ], [ %n.vec135, %middle.block143 ] ; 5 uses
  %.neg = or disjoint i64 %.03357.ph, 1
  %xtraiter = and i64 %i.dv, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph125.prol.loopexit, label %scalar.ph125.prol

scalar.ph125.prol:                                ; preds = %scalar.ph125.preheader
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.03357.ph
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !97
  %i.gf = load float, ptr %i.fr, align 4, !tbaa !97
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.03357.ph ; 2 uses
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !97
  %i.gi = call float @llvm.fmuladd.f32(float %i.ge, float %i.gf, float %i.gh)
  store float %i.gi, ptr %i.gg, align 4, !tbaa !97
  %i.gj = or disjoint i64 %.03357.ph, 1
  br label %scalar.ph125.prol.loopexit

scalar.ph125.prol.loopexit:                       ; preds = %scalar.ph125.prol, %scalar.ph125.preheader
  %.03357.unr = phi i64 [ %.03357.ph, %scalar.ph125.preheader ], [ %i.gj, %scalar.ph125.prol ]
  %i.gk = icmp eq i64 %i.dv, %.neg
  br i1 %i.gk, label %._crit_edge, label %scalar.ph125

._crit_edge:                                      ; preds = %scalar.ph125.prol.loopexit, %scalar.ph125, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block143, %middle.block112, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPfSt6vectorIfSaIfEEEEiEvT_S7_RKT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %.pre75 = load ptr, ptr %i.bh, align 8, !tbaa !1401
  %.pre76 = load i32, ptr %.pre75, align 4, !tbaa !18
  br label %bb.h

scalar.ph125:                                     ; preds = %scalar.ph125.prol.loopexit, %scalar.ph125
  %.03357 = phi i64 [ %i.gy, %scalar.ph125 ], [ %.03357.unr, %scalar.ph125.prol.loopexit ] ; 4 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.03357
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !97
  %i.gn = load float, ptr %i.fr, align 4, !tbaa !97
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %.03357 ; 2 uses
  %i.gp = load float, ptr %i.go, align 4, !tbaa !97
  %i.gq = call float @llvm.fmuladd.f32(float %i.gm, float %i.gn, float %i.gp)
  store float %i.gq, ptr %i.go, align 4, !tbaa !97
  %i.gr = add nuw i64 %.03357, 1                  ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.gr
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !97
  %i.gu = load float, ptr %i.fr, align 4, !tbaa !97
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.gr ; 2 uses
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !97
  %i.gx = call float @llvm.fmuladd.f32(float %i.gt, float %i.gu, float %i.gw)
  store float %i.gx, ptr %i.gv, align 4, !tbaa !97
  %i.gy = add nuw i64 %.03357, 2                  ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.gy, %i.dv
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph125, !llvm.loop !1388

bb.h:                                             ; preds = %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit, %._crit_edge
  %i.gz = phi ptr [ %i.cu, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit ], [ %i.du, %._crit_edge ] ; 2 uses
  %i.ha = phi i32 [ %i.cv, %_ZNK7xgboost6common4SpanIKjLm18446744073709551615EEixEm.exit ], [ %.pre76, %._crit_edge ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hb = sext i32 %i.ha to i64
  %i.hc = icmp slt i64 %indvars.iv.next, %i.hb
  br i1 %i.hc, label %.lr.ph60, label %._crit_edge61, !llvm.loop !1389

bb.i:                                             ; preds = %._crit_edge61
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.hd = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !29 ; 2 uses
  store i64 %i.he, ptr %i.a, align 8, !tbaa !29
  %i.hf = load ptr, ptr %i.bc, align 8, !tbaa !1398, !nonnull !198, !align !369 ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !18, !noalias !1412
  %i.hh = zext i32 %i.hg to i64
  %i.hi = icmp eq i64 %i.he, %i.hh
  br i1 %i.hi, label %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.i
  call void @_ZN4dmlc14LogCheckFormatImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.hf)
  %.pr = load ptr, ptr %3, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.not56 = icmp eq ptr %.pr, null
  br i1 %.not56, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.hj = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.j
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.hj, ptr noundef nonnull @.str, i32 noundef 798)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.k

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.hk = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.l ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.hl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hk, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.hm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hk, ptr noundef nonnull @.str.70, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.hn = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !26
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !27
  %i.hr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hk, ptr noundef %i.ho, i64 noundef %i.hq)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.l

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44
  %i.hs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hr, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47 unwind label %bb.l ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.n unwind label %bb.k

bb.k:                                             ; preds = %.noexc, %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.hu = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ht, %bb.k ], [ %i.hu, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %.pn

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit47
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %.pr54 = load ptr, ptr %3, align 8, !tbaa !21   ; 4 uses
  %.not.i = icmp eq ptr %.pr54, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hv = load ptr, ptr %.pr54, align 8, !tbaa !26 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.pr54, i64 16 ; 2 uses
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.o
  %i.hy = load i64, ptr %i.hw, align 8, !tbaa !28
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hz) #30
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr54, i64 noundef 32) #30
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit, %_ZN4dmlc11LogCheck_EQImjEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, %bb.n, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.ia = load ptr, ptr %i.bn, align 8, !tbaa !1402, !nonnull !198, !align !199 ; 3 uses
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !29
  %i.ic = mul i64 %i.ib, %i.ar
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !29
end_hunk_3
