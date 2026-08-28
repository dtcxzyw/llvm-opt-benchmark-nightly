Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/quantile?download=true
inline.NumInlined: 5688
inline.NumDeleted: 1647
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm:bb.a
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !154
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.dc) #31
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8, !tbaa !166
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !165
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.dd, ptr %i.a, align 8, !tbaa !154
  br label %_ZSt4fillIPmmEvT_S1_RKT0_.exit

_ZSt4fillIPmmEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block135, %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN7xgboost6common19HostSketchContainer15PushRowPageImplINS_4data22SparsePageAdapterBatchEZNS1_11PushRowPageERKNS_10SparsePageERKNS_8MetaInfoENS0_4SpanIKfLm18446744073709551615EEEE3$_0EEvRKT_mNS0_15OptionalWeightsEmmbT0_ENKUlmE_clEm"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i64 noundef range(i64 0, -1) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.xgboost::data::COOTuple", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !950  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !952, !nonnull !49, !align !864
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %1 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !93   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !93   ; 3 uses
  %i.i = icmp ult i32 %i.f, %i.h
  br i1 %i.i, label %bb.b, label %.loopexit59

bb.b:                                             ; preds = %bb.a
  %i.j = zext i32 %i.h to i64                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !953, !nonnull !49, !align !864
  %i.m = load i64, ptr %i.l, align 8, !tbaa !60
  %.not = icmp ult i64 %i.m, %i.j
  br i1 %.not, label %.loopexit59, label %.preheader58

.preheader58:                                     ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !954, !nonnull !49, !align !864 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !136
  %.not68 = icmp ult i64 %i.p, 2
  br i1 %.not68, label %.loopexit59, label %.lr.ph67

.lr.ph67:                                         ; preds = %.preheader58
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.y = zext i32 %i.f to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph67, %.loopexit
  %i.z = phi ptr [ %i.o, %.lr.ph67 ], [ %i.ea, %.loopexit ] ; 2 uses
  %.03765 = phi i64 [ 0, %.lr.ph67 ], [ %i.dz, %.loopexit ] ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !233, !noalias !955
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.03765 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !60, !noalias !955 ; 2 uses
  %i.af = load i64, ptr %i.ac, align 8, !tbaa !60, !noalias !955 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !237, !noalias !955 ; 2 uses
  %i.ai = icmp ne ptr %i.ah, null
  %i.aj = icmp eq i64 %i.ae, %i.af                ; 2 uses
  %i.ak = or i1 %i.aj, %i.ai
  br i1 %i.ak, label %_ZNK7xgboost4data22SparsePageAdapterBatch7GetLineEm.exit, label %bb.d, !prof !57

bb.d:                                             ; preds = %bb.c
  call void @_ZSt9terminatev() #32, !noalias !955
  unreachable

_ZNK7xgboost4data22SparsePageAdapterBatch7GetLineEm.exit: ; preds = %bb.c
  %i.al = sub i64 %i.ae, %i.af
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.af ; 2 uses
  %i.an = load ptr, ptr %i.q, align 8, !tbaa !958, !nonnull !49, !align !864 ; 3 uses
  %i.ao = load ptr, ptr %i.r, align 8, !tbaa !959, !nonnull !49, !align !864
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !60
  %i.aq = add i64 %i.ap, %.03765                  ; 2 uses
  %i.ar = load i64, ptr %i.an, align 8, !tbaa !490 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK7xgboost4data22SparsePageAdapterBatch7GetLineEm.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  br label %_ZNK7xgboost6common15OptionalWeightsixEm.exit

bb.f:                                             ; preds = %_ZNK7xgboost4data22SparsePageAdapterBatch7GetLineEm.exit
  %i.au = icmp ult i64 %i.aq, %i.ar
  br i1 %i.au, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i, label %bb.g, !prof !57

bb.g:                                             ; preds = %bb.f
  call void @_ZSt9terminatev() #32
  unreachable

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i: ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !492
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.aq
  br label %_ZNK7xgboost6common15OptionalWeightsixEm.exit

_ZNK7xgboost6common15OptionalWeightsixEm.exit:    ; preds = %bb.e, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i
  %.in.i = phi ptr [ %i.at, %bb.e ], [ %i.ax, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EEixEm.exit.i ]
  %i.ay = load float, ptr %.in.i, align 4, !tbaa !58 ; 6 uses
  %i.az = load ptr, ptr %i.s, align 8, !tbaa !960, !nonnull !49
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !101, !range !48, !noundef !49
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %.lr.ph63, label %.preheader

.preheader:                                       ; preds = %_ZNK7xgboost6common15OptionalWeightsixEm.exit
  br i1 %i.aj, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bc = fcmp oeq float %i.ay, 0.000000e+00
  br label %bb.s

.lr.ph63:                                         ; preds = %_ZNK7xgboost6common15OptionalWeightsixEm.exit
  %i.bd = fcmp oeq float %i.ay, 0.000000e+00
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph63, %_ZN7xgboost6common15WQuantileSketch4PushEff.exit
  %.03862 = phi i64 [ %i.y, %.lr.ph63 ], [ %i.cw, %_ZN7xgboost6common15WQuantileSketch4PushEff.exit ] ; 6 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.03862
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !961, !noalias !962 ; 6 uses
  %i.bh = load ptr, ptr %i.w, align 8, !tbaa !192 ; 2 uses
  %i.bi = load ptr, ptr %i.v, align 8, !tbaa !186 ; 3 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bl, %i.bk
  %i.bn = icmp ugt i64 %i.bm, %.03862
  br i1 %i.bn, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit, label %bb.j, !prof !57

bb.j:                                             ; preds = %bb.i
  call void @_ZSt9terminatev() #32
  unreachable

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit: ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.03862
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !176
  %i.bq = icmp eq i8 %i.bp, 1
  br i1 %i.bq, label %bb.k, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread

bb.k:                                             ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit
  %i.br = load ptr, ptr %i.x, align 8, !tbaa !173
  %i.bs = getelementptr inbounds nuw [48 x i8], ptr %i.br, i64 %.03862 ; 4 uses
  %i.bt = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  store float %i.bg, ptr %i.bu, align 4, !tbaa !58
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 3 uses
  %.02021.i.i = load ptr, ptr %i.bv, align 8, !tbaa !854 ; 2 uses
  %.not22.i.i = icmp eq ptr %.02021.i.i, null
  br i1 %.not22.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %.lr.ph.i.i
  %.02023.i.i = phi ptr [ %.020.i.i, %.lr.ph.i.i ], [ %.02021.i.i, %bb.k ] ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.02023.i.i, i64 32
  %i.by = load float, ptr %i.bx, align 4, !tbaa !58 ; 2 uses
  %i.bz = fcmp olt float %i.bg, %i.by             ; 2 uses
  %.in.v.i.i = select i1 %i.bz, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02023.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !854 ; 2 uses
  %.not.i.i = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !965

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  br i1 %i.bz, label %._crit_edge.thread.i.i, label %bb.m

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.k
  %.019.lcssa28.i.i.a = phi ptr [ %.02023.i.i, %._crit_edge.i.i ], [ %i.bw, %bb.k ] ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !160
  %i.cc = icmp eq ptr %.019.lcssa28.i.i.a, %i.cb
  br i1 %i.cc, label %bb.n, label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread.i.i
  %i.cd = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa28.i.i.a) #33
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !58
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i
  %i.ce = phi float [ %.pre.i, %bb.l ], [ %i.by, %._crit_edge.i.i ]
  %.019.lcssa27.i.i = phi ptr [ %.019.lcssa28.i.i.a, %bb.l ], [ %.02023.i.i, %._crit_edge.i.i ]
  %i.cf = fcmp olt float %i.ce, %i.bg
  br i1 %i.cf, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m, %._crit_edge.thread.i.i
  %.sroa.4.0.i.ph.i = phi ptr [ %.019.lcssa27.i.i, %bb.m ], [ %.019.lcssa28.i.i.a, %._crit_edge.thread.i.i ] ; 3 uses
  %i.cg = icmp eq ptr %.sroa.4.0.i.ph.i, %i.bw
  br i1 %i.cg, label %.thread24.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i, i64 32
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !58
  %i.cj = fcmp olt float %i.bg, %i.ci
  br label %.thread24.i

