Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/clientmap?download=true
inline.NumInlined: 4211
inline.NumDeleted: 1666
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN5video9SMaterialaSERKS0_:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !642 ; 3 uses
  %.not.i.1 = icmp eq ptr %i.ag, null
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !642 ; 2 uses
  %.not19.i.1 = icmp eq ptr %i.ai, null           ; 2 uses
  br i1 %.not.i.1, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit
  br i1 %.not19.i.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ag, ptr noundef nonnull align 4 dereferenceable(64) %i.ai, i64 64, i1 false), !tbaa.struct !650
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.1

bb.i:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 64) #34
  store ptr null, ptr %i.af, align 8, !tbaa !642
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.1

bb.j:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit
  br i1 %.not19.i.1, label %_ZN5video14SMaterialLayeraSERKS0_.exit.1, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #38 ; 2 uses
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !642
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.aj, ptr noundef nonnull align 4 dereferenceable(64) %i.ak, i64 64, i1 false), !tbaa.struct !650
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !642
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.1

_ZN5video14SMaterialLayeraSERKS0_.exit.1:         ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.am = load i16, ptr %i.al, align 8
  %i.an = and i16 %i.am, 15
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ap = load i16, ptr %i.ao, align 8
  %i.aq = and i16 %i.ap, -16
  %i.ar = or disjoint i16 %i.aq, %i.an            ; 2 uses
  store i16 %i.ar, ptr %i.ao, align 8
  %i.as = load i16, ptr %i.al, align 8
  %i.at = and i16 %i.as, 240
  %i.au = and i16 %i.ar, -241
  %i.av = or disjoint i16 %i.au, %i.at            ; 2 uses
  store i16 %i.av, ptr %i.ao, align 8
  %i.aw = load i16, ptr %i.al, align 8
  %i.ax = and i16 %i.aw, 3840
  %i.ay = and i16 %i.av, -3841
  %i.az = or disjoint i16 %i.ay, %i.ax
  store i16 %i.az, ptr %i.ao, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.bc = load <4 x i8>, ptr %i.ba, align 2, !tbaa !65
  store <4 x i8> %i.bc, ptr %i.bb, align 2, !tbaa !65
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !560
  store ptr %i.bf, ptr %i.bd, align 8, !tbaa !560
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !642 ; 3 uses
  %.not.i.2 = icmp eq ptr %i.bh, null
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !642 ; 2 uses
  %.not19.i.2 = icmp eq ptr %i.bj, null           ; 2 uses
  br i1 %.not.i.2, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.1
  br i1 %.not19.i.2, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.bh, ptr noundef nonnull align 4 dereferenceable(64) %i.bj, i64 64, i1 false), !tbaa.struct !650
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.2

bb.n:                                             ; preds = %bb.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef 64) #34
  store ptr null, ptr %i.bg, align 8, !tbaa !642
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.2

bb.o:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.1
  br i1 %.not19.i.2, label %_ZN5video14SMaterialLayeraSERKS0_.exit.2, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #38 ; 2 uses
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !642
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.bk, ptr noundef nonnull align 4 dereferenceable(64) %i.bl, i64 64, i1 false), !tbaa.struct !650
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !642
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.2

_ZN5video14SMaterialLayeraSERKS0_.exit.2:         ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.bn = load i16, ptr %i.bm, align 8
  %i.bo = and i16 %i.bn, 15
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.bq = load i16, ptr %i.bp, align 8
  %i.br = and i16 %i.bq, -16
  %i.bs = or disjoint i16 %i.br, %i.bo            ; 2 uses
  store i16 %i.bs, ptr %i.bp, align 8
  %i.bt = load i16, ptr %i.bm, align 8
  %i.bu = and i16 %i.bt, 240
  %i.bv = and i16 %i.bs, -241
  %i.bw = or disjoint i16 %i.bv, %i.bu            ; 2 uses
  store i16 %i.bw, ptr %i.bp, align 8
  %i.bx = load i16, ptr %i.bm, align 8
  %i.by = and i16 %i.bx, 3840
  %i.bz = and i16 %i.bw, -3841
  %i.ca = or disjoint i16 %i.bz, %i.by
  store i16 %i.ca, ptr %i.bp, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 58
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.cd = load <4 x i8>, ptr %i.cb, align 2, !tbaa !65
  store <4 x i8> %i.cd, ptr %i.cc, align 2, !tbaa !65
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !560
  store ptr %i.cg, ptr %i.ce, align 8, !tbaa !560
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !642 ; 3 uses
  %.not.i.3 = icmp eq ptr %i.ci, null
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !642 ; 2 uses
  %.not19.i.3 = icmp eq ptr %i.ck, null           ; 2 uses
  br i1 %.not.i.3, label %bb.t, label %bb.q

bb.q:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.2
  br i1 %.not19.i.3, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ci, ptr noundef nonnull align 4 dereferenceable(64) %i.ck, i64 64, i1 false), !tbaa.struct !650
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.3

bb.s:                                             ; preds = %bb.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef 64) #34
  store ptr null, ptr %i.ch, align 8, !tbaa !642
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.3

bb.t:                                             ; preds = %_ZN5video14SMaterialLayeraSERKS0_.exit.2
  br i1 %.not19.i.3, label %_ZN5video14SMaterialLayeraSERKS0_.exit.3, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cl = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #38 ; 2 uses
  %i.cm = load ptr, ptr %i.cj, align 8, !tbaa !642
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.cl, ptr noundef nonnull align 4 dereferenceable(64) %i.cm, i64 64, i1 false), !tbaa.struct !650
  store ptr %i.cl, ptr %i.ch, align 8, !tbaa !642
  br label %_ZN5video14SMaterialLayeraSERKS0_.exit.3

_ZN5video14SMaterialLayeraSERKS0_.exit.3:         ; preds = %bb.u, %bb.t, %bb.s, %bb.r
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.co = load i16, ptr %i.cn, align 8
  %i.cp = and i16 %i.co, 15
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.cr = load i16, ptr %i.cq, align 8
  %i.cs = and i16 %i.cr, -16
  %i.ct = or disjoint i16 %i.cs, %i.cp            ; 2 uses
  store i16 %i.ct, ptr %i.cq, align 8
  %i.cu = load i16, ptr %i.cn, align 8
  %i.cv = and i16 %i.cu, 240
  %i.cw = and i16 %i.ct, -241
  %i.cx = or disjoint i16 %i.cw, %i.cv            ; 2 uses
  store i16 %i.cx, ptr %i.cq, align 8
  %i.cy = load i16, ptr %i.cn, align 8
  %i.cz = and i16 %i.cy, 3840
  %i.da = and i16 %i.cx, -3841
  %i.db = or disjoint i16 %i.da, %i.cz
  store i16 %i.db, ptr %i.cq, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 82
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.de = load <4 x i8>, ptr %i.dc, align 2, !tbaa !65
  store <4 x i8> %i.de, ptr %i.dd, align 2, !tbaa !65
  br label %.split7
}

