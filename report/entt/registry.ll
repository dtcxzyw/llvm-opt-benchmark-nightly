Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/registry?download=true
inline.NumInlined: 24885
inline.NumDeleted: 7508
loop-unroll.NumCompletelyUnrolled: 54
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 96
begin_hunk_0_@_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNS3_14basic_registryIS4_S7_E4sortIiZN8Registry8listener4sortIiEEvRSE_EUlT_T0_E_NS3_8std_sortEJEEEvSL_T1_DpOT2_EUlSK_SL_E_EEEvSK_SK_SK_SL_:bb.a
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !254
  %i.ax = and i32 %i.aw, 1048575
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = lshr i64 %i.ay, 10
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !287
  %i.bc = and i64 %i.ay, 1023
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !224
  %i.bf = icmp slt i32 %i.ao, %i.be
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %1, align 8, !tbaa !251
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bh = load i32, ptr %i.v, align 4, !tbaa !254
  store i32 %i.bh, ptr %i.s, align 4, !tbaa !254
  store i64 %i.r, ptr %4, align 8, !tbaa !251
  %i.bi = sub i64 %i.r, %i.bg
  %i.bj = ashr exact i64 %i.bi, 2
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZNS3_14basic_registryIS4_S7_E4sortIiZN8Registry8listener4sortIiEEvRSE_EUlT_T0_E_NS3_8std_sortEJEEEvSL_T1_DpOT2_EUlSK_SL_E_EEEvSK_SL_SL_SO_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 noundef 0, i64 noundef %i.bj, i32 noundef %i.t, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre16 = load i64, ptr %0, align 8, !tbaa !251
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %2, align 8, !tbaa !251
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.i18, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ] ; 2 uses
  %i.bk = phi i64 [ %i.r, %bb.d ], [ %.pre16, %bb.e ]
  %.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.s
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !2675
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZNS3_14basic_registryIS4_S7_E4sortIiZN8Registry8listener4sortIiEEvRSE_EUlT_T0_E_NS3_8std_sortEJEEEvSL_T1_DpOT2_EUlSK_SL_E_EEEvSK_SL_SL_SO_T2_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !772, !noalias !2682 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !301  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !305  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.031 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %bb.b ] ; 2 uses
  %i.i = shl i64 %.031, 1                         ; 4 uses
  %i.j = add i64 %i.i, 2
  %i.k = sub nuw nsw i64 -2, %i.i
  %i.l = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.k
  %i.m = or disjoint i64 %i.i, 1
  %i.n = xor i64 %i.i, -1
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !254
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !254
  %i.t = and i32 %i.q, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 12
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !251
  %i.y = and i64 %i.u, 4095
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !254
  %i.ab = and i32 %i.aa, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 10
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !287
  %i.ag = and i64 %i.ac, 1023
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !224
  %i.aj = and i32 %i.s, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 12
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !251
  %i.ao = and i64 %i.ak, 4095
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !254
  %i.ar = and i32 %i.aq, 1048575
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = lshr i64 %i.as, 10
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !287
  %i.aw = and i64 %i.as, 1023
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !224
  %i.az = icmp slt i32 %i.ai, %i.ay
  %spec.select = select i1 %i.az, i64 %i.m, i64 %i.j ; 4 uses
  %i.ba = sub i64 0, %spec.select
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !254
  %i.be = sub i64 0, %.031
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -4
  store i32 %i.bd, ptr %i.bg, align 4, !tbaa !254
  %i.bh = icmp slt i64 %spec.select, %i.b
  br i1 %i.bh, label %bb.b, label %._crit_edge, !llvm.loop !2678

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 5 uses
  %i.bi = and i64 %2, 1
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.bk = add nsw i64 %2, -2
  %i.bl = ashr exact i64 %i.bk, 1
  %i.bm = icmp eq i64 %.0.lcssa, %i.bl
  br i1 %i.bm, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bn = shl nsw i64 %.0.lcssa, 1                ; 2 uses
  %i.bo = or disjoint i64 %i.bn, 1
  %i.bp = load ptr, ptr %0, align 8, !tbaa !772, !noalias !2683 ; 2 uses
  %i.bq = xor i64 %i.bn, -1
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !254
  %i.bu = sub nsw i64 0, %.0.lcssa
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bu
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4
  store i32 %i.bt, ptr %i.bw, align 4, !tbaa !254
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.122 = phi i64 [ %i.bo, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bx = load i64, ptr %0, align 8, !tbaa !251
  %i.by = inttoptr i64 %i.bx to ptr               ; 3 uses
  %i.bz = icmp sgt i64 %.122, %1
  br i1 %i.bz, label %.lr.ph.i, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZNS3_14basic_registryIS4_S7_E4sortIiZN8Registry8listener4sortIiEEvRSE_EUlT_T0_E_NS3_8std_sortEJEEEvSL_T1_DpOT2_EUlSK_SL_E_EEEvSK_SL_SL_SO_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !301 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !305 ; 2 uses
  %i.ce = and i32 %3, 1048575
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cg = lshr i64 %i.cf, 12
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !251
  %i.cj = and i64 %i.cf, 4095
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cj
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %.0916.i = phi i64 [ %.122, %.lr.ph.i ], [ %.017.i, %bb.g ] ; 3 uses
  %.017.in.i = add nsw i64 %.0916.i, -1
  %.017.i = sdiv i64 %.017.in.i, 2                ; 4 uses
  %i.cl = sub nsw i64 0, %.017.i
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.cl
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !254 ; 2 uses
  %i.cp = and i32 %i.co, 1048575
  %i.cq = zext nneg i32 %i.cp to i64              ; 2 uses
  %i.cr = lshr i64 %i.cq, 12
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !251
  %i.cu = and i64 %i.cq, 4095
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !254
  %i.cx = and i32 %i.cw, 1048575
  %i.cy = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.cz = lshr i64 %i.cy, 10
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !287
  %i.dc = and i64 %i.cy, 1023
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !224
  %i.df = load i32, ptr %i.ck, align 4, !tbaa !254
  %i.dg = and i32 %i.df, 1048575
  %i.dh = zext nneg i32 %i.dg to i64              ; 2 uses
  %i.di = lshr i64 %i.dh, 10
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !287
  %i.dl = and i64 %i.dh, 1023
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !224
  %i.do = icmp slt i32 %i.de, %i.dn
  br i1 %i.do, label %bb.g, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZNS3_14basic_registryIS4_S7_E4sortIiZN8Registry8listener4sortIiEEvRSE_EUlT_T0_E_NS3_8std_sortEJEEEvSL_T1_DpOT2_EUlSK_SL_E_EEEvSK_SL_SL_SO_RT2_.exit

bb.g:                                             ; preds = %bb.f
  %i.dp = sub nsw i64 0, %.0916.i
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.dp
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -4
  store i32 %i.co, ptr %i.dr, align 4, !tbaa !254
  %i.ds = icmp sgt i64 %.017.i, %1
  br i1 %i.ds, label %bb.f, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZNS3_14basic_registryIS4_S7_E4sortIiZN8Registry8listener4sortIiEEvRSE_EUlT_T0_E_NS3_8std_sortEJEEEvSL_T1_DpOT2_EUlSK_SL_E_EEEvSK_SL_SL_SO_RT2_.exit, !llvm.loop !2681

_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZNS3_14basic_registryIS4_S7_E4sortIiZN8Registry8listener4sortIiEEvRSE_EUlT_T0_E_NS3_8std_sortEJEEEvSL_T1_DpOT2_EUlSK_SL_E_EEEvSK_SL_SL_SO_RT2_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.09.lcssa.i = phi i64 [ %.122, %bb.e ], [ %.0916.i, %bb.f ], [ %.017.i, %bb.g ]
  %i.dt = sub nsw i64 0, %.09.lcssa.i
  %i.du = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -4
  store i32 %3, ptr %i.dv, align 4, !tbaa !254
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNS3_14basic_registryIS4_S7_E4sortIiZN8Registry8listener4sortIiEEvRSE_EUlT_T0_E_NS3_8std_sortEJEEEvSL_T1_DpOT2_EUlSK_SL_E_EEEvSK_SK_SK_SK_SL_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !251
  %i.b = load i64, ptr %2, align 8, !tbaa !251
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !254  ; 3 uses
  %i.f = inttoptr i64 %i.b to ptr
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !254  ; 3 uses
  %i.i = and i32 %i.e, 1048575
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = lshr i64 %i.j, 12
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !301  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !251
  %i.p = and i64 %i.j, 4095
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !254
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.v = lshr i64 %i.t, 10
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !305  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !287
  %i.z = and i64 %i.t, 1023
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !224 ; 3 uses
  %i.ac = and i32 %i.h, 1048575
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = lshr i64 %i.ad, 12
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !251
  %i.ah = and i64 %i.ad, 4095
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !254
  %i.ak = and i32 %i.aj, 1048575
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = lshr i64 %i.al, 10
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !287
  %i.ap = and i64 %i.al, 1023
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !224 ; 3 uses
  %i.as = icmp slt i32 %i.ab, %i.ar
  %i.at = load i64, ptr %3, align 8, !tbaa !251
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -4 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !254 ; 3 uses
  %i.ax = and i32 %i.aw, 1048575
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = lshr i64 %i.ay, 12
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !251
  %i.bc = and i64 %i.ay, 4095
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !254
  %i.bf = and i32 %i.be, 1048575
  %i.bg = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bh = lshr i64 %i.bg, 10
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !287
  %i.bk = and i64 %i.bg, 1023
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !224 ; 4 uses
  br i1 %i.as, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.bn = icmp slt i32 %i.ar, %i.bm
  br i1 %i.bn, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bo = load i64, ptr %0, align 8, !tbaa !251
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -4 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !254
  store i32 %i.h, ptr %i.bq, align 4, !tbaa !254
  store i32 %i.br, ptr %i.g, align 4, !tbaa !254
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.bs = icmp slt i32 %i.ab, %i.bm
  %i.bt = load i64, ptr %0, align 8, !tbaa !251
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -4 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !254 ; 2 uses
  br i1 %i.bs, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.aw, ptr %i.bv, align 4, !tbaa !254
  store i32 %i.bw, ptr %i.av, align 4, !tbaa !254
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i32 %i.e, ptr %i.bv, align 4, !tbaa !254
  store i32 %i.bw, ptr %i.d, align 4, !tbaa !254
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.bx = icmp slt i32 %i.ab, %i.bm
  br i1 %i.bx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.by = load i64, ptr %0, align 8, !tbaa !251
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -4 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !254
  store i32 %i.e, ptr %i.ca, align 4, !tbaa !254
  store i32 %i.cb, ptr %i.d, align 4, !tbaa !254
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cc = icmp slt i32 %i.ar, %i.bm
  %i.cd = load i64, ptr %0, align 8, !tbaa !251
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !254 ; 2 uses
  br i1 %i.cc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.aw, ptr %i.cf, align 4, !tbaa !254
  store i32 %i.cg, ptr %i.av, align 4, !tbaa !254
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.h, ptr %i.cf, align 4, !tbaa !254
  store i32 %i.cg, ptr %i.g, align 4, !tbaa !254
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS8_EEES8_ESaIiEEEE7releaseITnDaXadL_ZN8Registry8listener4sortIiEEvSB_EEEEvS1_EEEEvvENUlPKvS1_E_8__invokeESL_S1_(ptr noundef %0, ptr noundef %1) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !270  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !271    ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not9.i.i.i.i, label %_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS8_EEES8_ESaIiEEEE7releaseITnDaXadL_ZN8Registry8listener4sortIiEEvSB_EEEEvS1_EEEEvvENKUlPKvS1_E_clESL_S1_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub i64 %i.e, %i.d
  %i.g = ashr exact i64 %i.f, 4
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.h = phi ptr [ %i.b, %.lr.ph.i.i.i.i ], [ %i.u, %bb.d ] ; 2 uses
  %.010.i.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i.i ], [ %i.i, %bb.d ]
  %i.i = add i64 %.010.i.i.i.i, -1                ; 3 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !271
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.i ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !273
  %i.n = icmp eq ptr %i.m, @_ZZN4entt8delegateIFvRNS_14basic_registryINS_6entityESaIS2_EEES2_EE4wrapITnDaXadL_ZN8Registry8listener4sortIiEEvS5_EEJLm0EEEEDaSt16integer_sequenceImJXspT0_EEEENUlPKvS5_S2_E_8__invokeESF_S5_S2_
  %i.o = load ptr, ptr %i.k, align 8
  %i.p = icmp eq ptr %i.o, null
  %i.q = select i1 %i.n, i1 %i.p, i1 false
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds i8, ptr %i.h, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !387
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !270
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16 ; 2 uses
  store ptr %i.t, ptr %i.a, align 8, !tbaa !270
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = phi ptr [ %i.t, %bb.c ], [ %i.h, %bb.b ]
  %.not.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i.i.i, label %_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS8_EEES8_ESaIiEEEE7releaseITnDaXadL_ZN8Registry8listener4sortIiEEvSB_EEEEvS1_EEEEvvENKUlPKvS1_E_clESL_S1_.exit, label %bb.b, !llvm.loop !48