.thread24.i:                                      ; preds = %bb.o, %bb.n
  %i.ck = phi i1 [ %i.cj, %bb.o ], [ true, %bb.n ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ck, ptr noundef nonnull %i.bt, ptr noundef nonnull %.sroa.4.0.i.ph.i, ptr noundef nonnull align 8 dereferenceable(32) %i.bw) #15
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bs, i64 40 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !301
  %i.cn = add i64 %i.cm, 1
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !301
  br label %_ZN7xgboost6common15WQuantileSketch4PushEff.exit

bb.p:                                             ; preds = %bb.m
  call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef 40) #31
  br label %_ZN7xgboost6common15WQuantileSketch4PushEff.exit

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread: ; preds = %bb.h, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit
  %i.co = load ptr, ptr %i.b, align 8, !tbaa !168
  %i.cp = getelementptr inbounds nuw [168 x i8], ptr %i.co, i64 %.03862 ; 6 uses
  br i1 %i.bd, label %_ZN7xgboost6common15WQuantileSketch4PushEff.exit, label %bb.q

bb.q:                                             ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 160 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !534
  %i.cs = add i64 %i.cr, 1
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !534
  %i.ct = call noundef zeroext i1 @_ZN7xgboost6common5QueueIffE4PushEff(ptr noundef nonnull align 8 dereferenceable(168) %i.cp, float noundef %i.bg, float noundef %i.ay)
  br i1 %i.ct, label %_ZN7xgboost6common15WQuantileSketch4PushEff.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cp, i64 88 ; 2 uses
  call void @_ZN7xgboost6common5QueueIffE10PopSummaryINS0_18WQSummaryContainerEEEvPT_(ptr noundef nonnull align 8 dereferenceable(168) %i.cp, ptr noundef nonnull %i.cu)
  call void @_ZN7xgboost6common15WQuantileSketch11PushSummaryEPNS0_18WQSummaryContainerE(ptr noundef nonnull align 8 dereferenceable(168) %i.cp, ptr noundef nonnull %i.cu)
  %i.cv = call noundef zeroext i1 @_ZN7xgboost6common5QueueIffE4PushEff(ptr noundef nonnull align 8 dereferenceable(168) %i.cp, float noundef %i.bg, float noundef %i.ay) ; 0 uses
  br label %_ZN7xgboost6common15WQuantileSketch4PushEff.exit

_ZN7xgboost6common15WQuantileSketch4PushEff.exit: ; preds = %bb.p, %.thread24.i, %bb.r, %bb.q, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit.thread
  %i.cw = add nuw nsw i64 %.03862, 1              ; 2 uses
  %exitcond72.not = icmp eq i64 %i.cw, %i.j
  br i1 %exitcond72.not, label %.loopexit, label %bb.h, !llvm.loop !966

bb.s:                                             ; preds = %.lr.ph, %_ZN7xgboost6common15WQuantileSketch4PushEff.exit46
  %.061 = phi i64 [ 0, %.lr.ph ], [ %i.dy, %_ZN7xgboost6common15WQuantileSketch4PushEff.exit46 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.experimental.noalias.scope.decl(metadata !967)
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.061 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !239, !noalias !967 ; 3 uses
  %i.cz = zext i32 %i.cy to i64                   ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.db = load float, ptr %i.da, align 4, !tbaa !961, !noalias !967 ; 3 uses
  store i64 %.03765, ptr %2, align 8, !tbaa !970, !alias.scope !967
  store i64 %i.cz, ptr %i.t, align 8, !tbaa !972, !alias.scope !967
  store float %i.db, ptr %i.u, align 8, !tbaa !973, !alias.scope !967
  %.not43 = icmp uge i32 %i.cy, %i.f
  %i.dc = icmp ult i32 %i.cy, %i.h
  %or.cond = and i1 %.not43, %i.dc
  br i1 %or.cond, label %bb.t, label %_ZN7xgboost6common15WQuantileSketch4PushEff.exit46

bb.t:                                             ; preds = %bb.s
  %i.dd = load ptr, ptr %i.w, align 8, !tbaa !192 ; 2 uses
  %i.de = load ptr, ptr %i.v, align 8, !tbaa !186 ; 3 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit45.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = ptrtoint ptr %i.dd to i64
  %i.di = sub i64 %i.dh, %i.dg
  %i.dj = icmp ugt i64 %i.di, %i.cz
  br i1 %i.dj, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit45, label %bb.v, !prof !57

bb.v:                                             ; preds = %bb.u
  call void @_ZSt9terminatev() #32
  unreachable

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit45: ; preds = %bb.u
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.cz
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !176
  %i.dm = icmp eq i8 %i.dl, 1
  br i1 %i.dm, label %bb.w, label %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit45.thread

bb.w:                                             ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit45
  %i.dn = load ptr, ptr %i.x, align 8, !tbaa !173
  %i.do = getelementptr inbounds nuw [48 x i8], ptr %i.dn, i64 %i.cz
  %i.dp = call { ptr, i8 } @_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE17_M_emplace_uniqueIJRKfEEESt4pairISt17_Rb_tree_iteratorIfEbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.do, ptr noundef nonnull align 4 dereferenceable(4) %i.u) ; 0 uses
  br label %_ZN7xgboost6common15WQuantileSketch4PushEff.exit46

_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit45.thread: ; preds = %bb.t, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit45
  %i.dq = load ptr, ptr %i.b, align 8, !tbaa !168
  %i.dr = getelementptr inbounds nuw [168 x i8], ptr %i.dq, i64 %i.cz ; 6 uses
  br i1 %i.bc, label %_ZN7xgboost6common15WQuantileSketch4PushEff.exit46, label %bb.x

bb.x:                                             ; preds = %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit45.thread
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 160 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !534
  %i.du = add i64 %i.dt, 1
  store i64 %i.du, ptr %i.ds, align 8, !tbaa !534
  %i.dv = call noundef zeroext i1 @_ZN7xgboost6common5QueueIffE4PushEff(ptr noundef nonnull align 8 dereferenceable(168) %i.dr, float noundef %i.db, float noundef %i.ay)
  br i1 %i.dv, label %_ZN7xgboost6common15WQuantileSketch4PushEff.exit46, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 88 ; 2 uses
  call void @_ZN7xgboost6common5QueueIffE10PopSummaryINS0_18WQSummaryContainerEEEvPT_(ptr noundef nonnull align 8 dereferenceable(168) %i.dr, ptr noundef nonnull %i.dw)
  call void @_ZN7xgboost6common15WQuantileSketch11PushSummaryEPNS0_18WQSummaryContainerE(ptr noundef nonnull align 8 dereferenceable(168) %i.dr, ptr noundef nonnull %i.dw)
  %i.dx = call noundef zeroext i1 @_ZN7xgboost6common5QueueIffE4PushEff(ptr noundef nonnull align 8 dereferenceable(168) %i.dr, float noundef %i.db, float noundef %i.ay) ; 0 uses
  br label %_ZN7xgboost6common15WQuantileSketch4PushEff.exit46

