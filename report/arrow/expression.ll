inline.NumInlined: 7294
inline.NumDeleted: 3038
begin_hunk_0_@_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EED2Ev:bb.a
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #31, !inline_history !619
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !83
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #31, !inline_history !619
  br label %_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i, !prof !87

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #31
  br label %_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i

_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !134

_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5arrow7compute10ExpressionEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !130
  br label %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5arrow7compute10ExpressionESaIS2_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !132
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #32
  br label %_ZNSt12_Vector_baseIN5arrow7compute10ExpressionESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN5arrow7compute10ExpressionESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute10ExpressionES2_EvT_S4_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute28ReplaceFieldsWithKnownValuesERKNS0_16KnownFieldValuesENS0_10ExpressionE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.155") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr nofree noundef nonnull captures(none) %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %4 = alloca %"class.arrow::compute::Expression", align 16 ; 4 uses
  %5 = alloca %class.anon.247, align 8            ; 5 uses
  %i.a = tail call noundef zeroext i1 @_ZNK5arrow7compute10Expression7IsBoundEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN5arrow6Status8FromArgsIJRA61_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(61) @.str.20)
  call void @_ZN5arrow6ResultINS_7compute10ExpressionEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #31
  %i.b = load ptr, ptr %3, align 8, !tbaa !274    ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c, !prof !290

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !284, !range !189, !noundef !66
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #31
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load <2 x ptr>, ptr %2, align 8, !tbaa !94
  store ptr null, ptr %i.f, align 8, !tbaa !79
  store <2 x ptr> %i.g, ptr %4, align 16, !tbaa !94
  store ptr null, ptr %2, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr %1, ptr %5, align 8, !tbaa !620
  invoke fastcc void @"_ZN5arrow7compute16ModifyExpressionIZNS0_28ReplaceFieldsWithKnownValuesERKNS0_16KnownFieldValuesENS0_10ExpressionEE3$_0ZNS0_28ReplaceFieldsWithKnownValuesES4_S5_E3$_1EENS_6ResultIS5_EES5_RKT_RKT0_"(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !79   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN5arrow7compute10ExpressionD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.j, align 8, !tbaa !80
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !82
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !83
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #31, !inline_history !300
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !83
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #31, !inline_history !300
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi i32 [ %i.m, %bb.j ], [ %i.w, %bb.k ]
  %i.x = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.x, label %bb.l, label %_ZN5arrow7compute10ExpressionD2Ev.exit, !prof !87

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #31
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit

bb.m:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @_ZN5arrow7compute10ExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #31
  resume { ptr, i32 } %i.y

_ZN5arrow7compute10ExpressionD2Ev.exit:           ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h, %bb.f, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN5arrow7compute16ModifyExpressionIZNS0_28ReplaceFieldsWithKnownValuesERKNS0_16KnownFieldValuesENS0_10ExpressionEE3$_0ZNS0_28ReplaceFieldsWithKnownValuesES4_S5_E3$_1EENS_6ResultIS5_EES5_RKT_RKT0_"(ptr dead_on_unwind noalias writable align 8 %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.365, align 1            ; 3 uses
  %4 = alloca %class.anon.365, align 1            ; 3 uses
  %5 = alloca %class.anon.365, align 1            ; 3 uses
  %6 = alloca %class.anon.365, align 1            ; 3 uses
  %7 = alloca %"struct.arrow::Datum", align 16    ; 9 uses
  %8 = alloca %class.anon.365, align 1            ; 3 uses
  %9 = alloca %class.anon.444, align 8            ; 4 uses
  %10 = alloca %class.anon.365, align 1           ; 3 uses
  %11 = alloca %class.anon.365, align 1           ; 3 uses
  %12 = alloca %"struct.arrow::Datum", align 16   ; 9 uses
  %13 = alloca %class.anon.450, align 8           ; 5 uses
  %14 = alloca %"struct.arrow::Datum", align 16   ; 21 uses
  %15 = alloca %"class.arrow::compute::Expression", align 16 ; 7 uses
  %16 = alloca %"struct.arrow::Datum", align 8    ; 8 uses
  %17 = alloca %"class.arrow::Result.213", align 8 ; 11 uses
  %18 = alloca %"struct.arrow::TypeHolder", align 8 ; 9 uses
  %19 = alloca %"class.std::shared_ptr.16", align 8 ; 9 uses
  %20 = alloca %"class.arrow::compute::CastOptions", align 8 ; 7 uses
  %21 = alloca %"struct.arrow::TypeHolder", align 8 ; 7 uses
  %22 = alloca %"struct.arrow::Datum", align 16   ; 6 uses
  %23 = alloca %"class.arrow::Result.206", align 8 ; 12 uses
  %24 = alloca %"class.std::shared_ptr.210", align 16 ; 9 uses
  %25 = alloca %"struct.arrow::Datum", align 16   ; 7 uses
  %26 = alloca %"class.std::shared_ptr.744", align 16 ; 7 uses
  %27 = alloca %"class.std::shared_ptr.25", align 8 ; 7 uses
  %28 = alloca %"class.std::shared_ptr.210", align 16 ; 7 uses
  %29 = alloca %"class.arrow::Result.213", align 8 ; 14 uses
  %30 = alloca %"struct.arrow::TypeHolder", align 8 ; 8 uses
  %31 = alloca %"class.std::shared_ptr.16", align 8 ; 6 uses
  %32 = alloca %"class.arrow::compute::CastOptions", align 8 ; 10 uses
  %33 = alloca %"struct.arrow::TypeHolder", align 8 ; 7 uses
  %34 = alloca %"struct.arrow::Datum", align 16   ; 6 uses
  %35 = alloca %"class.arrow::compute::Expression", align 16 ; 7 uses
  %36 = alloca %"struct.arrow::Datum", align 8    ; 8 uses
  %37 = alloca %"class.arrow::Result.155", align 8 ; 21 uses
  %38 = alloca %"class.arrow::compute::Expression", align 8 ; 7 uses
  %39 = alloca %"class.std::vector", align 16     ; 14 uses
  %40 = alloca %"class.arrow::Result.155", align 8 ; 19 uses
  %41 = alloca %"class.arrow::compute::Expression", align 16 ; 4 uses
  %42 = alloca %"class.arrow::compute::Expression", align 8 ; 8 uses
  %43 = alloca %"struct.arrow::compute::Expression::Call", align 8 ; 25 uses
  %44 = alloca %"class.arrow::compute::Expression", align 16 ; 3 uses
  %45 = alloca %"struct.arrow::compute::Expression::Call", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #31
  %i.a = load ptr, ptr %1, align 8, !tbaa !63     ; 6 uses
  store ptr %i.a, ptr %38, align 8, !tbaa !63
  %i.b = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !79   ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !79
  store ptr %i.d, ptr %i.b, align 8, !tbaa !79
  store ptr null, ptr %1, align 8, !tbaa !63
  tail call void @llvm.experimental.noalias.scope.decl(metadata !621)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  call void @llvm.lifetime.start.p0(ptr nonnull %28)
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  call void @llvm.lifetime.start.p0(ptr nonnull %36)
  %.not.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i, label %.thread82, label %_ZSt6get_ifIN5arrow7compute10Expression9ParameterEJNS0_5DatumES3_NS2_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i

_ZSt6get_ifIN5arrow7compute10Expression9ParameterEJNS0_5DatumES3_NS2_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.f = load i8, ptr %i.e, align 8, !tbaa !67, !noalias !621
  %i.g = icmp eq i8 %i.f, 1
  br i1 %i.g, label %_ZNK5arrow7compute10Expression9field_refEv.exit.i, label %.thread82

_ZNK5arrow7compute10Expression9field_refEv.exit.i: ; preds = %_ZSt6get_ifIN5arrow7compute10Expression9ParameterEJNS0_5DatumES3_NS2_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i
  %i.h = load ptr, ptr %2, align 8, !tbaa !624, !noalias !621, !nonnull !66, !align !239 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !424, !noalias !621
  %.not.not.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZNK5arrow7compute10Expression9field_refEv.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.b
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.k, %bb.b ], [ %.sroa.06.0.i.i.i, %.noexc ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !423, !noalias !621 ; 4 uses
  %i.l = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %i.l, label %.thread82, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.n = invoke noundef zeroext i1 @_ZNK5arrow8FieldRef6EqualsERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.m)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.d
  br i1 %i.n, label %_ZNKSt13unordered_mapIN5arrow8FieldRefENS0_5DatumENS1_4HashESt8equal_toIS1_ESaISt4pairIKS1_S2_EEE4findERS7_.exit.thread123.i, label %bb.c, !llvm.loop !626

bb.e:                                             ; preds = %_ZNK5arrow7compute10Expression9field_refEv.exit.i
  %i.o = invoke noundef i64 @_ZNK5arrow8FieldRef4hashEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc51:                                         ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !421, !noalias !621
  %i.r = urem i64 %i.o, %i.q                      ; 2 uses
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !413, !noalias !621
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !430, !noalias !621 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %.thread82, label %bb.f

bb.f:                                             ; preds = %.noexc51
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !423, !noalias !621 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !428, !noalias !621
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.w = phi i64 [ %.pre.i.i.i.i.i, %bb.f ], [ %i.ad, %bb.h ]
  %.015.i.i.i.i.i = phi ptr [ %i.u, %bb.f ], [ %.0.i.i.i.i.i, %bb.h ]
  %.0.i.i.i.i.i = phi ptr [ %i.v, %bb.f ], [ %i.aa, %bb.h ] ; 3 uses
  %i.x = icmp eq i64 %i.o, %i.w
  br i1 %i.x, label %_ZNKSt8__detail15_Hashtable_baseIN5arrow8FieldRefESt4pairIKS2_NS1_5DatumEENS_10_Select1stESt8equal_toIS2_ENS2_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseIN5arrow8FieldRefESt4pairIKS2_NS1_5DatumEENS_10_Select1stESt8equal_toIS2_ENS2_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN5arrow8FieldRefESt4pairIKS2_NS1_5DatumEENS_10_Select1stESt8equal_toIS2_ENS2_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i.i.i.i: ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 8
  %i.z = invoke noundef zeroext i1 @_ZNK5arrow8FieldRef6EqualsERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.y)
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit

.noexc52:                                         ; preds = %_ZNKSt8__detail15_Hashtable_baseIN5arrow8FieldRefESt4pairIKS2_NS1_5DatumEENS_10_Select1stESt8equal_toIS2_ENS2_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i.i.i.i
  br i1 %i.z, label %_ZNKSt13unordered_mapIN5arrow8FieldRefENS0_5DatumENS1_4HashESt8equal_toIS1_ESaISt4pairIKS1_S2_EEE4findERS7_.exit.i, label %_ZNKSt8__detail15_Hashtable_baseIN5arrow8FieldRefESt4pairIKS2_NS1_5DatumEENS_10_Select1stESt8equal_toIS2_ENS2_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseIN5arrow8FieldRefESt4pairIKS2_NS1_5DatumEENS_10_Select1stESt8equal_toIS2_ENS2_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i.i: ; preds = %.noexc52, %bb.g
  %i.aa = load ptr, ptr %.0.i.i.i.i.i, align 8, !tbaa !423, !noalias !621 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not18.i.i.i.i.i, label %.thread82, label %bb.h

bb.h:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseIN5arrow8FieldRefESt4pairIKS2_NS1_5DatumEENS_10_Select1stESt8equal_toIS2_ENS2_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i.i
  %i.ab = load i64, ptr %i.p, align 8, !tbaa !421, !noalias !621
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !428, !noalias !621 ; 2 uses
  %i.ae = urem i64 %i.ad, %i.ab
  %.not19.i.i.i.i.i = icmp eq i64 %i.ae, %i.r
  br i1 %.not19.i.i.i.i.i, label %bb.g, label %.thread82, !llvm.loop !434

_ZNKSt13unordered_mapIN5arrow8FieldRefENS0_5DatumENS1_4HashESt8equal_toIS1_ESaISt4pairIKS1_S2_EEE4findERS7_.exit.i: ; preds = %.noexc52
  %i.af = load ptr, ptr %.015.i.i.i.i.i, align 8, !tbaa !423, !noalias !621 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.thread82, label %_ZNKSt13unordered_mapIN5arrow8FieldRefENS0_5DatumENS1_4HashESt8equal_toIS1_ESaISt4pairIKS1_S2_EEE4findERS7_.exit.thread123.i

_ZNKSt13unordered_mapIN5arrow8FieldRefENS0_5DatumENS1_4HashESt8equal_toIS1_ESaISt4pairIKS1_S2_EEE4findERS7_.exit.thread123.i: ; preds = %.noexc, %_ZNKSt13unordered_mapIN5arrow8FieldRefENS0_5DatumENS1_4HashESt8equal_toIS1_ESaISt4pairIKS1_S2_EEE4findERS7_.exit.i
  %.sroa.06.1.i.i125.i = phi ptr [ %i.af, %_ZNKSt13unordered_mapIN5arrow8FieldRefENS0_5DatumENS1_4HashESt8equal_toIS1_ESaISt4pairIKS1_S2_EEE4findERS7_.exit.i ], [ %.sroa.06.0.i.i.i, %.noexc ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31, !noalias !621
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i125.i, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  store i8 -1, ptr %i.ai, align 16, !tbaa !69, !noalias !621
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31, !noalias !621
  store ptr %14, ptr %13, align 8, !tbaa !437, !noalias !621
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEC1ERKSI_EUlOT_T0_E_JRKSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSN_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_ZN5arrow5DatumC2ERKS0_.exit.i unwind label %bb.i, !noalias !621

bb.i:                                             ; preds = %_ZNKSt13unordered_mapIN5arrow8FieldRefENS0_5DatumENS1_4HashESt8equal_toIS1_ESaISt4pairIKS1_S2_EEE4findERS7_.exit.thread123.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31, !noalias !621
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(24) %14) #31, !noalias !621
  br label %.body

_ZN5arrow5DatumC2ERKS0_.exit.i:                   ; preds = %_ZNKSt13unordered_mapIN5arrow8FieldRefENS0_5DatumENS1_4HashESt8equal_toIS1_ESaISt4pairIKS1_S2_EEE4findERS7_.exit.thread123.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #31, !noalias !621
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i125.i, i64 64
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !69, !noalias !621
  store i8 %i.al, ptr %i.ai, align 16, !tbaa !69, !noalias !621
  %i.am = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %_ZNK5arrow7compute10Expression7literalEv.exit.i.i unwind label %bb.q, !noalias !621

_ZNK5arrow7compute10Expression7literalEv.exit.i.i: ; preds = %_ZN5arrow5DatumC2ERKS0_.exit.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !139, !noalias !621
  %46 = load ptr, ptr %38, align 8, !tbaa !63, !noalias !621, !nonnull !66, !noundef !66 ; 10 uses
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 144 ; 3 uses
  %i.ao = load i8, ptr %47, align 8, !tbaa !67, !noalias !621
  switch i8 %i.ao, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i.i [
    i8 0, label %bb.j
    i8 1, label %bb.k
  ]

bb.j:                                             ; preds = %_ZNK5arrow7compute10Expression7literalEv.exit.i.i
  %i.ap = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %46)
          to label %_ZNK5arrow7compute10Expression4typeEv.exit.i unwind label %bb.q, !noalias !621

bb.k:                                             ; preds = %_ZNK5arrow7compute10Expression7literalEv.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %46, i64 40
  br label %_ZNK5arrow7compute10Expression4typeEv.exit.i

_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i.i: ; preds = %_ZNK5arrow7compute10Expression7literalEv.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %46, i64 120
  br label %_ZNK5arrow7compute10Expression4typeEv.exit.i

