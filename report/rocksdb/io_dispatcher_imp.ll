Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/io_dispatcher_imp?download=true
inline.NumInlined: 3493
inline.NumDeleted: 1612
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm:bb.a
  br i1 %i.dr, label %vec.epilog.middle.block205, label %vec.epilog.vector.body201, !llvm.loop !751

vec.epilog.middle.block205:                       ; preds = %vec.epilog.vector.body201
  %cmp.n206 = icmp eq i64 %i.df, %n.vec198
  br i1 %cmp.n206, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %iter.check193, %vec.epilog.iter.check195, %vec.epilog.middle.block205
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.da, %iter.check193 ], [ %i.di, %vec.epilog.iter.check195 ], [ %i.dp, %vec.epilog.middle.block205 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i64 %i.dc, ptr %.06.i.i.i.i.i.i.i77, align 8, !tbaa !62
  %i.ds = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.ds, %i.db
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !752

_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %vec.epilog.middle.block205, %middle.block190
  %i.dt = icmp sgt i64 %i.cw, 8
  br i1 %i.dt, label %bb.r, label %bb.s, !prof !374

bb.r:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cz, ptr align 8 %i.cl, i64 %i.cw, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.s:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.du = icmp eq i64 %i.cw, 8
  br i1 %i.du, label %bb.t, label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.t:                                             ; preds = %bb.s
  %i.dv = load i64, ptr %i.cl, align 8, !tbaa !62
  store i64 %i.dv, ptr %i.cz, align 8, !tbaa !62
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit: ; preds = %bb.t, %bb.s, %bb.r
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %2 ; 3 uses
  %i.dx = sub i64 %i.f, %i.cv                     ; 4 uses
  %i.dy = icmp sgt i64 %i.dx, 8
  br i1 %i.dy, label %bb.u, label %bb.v, !prof !374

bb.u:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dw, ptr align 8 %1, i64 %i.dx, i1 false)
  br label %bb.x

bb.v:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.dz = icmp eq i64 %i.dx, 8
  br i1 %i.dz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ea = load i64, ptr %1, align 8, !tbaa !62
  store i64 %i.ea, ptr %i.dw, align 8, !tbaa !62
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.eb = getelementptr inbounds i8, ptr %i.dw, i64 %i.dx
  %.not.i82 = icmp eq ptr %i.cl, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ec = load ptr, ptr %i.a, align 8, !tbaa !147
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = sub i64 %i.ed, %i.cm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.ee) #25
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit: ; preds = %bb.x, %bb.y
  store ptr %i.cz, ptr %0, align 8, !tbaa !42
  store ptr %i.eb, ptr %i.c, align 8, !tbaa !41
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cu
  store ptr %i.ef, ptr %i.a, align 8, !tbaa !147
  br label %_ZSt4fillIPmmEvT_S1_RKT0_.exit