_ZN7xgboost6common15WQuantileSketch4PushEff.exit46: ; preds = %bb.y, %bb.x, %_ZN7xgboost6common5IsCatENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEj.exit45.thread, %bb.w, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.dy = add nuw i64 %.061, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.dy, %i.al
  br i1 %exitcond.not, label %.loopexit, label %bb.s, !llvm.loop !974

.loopexit:                                        ; preds = %_ZN7xgboost6common15WQuantileSketch4PushEff.exit46, %_ZN7xgboost6common15WQuantileSketch4PushEff.exit, %.preheader
  %i.dz = add nuw i64 %.03765, 1                  ; 2 uses
  %i.ea = load ptr, ptr %i.n, align 8, !tbaa !954, !nonnull !49, !align !864 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !136
  %spec.select.i.i = call noundef i64 @llvm.usub.sat.i64(i64 %i.eb, i64 1)
  %i.ec = icmp ult i64 %i.dz, %spec.select.i.i
  br i1 %i.ec, label %bb.c, label %.loopexit59, !llvm.loop !975

.loopexit59:                                      ; preds = %.loopexit, %.preheader58, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE17_M_emplace_uniqueIJRfEEESt4pairISt17_Rb_tree_iteratorIfEbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load float, ptr %1, align 4, !tbaa !58   ; 4 uses
  store float %i.c, ptr %i.b, align 4, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02021.i = load ptr, ptr %i.d, align 8, !tbaa !854 ; 2 uses
  %.not22.i = icmp eq ptr %.02021.i, null
  br i1 %.not22.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.02023.i = phi ptr [ %.020.i, %.lr.ph.i ], [ %.02021.i, %bb.a ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02023.i, i64 32
  %i.g = load float, ptr %i.f, align 4, !tbaa !58 ; 2 uses
  %i.h = fcmp olt float %i.c, %i.g                ; 2 uses
  %.in.v.i = select i1 %i.h, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02023.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !854 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !965

._crit_edge.i:                                    ; preds = %.lr.ph.i
  br i1 %i.h, label %._crit_edge.thread.i, label %bb.c

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.019.lcssa28.i.a = phi ptr [ %.02023.i, %._crit_edge.i ], [ %i.e, %bb.a ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !160
  %i.k = icmp eq ptr %.019.lcssa28.i.a, %i.j
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread.i
  %i.l = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa28.i.a) #33 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !58
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i
  %i.m = phi float [ %.pre, %bb.b ], [ %i.g, %._crit_edge.i ]
  %.019.lcssa27.i = phi ptr [ %.019.lcssa28.i.a, %bb.b ], [ %.02023.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.l, %bb.b ], [ %.02023.i, %._crit_edge.i ]
  %i.n = fcmp olt float %i.m, %i.c
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge.thread.i, %bb.c
  %.sroa.4.0.i.ph = phi ptr [ %.019.lcssa27.i, %bb.c ], [ %.019.lcssa28.i.a, %._crit_edge.thread.i ] ; 3 uses
  %i.o = icmp eq ptr %.sroa.4.0.i.ph, %i.e
  br i1 %i.o, label %.thread24, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.q = load float, ptr %i.p, align 4, !tbaa !58
  %i.r = fcmp olt float %i.c, %i.q
  br label %.thread24

.thread24:                                        ; preds = %bb.d, %bb.e
  %i.s = phi i1 [ %i.r, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.s, ptr noundef nonnull %i.a, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.e) #15
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !301
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !301
  br label %_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE10_Auto_nodeD2Ev.exit

bb.f:                                             ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #31
  br label %_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE10_Auto_nodeD2Ev.exit: ; preds = %.thread24, %bb.f
  %.sroa.3.030 = phi i8 [ 1, %.thread24 ], [ 0, %bb.f ]
  %.sroa.016.029 = phi ptr [ %i.a, %.thread24 ], [ %.sroa.05.0.i, %bb.f ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.016.029, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.030, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #21

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7xgboost6common5QueueIffE4PushEff(ptr noundef nonnull align 8 dereferenceable(32) %0, float noundef %1, float noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !930    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !930  ; 7 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.f = load float, ptr %i.e, align 4, !tbaa !976
  %i.g = fcmp une float %i.f, %1
  br i1 %i.g, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.i = ptrtoint ptr %i.a to i64                 ; 5 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp eq i64 %i.j, 8
  br i1 %i.k, label %bb.d, label %_ZNSt6vectorISt4pairIffESaIS1_EE7reserveEm.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !911
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.i                       ; 2 uses
  %i.p = lshr exact i64 %i.o, 3
  %i.q = icmp eq i64 %i.o, 8
  br i1 %i.q, label %bb.e, label %_ZNSt6vectorISt4pairIffESaIS1_EE7reserveEm.exit

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !915  ; 4 uses
  %i.t = icmp ugt i64 %i.s, 1152921504606846975
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #29
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.u = icmp samesign ult i64 %i.p, %i.s
  br i1 %i.u, label %_ZNSt12_Vector_baseISt4pairIffESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt4pairIffESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseISt4pairIffESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.g
  %i.v = shl nuw nsw i64 %i.s, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #30 ; 9 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !910    ; 8 uses
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !916  ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt4pairIffESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseISt4pairIffESaIS1_EE11_M_allocateEm.exit.i
  %i.z = ptrtoaddr ptr %i.x to i64                ; 2 uses
  %i.aa = ptrtoaddr ptr %i.w to i64
  %i.ab = ptrtoaddr ptr %i.y to i64
  %i.ac = add i64 %i.ab, -8
  %i.ad = sub i64 %i.ac, %i.z                     ; 2 uses
  %i.ae = lshr i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ad, 72
  %i.ag = sub i64 %i.z, %i.aa
  %diff.check = icmp ugt i64 %i.ag, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader40, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.af, 4611686018427387900     ; 3 uses
  %i.ah = shl i64 %n.vec, 3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.w, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.x, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ak ; 2 uses
  %next.gep18 = getelementptr i8, ptr %i.x, i64 %i.ak ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !981)
  %i.al = getelementptr i8, ptr %next.gep18, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep18, align 4, !alias.scope !981, !noalias !978
  %wide.load19 = load <2 x i64>, ptr %i.al, align 4, !alias.scope !981, !noalias !978
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !978, !noalias !981
  store <2 x i64> %wide.load19, ptr %i.am, align 4, !alias.scope !978, !noalias !981
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !983

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIffESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader40

.lr.ph.i.i.i.i.preheader40:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.w, %.lr.ph.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader40, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader40 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader40 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !981)
  %i.ao = load i64, ptr %.0911.i.i.i.i, align 4, !alias.scope !981, !noalias !978
  store i64 %i.ao, ptr %.012.i.i.i.i, align 4, !alias.scope !978, !noalias !981
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.y
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairIffESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !984

_ZNSt6vectorISt4pairIffESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseISt4pairIffESaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.x, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt4pairIffESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt4pairIffESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.ar = load ptr, ptr %i.l, align 8, !tbaa !911
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.x to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.au) #31
  br label %_ZNSt12_Vector_baseISt4pairIffESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseISt4pairIffESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.h, %_ZNSt6vectorISt4pairIffESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !910
  %i.av = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  store ptr %i.av, ptr %i.b, align 8, !tbaa !916
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.s
  store ptr %i.aw, ptr %i.l, align 8, !tbaa !911
  %.pre = ptrtoint ptr %i.av to i64
  %.pre7 = ptrtoint ptr %i.w to i64
  br label %_ZNSt6vectorISt4pairIffESaIS1_EE7reserveEm.exit