_ZNK5arrow7compute10Expression4typeEv.exit.i:     ; preds = %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i.i, %bb.k, %bb.j
  %.2.i.in.i = phi ptr [ %i.aq, %bb.k ], [ %i.ar, %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i.i ], [ %i.ap, %bb.j ]
  %.2.i.i = load ptr, ptr %.2.i.in.i, align 8, !tbaa !255, !noalias !621
  %i.as = invoke noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %i.an, ptr noundef nonnull align 8 dereferenceable(72) %.2.i.i, i1 noundef zeroext false)
          to label %bb.l unwind label %bb.q, !noalias !621

bb.l:                                             ; preds = %_ZNK5arrow7compute10Expression4typeEv.exit.i
  br i1 %i.as, label %bb.m, label %_ZNK5arrow7compute10Expression7literalEv.exit.i66.i

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31, !noalias !621
  %i.at = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.au = load i8, ptr %i.ai, align 16, !tbaa !69, !noalias !621 ; 3 uses
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %_ZN5arrow5DatumC2EOS0_.exit.thread.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i

_ZN5arrow5DatumC2EOS0_.exit.thread.i:             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !621
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 16
  br label %_ZN5arrow5DatumC2EOS0_.exit.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.az = load <2 x ptr>, ptr %14, align 16, !tbaa !94, !noalias !621
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !621
  store ptr null, ptr %i.ax, align 8, !tbaa !79, !noalias !627
  store <2 x ptr> %i.az, ptr %12, align 16, !tbaa !94, !noalias !627
  store ptr null, ptr %16, align 8, !tbaa !94, !noalias !627
  br label %_ZN5arrow5DatumC2EOS0_.exit.i.i

_ZN5arrow5DatumC2EOS0_.exit.i.i:                  ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i, %_ZN5arrow5DatumC2EOS0_.exit.thread.i
  %i.ba = phi ptr [ %i.aw, %_ZN5arrow5DatumC2EOS0_.exit.thread.i ], [ %i.ay, %.sink.split.i.i.i.i.i.i.i.i.i.i ]
  store i8 %i.au, ptr %i.at, align 8, !tbaa !69, !noalias !621
  store i8 %i.au, ptr %i.ba, align 8, !tbaa !69, !noalias !627
  invoke void @_ZN5arrow7compute10ExpressionC1ENS_5DatumE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull %12)
          to label %bb.n unwind label %.body.i, !noalias !621

bb.n:                                             ; preds = %_ZN5arrow5DatumC2EOS0_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31, !noalias !627
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %_ZN5arrow7compute10ExpressionD2Ev.exit.i unwind label %bb.o, !noalias !621

bb.o:                                             ; preds = %bb.n
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #29, !noalias !621
  unreachable

.body.i:                                          ; preds = %_ZN5arrow5DatumC2EOS0_.exit.i.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #31, !noalias !621
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #31, !noalias !621
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31, !noalias !621
  br label %bb.dc

_ZN5arrow7compute10ExpressionD2Ev.exit.i:         ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31, !noalias !627
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !621
  store ptr null, ptr %37, align 8, !tbaa !274, !alias.scope !621
  %i.be = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bg = load <2 x ptr>, ptr %15, align 16, !tbaa !94, !noalias !621
  store ptr null, ptr %i.bf, align 8, !tbaa !79, !noalias !621
  store <2 x ptr> %i.bg, ptr %i.be, align 8, !tbaa !94, !alias.scope !621
  store ptr null, ptr %15, align 16, !tbaa !63, !noalias !621
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31, !noalias !621
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %_ZN5arrow5DatumD2Ev.exit.i unwind label %bb.p, !noalias !621

bb.p:                                             ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit.i
  %i.bh = landingpad { ptr, i32 }
          catch ptr null
  %i.bi = extractvalue { ptr, i32 } %i.bh, 0
  call void @__clang_call_terminate(ptr %i.bi) #29, !noalias !621
  unreachable

_ZN5arrow5DatumD2Ev.exit.i:                       ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31, !noalias !621
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #31, !noalias !621
  br label %bb.da

bb.q:                                             ; preds = %bb.t, %bb.r, %_ZNK5arrow7compute10Expression4typeEv.exit.i, %bb.j, %_ZN5arrow5DatumC2ERKS0_.exit.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

_ZNK5arrow7compute10Expression7literalEv.exit.i66.i: ; preds = %bb.l
  %i.bk = load i8, ptr %47, align 8, !tbaa !67, !noalias !621
  switch i8 %i.bk, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i68.i [
    i8 0, label %bb.r
    i8 1, label %bb.s
  ]

bb.r:                                             ; preds = %_ZNK5arrow7compute10Expression7literalEv.exit.i66.i
  %i.bl = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %46)
          to label %_ZNK5arrow7compute10Expression4typeEv.exit70.i unwind label %bb.q, !noalias !621

bb.s:                                             ; preds = %_ZNK5arrow7compute10Expression7literalEv.exit.i66.i
  %i.bm = getelementptr inbounds nuw i8, ptr %46, i64 40
  br label %_ZNK5arrow7compute10Expression4typeEv.exit70.i

_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i68.i: ; preds = %_ZNK5arrow7compute10Expression7literalEv.exit.i66.i
  %i.bn = getelementptr inbounds nuw i8, ptr %46, i64 120
  br label %_ZNK5arrow7compute10Expression4typeEv.exit70.i

_ZNK5arrow7compute10Expression4typeEv.exit70.i:   ; preds = %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i68.i, %bb.s, %bb.r
  %.2.i67.in.i = phi ptr [ %i.bm, %bb.s ], [ %i.bn, %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i68.i ], [ %i.bl, %bb.r ]
  %.2.i67.i = load ptr, ptr %.2.i67.in.i, align 8, !tbaa !255, !noalias !621
  %i.bo = getelementptr inbounds nuw i8, ptr %.2.i67.i, i64 40
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !196, !noalias !621
  %i.bq = icmp eq i32 %i.bp, 29
  br i1 %i.bq, label %bb.t, label %.critedge.i

bb.t:                                             ; preds = %_ZNK5arrow7compute10Expression4typeEv.exit70.i
  %i.br = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.u unwind label %bb.q, !noalias !621

bb.u:                                             ; preds = %bb.t
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !139, !noalias !621
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !196, !noalias !621
  %.not43.i = icmp eq i32 %i.bu, 29
  br i1 %.not43.i, label %.critedge.i, label %_ZNK5arrow7compute10Expression7literalEv.exit.i72.i

_ZNK5arrow7compute10Expression7literalEv.exit.i72.i: ; preds = %bb.u
  %i.bv = load i8, ptr %47, align 8, !tbaa !67, !noalias !621
  switch i8 %i.bv, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i74.i [
    i8 0, label %bb.v
    i8 1, label %bb.w
  ]

bb.v:                                             ; preds = %_ZNK5arrow7compute10Expression7literalEv.exit.i72.i
  %i.bw = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %46)
          to label %_ZNK5arrow7compute10Expression4typeEv.exit76.i unwind label %bb.af, !noalias !621

bb.w:                                             ; preds = %_ZNK5arrow7compute10Expression7literalEv.exit.i72.i
  %i.bx = getelementptr inbounds nuw i8, ptr %46, i64 40
  br label %_ZNK5arrow7compute10Expression4typeEv.exit76.i

_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i74.i: ; preds = %_ZNK5arrow7compute10Expression7literalEv.exit.i72.i
  %i.by = getelementptr inbounds nuw i8, ptr %46, i64 120
  br label %_ZNK5arrow7compute10Expression4typeEv.exit76.i

_ZNK5arrow7compute10Expression4typeEv.exit76.i:   ; preds = %bb.v, %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i74.i, %bb.w
  %.2.i73.i.in = phi ptr [ %i.bx, %bb.w ], [ %i.by, %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i74.i ], [ %i.bw, %bb.v ]
  %.2.i73.i = load ptr, ptr %.2.i73.i.in, align 8, !tbaa !255, !noalias !621 ; 2 uses
  %i.bz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.x unwind label %bb.af, !noalias !621

bb.x:                                             ; preds = %_ZNK5arrow7compute10Expression4typeEv.exit76.i
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !139, !noalias !621
  %i.cb = getelementptr inbounds nuw i8, ptr %.2.i73.i, i64 88 ; 2 uses
  %i.cc = invoke noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKSt10shared_ptrIS0_Eb(ptr noundef nonnull align 8 dereferenceable(72) %i.ca, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i1 noundef zeroext false)
          to label %bb.y unwind label %bb.af, !noalias !621

bb.y:                                             ; preds = %bb.x
  br i1 %i.cc, label %bb.al, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31, !noalias !621
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31, !noalias !621
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !139, !noalias !621 ; 3 uses
  store ptr %i.cd, ptr %19, align 8, !tbaa !139, !noalias !621
  %i.ce = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.2.i73.i, i64 96
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !79, !noalias !621 ; 4 uses
  store ptr %i.cg, ptr %i.ce, align 8, !tbaa !79, !noalias !621
  %.not.i.i.i77.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i77.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 3 uses
  %i.ci = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86, !noalias !621
  %.not.i.i.i.i78.i = icmp eq i8 %i.ci, 0
  br i1 %.not.i.i.i.i78.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cj = load i32, ptr %i.ch, align 4, !tbaa !3, !noalias !621
  %i.ck = add nsw i32 %i.cj, 1
  store i32 %i.ck, ptr %i.ch, align 4, !tbaa !3, !noalias !621
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.cl = atomicrmw volatile add ptr %i.ch, i32 1 acq_rel, align 4, !noalias !621 ; 0 uses
  %.pre.i = load ptr, ptr %19, align 8, !tbaa !139, !noalias !621
  %.pre134.i = load ptr, ptr %i.ce, align 8, !tbaa !79, !noalias !621
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i: ; preds = %bb.ac, %bb.ab, %bb.z
  %i.cm = phi ptr [ null, %bb.z ], [ %i.cg, %bb.ab ], [ %.pre134.i, %bb.ac ]
  %i.cn = phi ptr [ %i.cd, %bb.z ], [ %i.cd, %bb.ab ], [ %.pre.i, %bb.ac ] ; 2 uses
  store ptr %i.cn, ptr %18, align 8, !tbaa !299, !noalias !621
  %i.co = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !139, !noalias !621
  %i.cp = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr null, ptr %i.ce, align 8, !tbaa !79, !noalias !621
  store ptr %i.cm, ptr %i.cp, align 8, !tbaa !79, !noalias !621
  store ptr null, ptr %19, align 8, !tbaa !139, !noalias !621
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #31, !noalias !621
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false), !noalias !621
  invoke void @_ZN5arrow7compute11CastOptions4SafeENS_10TypeHolderE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::compute::CastOptions") align 8 %20, ptr noundef nonnull %21)
          to label %bb.ad unwind label %bb.ag, !noalias !621

bb.ad:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i
  invoke void @_ZN5arrow7compute4CastERKNS_5DatumERKNS_10TypeHolderERKNS0_11CastOptionsEPNS0_11ExecContextE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.213") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(46) %20, ptr noundef null)
          to label %bb.ae unwind label %bb.ah, !noalias !621

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN5arrow7compute11CastOptionsD2Ev(ptr noundef nonnull align 8 dereferenceable(46) %20) #31, !noalias !621
  call void @_ZN5arrow10TypeHolderD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #31, !noalias !621
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31, !noalias !621
  call void @_ZN5arrow10TypeHolderD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #31, !noalias !621
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %19) #31, !noalias !621
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31, !noalias !621
  %i.cq = load ptr, ptr %17, align 8, !tbaa !274, !noalias !621
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.aj, label %bb.ak, !prof !290

bb.af:                                            ; preds = %bb.x, %_ZNK5arrow7compute10Expression4typeEv.exit76.i, %bb.v
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.ag:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ad
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute11CastOptionsD2Ev(ptr noundef nonnull align 8 dereferenceable(46) %20) #31, !noalias !621
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn.i = phi { ptr, i32 } [ %i.cu, %bb.ah ], [ %i.ct, %bb.ag ]
  call void @_ZN5arrow10TypeHolderD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #31, !noalias !621
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #31, !noalias !621
  call void @_ZN5arrow10TypeHolderD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #31, !noalias !621
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %19) #31, !noalias !621
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31, !noalias !621
  br label %bb.dc

bb.aj:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #31, !noalias !621
  call void @llvm.experimental.noalias.scope.decl(metadata !630)
  call void @llvm.experimental.noalias.scope.decl(metadata !633)
  %i.cv = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !69, !noalias !636 ; 2 uses
  %i.cx = icmp eq i8 %i.cw, 0
  br i1 %i.cx, label %.thread.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.aj
  %i.cy = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.da = load <2 x ptr>, ptr %i.cy, align 8, !tbaa !94, !noalias !636
  store ptr null, ptr %i.cz, align 8, !tbaa !79, !noalias !636
  store <2 x ptr> %i.da, ptr %22, align 16, !tbaa !94, !alias.scope !637, !noalias !621
  store ptr null, ptr %i.cy, align 8, !tbaa !94, !noalias !636
  br label %.thread.i

.thread.i:                                        ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i, %bb.aj
  %i.db = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i8 %i.cw, ptr %i.db, align 16, !tbaa !69, !alias.scope !637, !noalias !621
  %i.dc = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5arrow5DatumaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %22) #31, !noalias !621 ; 0 uses
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #31, !noalias !621
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31, !noalias !621
  call void @_ZN5arrow6ResultINS_5DatumEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %17) #31, !noalias !621
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31, !noalias !621
  br label %bb.al

bb.ak:                                            ; preds = %bb.ae
  call void @_ZN5arrow6ResultINS_7compute10ExpressionEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 8 dereferenceable(8) %17) #31
  call void @_ZN5arrow6ResultINS_5DatumEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %17) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31, !noalias !621
  br label %bb.da