_ZSt4fillIPmmEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block132, %vec.epilog.middle.block147, %middle.block161, %vec.epilog.middle.block176, %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !42     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !147
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %i.b, align 8, !tbaa !62
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !41
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #23
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #24 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i64 0, ptr %i.y, align 8, !tbaa !62
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !62
  br label %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !147
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #25
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36: ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !42
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !41
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !147
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_T0_T1_"(ptr %0, ptr %1, i64 noundef %2, ptr nofree readonly captures(none) %3) unnamed_addr #14 {
bb.a:
  %.fr27 = freeze ptr %1                          ; 3 uses
  %.fr26 = freeze ptr %0                          ; 34 uses
  %i.a = ptrtoint ptr %.fr26 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr27 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_SM_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr26, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph54

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEET_SM_SM_T0_.exit"
  %i.h = icmp eq i64 %i.ct, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph54, !llvm.loop !753

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i25.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.ec, %bb.b ] ; 3 uses
  %storemerge23.lcssa = phi ptr [ %.fr27, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i25.lcssa, 3             ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 3 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 2 uses
  %i.n = and i64 %.fr.i.i25.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr26, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr26, i64 %i.k
  br label %bb.c

bb.c:                                             ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_T0_SN_T1_T2_.exit.i.i.i", %._crit_edge
  %.09.i.i.i = phi i64 [ %i.k, %._crit_edge ], [ %i.ay, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_T0_SN_T1_T2_.exit.i.i.i" ] ; 8 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr26, i64 %.09.i.i.i
  %i.t = load i64, ptr %i.s, align 8, !tbaa !62   ; 2 uses
  %i.u = icmp slt i64 %.09.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %.val.val.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !165
  %.val.val.val.i.i.i.i = load ptr, ptr %.val.val.i.i.i.i, align 8, !tbaa !355 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %.09.i.i.i, %.lr.ph.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.d ] ; 2 uses
  %i.v = shl i64 %.038.i.i.i.i, 1                 ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.fr26, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.fr26, i64 %i.y
  %i.aa = load i64, ptr %i.x, align 8, !tbaa !62
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !62
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.val.val.val.i.i.i.i, i64 %i.aa
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !372
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %.val.val.val.i.i.i.i, i64 %i.ab
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !372
  %i.ag = icmp ult i64 %i.ad, %i.af
  %spec.select.i.i.i.i = select i1 %i.ag, i64 %i.y, i64 %i.w ; 4 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %.fr26, i64 %spec.select.i.i.i.i
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !62
  %i.aj = getelementptr inbounds [8 x i8], ptr %.fr26, i64 %.038.i.i.i.i
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !62
  %i.ak = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.ak, label %bb.d, label %._crit_edge.i.i.i.i, !llvm.loop !754

._crit_edge.i.i.i.i:                              ; preds = %bb.d, %bb.c
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %bb.c ], [ %spec.select.i.i.i.i, %bb.d ] ; 2 uses
  %i.al = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  %or.cond.i.i.i = select i1 %i.o, i1 %i.al, i1 false
  br i1 %or.cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.am = load i64, ptr %i.q, align 8, !tbaa !62
  store i64 %i.am, ptr %i.r, align 8, !tbaa !62
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.e ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.an = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.an, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_T0_SN_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %.val.val.i.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !165
  %.val.val.val.i.i.i.i.i = load ptr, ptr %.val.val.i.i.i.i.i, align 8, !tbaa !355 ; 2 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %.val.val.val.i.i.i.i.i, i64 %i.t
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.h ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.fr26, i64 %.0911.i.i.i.i.i
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !62 ; 2 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.val.val.val.i.i.i.i.i, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !372
  %i.at = load i64, ptr %i.ao, align 8, !tbaa !372
  %i.au = icmp ult i64 %i.as, %i.at
  br i1 %i.au, label %bb.h, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_T0_SN_T1_T2_.exit.i.i.i"

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.fr26, i64 %.010.i.i.i.i.i
  store i64 %i.aq, ptr %i.av, align 8, !tbaa !62
  %i.aw = icmp sgt i64 %.0911.i.i.i.i.i, %.09.i.i.i
  br i1 %i.aw, label %bb.g, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_T0_SN_T1_T2_.exit.i.i.i", !llvm.loop !755

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_T0_SN_T1_T2_.exit.i.i.i": ; preds = %bb.h, %bb.g, %bb.f
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.f ], [ %.010.i.i.i.i.i, %bb.g ], [ %.0911.i.i.i.i.i, %bb.h ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.fr26, i64 %.0.lcssa.i.i.i.i.i
  store i64 %i.t, ptr %i.ax, align 8, !tbaa !62
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.ay = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_RT0_.exit.i.i", label %bb.c, !llvm.loop !756

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElmNS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_T0_SN_T1_T2_.exit.i.i.i"
  %4 = icmp sgt i64 %.fr.i.i25.lcssa, 8
  br i1 %4, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_SM_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_SM_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.az, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_SM_RT0_.exit.i.i" ], [ %storemerge23.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_RT0_.exit.i.i" ]
  %i.az = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !62 ; 2 uses
  %i.bb = load i64, ptr %.fr26, align 8, !tbaa !62
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !62
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = sub i64 %i.bc, %i.a                     ; 3 uses
  %i.be = ashr exact i64 %i.bd, 3                 ; 3 uses
  %i.bf = add nsw i64 %i.be, -1
  %i.bg = lshr i64 %i.bf, 1
  %i.bh = icmp sgt i64 %i.be, 2
  br i1 %i.bh, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i19.i:                                 ; preds = %.lr.ph.i9.i
  %.val.val.i.i.i20.i = load ptr, ptr %3, align 8, !tbaa !165
  %.val.val.val.i.i.i21.i = load ptr, ptr %.val.val.i.i.i20.i, align 8, !tbaa !355 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i19.i
  %.038.i.i.i22.i = phi i64 [ 0, %.lr.ph.i.i.i19.i ], [ %spec.select.i.i.i23.i, %bb.i ] ; 2 uses
  %i.bi = shl i64 %.038.i.i.i22.i, 1              ; 2 uses
  %i.bj = add i64 %i.bi, 2                        ; 2 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %.fr26, i64 %i.bj
  %i.bl = or disjoint i64 %i.bi, 1                ; 2 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %.fr26, i64 %i.bl
  %i.bn = load i64, ptr %i.bk, align 8, !tbaa !62
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !62
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %.val.val.val.i.i.i21.i, i64 %i.bn
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !372
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %.val.val.val.i.i.i21.i, i64 %i.bo
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !372
  %i.bt = icmp ult i64 %i.bq, %i.bs
  %spec.select.i.i.i23.i = select i1 %i.bt, i64 %i.bl, i64 %i.bj ; 4 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %.fr26, i64 %spec.select.i.i.i23.i
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !62
  %i.bw = getelementptr inbounds [8 x i8], ptr %.fr26, i64 %.038.i.i.i22.i
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !62
  %i.bx = icmp slt i64 %spec.select.i.i.i23.i, %i.bg
  br i1 %i.bx, label %bb.i, label %._crit_edge.i.i.i10.i, !llvm.loop !754