_ZNSt6vectorISt4pairIffESaIS1_EE7reserveEm.exit:  ; preds = %bb.g, %bb.d, %bb.c, %_ZNSt12_Vector_baseISt4pairIffESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %.pre-phi8 = phi i64 [ %.pre7, %_ZNSt12_Vector_baseISt4pairIffESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.i, %bb.c ], [ %i.i, %bb.d ], [ %i.i, %bb.g ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre, %_ZNSt12_Vector_baseISt4pairIffESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.h, %bb.c ], [ %i.h, %bb.d ], [ %i.h, %bb.g ]
  %i.ax = phi ptr [ %i.av, %_ZNSt12_Vector_baseISt4pairIffESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ %i.c, %bb.g ] ; 7 uses
  %i.ay = phi ptr [ %i.w, %_ZNSt12_Vector_baseISt4pairIffESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.a, %bb.c ], [ %i.a, %bb.d ], [ %i.a, %bb.g ] ; 7 uses
  %i.az = ptrtoaddr ptr %i.ay to i64              ; 2 uses
  %i.ba = sub i64 %.pre-phi, %.pre-phi8           ; 3 uses
  %i.bb = ashr exact i64 %i.ba, 3                 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !915
  %i.be = icmp eq i64 %i.bb, %i.bd
  br i1 %i.be, label %_ZNSt6vectorISt4pairIffESaIS1_EE12emplace_backIJRfS5_EEERS1_DpOT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt4pairIffESaIS1_EE7reserveEm.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !911
  %.not.i = icmp eq ptr %i.ax, %i.bg
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store float %1, ptr %i.ax, align 4, !tbaa !976
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store float %2, ptr %i.bh, align 4, !tbaa !985
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.bi, ptr %i.b, align 8, !tbaa !916
  br label %_ZNSt6vectorISt4pairIffESaIS1_EE12emplace_backIJRfS5_EEERS1_DpOT_.exit

bb.k:                                             ; preds = %bb.i
  %i.bj = icmp eq i64 %i.ba, 9223372036854775800
  br i1 %i.bj, label %bb.l, label %_ZNKSt6vectorISt4pairIffESaIS1_EE12_M_check_lenEmPKc.exit.i.i
end_hunk_0
begin_hunk_1_@_ZN7xgboost6common9WQSummaryIffE10SetCombineERKS2_PSt6vectorINS2_5EntryESaIS6_EE:bb.a
  %i.gs = icmp eq ptr %i.gr, %i.fv
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %bb.ar
  %i.gt = load i64, ptr %i.fv, align 8, !tbaa !65
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gu) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175, %bb.ao
  %.pn119.pn = phi { ptr, i32 } [ %i.go, %bb.ao ], [ %.pn119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175 ], [ %.pn119, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.bd

bb.as:                                            ; preds = %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNK7xgboost6common9WQSummaryIffE8FixErrorEPfS3_S3_.exit
  %i.gv = load i64, ptr %i.j, align 8, !tbaa !565
  %i.gw = load i64, ptr %i.e, align 8, !tbaa !565
  %i.gx = add i64 %i.gw, %i.gv
  %.not122 = icmp ugt i64 %i.ew, %i.gx
  br i1 %.not122, label %bb.at, label %bb.ax, !prof !55

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.gy = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.noexc178 unwind label %bb.au

.noexc178:                                        ; preds = %bb.at
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.gy, ptr noundef nonnull @.str.17, i32 noundef 429)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit180 unwind label %bb.au

_ZN4dmlc15LogMessageFatalC2EPKci.exit180:         ; preds = %.noexc178
  %i.gz = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit182 unwind label %bb.av ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit182: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit180
  %i.ha = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gz, ptr noundef nonnull @.str.89, i64 noundef 91)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit184 unwind label %bb.av ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit184: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit182
  %i.hb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gz, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit186 unwind label %bb.av ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit186: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit184
  %i.hc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gz, ptr noundef nonnull @.str.90, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit188 unwind label %bb.av ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit188: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit186
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %.thread246 unwind label %bb.au

.thread246:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit188
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %bb.ay

bb.au:                                            ; preds = %.noexc178, %bb.at, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit188
  %i.hd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.av:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit186, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit184, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit182, %_ZN4dmlc15LogMessageFatalC2EPKci.exit180
  %i.he = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.aw unwind label %bb.bh

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.pn123 = phi { ptr, i32 } [ %i.hd, %bb.au ], [ %i.he, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %bb.bd

bb.ax:                                            ; preds = %bb.as
  br i1 %.not.i162, label %_ZSt6copy_nIPN7xgboost6common9WQSummaryIffE5EntryEmS5_ET1_T_T0_S6_.exit, label %bb.ay

bb.ay:                                            ; preds = %.thread246, %bb.ax
  %i.hf = load ptr, ptr %i.bl, align 8, !tbaa !566 ; 2 uses
  %.not.i189 = icmp eq i64 %i.ev, 16
  br i1 %.not.i189, label %bb.ba, label %bb.az, !prof !55

bb.az:                                            ; preds = %bb.ay
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.hf, ptr align 4 %i.bh, i64 %i.ev, i1 false)
  br label %_ZSt6copy_nIPN7xgboost6common9WQSummaryIffE5EntryEmS5_ET1_T_T0_S6_.exit

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hf, ptr noundef nonnull align 4 dereferenceable(16) %i.bh, i64 16, i1 false), !tbaa.struct !748
  br label %_ZSt6copy_nIPN7xgboost6common9WQSummaryIffE5EntryEmS5_ET1_T_T0_S6_.exit

_ZSt6copy_nIPN7xgboost6common9WQSummaryIffE5EntryEmS5_ET1_T_T0_S6_.exit: ; preds = %bb.ax, %bb.ba, %bb.az
  store i64 %i.ew, ptr %i.j, align 8, !tbaa !565
  %i.hg = load ptr, ptr %7, align 8, !tbaa !555   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7xgboost6common9WQSummaryIffE5EntryESaIS4_EED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZSt6copy_nIPN7xgboost6common9WQSummaryIffE5EntryEmS5_ET1_T_T0_S6_.exit
  %i.hh = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !556
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = ptrtoint ptr %i.hg to i64
  %i.hl = sub i64 %i.hj, %i.hk
  call void @_ZdlPvm(ptr noundef nonnull %i.hg, i64 noundef %i.hl) #31
  br label %_ZNSt6vectorIN7xgboost6common9WQSummaryIffE5EntryESaIS4_EED2Ev.exit

_ZNSt6vectorIN7xgboost6common9WQSummaryIffE5EntryESaIS4_EED2Ev.exit: ; preds = %_ZSt6copy_nIPN7xgboost6common9WQSummaryIffE5EntryEmS5_ET1_T_T0_S6_.exit, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.bc

bb.bc:                                            ; preds = %bb.a, %_ZNSt6vectorIN7xgboost6common9WQSummaryIffE5EntryESaIS4_EED2Ev.exit, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, %bb.c
  ret void