_ZZN4entt8delegateIFvPvEE7connectITnDaXadL_ZNS_4sinkINS_4sighIFvRNS_14basic_registryINS_6entityESaIS8_EEES8_ESaIiEEEE7releaseITnDaXadL_ZN8Registry8listener4sortIiEEvSB_EEEEvS1_EEEEvvENKUlPKvS1_E_clESL_S1_.exit: ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal18CmpHelperEQFailureIffEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @_ZN7testing13PrintToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZN7testing13PrintToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit unwind label %bb.c

end_hunk_0
begin_hunk_1_@_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNS3_14basic_registryIS4_S7_E4sortIiSt4lessIvENS3_8std_sortEJEEEvT0_T1_DpOT2_EUlT_SJ_E_EEEvSO_SO_SO_SJ_:bb.a
  %i.aw = and i32 %i.av, 1048575
  %i.ax = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.ay = lshr i64 %i.ax, 10
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !287
  %i.bb = and i64 %i.ax, 1023
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load i32, ptr %i.an, align 4, !tbaa !224
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !224
  %i.bf = icmp slt i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %1, align 8, !tbaa !251
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bh = load i32, ptr %i.v, align 4, !tbaa !254
  store i32 %i.bh, ptr %i.s, align 4, !tbaa !254
  store i64 %i.r, ptr %4, align 8, !tbaa !251
  %i.bi = sub i64 %i.r, %i.bg
  %i.bj = ashr exact i64 %i.bi, 2
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZNS3_14basic_registryIS4_S7_E4sortIiSt4lessIvENS3_8std_sortEJEEEvT0_T1_DpOT2_EUlT_SJ_E_EEEvSO_SJ_SJ_SK_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 noundef 0, i64 noundef %i.bj, i32 noundef %i.t, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre16 = load i64, ptr %0, align 8, !tbaa !251
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %2, align 8, !tbaa !251
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.i18, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ] ; 2 uses
  %i.bk = phi i64 [ %i.r, %bb.d ], [ %.pre16, %bb.e ]
  %.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.s
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !3103
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZNS3_14basic_registryIS4_S7_E4sortIiSt4lessIvENS3_8std_sortEJEEEvT0_T1_DpOT2_EUlT_SJ_E_EEEvSO_SJ_SJ_SK_T2_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !772, !noalias !3110 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !301  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !305  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.031 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %bb.b ] ; 2 uses
  %i.i = shl i64 %.031, 1                         ; 4 uses
  %i.j = add i64 %i.i, 2
  %i.k = sub nuw nsw i64 -2, %i.i
  %i.l = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.k
  %i.m = or disjoint i64 %i.i, 1
  %i.n = xor i64 %i.i, -1
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !254
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !254
  %i.t = and i32 %i.q, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 12
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !251
  %i.y = and i64 %i.u, 4095
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !254
  %i.ab = and i32 %i.aa, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 10
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !287
  %i.ag = and i64 %i.ac, 1023
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = and i32 %i.s, 1048575
  %i.aj = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ak = lshr i64 %i.aj, 12
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !251
  %i.an = and i64 %i.aj, 4095
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !254
  %i.aq = and i32 %i.ap, 1048575
  %i.ar = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.as = lshr i64 %i.ar, 10
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !287
  %i.av = and i64 %i.ar, 1023
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i32, ptr %i.ah, align 4, !tbaa !224
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !224
  %i.az = icmp slt i32 %i.ax, %i.ay
  %spec.select = select i1 %i.az, i64 %i.m, i64 %i.j ; 4 uses
  %i.ba = sub i64 0, %spec.select
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !254
  %i.be = sub i64 0, %.031
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -4
  store i32 %i.bd, ptr %i.bg, align 4, !tbaa !254
  %i.bh = icmp slt i64 %spec.select, %i.b
  br i1 %i.bh, label %bb.b, label %._crit_edge, !llvm.loop !3106

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 5 uses
  %i.bi = and i64 %2, 1
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.bk = add nsw i64 %2, -2
  %i.bl = ashr exact i64 %i.bk, 1
  %i.bm = icmp eq i64 %.0.lcssa, %i.bl
  br i1 %i.bm, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bn = shl nsw i64 %.0.lcssa, 1                ; 2 uses
  %i.bo = or disjoint i64 %i.bn, 1
  %i.bp = load ptr, ptr %0, align 8, !tbaa !772, !noalias !3111 ; 2 uses
  %i.bq = xor i64 %i.bn, -1
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !254
  %i.bu = sub nsw i64 0, %.0.lcssa
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bu
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4
  store i32 %i.bt, ptr %i.bw, align 4, !tbaa !254
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.122 = phi i64 [ %i.bo, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bx = load i64, ptr %0, align 8, !tbaa !251
  %i.by = inttoptr i64 %i.bx to ptr               ; 3 uses
  %i.bz = icmp sgt i64 %.122, %1
  br i1 %i.bz, label %.lr.ph.i, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZNS3_14basic_registryIS4_S7_E4sortIiSt4lessIvENS3_8std_sortEJEEEvT0_T1_DpOT2_EUlT_SJ_E_EEEvSO_SJ_SJ_SK_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !301 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !305 ; 2 uses
  %i.ce = and i32 %3, 1048575
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cg = lshr i64 %i.cf, 12
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !251
  %i.cj = and i64 %i.cf, 4095
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cj
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %.0916.i = phi i64 [ %.122, %.lr.ph.i ], [ %.017.i, %bb.g ] ; 3 uses
  %.017.in.i = add nsw i64 %.0916.i, -1
  %.017.i = sdiv i64 %.017.in.i, 2                ; 4 uses
  %i.cl = sub nsw i64 0, %.017.i
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.cl
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !254 ; 2 uses
  %i.cp = and i32 %i.co, 1048575
  %i.cq = zext nneg i32 %i.cp to i64              ; 2 uses
  %i.cr = lshr i64 %i.cq, 12
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !251
  %i.cu = and i64 %i.cq, 4095
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !254
  %i.cx = and i32 %i.cw, 1048575
  %i.cy = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.cz = lshr i64 %i.cy, 10
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !287
  %i.dc = and i64 %i.cy, 1023
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.dc
  %i.de = load i32, ptr %i.ck, align 4, !tbaa !254
  %i.df = and i32 %i.de, 1048575
  %i.dg = zext nneg i32 %i.df to i64              ; 2 uses
  %i.dh = lshr i64 %i.dg, 10
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !287
  %i.dk = and i64 %i.dg, 1023
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dk
  %i.dm = load i32, ptr %i.dd, align 4, !tbaa !224
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !224
  %i.do = icmp slt i32 %i.dm, %i.dn
  br i1 %i.do, label %bb.g, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZNS3_14basic_registryIS4_S7_E4sortIiSt4lessIvENS3_8std_sortEJEEEvT0_T1_DpOT2_EUlT_SJ_E_EEEvSO_SJ_SJ_SK_RT2_.exit

bb.g:                                             ; preds = %bb.f
  %i.dp = sub nsw i64 0, %.0916.i
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.dp
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -4
  store i32 %i.co, ptr %i.dr, align 4, !tbaa !254
  %i.ds = icmp sgt i64 %.017.i, %1
  br i1 %i.ds, label %bb.f, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZNS3_14basic_registryIS4_S7_E4sortIiSt4lessIvENS3_8std_sortEJEEEvT0_T1_DpOT2_EUlT_SJ_E_EEEvSO_SJ_SJ_SK_RT2_.exit, !llvm.loop !3109

_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZNS3_14basic_registryIS4_S7_E4sortIiSt4lessIvENS3_8std_sortEJEEEvT0_T1_DpOT2_EUlT_SJ_E_EEEvSO_SJ_SJ_SK_RT2_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.09.lcssa.i = phi i64 [ %.122, %bb.e ], [ %.0916.i, %bb.f ], [ %.017.i, %bb.g ]
  %i.dt = sub nsw i64 0, %.09.lcssa.i
  %i.du = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -4
  store i32 %3, ptr %i.dv, align 4, !tbaa !254
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNS3_14basic_registryIS4_S7_E4sortIiSt4lessIvENS3_8std_sortEJEEEvT0_T1_DpOT2_EUlT_SJ_E_EEEvSO_SO_SO_SO_SJ_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %3, ptr %4) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !251
  %i.b = load i64, ptr %2, align 8, !tbaa !251
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !254  ; 3 uses
  %i.f = inttoptr i64 %i.b to ptr
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !254  ; 3 uses
  %i.i = and i32 %i.e, 1048575
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = lshr i64 %i.j, 12
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !301  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !251
  %i.p = and i64 %i.j, 4095
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !254
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.v = lshr i64 %i.t, 10
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !305  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !287
  %i.z = and i64 %i.t, 1023
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = and i32 %i.h, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !251
  %i.ag = and i64 %i.ac, 4095
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !254
  %i.aj = and i32 %i.ai, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !287
  %i.ao = and i64 %i.ak, 1023
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.aa, align 4, !tbaa !224 ; 3 uses
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !224 ; 3 uses
  %i.as = icmp slt i32 %i.aq, %i.ar
  %i.at = load i64, ptr %3, align 8, !tbaa !251
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -4 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !254 ; 3 uses
  %i.ax = and i32 %i.aw, 1048575
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = lshr i64 %i.ay, 12
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !251
  %i.bc = and i64 %i.ay, 4095
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !254
  %i.bf = and i32 %i.be, 1048575
  %i.bg = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bh = lshr i64 %i.bg, 10
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !287
  %i.bk = and i64 %i.bg, 1023
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !224 ; 4 uses
  br i1 %i.as, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.bn = icmp slt i32 %i.ar, %i.bm
  br i1 %i.bn, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bo = load i64, ptr %0, align 8, !tbaa !251
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -4 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !254
  store i32 %i.h, ptr %i.bq, align 4, !tbaa !254
  store i32 %i.br, ptr %i.g, align 4, !tbaa !254
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.bs = icmp slt i32 %i.aq, %i.bm
  %i.bt = load i64, ptr %0, align 8, !tbaa !251
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -4 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !254 ; 2 uses
  br i1 %i.bs, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.aw, ptr %i.bv, align 4, !tbaa !254
  store i32 %i.bw, ptr %i.av, align 4, !tbaa !254
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i32 %i.e, ptr %i.bv, align 4, !tbaa !254
  store i32 %i.bw, ptr %i.d, align 4, !tbaa !254
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.bx = icmp slt i32 %i.aq, %i.bm
  br i1 %i.bx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.by = load i64, ptr %0, align 8, !tbaa !251
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -4 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !254
  store i32 %i.e, ptr %i.ca, align 4, !tbaa !254
  store i32 %i.cb, ptr %i.d, align 4, !tbaa !254
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cc = icmp slt i32 %i.ar, %i.bm
  %i.cd = load i64, ptr %0, align 8, !tbaa !251
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !254 ; 2 uses
  br i1 %i.cc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.aw, ptr %i.cf, align 4, !tbaa !254
  store i32 %i.cg, ptr %i.av, align 4, !tbaa !254
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.h, ptr %i.cf, align 4, !tbaa !254
  store i32 %i.cg, ptr %i.g, align 4, !tbaa !254
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nIZNS_14basic_registryIS1_S2_E4sortIjSt4lessIvENS_8std_sortEJEEEvT0_T1_DpOT2_EUlT_SB_E_SA_JEEEvmSG_SB_DpOT1_(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, ptr %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::reverse_iterator.935", align 8 ; 5 uses
  %4 = alloca %"class.std::reverse_iterator.935", align 8 ; 5 uses
  %5 = alloca %"class.std::reverse_iterator.935", align 8 ; 5 uses
  %6 = alloca %"class.std::reverse_iterator.935", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !251, !noalias !3116 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_ZNK4entt8std_sortclIZNS_14basic_registryINS_6entityESaIS3_EE4sortIjSt4lessIvES0_JEEEvT0_T1_DpOT2_EUlT_S9_E_JETkSt22random_access_iteratorSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_S4_EEEETkSt22random_access_iteratorSN_EEvSA_T2_SE_DpOT0_.exit.thread, label %.lr.ph27

_ZNK4entt8std_sortclIZNS_14basic_registryINS_6entityESaIS3_EE4sortIjSt4lessIvES0_JEEEvT0_T1_DpOT2_EUlT_S9_E_JETkSt22random_access_iteratorSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_S4_EEEETkSt22random_access_iteratorSN_EEvSA_T2_SE_DpOT0_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %._crit_edge28

.lr.ph27:                                         ; preds = %bb.a
  %.idx = shl nsw i64 %1, 2
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 %.idx
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  store i64 %i.f, ptr %3, align 8, !tbaa !251
  store i64 %i.e, ptr %4, align 8, !tbaa !251
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %1, i1 true)
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = sub nuw nsw i64 126, %i.h
  call void @_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZNS3_14basic_registryIS4_S7_E4sortIjSt4lessIvENS3_8std_sortEJEEEvT0_T1_DpOT2_EUlT_SJ_E_EEEvSO_SO_SJ_SK_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %3, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 noundef %i.i, ptr %2)
  store i64 %i.f, ptr %5, align 8, !tbaa !251
  store i64 %i.e, ptr %6, align 8, !tbaa !251
  call void @_ZSt22__final_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNS3_14basic_registryIS4_S7_E4sortIjSt4lessIvENS3_8std_sortEJEEEvT0_T1_DpOT2_EUlT_SJ_E_EEEvSO_SO_SJ_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %5, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %6, ptr %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !222
  %.pre30 = load ptr, ptr %i.j, align 8, !tbaa !301
  br label %bb.b