._crit_edge.i.i.i10.i:                            ; preds = %bb.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i23.i, %bb.i ] ; 5 uses
  %i.by = and i64 %i.bd, 8
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.ca = add nsw i64 %i.be, -2
  %i.cb = ashr exact i64 %i.ca, 1
  %i.cc = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.cb
  br i1 %i.cc, label %.thread.i.i.i, label %bb.k

.thread.i.i.i:                                    ; preds = %bb.j
  %i.cd = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.ce = or disjoint i64 %i.cd, 1                ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.fr26, i64 %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !62
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.fr26, i64 %.0.lcssa.i.i.i11.i
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !62
  br label %.lr.ph.i.i.i.i13.i

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_SM_RT0_.exit.i.i", label %.lr.ph.i.i.i.i13.i

.lr.ph.i.i.i.i13.i:                               ; preds = %bb.k, %.thread.i.i.i
  %.1.i6.i.i.i = phi i64 [ %i.ce, %.thread.i.i.i ], [ %.0.lcssa.i.i.i11.i, %bb.k ]
  %.val.val.i.i.i.i14.i = load ptr, ptr %3, align 8, !tbaa !165
  %.val.val.val.i.i.i.i15.i = load ptr, ptr %.val.val.i.i.i.i14.i, align 8, !tbaa !355 ; 2 uses
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %.val.val.val.i.i.i.i15.i, i64 %i.ba
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i13.i
  %.010.i.i.i.i16.i = phi i64 [ %.1.i6.i.i.i, %.lr.ph.i.i.i.i13.i ], [ %.0911.i.i78.i.i.i, %bb.m ] ; 3 uses
  %.0911.in.i.i.i.i17.i = add nsw i64 %.010.i.i.i.i16.i, -1
  %.0911.i.i78.i.i.i = lshr i64 %.0911.in.i.i.i.i17.i, 1 ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.fr26, i64 %.0911.i.i78.i.i.i
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !62 ; 2 uses
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %.val.val.val.i.i.i.i15.i, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !372
  %i.cn = load i64, ptr %i.ci, align 8, !tbaa !372
  %i.co = icmp ult i64 %i.cm, %i.cn
  br i1 %i.co, label %bb.m, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_SM_RT0_.exit.i.i"

