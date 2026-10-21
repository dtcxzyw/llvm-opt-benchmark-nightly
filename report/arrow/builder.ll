Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/builder?download=true
inline.NumInlined: 40063
inline.NumDeleted: 2741
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 92
begin_hunk_0_@_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag:bb.a
  %i.dv = load ptr, ptr %i.dm, align 8, !tbaa !177
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8
  tail call void %i.dx(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #20, !inline_history !38597
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i35

bb.al:                                            ; preds = %bb.aj
  %i.dy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !216
  %.not.i9.i.i.i.i.i.i.i.i32 = icmp eq i8 %i.dy, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i32, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dz = add nsw i32 %i.dq, -1
  store i32 %i.dz, ptr %i.dn, align 8, !tbaa !132
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i33

bb.an:                                            ; preds = %bb.al
  %i.ea = atomicrmw volatile add ptr %i.dn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i33

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i33: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i.i.i.i.i.i34 = phi i32 [ %i.dq, %bb.am ], [ %i.ea, %bb.an ]
  %i.eb = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i34, 1
  br i1 %i.eb, label %bb.ao, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i35, !prof !227

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i33
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dm) #20
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i35

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i35: ; preds = %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i33, %bb.ak, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i30
  store ptr %i.df, ptr %i.dd, align 8, !tbaa !214
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEaSERKS2_.exit.i.i.i.i.i36

_ZNSt10shared_ptrIN5arrow5FieldEEaSERKS2_.exit.i.i.i.i.i36: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i35, %.lr.ph.i.i.i.i.i23
  %i.ec = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i26, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i25, i64 16
  %i.ee = add nsw i64 %.012.i.i.i.i.i24, -1
  %i.ef = icmp sgt i64 %.012.i.i.i.i.i24, 1
  br i1 %i.ef, label %.lr.ph.i.i.i.i.i23, label %_ZSt4copyIPKSt10shared_ptrIN5arrow5FieldEEPS3_ET0_T_S8_S7_.exit38.loopexit, !llvm.loop !38598

_ZSt4copyIPKSt10shared_ptrIN5arrow5FieldEEPS3_ET0_T_S8_S7_.exit38.loopexit: ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEaSERKS2_.exit.i.i.i.i.i36
  %.pre46 = load ptr, ptr %i.ay, align 8, !tbaa !38601
  br label %_ZSt4copyIPKSt10shared_ptrIN5arrow5FieldEEPS3_ET0_T_S8_S7_.exit38