; Function Attrs: noreturn
declare void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #25

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_S1I_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #28 {
bb.a:
  %.sroa.05.i.i9.i = alloca [16 x i8], align 8    ; 4 uses
  %.sroa.06.i.i.i = alloca [16 x i8], align 8     ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr44.i25 = freeze i64 %i.c                    ; 3 uses
  %i.d = icmp sgt i64 %.fr44.i25, 384
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_S1I_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 16         ; 14 uses
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph44

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEESY_SY_SY_S1I_.exit"
  %i.i = icmp eq i64 %i.cm, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph44, !llvm.loop !1007

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr44.i28.lcssa = phi i64 [ %.fr44.i25, %.lr.ph ], [ %.fr44.i, %bb.b ]
  %storemerge26.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.j = udiv exact i64 %.fr44.i28.lcssa, 24      ; 3 uses
  %i.k = add nsw i64 %i.j, -2                     ; 2 uses
  %i.l = lshr i64 %i.k, 1                         ; 3 uses
  %i.m = add nsw i64 %i.j, -1
  %i.n = lshr i64 %i.m, 1                         ; 2 uses
  %i.o = and i64 %i.j, 1
  %i.p = icmp eq i64 %i.o, 0
  %3 = or disjoint i64 %i.k, 1                    ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %3 ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_S1I_T1_T2_.exit.i.i.i", %._crit_edge
  %.08.i.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.av, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_S1I_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.u = getelementptr inbounds [24 x i8], ptr %0, i64 %.08.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.49.0.copyload.i.i.i = load ptr, ptr %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %i.v = icmp slt i64 %.08.i.i.i, %i.n
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.037.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.08.i.i.i, %bb.c ] ; 2 uses
  %i.w = shl i64 %.037.i.i.i.i, 1                 ; 2 uses
  %i.x = add i64 %i.w, 2                          ; 2 uses
  %i.y = getelementptr inbounds [24 x i8], ptr %0, i64 %i.x
  %i.z = or disjoint i64 %i.w, 1                  ; 2 uses
  %i.aa = getelementptr inbounds [24 x i8], ptr %0, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.y, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !500
  %i.ac = getelementptr i8, ptr %i.aa, i64 16
  %.val1.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !500
  %i.ad = icmp ult ptr %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ad, i64 %i.z, i64 %i.x ; 4 uses
  %i.ae = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select.i.i.i.i ; 2 uses
  %i.af = getelementptr inbounds [24 x i8], ptr %0, i64 %.037.i.i.i.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 12, i1 false), !tbaa.struct !501
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !56
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !500
  %i.aj = icmp slt i64 %spec.select.i.i.i.i, %i.n
  br i1 %i.aj, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1008

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.08.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ak = icmp eq i64 %.0.lcssa.i.i.i.i, %i.l
  %or.cond.i.i.i = select i1 %i.p, i1 %i.ak, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 12, i1 false), !tbaa.struct !501
  %i.al = load ptr, ptr %i.s, align 8, !tbaa !56
  store ptr %i.al, ptr %i.t, align 8, !tbaa !500
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.am = icmp sgt i64 %.1.i.i.i.i, %.08.i.i.i
  br i1 %i.am, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_S1I_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0911.i.i.i.i.i ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !tbaa !500 ; 2 uses
  %i.ap = icmp ult ptr %.val.i.i.i.i.i.i, %.sroa.49.0.copyload.i.i.i
  br i1 %i.ap, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_S1I_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.010.i.i.i.i.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 12, i1 false), !tbaa.struct !501
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %.val.i.i.i.i.i.i, ptr %i.ar, align 8, !tbaa !500
  %i.as = icmp sgt i64 %.0911.i.i.i.i.i, %.08.i.i.i
  br i1 %i.as, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_S1I_T1_T2_.exit.i.i.i", !llvm.loop !1009

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_S1I_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.f ]
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.at, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.06.i.i.i, i64 12, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %.sroa.49.0.copyload.i.i.i, ptr %i.au, align 8, !tbaa !500
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i.i.i)
  %.not.i.i.i = icmp eq i64 %.08.i.i.i, 0
  %i.av = add nsw i64 %.08.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !1010

.lr.ph.i10.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_S1I_T1_T2_.exit.i.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_RS1I_.exit.i21.i"
  %.sroa.0.03.i.i = phi ptr [ %i.aw, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_RS1I_.exit.i21.i" ], [ %storemerge26.lcssa, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_S1I_S1I_T1_T2_.exit.i.i.i" ] ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05.i.i9.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.i.i9.i, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false)
  %.sroa.48.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 2 uses
  %.sroa.48.0.copyload.i.i.i = load ptr, ptr %.sroa.48.0..sroa.0.0..sroa_idx.i.i.i, align 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 12, i1 false), !tbaa.struct !501
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !56
  store ptr %i.ax, ptr %.sroa.48.0..sroa.0.0..sroa_idx.i.i.i, align 8, !tbaa !500
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ay, %i.a                     ; 3 uses
  %i.ba = sdiv exact i64 %i.az, 24                ; 3 uses
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = sdiv i64 %i.bb, 2
  %i.bd = icmp sgt i64 %i.az, 48
  br i1 %i.bd, label %.lr.ph.i.i.i25.i, label %._crit_edge.i.i.i11.i

.lr.ph.i.i.i25.i:                                 ; preds = %.lr.ph.i10.i, %.lr.ph.i.i.i25.i
  %.037.i.i.i26.i = phi i64 [ %spec.select.i.i.i29.i, %.lr.ph.i.i.i25.i ], [ 0, %.lr.ph.i10.i ] ; 2 uses
  %i.be = shl i64 %.037.i.i.i26.i, 1              ; 2 uses
  %i.bf = add i64 %i.be, 2                        ; 2 uses
  %i.bg = getelementptr inbounds [24 x i8], ptr %0, i64 %i.bf
  %i.bh = or disjoint i64 %i.be, 1                ; 2 uses
  %i.bi = getelementptr inbounds [24 x i8], ptr %0, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bg, i64 16
  %.val.i.i.i.i27.i = load ptr, ptr %i.bj, align 8, !tbaa !500
  %i.bk = getelementptr i8, ptr %i.bi, i64 16
  %.val1.i.i.i.i28.i = load ptr, ptr %i.bk, align 8, !tbaa !500
  %i.bl = icmp ult ptr %.val.i.i.i.i27.i, %.val1.i.i.i.i28.i
  %spec.select.i.i.i29.i = select i1 %i.bl, i64 %i.bh, i64 %i.bf ; 4 uses
  %i.bm = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select.i.i.i29.i ; 2 uses
  %i.bn = getelementptr inbounds [24 x i8], ptr %0, i64 %.037.i.i.i26.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 12, i1 false), !tbaa.struct !501
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !56
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !500
  %i.br = icmp slt i64 %spec.select.i.i.i29.i, %i.bc
  br i1 %i.br, label %.lr.ph.i.i.i25.i, label %._crit_edge.i.i.i11.i, !llvm.loop !1008

._crit_edge.i.i.i11.i:                            ; preds = %.lr.ph.i.i.i25.i, %.lr.ph.i10.i
  %.0.lcssa.i.i.i12.i = phi i64 [ 0, %.lr.ph.i10.i ], [ %spec.select.i.i.i29.i, %.lr.ph.i.i.i25.i ] ; 5 uses
  %i.bs = and i64 %i.ba, 1
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i11.i
  %i.bu = add nsw i64 %i.ba, -2
  %i.bv = ashr exact i64 %i.bu, 1
  %i.bw = icmp eq i64 %.0.lcssa.i.i.i12.i, %i.bv
  br i1 %i.bw, label %.thread.i.i24.i, label %bb.h