bb.m:                                             ; preds = %bb.l
  %i.cp = getelementptr inbounds [8 x i8], ptr %.fr26, i64 %.010.i.i.i.i16.i
  store i64 %i.ck, ptr %i.cp, align 8, !tbaa !62
  %.not9.i.i.i = icmp eq i64 %.0911.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_SM_RT0_.exit.i.i", label %bb.l, !llvm.loop !755

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_SM_RT0_.exit.i.i": ; preds = %bb.m, %bb.l, %bb.k
  %.0.lcssa.i.i.i.i18.i = phi i64 [ 0, %bb.k ], [ %.010.i.i.i.i16.i, %bb.l ], [ 0, %bb.m ]
  %i.cq = getelementptr inbounds [8 x i8], ptr %.fr26, i64 %.0.lcssa.i.i.i.i18.i
  store i64 %i.ba, ptr %i.cq, align 8, !tbaa !62
  %i.cr = icmp sgt i64 %i.bd, 8
  br i1 %i.cr, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_SM_T0_.exit", !llvm.loop !757

.lr.ph54:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2353 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %.fr27, %.lr.ph ] ; 3 uses
  %.02452 = phi i64 [ %i.ct, %bb.b ], [ %2, %.lr.ph ]
  %i.cs = phi i64 [ %i.ed, %bb.b ], [ %i.d, %.lr.ph ]
  %i.ct = add nsw i64 %.02452, -1                 ; 3 uses
  %.val = load ptr, ptr %3, align 8, !tbaa !165
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !355 ; 6 uses
  %i.cu = lshr i64 %i.cs, 1
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.fr26, i64 %i.cu ; 3 uses
  %i.cw = getelementptr inbounds i8, ptr %storemerge2353, i64 -8 ; 3 uses
  %i.cx = load i64, ptr %i.f, align 8, !tbaa !62  ; 3 uses
  %i.cy = load i64, ptr %i.cv, align 8, !tbaa !62 ; 3 uses
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %.val.val, i64 %i.cx
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !372 ; 3 uses
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %.val.val, i64 %i.cy
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !372 ; 3 uses
  %i.dd = icmp ult i64 %i.da, %i.dc
  %i.de = load i64, ptr %i.cw, align 8, !tbaa !62 ; 3 uses
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %.val.val, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !372 ; 4 uses
  br i1 %i.dd, label %bb.n, label %bb.s

bb.n:                                             ; preds = %.lr.ph54
  %i.dh = icmp ult i64 %i.dc, %i.dg
  br i1 %i.dh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.di = load i64, ptr %.fr26, align 8, !tbaa !62
  store i64 %i.cy, ptr %.fr26, align 8, !tbaa !62
  store i64 %i.di, ptr %i.cv, align 8, !tbaa !62
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_SM_SM_T0_.exit.i.preheader"

bb.p:                                             ; preds = %bb.n
  %i.dj = icmp ult i64 %i.da, %i.dg
  %i.dk = load i64, ptr %.fr26, align 8, !tbaa !62 ; 2 uses
  br i1 %i.dj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i64 %i.de, ptr %.fr26, align 8, !tbaa !62
  store i64 %i.dk, ptr %i.cw, align 8, !tbaa !62
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_SM_SM_T0_.exit.i.preheader"

bb.r:                                             ; preds = %bb.p
  store i64 %i.cx, ptr %.fr26, align 8, !tbaa !62
  store i64 %i.dk, ptr %i.f, align 8, !tbaa !62
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_SM_SM_T0_.exit.i.preheader"

bb.s:                                             ; preds = %.lr.ph54
  %i.dl = icmp ult i64 %i.da, %i.dg
  br i1 %i.dl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dm = load i64, ptr %.fr26, align 8, !tbaa !62
  store i64 %i.cx, ptr %.fr26, align 8, !tbaa !62
  store i64 %i.dm, ptr %i.f, align 8, !tbaa !62
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_SM_SM_T0_.exit.i.preheader"

bb.u:                                             ; preds = %bb.s
  %i.dn = icmp ult i64 %i.dc, %i.dg
  %i.do = load i64, ptr %.fr26, align 8, !tbaa !62 ; 2 uses
  br i1 %i.dn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i64 %i.de, ptr %.fr26, align 8, !tbaa !62
  store i64 %i.do, ptr %i.cw, align 8, !tbaa !62
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_SM_SM_T0_.exit.i.preheader"