bb.al:                                            ; preds = %.thread.i, %bb.y
  %i.dd = load i8, ptr %i.ai, align 16, !tbaa !69, !noalias !621
  %i.de = icmp eq i8 %i.dd, 1
  br i1 %i.de, label %bb.am, label %.critedge.i

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #31, !noalias !621
  %i.df = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum6scalarEv(ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.an unwind label %bb.aq, !noalias !621

bb.an:                                            ; preds = %bb.am
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !71, !noalias !621
  %i.dh = invoke noundef ptr @_ZN5arrow19default_memory_poolEv()
          to label %bb.ao unwind label %bb.aq, !noalias !621

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN5arrow19MakeArrayFromScalarERKNS_6ScalarElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.206") align 8 %23, ptr noundef nonnull align 8 dereferenceable(41) %i.dg, i64 noundef 1, ptr noundef %i.dh)
          to label %bb.ap unwind label %bb.aq, !noalias !621

bb.ap:                                            ; preds = %bb.ao
  %i.di = load ptr, ptr %23, align 8, !tbaa !274, !noalias !621
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.ar, label %bb.at, !prof !290

bb.aq:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #31, !noalias !621
  call void @llvm.experimental.noalias.scope.decl(metadata !638)
  call void @llvm.experimental.noalias.scope.decl(metadata !641)
  %i.dl = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.dn = load <2 x ptr>, ptr %i.dl, align 8, !tbaa !94, !noalias !644
  store ptr null, ptr %i.dm, align 8, !tbaa !79, !noalias !644
  store <2 x ptr> %i.dn, ptr %24, align 16, !tbaa !94, !alias.scope !645, !noalias !621
  store ptr null, ptr %i.dl, align 8, !tbaa !447, !noalias !644
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #31, !noalias !621
  invoke void @_ZN5arrow10MakeScalarIiNS_11CTypeTraitsIiEENS_11Int32ScalarES3_EESt10shared_ptrINS_6ScalarEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.25") align 8 %27, i32 noundef 0)
          to label %bb.as unwind label %bb.au, !noalias !621

bb.as:                                            ; preds = %bb.ar
  %i.do = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.dp = load <2 x ptr>, ptr %24, align 16, !tbaa !94, !noalias !621
  store ptr null, ptr %i.do, align 8, !tbaa !79, !noalias !621
  store <2 x ptr> %i.dp, ptr %28, align 16, !tbaa !94, !noalias !621
  store ptr null, ptr %24, align 16, !tbaa !447, !noalias !621
  invoke void @_ZN5arrow16DictionaryScalar4MakeESt10shared_ptrINS_6ScalarEES1_INS_5ArrayEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.744") align 8 %26, ptr noundef nonnull %27, ptr noundef nonnull %28)
          to label %.thread126.i unwind label %bb.av, !noalias !621

.thread126.i:                                     ; preds = %bb.as
  %i.dq = load <2 x ptr>, ptr %26, align 16, !tbaa !94, !noalias !621
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %26, i8 0, i64 16, i1 false), !noalias !621
  store <2 x ptr> %i.dq, ptr %25, align 16, !tbaa !94, !noalias !621
  %i.dr = getelementptr inbounds nuw i8, ptr %25, i64 16
  store i8 1, ptr %i.dr, align 16, !tbaa !69, !noalias !621
  %i.ds = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5arrow5DatumaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %25) #31, !noalias !621 ; 0 uses
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %25) #31, !noalias !621
  call void @_ZNSt12__shared_ptrIN5arrow16DictionaryScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %26) #31, !noalias !621
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %28) #31, !noalias !621
  call void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %27) #31, !noalias !621
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #31, !noalias !621
end_hunk_0
begin_hunk_1_@"_ZN5arrow7compute16ModifyExpressionIZNS0_28ReplaceFieldsWithKnownValuesERKNS0_16KnownFieldValuesENS0_10ExpressionEE3$_0ZNS0_28ReplaceFieldsWithKnownValuesES4_S5_E3$_1EENS_6ResultIS5_EES5_RKT_RKT0_":bb.a

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %.pn53.i = phi { ptr, i32 } [ %i.ic, %bb.cm ], [ %i.ib, %bb.cl ]
  call void @_ZN5arrow10TypeHolderD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %33) #31, !noalias !621
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #31, !noalias !621
  call void @_ZN5arrow10TypeHolderD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %30) #31, !noalias !621
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %31) #31, !noalias !621
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.ck
  %.pn53.pn.i = phi { ptr, i32 } [ %.pn53.i, %bb.cn ], [ %i.ia, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #31, !noalias !621
  br label %bb.dc

bb.cp:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #31, !noalias !621
  call void @llvm.experimental.noalias.scope.decl(metadata !665)
  call void @llvm.experimental.noalias.scope.decl(metadata !668)
  %i.id = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.ie = load i8, ptr %i.id, align 8, !tbaa !69, !noalias !671 ; 2 uses
  %i.if = icmp eq i8 %i.ie, 0
  br i1 %i.if, label %bb.cq, label %.sink.split.i.i.i.i.i.i.i.i.i.i100.i

.sink.split.i.i.i.i.i.i.i.i.i.i100.i:             ; preds = %bb.cp
  %i.ig = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.ii = load <2 x ptr>, ptr %i.ig, align 8, !tbaa !94, !noalias !671
  store ptr null, ptr %i.ih, align 8, !tbaa !79, !noalias !671
  store <2 x ptr> %i.ii, ptr %34, align 16, !tbaa !94, !alias.scope !672, !noalias !621
  store ptr null, ptr %i.ig, align 8, !tbaa !94, !noalias !671
  br label %bb.cq

bb.cq:                                            ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i100.i, %bb.cp
  %i.ij = getelementptr inbounds nuw i8, ptr %34, i64 16
  store i8 %i.ie, ptr %i.ij, align 16, !tbaa !69, !alias.scope !672, !noalias !621
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31, !noalias !621
  store ptr %14, ptr %9, align 8, !tbaa !499, !noalias !621
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEaSEOSI_EUlOT_T0_E_JRSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSM_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(24) %34)
          to label %_ZN5arrow5DatumaSEOS0_.exit.i unwind label %bb.cr, !noalias !621

bb.cr:                                            ; preds = %bb.cq
  %i.ik = landingpad { ptr, i32 }
          catch ptr null
  %i.il = extractvalue { ptr, i32 } %i.ik, 0
  call void @__clang_call_terminate(ptr %i.il) #29, !noalias !621
  unreachable

_ZN5arrow5DatumaSEOS0_.exit.i:                    ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31, !noalias !621
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31, !noalias !621
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(24) %34)
          to label %_ZN5arrow5DatumD2Ev.exit102.i unwind label %bb.cs, !noalias !621

bb.cs:                                            ; preds = %_ZN5arrow5DatumaSEOS0_.exit.i
  %i.im = landingpad { ptr, i32 }
          catch ptr null
  %i.in = extractvalue { ptr, i32 } %i.im, 0
  call void @__clang_call_terminate(ptr %i.in) #29, !noalias !621
  unreachable

_ZN5arrow5DatumD2Ev.exit102.i:                    ; preds = %_ZN5arrow5DatumaSEOS0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31, !noalias !621
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #31, !noalias !621
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #31, !noalias !621
  %i.io = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.ip = load i8, ptr %i.ai, align 16, !tbaa !69, !noalias !621 ; 3 uses
  %i.iq = icmp eq i8 %i.ip, 0
  br i1 %i.iq, label %_ZN5arrow5DatumC2EOS0_.exit104.thread.i, label %.sink.split.i.i.i.i.i.i.i.i.i105.i

_ZN5arrow5DatumC2EOS0_.exit104.thread.i:          ; preds = %_ZN5arrow5DatumD2Ev.exit102.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !621
  %i.ir = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %_ZN5arrow5DatumC2EOS0_.exit.i106.i

.sink.split.i.i.i.i.i.i.i.i.i105.i:               ; preds = %_ZN5arrow5DatumD2Ev.exit102.i
  %i.is = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.it = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.iu = load <2 x ptr>, ptr %14, align 16, !tbaa !94, !noalias !621
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !621
  store ptr null, ptr %i.is, align 8, !tbaa !79, !noalias !673
  store <2 x ptr> %i.iu, ptr %7, align 16, !tbaa !94, !noalias !673
  store ptr null, ptr %36, align 8, !tbaa !94, !noalias !673
  br label %_ZN5arrow5DatumC2EOS0_.exit.i106.i

_ZN5arrow5DatumC2EOS0_.exit.i106.i:               ; preds = %.sink.split.i.i.i.i.i.i.i.i.i105.i, %_ZN5arrow5DatumC2EOS0_.exit104.thread.i
  %i.iv = phi ptr [ %i.ir, %_ZN5arrow5DatumC2EOS0_.exit104.thread.i ], [ %i.it, %.sink.split.i.i.i.i.i.i.i.i.i105.i ]
  store i8 %i.ip, ptr %i.io, align 8, !tbaa !69, !noalias !621
  store i8 %i.ip, ptr %i.iv, align 8, !tbaa !69, !noalias !673
  invoke void @_ZN5arrow7compute10ExpressionC1ENS_5DatumE(ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef nonnull %7)
          to label %bb.ct unwind label %.body107.i, !noalias !621

bb.ct:                                            ; preds = %_ZN5arrow5DatumC2EOS0_.exit.i106.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31, !noalias !673
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %_ZN5arrow7compute10ExpressionD2Ev.exit114.i unwind label %bb.cu, !noalias !621

bb.cu:                                            ; preds = %bb.ct
  %i.iw = landingpad { ptr, i32 }
          catch ptr null
  %i.ix = extractvalue { ptr, i32 } %i.iw, 0
  call void @__clang_call_terminate(ptr %i.ix) #29, !noalias !621
  unreachable

.body107.i:                                       ; preds = %_ZN5arrow5DatumC2EOS0_.exit.i106.i
  %i.iy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #31, !noalias !621
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %36) #31, !noalias !621
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #31, !noalias !621
  call void @_ZN5arrow6ResultINS_5DatumEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %29) #31, !noalias !621
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #31, !noalias !621
  br label %bb.dc

_ZN5arrow7compute10ExpressionD2Ev.exit114.i:      ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31, !noalias !673
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !621
  store ptr null, ptr %37, align 8, !tbaa !274, !alias.scope !621
  %i.iz = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.ja = getelementptr inbounds nuw i8, ptr %35, i64 8
  %i.jb = load <2 x ptr>, ptr %35, align 16, !tbaa !94, !noalias !621
  store ptr null, ptr %i.ja, align 8, !tbaa !79, !noalias !621
  store <2 x ptr> %i.jb, ptr %i.iz, align 8, !tbaa !94, !alias.scope !621
  store ptr null, ptr %35, align 16, !tbaa !63, !noalias !621
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31, !noalias !621
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(24) %36)
          to label %_ZN5arrow5DatumD2Ev.exit115.i unwind label %bb.cv, !noalias !621

bb.cv:                                            ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit114.i
  %i.jc = landingpad { ptr, i32 }
          catch ptr null
  %i.jd = extractvalue { ptr, i32 } %i.jc, 0
  call void @__clang_call_terminate(ptr %i.jd) #29, !noalias !621
  unreachable

_ZN5arrow5DatumD2Ev.exit115.i:                    ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit114.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !621
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #31, !noalias !621
  br label %bb.cw

bb.cw:                                            ; preds = %_ZN5arrow5DatumD2Ev.exit115.i, %bb.cj
  %i.je = load ptr, ptr %29, align 8, !tbaa !274, !noalias !621 ; 2 uses
  %i.jf = icmp eq ptr %i.je, null
  br i1 %i.jf, label %bb.cx, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i.i, !prof !290

bb.cx:                                            ; preds = %bb.cw
  %i.jg = getelementptr inbounds nuw i8, ptr %29, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31, !noalias !621
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.jg)
          to label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i.i unwind label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.jh = landingpad { ptr, i32 }
          catch ptr null
  %i.ji = extractvalue { ptr, i32 } %i.jh, 0
  call void @__clang_call_terminate(ptr %i.ji) #29
  unreachable

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i.i:  ; preds = %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31, !noalias !621
  %.pr.i.i = load ptr, ptr %29, align 8, !tbaa !274, !noalias !621 ; 2 uses
  %.not.i.i116.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i116.i, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit.i, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i.i, !prof !283

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i.i, %bb.cw
  %i.jj = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i.i ], [ %i.je, %bb.cw ]
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 1
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !284, !range !189, !noundef !66
  %i.jm = trunc nuw i8 %i.jl to i1
  br i1 %i.jm, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit.i, label %bb.cz

bb.cz:                                            ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %29) #31
  br label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit.i

_ZN5arrow6ResultINS_5DatumEED2Ev.exit.i:          ; preds = %bb.cz, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i.i, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #31, !noalias !621
  br label %bb.da

bb.da:                                            ; preds = %_ZN5arrow6ResultINS_5DatumEED2Ev.exit.i, %bb.at, %bb.ak, %_ZN5arrow5DatumD2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31, !noalias !621
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.dd unwind label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.jn = landingpad { ptr, i32 }
          catch ptr null
  %i.jo = extractvalue { ptr, i32 } %i.jn, 0
  call void @__clang_call_terminate(ptr %i.jo) #29
  unreachable

bb.dc:                                            ; preds = %.body107.i, %bb.co, %bb.aw, %bb.aq, %bb.ai, %bb.af, %bb.q, %.body.i
  %.pn59.i = phi { ptr, i32 } [ %i.bd, %.body.i ], [ %i.dk, %bb.aq ], [ %i.bj, %bb.q ], [ %.pn.i, %bb.ai ], [ %i.cs, %bb.af ], [ %.pn53.pn.i, %bb.co ], [ %.pn48.i, %bb.aw ], [ %i.iy, %.body107.i ]
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #31, !noalias !621
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31, !noalias !621
  br label %.body

.thread82:                                        ; preds = %_ZNKSt8__detail15_Hashtable_baseIN5arrow8FieldRefESt4pairIKS2_NS1_5DatumEENS_10_Select1stESt8equal_toIS2_ENS2_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i.i, %bb.h, %bb.c, %bb.a, %_ZSt6get_ifIN5arrow7compute10Expression9ParameterEJNS0_5DatumES3_NS2_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i.i, %.noexc51, %_ZNKSt13unordered_mapIN5arrow8FieldRefENS0_5DatumENS1_4HashESt8equal_toIS1_ESaISt4pairIKS1_S2_EEE4findERS7_.exit.i
  store ptr null, ptr %37, align 8, !tbaa !274, !alias.scope !621
  %i.jp = getelementptr inbounds nuw i8, ptr %37, i64 8
  %48 = load ptr, ptr %38, align 8, !tbaa !63, !noalias !621
  store ptr %48, ptr %i.jp, align 8, !tbaa !63, !alias.scope !621
  %i.jq = getelementptr inbounds nuw i8, ptr %37, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !79, !noalias !621
  store ptr %i.d, ptr %i.jq, align 8, !tbaa !79, !alias.scope !621
  store ptr null, ptr %38, align 8, !tbaa !63, !noalias !621
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  call void @llvm.lifetime.end.p0(ptr nonnull %36)
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit

bb.dd:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31, !noalias !621
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31, !noalias !621
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !79  ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  call void @llvm.lifetime.end.p0(ptr nonnull %36)
  %.not.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i, label %_ZN5arrow7compute10ExpressionD2Ev.exit, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.jr = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 4 uses
  %i.js = load atomic i64, ptr %i.jr acquire, align 8 ; 2 uses
  %i.jt = icmp eq i64 %i.js, 4294967297
  %i.ju = trunc i64 %i.js to i32                  ; 2 uses
  br i1 %i.jt, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  store i32 0, ptr %i.jr, align 8, !tbaa !80
  %i.jv = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  store i32 0, ptr %i.jv, align 4, !tbaa !82
  %i.jw = load ptr, ptr %.pre, align 8, !tbaa !83
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.jy = load ptr, ptr %i.jx, align 8
  call void %i.jy(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #31, !inline_history !300
  %i.jz = load ptr, ptr %.pre, align 8, !tbaa !83
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  %i.kb = load ptr, ptr %i.ka, align 8
  call void %i.kb(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #31, !inline_history !300
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit

bb.dg:                                            ; preds = %bb.de
  %i.kc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i53 = icmp eq i8 %i.kc, 0
  br i1 %.not.i.i.i.i53, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.kd = add nsw i32 %i.ju, -1
  store i32 %i.kd, ptr %i.jr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i54

bb.di:                                            ; preds = %bb.dg
  %i.ke = atomicrmw volatile add ptr %i.jr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i54

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i54: ; preds = %bb.di, %bb.dh
  %.0.i.i.i.i.i55 = phi i32 [ %i.ju, %bb.dh ], [ %i.ke, %bb.di ]
  %i.kf = icmp eq i32 %.0.i.i.i.i.i55, 1
  br i1 %i.kf, label %bb.dj, label %_ZN5arrow7compute10ExpressionD2Ev.exit, !prof !87

bb.dj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i54
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #31
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit

_ZN5arrow7compute10ExpressionD2Ev.exit:           ; preds = %.thread82, %bb.dd, %bb.df, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i54, %bb.dj
  %i.kg = load ptr, ptr %37, align 8, !tbaa !274
  %i.kh = icmp eq ptr %i.kg, null
  br i1 %i.kh, label %bb.dl, label %bb.dk, !prof !290

bb.dk:                                            ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit
  call void @_ZN5arrow6ResultINS_7compute10ExpressionEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %37) #31
  br label %bb.gf

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt8__detail15_Hashtable_baseIN5arrow8FieldRefESt4pairIKS2_NS1_5DatumEENS_10_Select1stESt8equal_toIS2_ENS2_4HashENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS4_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i.i.i.i
  %lpad.loopexit12 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.e
  %lpad.loopexit.split-lp13 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.i, %bb.dc
  %eh.lpad-body = phi { ptr, i32 } [ %.pn59.i, %bb.dc ], [ %i.aj, %bb.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit12, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp13, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5arrow7compute10ExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %38) #31
  br label %bb.go

bb.dl:                                            ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit
  %i.ki = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 3 uses
  %i.kj = load <2 x ptr>, ptr %i.ki, align 8, !tbaa !94, !noalias !676
  %i.kk = load ptr, ptr %i.ki, align 8, !tbaa !63, !noalias !676
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ki, i8 0, i64 16, i1 false)
  %i.kl = load ptr, ptr %i.c, align 8, !tbaa !79  ; 8 uses
  store <2 x ptr> %i.kj, ptr %1, align 8, !tbaa !94
  %.not.i.i.i.i.i56 = icmp eq ptr %i.kl, null
  br i1 %.not.i.i.i.i.i56, label %_ZN5arrow7compute10ExpressionD2Ev.exit64, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8 ; 4 uses
  %i.kn = load atomic i64, ptr %i.km acquire, align 8 ; 2 uses
  %i.ko = icmp eq i64 %i.kn, 4294967297
  %i.kp = trunc i64 %i.kn to i32                  ; 2 uses
  br i1 %i.ko, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  store i32 0, ptr %i.km, align 8, !tbaa !80
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kl, i64 12
  store i32 0, ptr %i.kq, align 4, !tbaa !82
  %i.kr = load ptr, ptr %i.kl, align 8, !tbaa !83
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.kt = load ptr, ptr %i.ks, align 8
  call void %i.kt(ptr noundef nonnull align 8 dereferenceable(16) %i.kl) #31, !inline_history !345
  %i.ku = load ptr, ptr %i.kl, align 8, !tbaa !83
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 24
  %i.kw = load ptr, ptr %i.kv, align 8
  call void %i.kw(ptr noundef nonnull align 8 dereferenceable(16) %i.kl) #31, !inline_history !345
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit64thread-pre-split