bb.bd:                                            ; preds = %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, %bb.aw, %bb.t
  %.pn125.pn = phi { ptr, i32 } [ %i.bf, %bb.t ], [ %i.gn, %bb.an ], [ %.pn123, %bb.aw ], [ %.pn119.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177 ]
  %i.hm = load ptr, ptr %7, align 8, !tbaa !555   ; 3 uses
  %.not.i.i.i190 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i.i190, label %_ZNSt6vectorIN7xgboost6common9WQSummaryIffE5EntryESaIS4_EED2Ev.exit191, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hn = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !556
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = ptrtoint ptr %i.hm to i64
  %i.hr = sub i64 %i.hp, %i.hq
  call void @_ZdlPvm(ptr noundef nonnull %i.hm, i64 noundef %i.hr) #31
  br label %_ZNSt6vectorIN7xgboost6common9WQSummaryIffE5EntryESaIS4_EED2Ev.exit191

_ZNSt6vectorIN7xgboost6common9WQSummaryIffE5EntryESaIS4_EED2Ev.exit191: ; preds = %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIN7xgboost6common9WQSummaryIffE5EntryESaIS4_EED2Ev.exit191, %bb.p
  %.pn125.pn.pn = phi { ptr, i32 } [ %.pn125.pn, %_ZNSt6vectorIN7xgboost6common9WQSummaryIffE5EntryESaIS4_EED2Ev.exit191 ], [ %.pn, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.i
  %.pn129.pn = phi { ptr, i32 } [ %.pn129, %bb.i ], [ %.pn125.pn.pn, %bb.bf ]
  resume { ptr, i32 } %.pn129.pn

bb.bh:                                            ; preds = %bb.av, %bb.o, %bb.h
  %i.hs = landingpad { ptr, i32 }
          catch ptr null
  %i.ht = extractvalue { ptr, i32 } %i.hs, 0
  call void @__clang_call_terminate(ptr %i.ht) #32
  unreachable
}

declare noundef zeroext i1 @_ZN7xgboost13ConsoleLogger9ShouldLogENS0_12LogVerbosityE(i32 noundef) local_unnamed_addr #7