.thread.i.i24.i:                                  ; preds = %bb.g
  %i.bx = shl nuw nsw i64 %.0.lcssa.i.i.i12.i, 1
  %i.by = or disjoint i64 %i.bx, 1                ; 2 uses
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.by ; 2 uses
  %i.ca = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i12.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i64 12, i1 false), !tbaa.struct !501
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !56
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !500
  br label %.lr.ph.i.i.i.i16.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i11.i
  %.not.i.i13.i = icmp eq i64 %.0.lcssa.i.i.i12.i, 0
  br i1 %.not.i.i13.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_RS1I_.exit.i21.i", label %.lr.ph.i.i.i.i16.i.preheader

.lr.ph.i.i.i.i16.i.preheader:                     ; preds = %bb.h, %.thread.i.i24.i
  %.010.i.i.i.i17.i.ph = phi i64 [ %.0.lcssa.i.i.i12.i, %bb.h ], [ %i.by, %.thread.i.i24.i ]
  br label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %.lr.ph.i.i.i.i16.i.preheader, %bb.i
  %.010.i.i.i.i17.i = phi i64 [ %.0911.i.i910.i.i19.i, %bb.i ], [ %.010.i.i.i.i17.i.ph, %.lr.ph.i.i.i.i16.i.preheader ] ; 3 uses
  %.0911.in.i.i.i.i18.i = add nsw i64 %.010.i.i.i.i17.i, -1
  %.0911.i.i910.i.i19.i = lshr i64 %.0911.in.i.i.i.i18.i, 1 ; 3 uses
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0911.i.i910.i.i19.i ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 16
  %.val.i.i.i.i.i20.i = load ptr, ptr %i.cf, align 8, !tbaa !500 ; 2 uses
  %i.cg = icmp ult ptr %.val.i.i.i.i.i20.i, %.sroa.48.0.copyload.i.i.i
  br i1 %i.cg, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_RS1I_.exit.i21.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i16.i
  %i.ch = getelementptr inbounds [24 x i8], ptr %0, i64 %.010.i.i.i.i17.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 12, i1 false), !tbaa.struct !501
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store ptr %.val.i.i.i.i.i20.i, ptr %i.ci, align 8, !tbaa !500
  %.not11.i.i23.i = icmp eq i64 %.0911.i.i910.i.i19.i, 0
  br i1 %.not11.i.i23.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_RS1I_.exit.i21.i", label %.lr.ph.i.i.i.i16.i, !llvm.loop !1009

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_RS1I_.exit.i21.i": ; preds = %bb.i, %.lr.ph.i.i.i.i16.i, %bb.h
  %.0.lcssa.i.i.i.i22.i = phi i64 [ 0, %bb.h ], [ %.010.i.i.i.i17.i, %.lr.ph.i.i.i.i16.i ], [ 0, %bb.i ]
  %i.cj = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i22.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cj, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.05.i.i9.i, i64 12, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store ptr %.sroa.48.0.copyload.i.i.i, ptr %i.ck, align 8, !tbaa !500
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05.i.i9.i)
  %i.cl = icmp sgt i64 %i.az, 24
  br i1 %i.cl, label %.lr.ph.i10.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_S1I_.exit", !llvm.loop !1011

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2643 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02742 = phi i64 [ %i.cm, %bb.b ], [ %2, %.lr.ph ]
  %.fr44.i2841 = phi i64 [ %.fr44.i, %bb.b ], [ %.fr44.i25, %.lr.ph ]
  %i.cm = add nsw i64 %.02742, -1                 ; 3 uses
  %i.cn = udiv i64 %.fr44.i2841, 48
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.cn ; 5 uses
  %i.cp = getelementptr inbounds i8, ptr %storemerge2643, i64 -24 ; 4 uses
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !500 ; 5 uses
  %i.cq = getelementptr i8, ptr %i.co, i64 16     ; 3 uses
  %.val1.i.i.i = load ptr, ptr %i.cq, align 8, !tbaa !500 ; 5 uses
  %i.cr = icmp ult ptr %.val.i.i.i, %.val1.i.i.i
  %i.cs = getelementptr i8, ptr %storemerge2643, i64 -8 ; 5 uses
  %.val1.i27.i.i = load ptr, ptr %i.cs, align 8, !tbaa !500 ; 4 uses
  br i1 %i.cr, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph44
  %i.ct = icmp ult ptr %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.ct, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload = load <3 x float>, ptr %0, align 8, !tbaa !82
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 12, i1 false), !tbaa.struct !501
  store <3 x float> %.sroa.0.0.copyload, ptr %i.co, align 8, !tbaa !82
  %i.cu = load ptr, ptr %i.g, align 8, !tbaa !56
  store ptr %.val1.i.i.i, ptr %i.g, align 8, !tbaa !56
  store ptr %i.cu, ptr %i.cq, align 8, !tbaa !56
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_SY_S1I_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.cv = icmp ult ptr %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.cv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.050.0.copyload = load <3 x float>, ptr %0, align 8, !tbaa !82
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i64 12, i1 false), !tbaa.struct !501
  store <3 x float> %.sroa.050.0.copyload, ptr %i.cp, align 8, !tbaa !82
  %i.cw = load ptr, ptr %i.g, align 8, !tbaa !56
  %i.cx = load ptr, ptr %i.cs, align 8, !tbaa !56
  store ptr %i.cx, ptr %i.g, align 8, !tbaa !56
  store ptr %i.cw, ptr %i.cs, align 8, !tbaa !56
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_SY_S1I_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  %.sroa.052.0.copyload = load <3 x float>, ptr %0, align 8, !tbaa !82
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 12, i1 false), !tbaa.struct !501
  store <3 x float> %.sroa.052.0.copyload, ptr %i.e, align 8, !tbaa !82
  %i.cy = load ptr, ptr %i.g, align 8, !tbaa !56
  store ptr %.val.i.i.i, ptr %i.g, align 8, !tbaa !56
  store ptr %i.cy, ptr %i.f, align 8, !tbaa !56
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_SY_S1I_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph44
  %i.cz = icmp ult ptr %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.cz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.054.0.copyload = load <3 x float>, ptr %0, align 8, !tbaa !82
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 12, i1 false), !tbaa.struct !501
  store <3 x float> %.sroa.054.0.copyload, ptr %i.e, align 8, !tbaa !82
  %i.da = load ptr, ptr %i.g, align 8, !tbaa !56
  store ptr %.val.i.i.i, ptr %i.g, align 8, !tbaa !56
  store ptr %i.da, ptr %i.f, align 8, !tbaa !56
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap9renderMapEPN5video12IVideoDriverEiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaISO_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISU_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS15_ESt8equal_toIS15_ESaIS2_IKS15_S16_EEEEUlRKSY_RKT0_E_EEEvSY_SY_SY_SY_S1I_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.db = icmp ult ptr %.val1.i.i.i, %.val1.i27.i.i
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_:bb.a

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader, %bb.r
  %.sroa.010.0.i.i = phi ptr [ %i.bn, %bb.r ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.r ], [ %storemerge1742, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i.preheader ]
  %i.bk = load i32, ptr %0, align 4, !tbaa !247   ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i
  %.sroa.010.1.i.i = phi ptr [ %.sroa.010.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i ], [ %i.bn, %bb.p ] ; 8 uses
  %i.bl = load i32, ptr %.sroa.010.1.i.i, align 4, !tbaa !247 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, %i.bk
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i, i64 4 ; 2 uses
  br i1 %i.bm, label %bb.p, label %.preheader.i.i, !llvm.loop !1033

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.p ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -4 ; 5 uses
  %i.bo = load i32, ptr %.sroa.0.1.i.i, align 4, !tbaa !247 ; 2 uses
  %i.bp = icmp slt i32 %i.bk, %i.bo
  br i1 %i.bp, label %.preheader.i.i, label %bb.q, !llvm.loop !1034