bb.do:                                            ; preds = %bb.dm
  %i.kx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i57 = icmp eq i8 %i.kx, 0
  br i1 %.not.i.i.i.i.i.i57, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.ky = add nsw i32 %i.kp, -1
  store i32 %i.ky, ptr %i.km, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i58

bb.dq:                                            ; preds = %bb.do
  %i.kz = atomicrmw volatile add ptr %i.km, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i58

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i58: ; preds = %bb.dq, %bb.dp
  %.0.i.i.i.i.i.i.i59 = phi i32 [ %i.kp, %bb.dp ], [ %i.kz, %bb.dq ]
  %i.la = icmp eq i32 %.0.i.i.i.i.i.i.i59, 1
  br i1 %i.la, label %bb.dr, label %_ZN5arrow7compute10ExpressionD2Ev.exit64thread-pre-split, !prof !87

bb.dr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i58
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kl) #31
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit64thread-pre-split

_ZN5arrow7compute10ExpressionD2Ev.exit64thread-pre-split: ; preds = %bb.dn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i58, %bb.dr
  %.pr = load ptr, ptr %1, align 8, !tbaa !63
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit64

_ZN5arrow7compute10ExpressionD2Ev.exit64:         ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit64thread-pre-split, %bb.dl
  %i.lb = phi ptr [ %.pr, %_ZN5arrow7compute10ExpressionD2Ev.exit64thread-pre-split ], [ %i.kk, %bb.dl ] ; 6 uses
  %.not.i.i = icmp eq ptr %i.lb, null
  br i1 %.not.i.i, label %bb.ds, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i

_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i: ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit64
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 144
  %i.ld = load i8, ptr %i.lc, align 8, !tbaa !67
  %i.le = icmp eq i8 %i.ld, 2
  br i1 %i.le, label %_ZNK5arrow7compute10Expression4callEv.exit, label %bb.ds

bb.ds:                                            ; preds = %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i, %_ZN5arrow7compute10ExpressionD2Ev.exit64
  store ptr null, ptr %0, align 8, !tbaa !274
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.lb, ptr %i.lf, align 8, !tbaa !63
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lh = load ptr, ptr %i.c, align 8, !tbaa !79
  store ptr null, ptr %i.c, align 8, !tbaa !79
  store ptr %i.lh, ptr %i.lg, align 8, !tbaa !79
  store ptr null, ptr %1, align 8, !tbaa !63
  br label %bb.gf

_ZNK5arrow7compute10Expression4callEv.exit:       ; preds = %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %39, i8 0, i64 24, i1 false)
  %i.li = getelementptr inbounds nuw i8, ptr %i.lb, i64 32 ; 4 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lb, i64 40 ; 2 uses
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !131
  %i.ll = load ptr, ptr %i.li, align 8, !tbaa !130 ; 2 uses
  %.not4523.not = icmp eq ptr %i.lk, %i.ll
  br i1 %.not4523.not, label %_ZN5arrow7compute10ExpressionD2Ev.exit105, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5arrow7compute10Expression4callEv.exit
  %i.lm = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.ln = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 4 uses
  br label %bb.dt

bb.dt:                                            ; preds = %.lr.ph, %bb.fj
  %i.lq = phi ptr [ %i.ll, %.lr.ph ], [ %i.qe, %bb.fj ]
  %.02725 = phi i64 [ 0, %.lr.ph ], [ %i.qc, %bb.fj ] ; 4 uses
  %.02824 = phi i8 [ 0, %.lr.ph ], [ %.33180, %bb.fj ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #31
  %i.lr = getelementptr inbounds nuw [16 x i8], ptr %i.lq, i64 %.02725 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !79 ; 2 uses
  %i.lu = load <2 x ptr>, ptr %i.lr, align 8, !tbaa !94
  store <2 x ptr> %i.lu, ptr %41, align 16, !tbaa !94
  %.not.i.i.i.i65 = icmp eq ptr %i.lt, null
  br i1 %.not.i.i.i.i65, label %_ZN5arrow7compute10ExpressionC2ERKS1_.exit, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 8 ; 3 uses
  %i.lw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i66 = icmp eq i8 %i.lw, 0
  br i1 %.not.i.i.i.i.i66, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.lx = load i32, ptr %i.lv, align 4, !tbaa !3
  %i.ly = add nsw i32 %i.lx, 1
  store i32 %i.ly, ptr %i.lv, align 4, !tbaa !3
  br label %_ZN5arrow7compute10ExpressionC2ERKS1_.exit

bb.dw:                                            ; preds = %bb.du
  %i.lz = atomicrmw volatile add ptr %i.lv, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow7compute10ExpressionC2ERKS1_.exit

_ZN5arrow7compute10ExpressionC2ERKS1_.exit:       ; preds = %bb.dt, %bb.dv, %bb.dw
  invoke fastcc void @"_ZN5arrow7compute16ModifyExpressionIZNS0_28ReplaceFieldsWithKnownValuesERKNS0_16KnownFieldValuesENS0_10ExpressionEE3$_0ZNS0_28ReplaceFieldsWithKnownValuesES4_S5_E3$_1EENS_6ResultIS5_EES5_RKT_RKT0_"(ptr dead_on_unwind noalias nonnull writable align 8 %40, ptr noundef %41, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.dx unwind label %bb.ee

bb.dx:                                            ; preds = %_ZN5arrow7compute10ExpressionC2ERKS1_.exit
  %i.ma = load ptr, ptr %i.lm, align 8, !tbaa !79 ; 8 uses
  %.not.i.i.i67 = icmp eq ptr %i.ma, null
  br i1 %.not.i.i.i67, label %_ZN5arrow7compute10ExpressionD2Ev.exit71, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 8 ; 4 uses
  %i.mc = load atomic i64, ptr %i.mb acquire, align 8 ; 2 uses
  %i.md = icmp eq i64 %i.mc, 4294967297
  %i.me = trunc i64 %i.mc to i32                  ; 2 uses
  br i1 %i.md, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  store i32 0, ptr %i.mb, align 8, !tbaa !80
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ma, i64 12
  store i32 0, ptr %i.mf, align 4, !tbaa !82
  %i.mg = load ptr, ptr %i.ma, align 8, !tbaa !83
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  %i.mi = load ptr, ptr %i.mh, align 8
  call void %i.mi(ptr noundef nonnull align 8 dereferenceable(16) %i.ma) #31, !inline_history !300
  %i.mj = load ptr, ptr %i.ma, align 8, !tbaa !83
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 24
  %i.ml = load ptr, ptr %i.mk, align 8
  call void %i.ml(ptr noundef nonnull align 8 dereferenceable(16) %i.ma) #31, !inline_history !300
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit71

bb.ea:                                            ; preds = %bb.dy
  %i.mm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i68 = icmp eq i8 %i.mm, 0
  br i1 %.not.i.i.i.i68, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.mn = add nsw i32 %i.me, -1
  store i32 %i.mn, ptr %i.mb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i69

bb.ec:                                            ; preds = %bb.ea
  %i.mo = atomicrmw volatile add ptr %i.mb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i69

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i69: ; preds = %bb.ec, %bb.eb
  %.0.i.i.i.i.i70 = phi i32 [ %i.me, %bb.eb ], [ %i.mo, %bb.ec ]
  %i.mp = icmp eq i32 %.0.i.i.i.i.i70, 1
  br i1 %i.mp, label %bb.ed, label %_ZN5arrow7compute10ExpressionD2Ev.exit71, !prof !87

bb.ed:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i69
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ma) #31
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit71

_ZN5arrow7compute10ExpressionD2Ev.exit71:         ; preds = %bb.dx, %bb.dz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i69, %bb.ed
  %i.mq = load ptr, ptr %40, align 8, !tbaa !274
  %i.mr = icmp eq ptr %i.mq, null
  br i1 %i.mr, label %bb.ef, label %bb.ex, !prof !290

bb.ee:                                            ; preds = %_ZN5arrow7compute10ExpressionC2ERKS1_.exit
  %i.ms = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute10ExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %41) #31
  br label %bb.ge

bb.ef:                                            ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit71
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !681)
  call void @llvm.experimental.noalias.scope.decl(metadata !684)
  %i.mt = load ptr, ptr %i.ln, align 8, !tbaa !63, !noalias !687 ; 3 uses
  store ptr %i.mt, ptr %42, align 8, !tbaa !63, !alias.scope !687
  %i.mu = load ptr, ptr %i.lp, align 8, !tbaa !79, !noalias !687 ; 2 uses
  store ptr null, ptr %i.lp, align 8, !tbaa !79, !noalias !687
  store ptr %i.mu, ptr %i.lo, align 8, !tbaa !79, !alias.scope !687
  store ptr null, ptr %i.ln, align 8, !tbaa !63, !noalias !687
  %i.mv = load ptr, ptr %i.li, align 8, !tbaa !130
  %i.mw = getelementptr inbounds nuw [16 x i8], ptr %i.mv, i64 %.02725
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !63
  %i.my = icmp eq ptr %i.mt, %i.mx
  br i1 %i.my, label %_ZN5arrow7compute10ExpressionaSEOS1_.exit76.jt6, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.mz = trunc nuw i8 %.02824 to i1
  br i1 %i.mz, label %bb.ej, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.na = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %39, ptr noundef nonnull align 8 dereferenceable(24) %i.li)
          to label %._crit_edge33 unwind label %bb.ei ; 0 uses

._crit_edge33:                                    ; preds = %bb.eh
  %.pre34 = load ptr, ptr %42, align 8, !tbaa !63
  br label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.nb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute10ExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %42) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #31
  call void @_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %40) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #31
  br label %bb.ge

bb.ej:                                            ; preds = %._crit_edge33, %bb.eg
  %49 = phi ptr [ %.pre34, %._crit_edge33 ], [ %i.mt, %bb.eg ]
  %i.nc = load ptr, ptr %39, align 16, !tbaa !130
  %i.nd = getelementptr inbounds nuw [16 x i8], ptr %i.nc, i64 %.02725 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %42, i8 0, i64 16, i1 false)
  store ptr %49, ptr %i.nd, align 8, !tbaa !78
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8 ; 2 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !79 ; 8 uses
  store ptr %i.mu, ptr %i.ne, align 8, !tbaa !79
  %.not.i.i.i.i.i72 = icmp eq ptr %i.nf, null
  br i1 %.not.i.i.i.i.i72, label %_ZN5arrow7compute10ExpressionaSEOS1_.exit76.jt6, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 8 ; 4 uses
  %i.nh = load atomic i64, ptr %i.ng acquire, align 8 ; 2 uses
  %i.ni = icmp eq i64 %i.nh, 4294967297
  %i.nj = trunc i64 %i.nh to i32                  ; 2 uses
  br i1 %i.ni, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  store i32 0, ptr %i.ng, align 8, !tbaa !80
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nf, i64 12
  store i32 0, ptr %i.nk, align 4, !tbaa !82
  %i.nl = load ptr, ptr %i.nf, align 8, !tbaa !83
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  %i.nn = load ptr, ptr %i.nm, align 8
  call void %i.nn(ptr noundef nonnull align 8 dereferenceable(16) %i.nf) #31, !inline_history !345
  %i.no = load ptr, ptr %i.nf, align 8, !tbaa !83
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 24
  %i.nq = load ptr, ptr %i.np, align 8
  call void %i.nq(ptr noundef nonnull align 8 dereferenceable(16) %i.nf) #31, !inline_history !345
  br label %_ZN5arrow7compute10ExpressionaSEOS1_.exit76.jt6

bb.em:                                            ; preds = %bb.ek
  %i.nr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i73 = icmp eq i8 %i.nr, 0
  br i1 %.not.i.i.i.i.i.i73, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.ns = add nsw i32 %i.nj, -1
  store i32 %i.ns, ptr %i.ng, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i74

bb.eo:                                            ; preds = %bb.em
  %i.nt = atomicrmw volatile add ptr %i.ng, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i74

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i74: ; preds = %bb.eo, %bb.en
  %.0.i.i.i.i.i.i.i75 = phi i32 [ %i.nj, %bb.en ], [ %i.nt, %bb.eo ]
  %i.nu = icmp eq i32 %.0.i.i.i.i.i.i.i75, 1
  br i1 %i.nu, label %bb.ep, label %_ZN5arrow7compute10ExpressionaSEOS1_.exit76.jt6, !prof !87

bb.ep:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i74
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nf) #31
  br label %_ZN5arrow7compute10ExpressionaSEOS1_.exit76.jt6

_ZN5arrow7compute10ExpressionaSEOS1_.exit76.jt6:  ; preds = %bb.ep, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i74, %bb.el, %bb.ej, %bb.ef
  %.039.jt6 = phi i32 [ 6, %bb.ef ], [ 0, %bb.ej ], [ 0, %bb.el ], [ 0, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i74 ], [ 0, %bb.ep ] ; 2 uses
  %.230.jt6 = phi i8 [ %.02824, %bb.ef ], [ 1, %bb.ej ], [ 1, %bb.el ], [ 1, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i74 ], [ 1, %bb.ep ] ; 3 uses
  %i.nv = load ptr, ptr %i.lo, align 8, !tbaa !79 ; 8 uses
  %.not.i.i.i77.jt6 = icmp eq ptr %i.nv, null
  br i1 %.not.i.i.i77.jt6, label %bb.ew, label %bb.eq

bb.eq:                                            ; preds = %_ZN5arrow7compute10ExpressionaSEOS1_.exit76.jt6
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 8 ; 4 uses
  %i.nx = load atomic i64, ptr %i.nw acquire, align 8 ; 2 uses
  %i.ny = icmp eq i64 %i.nx, 4294967297
  %i.nz = trunc i64 %i.nx to i32                  ; 2 uses
  br i1 %i.ny, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  store i32 0, ptr %i.nw, align 8, !tbaa !80
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nv, i64 12
  store i32 0, ptr %i.oa, align 4, !tbaa !82
  %i.ob = load ptr, ptr %i.nv, align 8, !tbaa !83
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  %i.od = load ptr, ptr %i.oc, align 8
  call void %i.od(ptr noundef nonnull align 8 dereferenceable(16) %i.nv) #31, !inline_history !300
  %i.oe = load ptr, ptr %i.nv, align 8, !tbaa !83
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 24
  %i.og = load ptr, ptr %i.of, align 8
  call void %i.og(ptr noundef nonnull align 8 dereferenceable(16) %i.nv) #31, !inline_history !300
  br label %bb.ew

