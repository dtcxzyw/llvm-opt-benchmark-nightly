Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/thread?download=true
inline.NumInlined: 2270
inline.NumDeleted: 1313
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNSt5dequeIPSt8functionIFviEESaIS3_EE17_M_reallocate_mapEmb:bb.a

.noexc3.i:                                        ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #28 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !134 ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !354
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp sgt i64 %i.bb, 8
  br i1 %i.bc, label %bb.m, label %bb.n, !prof !415

bb.m:                                             ; preds = %_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.aw, i64 %i.bb, i1 false)
  br label %_ZSt4copyIPPPSt8functionIFviEES5_ET0_T_S7_S6_.exit24

bb.n:                                             ; preds = %_ZNSt11_Deque_baseIPSt8functionIFviEESaIS3_EE15_M_allocate_mapEm.exit
  %i.bd = icmp eq i64 %i.bb, 8
  br i1 %i.bd, label %bb.o, label %_ZSt4copyIPPPSt8functionIFviEES5_ET0_T_S7_S6_.exit24

bb.o:                                             ; preds = %bb.n
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !135
  store ptr %i.be, ptr %i.av, align 8, !tbaa !135
  br label %_ZSt4copyIPPPSt8functionIFviEES5_ET0_T_S7_S6_.exit24

_ZSt4copyIPPPSt8functionIFviEES5_ET0_T_S7_S6_.exit24: ; preds = %bb.m, %bb.n, %bb.o
  %i.bf = load ptr, ptr %0, align 8, !tbaa !353
  %i.bg = load i64, ptr %i.k, align 8, !tbaa !356
  %i.bh = shl i64 %i.bg, 3
  tail call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bh) #29
  store ptr %i.aq, ptr %0, align 8, !tbaa !353
  store i64 %i.am, ptr %i.k, align 8, !tbaa !356
  br label %_ZSt4copyIPPPSt8functionIFviEES5_ET0_T_S7_S6_.exit

_ZSt4copyIPPPSt8functionIFviEES5_ET0_T_S7_S6_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPPSt8functionIFviEES5_ET0_T_S7_S6_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPPSt8functionIFviEES5_ET0_T_S7_S6_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !126
  %i.bi = load ptr, ptr %.0, align 8, !tbaa !135  ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !128
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 512
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !129
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8 ; 2 uses
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !126
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !135 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !128
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 512
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !129
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E11insert_implIS4_JRKSt21piecewise_construct_tSt5tupleIJRKS4_EESN_IJEEEEES2_INSI_14robin_iteratorILb0EEEbERKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(74) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8, i64 noundef 3339675911)
          to label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit unwind label %bb.b ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #31
  unreachable

_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit: ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !360    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62   ; 2 uses
  %.057 = and i64 %i.a, %i.d                      ; 3 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.057 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i16, ptr %i.h, align 4, !tbaa !57
  %.not58 = icmp slt i16 %i.i, 0
  br i1 %.not58, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !77
  br label %bb.c