declare void @_ZN7xgboost13ConsoleLoggerC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiNS0_12LogVerbosityE(ptr noundef nonnull align 8 dereferenceable(380), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN7xgboost13ConsoleLoggerD1Ev(ptr noundef nonnull align 8 dead_on_return(380) dereferenceable(380)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE17_M_emplace_uniqueIJRKfEEESt4pairISt17_Rb_tree_iteratorIfEbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load float, ptr %1, align 4, !tbaa !58   ; 4 uses
  store float %i.c, ptr %i.b, align 4, !tbaa !58
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02021.i = load ptr, ptr %i.d, align 8, !tbaa !854 ; 2 uses
  %.not22.i = icmp eq ptr %.02021.i, null
  br i1 %.not22.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.02023.i = phi ptr [ %.020.i, %.lr.ph.i ], [ %.02021.i, %bb.a ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02023.i, i64 32
  %i.g = load float, ptr %i.f, align 4, !tbaa !58 ; 2 uses
  %i.h = fcmp olt float %i.c, %i.g                ; 2 uses
  %.in.v.i = select i1 %i.h, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02023.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !854 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !965

._crit_edge.i:                                    ; preds = %.lr.ph.i
  br i1 %i.h, label %._crit_edge.thread.i, label %bb.c

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.019.lcssa28.i.a = phi ptr [ %.02023.i, %._crit_edge.i ], [ %i.e, %bb.a ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !160
  %i.k = icmp eq ptr %.019.lcssa28.i.a, %i.j
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread.i
  %i.l = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa28.i.a) #33 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !58
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i
  %i.m = phi float [ %.pre, %bb.b ], [ %i.g, %._crit_edge.i ]
  %.019.lcssa27.i = phi ptr [ %.019.lcssa28.i.a, %bb.b ], [ %.02023.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.l, %bb.b ], [ %.02023.i, %._crit_edge.i ]
  %i.n = fcmp olt float %i.m, %i.c
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %._crit_edge.thread.i, %bb.c
  %.sroa.4.0.i.ph = phi ptr [ %.019.lcssa27.i, %bb.c ], [ %.019.lcssa28.i.a, %._crit_edge.thread.i ] ; 3 uses
  %i.o = icmp eq ptr %.sroa.4.0.i.ph, %i.e
  br i1 %i.o, label %.thread24, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.q = load float, ptr %i.p, align 4, !tbaa !58
  %i.r = fcmp olt float %i.c, %i.q
  br label %.thread24

.thread24:                                        ; preds = %bb.d, %bb.e
  %i.s = phi i1 [ %i.r, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.s, ptr noundef nonnull %i.a, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.e) #15
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !301
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !301
  br label %_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE10_Auto_nodeD2Ev.exit

bb.f:                                             ; preds = %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #31
  br label %_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE10_Auto_nodeD2Ev.exit: ; preds = %.thread24, %bb.f
  %.sroa.3.030 = phi i8 [ 1, %.thread24 ], [ 0, %bb.f ]
  %.sroa.016.029 = phi ptr [ %i.a, %.thread24 ], [ %.sroa.05.0.i, %bb.f ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.016.029, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.030, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common11LoadBalanceINS_4data17ArrayAdapterBatchERNS2_14IsValidFunctorEEESt6vectorIjSaIjEERKT_mjmOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.26") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %2, i32 noundef %3, i64 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::vector.15", align 8    ; 10 uses
  %i.b = alloca i64, align 8                      ; 9 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %8 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %2, ptr %i.a, align 8, !tbaa !60
  %i.c = uitofp i64 %2 to double
  %i.d = uitofp i64 %4 to double
  %i.e = fdiv double %i.c, %i.d
  %i.f = tail call double @llvm.ceil.f64(double %i.e)
  %i.g = fptoui double %i.f to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @_ZN7xgboost6common14CalcColumnSizeINS_4data17ArrayAdapterBatchERNS2_14IsValidFunctorEEESt6vectorImSaImEERKT_jmOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.15") align 8 %6, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %3, i64 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %i.h = add i64 %4, 1                            ; 4 uses
  %i.i = icmp ugt i64 %i.h, 2305843009213693951
  br i1 %i.i, label %bb.b, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #29
          to label %.noexc33 unwind label %bb.d

.noexc33:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = shl nuw nsw i64 %i.h, 2                  ; 3 uses
  %i.k = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #30
          to label %.noexc34 unwind label %bb.d   ; 5 uses

.noexc34:                                         ; preds = %bb.c
  store ptr %i.k, ptr %0, align 8, !tbaa !92
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.h ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !116
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.k, i8 0, i64 %i.j, i1 false), !tbaa !93
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  %i.o = ptrtoint ptr %i.l to i64
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i, %.noexc34
  %i.p = phi i64 [ %i.o, %.noexc34 ], [ 0, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.q = phi ptr [ %i.k, %.noexc34 ], [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.n, %.noexc34 ], [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.r, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i64 0, ptr %i.b, align 8, !tbaa !60
  %i.s = load ptr, ptr %6, align 8, !tbaa !90     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !90   ; 2 uses
  %.not86 = icmp eq ptr %i.s, %i.u
  %.pre97 = ptrtoint ptr %.0.i.i.i.i.i.i.i to i64
  %.pre98 = ptrtoint ptr %i.q to i64              ; 2 uses
  %.pre100 = sub i64 %.pre97, %.pre98
  %.pre102 = ashr exact i64 %.pre100, 2           ; 6 uses
  br i1 %.not86, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %bb.r, %.loopexit
  %.0.lcssa = phi i64 [ 1, %.loopexit ], [ %.1, %bb.r ] ; 6 uses
  %i.v = add nsw i64 %.pre102, -1                 ; 2 uses
  %i.w = icmp ult i64 %.0.lcssa, %i.v
  br i1 %i.w, label %.lr.ph90.preheader, label %._crit_edge

.lr.ph90.preheader:                               ; preds = %.preheader
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.0.lcssa
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !93 ; 2 uses
  %i.x = xor i64 %.0.lcssa, -1
  %i.y = add i64 %.pre102, %i.x                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.y, 8
  br i1 %min.iters.check, label %.lr.ph90.preheader126, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph90.preheader
  %n.vec = and i64 %i.y, -8                       ; 3 uses
  %i.z = add i64 %.0.lcssa, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.0.lcssa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  store <4 x i32> %broadcast.splat, ptr %i.ac, align 4, !tbaa !93
  store <4 x i32> %broadcast.splat, ptr %i.ad, align 4, !tbaa !93
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !1027

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph90.preheader126

.lr.ph90.preheader126:                            ; preds = %.lr.ph90.preheader, %middle.block
  %.289.ph = phi i64 [ %.0.lcssa, %.lr.ph90.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph90

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

.lr.ph:                                           ; preds = %.loopexit, %bb.r
  %i.ag = phi i64 [ %i.bl, %bb.r ], [ 0, %.loopexit ]
  %.088 = phi i64 [ %.1, %bb.r ], [ 1, %.loopexit ] ; 5 uses
  %.sroa.052.087 = phi ptr [ %i.bm, %bb.r ], [ %i.s, %.loopexit ] ; 2 uses
  %.not.i.i = icmp ult i64 %.088, %.pre102
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.49, i64 noundef %.088, i64 noundef %.pre102) #29
          to label %.noexc35 unwind label %bb.s

.noexc35:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.lr.ph
  %i.ah = load i64, ptr %.sroa.052.087, align 8, !tbaa !60
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.088 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !93
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !93
  %i.al = add i64 %i.ag, %i.ah                    ; 2 uses
  store i64 %i.al, ptr %i.b, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.am = load i64, ptr %i.a, align 8, !tbaa !60, !noalias !1028
  %.not.i = icmp ugt i64 %i.al, %i.am
  br i1 %.not.i, label %bb.g, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN4dmlc11LogCheck_LEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit unwind label %bb.i

_ZN4dmlc11LogCheck_LEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.g
  %.pr = load ptr, ptr %7, align 8, !tbaa !61
  %.not65 = icmp eq ptr %.pr, null
  br i1 %.not65, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4dmlc11LogCheck_LEImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.an = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %.noexc36 unwind label %bb.j

.noexc36:                                         ; preds = %bb.h
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.an, ptr noundef nonnull @.str.17, i32 noundef 829)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.j

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc36
  %i.ao = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.k ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ap = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull @.str.78, i64 noundef 22)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit41: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
end_hunk_1
begin_hunk_2_@_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIN7xgboost6common6detail12SpanIteratorINS4_4SpanIKfLm18446744073709551615EEELb1EEESt20back_insert_iteratorISt6vectorIfSaIfEEEEET0_T_SH_SG_:bb.a
  %i.aj = add nuw i64 %.sroa.4.07, 1
  %i.ak = add nsw i64 %.08, -1
  %i.al = icmp sgt i64 %.08, 1
  br i1 %i.al, label %bb.c, label %._crit_edge, !llvm.loop !1525
}

declare void @_ZN7xgboost10collective8cpu_impl9BroadcastERKNS0_4CommENS_6common4SpanIaLm18446744073709551615EEEi(ptr dead_on_unwind writable sret(%"struct.xgboost::collective::Result") align 8, ptr noundef nonnull align 8 dereferenceable(184), i64, ptr, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE22_M_insert_range_uniqueIN7xgboost6common6detail12SpanIteratorINS8_4SpanIKfLm18446744073709551615EEELb1EEEEENSt9enable_ifIXsr17__same_value_typeIT_EE5valueEvE4typeESG_SG_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, i64 %2, ptr %3, i64 %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne ptr %1, %3
  %.fr = freeze i1 %i.a                           ; 2 uses
  %i.b = icmp ne i64 %2, %4
  %.not8.i13 = select i1 %.fr, i1 true, i1 %i.b
  br i1 %.not8.i13, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.f = load i64, ptr %1, align 8, !tbaa !490    ; 2 uses
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.g = icmp ult i64 %2, %i.f
  br i1 %i.g, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKfLm18446744073709551615EEELb1EEdeEv.exit.us, label %.split.us, !prof !1526

bb.b:                                             ; preds = %_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE17_M_insert_unique_IRKfNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIfESt23_Rb_tree_const_iteratorIfEOT_RT0_.exit.us
  %i.h = add nuw i64 %.sroa.4.014.us17, 1         ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.z
  br i1 %i.i, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKfLm18446744073709551615EEELb1EEdeEv.exit.us, label %.split.us, !prof !1527

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKfLm18446744073709551615EEELb1EEdeEv.exit.us: ; preds = %.lr.ph.split.us, %bb.b
  %.sroa.4.014.us17 = phi i64 [ %i.h, %bb.b ], [ %2, %.lr.ph.split.us ] ; 3 uses
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !492
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.sroa.4.014.us17 ; 3 uses
  %i.l = tail call { ptr, ptr } @_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIfERKf(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nonnull %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.k) ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.l, 1        ; 4 uses
  %.not.i.us = icmp eq ptr %i.m, null
  br i1 %.not.i.us, label %_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE17_M_insert_unique_IRKfNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIfESt23_Rb_tree_const_iteratorIfEOT_RT0_.exit.us, label %bb.c

bb.c:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKfLm18446744073709551615EEELb1EEdeEv.exit.us
  %i.n = extractvalue { ptr, ptr } %i.l, 0
  %.not.i.i.us = icmp ne ptr %i.n, null
  %i.o = icmp eq ptr %i.m, %i.c
  %or.cond.i.i.us = select i1 %.not.i.i.us, i1 true, i1 %i.o
  br i1 %or.cond.i.i.us, label %_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE10_M_insert_IRKfNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIfEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.q = load float, ptr %i.k, align 4, !tbaa !58
  %i.r = load float, ptr %i.p, align 4, !tbaa !58
  %i.s = fcmp olt float %i.q, %i.r
  br label %_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE10_M_insert_IRKfNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIfEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.us

_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE10_M_insert_IRKfNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIfEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.us: ; preds = %bb.d, %bb.c
  %i.t = phi i1 [ %i.s, %bb.d ], [ true, %bb.c ]
  %i.u = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load float, ptr %i.k, align 4, !tbaa !58
  store float %i.w, ptr %i.v, align 4, !tbaa !58
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.t, ptr noundef nonnull %i.u, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #15
  %i.x = load i64, ptr %i.e, align 8, !tbaa !301
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.e, align 8, !tbaa !301
  br label %_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE17_M_insert_unique_IRKfNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIfESt23_Rb_tree_const_iteratorIfEOT_RT0_.exit.us

_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE17_M_insert_unique_IRKfNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIfESt23_Rb_tree_const_iteratorIfEOT_RT0_.exit.us: ; preds = %_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE10_M_insert_IRKfNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIfEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.us, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKfLm18446744073709551615EEELb1EEdeEv.exit.us
  %i.z = load i64, ptr %1, align 8, !tbaa !490    ; 2 uses
  %.not.i6.us = icmp eq i64 %.sroa.4.014.us17, %i.z
  br i1 %.not.i6.us, label %.split16.us, label %bb.b, !prof !55

bb.e:                                             ; preds = %_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE17_M_insert_unique_IRKfNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIfESt23_Rb_tree_const_iteratorIfEOT_RT0_.exit
  %i.aa = add nuw i64 %.sroa.4.014, 1             ; 2 uses
  %.not = icmp eq i64 %i.aa, %4
  br i1 %.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !1528

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.e
  %i.ab = phi i64 [ %i.at, %bb.e ], [ %i.f, %.lr.ph ]
  %.sroa.4.014 = phi i64 [ %i.aa, %bb.e ], [ %2, %.lr.ph ] ; 4 uses
  %i.ac = icmp ult i64 %.sroa.4.014, %i.ab
  br i1 %i.ac, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKfLm18446744073709551615EEELb1EEdeEv.exit, label %.split.us, !prof !57

.split.us:                                        ; preds = %.lr.ph.split, %bb.b, %.lr.ph.split.us
  tail call void @_ZSt9terminatev() #32
  unreachable

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKfLm18446744073709551615EEELb1EEdeEv.exit: ; preds = %.lr.ph.split
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !492
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.sroa.4.014 ; 3 uses
  %i.af = tail call { ptr, ptr } @_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIfERKf(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nonnull %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.ae) ; 2 uses
  %i.ag = extractvalue { ptr, ptr } %i.af, 1      ; 4 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE17_M_insert_unique_IRKfNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIfESt23_Rb_tree_const_iteratorIfEOT_RT0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKfLm18446744073709551615EEELb1EEdeEv.exit
  %i.ah = extractvalue { ptr, ptr } %i.af, 0
  %.not.i.i = icmp ne ptr %i.ah, null
  %i.ai = icmp eq ptr %i.ag, %i.c
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.ai
  br i1 %or.cond.i.i, label %_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE10_M_insert_IRKfNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIfEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ak = load float, ptr %i.ae, align 4, !tbaa !58
  %i.al = load float, ptr %i.aj, align 4, !tbaa !58
  %i.am = fcmp olt float %i.ak, %i.al
  br label %_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE10_M_insert_IRKfNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIfEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i

_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE10_M_insert_IRKfNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIfEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i: ; preds = %bb.g, %bb.f
  %i.an = phi i1 [ %i.am, %bb.g ], [ true, %bb.f ]
  %i.ao = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #30 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load float, ptr %i.ae, align 4, !tbaa !58
  store float %i.aq, ptr %i.ap, align 4, !tbaa !58
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.an, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #15
  %i.ar = load i64, ptr %i.e, align 8, !tbaa !301
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.e, align 8, !tbaa !301
  br label %_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE17_M_insert_unique_IRKfNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIfESt23_Rb_tree_const_iteratorIfEOT_RT0_.exit

_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE17_M_insert_unique_IRKfNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIfESt23_Rb_tree_const_iteratorIfEOT_RT0_.exit: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKfLm18446744073709551615EEELb1EEdeEv.exit, %_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE10_M_insert_IRKfNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIfEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i
  %i.at = load i64, ptr %1, align 8, !tbaa !490   ; 2 uses
  %.not.i6 = icmp eq i64 %.sroa.4.014, %i.at
  br i1 %.not.i6, label %.split16.us, label %bb.e, !prof !55

.split16.us:                                      ; preds = %_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE17_M_insert_unique_IRKfNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIfESt23_Rb_tree_const_iteratorIfEOT_RT0_.exit, %_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE17_M_insert_unique_IRKfNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorIfESt23_Rb_tree_const_iteratorIfEOT_RT0_.exit.us
  tail call void @_ZSt9terminatev() #32
  unreachable

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIfERKf(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !301
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !854  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load float, ptr %i.g, align 4, !tbaa !58
  %i.i = load float, ptr %2, align 4, !tbaa !58
  %i.j = fcmp olt float %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE24_M_get_insert_unique_posERKf.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02021.i = load ptr, ptr %i.k, align 8, !tbaa !854 ; 2 uses
  %.not22.i = icmp eq ptr %.02021.i, null
  br i1 %.not22.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load float, ptr %2, align 4, !tbaa !58   ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02023.i = phi ptr [ %.02021.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02023.i, i64 32
  %i.n = load float, ptr %i.m, align 4, !tbaa !58 ; 2 uses
  %i.o = fcmp olt float %i.l, %i.n                ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02023.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !854 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !965

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa28.i.a = phi ptr [ %.02023.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !160
  %i.r = icmp eq ptr %.019.lcssa28.i.a, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE24_M_get_insert_unique_posERKf.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa28.i.a) #33 ; 2 uses
  %.phi.trans.insert76 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre77 = load float, ptr %.phi.trans.insert76, align 4, !tbaa !58
  %.pre78 = load float, ptr %2, align 4, !tbaa !58
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi float [ %.pre78, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi float [ %.pre77, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa27.i = phi ptr [ %.019.lcssa28.i.a, %bb.f ], [ %.02023.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02023.i, %._crit_edge.i ]
  %i.v = fcmp olt float %i.u, %i.t
  br i1 %i.v, label %_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE24_M_get_insert_unique_posERKf.exit, label %3

3:                                                ; preds = %bb.g
  br label %_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE24_M_get_insert_unique_posERKf.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load float, ptr %2, align 4, !tbaa !58   ; 8 uses
  %i.y = load float, ptr %i.w, align 4, !tbaa !58 ; 2 uses
  %i.z = fcmp olt float %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !854 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE24_M_get_insert_unique_posERKf.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #33 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load float, ptr %i.ae, align 4, !tbaa !58
  %i.ag = fcmp olt float %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !844
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select67 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE24_M_get_insert_unique_posERKf.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02021.i10 = load ptr, ptr %i.ak, align 8, !tbaa !854 ; 2 uses
  %.not22.i11 = icmp eq ptr %.02021.i10, null
  br i1 %.not22.i11, label %._crit_edge.thread.i25, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02023.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02021.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02023.i13, i64 32
  %i.am = load float, ptr %i.al, align 4, !tbaa !58 ; 2 uses
  %i.an = fcmp olt float %i.x, %i.am              ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02023.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !854 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !965

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i25, label %bb.n

._crit_edge.thread.i25:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa28.i26 = phi ptr [ %.02023.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa28.i26, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE24_M_get_insert_unique_posERKf.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i25
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa28.i26) #33 ; 2 uses
  %.phi.trans.insert74 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre75 = load float, ptr %.phi.trans.insert74, align 4, !tbaa !58
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi float [ %.pre75, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa27.i19 = phi ptr [ %.019.lcssa28.i26, %bb.m ], [ %.02023.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02023.i13, %._crit_edge.i18 ]
  %i.ar = fcmp olt float %i.aq, %i.x
  br i1 %i.ar, label %_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE24_M_get_insert_unique_posERKf.exit, label %4

4:                                                ; preds = %bb.n
  br label %_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE24_M_get_insert_unique_posERKf.exit

bb.o:                                             ; preds = %bb.h
  %i.as = fcmp olt float %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE24_M_get_insert_unique_posERKf.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !854 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE24_M_get_insert_unique_posERKf.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #33 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !58
  %i.az = fcmp olt float %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !844
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select68 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select69 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE24_M_get_insert_unique_posERKf.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02021.i28 = load ptr, ptr %i.bd, align 8, !tbaa !854 ; 2 uses
  %.not22.i29 = icmp eq ptr %.02021.i28, null
  br i1 %.not22.i29, label %._crit_edge.thread.i43, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %bb.s, %.lr.ph.i30
  %.02023.i31 = phi ptr [ %.020.i34, %.lr.ph.i30 ], [ %.02021.i28, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02023.i31, i64 32
  %i.bf = load float, ptr %i.be, align 4, !tbaa !58 ; 2 uses
  %i.bg = fcmp olt float %i.x, %i.bf              ; 2 uses
  %.in.v.i32 = select i1 %i.bg, i64 16, i64 24
  %.in.i33 = getelementptr inbounds nuw i8, ptr %.02023.i31, i64 %.in.v.i32
  %.020.i34 = load ptr, ptr %.in.i33, align 8, !tbaa !854 ; 2 uses
  %.not.i35 = icmp eq ptr %.020.i34, null
  br i1 %.not.i35, label %._crit_edge.i36, label %.lr.ph.i30, !llvm.loop !965

._crit_edge.i36:                                  ; preds = %.lr.ph.i30
  br i1 %i.bg, label %._crit_edge.thread.i43, label %bb.u

._crit_edge.thread.i43:                           ; preds = %._crit_edge.i36, %bb.s
  %.019.lcssa28.i44 = phi ptr [ %.02023.i31, %._crit_edge.i36 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !160
  %i.bj = icmp eq ptr %.019.lcssa28.i44, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE24_M_get_insert_unique_posERKf.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i43
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa28.i44) #33 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !58
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i36
  %i.bl = phi float [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i36 ]
  %.019.lcssa27.i37 = phi ptr [ %.019.lcssa28.i44, %bb.t ], [ %.02023.i31, %._crit_edge.i36 ]
  %.sroa.05.0.i38 = phi ptr [ %i.bk, %bb.t ], [ %.02023.i31, %._crit_edge.i36 ]
  %i.bm = fcmp olt float %i.bl, %i.x
  br i1 %i.bm, label %_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE24_M_get_insert_unique_posERKf.exit, label %5

5:                                                ; preds = %bb.u
  br label %_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE24_M_get_insert_unique_posERKf.exit

_ZNSt8_Rb_treeIffSt9_IdentityIfESt4lessIfESaIfEE24_M_get_insert_unique_posERKf.exit: ; preds = %5, %bb.u, %._crit_edge.thread.i43, %4, %bb.n, %._crit_edge.thread.i25, %3, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.066.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select68, %bb.r ], [ null, %bb.g ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %bb.n ], [ %.sroa.05.0.i, %3 ], [ null, %._crit_edge.thread.i ], [ %.sroa.05.0.i20, %4 ], [ null, %._crit_edge.thread.i25 ], [ %.sroa.05.0.i38, %5 ], [ null, %._crit_edge.thread.i43 ], [ null, %bb.u ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select67, %bb.k ], [ %i.f, %bb.c ], [ %spec.select69, %bb.r ], [ %.019.lcssa27.i, %bb.g ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa27.i19, %bb.n ], [ null, %3 ], [ %.019.lcssa28.i.a, %._crit_edge.thread.i ], [ null, %4 ], [ %.019.lcssa28.i26, %._crit_edge.thread.i25 ], [ null, %5 ], [ %.019.lcssa28.i44, %._crit_edge.thread.i43 ], [ %.019.lcssa27.i37, %bb.u ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.066.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost10collective9AllreduceIjLi1EEENS0_6ResultEPKNS_7ContextERKNS0_9CommGroupENS_6linalg10TensorViewIT_XT0_EEENS0_2OpE(ptr dead_on_unwind noalias writable sret(%"struct.xgboost::collective::Result") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef byval(%"class.xgboost::linalg::TensorView") align 8 %3, i32 noundef %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %6 = alloca %"class.std::shared_ptr.195", align 8 ; 7 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !321
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !325
  %.not = icmp eq i32 %i.c, -1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !345, !alias.scope !1529
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1532 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1534
  %i.h = icmp eq i64 %i.e, %i.g
  %i.i = load i64, ptr %3, align 8
  %.not4.i.i.i = icmp eq i64 %i.i, 1
  %or.cond.i = select i1 %i.h, i1 true, i1 %.not4.i.i.i
  br i1 %or.cond.i, label %bb.g, label %bb.d, !prof !57

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.j = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.j, ptr noundef nonnull @.str.91, i32 noundef 53)
  %i.k = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.e ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.d
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.102, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.g

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.f unwind label %bb.t

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.s

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit15, %bb.c
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.24.0.copyload = load ptr, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !94 ; 2 uses
  %i.o = shl i64 %i.e, 2                          ; 2 uses
  %i.p = icmp ne ptr %.sroa.24.0.copyload, null
  %i.q = icmp eq i64 %i.o, 0
  %i.r = or i1 %i.q, %i.p
  br i1 %i.r, label %_ZN7xgboost6common9EraseTypeIjaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit, label %bb.h, !prof !57

bb.h:                                             ; preds = %bb.g
  call void @_ZSt9terminatev() #32
  unreachable

_ZN7xgboost6common9EraseTypeIjaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.0.0.copyload.i = load i32, ptr %i.s, align 8 ; 2 uses
  call void @_ZNK7xgboost10collective9CommGroup7BackendENS_9DeviceOrdE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.195") align 8 %6, ptr noundef nonnull align 8 dereferenceable(64) %2, i32 %.sroa.0.0.copyload.i)
  %i.t = load ptr, ptr %6, align 8, !tbaa !1538   ; 2 uses
  %i.u = invoke noundef nonnull align 8 dereferenceable(184) ptr @_ZNK7xgboost10collective9CommGroup3CtxEPKNS_7ContextENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef %1, i32 %.sroa.0.0.copyload.i)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %_ZN7xgboost6common9EraseTypeIjaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !371
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr dead_on_unwind writable sret(%"struct.xgboost::collective::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(184) %i.u, i64 %i.o, ptr %.sroa.24.0.copyload, i8 noundef signext 10, i32 noundef %4)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !381  ; 8 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7xgboost10collective4CollELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.aa, align 8, !tbaa !382
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !384
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !371
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #15, !inline_history !1541
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !371
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #15, !inline_history !1541
  br label %_ZNSt12__shared_ptrIN7xgboost10collective4CollELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !65
  %.not.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = add nsw i32 %i.ad, -1
  store i32 %i.am, ptr %i.aa, align 8, !tbaa !93
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.an = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.ad, %bb.n ], [ %i.an, %bb.o ]
  %i.ao = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ao, label %bb.p, label %_ZNSt12__shared_ptrIN7xgboost10collective4CollELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !55

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #15
  br label %_ZNSt12__shared_ptrIN7xgboost10collective4CollELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost10collective4CollELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.j, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.r

bb.q:                                             ; preds = %bb.i, %_ZN7xgboost6common9EraseTypeIjaEENS0_4SpanIT0_Lm18446744073709551615EEENS2_IT_Lm18446744073709551615EEE.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7xgboost10collective4CollELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.s

bb.r:                                             ; preds = %_ZNSt12__shared_ptrIN7xgboost10collective4CollELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.b
  ret void

bb.s:                                             ; preds = %bb.q, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.q ], [ %i.n, %bb.f ]
  resume { ptr, i32 } %.pn

bb.t:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #32
  unreachable
}

declare void @_ZNK7xgboost10collective9CommGroup7BackendENS_9DeviceOrdE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.195") align 8, ptr noundef nonnull align 8 dereferenceable(64), i32) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN7xgboost10collective4CollELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !381  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !382
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !384
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !371
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #15, !inline_history !1513
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !371
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #15, !inline_history !1513
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
end_hunk_2