bb.es:                                            ; preds = %bb.eq
  %i.oh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i78.jt6 = icmp eq i8 %i.oh, 0
  br i1 %.not.i.i.i.i78.jt6, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.oi = add nsw i32 %i.nz, -1
  store i32 %i.oi, ptr %i.nw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i79.jt6

bb.eu:                                            ; preds = %bb.es
  %i.oj = atomicrmw volatile add ptr %i.nw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i79.jt6

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i79.jt6: ; preds = %bb.et, %bb.eu
  %.0.i.i.i.i.i80.jt6 = phi i32 [ %i.oj, %bb.eu ], [ %i.nz, %bb.et ]
  %i.ok = icmp eq i32 %.0.i.i.i.i.i80.jt6, 1
  br i1 %i.ok, label %bb.ev, label %bb.ew, !prof !87

bb.ev:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i79.jt6
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nv) #31
  br label %bb.ew

bb.ew:                                            ; preds = %_ZN5arrow7compute10ExpressionaSEOS1_.exit76.jt6, %bb.er, %bb.ev, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i79.jt6
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #31
  %i.ol = load ptr, ptr %40, align 8, !tbaa !274  ; 2 uses
  %i.om = icmp eq ptr %i.ol, null
  br i1 %i.om, label %bb.ey, label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.thread.i, !prof !290

bb.ex:                                            ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit71
  call void @_ZN5arrow6ResultINS_7compute10ExpressionEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %40) #31
  %i.on = load ptr, ptr %40, align 8, !tbaa !274  ; 2 uses
  %i.oo = icmp eq ptr %i.on, null
  br i1 %i.oo, label %bb.ez, label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.thread.i, !prof !290

bb.ey:                                            ; preds = %bb.ew
  %i.op = load ptr, ptr %i.lp, align 8, !tbaa !79 ; 8 uses
  %.not.i.i.i.i.i.i82.jt6 = icmp eq ptr %i.op, null
  br i1 %.not.i.i.i.i.i.i82.jt6, label %_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev.exit.jt6, label %bb.fa

bb.ez:                                            ; preds = %bb.ex
  %i.oq = load ptr, ptr %i.lp, align 8, !tbaa !79 ; 8 uses
  %.not.i.i.i.i.i.i82.jt1 = icmp eq ptr %i.oq, null
  br i1 %.not.i.i.i.i.i.i82.jt1, label %_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev.exit.jt1, label %bb.fb

bb.fa:                                            ; preds = %bb.ey
  %i.or = getelementptr inbounds nuw i8, ptr %i.op, i64 8 ; 3 uses
  %i.os = load atomic i64, ptr %i.or acquire, align 8 ; 2 uses
  %i.ot = icmp eq i64 %i.os, 4294967297
  br i1 %i.ot, label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.i.jt6, label %bb.fc

bb.fb:                                            ; preds = %bb.ez
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oq, i64 8 ; 3 uses
  %i.ov = load atomic i64, ptr %i.ou acquire, align 8 ; 2 uses
  %i.ow = icmp eq i64 %i.ov, 4294967297
  br i1 %i.ow, label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.i.jt1, label %bb.fc

bb.fc:                                            ; preds = %bb.fa, %bb.fb
  %.in = phi i64 [ %i.os, %bb.fa ], [ %i.ov, %bb.fb ]
  %i.ox = phi ptr [ %i.or, %bb.fa ], [ %i.ou, %bb.fb ] ; 2 uses
  %i.oy = phi ptr [ %i.op, %bb.fa ], [ %i.oq, %bb.fb ]
  %.33179.a = phi i8 [ %.230.jt6, %bb.fa ], [ %.02824, %bb.fb ] ; 2 uses
  %.14076 = phi i32 [ %.039.jt6, %bb.fa ], [ 1, %bb.fb ] ; 2 uses
  %i.oz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i83 = icmp eq i8 %i.oz, 0
  br i1 %.not.i.i.i.i.i.i.i83, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.pa = trunc i64 %.in to i32                   ; 2 uses
  %i.pb = add nsw i32 %i.pa, -1
  store i32 %i.pb, ptr %i.ox, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.fe:                                            ; preds = %bb.fc
  %i.pc = atomicrmw volatile add ptr %i.ox, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.fe, %bb.fd
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.pa, %bb.fd ], [ %i.pc, %bb.fe ]
  %i.pd = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.pd, label %bb.ff, label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.i, !prof !87

bb.ff:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.oy) #31
  br label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.i

_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.i: ; preds = %bb.ff, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  %.pr.i.pr = load ptr, ptr %40, align 8, !tbaa !274 ; 2 uses
  %.not.i.i84 = icmp eq ptr %.pr.i.pr, null
  br i1 %.not.i.i84, label %_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev.exit, label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.thread.i, !prof !283

_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.i.jt6: ; preds = %bb.fa
  store i32 0, ptr %i.or, align 8, !tbaa !80
  %i.pe = getelementptr inbounds nuw i8, ptr %i.op, i64 12
  store i32 0, ptr %i.pe, align 4, !tbaa !82
  %i.pf = load ptr, ptr %i.op, align 8, !tbaa !83
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  %i.ph = load ptr, ptr %i.pg, align 8
  call void %i.ph(ptr noundef nonnull align 8 dereferenceable(16) %i.op) #31, !inline_history !346
  %i.pi = load ptr, ptr %i.op, align 8, !tbaa !83
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 24
  %i.pk = load ptr, ptr %i.pj, align 8
  call void %i.pk(ptr noundef nonnull align 8 dereferenceable(16) %i.op) #31, !inline_history !346
  %.pr.i.jt6.pr = load ptr, ptr %40, align 8, !tbaa !274 ; 2 uses
  %.not.i.i84.jt6 = icmp eq ptr %.pr.i.jt6.pr, null
  br i1 %.not.i.i84.jt6, label %_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev.exit.jt6, label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.thread.i.jt6, !prof !283

_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.i.jt1: ; preds = %bb.fb
  store i32 0, ptr %i.ou, align 8, !tbaa !80
  %i.pl = getelementptr inbounds nuw i8, ptr %i.oq, i64 12
  store i32 0, ptr %i.pl, align 4, !tbaa !82
  %i.pm = load ptr, ptr %i.oq, align 8, !tbaa !83
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  %i.po = load ptr, ptr %i.pn, align 8
  call void %i.po(ptr noundef nonnull align 8 dereferenceable(16) %i.oq) #31, !inline_history !346
  %i.pp = load ptr, ptr %i.oq, align 8, !tbaa !83
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 24
  %i.pr = load ptr, ptr %i.pq, align 8
  call void %i.pr(ptr noundef nonnull align 8 dereferenceable(16) %i.oq) #31, !inline_history !346
  %.pr.i.jt1.pr = load ptr, ptr %40, align 8, !tbaa !274 ; 2 uses
  %.not.i.i84.jt1 = icmp eq ptr %.pr.i.jt1.pr, null
  br i1 %.not.i.i84.jt1, label %_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev.exit.jt1, label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.thread.i.jt1, !prof !283
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute12CanonicalizeENS0_10ExpressionEPNS0_11ExecContextE:bb.a
  %i.b = load ptr, ptr %3, align 8, !tbaa !274    ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c, !prof !290

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !284, !range !189, !noundef !66
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #31
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.x

bb.e:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %2, null
  br i1 %i.f, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.g = tail call noundef ptr @_ZN5arrow19default_memory_poolEv()
  call void @_ZN5arrow7compute11ExecContextC1EPNS_10MemoryPoolEPNS_8internal8ExecutorEPNS0_16FunctionRegistryE(ptr noundef nonnull align 8 dereferenceable(34) %4, ptr noundef %i.g, ptr noundef null, ptr noundef null)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load <2 x ptr>, ptr %1, align 8, !tbaa !94
  store ptr null, ptr %i.h, align 8, !tbaa !79
  store <2 x ptr> %i.i, ptr %5, align 16, !tbaa !94
  store ptr null, ptr %1, align 8, !tbaa !63
  invoke void @_ZN5arrow7compute12CanonicalizeENS0_10ExpressionEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result.155") align 8 %0, ptr noundef nonnull %5, ptr noundef nonnull %4)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !79   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZN5arrow7compute10ExpressionD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  %i.m = load atomic i64, ptr %i.l acquire, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 4294967297
  %i.o = trunc i64 %i.m to i32                    ; 2 uses
  br i1 %i.n, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.l, align 8, !tbaa !80
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 0, ptr %i.p, align 4, !tbaa !82
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !83
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #31, !inline_history !300
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !83
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #31, !inline_history !300
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = add nsw i32 %i.o, -1
  store i32 %i.x, ptr %i.l, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.y = atomicrmw volatile add ptr %i.l, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.o, %bb.k ], [ %i.y, %bb.l ]
  %i.z = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.z, label %bb.m, label %_ZN5arrow7compute10ExpressionD2Ev.exit, !prof !87

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.k) #31
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit

_ZN5arrow7compute10ExpressionD2Ev.exit:           ; preds = %bb.g, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.x

bb.n:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute10ExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.y

bb.o:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.ab, ptr %6, align 8, !tbaa !692
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.ac, align 8, !tbaa !694
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ae, align 8, !tbaa !508
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load <2 x ptr>, ptr %1, align 8, !tbaa !94
  store ptr null, ptr %i.ag, align 8, !tbaa !79
  store <2 x ptr> %i.ah, ptr %7, align 16, !tbaa !94
  store ptr null, ptr %1, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  store ptr %6, ptr %8, align 8, !tbaa !94
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %2, ptr %i.ai, align 8, !tbaa !695
  invoke fastcc void @"_ZN5arrow7compute16ModifyExpressionIZNS0_12CanonicalizeENS0_10ExpressionEPNS0_11ExecContextEE3$_1ZNS0_12CanonicalizeES2_S4_E3$_2EENS_6ResultIS2_EES2_RKT_RKT0_"(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.p unwind label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !79 ; 8 uses
  %.not.i.i.i6 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i6, label %_ZN5arrow7compute10ExpressionD2Ev.exit10, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4294967297
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  br i1 %i.an, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.al, align 8, !tbaa !80
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !82
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !83
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #31, !inline_history !300
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !83
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #31, !inline_history !300
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit10

bb.s:                                             ; preds = %bb.q
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i7 = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.i7, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ax = add nsw i32 %i.ao, -1
  store i32 %i.ax, ptr %i.al, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i8

bb.u:                                             ; preds = %bb.s
  %i.ay = atomicrmw volatile add ptr %i.al, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i8: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i9 = phi i32 [ %i.ao, %bb.t ], [ %i.ay, %bb.u ]
  %i.az = icmp eq i32 %.0.i.i.i.i.i9, 1
  br i1 %i.az, label %bb.v, label %_ZN5arrow7compute10ExpressionD2Ev.exit10, !prof !87

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i8
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #31
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit10

_ZN5arrow7compute10ExpressionD2Ev.exit10:         ; preds = %bb.p, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i8, %bb.v
  call void @_ZNSt10_HashtableIN5arrow7compute10ExpressionES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS2_4HashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.x

bb.w:                                             ; preds = %bb.o
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @_ZN5arrow7compute10ExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #31
  call void @_ZNSt10_HashtableIN5arrow7compute10ExpressionES2_SaIS2_ENSt8__detail9_IdentityESt8equal_toIS2_ENS2_4HashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.y

bb.x:                                             ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit10, %_ZN5arrow7compute10ExpressionD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void

bb.y:                                             ; preds = %bb.w, %bb.n
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.n ], [ %i.ba, %bb.w ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN5arrow7compute16ModifyExpressionIZNS0_12CanonicalizeENS0_10ExpressionEPNS0_11ExecContextEE3$_1ZNS0_12CanonicalizeES2_S4_E3$_2EENS_6ResultIS2_EES2_RKT_RKT0_"(ptr dead_on_unwind noalias writable align 8 %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Result.155", align 8 ; 12 uses
  %4 = alloca %"class.arrow::compute::Expression", align 16 ; 4 uses
  %5 = alloca %"class.std::vector", align 16      ; 14 uses
  %6 = alloca %"class.arrow::Result.155", align 8 ; 19 uses
  %7 = alloca %"class.arrow::compute::Expression", align 16 ; 4 uses
  %8 = alloca %"class.arrow::compute::Expression", align 8 ; 8 uses
  %9 = alloca %"struct.arrow::compute::Expression::Call", align 8 ; 25 uses
  %10 = alloca %"class.arrow::compute::Expression", align 16 ; 3 uses
  %11 = alloca %"struct.arrow::compute::Expression::Call", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load <2 x ptr>, ptr %1, align 8, !tbaa !94
  store ptr null, ptr %i.a, align 8, !tbaa !79
  store <2 x ptr> %i.b, ptr %4, align 16, !tbaa !94
  store ptr null, ptr %1, align 8, !tbaa !63
  invoke fastcc void @"_ZZN5arrow7compute12CanonicalizeENS0_10ExpressionEPNS0_11ExecContextEENK3$_1clES1_"(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %4)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !79   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN5arrow7compute10ExpressionD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !80
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !82
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #31, !inline_history !300
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #31, !inline_history !300
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow7compute10ExpressionD2Ev.exit, !prof !87

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #31
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit

_ZN5arrow7compute10ExpressionD2Ev.exit:           ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  %i.t = load ptr, ptr %3, align 8, !tbaa !274
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.k, label %bb.i, !prof !290

bb.i:                                             ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit
  call void @_ZN5arrow6ResultINS_7compute10ExpressionEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #31
  br label %bb.ce

bb.j:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute10ExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #31
  br label %bb.cn

bb.k:                                             ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.x = load <2 x ptr>, ptr %i.w, align 8, !tbaa !94, !noalias !697
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !63, !noalias !697
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !79   ; 8 uses
  store <2 x ptr> %i.x, ptr %1, align 8, !tbaa !94
  %.not.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow7compute10ExpressionD2Ev.exit55, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.aa, align 8, !tbaa !80
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !82
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !83
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #31, !inline_history !345
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !83
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #31, !inline_history !345
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit55thread-pre-split

bb.n:                                             ; preds = %bb.l
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = add nsw i32 %i.ad, -1
  store i32 %i.am, ptr %i.aa, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.an = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ad, %bb.o ], [ %i.an, %bb.p ]
  %i.ao = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ao, label %bb.q, label %_ZN5arrow7compute10ExpressionD2Ev.exit55thread-pre-split, !prof !87

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #31
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit55thread-pre-split

_ZN5arrow7compute10ExpressionD2Ev.exit55thread-pre-split: ; preds = %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.q
  %.pr = load ptr, ptr %1, align 8, !tbaa !63
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit55

_ZN5arrow7compute10ExpressionD2Ev.exit55:         ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit55thread-pre-split, %bb.k
  %i.ap = phi ptr [ %.pr, %_ZN5arrow7compute10ExpressionD2Ev.exit55thread-pre-split ], [ %i.y, %bb.k ] ; 6 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %bb.r, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i

_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i: ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit55
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 144
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !67
  %i.as = icmp eq i8 %i.ar, 2
  br i1 %i.as, label %_ZNK5arrow7compute10Expression4callEv.exit, label %bb.r

bb.r:                                             ; preds = %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i, %_ZN5arrow7compute10ExpressionD2Ev.exit55
  store ptr null, ptr %0, align 8, !tbaa !274
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.at, align 8, !tbaa !63
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !79
  store ptr null, ptr %i.a, align 8, !tbaa !79
  store ptr %i.av, ptr %i.au, align 8, !tbaa !79
  store ptr null, ptr %1, align 8, !tbaa !63
  br label %bb.ce

