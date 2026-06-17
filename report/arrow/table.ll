inline.NumInlined: 2891
inline.NumDeleted: 1224
begin_hunk_0_@_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEED2Ev:bb.a
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !118    ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread, !prof !129

_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !130, !range !140, !noundef !141
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_6SchemaEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !314    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !317  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow6SchemaEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN5arrow6SchemaEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6SchemaEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !62
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !64
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #27, !inline_history !379
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #27, !inline_history !379
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6SchemaEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6SchemaEEEvPT_.exit.i.i, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6SchemaEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow6SchemaEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !343

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6SchemaEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !314
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !318
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6SchemaEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6SchemaEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow5TableEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !310    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !307  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow5TableEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN5arrow5TableEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5TableEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !62
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !64
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #27, !inline_history !380
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #27, !inline_history !380
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5TableEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5TableEEEvPT_.exit.i.i, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5TableEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5TableEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !366

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5TableEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !310
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5TableEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !326
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5TableEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5TableEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5TableEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow20PromoteTableToSchemaERKSt10shared_ptrINS_5TableEERKS0_INS_6SchemaEERKNS_7compute11CastOptionsEPNS_10MemoryPoolE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(46) %3, ptr noundef %4) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %class.anon.184, align 1            ; 6 uses
  %7 = alloca %class.anon.184, align 1            ; 3 uses
  %8 = alloca %class.anon.184, align 1            ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::shared_ptr", align 8  ; 9 uses
  %13 = alloca %"class.std::shared_ptr.10", align 16 ; 5 uses
  %14 = alloca %"class.std::vector.13", align 8   ; 19 uses
  %15 = alloca %class.anon.109, align 8           ; 8 uses
  %16 = alloca %"class.std::vector.78", align 8   ; 11 uses
  %17 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %18 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %19 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %20 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %21 = alloca %"class.std::shared_ptr.49", align 16 ; 9 uses
  %22 = alloca %"class.arrow::Status", align 8    ; 8 uses
  %23 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %24 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.arrow::compute::ExecContext", align 8 ; 6 uses
  %28 = alloca %"class.arrow::Result.111", align 8 ; 17 uses
  %29 = alloca %"struct.arrow::Datum", align 8    ; 7 uses
  %30 = alloca %"class.std::shared_ptr.49", align 8 ; 4 uses
  %31 = alloca %"struct.arrow::TypeHolder", align 8 ; 8 uses
  %32 = alloca %"class.std::shared_ptr.38", align 8 ; 5 uses
  %33 = alloca %"struct.arrow::Datum", align 8    ; 9 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %34 = alloca %"class.arrow::Status", align 8    ; 7 uses
  %35 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %36 = alloca %"class.std::vector.13", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.b = load ptr, ptr %1, align 8, !tbaa !106    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 3 uses
  store ptr %i.d, ptr %12, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52   ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !52
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.h, align 4, !tbaa !3
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %12, align 8, !tbaa !35
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit:  ; preds = %bb.a, %bb.c, %bb.d
  %i.m = phi ptr [ %i.d, %bb.a ], [ %i.d, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !35
  %i.o = invoke noundef zeroext i1 @_ZNK5arrow6Schema6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit
  br i1 %i.o, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.p = load ptr, ptr %1, align 8, !tbaa !106    ; 2 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !35
  %i.r = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema8metadataEv(ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.10") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.i

_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.g
  store ptr null, ptr %0, align 8, !tbaa !118
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load <2 x ptr>, ptr %13, align 16, !tbaa !51
  store <2 x ptr> %i.w, ptr %i.v, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit248

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit248

bb.j:                                             ; preds = %bb.e
  %i.z = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %bb.k unwind label %bb.r       ; 4 uses

bb.k:                                             ; preds = %bb.j
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %.not.i.i125 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i125, label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = add nsw i64 %i.aa, 63                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = and i64 %i.ac, 2305843009213693944
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #25
          to label %.noexc unwind label %bb.s     ; 4 uses

.noexc:                                           ; preds = %bb.l
  %i.af = lshr i64 %i.ab, 6                       ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.af
  %i.ah = sdiv i32 %i.z, 64
  %.sext290 = sext i32 %i.ah to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %.sext290
  %i.aj = and i64 %i.aa, -9223372036854775745
  %i.ak = icmp ugt i64 %i.aj, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.ak, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.ai, i64 %storemerge.idx.i.i.i.i.i
  %i.al = and i32 %i.z, 63
  %.idx.i = shl nuw nsw i64 %i.af, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ae, i8 0, i64 %.idx.i, i1 false)
  br label %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit

_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit:            ; preds = %.noexc, %bb.k
  %.sroa.0270.0 = phi ptr [ null, %bb.k ], [ %i.ae, %.noexc ] ; 7 uses
  %.sroa.12275.0 = phi ptr [ null, %bb.k ], [ %storemerge.i.i.i.i.i, %.noexc ] ; 2 uses
  %.sroa.16.0 = phi i32 [ 0, %bb.k ], [ %i.al, %.noexc ] ; 2 uses
  %.sroa.20277.0 = phi ptr [ null, %bb.k ], [ %i.ag, %.noexc ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.am = load ptr, ptr %2, align 8, !tbaa !35
  %i.an = invoke noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.am)
          to label %bb.m unwind label %bb.t       ; 2 uses

bb.m:                                             ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.ao = sext i32 %i.an to i64                   ; 3 uses
  %i.ap = icmp slt i32 %i.an, 0
  br i1 %i.ap, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.27) #24
          to label %.noexc127 unwind label %bb.t

.noexc127:                                        ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !116
  %i.as = load ptr, ptr %14, align 8, !tbaa !77   ; 5 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  %i.aw = ashr exact i64 %i.av, 4
  %i.ax = icmp ult i64 %i.aw, %i.ao
  br i1 %i.ax, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !81 ; 3 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.au
  %i.bc = shl nuw nsw i64 %i.ao, 4
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #25
          to label %.noexc128 unwind label %bb.t  ; 4 uses

.noexc128:                                        ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_M_allocateEm.exit.i
  %.not10.i.i.i.i = icmp eq ptr %i.as, %i.az
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc128, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i ], [ %i.bd, %.noexc128 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i ], [ %i.as, %.noexc128 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.bf = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !51, !alias.scope !384, !noalias !381
  store ptr null, ptr %i.be, align 8, !tbaa !52, !alias.scope !384, !noalias !381
  store <2 x ptr> %i.bf, ptr %.012.i.i.i.i, align 8, !tbaa !51, !alias.scope !381, !noalias !384
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !82, !alias.scope !384, !noalias !381
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i.i126 = icmp eq ptr %i.bg, %i.az
  br i1 %.not.i.i.i.i126, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !386

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc128
  %.not.i8.i = icmp eq ptr %i.as, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.av) #26
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE13_M_deallocateEPS3_m.exit.i

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.p, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit.i
  store ptr %i.bd, ptr %14, align 8, !tbaa !77
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb
  store ptr %i.bi, ptr %i.ay, align 8, !tbaa !81
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %i.ao
  store ptr %i.bj, ptr %i.aq, align 8, !tbaa !116
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE7reserveEm.exit

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE13_M_deallocateEPS3_m.exit.i, %bb.o
  %i.bk = load ptr, ptr %1, align 8, !tbaa !106
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  store ptr %4, ptr %15, align 8, !tbaa !387
  %i.bn = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %14, ptr %i.bn, align 8, !tbaa !391
  %i.bo = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !392
  %i.bp = load ptr, ptr %2, align 8, !tbaa !35
  %i.bq = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5arrow6Schema6fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.bp)
          to label %bb.q unwind label %bb.u       ; 2 uses

bb.q:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE7reserveEm.exit
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !210 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !210 ; 2 uses
  %i.bu = icmp eq ptr %i.br, %i.bt
  br i1 %i.bu, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %28, i64 24
  %i.cf = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.ch = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  br label %bb.v

bb.r:                                             ; preds = %bb.j
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit248

bb.s:                                             ; preds = %bb.l
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit248

bb.t:                                             ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE11_M_allocateEm.exit.i, %bb.n, %_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_.exit
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

bb.u:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE7reserveEm.exit
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ex

bb.v:                                             ; preds = %.lr.ph, %bb.dw
  %.sroa.0266.0295 = phi ptr [ %i.br, %.lr.ph ], [ %i.mz, %bb.dw ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  %i.cr = load ptr, ptr %12, align 8, !tbaa !35   ; 2 uses
  %i.cs = load ptr, ptr %.sroa.0266.0295, align 8, !tbaa !53 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !153
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !235
  invoke void @_ZNK5arrow6Schema18GetAllFieldIndicesESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.78") align 8 %16, ptr noundef nonnull align 8 dereferenceable(32) %i.cr, i64 %i.cw, ptr %i.cu)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.cx = load ptr, ptr %16, align 8, !tbaa !393  ; 3 uses
  %i.cy = load ptr, ptr %i.bv, align 8, !tbaa !393 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  %i.da = load ptr, ptr %.sroa.0266.0295, align 8, !tbaa !53
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 56
  invoke fastcc void @"_ZZN5arrow20PromoteTableToSchemaERKSt10shared_ptrINS_5TableEERKS0_INS_6SchemaEERKNS_7compute11CastOptionsEPNS_10MemoryPoolEENK3$_0clERKS0_INS_8DataTypeEE"(ptr dead_on_unwind noalias writable align 8 %18, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(16) %i.db)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.z

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.x
  %i.dc = load ptr, ptr %18, align 8, !tbaa !118  ; 2 uses
  store ptr %i.dc, ptr %17, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.ac, label %bb.aa, !prof !121

bb.y:                                             ; preds = %bb.v
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit194

bb.z:                                             ; preds = %bb.x
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %bb.dz

bb.aa:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %17) #27
  %.pr = load ptr, ptr %17, align 8, !tbaa !118   ; 2 uses
  %.not.i131 = icmp eq ptr %.pr, null
  br i1 %.not.i131, label %_ZN5arrow6StatusD2Ev.exit132, label %bb.ab, !prof !292

bb.ab:                                            ; preds = %bb.aa
  %i.dg = getelementptr inbounds nuw i8, ptr %.pr, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !130, !range !140, !noundef !141
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %_ZN5arrow6StatusD2Ev.exit132, label %37

37:                                               ; preds = %bb.ab
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %17) #27
  br label %_ZN5arrow6StatusD2Ev.exit132

bb.ac:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %48

_ZN5arrow6StatusD2Ev.exit132:                     ; preds = %bb.ab, %bb.aa, %37
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %bb.du

bb.ad:                                            ; preds = %bb.w
  %i.dj = ptrtoint ptr %i.cy to i64
  %i.dk = ptrtoint ptr %i.cx to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = icmp ugt i64 %i.dl, 4
  br i1 %i.dm, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  %i.dn = load ptr, ptr %.sroa.0266.0295, align 8, !tbaa !53
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27, !noalias !394
  invoke void @_ZN5arrow8internal12JoinToStringIJRA67_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 1 dereferenceable(67) @.str.19, ptr noundef nonnull align 8 dereferenceable(32) %i.do)
          to label %.noexc133 unwind label %bb.aj

.noexc133:                                        ; preds = %bb.ae
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %19, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %.noexc133
  %i.dp = load ptr, ptr %11, align 8, !tbaa !153, !noalias !394 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.cl
  br i1 %i.dq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.af
  %i.dr = load i64, ptr %i.cl, align 8, !tbaa !61, !noalias !394
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.ag:                                            ; preds = %.noexc133
  %i.dt = landingpad { ptr, i32 }
          cleanup
  %i.du = load ptr, ptr %11, align 8, !tbaa !153, !noalias !394 ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.cl
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.ag
  %i.dw = load i64, ptr %i.cl, align 8, !tbaa !61, !noalias !394
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27, !noalias !394
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27, !noalias !394
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %19) #27
  %i.dy = load ptr, ptr %19, align 8, !tbaa !118  ; 2 uses
  %.not.i134 = icmp eq ptr %i.dy, null
  br i1 %.not.i134, label %_ZN5arrow6StatusD2Ev.exit135, label %bb.ah, !prof !121

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 1
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !130, !range !140, !noundef !141
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %_ZN5arrow6StatusD2Ev.exit135, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #27
  br label %_ZN5arrow6StatusD2Ev.exit135

_ZN5arrow6StatusD2Ev.exit135:                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %bb.du

bb.aj:                                            ; preds = %bb.ae
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.aj
  %eh.lpad-body = phi { ptr, i32 } [ %i.ec, %bb.aj ], [ %i.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %bb.dz

bb.ak:                                            ; preds = %bb.ad
  %i.ed = load i32, ptr %i.cx, align 4, !tbaa !3  ; 5 uses
  %i.ee = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32) %i.cr, i32 noundef %i.ed)
          to label %bb.al unwind label %bb.as     ; 3 uses