bb.q:                                             ; preds = %.preheader.i.i
  %i.bq = icmp ult ptr %.sroa.010.1.i.i, %.sroa.0.1.i.i
  br i1 %i.bq, label %bb.r, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit

bb.r:                                             ; preds = %bb.q
  store i32 %i.bo, ptr %.sroa.010.1.i.i, align 4, !tbaa !247
  store i32 %i.bl, ptr %.sroa.0.1.i.i, align 4, !tbaa !247
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_.exit.i, !llvm.loop !1035

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr nonnull %.sroa.010.1.i.i, ptr %storemerge1742, i64 noundef %i.au)
  %i.br = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.bs = sub i64 %i.br, %i.a
  %i.bt = ashr exact i64 %i.bs, 2                 ; 2 uses
  %i.bu = icmp sgt i64 %i.bt, 16
  br i1 %i.bu, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit, !llvm.loop !1031

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %0, ptr %1) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.g

.lr.ph.i:                                         ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %.sroa.0.018.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.018.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn17.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.018.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.018.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.018.i.idx ; 4 uses
  %i.e = load i32, ptr %.sroa.0.018.i.ptr, align 4, !tbaa !247 ; 4 uses
  %i.f = load i32, ptr %0, align 4, !tbaa !247    ; 2 uses
  %i.g = icmp slt i32 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %.sroa.0.018.i.idx, 4
  br i1 %i.h, label %bb.d, label %bb.e, !prof !669

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.018.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn17.i, i64 4
  store i32 %i.f, ptr %i.i, align 4, !tbaa !247
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.j = load i32, ptr %.pn17.i, align 4, !tbaa !247 ; 2 uses
  %i.k = icmp slt i32 %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.l = phi i32 [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.f ]
  %.sroa.0.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn17.i, %bb.f ] ; 3 uses
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.0.018.i.ptr, %bb.f ]
  store i32 %i.l, ptr %.sroa.04.08.i.i, align 4, !tbaa !247
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -4 ; 2 uses
  %i.m = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !247 ; 2 uses
  %i.n = icmp slt i32 %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !1036

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.018.i.ptr, %bb.f ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  store i32 %i.e, ptr %.sink.i, align 4, !tbaa !247
  %.sroa.0.018.i.add = add nuw nsw i64 %.sroa.0.018.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.018.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %bb.b, !llvm.loop !1037

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not4.i = icmp eq ptr %i.o, %1
  br i1 %.not4.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i
  %.sroa.0.05.i = phi ptr [ %i.v, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i ], [ %i.o, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit ] ; 5 uses
  %i.p = load i32, ptr %.sroa.0.05.i, align 4, !tbaa !247 ; 3 uses
  %.sroa.0.07.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i, i64 -4 ; 2 uses
  %i.q = load i32, ptr %.sroa.0.07.i.i, align 4, !tbaa !247 ; 2 uses
  %i.r = icmp slt i32 %i.p, %i.q
  br i1 %i.r, label %.lr.ph.i.i8, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i8:                                      ; preds = %.lr.ph.i6, %.lr.ph.i.i8
  %i.s = phi i32 [ %i.t, %.lr.ph.i.i8 ], [ %i.q, %.lr.ph.i6 ]
  %.sroa.0.09.i.i9 = phi ptr [ %.sroa.0.0.i.i11, %.lr.ph.i.i8 ], [ %.sroa.0.07.i.i, %.lr.ph.i6 ] ; 3 uses
  %.sroa.04.08.i.i10 = phi ptr [ %.sroa.0.09.i.i9, %.lr.ph.i.i8 ], [ %.sroa.0.05.i, %.lr.ph.i6 ]
  store i32 %i.s, ptr %.sroa.04.08.i.i10, align 4, !tbaa !247
  %.sroa.0.0.i.i11 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i9, i64 -4 ; 2 uses
  %i.t = load i32, ptr %.sroa.0.0.i.i11, align 4, !tbaa !247 ; 2 uses
  %i.u = icmp slt i32 %i.p, %i.t
  br i1 %i.u, label %.lr.ph.i.i8, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !1036

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i8, %.lr.ph.i6
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.0.05.i, %.lr.ph.i6 ], [ %.sroa.0.09.i.i9, %.lr.ph.i.i8 ]
  store i32 %i.p, ptr %.sroa.04.0.lcssa.i.i, align 4, !tbaa !247
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i, i64 4 ; 2 uses
  %.not.i7 = icmp eq ptr %i.v, %1
  br i1 %.not.i7, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i6, !llvm.loop !1038

bb.g:                                             ; preds = %bb.a
  %i.w = icmp eq ptr %0, %1
  %.sroa.0.015.i13 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not16.i14 = icmp eq ptr %.sroa.0.015.i13, %1
  %or.cond = select i1 %i.w, i1 true, i1 %.not16.i14
  br i1 %or.cond, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %bb.g, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18
  %.sroa.0.018.i16 = phi ptr [ %.sroa.0.0.i20, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18 ], [ %.sroa.0.015.i13, %bb.g ] ; 6 uses
  %.pn17.i17 = phi ptr [ %.sroa.0.018.i16, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18 ], [ %0, %bb.g ] ; 4 uses
  %i.x = load i32, ptr %.sroa.0.018.i16, align 4, !tbaa !247 ; 4 uses
  %i.y = load i32, ptr %0, align 4, !tbaa !247    ; 2 uses
  %i.z = icmp slt i32 %i.x, %i.y
  br i1 %i.z, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph.i15
  %i.aa = ptrtoint ptr %.sroa.0.018.i16 to i64
  %i.ab = sub i64 %i.aa, %i.b                     ; 3 uses
  %i.ac = ashr exact i64 %i.ab, 2                 ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 1
  br i1 %i.ad, label %bb.i, label %bb.j, !prof !669

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn17.i17, i64 8
  %i.af = sub nsw i64 0, %i.ac
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.af
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ag, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.ab, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18

bb.j:                                             ; preds = %bb.h
  %i.ah = icmp eq i64 %i.ab, 4
  br i1 %i.ah, label %bb.k, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %.pn17.i17, i64 4
  store i32 %i.y, ptr %i.ai, align 4, !tbaa !247
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18

bb.l:                                             ; preds = %.lr.ph.i15
  %i.aj = load i32, ptr %.pn17.i17, align 4, !tbaa !247 ; 2 uses
  %i.ak = icmp slt i32 %i.x, %i.aj
  br i1 %i.ak, label %.lr.ph.i.i22, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18