_ZNK5arrow7compute10Expression4callEv.exit:       ; preds = %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 40 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !131
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !130 ; 2 uses
  %.not4515.not = icmp eq ptr %i.ay, %i.az
  br i1 %.not4515.not, label %_ZN5arrow7compute10ExpressionD2Ev.exit95, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5arrow7compute10Expression4callEv.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.bi
  %i.be = phi ptr [ %i.az, %.lr.ph ], [ %i.fs, %bb.bi ]
  %.02717 = phi i64 [ 0, %.lr.ph ], [ %i.fq, %bb.bi ] ; 4 uses
  %.02816 = phi i8 [ 0, %.lr.ph ], [ %.33153, %bb.bi ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %.02717 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !79 ; 2 uses
  %i.bi = load <2 x ptr>, ptr %i.bf, align 8, !tbaa !94
  store <2 x ptr> %i.bi, ptr %7, align 16, !tbaa !94
  %.not.i.i.i.i56 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i56, label %_ZN5arrow7compute10ExpressionC2ERKS1_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 3 uses
  %i.bk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i57 = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i.i.i57, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bm = add nsw i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bj, align 4, !tbaa !3
  br label %_ZN5arrow7compute10ExpressionC2ERKS1_.exit

bb.v:                                             ; preds = %bb.t
  %i.bn = atomicrmw volatile add ptr %i.bj, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow7compute10ExpressionC2ERKS1_.exit

_ZN5arrow7compute10ExpressionC2ERKS1_.exit:       ; preds = %bb.s, %bb.u, %bb.v
  invoke fastcc void @"_ZN5arrow7compute16ModifyExpressionIZNS0_12CanonicalizeENS0_10ExpressionEPNS0_11ExecContextEE3$_1ZNS0_12CanonicalizeES2_S4_E3$_2EENS_6ResultIS2_EES2_RKT_RKT0_"(ptr dead_on_unwind noalias nonnull writable align 8 %6, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.w unwind label %bb.ad

bb.w:                                             ; preds = %_ZN5arrow7compute10ExpressionC2ERKS1_.exit
  %i.bo = load ptr, ptr %i.ba, align 8, !tbaa !79 ; 8 uses
  %.not.i.i.i58 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i58, label %_ZN5arrow7compute10ExpressionD2Ev.exit62, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %i.bq = load atomic i64, ptr %i.bp acquire, align 8 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 4294967297
  %i.bs = trunc i64 %i.bq to i32                  ; 2 uses
  br i1 %i.br, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.bp, align 8, !tbaa !80
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 0, ptr %i.bt, align 4, !tbaa !82
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !83
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8
  call void %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #31, !inline_history !300
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !83
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #31, !inline_history !300
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit62

bb.z:                                             ; preds = %bb.x
  %i.ca = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i59 = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i.i59, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = add nsw i32 %i.bs, -1
  store i32 %i.cb, ptr %i.bp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i60

bb.ab:                                            ; preds = %bb.z
  %i.cc = atomicrmw volatile add ptr %i.bp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i60

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i60: ; preds = %bb.ab, %bb.aa
  %.0.i.i.i.i.i61 = phi i32 [ %i.bs, %bb.aa ], [ %i.cc, %bb.ab ]
  %i.cd = icmp eq i32 %.0.i.i.i.i.i61, 1
  br i1 %i.cd, label %bb.ac, label %_ZN5arrow7compute10ExpressionD2Ev.exit62, !prof !87

bb.ac:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i60
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bo) #31
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit62

_ZN5arrow7compute10ExpressionD2Ev.exit62:         ; preds = %bb.w, %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i60, %bb.ac
  %i.ce = load ptr, ptr %6, align 8, !tbaa !274
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.ae, label %bb.aw, !prof !290

bb.ad:                                            ; preds = %_ZN5arrow7compute10ExpressionC2ERKS1_.exit
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute10ExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #31
  br label %bb.cd

bb.ae:                                            ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit62
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !702)
  call void @llvm.experimental.noalias.scope.decl(metadata !705)
  %i.ch = load ptr, ptr %i.bb, align 8, !tbaa !63, !noalias !708 ; 3 uses
  store ptr %i.ch, ptr %8, align 8, !tbaa !63, !alias.scope !708
  %i.ci = load ptr, ptr %i.bd, align 8, !tbaa !79, !noalias !708 ; 2 uses
  store ptr null, ptr %i.bd, align 8, !tbaa !79, !noalias !708
  store ptr %i.ci, ptr %i.bc, align 8, !tbaa !79, !alias.scope !708
  store ptr null, ptr %i.bb, align 8, !tbaa !63, !noalias !708
  %i.cj = load ptr, ptr %i.aw, align 8, !tbaa !130
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %.02717
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !63
  %i.cm = icmp eq ptr %i.ch, %i.cl
  br i1 %i.cm, label %_ZN5arrow7compute10ExpressionaSEOS1_.exit67.jt6, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cn = trunc nuw i8 %.02816 to i1
  br i1 %i.cn, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.co = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %._crit_edge20 unwind label %bb.ah ; 0 uses

._crit_edge20:                                    ; preds = %bb.ag
  %.pre = load ptr, ptr %8, align 8, !tbaa !63
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute10ExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.cd

bb.ai:                                            ; preds = %._crit_edge20, %bb.af
  %12 = phi ptr [ %.pre, %._crit_edge20 ], [ %i.ch, %bb.af ]
  %i.cq = load ptr, ptr %5, align 16, !tbaa !130
  %i.cr = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %.02717 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store ptr %12, ptr %i.cr, align 8, !tbaa !78
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !79 ; 8 uses
  store ptr %i.ci, ptr %i.cs, align 8, !tbaa !79
  %.not.i.i.i.i.i63 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i.i63, label %_ZN5arrow7compute10ExpressionaSEOS1_.exit67.jt6, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 4 uses
  %i.cv = load atomic i64, ptr %i.cu acquire, align 8 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 4294967297
  %i.cx = trunc i64 %i.cv to i32                  ; 2 uses
  br i1 %i.cw, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.cu, align 8, !tbaa !80
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  store i32 0, ptr %i.cy, align 4, !tbaa !82
  %i.cz = load ptr, ptr %i.ct, align 8, !tbaa !83
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #31, !inline_history !345
  %i.dc = load ptr, ptr %i.ct, align 8, !tbaa !83
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #31, !inline_history !345
  br label %_ZN5arrow7compute10ExpressionaSEOS1_.exit67.jt6

bb.al:                                            ; preds = %bb.aj
  %i.df = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i64 = icmp eq i8 %i.df, 0
  br i1 %.not.i.i.i.i.i.i64, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dg = add nsw i32 %i.cx, -1
  store i32 %i.dg, ptr %i.cu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i65

bb.an:                                            ; preds = %bb.al
  %i.dh = atomicrmw volatile add ptr %i.cu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i65

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i65: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i.i.i66 = phi i32 [ %i.cx, %bb.am ], [ %i.dh, %bb.an ]
  %i.di = icmp eq i32 %.0.i.i.i.i.i.i.i66, 1
  br i1 %i.di, label %bb.ao, label %_ZN5arrow7compute10ExpressionaSEOS1_.exit67.jt6, !prof !87

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i65
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ct) #31
  br label %_ZN5arrow7compute10ExpressionaSEOS1_.exit67.jt6

_ZN5arrow7compute10ExpressionaSEOS1_.exit67.jt6:  ; preds = %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i65, %bb.ak, %bb.ai, %bb.ae
  %.039.jt6 = phi i32 [ 6, %bb.ae ], [ 0, %bb.ai ], [ 0, %bb.ak ], [ 0, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i65 ], [ 0, %bb.ao ] ; 2 uses
  %.230.jt6 = phi i8 [ %.02816, %bb.ae ], [ 1, %bb.ai ], [ 1, %bb.ak ], [ 1, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i65 ], [ 1, %bb.ao ] ; 3 uses
  %i.dj = load ptr, ptr %i.bc, align 8, !tbaa !79 ; 8 uses
  %.not.i.i.i68.jt6 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i68.jt6, label %bb.av, label %bb.ap

bb.ap:                                            ; preds = %_ZN5arrow7compute10ExpressionaSEOS1_.exit67.jt6
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 4 uses
  %i.dl = load atomic i64, ptr %i.dk acquire, align 8 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 4294967297
  %i.dn = trunc i64 %i.dl to i32                  ; 2 uses
  br i1 %i.dm, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.dk, align 8, !tbaa !80
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  store i32 0, ptr %i.do, align 4, !tbaa !82
  %i.dp = load ptr, ptr %i.dj, align 8, !tbaa !83
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #31, !inline_history !300
  %i.ds = load ptr, ptr %i.dj, align 8, !tbaa !83
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #31, !inline_history !300
  br label %bb.av

bb.ar:                                            ; preds = %bb.ap
  %i.dv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i69.jt6 = icmp eq i8 %i.dv, 0
  br i1 %.not.i.i.i.i69.jt6, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dw = add nsw i32 %i.dn, -1
  store i32 %i.dw, ptr %i.dk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i70.jt6

bb.at:                                            ; preds = %bb.ar
  %i.dx = atomicrmw volatile add ptr %i.dk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i70.jt6

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i70.jt6: ; preds = %bb.as, %bb.at
  %.0.i.i.i.i.i71.jt6 = phi i32 [ %i.dx, %bb.at ], [ %i.dn, %bb.as ]
  %i.dy = icmp eq i32 %.0.i.i.i.i.i71.jt6, 1
  br i1 %i.dy, label %bb.au, label %bb.av, !prof !87

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i70.jt6
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #31
  br label %bb.av

bb.av:                                            ; preds = %_ZN5arrow7compute10ExpressionaSEOS1_.exit67.jt6, %bb.aq, %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i70.jt6
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  %i.dz = load ptr, ptr %6, align 8, !tbaa !274   ; 2 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %bb.ax, label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.thread.i, !prof !290

bb.aw:                                            ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit62
  call void @_ZN5arrow6ResultINS_7compute10ExpressionEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #31
  %i.eb = load ptr, ptr %6, align 8, !tbaa !274   ; 2 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.ay, label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.thread.i, !prof !290

bb.ax:                                            ; preds = %bb.av
  %i.ed = load ptr, ptr %i.bd, align 8, !tbaa !79 ; 8 uses
  %.not.i.i.i.i.i.i73.jt6 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i.i.i.i.i73.jt6, label %_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev.exit.jt6, label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.ee = load ptr, ptr %i.bd, align 8, !tbaa !79 ; 8 uses
  %.not.i.i.i.i.i.i73.jt1 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i.i.i.i73.jt1, label %_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev.exit.jt1, label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 3 uses
  %i.eg = load atomic i64, ptr %i.ef acquire, align 8 ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 4294967297
  br i1 %i.eh, label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.i.jt6, label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 3 uses
  %i.ej = load atomic i64, ptr %i.ei acquire, align 8 ; 2 uses
  %i.ek = icmp eq i64 %i.ej, 4294967297
  br i1 %i.ek, label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.i.jt1, label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %.in = phi i64 [ %i.eg, %bb.az ], [ %i.ej, %bb.ba ]
  %i.el = phi ptr [ %i.ef, %bb.az ], [ %i.ei, %bb.ba ] ; 2 uses
  %i.em = phi ptr [ %i.ed, %bb.az ], [ %i.ee, %bb.ba ]
  %.33152.a = phi i8 [ %.230.jt6, %bb.az ], [ %.02816, %bb.ba ] ; 2 uses
  %.14049 = phi i32 [ %.039.jt6, %bb.az ], [ 1, %bb.ba ] ; 2 uses
  %i.en = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.en, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.eo = trunc i64 %.in to i32                   ; 2 uses
  %i.ep = add nsw i32 %i.eo, -1
  store i32 %i.ep, ptr %i.el, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.eq = atomicrmw volatile add ptr %i.el, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.eo, %bb.bc ], [ %i.eq, %bb.bd ]
  %i.er = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.er, label %bb.be, label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.i, !prof !87

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #31
  br label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.i

_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.i: ; preds = %bb.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  %.pr.i.pr = load ptr, ptr %6, align 8, !tbaa !274 ; 2 uses
  %.not.i.i74 = icmp eq ptr %.pr.i.pr, null
  br i1 %.not.i.i74, label %_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev.exit, label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.thread.i, !prof !283

_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.i.jt6: ; preds = %bb.az
  store i32 0, ptr %i.ef, align 8, !tbaa !80
  %i.es = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  store i32 0, ptr %i.es, align 4, !tbaa !82
  %i.et = load ptr, ptr %i.ed, align 8, !tbaa !83
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(16) %i.ed) #31, !inline_history !346
  %i.ew = load ptr, ptr %i.ed, align 8, !tbaa !83
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(16) %i.ed) #31, !inline_history !346
  %.pr.i.jt6.pr = load ptr, ptr %6, align 8, !tbaa !274 ; 2 uses
  %.not.i.i74.jt6 = icmp eq ptr %.pr.i.jt6.pr, null
  br i1 %.not.i.i74.jt6, label %_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev.exit.jt6, label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.thread.i.jt6, !prof !283

_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.i.jt1: ; preds = %bb.ba
  store i32 0, ptr %i.ei, align 8, !tbaa !80
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  store i32 0, ptr %i.ez, align 4, !tbaa !82
  %i.fa = load ptr, ptr %i.ee, align 8, !tbaa !83
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #31, !inline_history !346
  %i.fd = load ptr, ptr %i.ee, align 8, !tbaa !83
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(16) %i.ee) #31, !inline_history !346
  %.pr.i.jt1.pr = load ptr, ptr %6, align 8, !tbaa !274 ; 2 uses
  %.not.i.i74.jt1 = icmp eq ptr %.pr.i.jt1.pr, null
  br i1 %.not.i.i74.jt1, label %_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev.exit.jt1, label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.thread.i.jt1, !prof !283
end_hunk_2
begin_hunk_3_@"_ZN5arrow7compute16ModifyExpressionIZNS0_21SimplifyWithGuaranteeENS0_10ExpressionERKS2_E3$_1ZNS0_21SimplifyWithGuaranteeES2_S4_E3$_2EENS_6ResultIS2_EES2_RKT_RKT0_":_ZN5arrow7compute10ExpressionD2Ev.exit60
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !284, !range !189, !noundef !66
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev.exit101, label %bb.cm

bb.cm:                                            ; preds = %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.thread.i93
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #31
  br label %_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev.exit101

_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev.exit101: ; preds = %bb.cf, %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.i98, %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.thread.i93, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !274    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.thread, !prof !290

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !79   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !80
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !82
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #31, !inline_history !769
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #31, !inline_history !769
  br label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit, !prof !87

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #31
  br label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit

_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !274    ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.thread, !prof !283

_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !284, !range !189, !noundef !66
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #31
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit, %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.thread, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute15RemoveNamedRefsENS0_10ExpressionE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.155") align 8 %0, ptr nofree noundef nonnull captures(none) %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %3 = alloca %"class.arrow::compute::Expression", align 16 ; 4 uses
  %i.a = tail call noundef zeroext i1 @_ZNK5arrow7compute10Expression7IsBoundEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @_ZN5arrow6Status8FromArgsIJRA45_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(45) @.str.23)
  call void @_ZN5arrow6ResultINS_7compute10ExpressionEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #31
  %i.b = load ptr, ptr %2, align 8, !tbaa !274    ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c, !prof !290

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !284, !range !189, !noundef !66
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #31
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load <2 x ptr>, ptr %1, align 8, !tbaa !94
  store ptr null, ptr %i.f, align 8, !tbaa !79
  store <2 x ptr> %i.g, ptr %3, align 16, !tbaa !94
  store ptr null, ptr %1, align 8, !tbaa !63
  invoke fastcc void @"_ZN5arrow7compute16ModifyExpressionIZNS0_15RemoveNamedRefsENS0_10ExpressionEE3$_0ZNS0_15RemoveNamedRefsES2_E3$_1EENS_6ResultIS2_EES2_RKT_RKT0_"(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %3)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !79   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN5arrow7compute10ExpressionD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.j, align 8, !tbaa !80
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !82
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !83
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #31, !inline_history !300
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !83
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #31, !inline_history !300
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi i32 [ %i.m, %bb.j ], [ %i.w, %bb.k ]
  %i.x = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.x, label %bb.l, label %_ZN5arrow7compute10ExpressionD2Ev.exit, !prof !87

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #31
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit

bb.m:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute10ExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #31
  resume { ptr, i32 } %i.y

_ZN5arrow7compute10ExpressionD2Ev.exit:           ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h, %bb.f, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN5arrow7compute16ModifyExpressionIZNS0_15RemoveNamedRefsENS0_10ExpressionEE3$_0ZNS0_15RemoveNamedRefsES2_E3$_1EENS_6ResultIS2_EES2_RKT_RKT0_"(ptr dead_on_unwind noalias writable align 8 %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.arrow::compute::Expression::Parameter", align 8 ; 21 uses
  %3 = alloca %"class.arrow::FieldPath", align 8  ; 8 uses
  %4 = alloca %"class.arrow::Result.155", align 8 ; 12 uses
  %5 = alloca %"class.arrow::compute::Expression", align 16 ; 9 uses
  %6 = alloca %"class.arrow::compute::Expression", align 8 ; 4 uses
  %7 = alloca %"class.std::vector", align 16      ; 14 uses
  %8 = alloca %"class.arrow::Result.155", align 8 ; 19 uses
  %9 = alloca %"class.arrow::compute::Expression", align 16 ; 4 uses
  %10 = alloca %"class.arrow::compute::Expression", align 8 ; 8 uses
  %11 = alloca %"struct.arrow::compute::Expression::Call", align 8 ; 25 uses
  %12 = alloca %"class.arrow::compute::Expression", align 16 ; 3 uses
  %13 = alloca %"struct.arrow::compute::Expression::Call", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.a = load ptr, ptr %1, align 8, !tbaa !63     ; 9 uses
  store ptr %i.a, ptr %6, align 8, !tbaa !63
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !79   ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !79
  store ptr %i.d, ptr %i.b, align 8, !tbaa !79
  store ptr null, ptr %1, align 8, !tbaa !63
  tail call void @llvm.experimental.noalias.scope.decl(metadata !770)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZNK5arrow7compute10Expression9parameterEv.exit.thread.i, label %_ZSt6get_ifIN5arrow7compute10Expression9ParameterEJNS0_5DatumES3_NS2_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i

_ZSt6get_ifIN5arrow7compute10Expression9ParameterEJNS0_5DatumES3_NS2_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.f = load i8, ptr %i.e, align 8, !tbaa !67
  %i.g = icmp eq i8 %i.f, 1
  br i1 %i.g, label %_ZNK5arrow7compute10Expression9parameterEv.exit.i, label %_ZNK5arrow7compute10Expression9parameterEv.exit.thread.i

_ZNK5arrow7compute10Expression9parameterEv.exit.i: ; preds = %_ZSt6get_ifIN5arrow7compute10Expression9ParameterEJNS0_5DatumES3_NS2_4CallEEENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = load i8, ptr %i.h, align 8, !tbaa !101
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %_ZNK5arrow7compute10Expression9parameterEv.exit.thread.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %_ZNK5arrow7compute10Expression9parameterEv.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !112  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !308  ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.n, 2               ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i, label %.thread.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr null, i64 %.idx.i
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx.i) #30
          to label %.noexc unwind label %bb.aj    ; 5 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i ; 2 uses
  %.not.i = icmp eq i64 %i.n, 1
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !736

bb.b:                                             ; preds = %.noexc
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.p, ptr align 4 %i.l, i64 %.idx.i, i1 false)
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

bb.c:                                             ; preds = %.noexc
  %i.r = load i32, ptr %i.l, align 4, !tbaa !3
  store i32 %i.r, ptr %i.p, align 4, !tbaa !3
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.c, %bb.b, %.thread.i.i.i
  %.sroa.01.0.i = phi ptr [ null, %.thread.i.i.i ], [ %i.p, %bb.b ], [ %i.p, %bb.c ]
  %.sroa.8.0.i = phi ptr [ %i.o, %.thread.i.i.i ], [ %i.q, %bb.b ], [ %i.q, %bb.c ] ; 2 uses
  store ptr %.sroa.01.0.i, ptr %3, align 8, !tbaa !119, !noalias !770
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.8.0.i, ptr %i.s, align 8, !tbaa !262, !noalias !770
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %.sroa.8.0.i, ptr %i.t, align 8, !tbaa !105, !noalias !770
  invoke void @_ZN5arrow8FieldRefC1ENS_9FieldPathE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.y

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.w = load <2 x ptr>, ptr %i.v, align 8, !tbaa !255
  store <2 x ptr> %i.w, ptr %i.u, align 8, !tbaa !255, !noalias !770
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !79   ; 3 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !79, !noalias !770
  %.not.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow10TypeHolderC2ERKS0_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86, !noalias !770
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !3
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !3
  br label %_ZN5arrow10TypeHolderC2ERKS0_.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ae = atomicrmw volatile add ptr %i.aa, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow10TypeHolderC2ERKS0_.exit.i

_ZN5arrow10TypeHolderC2ERKS0_.exit.i:             ; preds = %bb.g, %bb.f, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  store i64 0, ptr %i.ag, align 8, !tbaa !116, !noalias !770
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  store ptr %i.af, ptr %i.ah, align 8, !tbaa !112, !noalias !770
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  store i64 0, ptr %i.ai, align 8, !tbaa !115, !noalias !770
  %i.aj = load i64, ptr %i.m, align 8, !tbaa !308 ; 13 uses
  %i.ak = load ptr, ptr %i.k, align 8, !tbaa !112 ; 4 uses
  %i.al = ptrtoaddr ptr %i.ak to i64
  %i.am = icmp ugt i64 %i.aj, 2
  br i1 %i.am, label %bb.h, label %_ZN5arrow8internal18SmallVectorStorageIiLm2EE9bump_sizeEm.exit.i.i.i

bb.h:                                             ; preds = %_ZN5arrow10TypeHolderC2ERKS0_.exit.i
  store i64 %i.aj, ptr %i.ai, align 8, !tbaa !115, !noalias !770
  %i.an = icmp ugt i64 %i.aj, 4611686018427387903
  %i.ao = shl nuw i64 %i.aj, 2
  %i.ap = select i1 %i.an, i64 -1, i64 %i.ao
  %i.aq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ap) #30
          to label %_ZN5arrow8internal18SmallVectorStorageIiLm2EE9bump_sizeEm.exit.i.thread.i.i unwind label %_ZN5arrow8internal18SmallVectorStorageIiLm2EED2Ev.exit.i.i ; 2 uses

_ZN5arrow8internal18SmallVectorStorageIiLm2EE9bump_sizeEm.exit.i.thread.i.i: ; preds = %bb.h
  store ptr %i.aq, ptr %i.ah, align 8, !tbaa !112, !noalias !770
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !116, !noalias !770
  br label %.lr.ph.i.preheader.i.i

_ZN5arrow8internal18SmallVectorStorageIiLm2EE9bump_sizeEm.exit.i.i.i: ; preds = %_ZN5arrow10TypeHolderC2ERKS0_.exit.i
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !116, !noalias !770
  %.not.i.i14.i = icmp eq i64 %i.aj, 0
  br i1 %.not.i.i14.i, label %_ZN5arrow8internal16StaticVectorImplIiLm2ENS0_18SmallVectorStorageIiLm2EEEEC2ERKS4_.exit.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN5arrow8internal18SmallVectorStorageIiLm2EE9bump_sizeEm.exit.i.i.i, %_ZN5arrow8internal18SmallVectorStorageIiLm2EE9bump_sizeEm.exit.i.thread.i.i
  %i.ar = phi ptr [ %i.aq, %_ZN5arrow8internal18SmallVectorStorageIiLm2EE9bump_sizeEm.exit.i.thread.i.i ], [ %i.af, %_ZN5arrow8internal18SmallVectorStorageIiLm2EE9bump_sizeEm.exit.i.i.i ] ; 7 uses
  %min.iters.check = icmp ult i64 %i.aj, 8
  %i.as = ptrtoaddr ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.al
  %diff.check = icmp ult i64 %i.at, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader.i.i
  %n.vec = and i64 %i.aj, -8                      ; 4 uses
  %i.au = shl i64 %n.vec, 2
  %i.av = getelementptr i8, ptr %i.ak, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aw = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.aw ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %index ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !3
  %wide.load85 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !3
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <4 x i32> %wide.load, ptr %i.ax, align 4, !tbaa !3
  store <4 x i32> %wide.load85, ptr %i.az, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !773

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8internal16StaticVectorImplIiLm2ENS0_18SmallVectorStorageIiLm2EEEEC2ERKS4_.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %.lr.ph.i.preheader.i.i, %middle.block
  %.010.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.preheader.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %.089.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.preheader.i.i ], [ %i.av, %middle.block ] ; 2 uses
  %xtraiter = and i64 %i.aj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.010.i.i.i.prol = phi i64 [ %i.bd, %.lr.ph.i.i.i.prol ], [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.089.i.i.i.prol = phi ptr [ %i.be, %.lr.ph.i.i.i.prol ], [ %.089.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.010.i.i.i.prol
  %i.bc = load i32, ptr %.089.i.i.i.prol, align 4, !tbaa !3
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !3
  %i.bd = add nuw i64 %.010.i.i.i.prol, 1         ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.089.i.i.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !776

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.010.i.i.i.unr = phi i64 [ %.010.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bd, %.lr.ph.i.i.i.prol ]
  %.089.i.i.i.unr = phi ptr [ %.089.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.be, %.lr.ph.i.i.i.prol ]
  %i.bf = sub i64 %.010.i.i.i.ph, %i.aj
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %_ZN5arrow8internal16StaticVectorImplIiLm2ENS0_18SmallVectorStorageIiLm2EEEEC2ERKS4_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.010.i.i.i = phi i64 [ %i.bv, %.lr.ph.i.i.i ], [ %.010.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %.089.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i ], [ %.089.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.010.i.i.i
  %i.bi = load i32, ptr %.089.i.i.i, align 4, !tbaa !3
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !3
end_hunk_3
begin_hunk_4_@"_ZN5arrow7compute16ModifyExpressionIZNS0_15RemoveNamedRefsENS0_10ExpressionEE3$_0ZNS0_15RemoveNamedRefsES2_E3$_1EENS_6ResultIS2_EES2_RKT_RKT0_":bb.a
  %i.fe = load atomic i64, ptr %i.fd acquire, align 8 ; 2 uses
  %i.ff = icmp eq i64 %i.fe, 4294967297
  %i.fg = trunc i64 %i.fe to i32                  ; 2 uses
  br i1 %i.ff, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.fd, align 8, !tbaa !80
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 12
  store i32 0, ptr %i.fh, align 4, !tbaa !82
  %i.fi = load ptr, ptr %i.fc, align 8, !tbaa !83
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #31, !inline_history !345
  %i.fl = load ptr, ptr %i.fc, align 8, !tbaa !83
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #31, !inline_history !345
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit66thread-pre-split

bb.an:                                            ; preds = %bb.al
  %i.fo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i59 = icmp eq i8 %i.fo, 0
  br i1 %.not.i.i.i.i.i.i59, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fp = add nsw i32 %i.fg, -1
  store i32 %i.fp, ptr %i.fd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i60

bb.ap:                                            ; preds = %bb.an
  %i.fq = atomicrmw volatile add ptr %i.fd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i60

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i60: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i.i.i61 = phi i32 [ %i.fg, %bb.ao ], [ %i.fq, %bb.ap ]
  %i.fr = icmp eq i32 %.0.i.i.i.i.i.i.i61, 1
  br i1 %i.fr, label %bb.aq, label %_ZN5arrow7compute10ExpressionD2Ev.exit66thread-pre-split, !prof !87

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i60
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fc) #31
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit66thread-pre-split

_ZN5arrow7compute10ExpressionD2Ev.exit66thread-pre-split: ; preds = %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i60, %bb.aq
  %.pr = load ptr, ptr %1, align 8, !tbaa !63
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit66

_ZN5arrow7compute10ExpressionD2Ev.exit66:         ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit66thread-pre-split, %bb.ak
  %i.fs = phi ptr [ %.pr, %_ZN5arrow7compute10ExpressionD2Ev.exit66thread-pre-split ], [ %i.fb, %bb.ak ] ; 6 uses
  %.not.i.i = icmp eq ptr %i.fs, null
  br i1 %.not.i.i, label %bb.ar, label %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i

_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i: ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit66
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 144
  %i.fu = load i8, ptr %i.ft, align 8, !tbaa !67
  %i.fv = icmp eq i8 %i.fu, 2
  br i1 %i.fv, label %_ZNK5arrow7compute10Expression4callEv.exit, label %bb.ar

bb.ar:                                            ; preds = %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i, %_ZN5arrow7compute10ExpressionD2Ev.exit66
  store ptr null, ptr %0, align 8, !tbaa !274
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fs, ptr %i.fw, align 8, !tbaa !63
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fy = load ptr, ptr %i.c, align 8, !tbaa !79
  store ptr null, ptr %i.c, align 8, !tbaa !79
  store ptr %i.fy, ptr %i.fx, align 8, !tbaa !79
  store ptr null, ptr %1, align 8, !tbaa !63
  br label %bb.de

_ZNK5arrow7compute10Expression4callEv.exit:       ; preds = %_ZSt6get_ifIN5arrow7compute10Expression4CallEJNS0_5DatumENS2_9ParameterES3_EENSt11add_pointerIT_E4typeEPSt7variantIJDpT0_EE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fs, i64 32 ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fs, i64 40 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !131
  %i.gc = load ptr, ptr %i.fz, align 8, !tbaa !130 ; 2 uses
  %.not4517.not = icmp eq ptr %i.gb, %i.gc
  br i1 %.not4517.not, label %_ZN5arrow7compute10ExpressionD2Ev.exit106, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5arrow7compute10Expression4callEv.exit
  %i.gd = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  br label %bb.as

bb.as:                                            ; preds = %.lr.ph, %bb.ci
  %i.gh = phi ptr [ %i.gc, %.lr.ph ], [ %i.kv, %bb.ci ]
  %.02719 = phi i64 [ 0, %.lr.ph ], [ %i.kt, %bb.ci ] ; 4 uses
  %.02818 = phi i8 [ 0, %.lr.ph ], [ %.33172, %bb.ci ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %i.gh, i64 %.02719 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !79 ; 2 uses
  %i.gl = load <2 x ptr>, ptr %i.gi, align 8, !tbaa !94
  store <2 x ptr> %i.gl, ptr %9, align 16, !tbaa !94
  %.not.i.i.i.i67 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i.i.i67, label %_ZN5arrow7compute10ExpressionC2ERKS1_.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 8 ; 3 uses
  %i.gn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i68 = icmp eq i8 %i.gn, 0
  br i1 %.not.i.i.i.i.i68, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.go = load i32, ptr %i.gm, align 4, !tbaa !3
  %i.gp = add nsw i32 %i.go, 1
  store i32 %i.gp, ptr %i.gm, align 4, !tbaa !3
  br label %_ZN5arrow7compute10ExpressionC2ERKS1_.exit

bb.av:                                            ; preds = %bb.at
  %i.gq = atomicrmw volatile add ptr %i.gm, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow7compute10ExpressionC2ERKS1_.exit

_ZN5arrow7compute10ExpressionC2ERKS1_.exit:       ; preds = %bb.as, %bb.au, %bb.av
  invoke fastcc void @"_ZN5arrow7compute16ModifyExpressionIZNS0_15RemoveNamedRefsENS0_10ExpressionEE3$_0ZNS0_15RemoveNamedRefsES2_E3$_1EENS_6ResultIS2_EES2_RKT_RKT0_"(ptr dead_on_unwind noalias nonnull writable align 8 %8, ptr noundef %9)
          to label %bb.aw unwind label %bb.bd

bb.aw:                                            ; preds = %_ZN5arrow7compute10ExpressionC2ERKS1_.exit
  %i.gr = load ptr, ptr %i.gd, align 8, !tbaa !79 ; 8 uses
  %.not.i.i.i69 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i.i69, label %_ZN5arrow7compute10ExpressionD2Ev.exit73, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8 ; 4 uses
  %i.gt = load atomic i64, ptr %i.gs acquire, align 8 ; 2 uses
  %i.gu = icmp eq i64 %i.gt, 4294967297
  %i.gv = trunc i64 %i.gt to i32                  ; 2 uses
  br i1 %i.gu, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 0, ptr %i.gs, align 8, !tbaa !80
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gr, i64 12
  store i32 0, ptr %i.gw, align 4, !tbaa !82
  %i.gx = load ptr, ptr %i.gr, align 8, !tbaa !83
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8
  call void %i.gz(ptr noundef nonnull align 8 dereferenceable(16) %i.gr) #31, !inline_history !300
  %i.ha = load ptr, ptr %i.gr, align 8, !tbaa !83
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(16) %i.gr) #31, !inline_history !300
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit73

bb.az:                                            ; preds = %bb.ax
  %i.hd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i70 = icmp eq i8 %i.hd, 0
  br i1 %.not.i.i.i.i70, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.he = add nsw i32 %i.gv, -1
  store i32 %i.he, ptr %i.gs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i71

bb.bb:                                            ; preds = %bb.az
  %i.hf = atomicrmw volatile add ptr %i.gs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i71

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i71: ; preds = %bb.bb, %bb.ba
  %.0.i.i.i.i.i72 = phi i32 [ %i.gv, %bb.ba ], [ %i.hf, %bb.bb ]
  %i.hg = icmp eq i32 %.0.i.i.i.i.i72, 1
  br i1 %i.hg, label %bb.bc, label %_ZN5arrow7compute10ExpressionD2Ev.exit73, !prof !87

bb.bc:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i71
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gr) #31
  br label %_ZN5arrow7compute10ExpressionD2Ev.exit73

_ZN5arrow7compute10ExpressionD2Ev.exit73:         ; preds = %bb.aw, %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i71, %bb.bc
  %i.hh = load ptr, ptr %8, align 8, !tbaa !274
  %i.hi = icmp eq ptr %i.hh, null
  br i1 %i.hi, label %bb.be, label %bb.bw, !prof !290

bb.bd:                                            ; preds = %_ZN5arrow7compute10ExpressionC2ERKS1_.exit
  %i.hj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute10ExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #31
  br label %bb.dd

bb.be:                                            ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit73
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !785)
  call void @llvm.experimental.noalias.scope.decl(metadata !788)
  %i.hk = load ptr, ptr %i.ge, align 8, !tbaa !63, !noalias !791 ; 3 uses
  store ptr %i.hk, ptr %10, align 8, !tbaa !63, !alias.scope !791
  %i.hl = load ptr, ptr %i.gg, align 8, !tbaa !79, !noalias !791 ; 2 uses
  store ptr null, ptr %i.gg, align 8, !tbaa !79, !noalias !791
  store ptr %i.hl, ptr %i.gf, align 8, !tbaa !79, !alias.scope !791
  store ptr null, ptr %i.ge, align 8, !tbaa !63, !noalias !791
  %i.hm = load ptr, ptr %i.fz, align 8, !tbaa !130
  %i.hn = getelementptr inbounds nuw [16 x i8], ptr %i.hm, i64 %.02719
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !63
  %i.hp = icmp eq ptr %i.hk, %i.ho
  br i1 %i.hp, label %_ZN5arrow7compute10ExpressionaSEOS1_.exit78.jt6, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hq = trunc nuw i8 %.02818 to i1
  br i1 %i.hq, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hr = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.fz)
          to label %._crit_edge22 unwind label %bb.bh ; 0 uses

