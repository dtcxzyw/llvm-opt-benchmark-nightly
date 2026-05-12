inline.NumInlined: 421
inline.NumDeleted: 251
begin_hunk_0_@_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE:bb.a
bb.a:
  %1 = alloca %"class.arrow::internal::StaticVectorImpl", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i64 0, ptr %i.a, align 8, !tbaa !155
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !158
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  store i64 0, ptr %i.c, align 8, !tbaa !159
  %i.d = load ptr, ptr %0, align 8, !tbaa !7      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
end_hunk_0
begin_hunk_1_@_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE:bb.a
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %2 = phi i64 [ %5, %bb.d ], [ 0, %bb.a ]        ; 3 uses
  %i.h = phi ptr [ %6, %bb.d ], [ %1, %bb.a ]     ; 4 uses
  %3 = phi i64 [ %7, %bb.d ], [ 0, %bb.a ]        ; 4 uses
  %i.i = phi i64 [ %i.p, %bb.d ], [ 0, %bb.a ]    ; 3 uses
  %i.j = phi ptr [ %i.ai, %bb.d ], [ %i.d, %bb.a ]
  %.045 = phi ptr [ %i.ah, %bb.d ], [ %0, %bb.a ] ; 2 uses
  %.04144 = phi i64 [ %i.n, %bb.d ], [ 1, %bb.a ]
end_hunk_1
begin_hunk_2_@_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE:bb.a
  %i.m = sext i32 %i.l to i64
  %i.n = mul nsw i64 %.04144, %i.m                ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.045, i64 24
  %i.p = add i64 %i.i, 1                          ; 12 uses
  %.not.i.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = icmp ugt i64 %i.p, %3
  br i1 %i.q, label %_ZN5arrow8internal14AlignedStorageISt4pairIllEE41move_construct_several_and_destroy_sourceEPS4_S5_m.exit.i.i.i.i.a, label %bb.d

_ZN5arrow8internal14AlignedStorageISt4pairIllEE41move_construct_several_and_destroy_sourceEPS4_S5_m.exit.i.i.i.i.a: ; preds = %bb.b
  %i.r = shl i64 %3, 1
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.r, i64 %i.p) ; 5 uses
  %i.s = icmp ugt i64 %.sroa.speculated.i.i.i, 1152921504606846975
  %i.t = shl nuw i64 %.sroa.speculated.i.i.i, 4
  %i.u = select i1 %i.s, i64 -1, i64 %i.t
  %i.v = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.u) #17
          to label %_ZN5arrow8internal18SmallVectorStorageISt4pairIllELm1EE18reallocate_dynamicEm.exit.i.i.i unwind label %bb.e ; 3 uses

_ZN5arrow8internal18SmallVectorStorageISt4pairIllELm1EE18reallocate_dynamicEm.exit.i.i.i: ; preds = %_ZN5arrow8internal14AlignedStorageISt4pairIllEE41move_construct_several_and_destroy_sourceEPS4_S5_m.exit.i.i.i.i.a
  %4 = shl nuw i64 %i.i, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.v, ptr align 8 %i.h, i64 %4, i1 false), !alias.scope !160
  call void @_ZdaPv(ptr noundef nonnull %i.h) #18
  store i64 %.sroa.speculated.i.i.i, ptr %i.c, align 8, !tbaa !159
  store ptr %i.v, ptr %i.b, align 8, !tbaa !158
  br label %bb.d
end_hunk_2
begin_hunk_3_@_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE:bb.a
  %i.y = shl nuw i64 %i.p, 4
  %i.z = select i1 %i.x, i64 -1, i64 %i.y
  %i.aa = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.z) #17
          to label %.noexc28.a unwind label %bb.e ; 3 uses

.noexc28.a:                                       ; preds = %.lr.ph.preheader.i.i.i3.i.i.i.a
  store ptr %i.aa, ptr %i.b, align 8, !tbaa !158
  %i.ab = shl nuw i64 %i.i, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr nonnull align 8 dereferenceable(40) %1, i64 %i.ab, i1 false), !alias.scope !167
  br label %bb.d