bb.al:                                            ; preds = %bb.ak
  %i.ef = load ptr, ptr %.sroa.0266.0295, align 8, !tbaa !53 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 72
  %i.eh = load i8, ptr %i.eg, align 8, !tbaa !399, !range !140, !noundef !141
  %i.ei = trunc nuw i8 %i.eh to i1
  %.pre299 = load ptr, ptr %i.ee, align 8, !tbaa !53 ; 3 uses
  br i1 %i.ei, label %bb.au, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ej = getelementptr inbounds nuw i8, ptr %.pre299, i64 72
  %i.ek = load i8, ptr %i.ej, align 8, !tbaa !399, !range !140, !noundef !141
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.an, label %bb.au

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  %i.em = getelementptr inbounds nuw i8, ptr %.pre299, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27, !noalias !404
  invoke void @_ZN5arrow8internal12JoinToStringIJRA25_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA49_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 1 dereferenceable(25) @.str.20, ptr noundef nonnull align 8 dereferenceable(32) %i.em, ptr noundef nonnull align 1 dereferenceable(49) @.str.21)
          to label %.noexc138 unwind label %bb.at

.noexc138:                                        ; preds = %bb.an
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %20, i8 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %.noexc138
  %i.en = load ptr, ptr %10, align 8, !tbaa !153, !noalias !404 ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.bw
  br i1 %i.eo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i136: ; preds = %bb.ao
  %i.ep = load i64, ptr %i.bw, align 8, !tbaa !61, !noalias !404
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i137

bb.ap:                                            ; preds = %.noexc138
  %i.er = landingpad { ptr, i32 }
          cleanup
  %i.es = load ptr, ptr %10, align 8, !tbaa !153, !noalias !404 ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.bw
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.ap
  %i.eu = load i64, ptr %i.bw, align 8, !tbaa !61, !noalias !404
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27, !noalias !404
  br label %.body139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i137: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27, !noalias !404
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %20) #27
  %i.ew = load ptr, ptr %20, align 8, !tbaa !118  ; 2 uses
  %.not.i141 = icmp eq ptr %i.ew, null
  br i1 %.not.i141, label %_ZN5arrow6StatusD2Ev.exit142, label %bb.aq, !prof !121

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i137
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 1
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !130, !range !140, !noundef !141
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %_ZN5arrow6StatusD2Ev.exit142, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %20) #27
  br label %_ZN5arrow6StatusD2Ev.exit142

_ZN5arrow6StatusD2Ev.exit142:                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i137, %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  br label %bb.du

bb.as:                                            ; preds = %bb.bp, %bb.au, %bb.ak
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.at:                                            ; preds = %bb.an
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %.body139

.body139:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, %bb.at
  %eh.lpad-body140 = phi { ptr, i32 } [ %i.fb, %bb.at ], [ %i.er, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  br label %bb.dz

bb.au:                                            ; preds = %bb.al, %bb.am
  %i.fc = sext i32 %i.ed to i64                   ; 2 uses
  %i.fd = sdiv i32 %i.ed, 64
  %.sext = sext i32 %i.fd to i64
  %i.fe = getelementptr inbounds [8 x i8], ptr %.sroa.0270.0, i64 %.sext
  %i.ff = and i64 %i.fc, -9223372036854775745
  %i.fg = icmp ugt i64 %i.ff, -9223372036854775808
  %storemerge.idx.i.i.i.i.i143 = select i1 %i.fg, i64 -8, i64 0
  %storemerge.i.i.i.i.i144 = getelementptr inbounds i8, ptr %i.fe, i64 %storemerge.idx.i.i.i.i.i143 ; 2 uses
  %i.fh = and i64 %i.fc, 63
  %i.fi = shl nuw i64 1, %i.fh
  %i.fj = load i64, ptr %storemerge.i.i.i.i.i144, align 8, !tbaa !109
  %i.fk = or i64 %i.fj, %i.fi
  store i64 %i.fk, ptr %storemerge.i.i.i.i.i144, align 8, !tbaa !109
  %i.fl = getelementptr inbounds nuw i8, ptr %.pre299, i64 56
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !190
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ef, i64 56
  %i.fo = invoke noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKSt10shared_ptrIS0_Eb(ptr noundef nonnull align 8 dereferenceable(72) %i.fm, ptr noundef nonnull align 8 dereferenceable(16) %i.fn, i1 noundef zeroext false)
          to label %bb.av unwind label %bb.as

bb.av:                                            ; preds = %bb.au
  br i1 %i.fo, label %bb.aw, label %bb.bj

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  %i.fp = load ptr, ptr %1, align 8, !tbaa !106   ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !33
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8
  invoke void %i.fs(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.49") align 8 %21, ptr noundef nonnull align 8 dereferenceable(32) %i.fp, i32 noundef %i.ed)
          to label %bb.ax unwind label %bb.bg

bb.ax:                                            ; preds = %bb.aw
  %i.ft = load ptr, ptr %i.cj, align 8, !tbaa !81 ; 5 uses
  %i.fu = load ptr, ptr %i.aq, align 8, !tbaa !116
  %.not.i.i145 = icmp eq ptr %i.ft, %i.fu
  br i1 %.not.i.i145, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store ptr null, ptr %i.fv, align 8, !tbaa !52
  %i.fw = load <2 x ptr>, ptr %21, align 16, !tbaa !51
  store ptr null, ptr %i.ck, align 8, !tbaa !52
  store <2 x ptr> %i.fw, ptr %i.ft, align 8, !tbaa !51
  store ptr null, ptr %21, align 16, !tbaa !82
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store ptr %i.fx, ptr %i.cj, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backEOS3_.exit

bb.az:                                            ; preds = %bb.ax
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr %i.ft, ptr noundef nonnull align 8 dereferenceable(16) %21)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backEOS3_.exit unwind label %bb.bh

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.ay, %bb.az
  %i.fy = load ptr, ptr %i.ck, align 8, !tbaa !52 ; 8 uses
  %.not.i.i147 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i147, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backEOS3_.exit
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 4 uses
  %i.ga = load atomic i64, ptr %i.fz acquire, align 8 ; 2 uses
  %i.gb = icmp eq i64 %i.ga, 4294967297
  %i.gc = trunc i64 %i.ga to i32                  ; 2 uses
  br i1 %i.gb, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.fz, align 8, !tbaa !62
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 12
  store i32 0, ptr %i.gd, align 4, !tbaa !64
  %i.ge = load ptr, ptr %i.fy, align 8, !tbaa !33
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8
  call void %i.gg(ptr noundef nonnull align 8 dereferenceable(16) %i.fy) #27, !inline_history !250
  %i.gh = load ptr, ptr %i.fy, align 8, !tbaa !33
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(16) %i.fy) #27, !inline_history !250
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bc:                                            ; preds = %bb.ba
  %i.gk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i148 = icmp eq i8 %i.gk, 0
  br i1 %.not.i.i.i148, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gl = add nsw i32 %i.gc, -1
  store i32 %i.gl, ptr %i.fz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149

bb.be:                                            ; preds = %bb.bc
  %i.gm = atomicrmw volatile add ptr %i.fz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149: ; preds = %bb.be, %bb.bd
  %.0.i.i.i.i150 = phi i32 [ %i.gc, %bb.bd ], [ %i.gm, %bb.be ]
  %i.gn = icmp eq i32 %.0.i.i.i.i150, 1
  br i1 %i.gn, label %bb.bf, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.bf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fy) #27
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backEOS3_.exit, %bb.bb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i149, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  br label %48

bb.bg:                                            ; preds = %bb.aw
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bh:                                            ; preds = %bb.az
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %21) #27
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.pn109 = phi { ptr, i32 } [ %i.gp, %bb.bh ], [ %i.go, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  br label %bb.dz

bb.bj:                                            ; preds = %bb.av
  %i.gq = load ptr, ptr %i.ee, align 8, !tbaa !53
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 56
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !190 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 40
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !191
  %i.gv = icmp eq i32 %i.gu, 0
  br i1 %i.gv, label %bb.bk, label %bb.bp

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #27
  %i.gw = load ptr, ptr %.sroa.0266.0295, align 8, !tbaa !53
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 56
  invoke fastcc void @"_ZZN5arrow20PromoteTableToSchemaERKSt10shared_ptrINS_5TableEERKS0_INS_6SchemaEERKNS_7compute11CastOptionsEPNS_10MemoryPoolEENK3$_0clERKS0_INS_8DataTypeEE"(ptr dead_on_unwind noalias writable align 8 %23, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(16) %i.gx)
          to label %_ZN5arrow6StatusD2Ev.exit152 unwind label %bb.bl

_ZN5arrow6StatusD2Ev.exit152:                     ; preds = %bb.bk
  %i.gy = load ptr, ptr %23, align 8, !tbaa !118  ; 2 uses
  store ptr %i.gy, ptr %22, align 8, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  %i.gz = icmp eq ptr %i.gy, null
  br i1 %i.gz, label %bb.bo, label %bb.bm, !prof !121

bb.bl:                                            ; preds = %bb.bk
  %i.ha = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  br label %bb.dz

bb.bm:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit152
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %22) #27
  %.pr282 = load ptr, ptr %22, align 8, !tbaa !118 ; 2 uses
  %.not.i155 = icmp eq ptr %.pr282, null
  br i1 %.not.i155, label %_ZN5arrow6StatusD2Ev.exit156, label %bb.bn, !prof !292

bb.bn:                                            ; preds = %bb.bm
  %i.hb = getelementptr inbounds nuw i8, ptr %.pr282, i64 1
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !130, !range !140, !noundef !141
  %i.hd = trunc nuw i8 %i.hc to i1
  br i1 %i.hd, label %_ZN5arrow6StatusD2Ev.exit156, label %38

38:                                               ; preds = %bb.bn
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #27
  br label %_ZN5arrow6StatusD2Ev.exit156

bb.bo:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit152
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  br label %48

_ZN5arrow6StatusD2Ev.exit156:                     ; preds = %bb.bn, %bb.bm, %38
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  br label %bb.du

bb.bp:                                            ; preds = %bb.bj
  %i.he = load ptr, ptr %.sroa.0266.0295, align 8, !tbaa !53
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 56
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !190
  %i.hh = invoke noundef zeroext i1 @_ZN5arrow7compute7CanCastERKNS_8DataTypeES3_(ptr noundef nonnull align 8 dereferenceable(72) %i.gs, ptr noundef nonnull align 8 dereferenceable(72) %i.hg)
          to label %bb.bq unwind label %bb.as

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.hh, label %bb.cb, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #27
  %i.hi = load ptr, ptr %.sroa.0266.0295, align 8, !tbaa !53 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #27
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 56
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !190 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !33
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %i.ho = load ptr, ptr %i.hn, align 8
  invoke void %i.ho(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(72) %i.hl, i1 noundef zeroext false)
          to label %bb.bs unwind label %bb.by

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #27
  %i.hp = load ptr, ptr %i.ee, align 8, !tbaa !53
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 56
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !190 ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !33
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 32
  %i.hu = load ptr, ptr %i.ht, align 8
  invoke void %i.hu(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef nonnull align 8 dereferenceable(72) %i.hr, i1 noundef zeroext false)
          to label %bb.bt unwind label %bb.bz

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27, !noalias !409
  invoke void @_ZN5arrow8internal12JoinToStringIJRA25_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA23_S2_SA_RA5_S2_SA_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 1 dereferenceable(25) @.str.20, ptr noundef nonnull align 8 dereferenceable(32) %i.hj, ptr noundef nonnull align 1 dereferenceable(23) @.str.22, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 1 dereferenceable(5) @.str.23, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %.noexc159 unwind label %bb.ca

.noexc159:                                        ; preds = %bb.bt
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %24, i8 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.bu unwind label %bb.bv

bb.bu:                                            ; preds = %.noexc159
  %i.hv = load ptr, ptr %9, align 8, !tbaa !153, !noalias !409 ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.bx
  br i1 %i.hw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i157: ; preds = %bb.bu
  %i.hx = load i64, ptr %i.bx, align 8, !tbaa !61, !noalias !409
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i158

bb.bv:                                            ; preds = %.noexc159
  %i.hz = landingpad { ptr, i32 }
          cleanup
  %i.ia = load ptr, ptr %9, align 8, !tbaa !153, !noalias !409 ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.bx
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i: ; preds = %bb.bv
  %i.ic = load i64, ptr %i.bx, align 8, !tbaa !61, !noalias !409
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.id) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27, !noalias !409
  br label %.body160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i158: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27, !noalias !409
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %24) #27
  %i.ie = load ptr, ptr %24, align 8, !tbaa !118  ; 2 uses
  %.not.i162 = icmp eq ptr %i.ie, null
  br i1 %.not.i162, label %_ZN5arrow6StatusD2Ev.exit163, label %bb.bw, !prof !121

bb.bw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i158
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 1
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !130, !range !140, !noundef !141
  %i.ih = trunc nuw i8 %i.ig to i1
  br i1 %i.ih, label %_ZN5arrow6StatusD2Ev.exit163, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %24) #27
  br label %_ZN5arrow6StatusD2Ev.exit163

_ZN5arrow6StatusD2Ev.exit163:                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i158, %bb.bw, %bb.bx
  %i.ii = load ptr, ptr %26, align 8, !tbaa !153  ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.by
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit163
  %i.ik = load i64, ptr %i.by, align 8, !tbaa !61
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.il) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit163, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  %i.im = load ptr, ptr %25, align 8, !tbaa !153  ; 2 uses
  %i.in = icmp eq ptr %i.im, %i.bz
  br i1 %i.in, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.io = load i64, ptr %i.bz, align 8, !tbaa !61
  %i.ip = add i64 %i.io, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.ip) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  br label %bb.du

bb.by:                                            ; preds = %bb.br
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

bb.bz:                                            ; preds = %bb.bs
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

bb.ca:                                            ; preds = %bb.bt
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %.body160