.lr.ph.i.i22:                                     ; preds = %bb.l, %.lr.ph.i.i22
  %i.al = phi i32 [ %i.am, %.lr.ph.i.i22 ], [ %i.aj, %bb.l ]
  %.sroa.0.09.i.i23 = phi ptr [ %.sroa.0.0.i.i25, %.lr.ph.i.i22 ], [ %.pn17.i17, %bb.l ] ; 3 uses
  %.sroa.04.08.i.i24 = phi ptr [ %.sroa.0.09.i.i23, %.lr.ph.i.i22 ], [ %.sroa.0.018.i16, %bb.l ]
  store i32 %i.al, ptr %.sroa.04.08.i.i24, align 4, !tbaa !247
  %.sroa.0.0.i.i25 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i23, i64 -4 ; 2 uses
  %i.am = load i32, ptr %.sroa.0.0.i.i25, align 4, !tbaa !247 ; 2 uses
  %i.an = icmp slt i32 %i.x, %i.am
  br i1 %i.an, label %.lr.ph.i.i22, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18, !llvm.loop !1036

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18: ; preds = %.lr.ph.i.i22, %bb.l, %bb.k, %bb.j, %bb.i
  %.sink.i19 = phi ptr [ %0, %bb.k ], [ %0, %bb.i ], [ %0, %bb.j ], [ %.sroa.0.018.i16, %bb.l ], [ %.sroa.0.09.i.i23, %.lr.ph.i.i22 ]
  store i32 %i.x, ptr %.sink.i19, align 4, !tbaa !247
  %.sroa.0.0.i20 = getelementptr inbounds nuw i8, ptr %.sroa.0.018.i16, i64 4 ; 2 uses
  %.not.i21 = icmp eq ptr %.sroa.0.0.i20, %1
  br i1 %.not.i21, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit, label %.lr.ph.i15, !llvm.loop !1037

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i18, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %bb.g, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %.fr = freeze i64 %i.c                          ; 2 uses
  %i.d = ashr exact i64 %.fr, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1                         ; 2 uses
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 4 uses
  %i.j = and i64 %.fr, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  br i1 %i.k, label %.split.preheader, label %.split.us

.split.preheader:                                 ; preds = %bb.b
  %3 = or disjoint i64 %i.f, 1                    ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %.split

.split.us:                                        ; preds = %bb.b, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us
  %.08.us = phi i64 [ %i.ak, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us ], [ %i.g, %bb.b ] ; 8 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %.08.us
  %i.p = load i32, ptr %i.o, align 4, !tbaa !247  ; 2 uses
  %i.q = icmp slt i64 %.08.us, %i.i
  br i1 %i.q, label %.lr.ph.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.us:                                      ; preds = %.split.us, %.lr.ph.i.us
  %.035.i.us = phi i64 [ %spec.select.i.us, %.lr.ph.i.us ], [ %.08.us, %.split.us ] ; 2 uses
  %i.r = shl i64 %.035.i.us, 1                    ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.t, align 4, !tbaa !247
  %i.x = load i32, ptr %i.v, align 4, !tbaa !247
  %i.y = icmp slt i32 %i.w, %i.x
  %spec.select.i.us = select i1 %i.y, i64 %i.u, i64 %i.s ; 6 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.us
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !247
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %.035.i.us
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !247
  %i.ac = icmp slt i64 %spec.select.i.us, %i.i
  br i1 %i.ac, label %.lr.ph.i.us, label %._crit_edge.i.us, !llvm.loop !23

._crit_edge.i.us:                                 ; preds = %.lr.ph.i.us
  %i.ad = icmp sgt i64 %spec.select.i.us, %.08.us
  br i1 %i.ad, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

.lr.ph.i.i.us:                                    ; preds = %._crit_edge.i.us, %bb.c
  %.019.i.i.us = phi i64 [ %.0920.i.i.us, %bb.c ], [ %spec.select.i.us, %._crit_edge.i.us ] ; 3 uses
  %.0920.in.i.i.us = add nsw i64 %.019.i.i.us, -1
  %.0920.i.i.us = sdiv i64 %.0920.in.i.i.us, 2    ; 4 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i.us
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !247 ; 2 uses
  %i.ag = icmp slt i32 %i.af, %i.p
  br i1 %i.ag, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us

bb.c:                                             ; preds = %.lr.ph.i.i.us
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i.us
  store i32 %i.af, ptr %i.ah, align 4, !tbaa !247
  %i.ai = icmp sgt i64 %.0920.i.i.us, %.08.us
  br i1 %i.ai, label %.lr.ph.i.i.us, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, !llvm.loop !24

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us: ; preds = %.lr.ph.i.i.us, %bb.c, %.split.us, %._crit_edge.i.us
  %.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %._crit_edge.i.us ], [ %.08.us, %.split.us ], [ %.019.i.i.us, %.lr.ph.i.i.us ], [ %.0920.i.i.us, %bb.c ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i.us
  store i32 %i.p, ptr %i.aj, align 4, !tbaa !247
  %.not.us = icmp eq i64 %.08.us, 0
  %i.ak = add nsw i64 %.08.us, -1
  br i1 %.not.us, label %.loopexit, label %.split.us, !llvm.loop !1039

.split:                                           ; preds = %.split.preheader, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit
  %.08 = phi i64 [ %i.bj, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit ], [ %i.g, %.split.preheader ] ; 8 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.am = load i32, ptr %i.al, align 4, !tbaa !247 ; 2 uses
  %i.an = icmp slt i64 %.08, %i.i
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split, %.lr.ph.i
  %.035.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.08, %.split ] ; 2 uses
  %i.ao = shl i64 %.035.i, 1                      ; 2 uses
  %i.ap = add i64 %i.ao, 2                        ; 2 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ap
  %i.ar = or disjoint i64 %i.ao, 1                ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ar
  %i.at = load i32, ptr %i.aq, align 4, !tbaa !247
  %i.au = load i32, ptr %i.as, align 4, !tbaa !247
  %i.av = icmp slt i32 %i.at, %i.au
  %spec.select.i = select i1 %i.av, i64 %i.ar, i64 %i.ap ; 4 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !247
  %i.ay = getelementptr inbounds [4 x i8], ptr %0, i64 %.035.i
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !247
  %i.az = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.az, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !23

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.08, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ba = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.ba, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bb = load i32, ptr %i.m, align 4, !tbaa !247
  store i32 %i.bb, ptr %i.n, align 4, !tbaa !247
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bc = icmp sgt i64 %.1.i, %.08
  br i1 %i.bc, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !247 ; 2 uses
  %i.bf = icmp slt i32 %i.be, %i.am
  br i1 %i.bf, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i
  store i32 %i.be, ptr %i.bg, align 4, !tbaa !247
  %i.bh = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.bh, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, !llvm.loop !24

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.am, ptr %i.bi, align 4, !tbaa !247
  %.not = icmp eq i64 %.08, 0
  %i.bj = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !1039

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNS1_9SMaterialEbEEiiiE3$_0EjRKSt6vectorISt4pairIN4core8vector3dIsEEPN5scene11IMeshBufferEESaISI_EERSA_IN12_GLOBAL__N_114DrawDescriptorESaISO_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashISZ_ESt8equal_toISZ_ESaISB_IKSZ_S10_EEEENKUlvE_clEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #21 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1045, !nonnull !175, !align !191 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !646  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1046, !nonnull !175, !align !191 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !443  ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store <2 x float> zeroinitializer, ptr %i.f, align 8, !tbaa !82
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store float 0.000000e+00, ptr %.sroa.23.0..sroa_idx.i.i, align 8, !tbaa !82
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4
  %i.k = and i8 %i.j, -4
  %i.l = or disjoint i8 %i.k, 1
  store i8 %i.l, ptr %i.i, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.b, ptr %i.m, align 8, !tbaa !65
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !443
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.o, ptr %i.e, align 8, !tbaa !443
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEERPN5scene11CMeshBufferIN5video9S3DVertexEEEEEERS1_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %.val.i.i = load ptr, ptr %i.d, align 8, !tbaa !48 ; 5 uses
  %i.p = ptrtoint ptr %i.f to i64
  %i.q = ptrtoint ptr %.val.i.i to i64            ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #36
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.t = sdiv exact i64 %i.r, 24                  ; 3 uses
  %i.u = icmp eq ptr %i.f, %.val.i.i              ; 2 uses
  %.sroa.speculated.i.i.i = select i1 %i.u, i64 1, i64 %i.t
  %i.v = add nsw i64 %.sroa.speculated.i.i.i, %i.t ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.t
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 384307168202282325)
  %i.y = select i1 %i.w, i64 384307168202282325, i64 %i.x ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.z = mul nuw nsw i64 %i.y, 24
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #38 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.r ; 4 uses
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !646
  store <2 x float> zeroinitializer, ptr %i.ab, align 8, !tbaa !82
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store float 0.000000e+00, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !tbaa !82
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i8 1, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !65
  br i1 %i.u, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %i.aa, %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.092.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i ], [ %.val.i.i, %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.03.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.092.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !491, !alias.scope !1047
  %i.af = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.af, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !6

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aa, %_ZNKSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ag, %.lr.ph.i.i.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24
  %.not.i38.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i38.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJN4core8vector3dIfEERPN5scene11CMeshBufferIN5video9S3DVertexEEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i
  %i.ai = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.ak) #34
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJN4core8vector3dIfEERPN5scene11CMeshBufferIN5video9S3DVertexEEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJN4core8vector3dIfEERPN5scene11CMeshBufferIN5video9S3DVertexEEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit37.i.i
  store ptr %i.aa, ptr %i.d, align 8, !tbaa !48
  store ptr %i.ah, ptr %i.e, align 8, !tbaa !443
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.al, ptr %i.g, align 8, !tbaa !49
  br label %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEERPN5scene11CMeshBufferIN5video9S3DVertexEEEEEERS1_DpOT_.exit