_ZSt4copyIPKSt10shared_ptrIN5arrow5FieldEEPS3_ET0_T_S8_S7_.exit38: ; preds = %_ZSt4copyIPKSt10shared_ptrIN5arrow5FieldEEPS3_ET0_T_S8_S7_.exit38.loopexit, %_ZSt9__advanceIPKSt10shared_ptrIN5arrow5FieldEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.eg = phi ptr [ %.pre46, %_ZSt4copyIPKSt10shared_ptrIN5arrow5FieldEEPS3_ET0_T_S8_S7_.exit38.loopexit ], [ %i.az, %_ZSt9__advanceIPKSt10shared_ptrIN5arrow5FieldEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %.sink.i, %2
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKSt10shared_ptrIN5arrow5FieldEEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPKSt10shared_ptrIN5arrow5FieldEEPS3_ET0_T_S8_S7_.exit38, %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.eq, %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.eg, %_ZSt4copyIPKSt10shared_ptrIN5arrow5FieldEEPS3_ET0_T_S8_S7_.exit38 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ep, %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %.sink.i, %_ZSt4copyIPKSt10shared_ptrIN5arrow5FieldEEPS3_ET0_T_S8_S7_.exit38 ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !214 ; 2 uses
  %i.ej = load <2 x ptr>, ptr %.0810.i.i.i.i, align 8, !tbaa !215
  store <2 x ptr> %i.ej, ptr %.011.i.i.i.i, align 8, !tbaa !215
  %.not.i.i.i.i.i.i.i.i39 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i.i.i.i.i39, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 3 uses
  %i.el = load i8, ptr @__libc_single_threaded, align 1, !tbaa !216
  %.not.i.i.i.i.i.i.i.i.i40 = icmp eq i8 %i.el, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i40, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.em = load i32, ptr %i.ek, align 4, !tbaa !132
  %i.en = add nsw i32 %i.em, 1
  store i32 %i.en, ptr %i.ek, align 4, !tbaa !132
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.eo = atomicrmw volatile add ptr %i.ek, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.ar, %bb.aq, %.lr.ph.i.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ep, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKSt10shared_ptrIN5arrow5FieldEEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !38594

_ZSt22__uninitialized_copy_aIPKSt10shared_ptrIN5arrow5FieldEEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i, %_ZSt4copyIPKSt10shared_ptrIN5arrow5FieldEEPS3_ET0_T_S8_S7_.exit38
  %.0.lcssa.i.i.i.i = phi ptr [ %i.eg, %_ZSt4copyIPKSt10shared_ptrIN5arrow5FieldEEPS3_ET0_T_S8_S7_.exit38 ], [ %i.eq, %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.ay, align 8, !tbaa !38601
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE15_M_erase_at_endEPS3_.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE15_M_erase_at_endEPS3_.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i, %_ZSt4copyIPKSt10shared_ptrIN5arrow5FieldEEPS3_ET0_T_S8_S7_.exit, %_ZSt22__uninitialized_copy_aIPKSt10shared_ptrIN5arrow5FieldEEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow15BaseListBuilderINS_8ListTypeEE12AppendValuesEPKilPKh(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(232) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %5 = alloca %class.anon.1514, align 8           ; 6 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !240, !noalias !38606 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !177, !noalias !38606
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !noalias !38606
  %i.h = tail call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !38606, !inline_history !21
  %i.i = add nsw i64 %i.h, %3                     ; 2 uses
  %.not.i = icmp sgt i64 %i.i, %i.d
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit14.thread

_ZN5arrow6StatusD2Ev.exit14.thread:               ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.j = shl nsw i64 %i.d, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.i, i64 %i.j)
  %i.k = load ptr, ptr %1, align 8, !tbaa !177, !noalias !38606
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !noalias !38606
  call void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !21
  %.pr = load ptr, ptr %6, align 8, !tbaa !174    ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !174
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.n = icmp eq ptr %.pr, null
  br i1 %i.n, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit14.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.o = icmp eq ptr %4, null
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow12ArrayBuilder16UnsafeSetNotNullEl(ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %3)
  br label %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhl.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %4, ptr %i.a, align 8, !tbaa !386
  %i.p = icmp eq i64 %3, 0
  br i1 %i.p, label %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhl.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 0, ptr %i.b, align 8, !tbaa !239
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !209
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !284
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr %i.a, ptr %5, align 8, !tbaa !389
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.b, ptr %i.v, align 8, !tbaa !426
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.q, ptr %i.w, align 8, !tbaa !2306
  call void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_18TypedBufferBuilderIbvE12UnsafeAppendEPKhlEUlvE_EEvPhllOT_(ptr noundef %i.s, i64 noundef %i.u, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.x = load i64, ptr %i.t, align 8, !tbaa !284
  %i.y = add nsw i64 %i.x, %3
  store i64 %i.y, ptr %i.t, align 8, !tbaa !284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhl.exit.i

_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhl.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !238
  %i.ab = add nsw i64 %i.aa, %3
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !238
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !313
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 96
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !300
  br label %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhl.exit

_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhl.exit: ; preds = %bb.c, %_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendEPKhl.exit.i
  %i.af = shl i64 %3, 2                           ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !209
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !283
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 %i.aj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 1 %2, i64 %i.af, i1 false)
  %i.al = load i64, ptr %i.ai, align 8, !tbaa !283
  %i.am = add nsw i64 %i.al, %i.af
  store i64 %i.am, ptr %i.ai, align 8, !tbaa !283
  store ptr null, ptr %0, align 8, !tbaa !174, !alias.scope !38607
  br label %bb.f

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapEPKhl.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_18TypedBufferBuilderIbvE12UnsafeAppendEPKhlEUlvE_EEvPhllOT_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = srem i64 %1, 8                           ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !tbaa !216
  %i.f = trunc nsw i64 %i.d to i8
  %notmask = shl nsw i8 -1, %i.f
  %i.g = xor i8 %notmask, -1
  %i.h = and i8 %i.e, %i.g                        ; 2 uses
  %i.i = icmp sgt i64 %2, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %4 = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.d
  %5 = load i8, ptr %4, align 1, !tbaa !216
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2306
  %i.l = load ptr, ptr %3, align 8, !tbaa !38611, !nonnull !212, !align !213
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !386
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !38612, !nonnull !212, !align !213 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.03551 = phi i64 [ %2, %.lr.ph ], [ %i.aa, %bb.d ] ; 2 uses
  %.03650 = phi i8 [ %5, %.lr.ph ], [ %i.z, %bb.d ] ; 2 uses
  %.04049 = phi i8 [ %i.h, %.lr.ph ], [ %i.y, %bb.d ]
  %i.q = load i64, ptr %i.o, align 8, !tbaa !239  ; 2 uses
  %i.r = add nsw i64 %i.q, 1
  store i64 %i.r, ptr %i.o, align 8, !tbaa !239
  %i.s = getelementptr inbounds i8, ptr %i.m, i64 %i.q
  %i.t = load i8, ptr %i.s, align 1, !tbaa !216
  %.not46 = icmp eq i8 %i.t, 0                    ; 2 uses
  %i.u = zext i1 %.not46 to i64
  %i.v = load i64, ptr %i.p, align 8, !tbaa !313
  %i.w = add nsw i64 %i.v, %i.u
  store i64 %i.w, ptr %i.p, align 8, !tbaa !313
  %i.x = select i1 %.not46, i8 0, i8 %.03650
  %i.y = or i8 %i.x, %.04049                      ; 2 uses
  %i.z = shl i8 %.03650, 1                        ; 2 uses
  %i.aa = add nsw i64 %.03551, -1                 ; 2 uses
  %i.ab = icmp ne i8 %i.z, 0
  %i.ac = icmp samesign ugt i64 %.03551, 1
  %i.ad = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %i.ad, label %bb.d, label %._crit_edge, !llvm.loop !38608

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.040.lcssa = phi i8 [ %i.h, %bb.c ], [ %i.y, %bb.d ]
  %.035.lcssa = phi i64 [ %2, %bb.c ], [ %i.aa, %bb.d ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.040.lcssa, ptr %i.c, align 1, !tbaa !216
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %.038 = phi ptr [ %i.ae, %._crit_edge ], [ %i.c, %bb.b ] ; 2 uses
  %.1 = phi i64 [ %.035.lcssa, %._crit_edge ], [ %2, %bb.b ] ; 3 uses
  %i.af = icmp sgt i64 %.1, 7
  br i1 %i.af, label %.preheader48.lr.ph, label %._crit_edge55

.preheader48.lr.ph:                               ; preds = %bb.e
  %i.ag = lshr i64 %.1, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.preheader48

.preheader48:                                     ; preds = %.preheader48.lr.ph, %.preheader48
  %.in = phi i64 [ %i.ag, %.preheader48.lr.ph ], [ %i.cv, %.preheader48 ] ; 2 uses
  %.13954 = phi ptr [ %.038, %.preheader48.lr.ph ], [ %i.dk, %.preheader48 ] ; 2 uses
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !2306
  %i.ak = load ptr, ptr %3, align 8, !tbaa !38611, !nonnull !212, !align !213
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !386 ; 8 uses
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !38612, !nonnull !212, !align !213 ; 16 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 64 ; 16 uses
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !239 ; 2 uses
  %i.ap = add nsw i64 %i.ao, 1
  store i64 %i.ap, ptr %i.am, align 8, !tbaa !239
  %i.aq = getelementptr inbounds i8, ptr %i.al, i64 %i.ao
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !216
  %i.as = icmp ne i8 %i.ar, 0                     ; 2 uses
  %i.at = xor i1 %i.as, true
  %i.au = zext i1 %i.at to i64
  %i.av = load i64, ptr %i.an, align 8, !tbaa !313
  %i.aw = add nsw i64 %i.av, %i.au
  store i64 %i.aw, ptr %i.an, align 8, !tbaa !313
  %i.ax = zext i1 %i.as to i8
  %i.ay = load i64, ptr %i.am, align 8, !tbaa !239 ; 2 uses
  %i.az = add nsw i64 %i.ay, 1
  store i64 %i.az, ptr %i.am, align 8, !tbaa !239
  %i.ba = getelementptr inbounds i8, ptr %i.al, i64 %i.ay
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !216
  %.not69 = icmp eq i8 %i.bb, 0                   ; 2 uses
  %i.bc = zext i1 %.not69 to i64
  %i.bd = load i64, ptr %i.an, align 8, !tbaa !313
  %i.be = add nsw i64 %i.bd, %i.bc
  store i64 %i.be, ptr %i.an, align 8, !tbaa !313
  %i.bf = load i64, ptr %i.am, align 8, !tbaa !239 ; 2 uses
  %i.bg = add nsw i64 %i.bf, 1
  store i64 %i.bg, ptr %i.am, align 8, !tbaa !239
  %i.bh = getelementptr inbounds i8, ptr %i.al, i64 %i.bf
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !216
  %.not70 = icmp eq i8 %i.bi, 0                   ; 2 uses
  %i.bj = zext i1 %.not70 to i64
  %i.bk = load i64, ptr %i.an, align 8, !tbaa !313
  %i.bl = add nsw i64 %i.bk, %i.bj
  store i64 %i.bl, ptr %i.an, align 8, !tbaa !313
  %i.bm = load i64, ptr %i.am, align 8, !tbaa !239 ; 2 uses
  %i.bn = add nsw i64 %i.bm, 1
  store i64 %i.bn, ptr %i.am, align 8, !tbaa !239
  %i.bo = getelementptr inbounds i8, ptr %i.al, i64 %i.bm
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !216
  %.not71 = icmp eq i8 %i.bp, 0                   ; 2 uses
  %i.bq = zext i1 %.not71 to i64
  %i.br = load i64, ptr %i.an, align 8, !tbaa !313
  %i.bs = add nsw i64 %i.br, %i.bq
  store i64 %i.bs, ptr %i.an, align 8, !tbaa !313
  %i.bt = load i64, ptr %i.am, align 8, !tbaa !239 ; 2 uses
  %i.bu = add nsw i64 %i.bt, 1
  store i64 %i.bu, ptr %i.am, align 8, !tbaa !239
  %i.bv = getelementptr inbounds i8, ptr %i.al, i64 %i.bt
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !216
  %.not72 = icmp eq i8 %i.bw, 0                   ; 2 uses
  %i.bx = zext i1 %.not72 to i64
  %i.by = load i64, ptr %i.an, align 8, !tbaa !313
  %i.bz = add nsw i64 %i.by, %i.bx
  store i64 %i.bz, ptr %i.an, align 8, !tbaa !313
  %i.ca = load i64, ptr %i.am, align 8, !tbaa !239 ; 2 uses
  %i.cb = add nsw i64 %i.ca, 1
  store i64 %i.cb, ptr %i.am, align 8, !tbaa !239
  %i.cc = getelementptr inbounds i8, ptr %i.al, i64 %i.ca
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !216
  %.not73 = icmp eq i8 %i.cd, 0                   ; 2 uses
  %i.ce = zext i1 %.not73 to i64
  %i.cf = load i64, ptr %i.an, align 8, !tbaa !313
  %i.cg = add nsw i64 %i.cf, %i.ce
  store i64 %i.cg, ptr %i.an, align 8, !tbaa !313
  %i.ch = load i64, ptr %i.am, align 8, !tbaa !239 ; 2 uses
  %i.ci = add nsw i64 %i.ch, 1
  store i64 %i.ci, ptr %i.am, align 8, !tbaa !239
  %i.cj = getelementptr inbounds i8, ptr %i.al, i64 %i.ch
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !216
  %.not74 = icmp eq i8 %i.ck, 0                   ; 2 uses
  %i.cl = zext i1 %.not74 to i64
  %i.cm = load i64, ptr %i.an, align 8, !tbaa !313
  %i.cn = add nsw i64 %i.cm, %i.cl
  store i64 %i.cn, ptr %i.an, align 8, !tbaa !313
  %i.co = load i64, ptr %i.am, align 8, !tbaa !239 ; 2 uses
  %i.cp = add nsw i64 %i.co, 1
  store i64 %i.cp, ptr %i.am, align 8, !tbaa !239
  %i.cq = getelementptr inbounds i8, ptr %i.al, i64 %i.co
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !216
  %.not75 = icmp eq i8 %i.cr, 0                   ; 2 uses
  %i.cs = zext i1 %.not75 to i64
  %i.ct = load i64, ptr %i.an, align 8, !tbaa !313
  %i.cu = add nsw i64 %i.ct, %i.cs
  store i64 %i.cu, ptr %i.an, align 8, !tbaa !313
  %i.cv = add nsw i64 %.in, -1
  %i.cw = select i1 %.not69, i8 0, i8 2
  %i.cx = or disjoint i8 %i.cw, %i.ax
  %i.cy = select i1 %.not70, i8 0, i8 4
  %i.cz = or disjoint i8 %i.cx, %i.cy
  %i.da = select i1 %.not71, i8 0, i8 8
  %i.db = or disjoint i8 %i.cz, %i.da
  %i.dc = select i1 %.not72, i8 0, i8 16
  %i.dd = or disjoint i8 %i.db, %i.dc
  %i.de = select i1 %.not73, i8 0, i8 32
  %i.df = or disjoint i8 %i.dd, %i.de
  %i.dg = select i1 %.not74, i8 0, i8 64
  %i.dh = or i8 %i.df, %i.dg
  %i.di = select i1 %.not75, i8 0, i8 -128
  %i.dj = or i8 %i.dh, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %.13954, i64 1 ; 2 uses
  store i8 %i.dj, ptr %.13954, align 1, !tbaa !216
  %i.dl = icmp samesign ugt i64 %.in, 1
  br i1 %i.dl, label %.preheader48, label %._crit_edge55, !llvm.loop !38609

._crit_edge55:                                    ; preds = %.preheader48, %bb.e
  %.139.lcssa = phi ptr [ %.038, %bb.e ], [ %i.dk, %.preheader48 ]
  %i.dm = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.dm, 0
  br i1 %.not45, label %bb.g, label %.preheader

.preheader:                                       ; preds = %._crit_edge55
  %i.dn = icmp sgt i64 %i.dm, 0
  br i1 %i.dn, label %.lr.ph60, label %._crit_edge61

.lr.ph60:                                         ; preds = %.preheader
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !2306
  %i.dq = load ptr, ptr %3, align 8, !tbaa !38611, !nonnull !212, !align !213
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !386 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !38612, !nonnull !212, !align !213 ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 64 ; 6 uses
  %xtraiter = and i64 %i.dm, 1
  %i.dv = icmp eq i64 %i.dm, 1
  br i1 %i.dv, label %.epil.preheader, label %.lr.ph60.new

.lr.ph60.new:                                     ; preds = %.lr.ph60
  %unroll_iter = and i64 %i.dm, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph60.new
  %.13758 = phi i8 [ 1, %.lr.ph60.new ], [ %i.ep, %bb.f ] ; 3 uses
  %.14157 = phi i8 [ 0, %.lr.ph60.new ], [ %i.eo, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph60.new ], [ %niter.next.1, %bb.f ]
  %i.dw = load i64, ptr %i.dt, align 8, !tbaa !239 ; 2 uses
  %i.dx = add nsw i64 %i.dw, 1
  store i64 %i.dx, ptr %i.dt, align 8, !tbaa !239
  %i.dy = getelementptr inbounds i8, ptr %i.dr, i64 %i.dw
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !216
  %.not47 = icmp eq i8 %i.dz, 0                   ; 2 uses
  %i.ea = zext i1 %.not47 to i64
  %i.eb = load i64, ptr %i.du, align 8, !tbaa !313
  %i.ec = add nsw i64 %i.eb, %i.ea
end_hunk_0