.body160:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i, %bb.ca
  %eh.lpad-body161 = phi { ptr, i32 } [ %i.is, %bb.ca ], [ %i.hz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10.i.i ] ; 2 uses
  %i.it = load ptr, ptr %26, align 8, !tbaa !153  ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.by
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %.body160
  %i.iv = load i64, ptr %i.by, align 8, !tbaa !61
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.iw) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169: ; preds = %.body160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167, %bb.bz
  %.pn = phi { ptr, i32 } [ %i.ir, %bb.bz ], [ %eh.lpad-body161, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167 ], [ %eh.lpad-body161, %.body160 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  %i.ix = load ptr, ptr %25, align 8, !tbaa !153  ; 2 uses
  %i.iy = icmp eq ptr %i.ix, %i.bz
  br i1 %i.iy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169
  %i.iz = load i64, ptr %i.bz, align 8, !tbaa !61
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.ix, i64 noundef %i.ja) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170, %bb.by
  %.pn.pn = phi { ptr, i32 } [ %i.iq, %bb.by ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  br label %bb.dz

bb.cb:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #27
  invoke void @_ZN5arrow7compute11ExecContextC1EPNS_10MemoryPoolEPNS_8internal8ExecutorEPNS0_16FunctionRegistryE(ptr noundef nonnull align 8 dereferenceable(34) %27, ptr noundef %4, ptr noundef null, ptr noundef null)
          to label %bb.cc unwind label %bb.dc

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #27
  %i.jb = load ptr, ptr %1, align 8, !tbaa !106   ; 2 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !33
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.je = load ptr, ptr %i.jd, align 8
  invoke void %i.je(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.49") align 8 %30, ptr noundef nonnull align 8 dereferenceable(32) %i.jb, i32 noundef %i.ed)
          to label %bb.cd unwind label %bb.dd

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZN5arrow5DatumC1ESt10shared_ptrINS_12ChunkedArrayEE(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr noundef nonnull %30)
          to label %bb.ce unwind label %bb.de

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #27
  %i.jf = load ptr, ptr %.sroa.0266.0295, align 8, !tbaa !53 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 56
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !190 ; 3 uses
  store ptr %i.jh, ptr %32, align 8, !tbaa !190
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 64
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !52 ; 4 uses
  store ptr %i.jj, ptr %i.ca, align 8, !tbaa !52
  %.not.i.i.i173 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i173, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8 ; 3 uses
  %i.jl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i174 = icmp eq i8 %i.jl, 0
  br i1 %.not.i.i.i.i174, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jm = load i32, ptr %i.jk, align 4, !tbaa !3
  %i.jn = add nsw i32 %i.jm, 1
  store i32 %i.jn, ptr %i.jk, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.ch:                                            ; preds = %bb.cf
  %i.jo = atomicrmw volatile add ptr %i.jk, i32 1 acq_rel, align 4 ; 0 uses
  %.pre300 = load ptr, ptr %32, align 8, !tbaa !190
  %.pre301 = load ptr, ptr %i.ca, align 8, !tbaa !52
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.ce, %bb.cg, %bb.ch
  %i.jp = phi ptr [ null, %bb.ce ], [ %i.jj, %bb.cg ], [ %.pre301, %bb.ch ]
  %i.jq = phi ptr [ %i.jh, %bb.ce ], [ %i.jh, %bb.cg ], [ %.pre300, %bb.ch ] ; 2 uses
  store ptr %i.jq, ptr %31, align 8, !tbaa !370
  store ptr %i.jq, ptr %i.cb, align 8, !tbaa !190
  store ptr null, ptr %i.ca, align 8, !tbaa !52
  store ptr %i.jp, ptr %i.cc, align 8, !tbaa !52
  store ptr null, ptr %32, align 8, !tbaa !190
  invoke void @_ZN5arrow7compute4CastERKNS_5DatumERKNS_10TypeHolderERKNS0_11CastOptionsEPNS0_11ExecContextE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.111") align 8 %28, ptr noundef nonnull align 8 dereferenceable(24) %29, ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(46) %3, ptr noundef nonnull %27)
          to label %bb.ci unwind label %bb.df

bb.ci:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.jr = load ptr, ptr %i.cc, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i175 = icmp eq ptr %i.jr, null
  br i1 %.not.i.i.i175, label %_ZN5arrow10TypeHolderD2Ev.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8 ; 4 uses
  %i.jt = load atomic i64, ptr %i.js acquire, align 8 ; 2 uses
  %i.ju = icmp eq i64 %i.jt, 4294967297
  %i.jv = trunc i64 %i.jt to i32                  ; 2 uses
  br i1 %i.ju, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  store i32 0, ptr %i.js, align 8, !tbaa !62
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jr, i64 12
  store i32 0, ptr %i.jw, align 4, !tbaa !64
  %i.jx = load ptr, ptr %i.jr, align 8, !tbaa !33
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(16) %i.jr) #27, !inline_history !376
  %i.ka = load ptr, ptr %i.jr, align 8, !tbaa !33
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  %i.kc = load ptr, ptr %i.kb, align 8
  call void %i.kc(ptr noundef nonnull align 8 dereferenceable(16) %i.jr) #27, !inline_history !376
  br label %_ZN5arrow10TypeHolderD2Ev.exit

bb.cl:                                            ; preds = %bb.cj
  %i.kd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i176 = icmp eq i8 %i.kd, 0
  br i1 %.not.i.i.i.i176, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ke = add nsw i32 %i.jv, -1
  store i32 %i.ke, ptr %i.js, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.cn:                                            ; preds = %bb.cl
  %i.kf = atomicrmw volatile add ptr %i.js, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.cn, %bb.cm
  %.0.i.i.i.i.i = phi i32 [ %i.jv, %bb.cm ], [ %i.kf, %bb.cn ]
  %i.kg = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.kg, label %bb.co, label %_ZN5arrow10TypeHolderD2Ev.exit, !prof !66

bb.co:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jr) #27
  br label %_ZN5arrow10TypeHolderD2Ev.exit

_ZN5arrow10TypeHolderD2Ev.exit:                   ; preds = %bb.ci, %bb.ck, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.co
  %i.kh = load ptr, ptr %i.ca, align 8, !tbaa !52 ; 8 uses
  %.not.i.i177 = icmp eq ptr %i.kh, null
  br i1 %.not.i.i177, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cp

bb.cp:                                            ; preds = %_ZN5arrow10TypeHolderD2Ev.exit
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8 ; 4 uses
  %i.kj = load atomic i64, ptr %i.ki acquire, align 8 ; 2 uses
  %i.kk = icmp eq i64 %i.kj, 4294967297
  %i.kl = trunc i64 %i.kj to i32                  ; 2 uses
  br i1 %i.kk, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  store i32 0, ptr %i.ki, align 8, !tbaa !62
  %i.km = getelementptr inbounds nuw i8, ptr %i.kh, i64 12
  store i32 0, ptr %i.km, align 4, !tbaa !64
  %i.kn = load ptr, ptr %i.kh, align 8, !tbaa !33
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %i.kp = load ptr, ptr %i.ko, align 8
  call void %i.kp(ptr noundef nonnull align 8 dereferenceable(16) %i.kh) #27, !inline_history !117
  %i.kq = load ptr, ptr %i.kh, align 8, !tbaa !33
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 24
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(16) %i.kh) #27, !inline_history !117
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cr:                                            ; preds = %bb.cp
  %i.kt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i178 = icmp eq i8 %i.kt, 0
  br i1 %.not.i.i.i178, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ku = add nsw i32 %i.kl, -1
  store i32 %i.ku, ptr %i.ki, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i179

bb.ct:                                            ; preds = %bb.cr
  %i.kv = atomicrmw volatile add ptr %i.ki, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i179

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i179: ; preds = %bb.ct, %bb.cs
  %.0.i.i.i.i180 = phi i32 [ %i.kl, %bb.cs ], [ %i.kv, %bb.ct ]
  %i.kw = icmp eq i32 %.0.i.i.i.i180, 1
  br i1 %i.kw, label %bb.cu, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.cu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i179
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kh) #27
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow10TypeHolderD2Ev.exit, %bb.cq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i179, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(24) %29)
          to label %_ZN5arrow5DatumD2Ev.exit unwind label %bb.cv

bb.cv:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.kx = landingpad { ptr, i32 }
          catch ptr null
  %i.ky = extractvalue { ptr, i32 } %i.kx, 0
  call void @__clang_call_terminate(ptr %i.ky) #28
  unreachable

_ZN5arrow5DatumD2Ev.exit:                         ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.kz = load ptr, ptr %i.cd, align 8, !tbaa !52 ; 8 uses
  %.not.i.i181 = icmp eq ptr %i.kz, null
  br i1 %.not.i.i181, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit185, label %bb.cw

bb.cw:                                            ; preds = %_ZN5arrow5DatumD2Ev.exit
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8 ; 4 uses
  %i.lb = load atomic i64, ptr %i.la acquire, align 8 ; 2 uses
  %i.lc = icmp eq i64 %i.lb, 4294967297
  %i.ld = trunc i64 %i.lb to i32                  ; 2 uses
  br i1 %i.lc, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  store i32 0, ptr %i.la, align 8, !tbaa !62
  %i.le = getelementptr inbounds nuw i8, ptr %i.kz, i64 12
  store i32 0, ptr %i.le, align 4, !tbaa !64
  %i.lf = load ptr, ptr %i.kz, align 8, !tbaa !33
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %i.lh = load ptr, ptr %i.lg, align 8
  call void %i.lh(ptr noundef nonnull align 8 dereferenceable(16) %i.kz) #27, !inline_history !250
  %i.li = load ptr, ptr %i.kz, align 8, !tbaa !33
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 24
  %i.lk = load ptr, ptr %i.lj, align 8
  call void %i.lk(ptr noundef nonnull align 8 dereferenceable(16) %i.kz) #27, !inline_history !250
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit185

bb.cy:                                            ; preds = %bb.cw
  %i.ll = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i182 = icmp eq i8 %i.ll, 0
  br i1 %.not.i.i.i182, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.lm = add nsw i32 %i.ld, -1
  store i32 %i.lm, ptr %i.la, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i183

bb.da:                                            ; preds = %bb.cy
  %i.ln = atomicrmw volatile add ptr %i.la, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i183

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i183: ; preds = %bb.da, %bb.cz
  %.0.i.i.i.i184 = phi i32 [ %i.ld, %bb.cz ], [ %i.ln, %bb.da ]
  %i.lo = icmp eq i32 %.0.i.i.i.i184, 1
  br i1 %i.lo, label %bb.db, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit185, !prof !66

bb.db:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i183
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kz) #27
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit185

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit185: ; preds = %_ZN5arrow5DatumD2Ev.exit, %bb.cx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i183, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #27
  %i.lp = load ptr, ptr %28, align 8, !tbaa !118
  %i.lq = icmp eq ptr %i.lp, null
  br i1 %i.lq, label %bb.di, label %bb.dq, !prof !121

bb.dc:                                            ; preds = %bb.cb
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.dd:                                            ; preds = %bb.cc
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.de:                                            ; preds = %bb.cd
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.df:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.lu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow10TypeHolderD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %31) #27
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %32) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %29) #27
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.pn100 = phi { ptr, i32 } [ %i.lu, %bb.df ], [ %i.lt, %bb.de ]
  call void @_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %30) #27
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.dd
  %.pn100.pn = phi { ptr, i32 } [ %.pn100, %bb.dg ], [ %i.ls, %bb.dd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #27
  br label %bb.dy

bb.di:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit185
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !414)
  call void @llvm.experimental.noalias.scope.decl(metadata !417)
  %i.lv = load i8, ptr %i.ce, align 8, !tbaa !420, !noalias !422 ; 3 uses
  %i.lw = icmp eq i8 %i.lv, 0
  br i1 %i.lw, label %.thread287, label %bb.dj

.thread287:                                       ; preds = %bb.di
  store i8 0, ptr %i.ci, align 8, !tbaa !420, !alias.scope !422
  br label %.loopexit

bb.dj:                                            ; preds = %bb.di
  %i.lx = load ptr, ptr %i.cf, align 8, !tbaa !51, !noalias !422 ; 2 uses
  store ptr %i.lx, ptr %33, align 8, !tbaa !51, !alias.scope !422
  %i.ly = load ptr, ptr %i.ch, align 8, !tbaa !52, !noalias !422 ; 4 uses
  store ptr null, ptr %i.ch, align 8, !tbaa !52, !noalias !422
  store ptr %i.ly, ptr %i.cg, align 8, !tbaa !52, !alias.scope !422
  store ptr null, ptr %i.cf, align 8, !tbaa !51, !noalias !422
  store i8 %i.lv, ptr %i.ci, align 8, !tbaa !420, !alias.scope !422
  %.not.i.i.i186 = icmp eq i8 %i.lv, 3
  br i1 %.not.i.i.i186, label %_ZNK5arrow5Datum13chunked_arrayEv.exit, label %.loopexit