_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEERPN5scene11CMeshBufferIN5video9S3DVertexEEEEEERS1_DpOT_.exit: ; preds = %bb.c, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE17_M_realloc_insertIJN4core8vector3dIfEERPN5scene11CMeshBufferIN5video9S3DVertexEEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1048, !nonnull !175, !align !487
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !247
  %i.ap = load ptr, ptr %0, align 8, !tbaa !1045, !nonnull !175, !align !191
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !646 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !58
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call noundef ptr %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.aq), !inline_history !8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !58
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef i32 %i.ax(ptr noundef nonnull align 8 dereferenceable(28) %i.au), !inline_history !8
  %i.az = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.ao, i32 %i.ay)
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !1048, !nonnull !175, !align !487
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !247
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1049, !nonnull !175, !align !487
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !247
  %i.be = load ptr, ptr %0, align 8, !tbaa !1045, !nonnull !175, !align !191
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !646 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !58
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef ptr %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.bf), !inline_history !21 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !58
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call noundef i32 %i.bm(ptr noundef nonnull align 8 dereferenceable(28) %i.bj), !inline_history !21
  %i.bo = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.bd, i32 %i.bn)
  %i.bp = load ptr, ptr %i.bb, align 8, !tbaa !1049, !nonnull !175, !align !487
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !247
  %i.bq = load ptr, ptr %0, align 8, !tbaa !1045, !nonnull !175, !align !191
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !646 ; 4 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !58
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = tail call noundef ptr %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %i.br), !inline_history !1043
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i32 3, ptr %i.bw, align 8, !tbaa !519
  %i.bx = load ptr, ptr %i.br, align 8, !tbaa !58
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = tail call noundef ptr %i.bz(ptr noundef nonnull align 8 dereferenceable(8) %i.br), !inline_history !1043
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i32 3, ptr %i.cb, align 8, !tbaa !519
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1050, !nonnull !175, !align !191
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !645 ; 2 uses
  %i.cf = load ptr, ptr %0, align 8, !tbaa !1045, !nonnull !175, !align !191
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !646
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 136
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !532
  %i.cj = load ptr, ptr %i.ce, align 8, !tbaa !58
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 208
  %i.cl = load ptr, ptr %i.ck, align 8
  tail call void %i.cl(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef %i.ci)
  %i.cm = load ptr, ptr %i.cc, align 8, !tbaa !1050, !nonnull !175, !align !191
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !645 ; 2 uses
  %i.co = load ptr, ptr %0, align 8, !tbaa !1045, !nonnull !175, !align !191
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !646
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 144
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !533
  %i.cs = load ptr, ptr %i.cn, align 8, !tbaa !58
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 208
  %i.cu = load ptr, ptr %i.ct, align 8
  tail call void %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef %i.cr)
  %.pre = load ptr, ptr %0, align 8, !tbaa !1045
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEERPN5scene11CMeshBufferIN5video9S3DVertexEEEEEERS1_DpOT_.exit, %bb.a
  %i.cv = phi ptr [ %.pre, %_ZNSt6vectorIN12_GLOBAL__N_114DrawDescriptorESaIS1_EE12emplace_backIJN4core8vector3dIfEERPN5scene11CMeshBufferIN5video9S3DVertexEEEEEERS1_DpOT_.exit ], [ %i.a, %bb.a ]
  store ptr null, ptr %i.cv, align 8, !tbaa !646
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S1N_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #28 {
bb.a:
  %.sroa.05.i.i9.i = alloca [16 x i8], align 8    ; 4 uses
  %.sroa.06.i.i.i = alloca [16 x i8], align 8     ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr44.i25 = freeze i64 %i.c                    ; 3 uses
  %i.d = icmp sgt i64 %.fr44.i25, 384
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_S1N_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 16         ; 14 uses
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph44

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEES13_S13_S13_S1N_.exit"
  %i.i = icmp eq i64 %i.cm, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph44, !llvm.loop !1051

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr44.i28.lcssa = phi i64 [ %.fr44.i25, %.lr.ph ], [ %.fr44.i, %bb.b ]
  %storemerge26.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.j = udiv exact i64 %.fr44.i28.lcssa, 24      ; 3 uses
  %i.k = add nsw i64 %i.j, -2                     ; 2 uses
  %i.l = lshr i64 %i.k, 1                         ; 3 uses
  %i.m = add nsw i64 %i.j, -1
  %i.n = lshr i64 %i.m, 1                         ; 2 uses
  %i.o = and i64 %i.j, 1
  %i.p = icmp eq i64 %i.o, 0
  %3 = or disjoint i64 %i.k, 1                    ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %3 ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_S1N_T1_T2_.exit.i.i.i", %._crit_edge
  %.08.i.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.av, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_S1N_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.u = getelementptr inbounds [24 x i8], ptr %0, i64 %.08.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.06.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.49.0.copyload.i.i.i = load ptr, ptr %.sroa.49.0..sroa.0.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %i.v = icmp slt i64 %.08.i.i.i, %i.n
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.037.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.08.i.i.i, %bb.c ] ; 2 uses
  %i.w = shl i64 %.037.i.i.i.i, 1                 ; 2 uses
  %i.x = add i64 %i.w, 2                          ; 2 uses
  %i.y = getelementptr inbounds [24 x i8], ptr %0, i64 %i.x
  %i.z = or disjoint i64 %i.w, 1                  ; 2 uses
  %i.aa = getelementptr inbounds [24 x i8], ptr %0, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.y, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !500
  %i.ac = getelementptr i8, ptr %i.aa, i64 16
  %.val1.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !500
  %i.ad = icmp ult ptr %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.ad, i64 %i.z, i64 %i.x ; 4 uses
  %i.ae = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select.i.i.i.i ; 2 uses
  %i.af = getelementptr inbounds [24 x i8], ptr %0, i64 %.037.i.i.i.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 12, i1 false), !tbaa.struct !501
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !56
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !500
  %i.aj = icmp slt i64 %spec.select.i.i.i.i, %i.n
  br i1 %i.aj, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1052

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.08.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ak = icmp eq i64 %.0.lcssa.i.i.i.i, %i.l
  %or.cond.i.i.i = select i1 %i.p, i1 %i.ak, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 12, i1 false), !tbaa.struct !501
  %i.al = load ptr, ptr %i.s, align 8, !tbaa !56
  store ptr %i.al, ptr %i.t, align 8, !tbaa !500
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.am = icmp sgt i64 %.1.i.i.i.i, %.08.i.i.i
  br i1 %i.am, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_S1N_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.010.i.i.i.i.i = phi i64 [ %.0911.i.i.i.i.i, %bb.f ], [ %.1.i.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0911.i.i.i.i.i ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !tbaa !500 ; 2 uses
  %i.ap = icmp ult ptr %.val.i.i.i.i.i.i, %.sroa.49.0.copyload.i.i.i
  br i1 %i.ap, label %bb.f, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_S1N_T1_T2_.exit.i.i.i"

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.010.i.i.i.i.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 12, i1 false), !tbaa.struct !501
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %.val.i.i.i.i.i.i, ptr %i.ar, align 8, !tbaa !500
  %i.as = icmp sgt i64 %.0911.i.i.i.i.i, %.08.i.i.i
  br i1 %i.as, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_S1N_T1_T2_.exit.i.i.i", !llvm.loop !1053

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_S1N_T1_T2_.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.e ], [ %.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.f ]
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.at, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.06.i.i.i, i64 12, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %.sroa.49.0.copyload.i.i.i, ptr %i.au, align 8, !tbaa !500
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.06.i.i.i)
  %.not.i.i.i = icmp eq i64 %.08.i.i.i, 0
  %i.av = add nsw i64 %.08.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !1054