bb.w:                                             ; preds = %bb.u
  store i64 %i.cy, ptr %.fr26, align 8, !tbaa !62
  store i64 %i.do, ptr %i.cv, align 8, !tbaa !62
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_SM_SM_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_SM_SM_T0_.exit.i.preheader": ; preds = %bb.w, %bb.v, %bb.t, %bb.r, %bb.q, %bb.o
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_SM_SM_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_SM_SM_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_SM_SM_T0_.exit.i.preheader", %bb.z
  %.sroa.011.0.i.i = phi ptr [ %.sroa.011.1.i.i, %bb.z ], [ %storemerge2353, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_SM_SM_T0_.exit.i.preheader" ]
  %.sroa.014.0.i.i = phi ptr [ %i.dw, %bb.z ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_SM_SM_T0_.exit.i.preheader" ]
  %i.dp = load i64, ptr %.fr26, align 8, !tbaa !62
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %.val.val, i64 %i.dp
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !372 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_SM_SM_T0_.exit.i"
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_SM_SM_T0_.exit.i" ], [ %i.dw, %bb.x ] ; 8 uses
  %i.ds = load i64, ptr %.sroa.014.1.i.i, align 8, !tbaa !62 ; 2 uses
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %.val.val, i64 %i.ds
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !372
  %i.dv = icmp ult i64 %i.du, %i.dr
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 8 ; 2 uses
  br i1 %i.dv, label %bb.x, label %.preheader.i.i, !llvm.loop !758

.preheader.i.i:                                   ; preds = %bb.x, %.preheader.i.i
  %.sroa.011.0.pn.i.i = phi ptr [ %.sroa.011.1.i.i, %.preheader.i.i ], [ %.sroa.011.0.i.i, %bb.x ]
  %.sroa.011.1.i.i = getelementptr inbounds i8, ptr %.sroa.011.0.pn.i.i, i64 -8 ; 5 uses
  %i.dx = load i64, ptr %.sroa.011.1.i.i, align 8, !tbaa !62 ; 2 uses
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %.val.val, i64 %i.dx
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !372
  %i.ea = icmp ult i64 %i.dr, %i.dz
  br i1 %i.ea, label %.preheader.i.i, label %bb.y, !llvm.loop !759

bb.y:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.014.1.i.i, %.sroa.011.1.i.i
  br i1 %.not.i.i, label %bb.z, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEET_SM_SM_T0_.exit"

bb.z:                                             ; preds = %bb.y
  store i64 %i.dx, ptr %.sroa.014.1.i.i, align 8, !tbaa !62
  store i64 %i.ds, ptr %.sroa.011.1.i.i, align 8, !tbaa !62
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_SM_SM_T0_.exit.i", !llvm.loop !760

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEET_SM_SM_T0_.exit": ; preds = %bb.y
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_T0_T1_"(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2353, i64 noundef %i.ct, ptr nonnull %3)
  %i.eb = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.ec = sub i64 %i.eb, %i.a                     ; 2 uses
  %i.ed = ashr exact i64 %i.ec, 3                 ; 2 uses
  %i.ee = icmp sgt i64 %i.ed, 16
  br i1 %i.ee, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_SM_T0_.exit", !llvm.loop !753

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_SM_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEET_SM_SM_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_SM_RT0_.exit.i.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_RT0_.exit.i.i"
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIN7rocksdb22CoalescedPrefetchGroupESaIS1_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = lshr i64 %1, 4                           ; 2 uses
  %i.b = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.b, 3     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 %.sroa.speculated, ptr %i.c, align 8, !tbaa !541
  %i.d = icmp ugt i64 %1, -49
  br i1 %i.d, label %bb.b, label %_ZNSt11_Deque_baseIN7rocksdb22CoalescedPrefetchGroupESaIS1_EE15_M_allocate_mapEm.exit, !prof !144

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt11_Deque_baseIN7rocksdb22CoalescedPrefetchGroupESaIS1_EE15_M_allocate_mapEm.exit: ; preds = %bb.a
  %i.e = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.f = shl nuw nsw i64 %.sroa.speculated, 3
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #24 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !539
  %i.h = load i64, ptr %i.c, align 8, !tbaa !541
  %i.i = sub i64 %i.h, %i.e
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.j ; 6 uses
  %.idx = shl nuw nsw i64 %i.e, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseIN7rocksdb22CoalescedPrefetchGroupESaIS1_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseIN7rocksdb22CoalescedPrefetchGroupESaIS1_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.n, %_ZNSt11_Deque_baseIN7rocksdb22CoalescedPrefetchGroupESaIS1_EE16_M_allocate_nodeEv.exit.i ], [ %i.k, %_ZNSt11_Deque_baseIN7rocksdb22CoalescedPrefetchGroupESaIS1_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.m = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #24
          to label %_ZNSt11_Deque_baseIN7rocksdb22CoalescedPrefetchGroupESaIS1_EE16_M_allocate_nodeEv.exit.i unwind label %bb.c

_ZNSt11_Deque_baseIN7rocksdb22CoalescedPrefetchGroupESaIS1_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.m, ptr %.011.i, align 8, !tbaa !428
  %i.n = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.o = icmp ult ptr %i.n, %i.l
  br i1 %i.o, label %.lr.ph.i, label %_ZNSt11_Deque_baseIN7rocksdb22CoalescedPrefetchGroupESaIS1_EE15_M_create_nodesEPPS1_S5_.exit, !llvm.loop !761

bb.c:                                             ; preds = %.lr.ph.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  %i.r = tail call ptr @__cxa_begin_catch(ptr %i.q) #22 ; 0 uses
  %i.s = icmp ult ptr %i.k, %.011.i
  br i1 %i.s, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIN7rocksdb22CoalescedPrefetchGroupESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %i.t = load ptr, ptr %.06.i.i, align 8, !tbaa !428
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef 512) #25
  %i.u = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.v = icmp ult ptr %i.u, %.011.i
  br i1 %i.v, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIN7rocksdb22CoalescedPrefetchGroupESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i, !llvm.loop !23

_ZNSt11_Deque_baseIN7rocksdb22CoalescedPrefetchGroupESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  invoke void @__cxa_rethrow() #23
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt11_Deque_baseIN7rocksdb22CoalescedPrefetchGroupESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #26
  unreachable

bb.f:                                             ; preds = %_ZNSt11_Deque_baseIN7rocksdb22CoalescedPrefetchGroupESaIS1_EE16_M_destroy_nodesEPPS1_S5_.exit.i
  unreachable

.body:                                            ; preds = %bb.d
  %i.z = extractvalue { ptr, i32 } %i.w, 0
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %i.z) #22 ; 0 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !539
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !541
  %i.ad = shl i64 %i.ac, 3
  tail call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ad) #25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #23
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %.body
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.ae