.loopexit:                                        ; preds = %bb.dj, %.thread287
  %i.lz = call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.lz, align 8, !tbaa !33
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  store ptr @.str.36, ptr %i.ma, align 8, !tbaa !423
  invoke void @__cxa_throw(ptr nonnull %i.lz, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %.noexc187 unwind label %.loopexit.split-lp

.noexc187:                                        ; preds = %.loopexit
  unreachable

_ZNK5arrow5Datum13chunked_arrayEv.exit:           ; preds = %bb.dj
  %i.mb = load ptr, ptr %i.cj, align 8, !tbaa !81 ; 6 uses
  %i.mc = load ptr, ptr %i.aq, align 8, !tbaa !116
  %.not.i188 = icmp eq ptr %i.mb, %i.mc
  br i1 %.not.i188, label %bb.do, label %bb.dk

bb.dk:                                            ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit
  store ptr %i.lx, ptr %i.mb, align 8, !tbaa !82
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  store ptr %i.ly, ptr %i.md, align 8, !tbaa !52
  %.not.i.i.i.i.i = icmp eq ptr %i.ly, null
  br i1 %.not.i.i.i.i.i, label %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.me = getelementptr inbounds nuw i8, ptr %i.ly, i64 8 ; 3 uses
  %i.mf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i = icmp eq i8 %i.mf, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.mg = load i32, ptr %i.me, align 4, !tbaa !3
  %i.mh = add nsw i32 %i.mg, 1
  store i32 %i.mh, ptr %i.me, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

bb.dn:                                            ; preds = %bb.dl
  %i.mi = atomicrmw volatile add ptr %i.me, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.cj, align 8, !tbaa !81
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i: ; preds = %bb.dn, %bb.dm, %bb.dk
  %i.mj = phi ptr [ %i.mb, %bb.dk ], [ %i.mb, %bb.dm ], [ %.pre.i, %bb.dn ]
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  store ptr %i.mk, ptr %i.cj, align 8, !tbaa !81
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backERKS3_.exit

bb.do:                                            ; preds = %_ZNK5arrow5Datum13chunked_arrayEv.exit
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr %i.mb, ptr noundef nonnull align 8 dereferenceable(16) %33)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backERKS3_.exit unwind label %.loopexit291

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZSt12construct_atISt10shared_ptrIN5arrow12ChunkedArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i, %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(24) %33)
          to label %_ZN5arrow5DatumD2Ev.exit190 unwind label %bb.dp

bb.dp:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backERKS3_.exit
  %i.ml = landingpad { ptr, i32 }
          catch ptr null
  %i.mm = extractvalue { ptr, i32 } %i.ml, 0
  call void @__clang_call_terminate(ptr %i.mm) #28
  unreachable

_ZN5arrow5DatumD2Ev.exit190:                      ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE9push_backERKS3_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  %39 = load ptr, ptr %28, align 8, !tbaa !118    ; 2 uses
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i.jt3, !prof !121

bb.dq:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit185
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %28) #27
  %i.mn = load ptr, ptr %28, align 8, !tbaa !118  ; 2 uses
  %i.mo = icmp eq ptr %i.mn, null
  br i1 %i.mo, label %bb.dr, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, !prof !121

41:                                               ; preds = %_ZN5arrow5DatumD2Ev.exit190
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i.jt3 unwind label %.loopexit364

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i unwind label %.loopexit.split-lp365

.loopexit364:                                     ; preds = %41
  %lpad.loopexit366 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ds

.loopexit.split-lp365:                            ; preds = %bb.dr
  %lpad.loopexit.split-lp367 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ds

bb.ds:                                            ; preds = %.loopexit.split-lp365, %.loopexit364
  %lpad.phi368 = phi { ptr, i32 } [ %lpad.loopexit366, %.loopexit364 ], [ %lpad.loopexit.split-lp367, %.loopexit.split-lp365 ]
  %i.mp = extractvalue { ptr, i32 } %lpad.phi368, 0
  call void @__clang_call_terminate(ptr %i.mp) #28
  unreachable

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i.jt3: ; preds = %41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %.pr.i.jt3 = load ptr, ptr %28, align 8, !tbaa !118 ; 2 uses
  %.not.i.i191.jt3 = icmp eq ptr %.pr.i.jt3, null
  br i1 %.not.i.i191.jt3, label %bb.dt, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i.jt3, !prof !129

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i:    ; preds = %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %.pr.i = load ptr, ptr %28, align 8, !tbaa !118 ; 2 uses
  %.not.i.i191 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i191, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, !prof !129

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i.jt3: ; preds = %_ZN5arrow5DatumD2Ev.exit190, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i.jt3
  %42 = phi ptr [ %39, %_ZN5arrow5DatumD2Ev.exit190 ], [ %.pr.i.jt3, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i.jt3 ]
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 1
  %44 = load i8, ptr %43, align 1, !tbaa !130, !range !140, !noundef !141
  %45 = trunc nuw i8 %44 to i1
  br i1 %45, label %bb.dt, label %46

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i: ; preds = %bb.dq, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i
  %i.mq = phi ptr [ %i.mn, %bb.dq ], [ %.pr.i, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i ]
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 1
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !130, !range !140, !noundef !141
  %i.mt = trunc nuw i8 %i.ms to i1
  br i1 %i.mt, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, label %47

46:                                               ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i.jt3
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %28) #27
  br label %bb.dt

47:                                               ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %28) #27
  br label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit

bb.dt:                                            ; preds = %46, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i.jt3, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i.jt3
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  br label %48

_ZN5arrow6ResultINS_5DatumEED2Ev.exit:            ; preds = %47, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  br label %bb.du

48:                                               ; preds = %bb.dt, %bb.bo, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ac
  %49 = load ptr, ptr %16, align 8, !tbaa !264    ; 3 uses
  %.not.i.i.i192.jt3 = icmp eq ptr %49, null
  br i1 %.not.i.i.i192.jt3, label %bb.dw, label %bb.dv

bb.du:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit142, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit156, %_ZN5arrow6StatusD2Ev.exit135, %_ZN5arrow6StatusD2Ev.exit132
  %i.mu = load ptr, ptr %16, align 8, !tbaa !264  ; 3 uses
  %.not.i.i.i192 = icmp eq ptr %i.mu, null
  br i1 %.not.i.i.i192, label %_ZNSt6vectorIiSaIiEED2Ev.exit.jt1, label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.dv:                                            ; preds = %48
  %i.mv = load ptr, ptr %i.cm, align 8, !tbaa !426
  %i.mw = ptrtoint ptr %i.mv to i64
  %i.mx = ptrtoint ptr %49 to i64
  %i.my = sub i64 %i.mw, %i.mx
  call void @_ZdlPvm(ptr noundef nonnull %49, i64 noundef %i.my) #26
  br label %bb.dw

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.du
  %50 = load ptr, ptr %i.cm, align 8, !tbaa !426
  %51 = ptrtoint ptr %50 to i64
  %52 = ptrtoint ptr %i.mu to i64
  %53 = sub i64 %51, %52
  call void @_ZdlPvm(ptr noundef nonnull %i.mu, i64 noundef %53) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.jt1

bb.dw:                                            ; preds = %bb.dv, %48
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.0266.0295, i64 16 ; 2 uses
  %i.na = icmp eq ptr %i.mz, %i.bt
  br i1 %i.na, label %.critedge, label %bb.v

_ZNSt6vectorIiSaIiEED2Ev.exit.jt1:                ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

.loopexit291:                                     ; preds = %bb.do
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

.loopexit.split-lp:                               ; preds = %.loopexit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.dx:                                            ; preds = %.loopexit.split-lp, %.loopexit291
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit291 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %33) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  call void @_ZN5arrow6ResultINS_5DatumEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %28) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dh, %bb.dx, %bb.dc
  %.pn103.pn.pn = phi { ptr, i32 } [ %i.lr, %bb.dc ], [ %lpad.phi, %bb.dx ], [ %.pn100.pn, %bb.dh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  br label %bb.dz

bb.dz:                                            ; preds = %bb.as, %.body139, %bb.bi, %bb.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, %bb.dy, %.body, %bb.z
  %.pn112.pn = phi { ptr, i32 } [ %i.df, %bb.z ], [ %eh.lpad-body, %.body ], [ %.pn109, %bb.bi ], [ %i.ha, %bb.bl ], [ %.pn103.pn.pn, %bb.dy ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172 ], [ %i.fa, %bb.as ], [ %eh.lpad-body140, %.body139 ] ; 2 uses
  %i.nb = load ptr, ptr %16, align 8, !tbaa !264  ; 3 uses
  %.not.i.i.i193 = icmp eq ptr %i.nb, null
  br i1 %.not.i.i.i193, label %_ZNSt6vectorIiSaIiEED2Ev.exit194, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.nc = load ptr, ptr %i.cm, align 8, !tbaa !426
  %i.nd = ptrtoint ptr %i.nc to i64
  %i.ne = ptrtoint ptr %i.nb to i64
  %i.nf = sub i64 %i.nd, %i.ne
  call void @_ZdlPvm(ptr noundef nonnull %i.nb, i64 noundef %i.nf) #26
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit194

_ZNSt6vectorIiSaIiEED2Ev.exit194:                 ; preds = %bb.ea, %bb.dz, %bb.y
  %.pn112.pn.pn = phi { ptr, i32 } [ %i.de, %bb.y ], [ %.pn112.pn, %bb.dz ], [ %.pn112.pn, %bb.ea ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %bb.ex

.critedge:                                        ; preds = %bb.dw, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i8 0, ptr %i.a, align 1, !tbaa !282
  %i.ng = invoke { ptr, i32 } @_ZSt9__find_ifISt13_Bit_iteratorN9__gnu_cxx5__ops16_Iter_equals_valIKbEEET_S6_S6_T0_St26random_access_iterator_tag(ptr %.sroa.0270.0, i32 0, ptr %.sroa.12275.0, i32 %.sroa.16.0, ptr nonnull align 1 dereferenceable(1) %i.a)
          to label %_ZSt4findISt13_Bit_iteratorbET_S1_S1_RKT0_.exit unwind label %bb.eh ; 2 uses

_ZSt4findISt13_Bit_iteratorbET_S1_S1_RKT0_.exit:  ; preds = %.critedge
  %.fca.0.extract10 = extractvalue { ptr, i32 } %i.ng, 0 ; 2 uses
  %.fca.1.extract11 = extractvalue { ptr, i32 } %i.ng, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.nh = icmp eq ptr %.fca.0.extract10, %.sroa.12275.0
  %i.ni = icmp eq i32 %.fca.1.extract11, %.sroa.16.0
  %i.nj = select i1 %i.nh, i1 %i.ni, i1 false
  br i1 %i.nj, label %bb.ej, label %bb.eb

bb.eb:                                            ; preds = %_ZSt4findISt13_Bit_iteratorbET_S1_S1_RKT0_.exit
  %i.nk = ptrtoint ptr %.fca.0.extract10 to i64
  %i.nl = ptrtoint ptr %.sroa.0270.0 to i64
  %i.nm = sub i64 %i.nk, %i.nl
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #27
  %i.nn = load ptr, ptr %12, align 8, !tbaa !35
  %.tr = trunc i64 %i.nm to i32
  %i.no = shl i32 %.tr, 3
  %i.np = add i32 %i.no, %.fca.1.extract11
  %i.nq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Schema5fieldEi(ptr noundef nonnull align 8 dereferenceable(32) %i.nn, i32 noundef %i.np)
          to label %bb.ec unwind label %bb.ei

bb.ec:                                            ; preds = %bb.eb
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !53
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27, !noalias !427
  invoke void @_ZN5arrow8internal12JoinToStringIJRA29_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA34_S2_EEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(29) @.str.24, ptr noundef nonnull align 8 dereferenceable(32) %i.ns, ptr noundef nonnull align 1 dereferenceable(34) @.str.25)
          to label %.noexc212 unwind label %bb.ei

.noexc212:                                        ; preds = %bb.ec
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %34, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ed unwind label %bb.ee

bb.ed:                                            ; preds = %.noexc212
  %i.nt = load ptr, ptr %5, align 8, !tbaa !153, !noalias !427 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.nv = icmp eq ptr %i.nt, %i.nu
  br i1 %i.nv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i210: ; preds = %bb.ed
  %i.nw = load i64, ptr %i.nu, align 8, !tbaa !61, !noalias !427
  %i.nx = add i64 %i.nw, 1
  call void @_ZdlPvm(ptr noundef %i.nt, i64 noundef %i.nx) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i211

bb.ee:                                            ; preds = %.noexc212
  %i.ny = landingpad { ptr, i32 }
          cleanup
  %i.nz = load ptr, ptr %5, align 8, !tbaa !153, !noalias !427 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ob = icmp eq ptr %i.nz, %i.oa
  br i1 %i.ob, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i207: ; preds = %bb.ee
  %i.oc = load i64, ptr %i.oa, align 8, !tbaa !61, !noalias !427
  %i.od = add i64 %i.oc, 1
  call void @_ZdlPvm(ptr noundef %i.nz, i64 noundef %i.od) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i208: ; preds = %bb.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i207
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !427
  br label %.body213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i211: ; preds = %bb.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i210
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !427
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5TableEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %34) #27
  %i.oe = load ptr, ptr %34, align 8, !tbaa !118  ; 2 uses
  %.not.i215 = icmp eq ptr %i.oe, null
  br i1 %.not.i215, label %_ZN5arrow6StatusD2Ev.exit216, label %bb.ef, !prof !121

bb.ef:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i211
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 1
  %i.og = load i8, ptr %i.of, align 1, !tbaa !130, !range !140, !noundef !141
  %i.oh = trunc nuw i8 %i.og to i1
  br i1 %i.oh, label %_ZN5arrow6StatusD2Ev.exit216, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %34) #27
  br label %_ZN5arrow6StatusD2Ev.exit216