.lr.ph.i10.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_S1N_T1_T2_.exit.i.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_RS1N_.exit.i21.i"
  %.sroa.0.03.i.i = phi ptr [ %i.aw, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_RS1N_.exit.i21.i" ], [ %storemerge26.lcssa, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S1N_S1N_T1_T2_.exit.i.i.i" ] ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05.i.i9.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.i.i9.i, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false)
  %.sroa.48.0..sroa.0.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 2 uses
  %.sroa.48.0.copyload.i.i.i = load ptr, ptr %.sroa.48.0..sroa.0.0..sroa_idx.i.i.i, align 8 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 12, i1 false), !tbaa.struct !501
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !56
  store ptr %i.ax, ptr %.sroa.48.0..sroa.0.0..sroa_idx.i.i.i, align 8, !tbaa !500
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ay, %i.a                     ; 3 uses
  %i.ba = sdiv exact i64 %i.az, 24                ; 3 uses
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = sdiv i64 %i.bb, 2
  %i.bd = icmp sgt i64 %i.az, 48
  br i1 %i.bd, label %.lr.ph.i.i.i25.i, label %._crit_edge.i.i.i11.i

.lr.ph.i.i.i25.i:                                 ; preds = %.lr.ph.i10.i, %.lr.ph.i.i.i25.i
  %.037.i.i.i26.i = phi i64 [ %spec.select.i.i.i29.i, %.lr.ph.i.i.i25.i ], [ 0, %.lr.ph.i10.i ] ; 2 uses
  %i.be = shl i64 %.037.i.i.i26.i, 1              ; 2 uses
  %i.bf = add i64 %i.be, 2                        ; 2 uses
  %i.bg = getelementptr inbounds [24 x i8], ptr %0, i64 %i.bf
  %i.bh = or disjoint i64 %i.be, 1                ; 2 uses
  %i.bi = getelementptr inbounds [24 x i8], ptr %0, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bg, i64 16
  %.val.i.i.i.i27.i = load ptr, ptr %i.bj, align 8, !tbaa !500
  %i.bk = getelementptr i8, ptr %i.bi, i64 16
  %.val1.i.i.i.i28.i = load ptr, ptr %i.bk, align 8, !tbaa !500
  %i.bl = icmp ult ptr %.val.i.i.i.i27.i, %.val1.i.i.i.i28.i
  %spec.select.i.i.i29.i = select i1 %i.bl, i64 %i.bh, i64 %i.bf ; 4 uses
  %i.bm = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select.i.i.i29.i ; 2 uses
  %i.bn = getelementptr inbounds [24 x i8], ptr %0, i64 %.037.i.i.i26.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 12, i1 false), !tbaa.struct !501
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !56
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !500
  %i.br = icmp slt i64 %spec.select.i.i.i29.i, %i.bc
  br i1 %i.br, label %.lr.ph.i.i.i25.i, label %._crit_edge.i.i.i11.i, !llvm.loop !1052

._crit_edge.i.i.i11.i:                            ; preds = %.lr.ph.i.i.i25.i, %.lr.ph.i10.i
  %.0.lcssa.i.i.i12.i = phi i64 [ 0, %.lr.ph.i10.i ], [ %spec.select.i.i.i29.i, %.lr.ph.i.i.i25.i ] ; 5 uses
  %i.bs = and i64 %i.ba, 1
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i11.i
  %i.bu = add nsw i64 %i.ba, -2
  %i.bv = ashr exact i64 %i.bu, 1
  %i.bw = icmp eq i64 %.0.lcssa.i.i.i12.i, %i.bv
  br i1 %i.bw, label %.thread.i.i24.i, label %bb.h

.thread.i.i24.i:                                  ; preds = %bb.g
  %i.bx = shl nuw nsw i64 %.0.lcssa.i.i.i12.i, 1
  %i.by = or disjoint i64 %i.bx, 1                ; 2 uses
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.by ; 2 uses
  %i.ca = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i12.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i64 12, i1 false), !tbaa.struct !501
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !56
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !500
  br label %.lr.ph.i.i.i.i16.i.preheader

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i11.i
  %.not.i.i13.i = icmp eq i64 %.0.lcssa.i.i.i12.i, 0
  br i1 %.not.i.i13.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_RS1N_.exit.i21.i", label %.lr.ph.i.i.i.i16.i.preheader