._crit_edge28:                                    ; preds = %._crit_edge, %_ZNK4entt8std_sortclIZNS_14basic_registryINS_6entityESaIS3_EE4sortIjSt4lessIvES0_JEEEvT0_T1_DpOT2_EUlT_S9_E_JETkSt22random_access_iteratorSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_St6vectorIS3_S4_EEEETkSt22random_access_iteratorSN_EEvSA_T2_SE_DpOT0_.exit.thread
  ret void

bb.b:                                             ; preds = %.lr.ph27, %._crit_edge
  %i.k = phi ptr [ %.pre30, %.lr.ph27 ], [ %i.bg, %._crit_edge ] ; 3 uses
  %i.l = phi ptr [ %.pre, %.lr.ph27 ], [ %i.bh, %._crit_edge ] ; 3 uses
  %.026 = phi i64 [ 0, %.lr.ph27 ], [ %i.bi, %._crit_edge ] ; 4 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.026
  %i.n = load i32, ptr %i.m, align 4, !tbaa !254
  %i.o = and i32 %i.n, 1048575
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = lshr i64 %i.p, 12
end_hunk_1
begin_hunk_2_@_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNS3_14basic_registryIS4_S7_E4sortIjSt4lessIvENS3_8std_sortEJEEEvT0_T1_DpOT2_EUlT_SJ_E_EEEvSO_SO_SO_SJ_:bb.a
  %i.aw = and i32 %i.av, 1048575
  %i.ax = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.ay = lshr i64 %i.ax, 10
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !287
  %i.bb = and i64 %i.ax, 1023
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load i32, ptr %i.an, align 4, !tbaa !224
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !224
  %i.bf = icmp ult i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %1, align 8, !tbaa !251
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bh = load i32, ptr %i.v, align 4, !tbaa !254
  store i32 %i.bh, ptr %i.s, align 4, !tbaa !254
  store i64 %i.r, ptr %4, align 8, !tbaa !251
  %i.bi = sub i64 %i.r, %i.bg
  %i.bj = ashr exact i64 %i.bi, 2
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZNS3_14basic_registryIS4_S7_E4sortIjSt4lessIvENS3_8std_sortEJEEEvT0_T1_DpOT2_EUlT_SJ_E_EEEvSO_SJ_SJ_SK_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 noundef 0, i64 noundef %i.bj, i32 noundef %i.t, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre16 = load i64, ptr %0, align 8, !tbaa !251
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %2, align 8, !tbaa !251
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.i18, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ] ; 2 uses
  %i.bk = phi i64 [ %i.r, %bb.d ], [ %.pre16, %bb.e ]
  %.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.s
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !3160
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZNS3_14basic_registryIS4_S7_E4sortIjSt4lessIvENS3_8std_sortEJEEEvT0_T1_DpOT2_EUlT_SJ_E_EEEvSO_SJ_SJ_SK_T2_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !772, !noalias !3167 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !301  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !625  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.031 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %bb.b ] ; 2 uses
  %i.i = shl i64 %.031, 1                         ; 4 uses
  %i.j = add i64 %i.i, 2
  %i.k = sub nuw nsw i64 -2, %i.i
  %i.l = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.k
  %i.m = or disjoint i64 %i.i, 1
  %i.n = xor i64 %i.i, -1
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !254
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !254
  %i.t = and i32 %i.q, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 12
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !251
  %i.y = and i64 %i.u, 4095
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !254
  %i.ab = and i32 %i.aa, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 10
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !287
  %i.ag = and i64 %i.ac, 1023
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = and i32 %i.s, 1048575
  %i.aj = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ak = lshr i64 %i.aj, 12
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !251
  %i.an = and i64 %i.aj, 4095
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !254
  %i.aq = and i32 %i.ap, 1048575
  %i.ar = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.as = lshr i64 %i.ar, 10
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !287
  %i.av = and i64 %i.ar, 1023
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i32, ptr %i.ah, align 4, !tbaa !224
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !224
  %i.az = icmp ult i32 %i.ax, %i.ay
  %spec.select = select i1 %i.az, i64 %i.m, i64 %i.j ; 4 uses
  %i.ba = sub i64 0, %spec.select
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !254
  %i.be = sub i64 0, %.031
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -4
  store i32 %i.bd, ptr %i.bg, align 4, !tbaa !254
  %i.bh = icmp slt i64 %spec.select, %i.b
  br i1 %i.bh, label %bb.b, label %._crit_edge, !llvm.loop !3163

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 5 uses
  %i.bi = and i64 %2, 1
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.bk = add nsw i64 %2, -2
  %i.bl = ashr exact i64 %i.bk, 1
  %i.bm = icmp eq i64 %.0.lcssa, %i.bl
  br i1 %i.bm, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bn = shl nsw i64 %.0.lcssa, 1                ; 2 uses
  %i.bo = or disjoint i64 %i.bn, 1
  %i.bp = load ptr, ptr %0, align 8, !tbaa !772, !noalias !3168 ; 2 uses
  %i.bq = xor i64 %i.bn, -1
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !254
  %i.bu = sub nsw i64 0, %.0.lcssa
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bu
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4
  store i32 %i.bt, ptr %i.bw, align 4, !tbaa !254
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.122 = phi i64 [ %i.bo, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bx = load i64, ptr %0, align 8, !tbaa !251
  %i.by = inttoptr i64 %i.bx to ptr               ; 3 uses
  %i.bz = icmp sgt i64 %.122, %1
  br i1 %i.bz, label %.lr.ph.i, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZNS3_14basic_registryIS4_S7_E4sortIjSt4lessIvENS3_8std_sortEJEEEvT0_T1_DpOT2_EUlT_SJ_E_EEEvSO_SJ_SJ_SK_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !301 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !625 ; 2 uses
  %i.ce = and i32 %3, 1048575
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cg = lshr i64 %i.cf, 12
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !251
  %i.cj = and i64 %i.cf, 4095
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cj
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %.0916.i = phi i64 [ %.122, %.lr.ph.i ], [ %.017.i, %bb.g ] ; 3 uses
  %.017.in.i = add nsw i64 %.0916.i, -1
  %.017.i = sdiv i64 %.017.in.i, 2                ; 4 uses
  %i.cl = sub nsw i64 0, %.017.i
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.cl
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !254 ; 2 uses
  %i.cp = and i32 %i.co, 1048575
  %i.cq = zext nneg i32 %i.cp to i64              ; 2 uses
  %i.cr = lshr i64 %i.cq, 12
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !251
  %i.cu = and i64 %i.cq, 4095
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !254
  %i.cx = and i32 %i.cw, 1048575
  %i.cy = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.cz = lshr i64 %i.cy, 10
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !287
  %i.dc = and i64 %i.cy, 1023
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.dc
  %i.de = load i32, ptr %i.ck, align 4, !tbaa !254
  %i.df = and i32 %i.de, 1048575
  %i.dg = zext nneg i32 %i.df to i64              ; 2 uses
  %i.dh = lshr i64 %i.dg, 10
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !287
  %i.dk = and i64 %i.dg, 1023
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dk
  %i.dm = load i32, ptr %i.dd, align 4, !tbaa !224
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !224
  %i.do = icmp ult i32 %i.dm, %i.dn
  br i1 %i.do, label %bb.g, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZNS3_14basic_registryIS4_S7_E4sortIjSt4lessIvENS3_8std_sortEJEEEvT0_T1_DpOT2_EUlT_SJ_E_EEEvSO_SJ_SJ_SK_RT2_.exit

bb.g:                                             ; preds = %bb.f
  %i.dp = sub nsw i64 0, %.0916.i
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.dp
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -4
  store i32 %i.co, ptr %i.dr, align 4, !tbaa !254
  %i.ds = icmp sgt i64 %.017.i, %1
  br i1 %i.ds, label %bb.f, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZNS3_14basic_registryIS4_S7_E4sortIjSt4lessIvENS3_8std_sortEJEEEvT0_T1_DpOT2_EUlT_SJ_E_EEEvSO_SJ_SJ_SK_RT2_.exit, !llvm.loop !3166

_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZNS3_14basic_registryIS4_S7_E4sortIjSt4lessIvENS3_8std_sortEJEEEvT0_T1_DpOT2_EUlT_SJ_E_EEEvSO_SJ_SJ_SK_RT2_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.09.lcssa.i = phi i64 [ %.122, %bb.e ], [ %.0916.i, %bb.f ], [ %.017.i, %bb.g ]
  %i.dt = sub nsw i64 0, %.09.lcssa.i
  %i.du = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -4
  store i32 %3, ptr %i.dv, align 4, !tbaa !254
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZNS3_14basic_registryIS4_S7_E4sortIjSt4lessIvENS3_8std_sortEJEEEvT0_T1_DpOT2_EUlT_SJ_E_EEEvSO_SO_SO_SO_SJ_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %3, ptr %4) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !251
  %i.b = load i64, ptr %2, align 8, !tbaa !251
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !254  ; 3 uses
  %i.f = inttoptr i64 %i.b to ptr
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !254  ; 3 uses
  %i.i = and i32 %i.e, 1048575
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = lshr i64 %i.j, 12
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !301  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !251
  %i.p = and i64 %i.j, 4095
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !254
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.v = lshr i64 %i.t, 10
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !625  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !287
  %i.z = and i64 %i.t, 1023
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = and i32 %i.h, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !251
  %i.ag = and i64 %i.ac, 4095
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !254
  %i.aj = and i32 %i.ai, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !287
  %i.ao = and i64 %i.ak, 1023
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.aa, align 4, !tbaa !224 ; 3 uses
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !224 ; 3 uses
  %i.as = icmp ult i32 %i.aq, %i.ar
  %i.at = load i64, ptr %3, align 8, !tbaa !251
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -4 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !254 ; 3 uses
  %i.ax = and i32 %i.aw, 1048575
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = lshr i64 %i.ay, 12
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !251
  %i.bc = and i64 %i.ay, 4095
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !254
  %i.bf = and i32 %i.be, 1048575
  %i.bg = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bh = lshr i64 %i.bg, 10
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !287
  %i.bk = and i64 %i.bg, 1023
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !224 ; 4 uses
  br i1 %i.as, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.bn = icmp ult i32 %i.ar, %i.bm
  br i1 %i.bn, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bo = load i64, ptr %0, align 8, !tbaa !251
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -4 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !254
  store i32 %i.h, ptr %i.bq, align 4, !tbaa !254
  store i32 %i.br, ptr %i.g, align 4, !tbaa !254
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.bs = icmp ult i32 %i.aq, %i.bm
  %i.bt = load i64, ptr %0, align 8, !tbaa !251
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -4 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !254 ; 2 uses
  br i1 %i.bs, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.aw, ptr %i.bv, align 4, !tbaa !254
  store i32 %i.bw, ptr %i.av, align 4, !tbaa !254
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i32 %i.e, ptr %i.bv, align 4, !tbaa !254
  store i32 %i.bw, ptr %i.d, align 4, !tbaa !254
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.bx = icmp ult i32 %i.aq, %i.bm
  br i1 %i.bx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.by = load i64, ptr %0, align 8, !tbaa !251
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -4 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !254
  store i32 %i.e, ptr %i.ca, align 4, !tbaa !254
  store i32 %i.cb, ptr %i.d, align 4, !tbaa !254
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cc = icmp ult i32 %i.ar, %i.bm
  %i.cd = load i64, ptr %0, align 8, !tbaa !251
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !254 ; 2 uses
  br i1 %i.cc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.aw, ptr %i.cf, align 4, !tbaa !254
  store i32 %i.cg, ptr %i.av, align 4, !tbaa !254
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.h, ptr %i.cf, align 4, !tbaa !254
  store i32 %i.cg, ptr %i.g, align 4, !tbaa !254
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE4sortISt4lessIvENS_8std_sortEJEEEvT_T0_DpOT1_(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::reverse_iterator.935", align 8 ; 4 uses
  %2 = alloca %"class.std::reverse_iterator.935", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !325
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load i64, ptr %i.d, align 8, !tbaa !249
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !251, !noalias !3174 ; 2 uses
  %.pre3 = ptrtoint ptr %.pre to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !221
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !222  ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi = phi i64 [ %i.k, %bb.c ], [ %.pre3, %bb.b ]
  %i.n = phi ptr [ %i.i, %bb.c ], [ %.pre, %bb.b ]
  %i.o = phi i64 [ %i.m, %bb.c ], [ %i.e, %bb.b ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.o
  %i.r = ptrtoint ptr %i.q to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %i.r, ptr %1, align 8, !tbaa !251
  store i64 %.pre-phi, ptr %2, align 8, !tbaa !251
  call void @_ZSt6__sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN4entt6entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SG_T0_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %.not28.i = icmp eq i64 %i.o, 0
  br i1 %.not28.i, label %_ZN4entt16basic_sparse_setINS_6entityESaIS1_EE6sort_nISt4lessIvENS_8std_sortEJEEEvmT_T0_DpOT1_.exit, label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.pre.i = load ptr, ptr %i.p, align 8, !tbaa !222
  %.pre29.i = load ptr, ptr %i.s, align 8, !tbaa !301
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i, %.lr.ph26.i
  %i.t = phi ptr [ %.pre29.i, %.lr.ph26.i ], [ %i.bp, %._crit_edge.i ] ; 3 uses
  %i.u = phi ptr [ %.pre.i, %.lr.ph26.i ], [ %i.bq, %._crit_edge.i ] ; 3 uses
  %.024.i = phi i64 [ 0, %.lr.ph26.i ], [ %i.br, %._crit_edge.i ] ; 4 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.024.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !254
end_hunk_2