_ZNSt11_Deque_baseIN7rocksdb22CoalescedPrefetchGroupESaIS1_EE15_M_create_nodesEPPS1_S5_.exit: ; preds = %_ZNSt11_Deque_baseIN7rocksdb22CoalescedPrefetchGroupESaIS1_EE16_M_allocate_nodeEv.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.k, ptr %i.ag, align 8, !tbaa !427
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !428 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !429
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 512
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !430
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = getelementptr inbounds i8, ptr %i.l, i64 -8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.am, ptr %i.an, align 8, !tbaa !427
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !428 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !429
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 512
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !430
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !425
  %i.as = and i64 %1, 15
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.ao, i64 %i.as
  store ptr %i.at, ptr %i.al, align 8, !tbaa !533
  ret void

bb.i:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  tail call void @__clang_call_terminate(ptr %i.av) #26
  unreachable

bb.j:                                             ; preds = %.body
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_ImSaImEESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !462  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !461    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !463
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 24                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 384307168202282326
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 384307168202282325, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPSt6vectorImSaImEEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPSt6vectorImSaImEEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 24                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !462
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIS_ImSaImEESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #23
  unreachable

_ZNKSt6vectorIS_ImSaImEESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 384307168202282325) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 24
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #24 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_ImSaImEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIS_ImSaImEESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIS_ImSaImEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIS_ImSaImEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !765)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !766)
  %i.x = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !358, !alias.scope !766, !noalias !765
  store <2 x ptr> %i.x, ptr %.012.i.i.i, align 8, !tbaa !358, !alias.scope !765, !noalias !766
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
end_hunk_0