.lr.ph.i.i.i.i16.i.preheader:                     ; preds = %bb.h, %.thread.i.i24.i
  %.010.i.i.i.i17.i.ph = phi i64 [ %.0.lcssa.i.i.i12.i, %bb.h ], [ %i.by, %.thread.i.i24.i ]
  br label %.lr.ph.i.i.i.i16.i

.lr.ph.i.i.i.i16.i:                               ; preds = %.lr.ph.i.i.i.i16.i.preheader, %bb.i
  %.010.i.i.i.i17.i = phi i64 [ %.0911.i.i910.i.i19.i, %bb.i ], [ %.010.i.i.i.i17.i.ph, %.lr.ph.i.i.i.i16.i.preheader ] ; 3 uses
  %.0911.in.i.i.i.i18.i = add nsw i64 %.010.i.i.i.i17.i, -1
  %.0911.i.i910.i.i19.i = lshr i64 %.0911.in.i.i.i.i18.i, 1 ; 3 uses
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0911.i.i910.i.i19.i ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 16
  %.val.i.i.i.i.i20.i = load ptr, ptr %i.cf, align 8, !tbaa !500 ; 2 uses
  %i.cg = icmp ult ptr %.val.i.i.i.i.i20.i, %.sroa.48.0.copyload.i.i.i
  br i1 %i.cg, label %bb.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_RS1N_.exit.i21.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i16.i
  %i.ch = getelementptr inbounds [24 x i8], ptr %0, i64 %.010.i.i.i.i17.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 12, i1 false), !tbaa.struct !501
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store ptr %.val.i.i.i.i.i20.i, ptr %i.ci, align 8, !tbaa !500
  %.not11.i.i23.i = icmp eq i64 %.0911.i.i910.i.i19.i, 0
  br i1 %.not11.i.i23.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_RS1N_.exit.i21.i", label %.lr.ph.i.i.i.i16.i, !llvm.loop !1053

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_RS1N_.exit.i21.i": ; preds = %bb.i, %.lr.ph.i.i.i.i16.i, %bb.h
  %.0.lcssa.i.i.i.i22.i = phi i64 [ 0, %bb.h ], [ %.010.i.i.i.i17.i, %.lr.ph.i.i.i.i16.i ], [ 0, %bb.i ]
  %i.cj = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i22.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cj, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.05.i.i9.i, i64 12, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store ptr %.sroa.48.0.copyload.i.i.i, ptr %i.ck, align 8, !tbaa !500
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05.i.i9.i)
  %i.cl = icmp sgt i64 %i.az, 24
  br i1 %i.cl, label %.lr.ph.i10.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_S1N_.exit", !llvm.loop !1055

.lr.ph44:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2643 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 4 uses
  %.02742 = phi i64 [ %i.cm, %bb.b ], [ %2, %.lr.ph ]
  %.fr44.i2841 = phi i64 [ %.fr44.i, %bb.b ], [ %.fr44.i25, %.lr.ph ]
  %i.cm = add nsw i64 %.02742, -1                 ; 3 uses
  %i.cn = udiv i64 %.fr44.i2841, 48
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.cn ; 5 uses
  %i.cp = getelementptr inbounds i8, ptr %storemerge2643, i64 -24 ; 4 uses
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !500 ; 5 uses
  %i.cq = getelementptr i8, ptr %i.co, i64 16     ; 3 uses
  %.val1.i.i.i = load ptr, ptr %i.cq, align 8, !tbaa !500 ; 5 uses
  %i.cr = icmp ult ptr %.val.i.i.i, %.val1.i.i.i
  %i.cs = getelementptr i8, ptr %storemerge2643, i64 -8 ; 5 uses
  %.val1.i27.i.i = load ptr, ptr %i.cs, align 8, !tbaa !500 ; 4 uses
  br i1 %i.cr, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph44
  %i.ct = icmp ult ptr %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.ct, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.0.0.copyload = load <3 x float>, ptr %0, align 8, !tbaa !82
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 12, i1 false), !tbaa.struct !501
  store <3 x float> %.sroa.0.0.copyload, ptr %i.co, align 8, !tbaa !82
  %i.cu = load ptr, ptr %i.g, align 8, !tbaa !56
  store ptr %.val1.i.i.i, ptr %i.g, align 8, !tbaa !56
  store ptr %i.cu, ptr %i.cq, align 8, !tbaa !56
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_S13_S1N_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.cv = icmp ult ptr %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.cv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.050.0.copyload = load <3 x float>, ptr %0, align 8, !tbaa !82
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i64 12, i1 false), !tbaa.struct !501
  store <3 x float> %.sroa.050.0.copyload, ptr %i.cp, align 8, !tbaa !82
  %i.cw = load ptr, ptr %i.g, align 8, !tbaa !56
  %i.cx = load ptr, ptr %i.cs, align 8, !tbaa !56
  store ptr %i.cx, ptr %i.g, align 8, !tbaa !56
  store ptr %i.cw, ptr %i.cs, align 8, !tbaa !56
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_S13_S1N_.exit.i.preheader"

bb.n:                                             ; preds = %bb.l
  %.sroa.052.0.copyload = load <3 x float>, ptr %0, align 8, !tbaa !82
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 12, i1 false), !tbaa.struct !501
  store <3 x float> %.sroa.052.0.copyload, ptr %i.e, align 8, !tbaa !82
  %i.cy = load ptr, ptr %i.g, align 8, !tbaa !56
  store ptr %.val.i.i.i, ptr %i.g, align 8, !tbaa !56
  store ptr %i.cy, ptr %i.f, align 8, !tbaa !56
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_S13_S1N_.exit.i.preheader"

bb.o:                                             ; preds = %.lr.ph44
  %i.cz = icmp ult ptr %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.cz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.054.0.copyload = load <3 x float>, ptr %0, align 8, !tbaa !82
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 12, i1 false), !tbaa.struct !501
  store <3 x float> %.sroa.054.0.copyload, ptr %i.e, align 8, !tbaa !82
  %i.da = load ptr, ptr %i.g, align 8, !tbaa !56
  store ptr %.val.i.i.i, ptr %i.g, align 8, !tbaa !56
  store ptr %i.da, ptr %i.f, align 8, !tbaa !56
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4core8vector3dIfEEPN5scene11IMeshBufferEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZL27transformBuffersToDrawOrderIZN9ClientMap16renderMapShadowsEPN5video12IVideoDriverESt8functionIFvRNSJ_9SMaterialEbEEiiiE3$_0EjRKSB_IS2_INS4_IsEES8_ESaIST_EERSB_IN12_GLOBAL__N_114DrawDescriptorESaISZ_EET_RSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS1A_ESt8equal_toIS1A_ESaIS2_IKS1A_S1B_EEEEUlRKS13_RKT0_E_EEEvS13_S13_S13_S13_S1N_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.db = icmp ult ptr %.val1.i.i.i, %.val1.i27.i.i
end_hunk_1