.preheader:                                       ; preds = %bb.d, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit
  %.034.lcssa = phi i16 [ 0, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit ], [ %i.o, %bb.d ] ; 2 uses
  %.0.lcssa = phi i64 [ %.057, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit ], [ %.0, %bb.d ]
  %i.j = tail call noundef zeroext i1 @_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22rehash_on_extreme_loadEs(ptr noundef nonnull align 8 dereferenceable(74) %0, i16 noundef signext %.034.lcssa)
  br i1 %i.j, label %.lr.ph69, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %i.k = phi ptr [ %i.g, %.lr.ph ], [ %i.p, %bb.d ] ; 2 uses
  %.060 = phi i64 [ %.057, %.lr.ph ], [ %.0, %bb.d ]
  %.03459 = phi i16 [ 0, %.lr.ph ], [ %i.o, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.l, align 8, !tbaa !77
  %i.m = icmp eq i64 %.sroa.01.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  br i1 %i.m, label %.loopexit49, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %.060, 1
  %i.o = add i16 %.03459, 1                       ; 3 uses
  %.0 = and i64 %i.n, %i.d                        ; 3 uses
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.0 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i16, ptr %i.q, align 4, !tbaa !57
  %.not = icmp sgt i16 %i.o, %i.r
  br i1 %.not, label %.preheader, label %bb.c, !llvm.loop !416

.loopexit:                                        ; preds = %.lr.ph66, %.lr.ph69
  %.236.lcssa = phi i16 [ 0, %.lr.ph69 ], [ %i.z, %.lr.ph66 ] ; 2 uses
  %.2.lcssa = phi i64 [ %.262, %.lr.ph69 ], [ %.2, %.lr.ph66 ]
  %i.s = tail call noundef zeroext i1 @_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22rehash_on_extreme_loadEs(ptr noundef nonnull align 8 dereferenceable(74) %0, i16 noundef signext %.236.lcssa)
  br i1 %i.s, label %.lr.ph69, label %._crit_edge, !llvm.loop !417

.lr.ph69:                                         ; preds = %.preheader, %.loopexit
  %i.t = load i64, ptr %0, align 8, !tbaa !360    ; 2 uses
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !62   ; 2 uses
  %.262 = and i64 %i.a, %i.t                      ; 3 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %.262
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i16, ptr %i.w, align 4, !tbaa !57
  %.not3763 = icmp slt i16 %i.x, 0
  br i1 %.not3763, label %.loopexit, label %.lr.ph66

.lr.ph66:                                         ; preds = %.lr.ph69, %.lr.ph66
  %.265 = phi i64 [ %.2, %.lr.ph66 ], [ %.262, %.lr.ph69 ]
  %.23664 = phi i16 [ %i.z, %.lr.ph66 ], [ 0, %.lr.ph69 ]
  %i.y = add i64 %.265, 1
  %i.z = add i16 %.23664, 1                       ; 3 uses
  %.2 = and i64 %i.y, %i.t                        ; 3 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %.2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i16, ptr %i.ab, align 4, !tbaa !57
  %.not37 = icmp sgt i16 %i.z, %i.ac
  br i1 %.not37, label %.loopexit, label %.lr.ph66, !llvm.loop !418

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %.135.lcssa = phi i16 [ %.034.lcssa, %.preheader ], [ %.236.lcssa, %.loopexit ] ; 2 uses
  %.1.lcssa = phi i64 [ %.0.lcssa, %.preheader ], [ %.2.lcssa, %.loopexit ] ; 3 uses
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !62  ; 4 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.1.lcssa ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 3 uses
  %i.ag = load i16, ptr %i.af, align 4, !tbaa !57 ; 2 uses
  %i.ah = icmp eq i16 %i.ag, -1
  %i.ai = trunc i64 %i.a to i32                   ; 2 uses
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ak = load i64, ptr %3, align 8, !tbaa !137
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i64, ptr %i.al, align 8, !tbaa !77
  store i64 %i.am, ptr %i.aj, align 8, !tbaa !77
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i32 0, ptr %i.an, align 8, !tbaa !419
  store i32 %i.ai, ptr %i.ae, align 8, !tbaa !421
  store i16 %.135.lcssa, ptr %i.af, align 4, !tbaa !57
  br label %bb.l

bb.f:                                             ; preds = %._crit_edge
  %i.ao = load i64, ptr %3, align 8, !tbaa !137
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !77
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !77 ; 2 uses
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !77
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !3  ; 2 uses
  store i32 0, ptr %i.at, align 8, !tbaa !3
  store i16 %.135.lcssa, ptr %i.af, align 4, !tbaa !422
  %i.av = load i32, ptr %i.ae, align 8, !tbaa !421 ; 2 uses
  store i32 %i.ai, ptr %i.ae, align 8, !tbaa !421
  %i.aw = add i64 %.1.lcssa, 1
  %i.ax = load i64, ptr %0, align 8, !tbaa !360   ; 2 uses
  %i.ay = and i64 %i.ax, %i.aw                    ; 2 uses
  %storemerge23.i.i = add nuw i16 %i.ag, 1        ; 2 uses
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.ay ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 3 uses
  %i.bb = load i16, ptr %i.ba, align 4, !tbaa !57 ; 2 uses
  %i.bc = icmp eq i16 %i.bb, -1
  br i1 %i.bc, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E12insert_valueIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESN_IJEEEEEvmsjDpOT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.i.i
  %.sroa.8.0.i = phi i32 [ %i.au, %.lr.ph.i.i ], [ %.sroa.8.1.i, %bb.k ] ; 2 uses
  %.sroa.04.0.i = phi i64 [ %i.as, %.lr.ph.i.i ], [ %.sroa.04.1.i, %bb.k ] ; 2 uses
  %i.be = phi i64 [ %i.ax, %.lr.ph.i.i ], [ %i.bp, %bb.k ]
  %i.bf = phi i16 [ %i.bb, %.lr.ph.i.i ], [ %i.bu, %bb.k ] ; 2 uses
  %i.bg = phi ptr [ %i.ba, %.lr.ph.i.i ], [ %i.bt, %bb.k ]
  %i.bh = phi ptr [ %i.az, %.lr.ph.i.i ], [ %i.bs, %bb.k ] ; 4 uses
  %storemerge26.i.i = phi i16 [ %storemerge23.i.i, %.lr.ph.i.i ], [ %storemerge.i.i, %bb.k ] ; 4 uses
  %.025.i.i = phi i64 [ %i.ay, %.lr.ph.i.i ], [ %i.br, %bb.k ]
  %.01924.i.i = phi i32 [ %i.av, %.lr.ph.i.i ], [ %.1.i.i, %bb.k ] ; 2 uses
  %i.bi = icmp sgt i16 %storemerge26.i.i, %i.bf
  br i1 %i.bi, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bj = icmp sgt i16 %storemerge26.i.i, 8192
  br i1 %i.bj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.bd, align 8, !tbaa !63
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !77
  store i64 %.sroa.04.0.i, ptr %i.bk, align 8, !tbaa !77
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !3
  store i32 %.sroa.8.0.i, ptr %i.bm, align 8, !tbaa !3
  store i16 %storemerge26.i.i, ptr %i.bg, align 2, !tbaa !422
  %i.bo = load i32, ptr %i.bh, align 8, !tbaa !421
  store i32 %.01924.i.i, ptr %i.bh, align 8, !tbaa !421
  %.pre.i.i = load i64, ptr %0, align 8, !tbaa !360
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.sroa.8.1.i = phi i32 [ %i.bn, %bb.j ], [ %.sroa.8.0.i, %bb.g ] ; 2 uses
  %.sroa.04.1.i = phi i64 [ %i.bl, %bb.j ], [ %.sroa.04.0.i, %bb.g ] ; 2 uses
  %i.bp = phi i64 [ %.pre.i.i, %bb.j ], [ %i.be, %bb.g ] ; 2 uses
  %.121.i.i = phi i16 [ %i.bf, %bb.j ], [ %storemerge26.i.i, %bb.g ]
  %.1.i.i = phi i32 [ %i.bo, %bb.j ], [ %.01924.i.i, %bb.g ] ; 2 uses
  %i.bq = add i64 %.025.i.i, 1
  %i.br = and i64 %i.bp, %i.bq                    ; 2 uses
  %storemerge.i.i = add i16 %.121.i.i, 1          ; 2 uses
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.br ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4 ; 3 uses
  %i.bu = load i16, ptr %i.bt, align 4, !tbaa !57 ; 2 uses
  %i.bv = icmp eq i16 %i.bu, -1
  br i1 %i.bv, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E12insert_valueIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESN_IJEEEEEvmsjDpOT_.exit, label %bb.g, !llvm.loop !423

_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E12insert_valueIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESN_IJEEEEEvmsjDpOT_.exit: ; preds = %bb.k, %bb.f
  %.sroa.8.2.i = phi i32 [ %i.au, %bb.f ], [ %.sroa.8.1.i, %bb.k ]
  %.sroa.04.2.i = phi i64 [ %i.as, %bb.f ], [ %.sroa.04.1.i, %bb.k ]
  %.019.lcssa.i.i = phi i32 [ %i.av, %bb.f ], [ %.1.i.i, %bb.k ]
  %storemerge.lcssa.i.i = phi i16 [ %storemerge23.i.i, %bb.f ], [ %storemerge.i.i, %bb.k ]
  %.lcssa22.i.i = phi ptr [ %i.az, %bb.f ], [ %i.bs, %bb.k ] ; 3 uses
  %.lcssa.i.i = phi ptr [ %i.ba, %bb.f ], [ %i.bt, %bb.k ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.lcssa22.i.i, i64 8
  store i64 %.sroa.04.2.i, ptr %i.bw, align 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.lcssa22.i.i, i64 16
  store i32 %.sroa.8.2.i, ptr %.sroa.8.0..sroa_idx.i, align 8
  store i32 %.019.lcssa.i.i, ptr %.lcssa22.i.i, align 8, !tbaa !421
  store i16 %storemerge.lcssa.i.i, ptr %.lcssa.i.i, align 4, !tbaa !57
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !62
  br label %bb.l

bb.l:                                             ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E12insert_valueIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESN_IJEEEEEvmsjDpOT_.exit, %bb.e
  %i.bx = phi ptr [ %.pre, %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E12insert_valueIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESN_IJEEEEEvmsjDpOT_.exit ], [ %i.ad, %bb.e ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !365
  %i.ca = add i64 %i.bz, 1
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !365
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.bx, i64 %.1.lcssa
  br label %.loopexit49

.loopexit49:                                      ; preds = %bb.c, %bb.l
  %.pn47 = phi ptr [ %i.cb, %bb.l ], [ %i.k, %bb.c ]
  %.pn45 = phi i8 [ 1, %bb.l ], [ 0, %bb.c ]
  %.fca.0.insert.i.pn = insertvalue { ptr, i8 } poison, ptr %.pn47, 0
  %.pn = insertvalue { ptr, i8 } %.fca.0.insert.i.pn, i8 %.pn45, 1
  ret { ptr, i8 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22rehash_on_extreme_loadEs(ptr noundef nonnull align 8 dereferenceable(74) %0, i16 noundef signext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !63, !range !71, !noundef !72
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = icmp sgt i16 %1, 8192
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !365  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i64, ptr %i.g, align 8, !tbaa !66
  %.not = icmp ult i64 %i.f, %i.h
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load i64, ptr %0, align 8, !tbaa !360    ; 2 uses
  %i.j = add i64 %i.i, -4611686018427387904
  %i.k = icmp ult i64 %i.j, -4611686018427387905
  br i1 %i.k, label %bb.d, label %_ZNK3tsl2rh26power_of_two_growth_policyILm2EE17next_bucket_countEv.exit

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.1)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #32
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.l) #30
  resume { ptr, i32 } %i.m

_ZNK3tsl2rh26power_of_two_growth_policyILm2EE17next_bucket_countEv.exit: ; preds = %bb.c
  %i.n = shl nsw i64 %i.i, 1
  %i.o = add i64 %i.n, 2
  tail call void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E11rehash_implEm(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %i.o)
  store i8 0, ptr %i.a, align 8, !tbaa !63
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !64, !range !71, !noundef !72
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.p, align 1, !tbaa !64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load float, ptr %i.s, align 8, !tbaa !367 ; 2 uses
  %i.u = fcmp une float %i.t, 0.000000e+00
  br i1 %i.u, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !364  ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  %i.y = uitofp i64 %i.f to float                 ; 2 uses
  %i.z = uitofp i64 %i.w to float
  %i.aa = fdiv float %i.y, %i.z
  %.0.i = select i1 %i.x, float 0.000000e+00, float %i.aa
  %i.ab = fcmp olt float %.0.i, %i.t
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = add nuw i64 %i.f, 1
  %i.ad = uitofp i64 %i.ac to float
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.af = load float, ptr %i.ae, align 4, !tbaa !368
  %i.ag = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ah = insertelement <2 x float> %i.ag, float %i.y, i64 1
  %i.ai = insertelement <2 x float> poison, float %i.af, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = fdiv <2 x float> %i.ah, %i.aj
  %i.al = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ak) ; 2 uses
  %i.am = extractelement <2 x float> %i.al, i64 0
  %i.an = fptoui float %i.am to i64
  %i.ao = extractelement <2 x float> %i.al, i64 1
  %i.ap = fptoui float %i.ao to i64
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.an, i64 %i.ap)
  tail call void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E11rehash_implEm(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %.sroa.speculated.i.i)
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.i, %bb.h, %bb.j, %_ZNK3tsl2rh26power_of_two_growth_policyILm2EE17next_bucket_countEv.exit
  %.0 = phi i1 [ true, %_ZNK3tsl2rh26power_of_two_growth_policyILm2EE17next_bucket_countEv.exit ], [ true, %bb.j ], [ false, %bb.h ], [ false, %bb.i ], [ false, %bb.g ]
  ret i1 %.0
}