_ZN5arrow6StatusD2Ev.exit216:                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i211, %bb.ef, %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #27
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.eh:                                            ; preds = %.critedge
  %i.oi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.ex

bb.ei:                                            ; preds = %bb.ec, %bb.eb
  %i.oj = landingpad { ptr, i32 }
          cleanup
  br label %.body213

.body213:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i208, %bb.ei
  %eh.lpad-body214 = phi { ptr, i32 } [ %i.oj, %bb.ei ], [ %i.ny, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i208 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #27
  br label %bb.ex

bb.ej:                                            ; preds = %_ZSt4findISt13_Bit_iteratorbET_S1_S1_RKT0_.exit
  %i.ok = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !52 ; 2 uses
  %i.om = load <2 x ptr>, ptr %2, align 8, !tbaa !51
  store <2 x ptr> %i.om, ptr %35, align 16, !tbaa !51
  %.not.i.i.i217 = icmp eq ptr %i.ol, null
  br i1 %.not.i.i.i217, label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit219, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 8 ; 3 uses
  %i.oo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i218 = icmp eq i8 %i.oo, 0
  br i1 %.not.i.i.i.i218, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.op = load i32, ptr %i.on, align 4, !tbaa !3
  %i.oq = add nsw i32 %i.op, 1
  store i32 %i.oq, ptr %i.on, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit219

bb.em:                                            ; preds = %bb.ek
  %i.or = atomicrmw volatile add ptr %i.on, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit219

_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit219: ; preds = %bb.ej, %bb.el, %bb.em
  %i.os = load ptr, ptr %14, align 8, !tbaa !77   ; 4 uses
  store ptr %i.os, ptr %36, align 8, !tbaa !77
  %i.ot = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.ou = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !81 ; 3 uses
  store ptr %i.ov, ptr %i.ot, align 8, !tbaa !81
  %i.ow = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.ox = load ptr, ptr %i.aq, align 8, !tbaa !116 ; 2 uses
  store ptr %i.ox, ptr %i.ow, align 8, !tbaa !116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.oy = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25
          to label %.noexc220 unwind label %bb.eo, !inline_history !144 ; 10 uses

.noexc220:                                        ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit219
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  store i32 1, ptr %i.oz, align 8, !tbaa !62, !noalias !432
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 12
  store i32 1, ptr %i.pa, align 4, !tbaa !64, !noalias !432
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow11SimpleTableESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.oy, align 8, !tbaa !33, !noalias !432
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oy, i64 16 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oy, i64 24
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oy, i64 48
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oy, i64 56
  %i.pf = getelementptr inbounds nuw i8, ptr %i.oy, i64 64
  %i.pg = load <2 x ptr>, ptr %35, align 16, !tbaa !51, !noalias !432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %35, i8 0, i64 16, i1 false), !noalias !432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %36, i8 0, i64 24, i1 false), !noalias !432
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5arrow11SimpleTableE, i64 16), ptr %i.pb, align 8, !tbaa !33, !noalias !432
  store ptr %i.os, ptr %i.pd, align 8, !tbaa !77, !noalias !432
  store ptr %i.ov, ptr %i.pe, align 8, !tbaa !81, !noalias !432
  store ptr %i.ox, ptr %i.pf, align 8, !tbaa !116, !noalias !432
  store <2 x ptr> %i.pg, ptr %i.pc, align 8, !tbaa !51, !noalias !432
  %i.ph = icmp eq ptr %i.ov, %i.os
  br i1 %i.ph, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit, label %bb.en

bb.en:                                            ; preds = %.noexc220
  %i.pi = load ptr, ptr %i.os, align 8, !tbaa !82, !noalias !432
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 40
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !85, !noalias !432
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit: ; preds = %.noexc220, %bb.en
  %.sink.i.i.i.i.i.i.i.i = phi i64 [ 0, %.noexc220 ], [ %i.pk, %bb.en ]
  %i.pl = getelementptr inbounds nuw i8, ptr %i.oy, i64 40
  store i64 %.sink.i.i.i.i.i.i.i.i, ptr %i.pl, align 8, !tbaa !103, !noalias !432
  store ptr null, ptr %0, align 8, !tbaa !118
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.pb, ptr %i.pm, align 8, !tbaa !106
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.oy, ptr %i.pn, align 8, !tbaa !52
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.eo:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit219
  %i.po = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %36) #27
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %35) #27
  br label %bb.ex

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.jt1, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit, %_ZN5arrow6StatusD2Ev.exit216
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  %i.pp = load ptr, ptr %14, align 8, !tbaa !77   ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !81 ; 2 uses
  %.not4.i.i.i232 = icmp eq ptr %i.pp, %i.pr
  br i1 %.not4.i.i.i232, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i243, label %.lr.ph.i.i.i233

.lr.ph.i.i.i233:                                  ; preds = %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i239
  %.05.i.i.i234 = phi ptr [ %i.qj, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i239 ], [ %i.pp, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %.05.i.i.i234, i64 8
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i.i235 = icmp eq ptr %i.pt, null
  br i1 %.not.i.i.i.i.i.i.i235, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i239, label %bb.ep

bb.ep:                                            ; preds = %.lr.ph.i.i.i233
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 8 ; 4 uses
  %i.pv = load atomic i64, ptr %i.pu acquire, align 8 ; 2 uses
  %i.pw = icmp eq i64 %i.pv, 4294967297
  %i.px = trunc i64 %i.pv to i32                  ; 2 uses
  br i1 %i.pw, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  store i32 0, ptr %i.pu, align 8, !tbaa !62
  %i.py = getelementptr inbounds nuw i8, ptr %i.pt, i64 12
  store i32 0, ptr %i.py, align 4, !tbaa !64
  %i.pz = load ptr, ptr %i.pt, align 8, !tbaa !33
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  %i.qb = load ptr, ptr %i.qa, align 8
  call void %i.qb(ptr noundef nonnull align 8 dereferenceable(16) %i.pt) #27, !inline_history !151
  %i.qc = load ptr, ptr %i.pt, align 8, !tbaa !33
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 24
  %i.qe = load ptr, ptr %i.qd, align 8
  call void %i.qe(ptr noundef nonnull align 8 dereferenceable(16) %i.pt) #27, !inline_history !151
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i239

bb.er:                                            ; preds = %bb.ep
  %i.qf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i236 = icmp eq i8 %i.qf, 0
  br i1 %.not.i.i.i.i.i.i.i.i236, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.qg = add nsw i32 %i.px, -1
  store i32 %i.qg, ptr %i.pu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i237

bb.et:                                            ; preds = %bb.er
  %i.qh = atomicrmw volatile add ptr %i.pu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i237

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i237: ; preds = %bb.et, %bb.es
  %.0.i.i.i.i.i.i.i.i.i238 = phi i32 [ %i.px, %bb.es ], [ %i.qh, %bb.et ]
  %i.qi = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i238, 1
  br i1 %i.qi, label %bb.eu, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i239, !prof !66

bb.eu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i237
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pt) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i239

_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i239: ; preds = %bb.eu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i237, %bb.eq, %.lr.ph.i.i.i233
  %i.qj = getelementptr inbounds nuw i8, ptr %.05.i.i.i234, i64 16 ; 2 uses
  %.not.i.i.i240 = icmp eq ptr %i.qj, %i.pr
  br i1 %.not.i.i.i240, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i241, label %.lr.ph.i.i.i233, !llvm.loop !152

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i241: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i239
  %.pr.i242 = load ptr, ptr %14, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i243

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i243: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i241, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.qk = phi ptr [ %.pr.i242, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i241 ], [ %i.pp, %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i244 = icmp eq ptr %i.qk, null
  br i1 %.not.i.i1.i244, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit245, label %bb.ev

bb.ev:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i243
  %i.ql = load ptr, ptr %i.aq, align 8, !tbaa !116
  %i.qm = ptrtoint ptr %i.ql to i64
  %i.qn = ptrtoint ptr %i.qk to i64
  %i.qo = sub i64 %i.qm, %i.qn
  call void @_ZdlPvm(ptr noundef nonnull %i.qk, i64 noundef %i.qo) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit245

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit245: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i243, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %.not.i.i246 = icmp eq ptr %.sroa.0270.0, null
  br i1 %.not.i.i246, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.ew

bb.ew:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit245
  %i.qp = ptrtoint ptr %.sroa.20277.0 to i64
  %i.qq = ptrtoint ptr %.sroa.0270.0 to i64
  %i.qr = sub i64 %i.qp, %i.qq                    ; 2 uses
  %i.qs = ashr exact i64 %i.qr, 3
  %i.qt = sub nsw i64 0, %i.qs
  %i.qu = getelementptr inbounds [8 x i8], ptr %.sroa.20277.0, i64 %i.qt
  call void @_ZdlPvm(ptr noundef %i.qu, i64 noundef %i.qr) #26
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

bb.ex:                                            ; preds = %bb.eh, %.body213, %bb.eo, %bb.u, %_ZNSt6vectorIiSaIiEED2Ev.exit194
  %.pn117.pn = phi { ptr, i32 } [ %i.cq, %bb.u ], [ %.pn112.pn.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit194 ], [ %eh.lpad-body214, %.body213 ], [ %i.po, %bb.eo ], [ %i.oi, %bb.eh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.t
  %.pn117.pn.pn = phi { ptr, i32 } [ %.pn117.pn, %bb.ex ], [ %i.cp, %bb.t ] ; 2 uses
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %.not.i.i247 = icmp eq ptr %.sroa.0270.0, null
  br i1 %.not.i.i247, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit248, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.qv = ptrtoint ptr %.sroa.20277.0 to i64
  %i.qw = ptrtoint ptr %.sroa.0270.0 to i64
  %i.qx = sub i64 %i.qv, %i.qw                    ; 2 uses
  %i.qy = ashr exact i64 %i.qx, 3
  %i.qz = sub nsw i64 0, %i.qy
  %i.ra = getelementptr inbounds [8 x i8], ptr %.sroa.20277.0, i64 %i.qz
  call void @_ZdlPvm(ptr noundef %i.ra, i64 noundef %i.qx) #26
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit248

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.ew, %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit245, %_ZNSt12__shared_ptrIN5arrow5TableELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.rb = load ptr, ptr %i.e, align 8, !tbaa !52  ; 8 uses
  %.not.i.i249 = icmp eq ptr %i.rb, null
  br i1 %.not.i.i249, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit253, label %bb.fa

bb.fa:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 8 ; 4 uses
  %i.rd = load atomic i64, ptr %i.rc acquire, align 8 ; 2 uses
  %i.re = icmp eq i64 %i.rd, 4294967297
  %i.rf = trunc i64 %i.rd to i32                  ; 2 uses
  br i1 %i.re, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  store i32 0, ptr %i.rc, align 8, !tbaa !62
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rb, i64 12
  store i32 0, ptr %i.rg, align 4, !tbaa !64
  %i.rh = load ptr, ptr %i.rb, align 8, !tbaa !33
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 16
  %i.rj = load ptr, ptr %i.ri, align 8
  call void %i.rj(ptr noundef nonnull align 8 dereferenceable(16) %i.rb) #27, !inline_history !150
  %i.rk = load ptr, ptr %i.rb, align 8, !tbaa !33
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 24
  %i.rm = load ptr, ptr %i.rl, align 8
  call void %i.rm(ptr noundef nonnull align 8 dereferenceable(16) %i.rb) #27, !inline_history !150
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit253

bb.fc:                                            ; preds = %bb.fa
  %i.rn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i250 = icmp eq i8 %i.rn, 0
  br i1 %.not.i.i.i250, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.ro = add nsw i32 %i.rf, -1
  store i32 %i.ro, ptr %i.rc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i251

bb.fe:                                            ; preds = %bb.fc
  %i.rp = atomicrmw volatile add ptr %i.rc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i251

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i251: ; preds = %bb.fe, %bb.fd
  %.0.i.i.i.i252 = phi i32 [ %i.rf, %bb.fd ], [ %i.rp, %bb.fe ]
  %i.rq = icmp eq i32 %.0.i.i.i.i252, 1
  br i1 %i.rq, label %bb.ff, label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit253, !prof !66

bb.ff:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i251
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rb) #27
  br label %_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit253

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit253: ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.fb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i251, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  ret void

_ZNSt13_Bvector_baseISaIbEED2Ev.exit248:          ; preds = %bb.r, %bb.s, %bb.ey, %bb.ez, %bb.i, %bb.h
  %.pn122 = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.x, %bb.h ], [ %i.cn, %bb.r ], [ %i.co, %bb.s ], [ %.pn117.pn.pn, %bb.ey ], [ %.pn117.pn.pn, %bb.ez ]
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  resume { ptr, i32 } %.pn122
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute11CastOptionsD2Ev(ptr noundef nonnull align 8 dereferenceable(46) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute11CastOptionsE, i64 16), ptr %0, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5arrow10TypeHolderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !64
end_hunk_0
begin_hunk_1_@_ZNK5arrow5Table6EqualsERKS0_RKNS_12EqualOptionsE:bb.a
  %i.r = tail call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.q)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !35
  %i.u = tail call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.t)
  %.not = icmp eq i32 %i.r, %i.u
  br i1 %.not, label %bb.e, label %_ZN5arrow12_GLOBAL__N_112CanIgnoreNanERKNS_6SchemaERKNS_12EqualOptionsE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !103
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !103
  %.not24 = icmp eq i64 %i.w, %i.y
  br i1 %.not24, label %bb.f, label %_ZN5arrow12_GLOBAL__N_112CanIgnoreNanERKNS_6SchemaERKNS_12EqualOptionsE.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !457, !range !140, !noundef !141
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !35
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !35
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !458, !range !140, !noundef !141
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = tail call noundef zeroext i1 @_ZNK5arrow6Schema6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i1 noundef zeroext %i.ag)
  br i1 %i.ah, label %bb.h, label %_ZN5arrow12_GLOBAL__N_112CanIgnoreNanERKNS_6SchemaERKNS_12EqualOptionsE.exit.thread