._crit_edge22:                                    ; preds = %bb.bg
  %.pre = load ptr, ptr %10, align 8, !tbaa !63
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.hs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute10ExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  call void @_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.dd

bb.bi:                                            ; preds = %._crit_edge22, %bb.bf
  %14 = phi ptr [ %.pre, %._crit_edge22 ], [ %i.hk, %bb.bf ]
  %i.ht = load ptr, ptr %7, align 16, !tbaa !130
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %i.ht, i64 %.02719 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  store ptr %14, ptr %i.hu, align 8, !tbaa !78
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !79 ; 8 uses
  store ptr %i.hl, ptr %i.hv, align 8, !tbaa !79
  %.not.i.i.i.i.i74 = icmp eq ptr %i.hw, null
  br i1 %.not.i.i.i.i.i74, label %_ZN5arrow7compute10ExpressionaSEOS1_.exit78.jt6, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8 ; 4 uses
  %i.hy = load atomic i64, ptr %i.hx acquire, align 8 ; 2 uses
  %i.hz = icmp eq i64 %i.hy, 4294967297
  %i.ia = trunc i64 %i.hy to i32                  ; 2 uses
  br i1 %i.hz, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %i.hx, align 8, !tbaa !80
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hw, i64 12
  store i32 0, ptr %i.ib, align 4, !tbaa !82
  %i.ic = load ptr, ptr %i.hw, align 8, !tbaa !83
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ie = load ptr, ptr %i.id, align 8
  call void %i.ie(ptr noundef nonnull align 8 dereferenceable(16) %i.hw) #31, !inline_history !345
  %i.if = load ptr, ptr %i.hw, align 8, !tbaa !83
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.ih = load ptr, ptr %i.ig, align 8
  call void %i.ih(ptr noundef nonnull align 8 dereferenceable(16) %i.hw) #31, !inline_history !345
  br label %_ZN5arrow7compute10ExpressionaSEOS1_.exit78.jt6

bb.bl:                                            ; preds = %bb.bj
  %i.ii = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i75 = icmp eq i8 %i.ii, 0
  br i1 %.not.i.i.i.i.i.i75, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ij = add nsw i32 %i.ia, -1
  store i32 %i.ij, ptr %i.hx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i76

bb.bn:                                            ; preds = %bb.bl
  %i.ik = atomicrmw volatile add ptr %i.hx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i76

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i76: ; preds = %bb.bn, %bb.bm
  %.0.i.i.i.i.i.i.i77 = phi i32 [ %i.ia, %bb.bm ], [ %i.ik, %bb.bn ]
  %i.il = icmp eq i32 %.0.i.i.i.i.i.i.i77, 1
  br i1 %i.il, label %bb.bo, label %_ZN5arrow7compute10ExpressionaSEOS1_.exit78.jt6, !prof !87

bb.bo:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i76
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hw) #31
  br label %_ZN5arrow7compute10ExpressionaSEOS1_.exit78.jt6

_ZN5arrow7compute10ExpressionaSEOS1_.exit78.jt6:  ; preds = %bb.bo, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i76, %bb.bk, %bb.bi, %bb.be
  %.039.jt6 = phi i32 [ 6, %bb.be ], [ 0, %bb.bi ], [ 0, %bb.bk ], [ 0, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i76 ], [ 0, %bb.bo ] ; 2 uses
  %.230.jt6 = phi i8 [ %.02818, %bb.be ], [ 1, %bb.bi ], [ 1, %bb.bk ], [ 1, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i76 ], [ 1, %bb.bo ] ; 3 uses
  %i.im = load ptr, ptr %i.gf, align 8, !tbaa !79 ; 8 uses
  %.not.i.i.i79.jt6 = icmp eq ptr %i.im, null
  br i1 %.not.i.i.i79.jt6, label %bb.bv, label %bb.bp

bb.bp:                                            ; preds = %_ZN5arrow7compute10ExpressionaSEOS1_.exit78.jt6
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8 ; 4 uses
  %i.io = load atomic i64, ptr %i.in acquire, align 8 ; 2 uses
  %i.ip = icmp eq i64 %i.io, 4294967297
  %i.iq = trunc i64 %i.io to i32                  ; 2 uses
  br i1 %i.ip, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i32 0, ptr %i.in, align 8, !tbaa !80
  %i.ir = getelementptr inbounds nuw i8, ptr %i.im, i64 12
  store i32 0, ptr %i.ir, align 4, !tbaa !82
  %i.is = load ptr, ptr %i.im, align 8, !tbaa !83
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %i.iu = load ptr, ptr %i.it, align 8
  call void %i.iu(ptr noundef nonnull align 8 dereferenceable(16) %i.im) #31, !inline_history !300
  %i.iv = load ptr, ptr %i.im, align 8, !tbaa !83
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  %i.ix = load ptr, ptr %i.iw, align 8
  call void %i.ix(ptr noundef nonnull align 8 dereferenceable(16) %i.im) #31, !inline_history !300
  br label %bb.bv

bb.br:                                            ; preds = %bb.bp
  %i.iy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i80.jt6 = icmp eq i8 %i.iy, 0
  br i1 %.not.i.i.i.i80.jt6, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.iz = add nsw i32 %i.iq, -1
  store i32 %i.iz, ptr %i.in, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i81.jt6

bb.bt:                                            ; preds = %bb.br
  %i.ja = atomicrmw volatile add ptr %i.in, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i81.jt6

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i81.jt6: ; preds = %bb.bs, %bb.bt
  %.0.i.i.i.i.i82.jt6 = phi i32 [ %i.ja, %bb.bt ], [ %i.iq, %bb.bs ]
  %i.jb = icmp eq i32 %.0.i.i.i.i.i82.jt6, 1
  br i1 %i.jb, label %bb.bu, label %bb.bv, !prof !87

bb.bu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i81.jt6
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.im) #31
  br label %bb.bv

bb.bv:                                            ; preds = %_ZN5arrow7compute10ExpressionaSEOS1_.exit78.jt6, %bb.bq, %bb.bu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i81.jt6
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31
  %i.jc = load ptr, ptr %8, align 8, !tbaa !274   ; 2 uses
  %i.jd = icmp eq ptr %i.jc, null
  br i1 %i.jd, label %bb.bx, label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.thread.i, !prof !290

bb.bw:                                            ; preds = %_ZN5arrow7compute10ExpressionD2Ev.exit73
  call void @_ZN5arrow6ResultINS_7compute10ExpressionEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #31
  %i.je = load ptr, ptr %8, align 8, !tbaa !274   ; 2 uses
  %i.jf = icmp eq ptr %i.je, null
  br i1 %i.jf, label %bb.by, label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.thread.i, !prof !290

bb.bx:                                            ; preds = %bb.bv
  %i.jg = load ptr, ptr %i.gg, align 8, !tbaa !79 ; 8 uses
  %.not.i.i.i.i.i.i84.jt6 = icmp eq ptr %i.jg, null
  br i1 %.not.i.i.i.i.i.i84.jt6, label %_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev.exit.jt6, label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.jh = load ptr, ptr %i.gg, align 8, !tbaa !79 ; 8 uses
  %.not.i.i.i.i.i.i84.jt1 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i.i.i.i84.jt1, label %_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev.exit.jt1, label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 8 ; 3 uses
  %i.jj = load atomic i64, ptr %i.ji acquire, align 8 ; 2 uses
  %i.jk = icmp eq i64 %i.jj, 4294967297
  br i1 %i.jk, label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.i.jt6, label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jh, i64 8 ; 3 uses
  %i.jm = load atomic i64, ptr %i.jl acquire, align 8 ; 2 uses
  %i.jn = icmp eq i64 %i.jm, 4294967297
  br i1 %i.jn, label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.i.jt1, label %bb.cb

bb.cb:                                            ; preds = %bb.bz, %bb.ca
  %.in = phi i64 [ %i.jj, %bb.bz ], [ %i.jm, %bb.ca ]
  %i.jo = phi ptr [ %i.ji, %bb.bz ], [ %i.jl, %bb.ca ] ; 2 uses
  %i.jp = phi ptr [ %i.jg, %bb.bz ], [ %i.jh, %bb.ca ]
  %.33171.a = phi i8 [ %.230.jt6, %bb.bz ], [ %.02818, %bb.ca ] ; 2 uses
  %.14068 = phi i32 [ %.039.jt6, %bb.bz ], [ 1, %bb.ca ] ; 2 uses
  %i.jq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !86
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.jq, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jr = trunc i64 %.in to i32                   ; 2 uses
  %i.js = add nsw i32 %i.jr, -1
  store i32 %i.js, ptr %i.jo, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.cd:                                            ; preds = %bb.cb
  %i.jt = atomicrmw volatile add ptr %i.jo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.cd, %bb.cc
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.jr, %bb.cc ], [ %i.jt, %bb.cd ]
  %i.ju = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.ju, label %bb.ce, label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.i, !prof !87

bb.ce:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jp) #31
  br label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.i

_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.i: ; preds = %bb.ce, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  %.pr.i.pr = load ptr, ptr %8, align 8, !tbaa !274 ; 2 uses
  %.not.i.i85 = icmp eq ptr %.pr.i.pr, null
  br i1 %.not.i.i85, label %_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev.exit, label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.thread.i, !prof !283

_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.i.jt6: ; preds = %bb.bz
  store i32 0, ptr %i.ji, align 8, !tbaa !80
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jg, i64 12
  store i32 0, ptr %i.jv, align 4, !tbaa !82
  %i.jw = load ptr, ptr %i.jg, align 8, !tbaa !83
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.jy = load ptr, ptr %i.jx, align 8
  call void %i.jy(ptr noundef nonnull align 8 dereferenceable(16) %i.jg) #31, !inline_history !346
  %i.jz = load ptr, ptr %i.jg, align 8, !tbaa !83
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 24
  %i.kb = load ptr, ptr %i.ka, align 8
  call void %i.kb(ptr noundef nonnull align 8 dereferenceable(16) %i.jg) #31, !inline_history !346
  %.pr.i.jt6.pr = load ptr, ptr %8, align 8, !tbaa !274 ; 2 uses
  %.not.i.i85.jt6 = icmp eq ptr %.pr.i.jt6.pr, null
  br i1 %.not.i.i85.jt6, label %_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev.exit.jt6, label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.thread.i.jt6, !prof !283

_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.i.jt1: ; preds = %bb.ca
  store i32 0, ptr %i.jl, align 8, !tbaa !80
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jh, i64 12
  store i32 0, ptr %i.kc, align 4, !tbaa !82
  %i.kd = load ptr, ptr %i.jh, align 8, !tbaa !83
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(16) %i.jh) #31, !inline_history !346
  %i.kg = load ptr, ptr %i.jh, align 8, !tbaa !83
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 24
  %i.ki = load ptr, ptr %i.kh, align 8
  call void %i.ki(ptr noundef nonnull align 8 dereferenceable(16) %i.jh) #31, !inline_history !346
  %.pr.i.jt1.pr = load ptr, ptr %8, align 8, !tbaa !274 ; 2 uses
  %.not.i.i85.jt1 = icmp eq ptr %.pr.i.jt1.pr, null
  br i1 %.not.i.i85.jt1, label %_ZN5arrow6ResultINS_7compute10ExpressionEED2Ev.exit.jt1, label %_ZN5arrow6ResultINS_7compute10ExpressionEE7DestroyEv.exit.thread.i.jt1, !prof !283
end_hunk_4
