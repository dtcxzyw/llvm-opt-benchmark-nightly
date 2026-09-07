Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/storage?download=true
inline.NumInlined: 52093
inline.NumDeleted: 9229
loop-unroll.NumCompletelyUnrolled: 226
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 295
begin_hunk_0_@_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SF_SG_:bb.a
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !198
  %i.ax = and i32 %i.aw, 1048575
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = lshr i64 %i.ay, 7
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !211
  %i.bc = and i64 %i.ay, 127
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !194
  %i.bf = icmp slt i32 %i.ao, %i.be
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %1, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bh = load i32, ptr %i.v, align 4, !tbaa !198
  store i32 %i.bh, ptr %i.s, align 4, !tbaa !198
  store i64 %i.r, ptr %4, align 8, !tbaa !183
  %i.bi = sub i64 %i.r, %i.bg
  %i.bj = ashr exact i64 %i.bi, 2
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_SG_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 noundef 0, i64 noundef %i.bj, i32 noundef %i.t, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre16 = load i64, ptr %0, align 8, !tbaa !183
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %2, align 8, !tbaa !183
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.i18, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ] ; 2 uses
  %i.bk = phi i64 [ %i.r, %bb.d ], [ %.pre16, %bb.e ]
  %.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.s
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !7802
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_SG_T1_T2_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !453, !noalias !7809 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !341  ; 2 uses
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
  %i.q = load i32, ptr %i.p, align 4, !tbaa !198
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198
  %i.t = and i32 %i.q, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 12
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !183
  %i.y = and i64 %i.u, 4095
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !198
  %i.ab = and i32 %i.aa, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 7
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !211
  %i.ag = and i64 %i.ac, 127
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !194
  %i.aj = and i32 %i.s, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 12
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !183
  %i.ao = and i64 %i.ak, 4095
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !198
  %i.ar = and i32 %i.aq, 1048575
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = lshr i64 %i.as, 7
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !211
  %i.aw = and i64 %i.as, 127
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !194
  %i.az = icmp slt i32 %i.ai, %i.ay
  %spec.select = select i1 %i.az, i64 %i.m, i64 %i.j ; 4 uses
  %i.ba = sub i64 0, %spec.select
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !198
  %i.be = sub i64 0, %.031
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -4
  store i32 %i.bd, ptr %i.bg, align 4, !tbaa !198
  %i.bh = icmp slt i64 %spec.select, %i.b
  br i1 %i.bh, label %bb.b, label %._crit_edge, !llvm.loop !7805

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
  %i.bp = load ptr, ptr %0, align 8, !tbaa !453, !noalias !7810 ; 2 uses
  %i.bq = xor i64 %i.bn, -1
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !198
  %i.bu = sub nsw i64 0, %.0.lcssa
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bu
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4
  store i32 %i.bt, ptr %i.bw, align 4, !tbaa !198
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.122 = phi i64 [ %i.bo, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bx = load i64, ptr %0, align 8, !tbaa !183
  %i.by = inttoptr i64 %i.bx to ptr               ; 3 uses
  %i.bz = icmp sgt i64 %.122, %1
  br i1 %i.bz, label %.lr.ph.i, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_SG_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !187 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !341 ; 2 uses
  %i.ce = and i32 %3, 1048575
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cg = lshr i64 %i.cf, 12
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !183
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
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !198 ; 2 uses
  %i.cp = and i32 %i.co, 1048575
  %i.cq = zext nneg i32 %i.cp to i64              ; 2 uses
  %i.cr = lshr i64 %i.cq, 12
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !183
  %i.cu = and i64 %i.cq, 4095
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !198
  %i.cx = and i32 %i.cw, 1048575
  %i.cy = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.cz = lshr i64 %i.cy, 7
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !211
  %i.dc = and i64 %i.cy, 127
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !194
  %i.df = load i32, ptr %i.ck, align 4, !tbaa !198
  %i.dg = and i32 %i.df, 1048575
  %i.dh = zext nneg i32 %i.dg to i64              ; 2 uses
  %i.di = lshr i64 %i.dh, 7
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !211
  %i.dl = and i64 %i.dh, 127
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !194
  %i.do = icmp slt i32 %i.de, %i.dn
  br i1 %i.do, label %bb.g, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_SG_T1_RT2_.exit

bb.g:                                             ; preds = %bb.f
  %i.dp = sub nsw i64 0, %.0916.i
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.dp
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -4
  store i32 %i.co, ptr %i.dr, align 4, !tbaa !198
  %i.ds = icmp sgt i64 %.017.i, %1
  br i1 %i.ds, label %bb.f, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_SG_T1_RT2_.exit, !llvm.loop !7808

_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_SG_T1_RT2_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.09.lcssa.i = phi i64 [ %.122, %bb.e ], [ %.0916.i, %bb.f ], [ %.017.i, %bb.g ]
  %i.dt = sub nsw i64 0, %.09.lcssa.i
  %i.du = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -4
  store i32 %3, ptr %i.dv, align 4, !tbaa !198
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SF_SF_SG_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !183
  %i.b = load i64, ptr %2, align 8, !tbaa !183
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !198  ; 3 uses
  %i.f = inttoptr i64 %i.b to ptr
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !198  ; 3 uses
  %i.i = and i32 %i.e, 1048575
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = lshr i64 %i.j, 12
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !187  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !183
  %i.p = and i64 %i.j, 4095
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !198
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.v = lshr i64 %i.t, 7
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !341  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !211
  %i.z = and i64 %i.t, 127
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !194 ; 3 uses
  %i.ac = and i32 %i.h, 1048575
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = lshr i64 %i.ad, 12
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !183
  %i.ah = and i64 %i.ad, 4095
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !198
  %i.ak = and i32 %i.aj, 1048575
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = lshr i64 %i.al, 7
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !211
  %i.ap = and i64 %i.al, 127
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !194 ; 3 uses
  %i.as = icmp slt i32 %i.ab, %i.ar
  %i.at = load i64, ptr %3, align 8, !tbaa !183
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -4 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !198 ; 3 uses
  %i.ax = and i32 %i.aw, 1048575
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = lshr i64 %i.ay, 12
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !183
  %i.bc = and i64 %i.ay, 4095
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !198
  %i.bf = and i32 %i.be, 1048575
  %i.bg = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bh = lshr i64 %i.bg, 7
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !211
  %i.bk = and i64 %i.bg, 127
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !194 ; 4 uses
  br i1 %i.as, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.bn = icmp slt i32 %i.ar, %i.bm
  br i1 %i.bn, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bo = load i64, ptr %0, align 8, !tbaa !183
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -4 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !198
  store i32 %i.h, ptr %i.bq, align 4, !tbaa !198
  store i32 %i.br, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.bs = icmp slt i32 %i.ab, %i.bm
  %i.bt = load i64, ptr %0, align 8, !tbaa !183
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -4 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !198 ; 2 uses
  br i1 %i.bs, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.aw, ptr %i.bv, align 4, !tbaa !198
  store i32 %i.bw, ptr %i.av, align 4, !tbaa !198
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i32 %i.e, ptr %i.bv, align 4, !tbaa !198
  store i32 %i.bw, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.bx = icmp slt i32 %i.ab, %i.bm
  br i1 %i.bx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.by = load i64, ptr %0, align 8, !tbaa !183
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -4 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !198
  store i32 %i.e, ptr %i.ca, align 4, !tbaa !198
  store i32 %i.cb, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cc = icmp slt i32 %i.ar, %i.bm
  %i.cd = load i64, ptr %0, align 8, !tbaa !183
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !198 ; 2 uses
  br i1 %i.cc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.aw, ptr %i.cf, align 4, !tbaa !198
  store i32 %i.cg, ptr %i.av, align 4, !tbaa !198
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.h, ptr %i.cf, align 4, !tbaa !198
  store i32 %i.cg, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #22

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverI24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINS4_10value_typeIiEEEEEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.217, i32 noundef 514)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.218, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.219, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !131
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !142
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.220, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
end_hunk_0
begin_hunk_1_@_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SL_SM_:bb.a
  %i.aw = and i32 %i.av, 1048575
  %i.ax = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.ay = lshr i64 %i.ax, 10
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !352
  %i.bb = and i64 %i.ax, 1023
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load i32, ptr %i.an, align 4, !tbaa !354
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !354
  %i.bf = icmp slt i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %1, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bh = load i32, ptr %i.v, align 4, !tbaa !198
  store i32 %i.bh, ptr %i.s, align 4, !tbaa !198
  store i64 %i.r, ptr %4, align 8, !tbaa !183
  %i.bi = sub i64 %i.r, %i.bg
  %i.bj = ashr exact i64 %i.bi, 2
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 noundef 0, i64 noundef %i.bj, i32 noundef %i.t, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre16 = load i64, ptr %0, align 8, !tbaa !183
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %2, align 8, !tbaa !183
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.i18, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ] ; 2 uses
  %i.bk = phi i64 [ %i.r, %bb.d ], [ %.pre16, %bb.e ]
  %.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.s
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !7874
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !453, !noalias !7881 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !350  ; 2 uses
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
  %i.q = load i32, ptr %i.p, align 4, !tbaa !198
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198
  %i.t = and i32 %i.q, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 12
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !183
  %i.y = and i64 %i.u, 4095
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !198
  %i.ab = and i32 %i.aa, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 10
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !352
  %i.ag = and i64 %i.ac, 1023
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = and i32 %i.s, 1048575
  %i.aj = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ak = lshr i64 %i.aj, 12
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !183
  %i.an = and i64 %i.aj, 4095
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !198
  %i.aq = and i32 %i.ap, 1048575
  %i.ar = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.as = lshr i64 %i.ar, 10
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !352
  %i.av = and i64 %i.ar, 1023
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i32, ptr %i.ah, align 4, !tbaa !354
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !354
  %i.az = icmp slt i32 %i.ax, %i.ay
  %spec.select = select i1 %i.az, i64 %i.m, i64 %i.j ; 4 uses
  %i.ba = sub i64 0, %spec.select
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !198
  %i.be = sub i64 0, %.031
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -4
  store i32 %i.bd, ptr %i.bg, align 4, !tbaa !198
  %i.bh = icmp slt i64 %spec.select, %i.b
  br i1 %i.bh, label %bb.b, label %._crit_edge, !llvm.loop !7877

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
  %i.bp = load ptr, ptr %0, align 8, !tbaa !453, !noalias !7882 ; 2 uses
  %i.bq = xor i64 %i.bn, -1
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !198
  %i.bu = sub nsw i64 0, %.0.lcssa
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bu
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4
  store i32 %i.bt, ptr %i.bw, align 4, !tbaa !198
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.122 = phi i64 [ %i.bo, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bx = load i64, ptr %0, align 8, !tbaa !183
  %i.by = inttoptr i64 %i.bx to ptr               ; 3 uses
  %i.bz = icmp sgt i64 %.122, %1
  br i1 %i.bz, label %.lr.ph.i, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !187 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !350 ; 2 uses
  %i.ce = and i32 %3, 1048575
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cg = lshr i64 %i.cf, 12
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !183
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
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !198 ; 2 uses
  %i.cp = and i32 %i.co, 1048575
  %i.cq = zext nneg i32 %i.cp to i64              ; 2 uses
  %i.cr = lshr i64 %i.cq, 12
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !183
  %i.cu = and i64 %i.cq, 4095
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !198
  %i.cx = and i32 %i.cw, 1048575
  %i.cy = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.cz = lshr i64 %i.cy, 10
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !352
  %i.dc = and i64 %i.cy, 1023
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.dc
  %i.de = load i32, ptr %i.ck, align 4, !tbaa !198
  %i.df = and i32 %i.de, 1048575
  %i.dg = zext nneg i32 %i.df to i64              ; 2 uses
  %i.dh = lshr i64 %i.dg, 10
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !352
  %i.dk = and i64 %i.dg, 1023
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dk
  %i.dm = load i32, ptr %i.dd, align 4, !tbaa !354
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !354
  %i.do = icmp slt i32 %i.dm, %i.dn
  br i1 %i.do, label %bb.g, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_RT2_.exit

bb.g:                                             ; preds = %bb.f
  %i.dp = sub nsw i64 0, %.0916.i
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.dp
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -4
  store i32 %i.co, ptr %i.dr, align 4, !tbaa !198
  %i.ds = icmp sgt i64 %.017.i, %1
  br i1 %i.ds, label %bb.f, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_RT2_.exit, !llvm.loop !7880

_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_RT2_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.09.lcssa.i = phi i64 [ %.122, %bb.e ], [ %.0916.i, %bb.f ], [ %.017.i, %bb.g ]
  %i.dt = sub nsw i64 0, %.09.lcssa.i
  %i.du = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -4
  store i32 %3, ptr %i.dv, align 4, !tbaa !198
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SL_SL_SM_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !183
  %i.b = load i64, ptr %2, align 8, !tbaa !183
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !198  ; 3 uses
  %i.f = inttoptr i64 %i.b to ptr
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !198  ; 3 uses
  %i.i = and i32 %i.e, 1048575
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = lshr i64 %i.j, 12
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !187  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !183
  %i.p = and i64 %i.j, 4095
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !198
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.v = lshr i64 %i.t, 10
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !350  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !352
  %i.z = and i64 %i.t, 1023
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = and i32 %i.h, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !183
  %i.ag = and i64 %i.ac, 4095
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !198
  %i.aj = and i32 %i.ai, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !352
  %i.ao = and i64 %i.ak, 1023
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.aa, align 4, !tbaa !354 ; 3 uses
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !354 ; 3 uses
  %i.as = icmp slt i32 %i.aq, %i.ar
  %i.at = load i64, ptr %3, align 8, !tbaa !183
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -4 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !198 ; 3 uses
  %i.ax = and i32 %i.aw, 1048575
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = lshr i64 %i.ay, 12
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !183
  %i.bc = and i64 %i.ay, 4095
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !198
  %i.bf = and i32 %i.be, 1048575
  %i.bg = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bh = lshr i64 %i.bg, 10
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !352
  %i.bk = and i64 %i.bg, 1023
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !354 ; 4 uses
  br i1 %i.as, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.bn = icmp slt i32 %i.ar, %i.bm
  br i1 %i.bn, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bo = load i64, ptr %0, align 8, !tbaa !183
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -4 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !198
  store i32 %i.h, ptr %i.bq, align 4, !tbaa !198
  store i32 %i.br, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.bs = icmp slt i32 %i.aq, %i.bm
  %i.bt = load i64, ptr %0, align 8, !tbaa !183
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -4 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !198 ; 2 uses
  br i1 %i.bs, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.aw, ptr %i.bv, align 4, !tbaa !198
  store i32 %i.bw, ptr %i.av, align 4, !tbaa !198
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i32 %i.e, ptr %i.bv, align 4, !tbaa !198
  store i32 %i.bw, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.bx = icmp slt i32 %i.aq, %i.bm
  br i1 %i.bx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.by = load i64, ptr %0, align 8, !tbaa !183
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -4 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !198
  store i32 %i.e, ptr %i.ca, align 4, !tbaa !198
  store i32 %i.cb, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cc = icmp slt i32 %i.ar, %i.bm
  %i.cd = load i64, ptr %0, align 8, !tbaa !183
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !198 ; 2 uses
  br i1 %i.cc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.aw, ptr %i.cf, align 4, !tbaa !198
  store i32 %i.cg, ptr %i.av, align 4, !tbaa !198
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.h, ptr %i.cf, align 4, !tbaa !198
  store i32 %i.cg, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverI24Storage_SortOrdered_TestIN4test8internal32non_trivially_destructible_mixinINS4_10value_typeIiEEEEEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.217, i32 noundef 514)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.218, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.219, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !131
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !142
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.220, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
end_hunk_1
begin_hunk_2_@_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SL_SM_:bb.a
  %i.bc = and i64 %i.ay, 1023
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i32, ptr %i.ao, align 4, !tbaa !354
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !354
  %i.bh = icmp slt i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bi = load i64, ptr %1, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bj = load i32, ptr %i.v, align 4, !tbaa !198
  store i32 %i.bj, ptr %i.s, align 4, !tbaa !198
  store i64 %i.r, ptr %4, align 8, !tbaa !183
  %i.bk = sub i64 %i.r, %i.bi
  %i.bl = ashr exact i64 %i.bk, 2
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 noundef 0, i64 noundef %i.bl, i32 noundef %i.t, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre16 = load i64, ptr %0, align 8, !tbaa !183
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %2, align 8, !tbaa !183
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.i18, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ] ; 2 uses
  %i.bm = phi i64 [ %i.r, %bb.d ], [ %.pre16, %bb.e ]
  %.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.s
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !7928
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !453, !noalias !7935 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !359  ; 2 uses
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
  %i.q = load i32, ptr %i.p, align 4, !tbaa !198
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198
  %i.t = and i32 %i.q, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 12
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !183
  %i.y = and i64 %i.u, 4095
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !198
  %i.ab = and i32 %i.aa, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 10
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !361
  %i.ag = and i64 %i.ac, 1023
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = and i32 %i.s, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 12
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !183
  %i.ao = and i64 %i.ak, 4095
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !198
  %i.ar = and i32 %i.aq, 1048575
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = lshr i64 %i.as, 10
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !361
  %i.aw = and i64 %i.as, 1023
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i32, ptr %i.ai, align 4, !tbaa !354
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !354
  %i.bb = icmp slt i32 %i.az, %i.ba
  %spec.select = select i1 %i.bb, i64 %i.m, i64 %i.j ; 4 uses
  %i.bc = sub i64 0, %spec.select
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !198
  %i.bg = sub i64 0, %.031
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4
  store i32 %i.bf, ptr %i.bi, align 4, !tbaa !198
  %i.bj = icmp slt i64 %spec.select, %i.b
  br i1 %i.bj, label %bb.b, label %._crit_edge, !llvm.loop !7931

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 5 uses
  %i.bk = and i64 %2, 1
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.bm = add nsw i64 %2, -2
  %i.bn = ashr exact i64 %i.bm, 1
  %i.bo = icmp eq i64 %.0.lcssa, %i.bn
  br i1 %i.bo, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bp = shl nsw i64 %.0.lcssa, 1                ; 2 uses
  %i.bq = or disjoint i64 %i.bp, 1
  %i.br = load ptr, ptr %0, align 8, !tbaa !453, !noalias !7936 ; 2 uses
  %i.bs = xor i64 %i.bp, -1
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bs
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !198
  %i.bw = sub nsw i64 0, %.0.lcssa
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bw
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4
  store i32 %i.bv, ptr %i.by, align 4, !tbaa !198
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.122 = phi i64 [ %i.bq, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bz = load i64, ptr %0, align 8, !tbaa !183
  %i.ca = inttoptr i64 %i.bz to ptr               ; 3 uses
  %i.cb = icmp sgt i64 %.122, %1
  br i1 %i.cb, label %.lr.ph.i, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN24Storage_SortOrdered_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !187 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !359 ; 2 uses
  %i.cg = and i32 %3, 1048575
  %i.ch = zext nneg i32 %i.cg to i64              ; 2 uses
  %i.ci = lshr i64 %i.ch, 12
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !183
  %i.cl = and i64 %i.ch, 4095
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cl
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %.0916.i = phi i64 [ %.122, %.lr.ph.i ], [ %.017.i, %bb.g ] ; 3 uses
  %.017.in.i = add nsw i64 %.0916.i, -1
  %.017.i = sdiv i64 %.017.in.i, 2                ; 4 uses
  %i.cn = sub nsw i64 0, %.017.i
  %i.co = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cn
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !198 ; 2 uses
  %i.cr = and i32 %i.cq, 1048575
  %i.cs = zext nneg i32 %i.cr to i64              ; 2 uses
  %i.ct = lshr i64 %i.cs, 12
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !183
  %i.cw = and i64 %i.cs, 4095
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !198
  %i.cz = and i32 %i.cy, 1048575
  %i.da = zext nneg i32 %i.cz to i64              ; 2 uses
  %i.db = lshr i64 %i.da, 10
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !361
  %i.de = and i64 %i.da, 1023
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i32, ptr %i.cm, align 4, !tbaa !198
  %i.di = and i32 %i.dh, 1048575
  %i.dj = zext nneg i32 %i.di to i64              ; 2 uses
  %i.dk = lshr i64 %i.dj, 10
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !361
  %i.dn = and i64 %i.dj, 1023
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load i32, ptr %i.dg, align 4, !tbaa !354
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !354
  %i.ds = icmp slt i32 %i.dq, %i.dr
  br i1 %i.ds, label %bb.g, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN24Storage_SortOrdered_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_RT2_.exit

bb.g:                                             ; preds = %bb.f
  %i.dt = sub nsw i64 0, %.0916.i
  %i.du = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -4
  store i32 %i.cq, ptr %i.dv, align 4, !tbaa !198
  %i.dw = icmp sgt i64 %.017.i, %1
  br i1 %i.dw, label %bb.f, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN24Storage_SortOrdered_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_RT2_.exit, !llvm.loop !7934

_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN24Storage_SortOrdered_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_RT2_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.09.lcssa.i = phi i64 [ %.122, %bb.e ], [ %.0916.i, %bb.f ], [ %.017.i, %bb.g ]
  %i.dx = sub nsw i64 0, %.09.lcssa.i
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.dx
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -4
  store i32 %3, ptr %i.dz, align 4, !tbaa !198
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SL_SL_SM_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !183
  %i.b = load i64, ptr %2, align 8, !tbaa !183
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !198  ; 3 uses
  %i.f = inttoptr i64 %i.b to ptr
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !198  ; 3 uses
  %i.i = and i32 %i.e, 1048575
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = lshr i64 %i.j, 12
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !187  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !183
  %i.p = and i64 %i.j, 4095
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !198
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.v = lshr i64 %i.t, 10
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !359  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !361
  %i.z = and i64 %i.t, 1023
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = and i32 %i.h, 1048575
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = lshr i64 %i.ad, 12
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !183
  %i.ah = and i64 %i.ad, 4095
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !198
  %i.ak = and i32 %i.aj, 1048575
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = lshr i64 %i.al, 10
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !361
  %i.ap = and i64 %i.al, 1023
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ab, align 4, !tbaa !354 ; 3 uses
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !354 ; 3 uses
  %i.au = icmp slt i32 %i.as, %i.at
  %i.av = load i64, ptr %3, align 8, !tbaa !183
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !198 ; 3 uses
  %i.az = and i32 %i.ay, 1048575
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = lshr i64 %i.ba, 12
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !183
  %i.be = and i64 %i.ba, 4095
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !198
  %i.bh = and i32 %i.bg, 1048575
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = lshr i64 %i.bi, 10
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !361
  %i.bm = and i64 %i.bi, 1023
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !354 ; 4 uses
  br i1 %i.au, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.bq = icmp slt i32 %i.at, %i.bp
  br i1 %i.bq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.br = load i64, ptr %0, align 8, !tbaa !183
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.h, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.bu, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.bv = icmp slt i32 %i.as, %i.bp
  %i.bw = load i64, ptr %0, align 8, !tbaa !183
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !198 ; 2 uses
  br i1 %i.bv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.ay, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i32 %i.e, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.ca = icmp slt i32 %i.as, %i.bp
  br i1 %i.ca, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cb = load i64, ptr %0, align 8, !tbaa !183
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.e, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.ce, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cf = icmp slt i32 %i.at, %i.bp
  %i.cg = load i64, ptr %0, align 8, !tbaa !183
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -4 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !198 ; 2 uses
  br i1 %i.cf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.ay, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.h, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8, !tbaa !183 ; 3 uses
  %i.a = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 4 uses
  %i.d = icmp eq ptr %i.c, %.sroa.0.0.copyload.i2.i
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !359  ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.010.016 = phi ptr [ %i.c, %.lr.ph ], [ %i.i, %bb.f ] ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.010.016, i64 -4 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !198  ; 3 uses
  %i.k = load i32, ptr %i.c, align 4, !tbaa !198
  %i.l = and i32 %i.j, 1048575
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = lshr i64 %i.m, 12
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183
  %i.q = and i64 %i.m, 4095
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198  ; 2 uses
  %i.t = and i32 %i.s, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 10
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !361
  %i.y = and i64 %i.u, 1023
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = and i32 %i.k, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !183
  %i.ag = and i64 %i.ac, 4095
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !198
  %i.aj = and i32 %i.ai, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !361
end_hunk_2
begin_hunk_3_@_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SN_SN_SO_:bb.a
  %i.bc = and i64 %i.ay, 1023
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i32, ptr %i.ao, align 4, !tbaa !354
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !354
  %i.bh = icmp slt i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bi = load i64, ptr %1, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bj = load i32, ptr %i.v, align 4, !tbaa !198
  store i32 %i.bj, ptr %i.s, align 4, !tbaa !198
  store i64 %i.r, ptr %4, align 8, !tbaa !183
  %i.bk = sub i64 %i.r, %i.bi
  %i.bl = ashr exact i64 %i.bk, 2
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SO_SO_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 noundef 0, i64 noundef %i.bl, i32 noundef %i.t, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre16 = load i64, ptr %0, align 8, !tbaa !183
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %2, align 8, !tbaa !183
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.i18, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ] ; 2 uses
  %i.bm = phi i64 [ %i.r, %bb.d ], [ %.pre16, %bb.e ]
  %.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.s
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !7979
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SO_SO_T1_T2_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !453, !noalias !7986 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !367  ; 2 uses
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
  %i.q = load i32, ptr %i.p, align 4, !tbaa !198
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198
  %i.t = and i32 %i.q, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 12
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !183
  %i.y = and i64 %i.u, 4095
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !198
  %i.ab = and i32 %i.aa, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 10
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !369
  %i.ag = and i64 %i.ac, 1023
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = and i32 %i.s, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 12
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !183
  %i.ao = and i64 %i.ak, 4095
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !198
  %i.ar = and i32 %i.aq, 1048575
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = lshr i64 %i.as, 10
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !369
  %i.aw = and i64 %i.as, 1023
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i32, ptr %i.ai, align 4, !tbaa !354
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !354
  %i.bb = icmp slt i32 %i.az, %i.ba
  %spec.select = select i1 %i.bb, i64 %i.m, i64 %i.j ; 4 uses
  %i.bc = sub i64 0, %spec.select
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !198
  %i.bg = sub i64 0, %.031
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4
  store i32 %i.bf, ptr %i.bi, align 4, !tbaa !198
  %i.bj = icmp slt i64 %spec.select, %i.b
  br i1 %i.bj, label %bb.b, label %._crit_edge, !llvm.loop !7982

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 5 uses
  %i.bk = and i64 %2, 1
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.bm = add nsw i64 %2, -2
  %i.bn = ashr exact i64 %i.bm, 1
  %i.bo = icmp eq i64 %.0.lcssa, %i.bn
  br i1 %i.bo, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bp = shl nsw i64 %.0.lcssa, 1                ; 2 uses
  %i.bq = or disjoint i64 %i.bp, 1
  %i.br = load ptr, ptr %0, align 8, !tbaa !453, !noalias !7987 ; 2 uses
  %i.bs = xor i64 %i.bp, -1
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bs
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !198
  %i.bw = sub nsw i64 0, %.0.lcssa
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bw
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4
  store i32 %i.bv, ptr %i.by, align 4, !tbaa !198
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.122 = phi i64 [ %i.bq, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bz = load i64, ptr %0, align 8, !tbaa !183
  %i.ca = inttoptr i64 %i.bz to ptr               ; 3 uses
  %i.cb = icmp sgt i64 %.122, %1
  br i1 %i.cb, label %.lr.ph.i, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SO_SO_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !187 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !367 ; 2 uses
  %i.cg = and i32 %3, 1048575
  %i.ch = zext nneg i32 %i.cg to i64              ; 2 uses
  %i.ci = lshr i64 %i.ch, 12
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !183
  %i.cl = and i64 %i.ch, 4095
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cl
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %.0916.i = phi i64 [ %.122, %.lr.ph.i ], [ %.017.i, %bb.g ] ; 3 uses
  %.017.in.i = add nsw i64 %.0916.i, -1
  %.017.i = sdiv i64 %.017.in.i, 2                ; 4 uses
  %i.cn = sub nsw i64 0, %.017.i
  %i.co = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cn
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !198 ; 2 uses
  %i.cr = and i32 %i.cq, 1048575
  %i.cs = zext nneg i32 %i.cr to i64              ; 2 uses
  %i.ct = lshr i64 %i.cs, 12
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !183
  %i.cw = and i64 %i.cs, 4095
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !198
  %i.cz = and i32 %i.cy, 1048575
  %i.da = zext nneg i32 %i.cz to i64              ; 2 uses
  %i.db = lshr i64 %i.da, 10
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !369
  %i.de = and i64 %i.da, 1023
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i32, ptr %i.cm, align 4, !tbaa !198
  %i.di = and i32 %i.dh, 1048575
  %i.dj = zext nneg i32 %i.di to i64              ; 2 uses
  %i.dk = lshr i64 %i.dj, 10
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !369
  %i.dn = and i64 %i.dj, 1023
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load i32, ptr %i.dg, align 4, !tbaa !354
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !354
  %i.ds = icmp slt i32 %i.dq, %i.dr
  br i1 %i.ds, label %bb.g, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SO_SO_T1_RT2_.exit

bb.g:                                             ; preds = %bb.f
  %i.dt = sub nsw i64 0, %.0916.i
  %i.du = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -4
  store i32 %i.cq, ptr %i.dv, align 4, !tbaa !198
  %i.dw = icmp sgt i64 %.017.i, %1
  br i1 %i.dw, label %bb.f, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SO_SO_T1_RT2_.exit, !llvm.loop !7985

_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SO_SO_T1_RT2_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.09.lcssa.i = phi i64 [ %.122, %bb.e ], [ %.0916.i, %bb.f ], [ %.017.i, %bb.g ]
  %i.dx = sub nsw i64 0, %.09.lcssa.i
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.dx
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -4
  store i32 %3, ptr %i.dz, align 4, !tbaa !198
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SN_SN_SN_SO_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !183
  %i.b = load i64, ptr %2, align 8, !tbaa !183
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !198  ; 3 uses
  %i.f = inttoptr i64 %i.b to ptr
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !198  ; 3 uses
  %i.i = and i32 %i.e, 1048575
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = lshr i64 %i.j, 12
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !187  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !183
  %i.p = and i64 %i.j, 4095
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !198
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.v = lshr i64 %i.t, 10
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !367  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !369
  %i.z = and i64 %i.t, 1023
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = and i32 %i.h, 1048575
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = lshr i64 %i.ad, 12
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !183
  %i.ah = and i64 %i.ad, 4095
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !198
  %i.ak = and i32 %i.aj, 1048575
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = lshr i64 %i.al, 10
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !369
  %i.ap = and i64 %i.al, 1023
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ab, align 4, !tbaa !354 ; 3 uses
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !354 ; 3 uses
  %i.au = icmp slt i32 %i.as, %i.at
  %i.av = load i64, ptr %3, align 8, !tbaa !183
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !198 ; 3 uses
  %i.az = and i32 %i.ay, 1048575
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = lshr i64 %i.ba, 12
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !183
  %i.be = and i64 %i.ba, 4095
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !198
  %i.bh = and i32 %i.bg, 1048575
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = lshr i64 %i.bi, 10
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !369
  %i.bm = and i64 %i.bi, 1023
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !354 ; 4 uses
  br i1 %i.au, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.bq = icmp slt i32 %i.at, %i.bp
  br i1 %i.bq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.br = load i64, ptr %0, align 8, !tbaa !183
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.h, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.bu, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.bv = icmp slt i32 %i.as, %i.bp
  %i.bw = load i64, ptr %0, align 8, !tbaa !183
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !198 ; 2 uses
  br i1 %i.bv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.ay, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i32 %i.e, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.ca = icmp slt i32 %i.as, %i.bp
  br i1 %i.ca, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cb = load i64, ptr %0, align 8, !tbaa !183
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.e, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.ce, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cf = icmp slt i32 %i.at, %i.bp
  %i.cg = load i64, ptr %0, align 8, !tbaa !183
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -4 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !198 ; 2 uses
  br i1 %i.cf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.ay, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.h, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SN_SO_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8, !tbaa !183 ; 3 uses
  %i.a = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 4 uses
  %i.d = icmp eq ptr %i.c, %.sroa.0.0.copyload.i2.i
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !367  ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.010.016 = phi ptr [ %i.c, %.lr.ph ], [ %i.i, %bb.f ] ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.010.016, i64 -4 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !198  ; 3 uses
  %i.k = load i32, ptr %i.c, align 4, !tbaa !198
  %i.l = and i32 %i.j, 1048575
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = lshr i64 %i.m, 12
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183
  %i.q = and i64 %i.m, 4095
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198  ; 2 uses
  %i.t = and i32 %i.s, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 10
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !369
  %i.y = and i64 %i.u, 1023
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = and i32 %i.k, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !183
  %i.ag = and i64 %i.ac, 4095
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !198
  %i.aj = and i32 %i.ai, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !369
end_hunk_3
begin_hunk_4_@_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SF_SG_:bb.a
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !198
  %i.ax = and i32 %i.aw, 1048575
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = lshr i64 %i.ay, 7
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !211
  %i.bc = and i64 %i.ay, 127
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !194
  %i.bf = icmp slt i32 %i.ao, %i.be
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %1, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bh = load i32, ptr %i.v, align 4, !tbaa !198
  store i32 %i.bh, ptr %i.s, align 4, !tbaa !198
  store i64 %i.r, ptr %4, align 8, !tbaa !183
  %i.bi = sub i64 %i.r, %i.bg
  %i.bj = ashr exact i64 %i.bi, 2
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_SG_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 noundef 0, i64 noundef %i.bj, i32 noundef %i.t, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre16 = load i64, ptr %0, align 8, !tbaa !183
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %2, align 8, !tbaa !183
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.i18, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ] ; 2 uses
  %i.bk = phi i64 [ %i.r, %bb.d ], [ %.pre16, %bb.e ]
  %.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.s
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !8063
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_SG_T1_T2_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !453, !noalias !8070 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !341  ; 2 uses
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
  %i.q = load i32, ptr %i.p, align 4, !tbaa !198
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198
  %i.t = and i32 %i.q, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 12
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !183
  %i.y = and i64 %i.u, 4095
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !198
  %i.ab = and i32 %i.aa, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 7
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !211
  %i.ag = and i64 %i.ac, 127
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !194
  %i.aj = and i32 %i.s, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 12
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !183
  %i.ao = and i64 %i.ak, 4095
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !198
  %i.ar = and i32 %i.aq, 1048575
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = lshr i64 %i.as, 7
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !211
  %i.aw = and i64 %i.as, 127
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !194
  %i.az = icmp slt i32 %i.ai, %i.ay
  %spec.select = select i1 %i.az, i64 %i.m, i64 %i.j ; 4 uses
  %i.ba = sub i64 0, %spec.select
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !198
  %i.be = sub i64 0, %.031
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -4
  store i32 %i.bd, ptr %i.bg, align 4, !tbaa !198
  %i.bh = icmp slt i64 %spec.select, %i.b
  br i1 %i.bh, label %bb.b, label %._crit_edge, !llvm.loop !8066

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
  %i.bp = load ptr, ptr %0, align 8, !tbaa !453, !noalias !8071 ; 2 uses
  %i.bq = xor i64 %i.bn, -1
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !198
  %i.bu = sub nsw i64 0, %.0.lcssa
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bu
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4
  store i32 %i.bt, ptr %i.bw, align 4, !tbaa !198
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.122 = phi i64 [ %i.bo, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bx = load i64, ptr %0, align 8, !tbaa !183
  %i.by = inttoptr i64 %i.bx to ptr               ; 3 uses
  %i.bz = icmp sgt i64 %.122, %1
  br i1 %i.bz, label %.lr.ph.i, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_SG_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !187 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !341 ; 2 uses
  %i.ce = and i32 %3, 1048575
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cg = lshr i64 %i.cf, 12
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !183
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
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !198 ; 2 uses
  %i.cp = and i32 %i.co, 1048575
  %i.cq = zext nneg i32 %i.cp to i64              ; 2 uses
  %i.cr = lshr i64 %i.cq, 12
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !183
  %i.cu = and i64 %i.cq, 4095
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !198
  %i.cx = and i32 %i.cw, 1048575
  %i.cy = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.cz = lshr i64 %i.cy, 7
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !211
  %i.dc = and i64 %i.cy, 127
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !194
  %i.df = load i32, ptr %i.ck, align 4, !tbaa !198
  %i.dg = and i32 %i.df, 1048575
  %i.dh = zext nneg i32 %i.dg to i64              ; 2 uses
  %i.di = lshr i64 %i.dh, 7
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !211
  %i.dl = and i64 %i.dh, 127
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !194
  %i.do = icmp slt i32 %i.de, %i.dn
  br i1 %i.do, label %bb.g, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_SG_T1_RT2_.exit

bb.g:                                             ; preds = %bb.f
  %i.dp = sub nsw i64 0, %.0916.i
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.dp
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -4
  store i32 %i.co, ptr %i.dr, align 4, !tbaa !198
  %i.ds = icmp sgt i64 %.017.i, %1
  br i1 %i.ds, label %bb.f, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_SG_T1_RT2_.exit, !llvm.loop !8069

_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_SG_T1_RT2_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.09.lcssa.i = phi i64 [ %.122, %bb.e ], [ %.0916.i, %bb.f ], [ %.017.i, %bb.g ]
  %i.dt = sub nsw i64 0, %.09.lcssa.i
  %i.du = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -4
  store i32 %3, ptr %i.dv, align 4, !tbaa !198
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SF_SF_SG_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !183
  %i.b = load i64, ptr %2, align 8, !tbaa !183
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !198  ; 3 uses
  %i.f = inttoptr i64 %i.b to ptr
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !198  ; 3 uses
  %i.i = and i32 %i.e, 1048575
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = lshr i64 %i.j, 12
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !187  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !183
  %i.p = and i64 %i.j, 4095
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !198
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.v = lshr i64 %i.t, 7
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !341  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !211
  %i.z = and i64 %i.t, 127
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !194 ; 3 uses
  %i.ac = and i32 %i.h, 1048575
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = lshr i64 %i.ad, 12
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !183
  %i.ah = and i64 %i.ad, 4095
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !198
  %i.ak = and i32 %i.aj, 1048575
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = lshr i64 %i.al, 7
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !211
  %i.ap = and i64 %i.al, 127
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !194 ; 3 uses
  %i.as = icmp slt i32 %i.ab, %i.ar
  %i.at = load i64, ptr %3, align 8, !tbaa !183
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -4 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !198 ; 3 uses
  %i.ax = and i32 %i.aw, 1048575
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = lshr i64 %i.ay, 12
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !183
  %i.bc = and i64 %i.ay, 4095
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !198
  %i.bf = and i32 %i.be, 1048575
  %i.bg = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bh = lshr i64 %i.bg, 7
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !211
  %i.bk = and i64 %i.bg, 127
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !194 ; 4 uses
  br i1 %i.as, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.bn = icmp slt i32 %i.ar, %i.bm
  br i1 %i.bn, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bo = load i64, ptr %0, align 8, !tbaa !183
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -4 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !198
  store i32 %i.h, ptr %i.bq, align 4, !tbaa !198
  store i32 %i.br, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.bs = icmp slt i32 %i.ab, %i.bm
  %i.bt = load i64, ptr %0, align 8, !tbaa !183
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -4 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !198 ; 2 uses
  br i1 %i.bs, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.aw, ptr %i.bv, align 4, !tbaa !198
  store i32 %i.bw, ptr %i.av, align 4, !tbaa !198
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i32 %i.e, ptr %i.bv, align 4, !tbaa !198
  store i32 %i.bw, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.bx = icmp slt i32 %i.ab, %i.bm
  br i1 %i.bx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.by = load i64, ptr %0, align 8, !tbaa !183
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -4 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !198
  store i32 %i.e, ptr %i.ca, align 4, !tbaa !198
  store i32 %i.cb, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cc = icmp slt i32 %i.ar, %i.bm
  %i.cd = load i64, ptr %0, align 8, !tbaa !183
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !198 ; 2 uses
  br i1 %i.cc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.aw, ptr %i.cf, align 4, !tbaa !198
  store i32 %i.cg, ptr %i.av, align 4, !tbaa !198
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.h, ptr %i.cf, align 4, !tbaa !198
  store i32 %i.cg, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverI24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINS4_10value_typeIiEEEEEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.217, i32 noundef 514)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.218, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.219, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !131
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !142
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.220, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
end_hunk_4
begin_hunk_5_@_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SL_SM_:bb.a
  %i.aw = and i32 %i.av, 1048575
  %i.ax = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.ay = lshr i64 %i.ax, 10
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !352
  %i.bb = and i64 %i.ax, 1023
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load i32, ptr %i.an, align 4, !tbaa !354
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !354
  %i.bf = icmp slt i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %1, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bh = load i32, ptr %i.v, align 4, !tbaa !198
  store i32 %i.bh, ptr %i.s, align 4, !tbaa !198
  store i64 %i.r, ptr %4, align 8, !tbaa !183
  %i.bi = sub i64 %i.r, %i.bg
  %i.bj = ashr exact i64 %i.bi, 2
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 noundef 0, i64 noundef %i.bj, i32 noundef %i.t, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre16 = load i64, ptr %0, align 8, !tbaa !183
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %2, align 8, !tbaa !183
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.i18, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ] ; 2 uses
  %i.bk = phi i64 [ %i.r, %bb.d ], [ %.pre16, %bb.e ]
  %.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.s
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !8135
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !453, !noalias !8142 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !350  ; 2 uses
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
  %i.q = load i32, ptr %i.p, align 4, !tbaa !198
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198
  %i.t = and i32 %i.q, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 12
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !183
  %i.y = and i64 %i.u, 4095
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !198
  %i.ab = and i32 %i.aa, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 10
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !352
  %i.ag = and i64 %i.ac, 1023
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = and i32 %i.s, 1048575
  %i.aj = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ak = lshr i64 %i.aj, 12
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !183
  %i.an = and i64 %i.aj, 4095
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !198
  %i.aq = and i32 %i.ap, 1048575
  %i.ar = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.as = lshr i64 %i.ar, 10
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !352
  %i.av = and i64 %i.ar, 1023
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i32, ptr %i.ah, align 4, !tbaa !354
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !354
  %i.az = icmp slt i32 %i.ax, %i.ay
  %spec.select = select i1 %i.az, i64 %i.m, i64 %i.j ; 4 uses
  %i.ba = sub i64 0, %spec.select
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !198
  %i.be = sub i64 0, %.031
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -4
  store i32 %i.bd, ptr %i.bg, align 4, !tbaa !198
  %i.bh = icmp slt i64 %spec.select, %i.b
  br i1 %i.bh, label %bb.b, label %._crit_edge, !llvm.loop !8138

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
  %i.bp = load ptr, ptr %0, align 8, !tbaa !453, !noalias !8143 ; 2 uses
  %i.bq = xor i64 %i.bn, -1
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !198
  %i.bu = sub nsw i64 0, %.0.lcssa
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bu
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4
  store i32 %i.bt, ptr %i.bw, align 4, !tbaa !198
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.122 = phi i64 [ %i.bo, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bx = load i64, ptr %0, align 8, !tbaa !183
  %i.by = inttoptr i64 %i.bx to ptr               ; 3 uses
  %i.bz = icmp sgt i64 %.122, %1
  br i1 %i.bz, label %.lr.ph.i, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !187 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !350 ; 2 uses
  %i.ce = and i32 %3, 1048575
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cg = lshr i64 %i.cf, 12
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !183
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
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !198 ; 2 uses
  %i.cp = and i32 %i.co, 1048575
  %i.cq = zext nneg i32 %i.cp to i64              ; 2 uses
  %i.cr = lshr i64 %i.cq, 12
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !183
  %i.cu = and i64 %i.cq, 4095
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !198
  %i.cx = and i32 %i.cw, 1048575
  %i.cy = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.cz = lshr i64 %i.cy, 10
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !352
  %i.dc = and i64 %i.cy, 1023
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.dc
  %i.de = load i32, ptr %i.ck, align 4, !tbaa !198
  %i.df = and i32 %i.de, 1048575
  %i.dg = zext nneg i32 %i.df to i64              ; 2 uses
  %i.dh = lshr i64 %i.dg, 10
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !352
  %i.dk = and i64 %i.dg, 1023
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dk
  %i.dm = load i32, ptr %i.dd, align 4, !tbaa !354
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !354
  %i.do = icmp slt i32 %i.dm, %i.dn
  br i1 %i.do, label %bb.g, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_RT2_.exit

bb.g:                                             ; preds = %bb.f
  %i.dp = sub nsw i64 0, %.0916.i
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.dp
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -4
  store i32 %i.co, ptr %i.dr, align 4, !tbaa !198
  %i.ds = icmp sgt i64 %.017.i, %1
  br i1 %i.ds, label %bb.f, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_RT2_.exit, !llvm.loop !8141

_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_RT2_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.09.lcssa.i = phi i64 [ %.122, %bb.e ], [ %.0916.i, %bb.f ], [ %.017.i, %bb.g ]
  %i.dt = sub nsw i64 0, %.09.lcssa.i
  %i.du = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -4
  store i32 %3, ptr %i.dv, align 4, !tbaa !198
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SL_SL_SM_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !183
  %i.b = load i64, ptr %2, align 8, !tbaa !183
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !198  ; 3 uses
  %i.f = inttoptr i64 %i.b to ptr
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !198  ; 3 uses
  %i.i = and i32 %i.e, 1048575
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = lshr i64 %i.j, 12
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !187  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !183
  %i.p = and i64 %i.j, 4095
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !198
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.v = lshr i64 %i.t, 10
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !350  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !352
  %i.z = and i64 %i.t, 1023
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = and i32 %i.h, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !183
  %i.ag = and i64 %i.ac, 4095
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !198
  %i.aj = and i32 %i.ai, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !352
  %i.ao = and i64 %i.ak, 1023
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.aa, align 4, !tbaa !354 ; 3 uses
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !354 ; 3 uses
  %i.as = icmp slt i32 %i.aq, %i.ar
  %i.at = load i64, ptr %3, align 8, !tbaa !183
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -4 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !198 ; 3 uses
  %i.ax = and i32 %i.aw, 1048575
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = lshr i64 %i.ay, 12
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !183
  %i.bc = and i64 %i.ay, 4095
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !198
  %i.bf = and i32 %i.be, 1048575
  %i.bg = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bh = lshr i64 %i.bg, 10
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !352
  %i.bk = and i64 %i.bg, 1023
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !354 ; 4 uses
  br i1 %i.as, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.bn = icmp slt i32 %i.ar, %i.bm
  br i1 %i.bn, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bo = load i64, ptr %0, align 8, !tbaa !183
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -4 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !198
  store i32 %i.h, ptr %i.bq, align 4, !tbaa !198
  store i32 %i.br, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.bs = icmp slt i32 %i.aq, %i.bm
  %i.bt = load i64, ptr %0, align 8, !tbaa !183
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -4 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !198 ; 2 uses
  br i1 %i.bs, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.aw, ptr %i.bv, align 4, !tbaa !198
  store i32 %i.bw, ptr %i.av, align 4, !tbaa !198
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i32 %i.e, ptr %i.bv, align 4, !tbaa !198
  store i32 %i.bw, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.bx = icmp slt i32 %i.aq, %i.bm
  br i1 %i.bx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.by = load i64, ptr %0, align 8, !tbaa !183
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -4 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !198
  store i32 %i.e, ptr %i.ca, align 4, !tbaa !198
  store i32 %i.cb, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cc = icmp slt i32 %i.ar, %i.bm
  %i.cd = load i64, ptr %0, align 8, !tbaa !183
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !198 ; 2 uses
  br i1 %i.cc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.aw, ptr %i.cf, align 4, !tbaa !198
  store i32 %i.cg, ptr %i.av, align 4, !tbaa !198
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.h, ptr %i.cf, align 4, !tbaa !198
  store i32 %i.cg, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverI24Storage_SortReverse_TestIN4test8internal32non_trivially_destructible_mixinINS4_10value_typeIiEEEEEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.217, i32 noundef 514)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.218, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.219, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !131
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !142
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.220, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
end_hunk_5
begin_hunk_6_@_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SL_SM_:bb.a
  %i.bc = and i64 %i.ay, 1023
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i32, ptr %i.ao, align 4, !tbaa !354
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !354
  %i.bh = icmp slt i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bi = load i64, ptr %1, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bj = load i32, ptr %i.v, align 4, !tbaa !198
  store i32 %i.bj, ptr %i.s, align 4, !tbaa !198
  store i64 %i.r, ptr %4, align 8, !tbaa !183
  %i.bk = sub i64 %i.r, %i.bi
  %i.bl = ashr exact i64 %i.bk, 2
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 noundef 0, i64 noundef %i.bl, i32 noundef %i.t, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre16 = load i64, ptr %0, align 8, !tbaa !183
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %2, align 8, !tbaa !183
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.i18, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ] ; 2 uses
  %i.bm = phi i64 [ %i.r, %bb.d ], [ %.pre16, %bb.e ]
  %.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.s
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !8189
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !453, !noalias !8196 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !359  ; 2 uses
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
  %i.q = load i32, ptr %i.p, align 4, !tbaa !198
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198
  %i.t = and i32 %i.q, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 12
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !183
  %i.y = and i64 %i.u, 4095
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !198
  %i.ab = and i32 %i.aa, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 10
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !361
  %i.ag = and i64 %i.ac, 1023
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = and i32 %i.s, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 12
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !183
  %i.ao = and i64 %i.ak, 4095
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !198
  %i.ar = and i32 %i.aq, 1048575
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = lshr i64 %i.as, 10
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !361
  %i.aw = and i64 %i.as, 1023
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i32, ptr %i.ai, align 4, !tbaa !354
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !354
  %i.bb = icmp slt i32 %i.az, %i.ba
  %spec.select = select i1 %i.bb, i64 %i.m, i64 %i.j ; 4 uses
  %i.bc = sub i64 0, %spec.select
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !198
  %i.bg = sub i64 0, %.031
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4
  store i32 %i.bf, ptr %i.bi, align 4, !tbaa !198
  %i.bj = icmp slt i64 %spec.select, %i.b
  br i1 %i.bj, label %bb.b, label %._crit_edge, !llvm.loop !8192

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 5 uses
  %i.bk = and i64 %2, 1
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.bm = add nsw i64 %2, -2
  %i.bn = ashr exact i64 %i.bm, 1
  %i.bo = icmp eq i64 %.0.lcssa, %i.bn
  br i1 %i.bo, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bp = shl nsw i64 %.0.lcssa, 1                ; 2 uses
  %i.bq = or disjoint i64 %i.bp, 1
  %i.br = load ptr, ptr %0, align 8, !tbaa !453, !noalias !8197 ; 2 uses
  %i.bs = xor i64 %i.bp, -1
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bs
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !198
  %i.bw = sub nsw i64 0, %.0.lcssa
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bw
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4
  store i32 %i.bv, ptr %i.by, align 4, !tbaa !198
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.122 = phi i64 [ %i.bq, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bz = load i64, ptr %0, align 8, !tbaa !183
  %i.ca = inttoptr i64 %i.bz to ptr               ; 3 uses
  %i.cb = icmp sgt i64 %.122, %1
  br i1 %i.cb, label %.lr.ph.i, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN24Storage_SortReverse_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !187 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !359 ; 2 uses
  %i.cg = and i32 %3, 1048575
  %i.ch = zext nneg i32 %i.cg to i64              ; 2 uses
  %i.ci = lshr i64 %i.ch, 12
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !183
  %i.cl = and i64 %i.ch, 4095
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cl
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %.0916.i = phi i64 [ %.122, %.lr.ph.i ], [ %.017.i, %bb.g ] ; 3 uses
  %.017.in.i = add nsw i64 %.0916.i, -1
  %.017.i = sdiv i64 %.017.in.i, 2                ; 4 uses
  %i.cn = sub nsw i64 0, %.017.i
  %i.co = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cn
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !198 ; 2 uses
  %i.cr = and i32 %i.cq, 1048575
  %i.cs = zext nneg i32 %i.cr to i64              ; 2 uses
  %i.ct = lshr i64 %i.cs, 12
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !183
  %i.cw = and i64 %i.cs, 4095
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !198
  %i.cz = and i32 %i.cy, 1048575
  %i.da = zext nneg i32 %i.cz to i64              ; 2 uses
  %i.db = lshr i64 %i.da, 10
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !361
  %i.de = and i64 %i.da, 1023
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i32, ptr %i.cm, align 4, !tbaa !198
  %i.di = and i32 %i.dh, 1048575
  %i.dj = zext nneg i32 %i.di to i64              ; 2 uses
  %i.dk = lshr i64 %i.dj, 10
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !361
  %i.dn = and i64 %i.dj, 1023
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load i32, ptr %i.dg, align 4, !tbaa !354
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !354
  %i.ds = icmp slt i32 %i.dq, %i.dr
  br i1 %i.ds, label %bb.g, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN24Storage_SortReverse_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_RT2_.exit

bb.g:                                             ; preds = %bb.f
  %i.dt = sub nsw i64 0, %.0916.i
  %i.du = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -4
  store i32 %i.cq, ptr %i.dv, align 4, !tbaa !198
  %i.dw = icmp sgt i64 %.017.i, %1
  br i1 %i.dw, label %bb.f, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN24Storage_SortReverse_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_RT2_.exit, !llvm.loop !8195

_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN24Storage_SortReverse_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_RT2_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.09.lcssa.i = phi i64 [ %.122, %bb.e ], [ %.0916.i, %bb.f ], [ %.017.i, %bb.g ]
  %i.dx = sub nsw i64 0, %.09.lcssa.i
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.dx
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -4
  store i32 %3, ptr %i.dz, align 4, !tbaa !198
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SL_SL_SM_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !183
  %i.b = load i64, ptr %2, align 8, !tbaa !183
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !198  ; 3 uses
  %i.f = inttoptr i64 %i.b to ptr
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !198  ; 3 uses
  %i.i = and i32 %i.e, 1048575
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = lshr i64 %i.j, 12
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !187  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !183
  %i.p = and i64 %i.j, 4095
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !198
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.v = lshr i64 %i.t, 10
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !359  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !361
  %i.z = and i64 %i.t, 1023
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = and i32 %i.h, 1048575
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = lshr i64 %i.ad, 12
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !183
  %i.ah = and i64 %i.ad, 4095
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !198
  %i.ak = and i32 %i.aj, 1048575
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = lshr i64 %i.al, 10
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !361
  %i.ap = and i64 %i.al, 1023
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ab, align 4, !tbaa !354 ; 3 uses
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !354 ; 3 uses
  %i.au = icmp slt i32 %i.as, %i.at
  %i.av = load i64, ptr %3, align 8, !tbaa !183
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !198 ; 3 uses
  %i.az = and i32 %i.ay, 1048575
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = lshr i64 %i.ba, 12
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !183
  %i.be = and i64 %i.ba, 4095
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !198
  %i.bh = and i32 %i.bg, 1048575
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = lshr i64 %i.bi, 10
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !361
  %i.bm = and i64 %i.bi, 1023
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !354 ; 4 uses
  br i1 %i.au, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.bq = icmp slt i32 %i.at, %i.bp
  br i1 %i.bq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.br = load i64, ptr %0, align 8, !tbaa !183
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.h, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.bu, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.bv = icmp slt i32 %i.as, %i.bp
  %i.bw = load i64, ptr %0, align 8, !tbaa !183
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !198 ; 2 uses
  br i1 %i.bv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.ay, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i32 %i.e, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.ca = icmp slt i32 %i.as, %i.bp
  br i1 %i.ca, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cb = load i64, ptr %0, align 8, !tbaa !183
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.e, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.ce, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cf = icmp slt i32 %i.at, %i.bp
  %i.cg = load i64, ptr %0, align 8, !tbaa !183
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -4 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !198 ; 2 uses
  br i1 %i.cf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.ay, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.h, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8, !tbaa !183 ; 3 uses
  %i.a = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 4 uses
  %i.d = icmp eq ptr %i.c, %.sroa.0.0.copyload.i2.i
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !359  ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.010.016 = phi ptr [ %i.c, %.lr.ph ], [ %i.i, %bb.f ] ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.010.016, i64 -4 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !198  ; 3 uses
  %i.k = load i32, ptr %i.c, align 4, !tbaa !198
  %i.l = and i32 %i.j, 1048575
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = lshr i64 %i.m, 12
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183
  %i.q = and i64 %i.m, 4095
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198  ; 2 uses
  %i.t = and i32 %i.s, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 10
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !361
  %i.y = and i64 %i.u, 1023
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = and i32 %i.k, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !183
  %i.ag = and i64 %i.ac, 4095
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !198
  %i.aj = and i32 %i.ai, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !361
end_hunk_6
begin_hunk_7_@_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SN_SN_SO_:bb.a
  %i.bc = and i64 %i.ay, 1023
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i32, ptr %i.ao, align 4, !tbaa !354
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !354
  %i.bh = icmp slt i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bi = load i64, ptr %1, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bj = load i32, ptr %i.v, align 4, !tbaa !198
  store i32 %i.bj, ptr %i.s, align 4, !tbaa !198
  store i64 %i.r, ptr %4, align 8, !tbaa !183
  %i.bk = sub i64 %i.r, %i.bi
  %i.bl = ashr exact i64 %i.bk, 2
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SO_SO_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 noundef 0, i64 noundef %i.bl, i32 noundef %i.t, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre16 = load i64, ptr %0, align 8, !tbaa !183
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %2, align 8, !tbaa !183
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.i18, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ] ; 2 uses
  %i.bm = phi i64 [ %i.r, %bb.d ], [ %.pre16, %bb.e ]
  %.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.s
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !8240
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SO_SO_T1_T2_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !453, !noalias !8247 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !367  ; 2 uses
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
  %i.q = load i32, ptr %i.p, align 4, !tbaa !198
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198
  %i.t = and i32 %i.q, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 12
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !183
  %i.y = and i64 %i.u, 4095
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !198
  %i.ab = and i32 %i.aa, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 10
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !369
  %i.ag = and i64 %i.ac, 1023
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = and i32 %i.s, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 12
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !183
  %i.ao = and i64 %i.ak, 4095
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !198
  %i.ar = and i32 %i.aq, 1048575
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = lshr i64 %i.as, 10
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !369
  %i.aw = and i64 %i.as, 1023
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i32, ptr %i.ai, align 4, !tbaa !354
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !354
  %i.bb = icmp slt i32 %i.az, %i.ba
  %spec.select = select i1 %i.bb, i64 %i.m, i64 %i.j ; 4 uses
  %i.bc = sub i64 0, %spec.select
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !198
  %i.bg = sub i64 0, %.031
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4
  store i32 %i.bf, ptr %i.bi, align 4, !tbaa !198
  %i.bj = icmp slt i64 %spec.select, %i.b
  br i1 %i.bj, label %bb.b, label %._crit_edge, !llvm.loop !8243

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 5 uses
  %i.bk = and i64 %2, 1
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.bm = add nsw i64 %2, -2
  %i.bn = ashr exact i64 %i.bm, 1
  %i.bo = icmp eq i64 %.0.lcssa, %i.bn
  br i1 %i.bo, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bp = shl nsw i64 %.0.lcssa, 1                ; 2 uses
  %i.bq = or disjoint i64 %i.bp, 1
  %i.br = load ptr, ptr %0, align 8, !tbaa !453, !noalias !8248 ; 2 uses
  %i.bs = xor i64 %i.bp, -1
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bs
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !198
  %i.bw = sub nsw i64 0, %.0.lcssa
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bw
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4
  store i32 %i.bv, ptr %i.by, align 4, !tbaa !198
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.122 = phi i64 [ %i.bq, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bz = load i64, ptr %0, align 8, !tbaa !183
  %i.ca = inttoptr i64 %i.bz to ptr               ; 3 uses
  %i.cb = icmp sgt i64 %.122, %1
  br i1 %i.cb, label %.lr.ph.i, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SO_SO_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !187 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !367 ; 2 uses
  %i.cg = and i32 %3, 1048575
  %i.ch = zext nneg i32 %i.cg to i64              ; 2 uses
  %i.ci = lshr i64 %i.ch, 12
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !183
  %i.cl = and i64 %i.ch, 4095
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cl
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %.0916.i = phi i64 [ %.122, %.lr.ph.i ], [ %.017.i, %bb.g ] ; 3 uses
  %.017.in.i = add nsw i64 %.0916.i, -1
  %.017.i = sdiv i64 %.017.in.i, 2                ; 4 uses
  %i.cn = sub nsw i64 0, %.017.i
  %i.co = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cn
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !198 ; 2 uses
  %i.cr = and i32 %i.cq, 1048575
  %i.cs = zext nneg i32 %i.cr to i64              ; 2 uses
  %i.ct = lshr i64 %i.cs, 12
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !183
  %i.cw = and i64 %i.cs, 4095
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !198
  %i.cz = and i32 %i.cy, 1048575
  %i.da = zext nneg i32 %i.cz to i64              ; 2 uses
  %i.db = lshr i64 %i.da, 10
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !369
  %i.de = and i64 %i.da, 1023
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i32, ptr %i.cm, align 4, !tbaa !198
  %i.di = and i32 %i.dh, 1048575
  %i.dj = zext nneg i32 %i.di to i64              ; 2 uses
  %i.dk = lshr i64 %i.dj, 10
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !369
  %i.dn = and i64 %i.dj, 1023
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load i32, ptr %i.dg, align 4, !tbaa !354
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !354
  %i.ds = icmp slt i32 %i.dq, %i.dr
  br i1 %i.ds, label %bb.g, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SO_SO_T1_RT2_.exit

bb.g:                                             ; preds = %bb.f
  %i.dt = sub nsw i64 0, %.0916.i
  %i.du = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -4
  store i32 %i.cq, ptr %i.dv, align 4, !tbaa !198
  %i.dw = icmp sgt i64 %.017.i, %1
  br i1 %i.dw, label %bb.f, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SO_SO_T1_RT2_.exit, !llvm.loop !8246

_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SO_SO_T1_RT2_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.09.lcssa.i = phi i64 [ %.122, %bb.e ], [ %.0916.i, %bb.f ], [ %.017.i, %bb.g ]
  %i.dx = sub nsw i64 0, %.09.lcssa.i
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.dx
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -4
  store i32 %3, ptr %i.dz, align 4, !tbaa !198
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SN_SN_SN_SO_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !183
  %i.b = load i64, ptr %2, align 8, !tbaa !183
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !198  ; 3 uses
  %i.f = inttoptr i64 %i.b to ptr
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !198  ; 3 uses
  %i.i = and i32 %i.e, 1048575
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = lshr i64 %i.j, 12
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !187  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !183
  %i.p = and i64 %i.j, 4095
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !198
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.v = lshr i64 %i.t, 10
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !367  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !369
  %i.z = and i64 %i.t, 1023
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = and i32 %i.h, 1048575
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = lshr i64 %i.ad, 12
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !183
  %i.ah = and i64 %i.ad, 4095
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !198
  %i.ak = and i32 %i.aj, 1048575
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = lshr i64 %i.al, 10
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !369
  %i.ap = and i64 %i.al, 1023
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ab, align 4, !tbaa !354 ; 3 uses
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !354 ; 3 uses
  %i.au = icmp slt i32 %i.as, %i.at
  %i.av = load i64, ptr %3, align 8, !tbaa !183
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !198 ; 3 uses
  %i.az = and i32 %i.ay, 1048575
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = lshr i64 %i.ba, 12
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !183
  %i.be = and i64 %i.ba, 4095
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !198
  %i.bh = and i32 %i.bg, 1048575
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = lshr i64 %i.bi, 10
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !369
  %i.bm = and i64 %i.bi, 1023
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !354 ; 4 uses
  br i1 %i.au, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.bq = icmp slt i32 %i.at, %i.bp
  br i1 %i.bq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.br = load i64, ptr %0, align 8, !tbaa !183
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.h, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.bu, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.bv = icmp slt i32 %i.as, %i.bp
  %i.bw = load i64, ptr %0, align 8, !tbaa !183
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !198 ; 2 uses
  br i1 %i.bv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.ay, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i32 %i.e, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.ca = icmp slt i32 %i.as, %i.bp
  br i1 %i.ca, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cb = load i64, ptr %0, align 8, !tbaa !183
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.e, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.ce, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cf = icmp slt i32 %i.at, %i.bp
  %i.cg = load i64, ptr %0, align 8, !tbaa !183
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -4 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !198 ; 2 uses
  br i1 %i.cf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.ay, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.h, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SN_SO_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8, !tbaa !183 ; 3 uses
  %i.a = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 4 uses
  %i.d = icmp eq ptr %i.c, %.sroa.0.0.copyload.i2.i
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !367  ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.010.016 = phi ptr [ %i.c, %.lr.ph ], [ %i.i, %bb.f ] ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.010.016, i64 -4 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !198  ; 3 uses
  %i.k = load i32, ptr %i.c, align 4, !tbaa !198
  %i.l = and i32 %i.j, 1048575
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = lshr i64 %i.m, 12
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183
  %i.q = and i64 %i.m, 4095
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198  ; 2 uses
  %i.t = and i32 %i.s, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 10
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !369
  %i.y = and i64 %i.u, 1023
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = and i32 %i.k, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !183
  %i.ag = and i64 %i.ac, 4095
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !198
  %i.aj = and i32 %i.ai, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !369
end_hunk_7
begin_hunk_8_@_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SF_SG_:bb.a
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !198
  %i.ax = and i32 %i.aw, 1048575
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = lshr i64 %i.ay, 7
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !211
  %i.bc = and i64 %i.ay, 127
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !194
  %i.bf = icmp slt i32 %i.ao, %i.be
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %1, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bh = load i32, ptr %i.v, align 4, !tbaa !198
  store i32 %i.bh, ptr %i.s, align 4, !tbaa !198
  store i64 %i.r, ptr %4, align 8, !tbaa !183
  %i.bi = sub i64 %i.r, %i.bg
  %i.bj = ashr exact i64 %i.bi, 2
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_SG_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 noundef 0, i64 noundef %i.bj, i32 noundef %i.t, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre16 = load i64, ptr %0, align 8, !tbaa !183
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %2, align 8, !tbaa !183
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.i18, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ] ; 2 uses
  %i.bk = phi i64 [ %i.r, %bb.d ], [ %.pre16, %bb.e ]
  %.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.s
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !8379
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_SG_T1_T2_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !453, !noalias !8386 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !341  ; 2 uses
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
  %i.q = load i32, ptr %i.p, align 4, !tbaa !198
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198
  %i.t = and i32 %i.q, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 12
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !183
  %i.y = and i64 %i.u, 4095
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !198
  %i.ab = and i32 %i.aa, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 7
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !211
  %i.ag = and i64 %i.ac, 127
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !194
  %i.aj = and i32 %i.s, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 12
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !183
  %i.ao = and i64 %i.ak, 4095
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !198
  %i.ar = and i32 %i.aq, 1048575
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = lshr i64 %i.as, 7
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !211
  %i.aw = and i64 %i.as, 127
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !194
  %i.az = icmp slt i32 %i.ai, %i.ay
  %spec.select = select i1 %i.az, i64 %i.m, i64 %i.j ; 4 uses
  %i.ba = sub i64 0, %spec.select
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !198
  %i.be = sub i64 0, %.031
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -4
  store i32 %i.bd, ptr %i.bg, align 4, !tbaa !198
  %i.bh = icmp slt i64 %spec.select, %i.b
  br i1 %i.bh, label %bb.b, label %._crit_edge, !llvm.loop !8382

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
  %i.bp = load ptr, ptr %0, align 8, !tbaa !453, !noalias !8387 ; 2 uses
  %i.bq = xor i64 %i.bn, -1
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !198
  %i.bu = sub nsw i64 0, %.0.lcssa
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bu
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4
  store i32 %i.bt, ptr %i.bw, align 4, !tbaa !198
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.122 = phi i64 [ %i.bo, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bx = load i64, ptr %0, align 8, !tbaa !183
  %i.by = inttoptr i64 %i.bx to ptr               ; 3 uses
  %i.bz = icmp sgt i64 %.122, %1
  br i1 %i.bz, label %.lr.ph.i, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_SG_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !187 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !341 ; 2 uses
  %i.ce = and i32 %3, 1048575
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cg = lshr i64 %i.cf, 12
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !183
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
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !198 ; 2 uses
  %i.cp = and i32 %i.co, 1048575
  %i.cq = zext nneg i32 %i.cp to i64              ; 2 uses
  %i.cr = lshr i64 %i.cq, 12
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !183
  %i.cu = and i64 %i.cq, 4095
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !198
  %i.cx = and i32 %i.cw, 1048575
  %i.cy = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.cz = lshr i64 %i.cy, 7
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !211
  %i.dc = and i64 %i.cy, 127
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !194
  %i.df = load i32, ptr %i.ck, align 4, !tbaa !198
  %i.dg = and i32 %i.df, 1048575
  %i.dh = zext nneg i32 %i.dg to i64              ; 2 uses
  %i.di = lshr i64 %i.dh, 7
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !211
  %i.dl = and i64 %i.dh, 127
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !194
  %i.do = icmp slt i32 %i.de, %i.dn
  br i1 %i.do, label %bb.g, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_SG_T1_RT2_.exit

bb.g:                                             ; preds = %bb.f
  %i.dp = sub nsw i64 0, %.0916.i
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.dp
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -4
  store i32 %i.co, ptr %i.dr, align 4, !tbaa !198
  %i.ds = icmp sgt i64 %.017.i, %1
  br i1 %i.ds, label %bb.f, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_SG_T1_RT2_.exit, !llvm.loop !8385

_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_SG_T1_RT2_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.09.lcssa.i = phi i64 [ %.122, %bb.e ], [ %.0916.i, %bb.f ], [ %.017.i, %bb.g ]
  %i.dt = sub nsw i64 0, %.09.lcssa.i
  %i.du = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -4
  store i32 %3, ptr %i.dv, align 4, !tbaa !198
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SF_SF_SG_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !183
  %i.b = load i64, ptr %2, align 8, !tbaa !183
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !198  ; 3 uses
  %i.f = inttoptr i64 %i.b to ptr
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !198  ; 3 uses
  %i.i = and i32 %i.e, 1048575
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = lshr i64 %i.j, 12
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !187  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !183
  %i.p = and i64 %i.j, 4095
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !198
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.v = lshr i64 %i.t, 7
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !341  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !211
  %i.z = and i64 %i.t, 127
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !194 ; 3 uses
  %i.ac = and i32 %i.h, 1048575
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = lshr i64 %i.ad, 12
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !183
  %i.ah = and i64 %i.ad, 4095
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !198
  %i.ak = and i32 %i.aj, 1048575
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = lshr i64 %i.al, 7
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !211
  %i.ap = and i64 %i.al, 127
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !194 ; 3 uses
  %i.as = icmp slt i32 %i.ab, %i.ar
  %i.at = load i64, ptr %3, align 8, !tbaa !183
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -4 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !198 ; 3 uses
  %i.ax = and i32 %i.aw, 1048575
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = lshr i64 %i.ay, 12
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !183
  %i.bc = and i64 %i.ay, 4095
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !198
  %i.bf = and i32 %i.be, 1048575
  %i.bg = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bh = lshr i64 %i.bg, 7
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !211
  %i.bk = and i64 %i.bg, 127
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !194 ; 4 uses
  br i1 %i.as, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.bn = icmp slt i32 %i.ar, %i.bm
  br i1 %i.bn, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bo = load i64, ptr %0, align 8, !tbaa !183
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -4 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !198
  store i32 %i.h, ptr %i.bq, align 4, !tbaa !198
  store i32 %i.br, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.bs = icmp slt i32 %i.ab, %i.bm
  %i.bt = load i64, ptr %0, align 8, !tbaa !183
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -4 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !198 ; 2 uses
  br i1 %i.bs, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.aw, ptr %i.bv, align 4, !tbaa !198
  store i32 %i.bw, ptr %i.av, align 4, !tbaa !198
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i32 %i.e, ptr %i.bv, align 4, !tbaa !198
  store i32 %i.bw, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.bx = icmp slt i32 %i.ab, %i.bm
  br i1 %i.bx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.by = load i64, ptr %0, align 8, !tbaa !183
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -4 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !198
  store i32 %i.e, ptr %i.ca, align 4, !tbaa !198
  store i32 %i.cb, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cc = icmp slt i32 %i.ar, %i.bm
  %i.cd = load i64, ptr %0, align 8, !tbaa !183
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !198 ; 2 uses
  br i1 %i.cc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.aw, ptr %i.cf, align 4, !tbaa !198
  store i32 %i.cg, ptr %i.av, align 4, !tbaa !198
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.h, ptr %i.cf, align 4, !tbaa !198
  store i32 %i.cg, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverI26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINS4_10value_typeIiEEEEEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.217, i32 noundef 514)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.218, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.219, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !131
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !142
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.220, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
end_hunk_8
begin_hunk_9_@_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SL_SM_:bb.a
  %i.aw = and i32 %i.av, 1048575
  %i.ax = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.ay = lshr i64 %i.ax, 10
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !352
  %i.bb = and i64 %i.ax, 1023
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load i32, ptr %i.an, align 4, !tbaa !354
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !354
  %i.bf = icmp slt i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %1, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bh = load i32, ptr %i.v, align 4, !tbaa !198
  store i32 %i.bh, ptr %i.s, align 4, !tbaa !198
  store i64 %i.r, ptr %4, align 8, !tbaa !183
  %i.bi = sub i64 %i.r, %i.bg
  %i.bj = ashr exact i64 %i.bi, 2
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 noundef 0, i64 noundef %i.bj, i32 noundef %i.t, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre16 = load i64, ptr %0, align 8, !tbaa !183
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %2, align 8, !tbaa !183
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.i18, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ] ; 2 uses
  %i.bk = phi i64 [ %i.r, %bb.d ], [ %.pre16, %bb.e ]
  %.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.s
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !8506
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !453, !noalias !8513 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !350  ; 2 uses
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
  %i.q = load i32, ptr %i.p, align 4, !tbaa !198
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198
  %i.t = and i32 %i.q, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 12
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !183
  %i.y = and i64 %i.u, 4095
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !198
  %i.ab = and i32 %i.aa, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 10
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !352
  %i.ag = and i64 %i.ac, 1023
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = and i32 %i.s, 1048575
  %i.aj = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ak = lshr i64 %i.aj, 12
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !183
  %i.an = and i64 %i.aj, 4095
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !198
  %i.aq = and i32 %i.ap, 1048575
  %i.ar = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.as = lshr i64 %i.ar, 10
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !352
  %i.av = and i64 %i.ar, 1023
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i32, ptr %i.ah, align 4, !tbaa !354
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !354
  %i.az = icmp slt i32 %i.ax, %i.ay
  %spec.select = select i1 %i.az, i64 %i.m, i64 %i.j ; 4 uses
  %i.ba = sub i64 0, %spec.select
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !198
  %i.be = sub i64 0, %.031
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -4
  store i32 %i.bd, ptr %i.bg, align 4, !tbaa !198
  %i.bh = icmp slt i64 %spec.select, %i.b
  br i1 %i.bh, label %bb.b, label %._crit_edge, !llvm.loop !8509

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
  %i.bp = load ptr, ptr %0, align 8, !tbaa !453, !noalias !8514 ; 2 uses
  %i.bq = xor i64 %i.bn, -1
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !198
  %i.bu = sub nsw i64 0, %.0.lcssa
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bu
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4
  store i32 %i.bt, ptr %i.bw, align 4, !tbaa !198
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.122 = phi i64 [ %i.bo, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bx = load i64, ptr %0, align 8, !tbaa !183
  %i.by = inttoptr i64 %i.bx to ptr               ; 3 uses
  %i.bz = icmp sgt i64 %.122, %1
  br i1 %i.bz, label %.lr.ph.i, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !187 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !350 ; 2 uses
  %i.ce = and i32 %3, 1048575
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cg = lshr i64 %i.cf, 12
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !183
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
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !198 ; 2 uses
  %i.cp = and i32 %i.co, 1048575
  %i.cq = zext nneg i32 %i.cp to i64              ; 2 uses
  %i.cr = lshr i64 %i.cq, 12
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !183
  %i.cu = and i64 %i.cq, 4095
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !198
  %i.cx = and i32 %i.cw, 1048575
  %i.cy = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.cz = lshr i64 %i.cy, 10
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !352
  %i.dc = and i64 %i.cy, 1023
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.dc
  %i.de = load i32, ptr %i.ck, align 4, !tbaa !198
  %i.df = and i32 %i.de, 1048575
  %i.dg = zext nneg i32 %i.df to i64              ; 2 uses
  %i.dh = lshr i64 %i.dg, 10
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !352
  %i.dk = and i64 %i.dg, 1023
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dk
  %i.dm = load i32, ptr %i.dd, align 4, !tbaa !354
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !354
  %i.do = icmp slt i32 %i.dm, %i.dn
  br i1 %i.do, label %bb.g, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_RT2_.exit

bb.g:                                             ; preds = %bb.f
  %i.dp = sub nsw i64 0, %.0916.i
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.dp
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -4
  store i32 %i.co, ptr %i.dr, align 4, !tbaa !198
  %i.ds = icmp sgt i64 %.017.i, %1
  br i1 %i.ds, label %bb.f, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_RT2_.exit, !llvm.loop !8512

_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_RT2_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.09.lcssa.i = phi i64 [ %.122, %bb.e ], [ %.0916.i, %bb.f ], [ %.017.i, %bb.g ]
  %i.dt = sub nsw i64 0, %.09.lcssa.i
  %i.du = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -4
  store i32 %3, ptr %i.dv, align 4, !tbaa !198
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SL_SL_SM_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !183
  %i.b = load i64, ptr %2, align 8, !tbaa !183
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !198  ; 3 uses
  %i.f = inttoptr i64 %i.b to ptr
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !198  ; 3 uses
  %i.i = and i32 %i.e, 1048575
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = lshr i64 %i.j, 12
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !187  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !183
  %i.p = and i64 %i.j, 4095
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !198
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.v = lshr i64 %i.t, 10
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !350  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !352
  %i.z = and i64 %i.t, 1023
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = and i32 %i.h, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !183
  %i.ag = and i64 %i.ac, 4095
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !198
  %i.aj = and i32 %i.ai, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !352
  %i.ao = and i64 %i.ak, 1023
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.aa, align 4, !tbaa !354 ; 3 uses
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !354 ; 3 uses
  %i.as = icmp slt i32 %i.aq, %i.ar
  %i.at = load i64, ptr %3, align 8, !tbaa !183
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -4 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !198 ; 3 uses
  %i.ax = and i32 %i.aw, 1048575
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = lshr i64 %i.ay, 12
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !183
  %i.bc = and i64 %i.ay, 4095
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !198
  %i.bf = and i32 %i.be, 1048575
  %i.bg = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bh = lshr i64 %i.bg, 10
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !352
  %i.bk = and i64 %i.bg, 1023
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !354 ; 4 uses
  br i1 %i.as, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.bn = icmp slt i32 %i.ar, %i.bm
  br i1 %i.bn, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bo = load i64, ptr %0, align 8, !tbaa !183
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -4 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !198
  store i32 %i.h, ptr %i.bq, align 4, !tbaa !198
  store i32 %i.br, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.bs = icmp slt i32 %i.aq, %i.bm
  %i.bt = load i64, ptr %0, align 8, !tbaa !183
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -4 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !198 ; 2 uses
  br i1 %i.bs, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.aw, ptr %i.bv, align 4, !tbaa !198
  store i32 %i.bw, ptr %i.av, align 4, !tbaa !198
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i32 %i.e, ptr %i.bv, align 4, !tbaa !198
  store i32 %i.bw, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.bx = icmp slt i32 %i.aq, %i.bm
  br i1 %i.bx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.by = load i64, ptr %0, align 8, !tbaa !183
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -4 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !198
  store i32 %i.e, ptr %i.ca, align 4, !tbaa !198
  store i32 %i.cb, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cc = icmp slt i32 %i.ar, %i.bm
  %i.cd = load i64, ptr %0, align 8, !tbaa !183
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !198 ; 2 uses
  br i1 %i.cc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.aw, ptr %i.cf, align 4, !tbaa !198
  store i32 %i.cg, ptr %i.av, align 4, !tbaa !198
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.h, ptr %i.cf, align 4, !tbaa !198
  store i32 %i.cg, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverI26Storage_SortUnordered_TestIN4test8internal32non_trivially_destructible_mixinINS4_10value_typeIiEEEEEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.217, i32 noundef 514)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.218, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.219, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !131
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !142
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.220, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
end_hunk_9
begin_hunk_10_@_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SL_SM_:bb.a
  %i.bc = and i64 %i.ay, 1023
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i32, ptr %i.ao, align 4, !tbaa !354
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !354
  %i.bh = icmp slt i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bi = load i64, ptr %1, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bj = load i32, ptr %i.v, align 4, !tbaa !198
  store i32 %i.bj, ptr %i.s, align 4, !tbaa !198
  store i64 %i.r, ptr %4, align 8, !tbaa !183
  %i.bk = sub i64 %i.r, %i.bi
  %i.bl = ashr exact i64 %i.bk, 2
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 noundef 0, i64 noundef %i.bl, i32 noundef %i.t, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre16 = load i64, ptr %0, align 8, !tbaa !183
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %2, align 8, !tbaa !183
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.i18, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ] ; 2 uses
  %i.bm = phi i64 [ %i.r, %bb.d ], [ %.pre16, %bb.e ]
  %.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.s
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !8615
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !453, !noalias !8622 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !359  ; 2 uses
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
  %i.q = load i32, ptr %i.p, align 4, !tbaa !198
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198
  %i.t = and i32 %i.q, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 12
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !183
  %i.y = and i64 %i.u, 4095
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !198
  %i.ab = and i32 %i.aa, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 10
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !361
  %i.ag = and i64 %i.ac, 1023
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = and i32 %i.s, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 12
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !183
  %i.ao = and i64 %i.ak, 4095
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !198
  %i.ar = and i32 %i.aq, 1048575
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = lshr i64 %i.as, 10
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !361
  %i.aw = and i64 %i.as, 1023
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i32, ptr %i.ai, align 4, !tbaa !354
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !354
  %i.bb = icmp slt i32 %i.az, %i.ba
  %spec.select = select i1 %i.bb, i64 %i.m, i64 %i.j ; 4 uses
  %i.bc = sub i64 0, %spec.select
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !198
  %i.bg = sub i64 0, %.031
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4
  store i32 %i.bf, ptr %i.bi, align 4, !tbaa !198
  %i.bj = icmp slt i64 %spec.select, %i.b
  br i1 %i.bj, label %bb.b, label %._crit_edge, !llvm.loop !8618

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 5 uses
  %i.bk = and i64 %2, 1
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.bm = add nsw i64 %2, -2
  %i.bn = ashr exact i64 %i.bm, 1
  %i.bo = icmp eq i64 %.0.lcssa, %i.bn
  br i1 %i.bo, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bp = shl nsw i64 %.0.lcssa, 1                ; 2 uses
  %i.bq = or disjoint i64 %i.bp, 1
  %i.br = load ptr, ptr %0, align 8, !tbaa !453, !noalias !8623 ; 2 uses
  %i.bs = xor i64 %i.bp, -1
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bs
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !198
  %i.bw = sub nsw i64 0, %.0.lcssa
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bw
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4
  store i32 %i.bv, ptr %i.by, align 4, !tbaa !198
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.122 = phi i64 [ %i.bq, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bz = load i64, ptr %0, align 8, !tbaa !183
  %i.ca = inttoptr i64 %i.bz to ptr               ; 3 uses
  %i.cb = icmp sgt i64 %.122, %1
  br i1 %i.cb, label %.lr.ph.i, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN26Storage_SortUnordered_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !187 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !359 ; 2 uses
  %i.cg = and i32 %3, 1048575
  %i.ch = zext nneg i32 %i.cg to i64              ; 2 uses
  %i.ci = lshr i64 %i.ch, 12
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !183
  %i.cl = and i64 %i.ch, 4095
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cl
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %.0916.i = phi i64 [ %.122, %.lr.ph.i ], [ %.017.i, %bb.g ] ; 3 uses
  %.017.in.i = add nsw i64 %.0916.i, -1
  %.017.i = sdiv i64 %.017.in.i, 2                ; 4 uses
  %i.cn = sub nsw i64 0, %.017.i
  %i.co = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cn
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !198 ; 2 uses
  %i.cr = and i32 %i.cq, 1048575
  %i.cs = zext nneg i32 %i.cr to i64              ; 2 uses
  %i.ct = lshr i64 %i.cs, 12
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !183
  %i.cw = and i64 %i.cs, 4095
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !198
  %i.cz = and i32 %i.cy, 1048575
  %i.da = zext nneg i32 %i.cz to i64              ; 2 uses
  %i.db = lshr i64 %i.da, 10
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !361
  %i.de = and i64 %i.da, 1023
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i32, ptr %i.cm, align 4, !tbaa !198
  %i.di = and i32 %i.dh, 1048575
  %i.dj = zext nneg i32 %i.di to i64              ; 2 uses
  %i.dk = lshr i64 %i.dj, 10
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !361
  %i.dn = and i64 %i.dj, 1023
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load i32, ptr %i.dg, align 4, !tbaa !354
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !354
  %i.ds = icmp slt i32 %i.dq, %i.dr
  br i1 %i.ds, label %bb.g, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN26Storage_SortUnordered_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_RT2_.exit

bb.g:                                             ; preds = %bb.f
  %i.dt = sub nsw i64 0, %.0916.i
  %i.du = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -4
  store i32 %i.cq, ptr %i.dv, align 4, !tbaa !198
  %i.dw = icmp sgt i64 %.017.i, %1
  br i1 %i.dw, label %bb.f, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN26Storage_SortUnordered_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_RT2_.exit, !llvm.loop !8621

_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN26Storage_SortUnordered_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_RT2_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.09.lcssa.i = phi i64 [ %.122, %bb.e ], [ %.0916.i, %bb.f ], [ %.017.i, %bb.g ]
  %i.dx = sub nsw i64 0, %.09.lcssa.i
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.dx
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -4
  store i32 %3, ptr %i.dz, align 4, !tbaa !198
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SL_SL_SM_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !183
  %i.b = load i64, ptr %2, align 8, !tbaa !183
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !198  ; 3 uses
  %i.f = inttoptr i64 %i.b to ptr
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !198  ; 3 uses
  %i.i = and i32 %i.e, 1048575
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = lshr i64 %i.j, 12
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !187  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !183
  %i.p = and i64 %i.j, 4095
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !198
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.v = lshr i64 %i.t, 10
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !359  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !361
  %i.z = and i64 %i.t, 1023
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = and i32 %i.h, 1048575
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = lshr i64 %i.ad, 12
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !183
  %i.ah = and i64 %i.ad, 4095
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !198
  %i.ak = and i32 %i.aj, 1048575
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = lshr i64 %i.al, 10
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !361
  %i.ap = and i64 %i.al, 1023
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ab, align 4, !tbaa !354 ; 3 uses
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !354 ; 3 uses
  %i.au = icmp slt i32 %i.as, %i.at
  %i.av = load i64, ptr %3, align 8, !tbaa !183
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !198 ; 3 uses
  %i.az = and i32 %i.ay, 1048575
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = lshr i64 %i.ba, 12
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !183
  %i.be = and i64 %i.ba, 4095
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !198
  %i.bh = and i32 %i.bg, 1048575
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = lshr i64 %i.bi, 10
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !361
  %i.bm = and i64 %i.bi, 1023
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !354 ; 4 uses
  br i1 %i.au, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.bq = icmp slt i32 %i.at, %i.bp
  br i1 %i.bq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.br = load i64, ptr %0, align 8, !tbaa !183
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.h, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.bu, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.bv = icmp slt i32 %i.as, %i.bp
  %i.bw = load i64, ptr %0, align 8, !tbaa !183
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !198 ; 2 uses
  br i1 %i.bv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.ay, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i32 %i.e, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.ca = icmp slt i32 %i.as, %i.bp
  br i1 %i.ca, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cb = load i64, ptr %0, align 8, !tbaa !183
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.e, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.ce, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cf = icmp slt i32 %i.at, %i.bp
  %i.cg = load i64, ptr %0, align 8, !tbaa !183
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -4 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !198 ; 2 uses
  br i1 %i.cf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.ay, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.h, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8, !tbaa !183 ; 3 uses
  %i.a = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 4 uses
  %i.d = icmp eq ptr %i.c, %.sroa.0.0.copyload.i2.i
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !359  ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.010.016 = phi ptr [ %i.c, %.lr.ph ], [ %i.i, %bb.f ] ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.010.016, i64 -4 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !198  ; 3 uses
  %i.k = load i32, ptr %i.c, align 4, !tbaa !198
  %i.l = and i32 %i.j, 1048575
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = lshr i64 %i.m, 12
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183
  %i.q = and i64 %i.m, 4095
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198  ; 2 uses
  %i.t = and i32 %i.s, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 10
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !361
  %i.y = and i64 %i.u, 1023
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = and i32 %i.k, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !183
  %i.ag = and i64 %i.ac, 4095
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !198
  %i.aj = and i32 %i.ai, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !361
end_hunk_10
begin_hunk_11_@_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SN_SN_SO_:bb.a
  %i.bc = and i64 %i.ay, 1023
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i32, ptr %i.ao, align 4, !tbaa !354
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !354
  %i.bh = icmp slt i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bi = load i64, ptr %1, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bj = load i32, ptr %i.v, align 4, !tbaa !198
  store i32 %i.bj, ptr %i.s, align 4, !tbaa !198
  store i64 %i.r, ptr %4, align 8, !tbaa !183
  %i.bk = sub i64 %i.r, %i.bi
  %i.bl = ashr exact i64 %i.bk, 2
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SO_SO_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 noundef 0, i64 noundef %i.bl, i32 noundef %i.t, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre16 = load i64, ptr %0, align 8, !tbaa !183
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %2, align 8, !tbaa !183
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.i18, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ] ; 2 uses
  %i.bm = phi i64 [ %i.r, %bb.d ], [ %.pre16, %bb.e ]
  %.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.s
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !8721
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SO_SO_T1_T2_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !453, !noalias !8728 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !367  ; 2 uses
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
  %i.q = load i32, ptr %i.p, align 4, !tbaa !198
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198
  %i.t = and i32 %i.q, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 12
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !183
  %i.y = and i64 %i.u, 4095
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !198
  %i.ab = and i32 %i.aa, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 10
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !369
  %i.ag = and i64 %i.ac, 1023
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = and i32 %i.s, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 12
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !183
  %i.ao = and i64 %i.ak, 4095
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !198
  %i.ar = and i32 %i.aq, 1048575
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = lshr i64 %i.as, 10
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !369
  %i.aw = and i64 %i.as, 1023
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i32, ptr %i.ai, align 4, !tbaa !354
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !354
  %i.bb = icmp slt i32 %i.az, %i.ba
  %spec.select = select i1 %i.bb, i64 %i.m, i64 %i.j ; 4 uses
  %i.bc = sub i64 0, %spec.select
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !198
  %i.bg = sub i64 0, %.031
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4
  store i32 %i.bf, ptr %i.bi, align 4, !tbaa !198
  %i.bj = icmp slt i64 %spec.select, %i.b
  br i1 %i.bj, label %bb.b, label %._crit_edge, !llvm.loop !8724

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 5 uses
  %i.bk = and i64 %2, 1
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.bm = add nsw i64 %2, -2
  %i.bn = ashr exact i64 %i.bm, 1
  %i.bo = icmp eq i64 %.0.lcssa, %i.bn
  br i1 %i.bo, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bp = shl nsw i64 %.0.lcssa, 1                ; 2 uses
  %i.bq = or disjoint i64 %i.bp, 1
  %i.br = load ptr, ptr %0, align 8, !tbaa !453, !noalias !8729 ; 2 uses
  %i.bs = xor i64 %i.bp, -1
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bs
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !198
  %i.bw = sub nsw i64 0, %.0.lcssa
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bw
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4
  store i32 %i.bv, ptr %i.by, align 4, !tbaa !198
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.122 = phi i64 [ %i.bq, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bz = load i64, ptr %0, align 8, !tbaa !183
  %i.ca = inttoptr i64 %i.bz to ptr               ; 3 uses
  %i.cb = icmp sgt i64 %.122, %1
  br i1 %i.cb, label %.lr.ph.i, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SO_SO_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !187 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !367 ; 2 uses
  %i.cg = and i32 %3, 1048575
  %i.ch = zext nneg i32 %i.cg to i64              ; 2 uses
  %i.ci = lshr i64 %i.ch, 12
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !183
  %i.cl = and i64 %i.ch, 4095
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cl
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %.0916.i = phi i64 [ %.122, %.lr.ph.i ], [ %.017.i, %bb.g ] ; 3 uses
  %.017.in.i = add nsw i64 %.0916.i, -1
  %.017.i = sdiv i64 %.017.in.i, 2                ; 4 uses
  %i.cn = sub nsw i64 0, %.017.i
  %i.co = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cn
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !198 ; 2 uses
  %i.cr = and i32 %i.cq, 1048575
  %i.cs = zext nneg i32 %i.cr to i64              ; 2 uses
  %i.ct = lshr i64 %i.cs, 12
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !183
  %i.cw = and i64 %i.cs, 4095
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !198
  %i.cz = and i32 %i.cy, 1048575
  %i.da = zext nneg i32 %i.cz to i64              ; 2 uses
  %i.db = lshr i64 %i.da, 10
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !369
  %i.de = and i64 %i.da, 1023
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i32, ptr %i.cm, align 4, !tbaa !198
  %i.di = and i32 %i.dh, 1048575
  %i.dj = zext nneg i32 %i.di to i64              ; 2 uses
  %i.dk = lshr i64 %i.dj, 10
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !369
  %i.dn = and i64 %i.dj, 1023
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load i32, ptr %i.dg, align 4, !tbaa !354
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !354
  %i.ds = icmp slt i32 %i.dq, %i.dr
  br i1 %i.ds, label %bb.g, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SO_SO_T1_RT2_.exit

bb.g:                                             ; preds = %bb.f
  %i.dt = sub nsw i64 0, %.0916.i
  %i.du = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -4
  store i32 %i.cq, ptr %i.dv, align 4, !tbaa !198
  %i.dw = icmp sgt i64 %.017.i, %1
  br i1 %i.dw, label %bb.f, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SO_SO_T1_RT2_.exit, !llvm.loop !8727

_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SO_SO_T1_RT2_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.09.lcssa.i = phi i64 [ %.122, %bb.e ], [ %.0916.i, %bb.f ], [ %.017.i, %bb.g ]
  %i.dx = sub nsw i64 0, %.09.lcssa.i
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.dx
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -4
  store i32 %3, ptr %i.dz, align 4, !tbaa !198
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SN_SN_SN_SO_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !183
  %i.b = load i64, ptr %2, align 8, !tbaa !183
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !198  ; 3 uses
  %i.f = inttoptr i64 %i.b to ptr
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !198  ; 3 uses
  %i.i = and i32 %i.e, 1048575
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = lshr i64 %i.j, 12
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !187  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !183
  %i.p = and i64 %i.j, 4095
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !198
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.v = lshr i64 %i.t, 10
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !367  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !369
  %i.z = and i64 %i.t, 1023
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = and i32 %i.h, 1048575
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = lshr i64 %i.ad, 12
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !183
  %i.ah = and i64 %i.ad, 4095
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !198
  %i.ak = and i32 %i.aj, 1048575
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = lshr i64 %i.al, 10
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !369
  %i.ap = and i64 %i.al, 1023
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ab, align 4, !tbaa !354 ; 3 uses
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !354 ; 3 uses
  %i.au = icmp slt i32 %i.as, %i.at
  %i.av = load i64, ptr %3, align 8, !tbaa !183
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !198 ; 3 uses
  %i.az = and i32 %i.ay, 1048575
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = lshr i64 %i.ba, 12
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !183
  %i.be = and i64 %i.ba, 4095
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !198
  %i.bh = and i32 %i.bg, 1048575
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = lshr i64 %i.bi, 10
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !369
  %i.bm = and i64 %i.bi, 1023
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !354 ; 4 uses
  br i1 %i.au, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.bq = icmp slt i32 %i.at, %i.bp
  br i1 %i.bq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.br = load i64, ptr %0, align 8, !tbaa !183
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.h, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.bu, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.bv = icmp slt i32 %i.as, %i.bp
  %i.bw = load i64, ptr %0, align 8, !tbaa !183
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !198 ; 2 uses
  br i1 %i.bv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.ay, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i32 %i.e, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.ca = icmp slt i32 %i.as, %i.bp
  br i1 %i.ca, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cb = load i64, ptr %0, align 8, !tbaa !183
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.e, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.ce, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cf = icmp slt i32 %i.at, %i.bp
  %i.cg = load i64, ptr %0, align 8, !tbaa !183
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -4 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !198 ; 2 uses
  br i1 %i.cf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.ay, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.h, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SN_SO_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8, !tbaa !183 ; 3 uses
  %i.a = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 4 uses
  %i.d = icmp eq ptr %i.c, %.sroa.0.0.copyload.i2.i
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !367  ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.010.016 = phi ptr [ %i.c, %.lr.ph ], [ %i.i, %bb.f ] ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.010.016, i64 -4 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !198  ; 3 uses
  %i.k = load i32, ptr %i.c, align 4, !tbaa !198
  %i.l = and i32 %i.j, 1048575
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = lshr i64 %i.m, 12
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183
  %i.q = and i64 %i.m, 4095
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198  ; 2 uses
  %i.t = and i32 %i.s, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 10
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !369
  %i.y = and i64 %i.u, 1023
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = and i32 %i.k, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !183
  %i.ag = and i64 %i.ac, 4095
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !198
  %i.aj = and i32 %i.ai, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !369
end_hunk_11
begin_hunk_12_@_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SF_SF_SG_:bb.a
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !198
  %i.ax = and i32 %i.aw, 1048575
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = lshr i64 %i.ay, 7
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !211
  %i.bc = and i64 %i.ay, 127
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !194
  %i.bf = icmp slt i32 %i.ao, %i.be
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %1, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bh = load i32, ptr %i.v, align 4, !tbaa !198
  store i32 %i.bh, ptr %i.s, align 4, !tbaa !198
  store i64 %i.r, ptr %4, align 8, !tbaa !183
  %i.bi = sub i64 %i.r, %i.bg
  %i.bj = ashr exact i64 %i.bi, 2
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SG_SG_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 noundef 0, i64 noundef %i.bj, i32 noundef %i.t, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre16 = load i64, ptr %0, align 8, !tbaa !183
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %2, align 8, !tbaa !183
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.i18, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ] ; 2 uses
  %i.bk = phi i64 [ %i.r, %bb.d ], [ %.pre16, %bb.e ]
  %.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.s
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !8870
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SG_SG_T1_T2_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !453, !noalias !8877 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !341  ; 2 uses
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
  %i.q = load i32, ptr %i.p, align 4, !tbaa !198
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198
  %i.t = and i32 %i.q, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 12
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !183
  %i.y = and i64 %i.u, 4095
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !198
  %i.ab = and i32 %i.aa, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 7
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !211
  %i.ag = and i64 %i.ac, 127
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !194
  %i.aj = and i32 %i.s, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 12
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !183
  %i.ao = and i64 %i.ak, 4095
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !198
  %i.ar = and i32 %i.aq, 1048575
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = lshr i64 %i.as, 7
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !211
  %i.aw = and i64 %i.as, 127
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !194
  %i.az = icmp slt i32 %i.ai, %i.ay
  %spec.select = select i1 %i.az, i64 %i.m, i64 %i.j ; 4 uses
  %i.ba = sub i64 0, %spec.select
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !198
  %i.be = sub i64 0, %.031
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -4
  store i32 %i.bd, ptr %i.bg, align 4, !tbaa !198
  %i.bh = icmp slt i64 %spec.select, %i.b
  br i1 %i.bh, label %bb.b, label %._crit_edge, !llvm.loop !8873

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
  %i.bp = load ptr, ptr %0, align 8, !tbaa !453, !noalias !8878 ; 2 uses
  %i.bq = xor i64 %i.bn, -1
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !198
  %i.bu = sub nsw i64 0, %.0.lcssa
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bu
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4
  store i32 %i.bt, ptr %i.bw, align 4, !tbaa !198
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.122 = phi i64 [ %i.bo, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bx = load i64, ptr %0, align 8, !tbaa !183
  %i.by = inttoptr i64 %i.bx to ptr               ; 3 uses
  %i.bz = icmp sgt i64 %.122, %1
  br i1 %i.bz, label %.lr.ph.i, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SG_SG_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !187 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !341 ; 2 uses
  %i.ce = and i32 %3, 1048575
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cg = lshr i64 %i.cf, 12
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !183
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
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !198 ; 2 uses
  %i.cp = and i32 %i.co, 1048575
  %i.cq = zext nneg i32 %i.cp to i64              ; 2 uses
  %i.cr = lshr i64 %i.cq, 12
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !183
  %i.cu = and i64 %i.cq, 4095
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !198
  %i.cx = and i32 %i.cw, 1048575
  %i.cy = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.cz = lshr i64 %i.cy, 7
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !211
  %i.dc = and i64 %i.cy, 127
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !194
  %i.df = load i32, ptr %i.ck, align 4, !tbaa !198
  %i.dg = and i32 %i.df, 1048575
  %i.dh = zext nneg i32 %i.dg to i64              ; 2 uses
  %i.di = lshr i64 %i.dh, 7
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !211
  %i.dl = and i64 %i.dh, 127
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !194
  %i.do = icmp slt i32 %i.de, %i.dn
  br i1 %i.do, label %bb.g, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SG_SG_T1_RT2_.exit

bb.g:                                             ; preds = %bb.f
  %i.dp = sub nsw i64 0, %.0916.i
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.dp
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -4
  store i32 %i.co, ptr %i.dr, align 4, !tbaa !198
  %i.ds = icmp sgt i64 %.017.i, %1
  br i1 %i.ds, label %bb.f, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SG_SG_T1_RT2_.exit, !llvm.loop !8876

_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SG_SG_T1_RT2_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.09.lcssa.i = phi i64 [ %.122, %bb.e ], [ %.0916.i, %bb.f ], [ %.017.i, %bb.g ]
  %i.dt = sub nsw i64 0, %.09.lcssa.i
  %i.du = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -4
  store i32 %3, ptr %i.dv, align 4, !tbaa !198
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SF_SF_SF_SG_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !183
  %i.b = load i64, ptr %2, align 8, !tbaa !183
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !198  ; 3 uses
  %i.f = inttoptr i64 %i.b to ptr
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !198  ; 3 uses
  %i.i = and i32 %i.e, 1048575
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = lshr i64 %i.j, 12
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !187  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !183
  %i.p = and i64 %i.j, 4095
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !198
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.v = lshr i64 %i.t, 7
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !341  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !211
  %i.z = and i64 %i.t, 127
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !194 ; 3 uses
  %i.ac = and i32 %i.h, 1048575
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = lshr i64 %i.ad, 12
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !183
  %i.ah = and i64 %i.ad, 4095
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !198
  %i.ak = and i32 %i.aj, 1048575
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = lshr i64 %i.al, 7
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !211
  %i.ap = and i64 %i.al, 127
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !194 ; 3 uses
  %i.as = icmp slt i32 %i.ab, %i.ar
  %i.at = load i64, ptr %3, align 8, !tbaa !183
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -4 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !198 ; 3 uses
  %i.ax = and i32 %i.aw, 1048575
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = lshr i64 %i.ay, 12
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !183
  %i.bc = and i64 %i.ay, 4095
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !198
  %i.bf = and i32 %i.be, 1048575
  %i.bg = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bh = lshr i64 %i.bg, 7
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !211
  %i.bk = and i64 %i.bg, 127
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !194 ; 4 uses
  br i1 %i.as, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.bn = icmp slt i32 %i.ar, %i.bm
  br i1 %i.bn, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bo = load i64, ptr %0, align 8, !tbaa !183
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -4 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !198
  store i32 %i.h, ptr %i.bq, align 4, !tbaa !198
  store i32 %i.br, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.bs = icmp slt i32 %i.ab, %i.bm
  %i.bt = load i64, ptr %0, align 8, !tbaa !183
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -4 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !198 ; 2 uses
  br i1 %i.bs, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.aw, ptr %i.bv, align 4, !tbaa !198
  store i32 %i.bw, ptr %i.av, align 4, !tbaa !198
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i32 %i.e, ptr %i.bv, align 4, !tbaa !198
  store i32 %i.bw, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.bx = icmp slt i32 %i.ab, %i.bm
  br i1 %i.bx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.by = load i64, ptr %0, align 8, !tbaa !183
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -4 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !198
  store i32 %i.e, ptr %i.ca, align 4, !tbaa !198
  store i32 %i.cb, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cc = icmp slt i32 %i.ar, %i.bm
  %i.cd = load i64, ptr %0, align 8, !tbaa !183
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !198 ; 2 uses
  br i1 %i.cc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.aw, ptr %i.cf, align 4, !tbaa !198
  store i32 %i.cg, ptr %i.av, align 4, !tbaa !198
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.h, ptr %i.cf, align 4, !tbaa !198
  store i32 %i.cg, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SF_SG_T1_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %5 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %6 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %7 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %8 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %9 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %10 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %11 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %12 = alloca %"class.std::reverse_iterator.921", align 8 ; 2 uses
  %13 = alloca %"class.std::reverse_iterator.921", align 8 ; 2 uses
  %.sroa.0.0.copyload.i.i17 = load ptr, ptr %0, align 8
  %.sroa.0.0.copyload.i2.i18 = load ptr, ptr %1, align 8
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i17 to i64 ; 3 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i18 to i64 ; 3 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph39

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEESF_SF_SF_SG_.exit
  %i.h = icmp eq i64 %i.ci, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph39, !llvm.loop !8879

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa36 = phi i64 [ %i.b, %.lr.ph ], [ %i.cj, %bb.b ] ; 4 uses
  %.lcssa34 = phi i64 [ %i.a, %.lr.ph ], [ %i.cl, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store i64 %.lcssa34, ptr %9, align 8, !tbaa !183
  store i64 %.lcssa36, ptr %10, align 8, !tbaa !183
  store i64 %.lcssa36, ptr %11, align 8, !tbaa !183
  call void @_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SF_SF_SG_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %9, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %10, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %11, ptr %3)
  %i.i = sub i64 %.lcssa34, %.lcssa36
  %i.j = icmp sgt i64 %i.i, 4
  br i1 %i.j, label %.lr.ph.i.preheader.i, label %_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SF_SF_SG_.exit

.lr.ph.i.preheader.i:                             ; preds = %._crit_edge
  %i.k = inttoptr i64 %.lcssa36 to ptr
  %i.l = inttoptr i64 %.lcssa34 to ptr
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.sroa.0.0.copyload.i2.i5.i.i = phi ptr [ %i.n, %.lr.ph.i.i ], [ %i.k, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i2.i5.i.i, i64 4 ; 2 uses
  %.cast.i.i = ptrtoint ptr %i.n to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.o = load i32, ptr %.sroa.0.0.copyload.i2.i5.i.i, align 4, !tbaa !198
  %i.p = load i32, ptr %i.m, align 4, !tbaa !198
end_hunk_12
begin_hunk_13_@_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SF_SF_SG_:bb.a
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !198
  %i.ax = and i32 %i.aw, 1048575
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = lshr i64 %i.ay, 7
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !211
  %i.bc = and i64 %i.ay, 127
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !194
  %i.bf = icmp slt i32 %i.ao, %i.be
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %1, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bh = load i32, ptr %i.v, align 4, !tbaa !198
  store i32 %i.bh, ptr %i.s, align 4, !tbaa !198
  store i64 %i.r, ptr %4, align 8, !tbaa !183
  %i.bi = sub i64 %i.r, %i.bg
  %i.bj = ashr exact i64 %i.bi, 2
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SG_SG_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 noundef 0, i64 noundef %i.bj, i32 noundef %i.t, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre16 = load i64, ptr %0, align 8, !tbaa !183
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %2, align 8, !tbaa !183
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.i18, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ] ; 2 uses
  %i.bk = phi i64 [ %i.r, %bb.d ], [ %.pre16, %bb.e ]
  %.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.s
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !8922
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SG_SG_T1_T2_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !453, !noalias !8929 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !341  ; 2 uses
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
  %i.q = load i32, ptr %i.p, align 4, !tbaa !198
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198
  %i.t = and i32 %i.q, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 12
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !183
  %i.y = and i64 %i.u, 4095
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !198
  %i.ab = and i32 %i.aa, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 7
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !211
  %i.ag = and i64 %i.ac, 127
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !194
  %i.aj = and i32 %i.s, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 12
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !183
  %i.ao = and i64 %i.ak, 4095
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !198
  %i.ar = and i32 %i.aq, 1048575
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = lshr i64 %i.as, 7
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !211
  %i.aw = and i64 %i.as, 127
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !194
  %i.az = icmp slt i32 %i.ai, %i.ay
  %spec.select = select i1 %i.az, i64 %i.m, i64 %i.j ; 4 uses
  %i.ba = sub i64 0, %spec.select
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !198
  %i.be = sub i64 0, %.031
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -4
  store i32 %i.bd, ptr %i.bg, align 4, !tbaa !198
  %i.bh = icmp slt i64 %spec.select, %i.b
  br i1 %i.bh, label %bb.b, label %._crit_edge, !llvm.loop !8925

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
  %i.bp = load ptr, ptr %0, align 8, !tbaa !453, !noalias !8930 ; 2 uses
  %i.bq = xor i64 %i.bn, -1
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !198
  %i.bu = sub nsw i64 0, %.0.lcssa
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bu
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4
  store i32 %i.bt, ptr %i.bw, align 4, !tbaa !198
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.122 = phi i64 [ %i.bo, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bx = load i64, ptr %0, align 8, !tbaa !183
  %i.by = inttoptr i64 %i.bx to ptr               ; 3 uses
  %i.bz = icmp sgt i64 %.122, %1
  br i1 %i.bz, label %.lr.ph.i, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SG_SG_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !187 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !341 ; 2 uses
  %i.ce = and i32 %3, 1048575
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cg = lshr i64 %i.cf, 12
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !183
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
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !198 ; 2 uses
  %i.cp = and i32 %i.co, 1048575
  %i.cq = zext nneg i32 %i.cp to i64              ; 2 uses
  %i.cr = lshr i64 %i.cq, 12
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !183
  %i.cu = and i64 %i.cq, 4095
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !198
  %i.cx = and i32 %i.cw, 1048575
  %i.cy = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.cz = lshr i64 %i.cy, 7
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !211
  %i.dc = and i64 %i.cy, 127
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !194
  %i.df = load i32, ptr %i.ck, align 4, !tbaa !198
  %i.dg = and i32 %i.df, 1048575
  %i.dh = zext nneg i32 %i.dg to i64              ; 2 uses
  %i.di = lshr i64 %i.dh, 7
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.di
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !211
  %i.dl = and i64 %i.dh, 127
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !194
  %i.do = icmp slt i32 %i.de, %i.dn
  br i1 %i.do, label %bb.g, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SG_SG_T1_RT2_.exit

bb.g:                                             ; preds = %bb.f
  %i.dp = sub nsw i64 0, %.0916.i
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.dp
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -4
  store i32 %i.co, ptr %i.dr, align 4, !tbaa !198
  %i.ds = icmp sgt i64 %.017.i, %1
  br i1 %i.ds, label %bb.f, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SG_SG_T1_RT2_.exit, !llvm.loop !8928

_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SG_SG_T1_RT2_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.09.lcssa.i = phi i64 [ %.122, %bb.e ], [ %.0916.i, %bb.f ], [ %.017.i, %bb.g ]
  %i.dt = sub nsw i64 0, %.09.lcssa.i
  %i.du = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -4
  store i32 %3, ptr %i.dv, align 4, !tbaa !198
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SF_SF_SF_SG_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !183
  %i.b = load i64, ptr %2, align 8, !tbaa !183
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !198  ; 3 uses
  %i.f = inttoptr i64 %i.b to ptr
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !198  ; 3 uses
  %i.i = and i32 %i.e, 1048575
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = lshr i64 %i.j, 12
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !187  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !183
  %i.p = and i64 %i.j, 4095
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !198
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.v = lshr i64 %i.t, 7
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !341  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !211
  %i.z = and i64 %i.t, 127
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !194 ; 3 uses
  %i.ac = and i32 %i.h, 1048575
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = lshr i64 %i.ad, 12
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !183
  %i.ah = and i64 %i.ad, 4095
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !198
  %i.ak = and i32 %i.aj, 1048575
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = lshr i64 %i.al, 7
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !211
  %i.ap = and i64 %i.al, 127
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !194 ; 3 uses
  %i.as = icmp slt i32 %i.ab, %i.ar
  %i.at = load i64, ptr %3, align 8, !tbaa !183
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -4 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !198 ; 3 uses
  %i.ax = and i32 %i.aw, 1048575
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = lshr i64 %i.ay, 12
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !183
  %i.bc = and i64 %i.ay, 4095
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !198
  %i.bf = and i32 %i.be, 1048575
  %i.bg = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bh = lshr i64 %i.bg, 7
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !211
  %i.bk = and i64 %i.bg, 127
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !194 ; 4 uses
  br i1 %i.as, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.bn = icmp slt i32 %i.ar, %i.bm
  br i1 %i.bn, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bo = load i64, ptr %0, align 8, !tbaa !183
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -4 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !198
  store i32 %i.h, ptr %i.bq, align 4, !tbaa !198
  store i32 %i.br, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.bs = icmp slt i32 %i.ab, %i.bm
  %i.bt = load i64, ptr %0, align 8, !tbaa !183
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -4 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !198 ; 2 uses
  br i1 %i.bs, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.aw, ptr %i.bv, align 4, !tbaa !198
  store i32 %i.bw, ptr %i.av, align 4, !tbaa !198
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i32 %i.e, ptr %i.bv, align 4, !tbaa !198
  store i32 %i.bw, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.bx = icmp slt i32 %i.ab, %i.bm
  br i1 %i.bx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.by = load i64, ptr %0, align 8, !tbaa !183
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -4 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !198
  store i32 %i.e, ptr %i.ca, align 4, !tbaa !198
  store i32 %i.cb, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cc = icmp slt i32 %i.ar, %i.bm
  %i.cd = load i64, ptr %0, align 8, !tbaa !183
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !198 ; 2 uses
  br i1 %i.cc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.aw, ptr %i.cf, align 4, !tbaa !198
  store i32 %i.cg, ptr %i.av, align 4, !tbaa !198
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.h, ptr %i.cf, align 4, !tbaa !198
  store i32 %i.cg, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverI18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINS4_10value_typeIiEEEEEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.217, i32 noundef 514)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.218, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.219, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !131
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !142
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.220, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
end_hunk_13
begin_hunk_14_@_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SL_SL_SM_:bb.a
  %i.aw = and i32 %i.av, 1048575
  %i.ax = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.ay = lshr i64 %i.ax, 10
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !352
  %i.bb = and i64 %i.ax, 1023
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load i32, ptr %i.an, align 4, !tbaa !354
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !354
  %i.bf = icmp slt i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %1, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bh = load i32, ptr %i.v, align 4, !tbaa !198
  store i32 %i.bh, ptr %i.s, align 4, !tbaa !198
  store i64 %i.r, ptr %4, align 8, !tbaa !183
  %i.bi = sub i64 %i.r, %i.bg
  %i.bj = ashr exact i64 %i.bi, 2
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 noundef 0, i64 noundef %i.bj, i32 noundef %i.t, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre16 = load i64, ptr %0, align 8, !tbaa !183
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %2, align 8, !tbaa !183
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.i18, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ] ; 2 uses
  %i.bk = phi i64 [ %i.r, %bb.d ], [ %.pre16, %bb.e ]
  %.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.s
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !9059
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !453, !noalias !9066 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !350  ; 2 uses
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
  %i.q = load i32, ptr %i.p, align 4, !tbaa !198
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198
  %i.t = and i32 %i.q, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 12
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !183
  %i.y = and i64 %i.u, 4095
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !198
  %i.ab = and i32 %i.aa, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 10
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !352
  %i.ag = and i64 %i.ac, 1023
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = and i32 %i.s, 1048575
  %i.aj = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ak = lshr i64 %i.aj, 12
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !183
  %i.an = and i64 %i.aj, 4095
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !198
  %i.aq = and i32 %i.ap, 1048575
  %i.ar = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.as = lshr i64 %i.ar, 10
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !352
  %i.av = and i64 %i.ar, 1023
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i32, ptr %i.ah, align 4, !tbaa !354
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !354
  %i.az = icmp slt i32 %i.ax, %i.ay
  %spec.select = select i1 %i.az, i64 %i.m, i64 %i.j ; 4 uses
  %i.ba = sub i64 0, %spec.select
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !198
  %i.be = sub i64 0, %.031
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -4
  store i32 %i.bd, ptr %i.bg, align 4, !tbaa !198
  %i.bh = icmp slt i64 %spec.select, %i.b
  br i1 %i.bh, label %bb.b, label %._crit_edge, !llvm.loop !9062

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
  %i.bp = load ptr, ptr %0, align 8, !tbaa !453, !noalias !9067 ; 2 uses
  %i.bq = xor i64 %i.bn, -1
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !198
  %i.bu = sub nsw i64 0, %.0.lcssa
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bu
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4
  store i32 %i.bt, ptr %i.bw, align 4, !tbaa !198
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.122 = phi i64 [ %i.bo, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bx = load i64, ptr %0, align 8, !tbaa !183
  %i.by = inttoptr i64 %i.bx to ptr               ; 3 uses
  %i.bz = icmp sgt i64 %.122, %1
  br i1 %i.bz, label %.lr.ph.i, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SM_SM_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !187 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !350 ; 2 uses
  %i.ce = and i32 %3, 1048575
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cg = lshr i64 %i.cf, 12
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !183
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
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !198 ; 2 uses
  %i.cp = and i32 %i.co, 1048575
  %i.cq = zext nneg i32 %i.cp to i64              ; 2 uses
  %i.cr = lshr i64 %i.cq, 12
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !183
  %i.cu = and i64 %i.cq, 4095
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !198
  %i.cx = and i32 %i.cw, 1048575
  %i.cy = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.cz = lshr i64 %i.cy, 10
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !352
  %i.dc = and i64 %i.cy, 1023
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.dc
  %i.de = load i32, ptr %i.ck, align 4, !tbaa !198
  %i.df = and i32 %i.de, 1048575
  %i.dg = zext nneg i32 %i.df to i64              ; 2 uses
  %i.dh = lshr i64 %i.dg, 10
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !352
  %i.dk = and i64 %i.dg, 1023
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dk
  %i.dm = load i32, ptr %i.dd, align 4, !tbaa !354
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !354
  %i.do = icmp slt i32 %i.dm, %i.dn
  br i1 %i.do, label %bb.g, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SM_SM_T1_RT2_.exit

bb.g:                                             ; preds = %bb.f
  %i.dp = sub nsw i64 0, %.0916.i
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.dp
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -4
  store i32 %i.co, ptr %i.dr, align 4, !tbaa !198
  %i.ds = icmp sgt i64 %.017.i, %1
  br i1 %i.ds, label %bb.f, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SM_SM_T1_RT2_.exit, !llvm.loop !9065

_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SM_SM_T1_RT2_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.09.lcssa.i = phi i64 [ %.122, %bb.e ], [ %.0916.i, %bb.f ], [ %.017.i, %bb.g ]
  %i.dt = sub nsw i64 0, %.09.lcssa.i
  %i.du = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -4
  store i32 %3, ptr %i.dv, align 4, !tbaa !198
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SL_SL_SL_SM_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !183
  %i.b = load i64, ptr %2, align 8, !tbaa !183
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !198  ; 3 uses
  %i.f = inttoptr i64 %i.b to ptr
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !198  ; 3 uses
  %i.i = and i32 %i.e, 1048575
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = lshr i64 %i.j, 12
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !187  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !183
  %i.p = and i64 %i.j, 4095
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !198
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.v = lshr i64 %i.t, 10
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !350  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !352
  %i.z = and i64 %i.t, 1023
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = and i32 %i.h, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !183
  %i.ag = and i64 %i.ac, 4095
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !198
  %i.aj = and i32 %i.ai, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !352
  %i.ao = and i64 %i.ak, 1023
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.aa, align 4, !tbaa !354 ; 3 uses
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !354 ; 3 uses
  %i.as = icmp slt i32 %i.aq, %i.ar
  %i.at = load i64, ptr %3, align 8, !tbaa !183
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -4 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !198 ; 3 uses
  %i.ax = and i32 %i.aw, 1048575
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = lshr i64 %i.ay, 12
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !183
  %i.bc = and i64 %i.ay, 4095
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !198
  %i.bf = and i32 %i.be, 1048575
  %i.bg = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bh = lshr i64 %i.bg, 10
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !352
  %i.bk = and i64 %i.bg, 1023
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !354 ; 4 uses
  br i1 %i.as, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.bn = icmp slt i32 %i.ar, %i.bm
  br i1 %i.bn, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bo = load i64, ptr %0, align 8, !tbaa !183
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -4 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !198
  store i32 %i.h, ptr %i.bq, align 4, !tbaa !198
  store i32 %i.br, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.bs = icmp slt i32 %i.aq, %i.bm
  %i.bt = load i64, ptr %0, align 8, !tbaa !183
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -4 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !198 ; 2 uses
  br i1 %i.bs, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.aw, ptr %i.bv, align 4, !tbaa !198
  store i32 %i.bw, ptr %i.av, align 4, !tbaa !198
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i32 %i.e, ptr %i.bv, align 4, !tbaa !198
  store i32 %i.bw, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.bx = icmp slt i32 %i.aq, %i.bm
  br i1 %i.bx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.by = load i64, ptr %0, align 8, !tbaa !183
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -4 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !198
  store i32 %i.e, ptr %i.ca, align 4, !tbaa !198
  store i32 %i.cb, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cc = icmp slt i32 %i.ar, %i.bm
  %i.cd = load i64, ptr %0, align 8, !tbaa !183
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !198 ; 2 uses
  br i1 %i.cc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.aw, ptr %i.cf, align 4, !tbaa !198
  store i32 %i.cg, ptr %i.av, align 4, !tbaa !198
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.h, ptr %i.cf, align 4, !tbaa !198
  store i32 %i.cg, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_SM_T1_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %5 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %6 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %7 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %8 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %9 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %10 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %11 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %12 = alloca %"class.std::reverse_iterator.921", align 8 ; 2 uses
  %13 = alloca %"class.std::reverse_iterator.921", align 8 ; 2 uses
  %.sroa.0.0.copyload.i.i17 = load ptr, ptr %0, align 8
  %.sroa.0.0.copyload.i2.i18 = load ptr, ptr %1, align 8
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i17 to i64 ; 3 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i18 to i64 ; 3 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph39

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEESL_SL_SL_SM_.exit
  %i.h = icmp eq i64 %i.ci, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph39, !llvm.loop !9068

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa36 = phi i64 [ %i.b, %.lr.ph ], [ %i.cj, %bb.b ] ; 4 uses
  %.lcssa34 = phi i64 [ %i.a, %.lr.ph ], [ %i.cl, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store i64 %.lcssa34, ptr %9, align 8, !tbaa !183
  store i64 %.lcssa36, ptr %10, align 8, !tbaa !183
  store i64 %.lcssa36, ptr %11, align 8, !tbaa !183
  call void @_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_SL_SM_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %9, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %10, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %11, ptr %3)
  %i.i = sub i64 %.lcssa34, %.lcssa36
  %i.j = icmp sgt i64 %i.i, 4
  br i1 %i.j, label %.lr.ph.i.preheader.i, label %_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_SL_SM_.exit

.lr.ph.i.preheader.i:                             ; preds = %._crit_edge
  %i.k = inttoptr i64 %.lcssa36 to ptr
  %i.l = inttoptr i64 %.lcssa34 to ptr
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.sroa.0.0.copyload.i2.i5.i.i = phi ptr [ %i.n, %.lr.ph.i.i ], [ %i.k, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i2.i5.i.i, i64 4 ; 2 uses
  %.cast.i.i = ptrtoint ptr %i.n to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.o = load i32, ptr %.sroa.0.0.copyload.i2.i5.i.i, align 4, !tbaa !198
  %i.p = load i32, ptr %i.m, align 4, !tbaa !198
end_hunk_14
begin_hunk_15_@_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_SL_SM_:bb.a
  %i.aw = and i32 %i.av, 1048575
  %i.ax = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.ay = lshr i64 %i.ax, 10
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !352
  %i.bb = and i64 %i.ax, 1023
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load i32, ptr %i.an, align 4, !tbaa !354
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !354
  %i.bf = icmp slt i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %1, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bh = load i32, ptr %i.v, align 4, !tbaa !198
  store i32 %i.bh, ptr %i.s, align 4, !tbaa !198
  store i64 %i.r, ptr %4, align 8, !tbaa !183
  %i.bi = sub i64 %i.r, %i.bg
  %i.bj = ashr exact i64 %i.bi, 2
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 noundef 0, i64 noundef %i.bj, i32 noundef %i.t, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre16 = load i64, ptr %0, align 8, !tbaa !183
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %2, align 8, !tbaa !183
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.i18, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ] ; 2 uses
  %i.bk = phi i64 [ %i.r, %bb.d ], [ %.pre16, %bb.e ]
  %.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.s
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !9111
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !453, !noalias !9118 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !350  ; 2 uses
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
  %i.q = load i32, ptr %i.p, align 4, !tbaa !198
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198
  %i.t = and i32 %i.q, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 12
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !183
  %i.y = and i64 %i.u, 4095
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !198
  %i.ab = and i32 %i.aa, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 10
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !352
  %i.ag = and i64 %i.ac, 1023
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = and i32 %i.s, 1048575
  %i.aj = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ak = lshr i64 %i.aj, 12
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !183
  %i.an = and i64 %i.aj, 4095
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !198
  %i.aq = and i32 %i.ap, 1048575
  %i.ar = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.as = lshr i64 %i.ar, 10
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !352
  %i.av = and i64 %i.ar, 1023
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i32, ptr %i.ah, align 4, !tbaa !354
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !354
  %i.az = icmp slt i32 %i.ax, %i.ay
  %spec.select = select i1 %i.az, i64 %i.m, i64 %i.j ; 4 uses
  %i.ba = sub i64 0, %spec.select
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.ba
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !198
  %i.be = sub i64 0, %.031
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -4
  store i32 %i.bd, ptr %i.bg, align 4, !tbaa !198
  %i.bh = icmp slt i64 %spec.select, %i.b
  br i1 %i.bh, label %bb.b, label %._crit_edge, !llvm.loop !9114

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
  %i.bp = load ptr, ptr %0, align 8, !tbaa !453, !noalias !9119 ; 2 uses
  %i.bq = xor i64 %i.bn, -1
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !198
  %i.bu = sub nsw i64 0, %.0.lcssa
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bu
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4
  store i32 %i.bt, ptr %i.bw, align 4, !tbaa !198
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.122 = phi i64 [ %i.bo, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bx = load i64, ptr %0, align 8, !tbaa !183
  %i.by = inttoptr i64 %i.bx to ptr               ; 3 uses
  %i.bz = icmp sgt i64 %.122, %1
  br i1 %i.bz, label %.lr.ph.i, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SM_SM_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !187 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !350 ; 2 uses
  %i.ce = and i32 %3, 1048575
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cg = lshr i64 %i.cf, 12
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !183
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
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !198 ; 2 uses
  %i.cp = and i32 %i.co, 1048575
  %i.cq = zext nneg i32 %i.cp to i64              ; 2 uses
  %i.cr = lshr i64 %i.cq, 12
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !183
  %i.cu = and i64 %i.cq, 4095
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !198
  %i.cx = and i32 %i.cw, 1048575
  %i.cy = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.cz = lshr i64 %i.cy, 10
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !352
  %i.dc = and i64 %i.cy, 1023
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.dc
  %i.de = load i32, ptr %i.ck, align 4, !tbaa !198
  %i.df = and i32 %i.de, 1048575
  %i.dg = zext nneg i32 %i.df to i64              ; 2 uses
  %i.dh = lshr i64 %i.dg, 10
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !352
  %i.dk = and i64 %i.dg, 1023
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.dk
  %i.dm = load i32, ptr %i.dd, align 4, !tbaa !354
  %i.dn = load i32, ptr %i.dl, align 4, !tbaa !354
  %i.do = icmp slt i32 %i.dm, %i.dn
  br i1 %i.do, label %bb.g, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SM_SM_T1_RT2_.exit

bb.g:                                             ; preds = %bb.f
  %i.dp = sub nsw i64 0, %.0916.i
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.dp
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -4
  store i32 %i.co, ptr %i.dr, align 4, !tbaa !198
  %i.ds = icmp sgt i64 %.017.i, %1
  br i1 %i.ds, label %bb.f, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SM_SM_T1_RT2_.exit, !llvm.loop !9117

_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SM_SM_T1_RT2_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.09.lcssa.i = phi i64 [ %.122, %bb.e ], [ %.0916.i, %bb.f ], [ %.017.i, %bb.g ]
  %i.dt = sub nsw i64 0, %.09.lcssa.i
  %i.du = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -4
  store i32 %3, ptr %i.dv, align 4, !tbaa !198
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_SL_SL_SM_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !183
  %i.b = load i64, ptr %2, align 8, !tbaa !183
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !198  ; 3 uses
  %i.f = inttoptr i64 %i.b to ptr
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !198  ; 3 uses
  %i.i = and i32 %i.e, 1048575
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = lshr i64 %i.j, 12
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !187  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !183
  %i.p = and i64 %i.j, 4095
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !198
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.v = lshr i64 %i.t, 10
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !350  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !352
  %i.z = and i64 %i.t, 1023
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = and i32 %i.h, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !183
  %i.ag = and i64 %i.ac, 4095
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !198
  %i.aj = and i32 %i.ai, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !352
  %i.ao = and i64 %i.ak, 1023
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.aa, align 4, !tbaa !354 ; 3 uses
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !354 ; 3 uses
  %i.as = icmp slt i32 %i.aq, %i.ar
  %i.at = load i64, ptr %3, align 8, !tbaa !183
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -4 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !198 ; 3 uses
  %i.ax = and i32 %i.aw, 1048575
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = lshr i64 %i.ay, 12
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !183
  %i.bc = and i64 %i.ay, 4095
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !198
  %i.bf = and i32 %i.be, 1048575
  %i.bg = zext nneg i32 %i.bf to i64              ; 2 uses
  %i.bh = lshr i64 %i.bg, 10
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !352
  %i.bk = and i64 %i.bg, 1023
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !354 ; 4 uses
  br i1 %i.as, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.bn = icmp slt i32 %i.ar, %i.bm
  br i1 %i.bn, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bo = load i64, ptr %0, align 8, !tbaa !183
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -4 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !198
  store i32 %i.h, ptr %i.bq, align 4, !tbaa !198
  store i32 %i.br, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.bs = icmp slt i32 %i.aq, %i.bm
  %i.bt = load i64, ptr %0, align 8, !tbaa !183
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -4 ; 3 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !198 ; 2 uses
  br i1 %i.bs, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.aw, ptr %i.bv, align 4, !tbaa !198
  store i32 %i.bw, ptr %i.av, align 4, !tbaa !198
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i32 %i.e, ptr %i.bv, align 4, !tbaa !198
  store i32 %i.bw, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.bx = icmp slt i32 %i.aq, %i.bm
  br i1 %i.bx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.by = load i64, ptr %0, align 8, !tbaa !183
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -4 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !198
  store i32 %i.e, ptr %i.ca, align 4, !tbaa !198
  store i32 %i.cb, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cc = icmp slt i32 %i.ar, %i.bm
  %i.cd = load i64, ptr %0, align 8, !tbaa !183
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4 ; 3 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !198 ; 2 uses
  br i1 %i.cc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.aw, ptr %i.cf, align 4, !tbaa !198
  store i32 %i.cg, ptr %i.av, align 4, !tbaa !198
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.h, ptr %i.cf, align 4, !tbaa !198
  store i32 %i.cg, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverI18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINS4_10value_typeIiEEEEEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.217, i32 noundef 514)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.218, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.219, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !131
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !142
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.220, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
end_hunk_15
begin_hunk_16_@_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SL_SL_SM_:bb.a
  %i.bc = and i64 %i.ay, 1023
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i32, ptr %i.ao, align 4, !tbaa !354
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !354
  %i.bh = icmp slt i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bi = load i64, ptr %1, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bj = load i32, ptr %i.v, align 4, !tbaa !198
  store i32 %i.bj, ptr %i.s, align 4, !tbaa !198
  store i64 %i.r, ptr %4, align 8, !tbaa !183
  %i.bk = sub i64 %i.r, %i.bi
  %i.bl = ashr exact i64 %i.bk, 2
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 noundef 0, i64 noundef %i.bl, i32 noundef %i.t, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre16 = load i64, ptr %0, align 8, !tbaa !183
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %2, align 8, !tbaa !183
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.i18, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ] ; 2 uses
  %i.bm = phi i64 [ %i.r, %bb.d ], [ %.pre16, %bb.e ]
  %.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.s
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !9230
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !453, !noalias !9237 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !359  ; 2 uses
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
  %i.q = load i32, ptr %i.p, align 4, !tbaa !198
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198
  %i.t = and i32 %i.q, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 12
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !183
  %i.y = and i64 %i.u, 4095
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !198
  %i.ab = and i32 %i.aa, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 10
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !361
  %i.ag = and i64 %i.ac, 1023
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = and i32 %i.s, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 12
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !183
  %i.ao = and i64 %i.ak, 4095
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !198
  %i.ar = and i32 %i.aq, 1048575
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = lshr i64 %i.as, 10
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !361
  %i.aw = and i64 %i.as, 1023
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i32, ptr %i.ai, align 4, !tbaa !354
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !354
  %i.bb = icmp slt i32 %i.az, %i.ba
  %spec.select = select i1 %i.bb, i64 %i.m, i64 %i.j ; 4 uses
  %i.bc = sub i64 0, %spec.select
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !198
  %i.bg = sub i64 0, %.031
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4
  store i32 %i.bf, ptr %i.bi, align 4, !tbaa !198
  %i.bj = icmp slt i64 %spec.select, %i.b
  br i1 %i.bj, label %bb.b, label %._crit_edge, !llvm.loop !9233

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 5 uses
  %i.bk = and i64 %2, 1
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.bm = add nsw i64 %2, -2
  %i.bn = ashr exact i64 %i.bm, 1
  %i.bo = icmp eq i64 %.0.lcssa, %i.bn
  br i1 %i.bo, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bp = shl nsw i64 %.0.lcssa, 1                ; 2 uses
  %i.bq = or disjoint i64 %i.bp, 1
  %i.br = load ptr, ptr %0, align 8, !tbaa !453, !noalias !9238 ; 2 uses
  %i.bs = xor i64 %i.bp, -1
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bs
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !198
  %i.bw = sub nsw i64 0, %.0.lcssa
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bw
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4
  store i32 %i.bv, ptr %i.by, align 4, !tbaa !198
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.122 = phi i64 [ %i.bq, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bz = load i64, ptr %0, align 8, !tbaa !183
  %i.ca = inttoptr i64 %i.bz to ptr               ; 3 uses
  %i.cb = icmp sgt i64 %.122, %1
  br i1 %i.cb, label %.lr.ph.i, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SM_SM_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !187 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !359 ; 2 uses
  %i.cg = and i32 %3, 1048575
  %i.ch = zext nneg i32 %i.cg to i64              ; 2 uses
  %i.ci = lshr i64 %i.ch, 12
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !183
  %i.cl = and i64 %i.ch, 4095
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cl
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %.0916.i = phi i64 [ %.122, %.lr.ph.i ], [ %.017.i, %bb.g ] ; 3 uses
  %.017.in.i = add nsw i64 %.0916.i, -1
  %.017.i = sdiv i64 %.017.in.i, 2                ; 4 uses
  %i.cn = sub nsw i64 0, %.017.i
  %i.co = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cn
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !198 ; 2 uses
  %i.cr = and i32 %i.cq, 1048575
  %i.cs = zext nneg i32 %i.cr to i64              ; 2 uses
  %i.ct = lshr i64 %i.cs, 12
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !183
  %i.cw = and i64 %i.cs, 4095
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !198
  %i.cz = and i32 %i.cy, 1048575
  %i.da = zext nneg i32 %i.cz to i64              ; 2 uses
  %i.db = lshr i64 %i.da, 10
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !361
  %i.de = and i64 %i.da, 1023
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i32, ptr %i.cm, align 4, !tbaa !198
  %i.di = and i32 %i.dh, 1048575
  %i.dj = zext nneg i32 %i.di to i64              ; 2 uses
  %i.dk = lshr i64 %i.dj, 10
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !361
  %i.dn = and i64 %i.dj, 1023
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load i32, ptr %i.dg, align 4, !tbaa !354
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !354
  %i.ds = icmp slt i32 %i.dq, %i.dr
  br i1 %i.ds, label %bb.g, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SM_SM_T1_RT2_.exit

bb.g:                                             ; preds = %bb.f
  %i.dt = sub nsw i64 0, %.0916.i
  %i.du = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -4
  store i32 %i.cq, ptr %i.dv, align 4, !tbaa !198
  %i.dw = icmp sgt i64 %.017.i, %1
  br i1 %i.dw, label %bb.f, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SM_SM_T1_RT2_.exit, !llvm.loop !9236

_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SM_SM_T1_RT2_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.09.lcssa.i = phi i64 [ %.122, %bb.e ], [ %.0916.i, %bb.f ], [ %.017.i, %bb.g ]
  %i.dx = sub nsw i64 0, %.09.lcssa.i
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.dx
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -4
  store i32 %3, ptr %i.dz, align 4, !tbaa !198
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SL_SL_SL_SM_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !183
  %i.b = load i64, ptr %2, align 8, !tbaa !183
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !198  ; 3 uses
  %i.f = inttoptr i64 %i.b to ptr
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !198  ; 3 uses
  %i.i = and i32 %i.e, 1048575
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = lshr i64 %i.j, 12
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !187  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !183
  %i.p = and i64 %i.j, 4095
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !198
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.v = lshr i64 %i.t, 10
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !359  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !361
  %i.z = and i64 %i.t, 1023
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = and i32 %i.h, 1048575
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = lshr i64 %i.ad, 12
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !183
  %i.ah = and i64 %i.ad, 4095
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !198
  %i.ak = and i32 %i.aj, 1048575
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = lshr i64 %i.al, 10
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !361
  %i.ap = and i64 %i.al, 1023
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ab, align 4, !tbaa !354 ; 3 uses
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !354 ; 3 uses
  %i.au = icmp slt i32 %i.as, %i.at
  %i.av = load i64, ptr %3, align 8, !tbaa !183
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !198 ; 3 uses
  %i.az = and i32 %i.ay, 1048575
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = lshr i64 %i.ba, 12
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !183
  %i.be = and i64 %i.ba, 4095
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !198
  %i.bh = and i32 %i.bg, 1048575
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = lshr i64 %i.bi, 10
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !361
  %i.bm = and i64 %i.bi, 1023
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !354 ; 4 uses
  br i1 %i.au, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.bq = icmp slt i32 %i.at, %i.bp
  br i1 %i.bq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.br = load i64, ptr %0, align 8, !tbaa !183
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.h, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.bu, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.bv = icmp slt i32 %i.as, %i.bp
  %i.bw = load i64, ptr %0, align 8, !tbaa !183
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !198 ; 2 uses
  br i1 %i.bv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.ay, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i32 %i.e, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.ca = icmp slt i32 %i.as, %i.bp
  br i1 %i.ca, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cb = load i64, ptr %0, align 8, !tbaa !183
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.e, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.ce, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cf = icmp slt i32 %i.at, %i.bp
  %i.cg = load i64, ptr %0, align 8, !tbaa !183
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -4 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !198 ; 2 uses
  br i1 %i.cf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.ay, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.h, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SL_SM_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8, !tbaa !183 ; 3 uses
  %i.a = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 4 uses
  %i.d = icmp eq ptr %i.c, %.sroa.0.0.copyload.i2.i
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !359  ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.010.016 = phi ptr [ %i.c, %.lr.ph ], [ %i.i, %bb.f ] ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.010.016, i64 -4 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !198  ; 3 uses
  %i.k = load i32, ptr %i.c, align 4, !tbaa !198
  %i.l = and i32 %i.j, 1048575
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = lshr i64 %i.m, 12
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183
  %i.q = and i64 %i.m, 4095
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198  ; 2 uses
  %i.t = and i32 %i.s, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 10
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !361
  %i.y = and i64 %i.u, 1023
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = and i32 %i.k, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !183
  %i.ag = and i64 %i.ac, 4095
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !198
  %i.aj = and i32 %i.ai, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !361
end_hunk_16
begin_hunk_17_@_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_SL_SM_:bb.a
  %i.bc = and i64 %i.ay, 1023
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i32, ptr %i.ao, align 4, !tbaa !354
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !354
  %i.bh = icmp slt i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bi = load i64, ptr %1, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bj = load i32, ptr %i.v, align 4, !tbaa !198
  store i32 %i.bj, ptr %i.s, align 4, !tbaa !198
  store i64 %i.r, ptr %4, align 8, !tbaa !183
  %i.bk = sub i64 %i.r, %i.bi
  %i.bl = ashr exact i64 %i.bk, 2
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 noundef 0, i64 noundef %i.bl, i32 noundef %i.t, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre16 = load i64, ptr %0, align 8, !tbaa !183
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %2, align 8, !tbaa !183
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.i18, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ] ; 2 uses
  %i.bm = phi i64 [ %i.r, %bb.d ], [ %.pre16, %bb.e ]
  %.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.s
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !9276
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !453, !noalias !9283 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !359  ; 2 uses
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
  %i.q = load i32, ptr %i.p, align 4, !tbaa !198
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198
  %i.t = and i32 %i.q, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 12
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !183
  %i.y = and i64 %i.u, 4095
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !198
  %i.ab = and i32 %i.aa, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 10
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !361
  %i.ag = and i64 %i.ac, 1023
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = and i32 %i.s, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 12
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !183
  %i.ao = and i64 %i.ak, 4095
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !198
  %i.ar = and i32 %i.aq, 1048575
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = lshr i64 %i.as, 10
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !361
  %i.aw = and i64 %i.as, 1023
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i32, ptr %i.ai, align 4, !tbaa !354
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !354
  %i.bb = icmp slt i32 %i.az, %i.ba
  %spec.select = select i1 %i.bb, i64 %i.m, i64 %i.j ; 4 uses
  %i.bc = sub i64 0, %spec.select
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !198
  %i.bg = sub i64 0, %.031
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4
  store i32 %i.bf, ptr %i.bi, align 4, !tbaa !198
  %i.bj = icmp slt i64 %spec.select, %i.b
  br i1 %i.bj, label %bb.b, label %._crit_edge, !llvm.loop !9279

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 5 uses
  %i.bk = and i64 %2, 1
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.bm = add nsw i64 %2, -2
  %i.bn = ashr exact i64 %i.bm, 1
  %i.bo = icmp eq i64 %.0.lcssa, %i.bn
  br i1 %i.bo, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bp = shl nsw i64 %.0.lcssa, 1                ; 2 uses
  %i.bq = or disjoint i64 %i.bp, 1
  %i.br = load ptr, ptr %0, align 8, !tbaa !453, !noalias !9284 ; 2 uses
  %i.bs = xor i64 %i.bp, -1
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bs
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !198
  %i.bw = sub nsw i64 0, %.0.lcssa
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bw
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4
  store i32 %i.bv, ptr %i.by, align 4, !tbaa !198
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.122 = phi i64 [ %i.bq, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bz = load i64, ptr %0, align 8, !tbaa !183
  %i.ca = inttoptr i64 %i.bz to ptr               ; 3 uses
  %i.cb = icmp sgt i64 %.122, %1
  br i1 %i.cb, label %.lr.ph.i, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SM_SM_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !187 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !359 ; 2 uses
  %i.cg = and i32 %3, 1048575
  %i.ch = zext nneg i32 %i.cg to i64              ; 2 uses
  %i.ci = lshr i64 %i.ch, 12
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !183
  %i.cl = and i64 %i.ch, 4095
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cl
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %.0916.i = phi i64 [ %.122, %.lr.ph.i ], [ %.017.i, %bb.g ] ; 3 uses
  %.017.in.i = add nsw i64 %.0916.i, -1
  %.017.i = sdiv i64 %.017.in.i, 2                ; 4 uses
  %i.cn = sub nsw i64 0, %.017.i
  %i.co = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cn
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !198 ; 2 uses
  %i.cr = and i32 %i.cq, 1048575
  %i.cs = zext nneg i32 %i.cr to i64              ; 2 uses
  %i.ct = lshr i64 %i.cs, 12
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !183
  %i.cw = and i64 %i.cs, 4095
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !198
  %i.cz = and i32 %i.cy, 1048575
  %i.da = zext nneg i32 %i.cz to i64              ; 2 uses
  %i.db = lshr i64 %i.da, 10
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !361
  %i.de = and i64 %i.da, 1023
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i32, ptr %i.cm, align 4, !tbaa !198
  %i.di = and i32 %i.dh, 1048575
  %i.dj = zext nneg i32 %i.di to i64              ; 2 uses
  %i.dk = lshr i64 %i.dj, 10
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !361
  %i.dn = and i64 %i.dj, 1023
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load i32, ptr %i.dg, align 4, !tbaa !354
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !354
  %i.ds = icmp slt i32 %i.dq, %i.dr
  br i1 %i.ds, label %bb.g, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SM_SM_T1_RT2_.exit

bb.g:                                             ; preds = %bb.f
  %i.dt = sub nsw i64 0, %.0916.i
  %i.du = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -4
  store i32 %i.cq, ptr %i.dv, align 4, !tbaa !198
  %i.dw = icmp sgt i64 %.017.i, %1
  br i1 %i.dw, label %bb.f, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SM_SM_T1_RT2_.exit, !llvm.loop !9282

_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SM_SM_T1_RT2_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.09.lcssa.i = phi i64 [ %.122, %bb.e ], [ %.0916.i, %bb.f ], [ %.017.i, %bb.g ]
  %i.dx = sub nsw i64 0, %.09.lcssa.i
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.dx
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -4
  store i32 %3, ptr %i.dz, align 4, !tbaa !198
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_SL_SL_SM_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !183
  %i.b = load i64, ptr %2, align 8, !tbaa !183
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !198  ; 3 uses
  %i.f = inttoptr i64 %i.b to ptr
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !198  ; 3 uses
  %i.i = and i32 %i.e, 1048575
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = lshr i64 %i.j, 12
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !187  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !183
  %i.p = and i64 %i.j, 4095
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !198
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.v = lshr i64 %i.t, 10
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !359  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !361
  %i.z = and i64 %i.t, 1023
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = and i32 %i.h, 1048575
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = lshr i64 %i.ad, 12
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !183
  %i.ah = and i64 %i.ad, 4095
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !198
  %i.ak = and i32 %i.aj, 1048575
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = lshr i64 %i.al, 10
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !361
  %i.ap = and i64 %i.al, 1023
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ab, align 4, !tbaa !354 ; 3 uses
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !354 ; 3 uses
  %i.au = icmp slt i32 %i.as, %i.at
  %i.av = load i64, ptr %3, align 8, !tbaa !183
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !198 ; 3 uses
  %i.az = and i32 %i.ay, 1048575
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = lshr i64 %i.ba, 12
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !183
  %i.be = and i64 %i.ba, 4095
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !198
  %i.bh = and i32 %i.bg, 1048575
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = lshr i64 %i.bi, 10
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !361
  %i.bm = and i64 %i.bi, 1023
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !354 ; 4 uses
  br i1 %i.au, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.bq = icmp slt i32 %i.at, %i.bp
  br i1 %i.bq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.br = load i64, ptr %0, align 8, !tbaa !183
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.h, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.bu, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.bv = icmp slt i32 %i.as, %i.bp
  %i.bw = load i64, ptr %0, align 8, !tbaa !183
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !198 ; 2 uses
  br i1 %i.bv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.ay, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i32 %i.e, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.ca = icmp slt i32 %i.as, %i.bp
  br i1 %i.ca, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cb = load i64, ptr %0, align 8, !tbaa !183
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.e, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.ce, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cf = icmp slt i32 %i.at, %i.bp
  %i.cg = load i64, ptr %0, align 8, !tbaa !183
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -4 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !198 ; 2 uses
  br i1 %i.cf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.ay, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.h, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_SM_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8, !tbaa !183 ; 3 uses
  %i.a = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 4 uses
  %i.d = icmp eq ptr %i.c, %.sroa.0.0.copyload.i2.i
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !359  ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.010.016 = phi ptr [ %i.c, %.lr.ph ], [ %i.i, %bb.f ] ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.010.016, i64 -4 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !198  ; 3 uses
  %i.k = load i32, ptr %i.c, align 4, !tbaa !198
  %i.l = and i32 %i.j, 1048575
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = lshr i64 %i.m, 12
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183
  %i.q = and i64 %i.m, 4095
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198  ; 2 uses
  %i.t = and i32 %i.s, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 10
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !361
  %i.y = and i64 %i.u, 1023
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = and i32 %i.k, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !183
  %i.ag = and i64 %i.ac, 4095
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !198
  %i.aj = and i32 %i.ai, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !361
end_hunk_17
begin_hunk_18_@_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E0_EEEvSN_SN_SN_SO_:bb.a
  %i.bc = and i64 %i.ay, 1023
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i32, ptr %i.ao, align 4, !tbaa !354
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !354
  %i.bh = icmp slt i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bi = load i64, ptr %1, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bj = load i32, ptr %i.v, align 4, !tbaa !198
  store i32 %i.bj, ptr %i.s, align 4, !tbaa !198
  store i64 %i.r, ptr %4, align 8, !tbaa !183
  %i.bk = sub i64 %i.r, %i.bi
  %i.bl = ashr exact i64 %i.bk, 2
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E0_EEEvSN_SO_SO_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 noundef 0, i64 noundef %i.bl, i32 noundef %i.t, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre16 = load i64, ptr %0, align 8, !tbaa !183
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %2, align 8, !tbaa !183
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.i18, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ] ; 2 uses
  %i.bm = phi i64 [ %i.r, %bb.d ], [ %.pre16, %bb.e ]
  %.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.s
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !9392
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E0_EEEvSN_SO_SO_T1_T2_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !453, !noalias !9399 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !367  ; 2 uses
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
  %i.q = load i32, ptr %i.p, align 4, !tbaa !198
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198
  %i.t = and i32 %i.q, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 12
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !183
  %i.y = and i64 %i.u, 4095
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !198
  %i.ab = and i32 %i.aa, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 10
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !369
  %i.ag = and i64 %i.ac, 1023
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = and i32 %i.s, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 12
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !183
  %i.ao = and i64 %i.ak, 4095
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !198
  %i.ar = and i32 %i.aq, 1048575
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = lshr i64 %i.as, 10
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !369
  %i.aw = and i64 %i.as, 1023
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i32, ptr %i.ai, align 4, !tbaa !354
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !354
  %i.bb = icmp slt i32 %i.az, %i.ba
  %spec.select = select i1 %i.bb, i64 %i.m, i64 %i.j ; 4 uses
  %i.bc = sub i64 0, %spec.select
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !198
  %i.bg = sub i64 0, %.031
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4
  store i32 %i.bf, ptr %i.bi, align 4, !tbaa !198
  %i.bj = icmp slt i64 %spec.select, %i.b
  br i1 %i.bj, label %bb.b, label %._crit_edge, !llvm.loop !9395

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 5 uses
  %i.bk = and i64 %2, 1
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.bm = add nsw i64 %2, -2
  %i.bn = ashr exact i64 %i.bm, 1
  %i.bo = icmp eq i64 %.0.lcssa, %i.bn
  br i1 %i.bo, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bp = shl nsw i64 %.0.lcssa, 1                ; 2 uses
  %i.bq = or disjoint i64 %i.bp, 1
  %i.br = load ptr, ptr %0, align 8, !tbaa !453, !noalias !9400 ; 2 uses
  %i.bs = xor i64 %i.bp, -1
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bs
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !198
  %i.bw = sub nsw i64 0, %.0.lcssa
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bw
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4
  store i32 %i.bv, ptr %i.by, align 4, !tbaa !198
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.122 = phi i64 [ %i.bq, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bz = load i64, ptr %0, align 8, !tbaa !183
  %i.ca = inttoptr i64 %i.bz to ptr               ; 3 uses
  %i.cb = icmp sgt i64 %.122, %1
  br i1 %i.cb, label %.lr.ph.i, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E0_EEEvSN_SO_SO_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !187 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !367 ; 2 uses
  %i.cg = and i32 %3, 1048575
  %i.ch = zext nneg i32 %i.cg to i64              ; 2 uses
  %i.ci = lshr i64 %i.ch, 12
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !183
  %i.cl = and i64 %i.ch, 4095
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cl
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %.0916.i = phi i64 [ %.122, %.lr.ph.i ], [ %.017.i, %bb.g ] ; 3 uses
  %.017.in.i = add nsw i64 %.0916.i, -1
  %.017.i = sdiv i64 %.017.in.i, 2                ; 4 uses
  %i.cn = sub nsw i64 0, %.017.i
  %i.co = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cn
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !198 ; 2 uses
  %i.cr = and i32 %i.cq, 1048575
  %i.cs = zext nneg i32 %i.cr to i64              ; 2 uses
  %i.ct = lshr i64 %i.cs, 12
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !183
  %i.cw = and i64 %i.cs, 4095
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !198
  %i.cz = and i32 %i.cy, 1048575
  %i.da = zext nneg i32 %i.cz to i64              ; 2 uses
  %i.db = lshr i64 %i.da, 10
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !369
  %i.de = and i64 %i.da, 1023
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i32, ptr %i.cm, align 4, !tbaa !198
  %i.di = and i32 %i.dh, 1048575
  %i.dj = zext nneg i32 %i.di to i64              ; 2 uses
  %i.dk = lshr i64 %i.dj, 10
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !369
  %i.dn = and i64 %i.dj, 1023
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load i32, ptr %i.dg, align 4, !tbaa !354
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !354
  %i.ds = icmp slt i32 %i.dq, %i.dr
  br i1 %i.ds, label %bb.g, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E0_EEEvSN_SO_SO_T1_RT2_.exit

bb.g:                                             ; preds = %bb.f
  %i.dt = sub nsw i64 0, %.0916.i
  %i.du = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -4
  store i32 %i.cq, ptr %i.dv, align 4, !tbaa !198
  %i.dw = icmp sgt i64 %.017.i, %1
  br i1 %i.dw, label %bb.f, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E0_EEEvSN_SO_SO_T1_RT2_.exit, !llvm.loop !9398

_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E0_EEEvSN_SO_SO_T1_RT2_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.09.lcssa.i = phi i64 [ %.122, %bb.e ], [ %.0916.i, %bb.f ], [ %.017.i, %bb.g ]
  %i.dx = sub nsw i64 0, %.09.lcssa.i
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.dx
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -4
  store i32 %3, ptr %i.dz, align 4, !tbaa !198
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E0_EEEvSN_SN_SN_SN_SO_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !183
  %i.b = load i64, ptr %2, align 8, !tbaa !183
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !198  ; 3 uses
  %i.f = inttoptr i64 %i.b to ptr
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !198  ; 3 uses
  %i.i = and i32 %i.e, 1048575
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = lshr i64 %i.j, 12
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !187  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !183
  %i.p = and i64 %i.j, 4095
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !198
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.v = lshr i64 %i.t, 10
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !367  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !369
  %i.z = and i64 %i.t, 1023
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = and i32 %i.h, 1048575
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = lshr i64 %i.ad, 12
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !183
  %i.ah = and i64 %i.ad, 4095
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !198
  %i.ak = and i32 %i.aj, 1048575
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = lshr i64 %i.al, 10
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !369
  %i.ap = and i64 %i.al, 1023
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ab, align 4, !tbaa !354 ; 3 uses
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !354 ; 3 uses
  %i.au = icmp slt i32 %i.as, %i.at
  %i.av = load i64, ptr %3, align 8, !tbaa !183
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !198 ; 3 uses
  %i.az = and i32 %i.ay, 1048575
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = lshr i64 %i.ba, 12
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !183
  %i.be = and i64 %i.ba, 4095
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !198
  %i.bh = and i32 %i.bg, 1048575
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = lshr i64 %i.bi, 10
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !369
  %i.bm = and i64 %i.bi, 1023
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !354 ; 4 uses
  br i1 %i.au, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.bq = icmp slt i32 %i.at, %i.bp
  br i1 %i.bq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.br = load i64, ptr %0, align 8, !tbaa !183
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.h, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.bu, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.bv = icmp slt i32 %i.as, %i.bp
  %i.bw = load i64, ptr %0, align 8, !tbaa !183
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !198 ; 2 uses
  br i1 %i.bv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.ay, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i32 %i.e, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.ca = icmp slt i32 %i.as, %i.bp
  br i1 %i.ca, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cb = load i64, ptr %0, align 8, !tbaa !183
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.e, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.ce, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cf = icmp slt i32 %i.at, %i.bp
  %i.cg = load i64, ptr %0, align 8, !tbaa !183
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -4 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !198 ; 2 uses
  br i1 %i.cf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.ay, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.h, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E0_EEEvSN_SN_SO_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8, !tbaa !183 ; 3 uses
  %i.a = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 4 uses
  %i.d = icmp eq ptr %i.c, %.sroa.0.0.copyload.i2.i
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !367  ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.010.016 = phi ptr [ %i.c, %.lr.ph ], [ %i.i, %bb.f ] ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.010.016, i64 -4 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !198  ; 3 uses
  %i.k = load i32, ptr %i.c, align 4, !tbaa !198
  %i.l = and i32 %i.j, 1048575
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = lshr i64 %i.m, 12
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183
  %i.q = and i64 %i.m, 4095
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198  ; 2 uses
  %i.t = and i32 %i.s, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 10
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !369
  %i.y = and i64 %i.u, 1023
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = and i32 %i.k, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !183
  %i.ag = and i64 %i.ac, 4095
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !198
  %i.aj = and i32 %i.ai, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !369
end_hunk_18
begin_hunk_19_@_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E1_EEEvSN_SN_SN_SO_:bb.a
  %i.bc = and i64 %i.ay, 1023
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i32, ptr %i.ao, align 4, !tbaa !354
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !354
  %i.bh = icmp slt i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bi = load i64, ptr %1, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bj = load i32, ptr %i.v, align 4, !tbaa !198
  store i32 %i.bj, ptr %i.s, align 4, !tbaa !198
  store i64 %i.r, ptr %4, align 8, !tbaa !183
  %i.bk = sub i64 %i.r, %i.bi
  %i.bl = ashr exact i64 %i.bk, 2
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E1_EEEvSN_SO_SO_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 noundef 0, i64 noundef %i.bl, i32 noundef %i.t, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre16 = load i64, ptr %0, align 8, !tbaa !183
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %2, align 8, !tbaa !183
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.i18, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ] ; 2 uses
  %i.bm = phi i64 [ %i.r, %bb.d ], [ %.pre16, %bb.e ]
  %.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.s
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !9438
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E1_EEEvSN_SO_SO_T1_T2_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !453, !noalias !9445 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !367  ; 2 uses
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
  %i.q = load i32, ptr %i.p, align 4, !tbaa !198
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198
  %i.t = and i32 %i.q, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 12
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !183
  %i.y = and i64 %i.u, 4095
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !198
  %i.ab = and i32 %i.aa, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 10
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !369
  %i.ag = and i64 %i.ac, 1023
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = and i32 %i.s, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 12
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !183
  %i.ao = and i64 %i.ak, 4095
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !198
  %i.ar = and i32 %i.aq, 1048575
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = lshr i64 %i.as, 10
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !369
  %i.aw = and i64 %i.as, 1023
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i32, ptr %i.ai, align 4, !tbaa !354
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !354
  %i.bb = icmp slt i32 %i.az, %i.ba
  %spec.select = select i1 %i.bb, i64 %i.m, i64 %i.j ; 4 uses
  %i.bc = sub i64 0, %spec.select
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bc
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !198
  %i.bg = sub i64 0, %.031
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bg
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -4
  store i32 %i.bf, ptr %i.bi, align 4, !tbaa !198
  %i.bj = icmp slt i64 %spec.select, %i.b
  br i1 %i.bj, label %bb.b, label %._crit_edge, !llvm.loop !9441

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 5 uses
  %i.bk = and i64 %2, 1
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.bm = add nsw i64 %2, -2
  %i.bn = ashr exact i64 %i.bm, 1
  %i.bo = icmp eq i64 %.0.lcssa, %i.bn
  br i1 %i.bo, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bp = shl nsw i64 %.0.lcssa, 1                ; 2 uses
  %i.bq = or disjoint i64 %i.bp, 1
  %i.br = load ptr, ptr %0, align 8, !tbaa !453, !noalias !9446 ; 2 uses
  %i.bs = xor i64 %i.bp, -1
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bs
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !198
  %i.bw = sub nsw i64 0, %.0.lcssa
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bw
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4
  store i32 %i.bv, ptr %i.by, align 4, !tbaa !198
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.122 = phi i64 [ %i.bq, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.bz = load i64, ptr %0, align 8, !tbaa !183
  %i.ca = inttoptr i64 %i.bz to ptr               ; 3 uses
  %i.cb = icmp sgt i64 %.122, %1
  br i1 %i.cb, label %.lr.ph.i, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E1_EEEvSN_SO_SO_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !187 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !367 ; 2 uses
  %i.cg = and i32 %3, 1048575
  %i.ch = zext nneg i32 %i.cg to i64              ; 2 uses
  %i.ci = lshr i64 %i.ch, 12
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !183
  %i.cl = and i64 %i.ch, 4095
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.cl
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %.0916.i = phi i64 [ %.122, %.lr.ph.i ], [ %.017.i, %bb.g ] ; 3 uses
  %.017.in.i = add nsw i64 %.0916.i, -1
  %.017.i = sdiv i64 %.017.in.i, 2                ; 4 uses
  %i.cn = sub nsw i64 0, %.017.i
  %i.co = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cn
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !198 ; 2 uses
  %i.cr = and i32 %i.cq, 1048575
  %i.cs = zext nneg i32 %i.cr to i64              ; 2 uses
  %i.ct = lshr i64 %i.cs, 12
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ct
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !183
  %i.cw = and i64 %i.cs, 4095
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !198
  %i.cz = and i32 %i.cy, 1048575
  %i.da = zext nneg i32 %i.cz to i64              ; 2 uses
  %i.db = lshr i64 %i.da, 10
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !369
  %i.de = and i64 %i.da, 1023
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i32, ptr %i.cm, align 4, !tbaa !198
  %i.di = and i32 %i.dh, 1048575
  %i.dj = zext nneg i32 %i.di to i64              ; 2 uses
  %i.dk = lshr i64 %i.dj, 10
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !369
  %i.dn = and i64 %i.dj, 1023
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load i32, ptr %i.dg, align 4, !tbaa !354
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !354
  %i.ds = icmp slt i32 %i.dq, %i.dr
  br i1 %i.ds, label %bb.g, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E1_EEEvSN_SO_SO_T1_RT2_.exit

bb.g:                                             ; preds = %bb.f
  %i.dt = sub nsw i64 0, %.0916.i
  %i.du = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.dt
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -4
  store i32 %i.cq, ptr %i.dv, align 4, !tbaa !198
  %i.dw = icmp sgt i64 %.017.i, %1
  br i1 %i.dw, label %bb.f, label %_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E1_EEEvSN_SO_SO_T1_RT2_.exit, !llvm.loop !9444

_ZSt11__push_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops14_Iter_comp_valIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E1_EEEvSN_SO_SO_T1_RT2_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.09.lcssa.i = phi i64 [ %.122, %bb.e ], [ %.0916.i, %bb.f ], [ %.017.i, %bb.g ]
  %i.dx = sub nsw i64 0, %.09.lcssa.i
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.dx
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -4
  store i32 %3, ptr %i.dz, align 4, !tbaa !198
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E1_EEEvSN_SN_SN_SN_SO_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !183
  %i.b = load i64, ptr %2, align 8, !tbaa !183
  %i.c = inttoptr i64 %i.a to ptr
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !198  ; 3 uses
  %i.f = inttoptr i64 %i.b to ptr
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !198  ; 3 uses
  %i.i = and i32 %i.e, 1048575
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = lshr i64 %i.j, 12
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !187  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !183
  %i.p = and i64 %i.j, 4095
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !198
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.v = lshr i64 %i.t, 10
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !367  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !369
  %i.z = and i64 %i.t, 1023
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = and i32 %i.h, 1048575
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = lshr i64 %i.ad, 12
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !183
  %i.ah = and i64 %i.ad, 4095
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !198
  %i.ak = and i32 %i.aj, 1048575
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = lshr i64 %i.al, 10
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !369
  %i.ap = and i64 %i.al, 1023
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ab, align 4, !tbaa !354 ; 3 uses
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !354 ; 3 uses
  %i.au = icmp slt i32 %i.as, %i.at
  %i.av = load i64, ptr %3, align 8, !tbaa !183
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !198 ; 3 uses
  %i.az = and i32 %i.ay, 1048575
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = lshr i64 %i.ba, 12
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !183
  %i.be = and i64 %i.ba, 4095
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !198
  %i.bh = and i32 %i.bg, 1048575
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = lshr i64 %i.bi, 10
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !369
  %i.bm = and i64 %i.bi, 1023
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !354 ; 4 uses
  br i1 %i.au, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.bq = icmp slt i32 %i.at, %i.bp
  br i1 %i.bq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.br = load i64, ptr %0, align 8, !tbaa !183
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.h, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.bu, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.bv = icmp slt i32 %i.as, %i.bp
  %i.bw = load i64, ptr %0, align 8, !tbaa !183
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !198 ; 2 uses
  br i1 %i.bv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.ay, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i32 %i.e, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.ca = icmp slt i32 %i.as, %i.bp
  br i1 %i.ca, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cb = load i64, ptr %0, align 8, !tbaa !183
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.e, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.ce, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cf = icmp slt i32 %i.at, %i.bp
  %i.cg = load i64, ptr %0, align 8, !tbaa !183
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -4 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !198 ; 2 uses
  br i1 %i.cf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.ay, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.h, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E1_EEEvSN_SN_SO_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8, !tbaa !183 ; 3 uses
  %i.a = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 4 uses
  %i.d = icmp eq ptr %i.c, %.sroa.0.0.copyload.i2.i
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !367  ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.010.016 = phi ptr [ %i.c, %.lr.ph ], [ %i.i, %bb.f ] ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.010.016, i64 -4 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !198  ; 3 uses
  %i.k = load i32, ptr %i.c, align 4, !tbaa !198
  %i.l = and i32 %i.j, 1048575
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = lshr i64 %i.m, 12
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183
  %i.q = and i64 %i.m, 4095
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198  ; 2 uses
  %i.t = and i32 %i.s, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 10
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !369
  %i.y = and i64 %i.u, 1023
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = and i32 %i.k, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !183
  %i.ag = and i64 %i.ac, 4095
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !198
  %i.aj = and i32 %i.ai, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !369
end_hunk_19