bb.h:                                             ; preds = %bb.g, %bb.f, %_ZN5arrow12_GLOBAL__N_112CanIgnoreNanERKNS_6SchemaERKNS_12EqualOptionsE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !35
  %i.ak = tail call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.aj)
  %i.al = icmp slt i32 %i.ak, 1
  br i1 %i.al, label %_ZN5arrow12_GLOBAL__N_112CanIgnoreNanERKNS_6SchemaERKNS_12EqualOptionsE.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.j

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30
  %i.ao = add nuw nsw i32 %.01932, 1              ; 2 uses
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !35
  %i.aq = call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
  %.not34 = icmp slt i32 %i.ao, %i.aq
  br i1 %.not34, label %bb.j, label %_ZN5arrow12_GLOBAL__N_112CanIgnoreNanERKNS_6SchemaERKNS_12EqualOptionsE.exit.thread, !llvm.loop !459

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %.01932 = phi i32 [ 0, %.lr.ph ], [ %i.ao, %bb.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.ar = load ptr, ptr %0, align 8, !tbaa !33
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.49") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %.01932)
  %i.au = load ptr, ptr %3, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.av = load ptr, ptr %1, align 8, !tbaa !33
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  invoke void %i.ax(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.49") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %.01932)
          to label %bb.k unwind label %bb.y

bb.k:                                             ; preds = %bb.j
  %i.ay = invoke noundef zeroext i1 @_ZNK5arrow12ChunkedArray6EqualsERKSt10shared_ptrIS0_ERKNS_12EqualOptionsE(ptr noundef nonnull align 8 dereferenceable(88) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.l unwind label %bb.z       ; 3 uses

bb.l:                                             ; preds = %bb.k
  %i.az = load ptr, ptr %i.am, align 8, !tbaa !52 ; 8 uses
  %.not.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ba, align 8, !tbaa !62
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !64
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !33
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #27, !inline_history !250
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !33
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #27, !inline_history !250
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i = phi i32 [ %i.bd, %bb.p ], [ %i.bn, %bb.q ]
  %i.bo = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bo, label %bb.r, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #27
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.l, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.bp = load ptr, ptr %i.an, align 8, !tbaa !52 ; 8 uses
  %.not.i.i26 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i26, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30, label %bb.s

bb.s:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 4 uses
  %i.br = load atomic i64, ptr %i.bq acquire, align 8 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 4294967297
  %i.bt = trunc i64 %i.br to i32                  ; 2 uses
  br i1 %i.bs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bq, align 8, !tbaa !62
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 0, ptr %i.bu, align 4, !tbaa !64
  %i.bv = load ptr, ptr %i.bp, align 8, !tbaa !33
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #27, !inline_history !250
  %i.by = load ptr, ptr %i.bp, align 8, !tbaa !33
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #27, !inline_history !250
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30

bb.u:                                             ; preds = %bb.s
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i27 = icmp eq i8 %i.cb, 0
  br i1 %.not.i.i.i27, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = add nsw i32 %i.bt, -1
  store i32 %i.cc, ptr %i.bq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28

bb.w:                                             ; preds = %bb.u
  %i.cd = atomicrmw volatile add ptr %i.bq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i29 = phi i32 [ %i.bt, %bb.v ], [ %i.cd, %bb.w ]
  %i.ce = icmp eq i32 %.0.i.i.i.i29, 1
  br i1 %i.ce, label %bb.x, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30, !prof !66

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bp) #27
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30: ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i28, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br i1 %i.ay, label %bb.i, label %_ZN5arrow12_GLOBAL__N_112CanIgnoreNanERKNS_6SchemaERKNS_12EqualOptionsE.exit.thread

bb.y:                                             ; preds = %bb.j
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.k
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #27
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.cg, %bb.z ], [ %i.cf, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn

_ZN5arrow12_GLOBAL__N_112CanIgnoreNanERKNS_6SchemaERKNS_12EqualOptionsE.exit.thread: ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30, %bb.i, %bb.h, %bb.c, %bb.b, %bb.g, %bb.d, %bb.e, %_ZN5arrow12_GLOBAL__N_112CanIgnoreNanERKNS_6SchemaERKNS_12EqualOptionsE.exit
  %.1 = phi i1 [ false, %bb.d ], [ false, %bb.g ], [ true, %bb.c ], [ true, %_ZN5arrow12_GLOBAL__N_112CanIgnoreNanERKNS_6SchemaERKNS_12EqualOptionsE.exit ], [ false, %bb.e ], [ true, %bb.b ], [ true, %bb.h ], [ %i.ay, %bb.i ], [ %i.ay, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit30 ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZNK5arrow12ChunkedArray6EqualsERKSt10shared_ptrIS0_ERKNS_12EqualOptionsE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow5Table13CombineChunksEPNS_10MemoryPoolE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.13", align 8    ; 17 uses
  %4 = alloca %"class.std::shared_ptr.49", align 8 ; 10 uses
  %5 = alloca %"class.std::vector.21", align 8    ; 11 uses
  %6 = alloca %"class.std::vector.21", align 8    ; 12 uses
  %7 = alloca %"class.arrow::Result.137", align 8 ; 9 uses
  %8 = alloca %"class.arrow::Result.137", align 8 ; 12 uses
  %9 = alloca %"class.std::shared_ptr.60", align 16 ; 7 uses
  %10 = alloca %"class.std::shared_ptr", align 16 ; 3 uses
  %11 = alloca %"class.std::vector.13", align 8   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.c = tail call noundef i32 @_ZNK5arrow6Schema10num_fieldsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.b) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = icmp slt i32 %i.c, 0
  br i1 %i.e, label %.noexc, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #24
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i, label %.thread, label %.lr.ph217

.thread:                                          ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %.critedge

.lr.ph217:                                        ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.h = shl nuw nsw i64 %i.d, 4                  ; 3 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #25 ; 4 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !77
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.d
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.i, i8 0, i64 %i.h, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.i, i64 %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.j, ptr %i.l, align 8, !tbaa !116
  store ptr %scevgep.i.i.i.i.i, ptr %i.k, align 8, !tbaa !81
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph217, %bb.dn
  %indvars.iv227 = phi i64 [ 0, %.lr.ph217 ], [ %indvars.iv.next228, %bb.dn ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.w = load ptr, ptr %1, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = trunc nuw nsw i64 %indvars.iv227 to i32
  invoke void %i.y(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.49") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.z)
          to label %bb.c unwind label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.aa = load ptr, ptr %4, align 8, !tbaa !82    ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !172
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !170
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = lshr exact i64 %i.ag, 4
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = icmp slt i32 %i.ai, 2
  br i1 %i.aj, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.ak = load ptr, ptr %3, align 8, !tbaa !77
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %indvars.iv227 ; 2 uses
  store ptr %i.aa, ptr %i.al, align 8, !tbaa !82
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 3 uses
  %i.an = load ptr, ptr %i.v, align 8, !tbaa !52  ; 5 uses
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !52 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSERKS2_.exit.jt0, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not7.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i74 = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i74, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !3
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.at = atomicrmw volatile add ptr %i.ap, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !52
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.h, %bb.g, %bb.e
  %i.au = phi ptr [ %i.ao, %bb.e ], [ %i.ao, %bb.g ], [ %.pr.pre.i.i.i, %bb.h ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.av, align 8, !tbaa !62
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !64
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !33
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #27, !inline_history !460
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !33
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #27, !inline_history !460
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i9.i.i.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i9.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi i32 [ %i.ay, %bb.l ], [ %i.bi, %bb.m ]
  %i.bj = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bj, label %bb.n, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !66

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #27
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.j, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.an, ptr %i.am, align 8, !tbaa !52
  br label %bb.dg

bb.o:                                             ; preds = %bb.b
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.p:                                             ; preds = %bb.c
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !190
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !191
  %.off.i = add i32 %i.bo, -13
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %bb.q, label %bb.ce

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit, %bb.q
  %.053 = phi i32 [ 0, %bb.q ], [ %.154.lcssa, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit ] ; 4 uses
  %i.bp = load ptr, ptr %4, align 8, !tbaa !82    ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !172
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !170
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = lshr exact i64 %i.bv, 4
  %i.bx = trunc i64 %i.bw to i32
  %.not = icmp slt i32 %.053, %i.bx               ; 2 uses
  br i1 %.not, label %bb.s, label %bb.bp

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.by = load ptr, ptr %i.bq, align 8, !tbaa !172
  %i.bz = load ptr, ptr %i.bp, align 8, !tbaa !170 ; 2 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = lshr exact i64 %i.cc, 4
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = icmp slt i32 %.053, %i.ce
  br i1 %i.cf, label %.lr.ph.preheader, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backERKS3_.exit

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.cg = sext i32 %.053 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ag
  %i.ch = phi ptr [ null, %.lr.ph.preheader ], [ %i.ep, %bb.ag ] ; 8 uses
  %indvars.iv = phi i64 [ %i.cg, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ag ] ; 3 uses
  %i.ci = phi ptr [ %i.bz, %.lr.ph.preheader ], [ %i.et, %bb.ag ]
  %.052211 = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cx, %bb.ag ]
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %indvars.iv ; 4 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !213 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !461
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !464 ; 2 uses
  %i.cp = icmp sgt i64 %i.co, 0
  br i1 %i.cp, label %bb.t, label %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE19total_values_lengthEv.exit

bb.t:                                             ; preds = %.lr.ph
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !482 ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.co
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cu = load i32, ptr %i.cr, align 4, !tbaa !3
  %i.cv = sub nsw i32 %i.ct, %i.cu
  %i.cw = sext i32 %i.cv to i64
  br label %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE19total_values_lengthEv.exit

_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE19total_values_lengthEv.exit: ; preds = %.lr.ph, %bb.t
  %.0.i = phi i64 [ %i.cw, %bb.t ], [ 0, %.lr.ph ]
  %i.cx = add nsw i64 %.0.i, %.052211             ; 2 uses
  %i.cy = icmp sgt i64 %i.cx, 2147483645
  br i1 %i.cy, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE9push_backERKS3_.exit.loopexit, label %bb.v

bb.u:                                             ; preds = %bb.ai
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

.loopexit:                                        ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

.loopexit.split-lp:                               ; preds = %bb.ab
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.v:                                             ; preds = %_ZNK5arrow15BaseBinaryArrayINS_10BinaryTypeEE19total_values_lengthEv.exit
  %i.da = load ptr, ptr %i.q, align 8, !tbaa !171
  %.not.i = icmp eq ptr %i.ch, %i.da
  br i1 %.not.i, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.ck, ptr %i.ch, align 8, !tbaa !213
  %i.db = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !52 ; 3 uses
  store ptr %i.dd, ptr %i.db, align 8, !tbaa !52
  %.not.i.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i.i, label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 3 uses
  %i.df = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i = icmp eq i8 %i.df, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !3
  %i.dh = add nsw i32 %i.dg, 1
  store i32 %i.dh, ptr %i.de, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

bb.z:                                             ; preds = %bb.x
  %i.di = atomicrmw volatile add ptr %i.de, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.p, align 8, !tbaa !172
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i

_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i: ; preds = %bb.z, %bb.y, %bb.w
  %i.dj = phi ptr [ %i.ch, %bb.w ], [ %i.ch, %bb.y ], [ %.pre.i, %bb.z ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  store ptr %i.dk, ptr %i.p, align 8, !tbaa !172
  br label %bb.ag

bb.aa:                                            ; preds = %bb.v
  %i.dl = load ptr, ptr %6, align 8, !tbaa !170   ; 5 uses
  %i.dm = ptrtoint ptr %i.ch to i64
  %i.dn = ptrtoint ptr %i.dl to i64               ; 2 uses
  %i.do = sub i64 %i.dm, %i.dn                    ; 3 uses
  %i.dp = icmp eq i64 %i.do, 9223372036854775792
  br i1 %i.dp, label %bb.ab, label %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #24
          to label %.noexc183 unwind label %.loopexit.split-lp

.noexc183:                                        ; preds = %bb.ab
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.aa
  %i.dq = ashr exact i64 %i.do, 4                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.dq, i64 1)
  %i.dr = add nsw i64 %.sroa.speculated.i.i, %i.dq ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.dq
  %i.dt = call i64 @llvm.umin.i64(i64 %i.dr, i64 576460752303423487)
  %i.du = select i1 %i.ds, i64 576460752303423487, i64 %i.dt ; 3 uses
  %.not.i.i178 = icmp ne i64 %i.du, 0
  call void @llvm.assume(i1 %.not.i.i178)
  %i.dv = shl nuw nsw i64 %i.du, 4
  %i.dw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dv) #25
          to label %.noexc184 unwind label %.loopexit ; 5 uses

.noexc184:                                        ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE12_M_check_lenEmPKc.exit.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.do
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !52 ; 2 uses
  %i.ea = load <2 x ptr>, ptr %i.cj, align 8, !tbaa !51
  store <2 x ptr> %i.ea, ptr %i.dx, align 8, !tbaa !51
  %.not.i.i.i.i.i179 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i.i.i179, label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i181, label %bb.ac

bb.ac:                                            ; preds = %.noexc184
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 3 uses
  %i.ec = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i180 = icmp eq i8 %i.ec, 0
  br i1 %.not.i.i.i.i.i.i180, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ed = load i32, ptr %i.eb, align 4, !tbaa !3
  %i.ee = add nsw i32 %i.ed, 1
  store i32 %i.ee, ptr %i.eb, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i181

bb.ae:                                            ; preds = %bb.ac
  %i.ef = atomicrmw volatile add ptr %i.eb, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i181

_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i181: ; preds = %bb.ae, %bb.ad, %.noexc184
  %.not10.i.i.i.i = icmp eq ptr %i.dl, %i.ch
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i181, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ej, %.lr.ph.i.i.i.i ], [ %i.dw, %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i181 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i.i.i ], [ %i.dl, %_ZSt12construct_atISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i181 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !486)
  call void @llvm.experimental.noalias.scope.decl(metadata !489)
  %i.eg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.eh = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !51, !alias.scope !489, !noalias !486
  store ptr null, ptr %i.eg, align 8, !tbaa !52, !alias.scope !489, !noalias !486
  store <2 x ptr> %i.eh, ptr %.012.i.i.i.i, align 8, !tbaa !51, !alias.scope !486, !noalias !489
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !213, !alias.scope !489, !noalias !486
end_hunk_1
begin_hunk_2_@_ZNK5arrow5Table13CombineChunksEPNS_10MemoryPoolE:bb.a
  %i.kv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ku, i64 noundef 104) #26, !noalias !509
  br label %.body112

bb.cj:                                            ; preds = %.noexc111
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  %i.kx = load ptr, ptr %3, align 8, !tbaa !77
  %i.ky = getelementptr inbounds nuw [16 x i8], ptr %i.kx, i64 %indvars.iv227 ; 2 uses
  store ptr %i.kw, ptr %i.ky, align 8, !tbaa !185
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 8 ; 2 uses
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !52 ; 8 uses
  store ptr %i.ku, ptr %i.kz, align 8, !tbaa !52
  %.not.i.i.i.i114 = icmp eq ptr %i.la, null
  br i1 %.not.i.i.i.i114, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit123, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8 ; 4 uses
  %i.lc = load atomic i64, ptr %i.lb acquire, align 8 ; 2 uses
  %i.ld = icmp eq i64 %i.lc, 4294967297
  %i.le = trunc i64 %i.lc to i32                  ; 2 uses
  br i1 %i.ld, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store i32 0, ptr %i.lb, align 8, !tbaa !62
  %i.lf = getelementptr inbounds nuw i8, ptr %i.la, i64 12
  store i32 0, ptr %i.lf, align 4, !tbaa !64
  %i.lg = load ptr, ptr %i.la, align 8, !tbaa !33
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %i.li = load ptr, ptr %i.lh, align 8
  call void %i.li(ptr noundef nonnull align 8 dereferenceable(16) %i.la) #27, !inline_history !127
  %i.lj = load ptr, ptr %i.la, align 8, !tbaa !33
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 24
  %i.ll = load ptr, ptr %i.lk, align 8
  call void %i.ll(ptr noundef nonnull align 8 dereferenceable(16) %i.la) #27, !inline_history !127
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit123

bb.cm:                                            ; preds = %bb.ck
  %i.lm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i115 = icmp eq i8 %i.lm, 0
  br i1 %.not.i.i.i.i.i115, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ln = add nsw i32 %i.le, -1
  store i32 %i.ln, ptr %i.lb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i116

bb.co:                                            ; preds = %bb.cm
  %i.lo = atomicrmw volatile add ptr %i.lb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i116

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i116: ; preds = %bb.co, %bb.cn
  %.0.i.i.i.i.i.i117 = phi i32 [ %i.le, %bb.cn ], [ %i.lo, %bb.co ]
  %i.lp = icmp eq i32 %.0.i.i.i.i.i.i117, 1
  br i1 %i.lp, label %bb.cp, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit123, !prof !66

bb.cp:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i116
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.la) #27
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit123

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit123: ; preds = %bb.cp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i116, %bb.cl, %bb.cj
  %i.lq = load ptr, ptr %i.n, align 8, !tbaa !52  ; 8 uses
  %.not.i.i124 = icmp eq ptr %i.lq, null
  br i1 %.not.i.i124, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit128, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit123
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 8 ; 4 uses
  %i.ls = load atomic i64, ptr %i.lr acquire, align 8 ; 2 uses
  %i.lt = icmp eq i64 %i.ls, 4294967297
  %i.lu = trunc i64 %i.ls to i32                  ; 2 uses
  br i1 %i.lt, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  store i32 0, ptr %i.lr, align 8, !tbaa !62
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lq, i64 12
  store i32 0, ptr %i.lv, align 4, !tbaa !64
  %i.lw = load ptr, ptr %i.lq, align 8, !tbaa !33
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8
  call void %i.ly(ptr noundef nonnull align 8 dereferenceable(16) %i.lq) #27, !inline_history !180
  %i.lz = load ptr, ptr %i.lq, align 8, !tbaa !33
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 24
  %i.mb = load ptr, ptr %i.ma, align 8
  call void %i.mb(ptr noundef nonnull align 8 dereferenceable(16) %i.lq) #27, !inline_history !180
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit128