bb.d:                                             ; preds = %.noexc28.a, %bb.c, %_ZN5arrow8internal18SmallVectorStorageISt4pairIllELm1EE18reallocate_dynamicEm.exit.i.i.i, %bb.b
  %5 = phi i64 [ %i.p, %.noexc28.a ], [ %2, %bb.c ], [ %.sroa.speculated.i.i.i, %_ZN5arrow8internal18SmallVectorStorageISt4pairIllELm1EE18reallocate_dynamicEm.exit.i.i.i ], [ %2, %bb.b ]
  %6 = phi ptr [ %i.aa, %.noexc28.a ], [ %i.h, %bb.c ], [ %i.v, %_ZN5arrow8internal18SmallVectorStorageISt4pairIllELm1EE18reallocate_dynamicEm.exit.i.i.i ], [ %i.h, %bb.b ] ; 2 uses
  %7 = phi i64 [ %i.p, %.noexc28.a ], [ 0, %bb.c ], [ %.sroa.speculated.i.i.i, %_ZN5arrow8internal18SmallVectorStorageISt4pairIllELm1EE18reallocate_dynamicEm.exit.i.i.i ], [ %3, %bb.b ]
  store i64 %i.p, ptr %i.a, align 8, !tbaa !155
  %i.ac = getelementptr [16 x i8], ptr %6, i64 %i.p ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 -16
  %i.ae = load i64, ptr %i.o, align 8, !tbaa !174
  store i64 %i.ae, ptr %i.ad, align 8, !tbaa !175
end_hunk_3
begin_hunk_4_@_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE:bb.a
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !178

bb.e:                                             ; preds = %.lr.ph.preheader.i.i.i3.i.i.i.a, %_ZN5arrow8internal14AlignedStorageISt4pairIllEE41move_construct_several_and_destroy_sourceEPS4_S5_m.exit.i.i.i.i.a
  %8 = phi i64 [ %i.p, %.lr.ph.preheader.i.i.i3.i.i.i.a ], [ %2, %_ZN5arrow8internal14AlignedStorageISt4pairIllEE41move_construct_several_and_destroy_sourceEPS4_S5_m.exit.i.i.i.i.a ]
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.i
end_hunk_4
begin_hunk_5_@_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE:bb.a
bb.h:                                             ; preds = %._crit_edge
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %.pre = load i64, ptr %i.c, align 8, !tbaa !159
  br label %bb.i

.lr.ph51:                                         ; preds = %.lr.ph51.prol.loopexit, %.lr.ph51
end_hunk_5
begin_hunk_6_@_ZN5arrow4util34OffsetPointerOfFixedBitWidthValuesERKNS_9ArraySpanE:bb.a
  br i1 %i.cg, label %._crit_edge52, label %.lr.ph51, !llvm.loop !189

bb.i:                                             ; preds = %bb.h, %bb.e
  %9 = phi i64 [ %8, %bb.e ], [ %.pre, %bb.h ]
  %.pn26 = phi { ptr, i32 } [ %i.am, %bb.e ], [ %i.bp, %bb.h ]
  %.not.i.i.i30 = icmp eq i64 %9, 0
  br i1 %.not.i.i.i30, label %_ZN5arrow8internal16StaticVectorImplISt4pairIllELm1ENS0_18SmallVectorStorageIS3_Lm1EEEED2Ev.exit31, label %bb.j

bb.j:                                             ; preds = %bb.i
end_hunk_6
begin_hunk_7_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_default_appendEm:bb.a
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !201
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
end_hunk_7
begin_hunk_8_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_default_appendEm:bb.a
  br i1 %.not.i36, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_deallocateEPS3_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.ab = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #18
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EE13_M_deallocateEPS3_m.exit37

end_hunk_8
begin_hunk_9_@_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag:bb.a
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !209
  %i.g = load ptr, ptr %0, align 8, !tbaa !142    ; 5 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i
end_hunk_9
begin_hunk_10_@_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag:bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.v, %2
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !210

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit.loopexit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow9ArrayDataEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre47 = load ptr, ptr %0, align 8, !tbaa !142
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit.loopexit, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_M_allocateEm.exit.i
  %3 = phi ptr [ %.pre47, %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit.loopexit ], [ %i.g, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !211  ; 2 uses
  %.not4.i.i = icmp eq ptr %3, %i.y
end_hunk_10