declare noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E11rehash_implEm(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.tsl::detail_robin_hash::robin_hash", align 8 ; 18 uses
  %3 = alloca %"class.std::allocator.54", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = load float, ptr %i.a, align 8, !tbaa !367
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.d = load float, ptr %i.c, align 4, !tbaa !368
  call void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_EC2EmRKS8_RKSA_RKSB_ff(ptr noundef nonnull align 8 dereferenceable(74) %2, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3, float noundef %i.b, float noundef %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !366  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !366  ; 3 uses
  %.not19 = icmp eq ptr %i.g, %i.i
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = load i64, ptr %i.e, align 8, !tbaa !364
  %.fr21 = freeze i64 %i.j
  %i.k = icmp ult i64 %.fr21, 4294967297
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  br i1 %i.k, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.f
  %.sroa.015.020.us = phi ptr [ %i.am, %bb.f ], [ %i.g, %.lr.ph ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.015.020.us, i64 4
  %i.n = load i16, ptr %i.m, align 4, !tbaa !57
  %i.o = icmp eq i16 %i.n, -1
  br i1 %i.o, label %bb.f, label %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit.us

_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit.us: ; preds = %.lr.ph.split.us
  %i.p = load i32, ptr %.sroa.015.020.us, align 4, !tbaa !421 ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = load i64, ptr %2, align 8, !tbaa !360    ; 2 uses
  %i.s = and i64 %i.r, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.015.020.us, i64 8 ; 3 uses
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !62
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.015.020.us, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit.us
  %i.w = phi i64 [ %i.r, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit.us ], [ %i.ai, %bb.e ]
  %.013.i.us = phi i16 [ 0, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit.us ], [ %i.aj, %bb.e ] ; 4 uses
  %.012.i.us = phi i32 [ %i.p, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit.us ], [ %.1.i.us, %bb.e ] ; 3 uses
  %.0.i.us = phi i64 [ %i.s, %_ZNK3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E8hash_keyIS4_EEmRKT_.exit.us ], [ %i.al, %bb.e ] ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %.0.i.us ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4 ; 3 uses
  %i.z = load i16, ptr %i.y, align 4, !tbaa !57   ; 3 uses
  %i.aa = icmp sgt i16 %.013.i.us, %i.z
  br i1 %i.aa, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp eq i16 %i.z, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  br i1 %i.ab, label %_ZN3tsl17detail_robin_hash10robin_hashISt4pairINSt6thread2idEiENS_9robin_mapIS4_iSt4hashIS4_ESt8equal_toIS4_ESaIS5_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSF_11ValueSelectES8_SA_SB_Lb0ESE_E22insert_value_on_rehashEmsjOS5_.exit.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i.i.i.us = load i64, ptr %i.t, align 8, !tbaa !77
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !77
  store i64 %i.ad, ptr %i.t, align 8, !tbaa !77
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.us, ptr %i.ac, align 8, !tbaa !77
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.af = load i32, ptr %i.v, align 8, !tbaa !3
  %i.ag = load i32, ptr %i.ae, align 8, !tbaa !3
  store i32 %i.ag, ptr %i.v, align 8, !tbaa !3
  store i32 %i.af, ptr %i.ae, align 8, !tbaa !3
  store i16 %.013.i.us, ptr %i.y, align 4, !tbaa !422
  %i.ah = load i32, ptr %i.x, align 8, !tbaa !421
  store i32 %.012.i.us, ptr %i.x, align 8, !tbaa !421
end_hunk_0