bb.cs:                                            ; preds = %bb.cq
  %i.mc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i125 = icmp eq i8 %i.mc, 0
  br i1 %.not.i.i.i125, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.md = add nsw i32 %i.lu, -1
  store i32 %i.md, ptr %i.lr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i126

bb.cu:                                            ; preds = %bb.cs
  %i.me = atomicrmw volatile add ptr %i.lr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i126

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i126: ; preds = %bb.cu, %bb.ct
  %.0.i.i.i.i127 = phi i32 [ %i.lu, %bb.ct ], [ %i.me, %bb.cu ]
  %i.mf = icmp eq i32 %.0.i.i.i.i127, 1
  br i1 %i.mf, label %bb.cv, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit128, !prof !66

bb.cv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i126
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lq) #27
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit128

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit128: ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit123, %bb.cr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i126, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.cw

bb.cw:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit128, %bb.cg
  %i.mg = load ptr, ptr %8, align 8, !tbaa !118   ; 2 uses
  %i.mh = icmp eq ptr %i.mg, null
  br i1 %i.mh, label %bb.cx, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i129, !prof !121

bb.cx:                                            ; preds = %bb.cw
  %i.mi = load ptr, ptr %i.o, align 8, !tbaa !52  ; 8 uses
  %.not.i.i.i.i.i130 = icmp eq ptr %i.mi, null
  br i1 %.not.i.i.i.i.i130, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit137, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 8 ; 4 uses
  %i.mk = load atomic i64, ptr %i.mj acquire, align 8 ; 2 uses
  %i.ml = icmp eq i64 %i.mk, 4294967297
  %i.mm = trunc i64 %i.mk to i32                  ; 2 uses
  br i1 %i.ml, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  store i32 0, ptr %i.mj, align 8, !tbaa !62
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mi, i64 12
  store i32 0, ptr %i.mn, align 4, !tbaa !64
  %i.mo = load ptr, ptr %i.mi, align 8, !tbaa !33
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  %i.mq = load ptr, ptr %i.mp, align 8
  call void %i.mq(ptr noundef nonnull align 8 dereferenceable(16) %i.mi) #27, !inline_history !452
  %i.mr = load ptr, ptr %i.mi, align 8, !tbaa !33
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 24
  %i.mt = load ptr, ptr %i.ms, align 8
  call void %i.mt(ptr noundef nonnull align 8 dereferenceable(16) %i.mi) #27, !inline_history !452
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i134

bb.da:                                            ; preds = %bb.cy
  %i.mu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i131 = icmp eq i8 %i.mu, 0
  br i1 %.not.i.i.i.i.i.i131, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.mv = add nsw i32 %i.mm, -1
  store i32 %i.mv, ptr %i.mj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i132

bb.dc:                                            ; preds = %bb.da
  %i.mw = atomicrmw volatile add ptr %i.mj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i132

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i132: ; preds = %bb.dc, %bb.db
  %.0.i.i.i.i.i.i.i133 = phi i32 [ %i.mm, %bb.db ], [ %i.mw, %bb.dc ]
  %i.mx = icmp eq i32 %.0.i.i.i.i.i.i.i133, 1
  br i1 %i.mx, label %bb.dd, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i134, !prof !66

bb.dd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i132
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mi) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i134

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i134: ; preds = %bb.dd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i132, %bb.cz
  %.pr.i135.pr = load ptr, ptr %8, align 8, !tbaa !118 ; 2 uses
  %.not.i.i136 = icmp eq ptr %.pr.i135.pr, null
  br i1 %.not.i.i136, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit137, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i129, !prof !129

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i129: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i134, %bb.cw
  %i.my = phi ptr [ %.pr.i135.pr, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i134 ], [ %i.mg, %bb.cw ]
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 1
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !130, !range !140, !noundef !141
  %i.nb = trunc nuw i8 %i.na to i1
  br i1 %i.nb, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit137, label %bb.de

bb.de:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i129
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit137

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit137: ; preds = %bb.cx, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i134, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i129, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br i1 %i.kr, label %bb.dg, label %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSERKS2_.exitthread-pre-split

bb.df:                                            ; preds = %bb.ci
  %i.nc = landingpad { ptr, i32 }
          cleanup
  br label %.body112

.body112:                                         ; preds = %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i110, %bb.df
  %eh.lpad-body113 = phi { ptr, i32 } [ %i.nc, %bb.df ], [ %i.kv, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ChunkedArrayESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i.i.i.i110 ]
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.do

bb.dg:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit137, %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit109
  %.pr = load ptr, ptr %i.v, align 8, !tbaa !52
  br label %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSERKS2_.exit.jt0

_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSERKS2_.exit.jt0: ; preds = %bb.dg, %bb.d
  %12 = phi ptr [ %.pr, %bb.dg ], [ %i.an, %bb.d ] ; 8 uses
  %.not.i.i138.jt0 = icmp eq ptr %12, null
  br i1 %.not.i.i138.jt0, label %bb.dn, label %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSERKS2_.exit

_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSERKS2_.exitthread-pre-split: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EED2Ev.exit109, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit137
  %13 = load ptr, ptr %i.v, align 8, !tbaa !52    ; 8 uses
  %.not.i.i138.jt1 = icmp eq ptr %13, null
  br i1 %.not.i.i138.jt1, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142.jt1, label %bb.dh

_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSERKS2_.exit: ; preds = %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSERKS2_.exit.jt0
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %15 = load atomic i64, ptr %14 acquire, align 8 ; 2 uses
  %.not.i.i138 = icmp eq i64 %15, 4294967297
  %16 = trunc i64 %15 to i32                      ; 2 uses
  br i1 %.not.i.i138, label %17, label %25

bb.dh:                                            ; preds = %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSERKS2_.exitthread-pre-split
  %i.nd = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.ne = load atomic i64, ptr %i.nd acquire, align 8 ; 2 uses
  %i.nf = icmp eq i64 %i.ne, 4294967297
  %i.ng = trunc i64 %i.ne to i32                  ; 2 uses
  br i1 %i.nf, label %bb.di, label %bb.dj

17:                                               ; preds = %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSERKS2_.exit
  store i32 0, ptr %14, align 8, !tbaa !62
  %18 = getelementptr inbounds nuw i8, ptr %12, i64 12
  store i32 0, ptr %18, align 4, !tbaa !64
  %19 = load ptr, ptr %12, align 8, !tbaa !33
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %21 = load ptr, ptr %20, align 8
  call void %21(ptr noundef nonnull align 8 dereferenceable(16) %12) #27, !inline_history !250
  %22 = load ptr, ptr %12, align 8, !tbaa !33
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 24
  %24 = load ptr, ptr %23, align 8
  call void %24(ptr noundef nonnull align 8 dereferenceable(16) %12) #27, !inline_history !250
  br label %bb.dn

bb.di:                                            ; preds = %bb.dh
  store i32 0, ptr %i.nd, align 8, !tbaa !62
  %i.nh = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 0, ptr %i.nh, align 4, !tbaa !64
  %i.ni = load ptr, ptr %13, align 8, !tbaa !33
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 16
  %i.nk = load ptr, ptr %i.nj, align 8
  call void %i.nk(ptr noundef nonnull align 8 dereferenceable(16) %13) #27, !inline_history !250
  %i.nl = load ptr, ptr %13, align 8, !tbaa !33
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 24
  %i.nn = load ptr, ptr %i.nm, align 8
  call void %i.nn(ptr noundef nonnull align 8 dereferenceable(16) %13) #27, !inline_history !250
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142.jt1

25:                                               ; preds = %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSERKS2_.exit
  %26 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i139.jt0 = icmp eq i8 %26, 0
  br i1 %.not.i.i.i139.jt0, label %29, label %27

bb.dj:                                            ; preds = %bb.dh
  %i.no = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i139 = icmp eq i8 %i.no, 0
  br i1 %.not.i.i.i139, label %bb.dl, label %bb.dk

27:                                               ; preds = %25
  %28 = add nsw i32 %16, -1
  store i32 %28, ptr %14, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140.jt0

bb.dk:                                            ; preds = %bb.dj
  %i.np = add nsw i32 %i.ng, -1
  store i32 %i.np, ptr %i.nd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140

29:                                               ; preds = %25
  %30 = atomicrmw volatile add ptr %14, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140.jt0

bb.dl:                                            ; preds = %bb.dj
  %i.nq = atomicrmw volatile add ptr %i.nd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140.jt0: ; preds = %27, %29
  %.0.i.i.i.i141.jt0 = phi i32 [ %30, %29 ], [ %16, %27 ]
  %31 = icmp eq i32 %.0.i.i.i.i141.jt0, 1
  br i1 %31, label %bb.dm, label %bb.dn, !prof !66

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140: ; preds = %bb.dk, %bb.dl
  %.0.i.i.i.i141 = phi i32 [ %i.nq, %bb.dl ], [ %i.ng, %bb.dk ]
  %i.nr = icmp eq i32 %.0.i.i.i.i141, 1
  br i1 %i.nr, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142, label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142.jt1, !prof !66

bb.dm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140.jt0
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #27
  br label %bb.dn

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #27
  br label %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142.jt1

bb.dn:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140.jt0, %bb.dm, %17, %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSERKS2_.exit.jt0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next228, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !512

_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142.jt1: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142, %bb.di, %_ZNSt10shared_ptrIN5arrow12ChunkedArrayEEaSERKS2_.exitthread-pre-split
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %.pre = load ptr, ptr %3, align 8, !tbaa !77    ; 3 uses
  %.pre231 = load ptr, ptr %i.k, align 8, !tbaa !81 ; 2 uses
  %.not4.i.i.i164 = icmp eq ptr %.pre, %.pre231
  br i1 %.not4.i.i.i164, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i175, label %.lr.ph.i.i.i165

bb.do:                                            ; preds = %bb.ch, %.body112, %.body
  %.pn63.pn.pn.pn = phi { ptr, i32 } [ %.pn63.pn.pn, %.body ], [ %eh.lpad-body113, %.body112 ], [ %i.ks, %bb.ch ]
  call void @_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.ec

.critedge:                                        ; preds = %bb.dn, %.thread
  %i.ns = phi ptr [ %i.g, %.thread ], [ %i.l, %bb.dn ]
  %i.nt = phi ptr [ %i.f, %.thread ], [ %i.k, %bb.dn ]
  %i.nu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !52 ; 2 uses
  %i.nw = load <2 x ptr>, ptr %i.a, align 8, !tbaa !51
  store <2 x ptr> %i.nw, ptr %10, align 16, !tbaa !51
  %.not.i.i.i143 = icmp eq ptr %i.nv, null
  br i1 %.not.i.i.i143, label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit, label %bb.dp

bb.dp:                                            ; preds = %.critedge
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nv, i64 8 ; 3 uses
  %i.ny = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i144 = icmp eq i8 %i.ny, 0
  br i1 %.not.i.i.i.i144, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.nz = load i32, ptr %i.nx, align 4, !tbaa !3
  %i.oa = add nsw i32 %i.nz, 1
  store i32 %i.oa, ptr %i.nx, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit

bb.dr:                                            ; preds = %bb.dp
  %i.ob = atomicrmw volatile add ptr %i.nx, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit:  ; preds = %.critedge, %bb.dq, %bb.dr
  %i.oc = load ptr, ptr %3, align 8, !tbaa !77    ; 4 uses
  store ptr %i.oc, ptr %11, align 8, !tbaa !77
  %i.od = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.oe = load ptr, ptr %i.nt, align 8, !tbaa !81 ; 3 uses
  store ptr %i.oe, ptr %i.od, align 8, !tbaa !81
  %i.of = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.og = load ptr, ptr %i.ns, align 8, !tbaa !116 ; 2 uses
  store ptr %i.og, ptr %i.of, align 8, !tbaa !116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !103 ; 2 uses
  %i.oj = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25
          to label %.noexc145 unwind label %bb.du, !inline_history !144 ; 10 uses

.noexc145:                                        ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  store i32 1, ptr %i.ok, align 8, !tbaa !62, !noalias !513
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oj, i64 12
  store i32 1, ptr %i.ol, align 4, !tbaa !64, !noalias !513
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow11SimpleTableESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.oj, align 8, !tbaa !33, !noalias !513
  %i.om = getelementptr inbounds nuw i8, ptr %i.oj, i64 16 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.oj, i64 24
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN5arrow11SimpleTableE, i64 16), ptr %i.om, align 8, !tbaa !33, !noalias !513
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oj, i64 48
  store ptr %i.oc, ptr %i.oo, align 8, !tbaa !77, !noalias !513
  %i.op = getelementptr inbounds nuw i8, ptr %i.oj, i64 56
  store ptr %i.oe, ptr %i.op, align 8, !tbaa !81, !noalias !513
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oj, i64 64
  store ptr %i.og, ptr %i.oq, align 8, !tbaa !116, !noalias !513
  %i.or = load <2 x ptr>, ptr %10, align 16, !tbaa !51, !noalias !513
  store <2 x ptr> %i.or, ptr %i.on, align 8, !tbaa !51, !noalias !513
  %i.os = icmp slt i64 %i.oi, 0
  br i1 %i.os, label %bb.ds, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i175.thread

bb.ds:                                            ; preds = %.noexc145
  %i.ot = icmp eq ptr %i.oe, %i.oc
  br i1 %i.ot, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i175.thread, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ou = load ptr, ptr %i.oc, align 8, !tbaa !82, !noalias !513
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 40
  %i.ow = load i64, ptr %i.ov, align 8, !tbaa !85, !noalias !513
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i175.thread

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i175.thread: ; preds = %.noexc145, %bb.ds, %bb.dt
  %.sink.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ds ], [ %i.ow, %bb.dt ], [ %i.oi, %.noexc145 ]
  %i.ox = getelementptr inbounds nuw i8, ptr %i.oj, i64 40
  store i64 %.sink.i.i.i.i.i.i.i.i, ptr %i.ox, align 8, !tbaa !103, !noalias !513
  store ptr null, ptr %0, align 8, !tbaa !118
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.om, ptr %i.oy, align 8, !tbaa !106
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.oj, ptr %i.oz, align 8, !tbaa !52
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit177

bb.du:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6SchemaEEC2ERKS2_.exit
  %i.pa = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #27
  call void @_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #27
  br label %bb.ec

.lr.ph.i.i.i165:                                  ; preds = %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142.jt1, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i171
  %.05.i.i.i166 = phi ptr [ %i.ps, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i171 ], [ %.pre, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142.jt1 ] ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.05.i.i.i166, i64 8
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !52 ; 8 uses
  %.not.i.i.i.i.i.i.i167 = icmp eq ptr %i.pc, null
  br i1 %.not.i.i.i.i.i.i.i167, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i171, label %bb.dv

bb.dv:                                            ; preds = %.lr.ph.i.i.i165
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8 ; 4 uses
  %i.pe = load atomic i64, ptr %i.pd acquire, align 8 ; 2 uses
  %i.pf = icmp eq i64 %i.pe, 4294967297
  %i.pg = trunc i64 %i.pe to i32                  ; 2 uses
  br i1 %i.pf, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  store i32 0, ptr %i.pd, align 8, !tbaa !62
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pc, i64 12
  store i32 0, ptr %i.ph, align 4, !tbaa !64
  %i.pi = load ptr, ptr %i.pc, align 8, !tbaa !33
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 16
  %i.pk = load ptr, ptr %i.pj, align 8
  call void %i.pk(ptr noundef nonnull align 8 dereferenceable(16) %i.pc) #27, !inline_history !151
  %i.pl = load ptr, ptr %i.pc, align 8, !tbaa !33
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 24
  %i.pn = load ptr, ptr %i.pm, align 8
  call void %i.pn(ptr noundef nonnull align 8 dereferenceable(16) %i.pc) #27, !inline_history !151
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i171

bb.dx:                                            ; preds = %bb.dv
  %i.po = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i.i.i.i168 = icmp eq i8 %i.po, 0
  br i1 %.not.i.i.i.i.i.i.i.i168, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.pp = add nsw i32 %i.pg, -1
  store i32 %i.pp, ptr %i.pd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i169

bb.dz:                                            ; preds = %bb.dx
  %i.pq = atomicrmw volatile add ptr %i.pd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i169

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i169: ; preds = %bb.dz, %bb.dy
  %.0.i.i.i.i.i.i.i.i.i170 = phi i32 [ %i.pg, %bb.dy ], [ %i.pq, %bb.dz ]
  %i.pr = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i170, 1
  br i1 %i.pr, label %bb.ea, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i171, !prof !66

bb.ea:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i169
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pc) #27
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i171

_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i171: ; preds = %bb.ea, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i169, %bb.dw, %.lr.ph.i.i.i165
  %i.ps = getelementptr inbounds nuw i8, ptr %.05.i.i.i166, i64 16 ; 2 uses
  %.not.i.i.i172 = icmp eq ptr %i.ps, %.pre231
  br i1 %.not.i.i.i172, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i173, label %.lr.ph.i.i.i165, !llvm.loop !152

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i173: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow12ChunkedArrayEEEvPT_.exit.i.i.i171
  %.pr.i174 = load ptr, ptr %3, align 8, !tbaa !77
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i175

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i175: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i173, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142.jt1
  %i.pt = phi ptr [ %.pr.i174, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i173 ], [ %.pre, %_ZNSt12__shared_ptrIN5arrow12ChunkedArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit142.jt1 ] ; 3 uses
  %.not.i.i1.i176 = icmp eq ptr %i.pt, null
  br i1 %.not.i.i1.i176, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit177, label %bb.eb

bb.eb:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i175
  %i.pu = load ptr, ptr %i.l, align 8, !tbaa !116
  %i.pv = ptrtoint ptr %i.pu to i64
  %i.pw = ptrtoint ptr %i.pt to i64
  %i.px = sub i64 %i.pv, %i.pw
  call void @_ZdlPvm(ptr noundef nonnull %i.pt, i64 noundef %i.px) #26
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit177

_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev.exit177: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i175.thread, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ChunkedArrayEES3_EvT_S5_RSaIT0_E.exit.i175, %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void

bb.ec:                                            ; preds = %bb.o, %bb.do, %bb.du
  %.pn70 = phi { ptr, i32 } [ %i.pa, %bb.du ], [ %.pn63.pn.pn.pn, %bb.do ], [ %i.bk, %bb.o ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ChunkedArrayEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %.pn70
}

declare void @_ZN5arrow11ConcatenateERKSt6vectorISt10shared_ptrINS_5ArrayEESaIS3_EEPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.137") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !118    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread, !prof !121

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !64
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27, !inline_history !518
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27, !inline_history !518
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !61
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit, !prof !66

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #27
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !118    ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread, !prof !129

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !130, !range !140, !noundef !141
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #27
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow5Table20CombineChunksToBatchEPNS_10MemoryPoolE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.141") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Result", align 8     ; 13 uses
  %4 = alloca %"class.std::shared_ptr.10", align 16 ; 6 uses
  %5 = alloca %"class.std::vector.21", align 16   ; 16 uses
  %6 = alloca %"class.arrow::Result.137", align 8 ; 12 uses
  %7 = alloca %"class.std::shared_ptr.60", align 16 ; 8 uses
  %8 = alloca %"class.std::shared_ptr.57", align 16 ; 7 uses
  %9 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %10 = alloca %"class.std::vector.21", align 16  ; 7 uses
  %11 = alloca %"class.std::shared_ptr.146", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZNK5arrow5Table13CombineChunksEPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2)
  %i.a = load ptr, ptr %3, align 8, !tbaa !118
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b, !prof !121

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #27
  br label %bb.bv

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !519)
  call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = load <2 x ptr>, ptr %i.c, align 8, !tbaa !51, !noalias !525
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !106, !noalias !525 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !52, !noalias !525
  store <2 x ptr> %i.f, ptr %4, align 16, !tbaa !51, !alias.scope !525
  store ptr null, ptr %i.c, align 8, !tbaa !106, !noalias !525
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = invoke noundef nonnull align 8 dereferenceable(24) ptr %i.j(ptr noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !80   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !80   ; 2 uses
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %.critedge37, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.f:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.082.085 = phi ptr [ %i.l, %.lr.ph ], [ %i.cr, %.critedge ] ; 2 uses
  %i.w = load ptr, ptr %.sroa.082.085, align 8, !tbaa !82 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !172
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !170  ; 4 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = and i64 %i.ac, 68719476720
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %bb.ae

bb.g:                                             ; preds = %bb.aj
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ah = load i64, ptr %i.r, align 8, !tbaa !103
  invoke void @_ZN5arrow15MakeArrayOfNullERKSt10shared_ptrINS_8DataTypeEElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.137") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 noundef %i.ah, ptr noundef %2)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %6, align 8, !tbaa !118
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  br i1 %i.aj, label %bb.l, label %bb.j, !prof !121

bb.j:                                             ; preds = %bb.i
  call void @_ZN5arrow6ResultISt10shared_ptrINS_11RecordBatchEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %6) #27
  br label %bb.u

bb.k:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
end_hunk_2
