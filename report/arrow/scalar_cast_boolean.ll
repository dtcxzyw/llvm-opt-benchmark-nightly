inline.NumInlined: 719
inline.NumDeleted: 388
begin_hunk_0_@_ZNK5arrow18TypedChunkLocationIsEeqES1_:bb.a
  %i.c = ashr exact i32 %sext, 16
  %i.d = icmp eq i32 %i.c, %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i16, ptr %i.e, align 2
  %i.g = sext i16 %i.f to i32
  %i.h = ashr i32 %1, 16
  %i.i = icmp eq i32 %i.h, %i.g
  %i.j = select i1 %i.d, i1 %i.i, i1 false
  ret i1 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIaEC2Eaa(ptr noundef nonnull align 1 dereferenceable(2) %0, i8 noundef signext %1, i8 noundef signext %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIaEC5Eaa) align 2 {
bb.a:
  store i8 %1, ptr %0, align 1, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %2, ptr %i.a, align 1, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIaEeqES1_(ptr noundef nonnull align 1 dereferenceable(2) %0, i16 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = zext i16 %1 to i32
  %i.a = load i8, ptr %0, align 1, !tbaa !14
  %i.b = sext i8 %i.a to i32
  %sext = shl i32 %.sroa.0.0.extract.trunc, 24
  %i.c = ashr exact i32 %sext, 24
  %i.d = icmp eq i32 %i.c, %i.b
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0.extract.shift = lshr i16 %1, 8
  %.sroa.2.0.extract.trunc = zext nneg i16 %.sroa.2.0.extract.shift to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !16
  %i.g = sext i8 %i.f to i32
  %sext1 = shl nuw i32 %.sroa.2.0.extract.trunc, 24
  %i.h = ashr exact i32 %sext1, 24
  %i.i = icmp eq i32 %i.h, %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIhEC2Ehh(ptr noundef nonnull align 1 dereferenceable(2) %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIhEC5Ehh) align 2 {
bb.a:
  store i8 %1, ptr %0, align 1, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %2, ptr %i.a, align 1, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIhEeqES1_(ptr noundef nonnull align 1 dereferenceable(2) %0, i16 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !17
  %i.b = trunc i16 %1 to i8
  %i.c = icmp eq i8 %i.a, %i.b
  %.sroa.2.0.extract.shift = lshr i16 %1, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = zext i8 %i.e to i16
  %i.g = icmp eq i16 %.sroa.2.0.extract.shift, %i.f
  %i.h = select i1 %i.c, i1 %i.g, i1 false
  ret i1 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationItEC2Ett(ptr noundef nonnull align 2 dereferenceable(4) %0, i16 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationItEC5Ett) align 2 {
bb.a:
  store i16 %1, ptr %0, align 2, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %2, ptr %i.a, align 2, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationItEeqES1_(ptr noundef nonnull align 2 dereferenceable(4) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !20
  %i.b = trunc i32 %1 to i16
  %i.c = icmp eq i16 %i.a, %i.b
  %.sroa.2.0.extract.shift = lshr i32 %1, 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i16, ptr %i.d, align 2
  %i.f = zext i16 %i.e to i32
  %i.g = icmp eq i32 %.sroa.2.0.extract.shift, %i.f
  %i.h = select i1 %i.c, i1 %i.g, i1 false
  ret i1 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIjEC2Ejj(ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIjEC5Ejj) align 2 {
bb.a:
  store i32 %1, ptr %0, align 4, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIjEeqES1_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %i.a = load i32, ptr %0, align 4, !tbaa !23
  %i.b = icmp eq i32 %i.a, %.sroa.0.0.extract.trunc
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, %.sroa.2.0.extract.trunc
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIlEC2Ell(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIlEC5Ell) align 2 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIlEeqES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !26
  %i.b = icmp eq i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, %2
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationImEC2Emm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationImEC5Emm) align 2 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationImEeqES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !30
  %i.b = icmp eq i64 %i.a, %1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, %2
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute8internal15GetBooleanCastsEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr", align 16  ; 12 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.arrow::compute::OutputType", align 8 ; 7 uses
  %3 = alloca %"class.std::shared_ptr.7", align 8 ; 5 uses
  %4 = alloca %"class.arrow::compute::InputType", align 8 ; 7 uses
  %5 = alloca %"class.std::shared_ptr.7", align 8 ; 5 uses
  %6 = alloca %"class.arrow::compute::OutputType", align 8 ; 7 uses
  %7 = alloca %"class.std::shared_ptr.7", align 8 ; 5 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 3 uses
  %9 = alloca %"class.std::vector.43", align 8    ; 8 uses
  %10 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 11 uses
  %11 = alloca %"class.std::shared_ptr.7", align 8 ; 5 uses
  %12 = alloca %"class.arrow::compute::OutputType", align 8 ; 7 uses
  %13 = alloca %"class.std::shared_ptr.7", align 8 ; 5 uses
  %14 = alloca %"class.arrow::Status", align 8    ; 3 uses
  %15 = alloca %"class.std::vector.43", align 8   ; 8 uses
  %16 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 11 uses
  %17 = alloca %"class.std::shared_ptr.7", align 8 ; 5 uses
  %18 = alloca %"class.arrow::compute::OutputType", align 8 ; 7 uses
  %19 = alloca %"class.std::shared_ptr.7", align 8 ; 5 uses
  %20 = alloca %"class.arrow::Status", align 8    ; 3 uses
  %21 = alloca %"class.std::vector.43", align 8   ; 8 uses
  %22 = alloca [1 x %"class.arrow::compute::InputType"], align 8 ; 11 uses
  %23 = alloca %"class.std::shared_ptr.7", align 8 ; 5 uses
  %24 = alloca %"class.arrow::compute::OutputType", align 8 ; 7 uses
  %25 = alloca %"class.std::shared_ptr.7", align 8 ; 5 uses
  %26 = alloca [1 x %"class.std::shared_ptr"], align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 1, ptr %i.a, align 4, !tbaa !33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.b = tail call noalias noundef nonnull dereferenceable(272) ptr @_Znwm(i64 noundef 272) #21, !noalias !38 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !41, !noalias !35
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.d, align 4, !tbaa !43, !noalias !35
  store ptr getelementptr inbounds inrange(-16, 40) ({ [7 x ptr] }, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE, i32 0, i32 0, i32 2), ptr %i.b, align 8, !tbaa !44, !noalias !35
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  invoke void @_ZSt10_ConstructIN5arrow7compute8internal12CastFunctionEJRA13_KcNS0_4Type4typeEEEvPT_DpOT0_(ptr noundef nonnull %i.e, ptr noundef nonnull align 1 dereferenceable(13) @.str, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZSt11make_sharedIN5arrow7compute8internal12CastFunctionEJRA13_KcNS0_4Type4typeEEESt10shared_ptrIT_EDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i, !noalias !35

common.resume:                                    ; preds = %bb.jy, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.f, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i ], [ %.pn66.pn.pn.pn.pn, %bb.jy ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i: ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 272) #22, !noalias !35
  br label %common.resume

_ZSt11make_sharedIN5arrow7compute8internal12CastFunctionEJRA13_KcNS0_4Type4typeEEESt10shared_ptrIT_EDpOT0_.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store ptr %i.b, ptr %i.g, align 8, !tbaa !46, !alias.scope !35
  store ptr %i.e, ptr %1, align 16, !tbaa !50, !alias.scope !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.h = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow7booleanEv()
          to label %bb.b unwind label %bb.bk      ; 2 uses

bb.b:                                             ; preds = %_ZSt11make_sharedIN5arrow7compute8internal12CastFunctionEJRA13_KcNS0_4Type4typeEEESt10shared_ptrIT_EDpOT0_.exit
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52   ; 3 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !52
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46   ; 4 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !46
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr %i.m, align 4, !tbaa !3
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %3, align 8, !tbaa !52
  %.pre343 = load ptr, ptr %i.j, align 8, !tbaa !46
  %.pre344 = load ptr, ptr %1, align 16, !tbaa !56
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.b, %bb.d, %bb.e
  %i.r = phi ptr [ %i.e, %bb.b ], [ %i.e, %bb.d ], [ %.pre344, %bb.e ]
  %i.s = phi ptr [ null, %bb.b ], [ %i.l, %bb.d ], [ %.pre343, %bb.e ]
  %i.t = phi ptr [ %i.i, %bb.b ], [ %i.i, %bb.d ], [ %.pre, %bb.e ]
  store i32 0, ptr %2, align 8, !tbaa !58
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.t, ptr %i.u, align 8, !tbaa !52
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !46
  store ptr %i.s, ptr %i.v, align 8, !tbaa !46
  store ptr null, ptr %3, align 8, !tbaa !52
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i8 0, i64 32, i1 false)
  invoke void @_ZN5arrow7compute8internal14AddCommonCastsENS_4Type4typeENS0_10OutputTypeEPNS1_12CastFunctionE(i32 noundef 1, ptr noundef nonnull %2, ptr noundef %i.r)
          to label %bb.f unwind label %bb.bl

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !64   ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = invoke noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.h ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.g, %bb.f
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !46  ; 8 uses
  %.not.i.i.i72 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i72, label %_ZN5arrow7compute10OutputTypeD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ad, align 8, !tbaa !41
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !43
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !44
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #20, !inline_history !65
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !44
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #20, !inline_history !65
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i73 = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i73, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i = phi i32 [ %i.ag, %bb.l ], [ %i.aq, %bb.m ]
  %i.ar = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ar, label %bb.n, label %_ZN5arrow7compute10OutputTypeD2Ev.exit, !prof !66

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #20
  br label %_ZN5arrow7compute10OutputTypeD2Ev.exit

_ZN5arrow7compute10OutputTypeD2Ev.exit:           ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n
  %i.as = load ptr, ptr %i.j, align 8, !tbaa !46  ; 8 uses
  %.not.i.i74 = icmp eq ptr %i.as, null
  br i1 %.not.i.i74, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 4 uses
  %i.au = load atomic i64, ptr %i.at acquire, align 8 ; 2 uses
  %i.av = icmp eq i64 %i.au, 4294967297
  %i.aw = trunc i64 %i.au to i32                  ; 2 uses
  br i1 %i.av, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.at, align 8, !tbaa !41
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 0, ptr %i.ax, align 4, !tbaa !43
  %i.ay = load ptr, ptr %i.as, align 8, !tbaa !44
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #20, !inline_history !67
  %i.bb = load ptr, ptr %i.as, align 8, !tbaa !44
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #20, !inline_history !67
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.q:                                             ; preds = %bb.o
  %i.be = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i75 = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i75, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = add nsw i32 %i.aw, -1
  store i32 %i.bf, ptr %i.at, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bg = atomicrmw volatile add ptr %i.at, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i = phi i32 [ %i.aw, %bb.r ], [ %i.bg, %bb.s ]
  %i.bh = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bh, label %bb.t, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.as) #20
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow7compute10OutputTypeD2Ev.exit, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.t
  %i.bi = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow7booleanEv()
          to label %bb.u unwind label %bb.bk      ; 2 uses

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !52 ; 3 uses
  store ptr %i.bj, ptr %5, align 8, !tbaa !52
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !46 ; 4 uses
  store ptr %i.bm, ptr %i.bk, align 8, !tbaa !46
  %.not.i.i.i76 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i76, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit78, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 3 uses
  %i.bo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i.i.i77 = icmp eq i8 %i.bo, 0
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute9InputTypeD2Ev:bb.a
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4 = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.ah, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #20
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11TypeMatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.m
  ret void
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN5arrow12NumericTypesEv() local_unnamed_addr #3

declare void @_ZN5arrow7compute8internal12CastFunction9AddKernelENS_4Type4typeESt6vectorINS0_9InputTypeESaIS6_EENS0_10OutputTypeEPFNS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENS0_12NullHandling4typeENS0_13MemAllocation4typeE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(252), i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !93
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !100
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9InputTypeEEEvT_S6_(ptr noundef %i.a, ptr noundef %i.c)
          to label %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit unwind label %bb.c

_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !93     ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !96
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #22
  br label %_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN5arrow7compute9InputTypeESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute9InputTypeES2_EvT_S4_RSaIT0_E.exit, %bb.b
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #23
  unreachable
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN5arrow15BaseBinaryTypesEv() local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN5arrow15BinaryViewTypesEv() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow7compute8internal12CastFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !43
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !124
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !124
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !66

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !126
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !55
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !126
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_8Int8TypeENS1_9IsNonZeroEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %5 = alloca %"struct.arrow::compute::internal::ArrayIterator", align 8 ; 5 uses
  %6 = alloca %class.anon, align 8                ; 7 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !127
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !129  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr null, ptr %4, align 8, !tbaa !101, !alias.scope !132
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !135
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !142
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 %i.e
  store ptr %i.h, ptr %5, align 8, !tbaa !145
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.j = load i8, ptr %i.i, align 8, !tbaa !147
  switch i8 %i.j, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke [
    i8 0, label %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !149

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke: ; preds = %bb.a, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  %.str.2.sink = phi ptr [ @.str.1, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i ], [ @.str.2, %bb.a ]
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVSt18bad_variant_access, i32 0, i32 0, i32 2), ptr %i.k, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.str.2.sink, ptr %i.l, align 8, !tbaa !150
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont unwind label %bb.b

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  unreachable

_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %i.a, ptr %6, align 8, !tbaa !153
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.m, align 8, !tbaa !156
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %i.n, align 8, !tbaa !158
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !142, !noalias !160
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !135, !noalias !160
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !163, !noalias !160
  invoke void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_8Int8TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %i.p, i64 noundef %i.r, i64 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.c

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.u = load ptr, ptr %4, align 8, !tbaa !101
  store ptr %i.u, ptr %0, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void

bb.b:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %i.w, %bb.c ], [ %i.v, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.x = load ptr, ptr %4, align 8, !tbaa !101    ; 2 uses
  %.not.i22 = icmp eq ptr %i.x, null
  br i1 %.not.i22, label %_ZN5arrow6StatusD2Ev.exit23, label %bb.e, !prof !104

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !105, !range !115, !noundef !116
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN5arrow6StatusD2Ev.exit23, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br label %_ZN5arrow6StatusD2Ev.exit23

_ZN5arrow6StatusD2Ev.exit23:                      ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9UInt8TypeENS1_9IsNonZeroEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %5 = alloca %"struct.arrow::compute::internal::ArrayIterator.67", align 8 ; 5 uses
  %6 = alloca %class.anon.68, align 8             ; 7 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !127
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !129  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr null, ptr %4, align 8, !tbaa !101, !alias.scope !164
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !135
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !142
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 %i.e
  store ptr %i.h, ptr %5, align 8, !tbaa !167
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.j = load i8, ptr %i.i, align 8, !tbaa !147
  switch i8 %i.j, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke [
    i8 0, label %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !149

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke: ; preds = %bb.a, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  %.str.2.sink = phi ptr [ @.str.1, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i ], [ @.str.2, %bb.a ]
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVSt18bad_variant_access, i32 0, i32 0, i32 2), ptr %i.k, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.str.2.sink, ptr %i.l, align 8, !tbaa !150
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont unwind label %bb.b

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  unreachable

_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %i.a, ptr %6, align 8, !tbaa !153
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.m, align 8, !tbaa !169
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %i.n, align 8, !tbaa !158
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !142, !noalias !171
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !135, !noalias !171
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !163, !noalias !171
  invoke void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9UInt8TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %i.p, i64 noundef %i.r, i64 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.c

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.u = load ptr, ptr %4, align 8, !tbaa !101
  store ptr %i.u, ptr %0, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void

bb.b:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %i.w, %bb.c ], [ %i.v, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.x = load ptr, ptr %4, align 8, !tbaa !101    ; 2 uses
  %.not.i22 = icmp eq ptr %i.x, null
  br i1 %.not.i22, label %_ZN5arrow6StatusD2Ev.exit23, label %bb.e, !prof !104

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !105, !range !115, !noundef !116
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN5arrow6StatusD2Ev.exit23, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br label %_ZN5arrow6StatusD2Ev.exit23

_ZN5arrow6StatusD2Ev.exit23:                      ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9Int16TypeENS1_9IsNonZeroEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %5 = alloca %"struct.arrow::compute::internal::ArrayIterator.69", align 8 ; 5 uses
  %6 = alloca %class.anon.70, align 8             ; 7 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !127
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !129  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr null, ptr %4, align 8, !tbaa !101, !alias.scope !174
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !135
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !142
  %i.h = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.e
  store ptr %i.h, ptr %5, align 8, !tbaa !177
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.j = load i8, ptr %i.i, align 8, !tbaa !147
  switch i8 %i.j, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke [
    i8 0, label %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !149

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke: ; preds = %bb.a, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  %.str.2.sink = phi ptr [ @.str.1, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i ], [ @.str.2, %bb.a ]
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVSt18bad_variant_access, i32 0, i32 0, i32 2), ptr %i.k, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.str.2.sink, ptr %i.l, align 8, !tbaa !150
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont unwind label %bb.b

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  unreachable

_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %i.a, ptr %6, align 8, !tbaa !153
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.m, align 8, !tbaa !180
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %i.n, align 8, !tbaa !158
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !142, !noalias !182
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !135, !noalias !182
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !163, !noalias !182
  invoke void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9Int16TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %i.p, i64 noundef %i.r, i64 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.c

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.u = load ptr, ptr %4, align 8, !tbaa !101
  store ptr %i.u, ptr %0, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void

bb.b:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %i.w, %bb.c ], [ %i.v, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.x = load ptr, ptr %4, align 8, !tbaa !101    ; 2 uses
  %.not.i22 = icmp eq ptr %i.x, null
  br i1 %.not.i22, label %_ZN5arrow6StatusD2Ev.exit23, label %bb.e, !prof !104

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !105, !range !115, !noundef !116
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN5arrow6StatusD2Ev.exit23, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br label %_ZN5arrow6StatusD2Ev.exit23

_ZN5arrow6StatusD2Ev.exit23:                      ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10UInt16TypeENS1_9IsNonZeroEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %5 = alloca %"struct.arrow::compute::internal::ArrayIterator.71", align 8 ; 5 uses
  %6 = alloca %class.anon.72, align 8             ; 7 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !127
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !129  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr null, ptr %4, align 8, !tbaa !101, !alias.scope !185
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !135
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !142
  %i.h = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.e
  store ptr %i.h, ptr %5, align 8, !tbaa !188
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.j = load i8, ptr %i.i, align 8, !tbaa !147
  switch i8 %i.j, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke [
    i8 0, label %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !149

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke: ; preds = %bb.a, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  %.str.2.sink = phi ptr [ @.str.1, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i ], [ @.str.2, %bb.a ]
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVSt18bad_variant_access, i32 0, i32 0, i32 2), ptr %i.k, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.str.2.sink, ptr %i.l, align 8, !tbaa !150
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont unwind label %bb.b

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  unreachable

_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %i.a, ptr %6, align 8, !tbaa !153
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.m, align 8, !tbaa !190
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %i.n, align 8, !tbaa !158
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !142, !noalias !192
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !135, !noalias !192
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !163, !noalias !192
  invoke void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10UInt16TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %i.p, i64 noundef %i.r, i64 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.c

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.u = load ptr, ptr %4, align 8, !tbaa !101
  store ptr %i.u, ptr %0, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void

bb.b:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %i.w, %bb.c ], [ %i.v, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.x = load ptr, ptr %4, align 8, !tbaa !101    ; 2 uses
  %.not.i22 = icmp eq ptr %i.x, null
  br i1 %.not.i22, label %_ZN5arrow6StatusD2Ev.exit23, label %bb.e, !prof !104

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !105, !range !115, !noundef !116
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN5arrow6StatusD2Ev.exit23, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br label %_ZN5arrow6StatusD2Ev.exit23

_ZN5arrow6StatusD2Ev.exit23:                      ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9Int32TypeENS1_9IsNonZeroEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %5 = alloca %"struct.arrow::compute::internal::ArrayIterator.73", align 8 ; 5 uses
  %6 = alloca %class.anon.74, align 8             ; 7 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !127
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !129  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr null, ptr %4, align 8, !tbaa !101, !alias.scope !195
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !135
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !142
  %i.h = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.e
  store ptr %i.h, ptr %5, align 8, !tbaa !198
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.j = load i8, ptr %i.i, align 8, !tbaa !147
  switch i8 %i.j, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke [
    i8 0, label %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !149

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke: ; preds = %bb.a, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  %.str.2.sink = phi ptr [ @.str.1, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i ], [ @.str.2, %bb.a ]
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVSt18bad_variant_access, i32 0, i32 0, i32 2), ptr %i.k, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.str.2.sink, ptr %i.l, align 8, !tbaa !150
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont unwind label %bb.b

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  unreachable

_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %i.a, ptr %6, align 8, !tbaa !153
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.m, align 8, !tbaa !201
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %i.n, align 8, !tbaa !158
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !142, !noalias !203
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !135, !noalias !203
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !163, !noalias !203
  invoke void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9Int32TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %i.p, i64 noundef %i.r, i64 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.c

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.u = load ptr, ptr %4, align 8, !tbaa !101
  store ptr %i.u, ptr %0, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void

bb.b:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %i.w, %bb.c ], [ %i.v, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.x = load ptr, ptr %4, align 8, !tbaa !101    ; 2 uses
  %.not.i22 = icmp eq ptr %i.x, null
  br i1 %.not.i22, label %_ZN5arrow6StatusD2Ev.exit23, label %bb.e, !prof !104

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !105, !range !115, !noundef !116
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN5arrow6StatusD2Ev.exit23, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br label %_ZN5arrow6StatusD2Ev.exit23

_ZN5arrow6StatusD2Ev.exit23:                      ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10UInt32TypeENS1_9IsNonZeroEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %5 = alloca %"struct.arrow::compute::internal::ArrayIterator.75", align 8 ; 5 uses
  %6 = alloca %class.anon.76, align 8             ; 7 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !127
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !129  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr null, ptr %4, align 8, !tbaa !101, !alias.scope !206
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !135
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !142
  %i.h = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.e
  store ptr %i.h, ptr %5, align 8, !tbaa !209
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.j = load i8, ptr %i.i, align 8, !tbaa !147
  switch i8 %i.j, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke [
    i8 0, label %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !149

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke: ; preds = %bb.a, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  %.str.2.sink = phi ptr [ @.str.1, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i ], [ @.str.2, %bb.a ]
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVSt18bad_variant_access, i32 0, i32 0, i32 2), ptr %i.k, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.str.2.sink, ptr %i.l, align 8, !tbaa !150
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont unwind label %bb.b

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  unreachable

_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %i.a, ptr %6, align 8, !tbaa !153
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.m, align 8, !tbaa !211
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %i.n, align 8, !tbaa !158
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !142, !noalias !213
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !135, !noalias !213
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !163, !noalias !213
  invoke void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10UInt32TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %i.p, i64 noundef %i.r, i64 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.c

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.u = load ptr, ptr %4, align 8, !tbaa !101
  store ptr %i.u, ptr %0, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void

bb.b:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %i.w, %bb.c ], [ %i.v, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.x = load ptr, ptr %4, align 8, !tbaa !101    ; 2 uses
  %.not.i22 = icmp eq ptr %i.x, null
  br i1 %.not.i22, label %_ZN5arrow6StatusD2Ev.exit23, label %bb.e, !prof !104

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !105, !range !115, !noundef !116
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN5arrow6StatusD2Ev.exit23, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br label %_ZN5arrow6StatusD2Ev.exit23

_ZN5arrow6StatusD2Ev.exit23:                      ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9Int64TypeENS1_9IsNonZeroEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %5 = alloca %"struct.arrow::compute::internal::ArrayIterator.77", align 8 ; 5 uses
  %6 = alloca %class.anon.78, align 8             ; 7 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !127
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !129  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr null, ptr %4, align 8, !tbaa !101, !alias.scope !216
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !135
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !142
  %i.h = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.e
  store ptr %i.h, ptr %5, align 8, !tbaa !219
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.j = load i8, ptr %i.i, align 8, !tbaa !147
  switch i8 %i.j, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke [
    i8 0, label %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !149

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke: ; preds = %bb.a, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  %.str.2.sink = phi ptr [ @.str.1, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i ], [ @.str.2, %bb.a ]
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVSt18bad_variant_access, i32 0, i32 0, i32 2), ptr %i.k, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.str.2.sink, ptr %i.l, align 8, !tbaa !150
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont unwind label %bb.b

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  unreachable

_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %i.a, ptr %6, align 8, !tbaa !153
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.m, align 8, !tbaa !222
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %i.n, align 8, !tbaa !158
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !142, !noalias !224
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !135, !noalias !224
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !163, !noalias !224
  invoke void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9Int64TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %i.p, i64 noundef %i.r, i64 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.c

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.u = load ptr, ptr %4, align 8, !tbaa !101
  store ptr %i.u, ptr %0, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void

bb.b:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %i.w, %bb.c ], [ %i.v, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.x = load ptr, ptr %4, align 8, !tbaa !101    ; 2 uses
  %.not.i22 = icmp eq ptr %i.x, null
  br i1 %.not.i22, label %_ZN5arrow6StatusD2Ev.exit23, label %bb.e, !prof !104

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !105, !range !115, !noundef !116
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN5arrow6StatusD2Ev.exit23, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br label %_ZN5arrow6StatusD2Ev.exit23

_ZN5arrow6StatusD2Ev.exit23:                      ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10UInt64TypeENS1_9IsNonZeroEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %5 = alloca %"struct.arrow::compute::internal::ArrayIterator.79", align 8 ; 5 uses
  %6 = alloca %class.anon.80, align 8             ; 7 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !127
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !129  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr null, ptr %4, align 8, !tbaa !101, !alias.scope !227
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !135
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !142
  %i.h = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.e
  store ptr %i.h, ptr %5, align 8, !tbaa !230
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.j = load i8, ptr %i.i, align 8, !tbaa !147
  switch i8 %i.j, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke [
    i8 0, label %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !149

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke: ; preds = %bb.a, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  %.str.2.sink = phi ptr [ @.str.1, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i ], [ @.str.2, %bb.a ]
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVSt18bad_variant_access, i32 0, i32 0, i32 2), ptr %i.k, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.str.2.sink, ptr %i.l, align 8, !tbaa !150
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont unwind label %bb.b

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  unreachable

_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %i.a, ptr %6, align 8, !tbaa !153
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.m, align 8, !tbaa !232
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %i.n, align 8, !tbaa !158
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !142, !noalias !234
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !135, !noalias !234
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !163, !noalias !234
  invoke void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10UInt64TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %i.p, i64 noundef %i.r, i64 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.c

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.u = load ptr, ptr %4, align 8, !tbaa !101
  store ptr %i.u, ptr %0, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void

bb.b:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %i.w, %bb.c ], [ %i.v, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.x = load ptr, ptr %4, align 8, !tbaa !101    ; 2 uses
  %.not.i22 = icmp eq ptr %i.x, null
  br i1 %.not.i22, label %_ZN5arrow6StatusD2Ev.exit23, label %bb.e, !prof !104

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !105, !range !115, !noundef !116
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN5arrow6StatusD2Ev.exit23, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br label %_ZN5arrow6StatusD2Ev.exit23

_ZN5arrow6StatusD2Ev.exit23:                      ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9FloatTypeENS1_9IsNonZeroEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %5 = alloca %"struct.arrow::compute::internal::ArrayIterator.81", align 8 ; 5 uses
  %6 = alloca %class.anon.82, align 8             ; 7 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !127
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !129  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr null, ptr %4, align 8, !tbaa !101, !alias.scope !237
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !135
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !142
  %i.h = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.e
  store ptr %i.h, ptr %5, align 8, !tbaa !240
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.j = load i8, ptr %i.i, align 8, !tbaa !147
  switch i8 %i.j, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke [
    i8 0, label %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !149

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke: ; preds = %bb.a, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  %.str.2.sink = phi ptr [ @.str.1, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i ], [ @.str.2, %bb.a ]
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVSt18bad_variant_access, i32 0, i32 0, i32 2), ptr %i.k, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.str.2.sink, ptr %i.l, align 8, !tbaa !150
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont unwind label %bb.b

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  unreachable

_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %i.a, ptr %6, align 8, !tbaa !153
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.m, align 8, !tbaa !243
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %i.n, align 8, !tbaa !158
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !142, !noalias !245
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !135, !noalias !245
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !163, !noalias !245
  invoke void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9FloatTypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %i.p, i64 noundef %i.r, i64 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.c

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.u = load ptr, ptr %4, align 8, !tbaa !101
  store ptr %i.u, ptr %0, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void

bb.b:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %i.w, %bb.c ], [ %i.v, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.x = load ptr, ptr %4, align 8, !tbaa !101    ; 2 uses
  %.not.i22 = icmp eq ptr %i.x, null
  br i1 %.not.i22, label %_ZN5arrow6StatusD2Ev.exit23, label %bb.e, !prof !104

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !105, !range !115, !noundef !116
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN5arrow6StatusD2Ev.exit23, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br label %_ZN5arrow6StatusD2Ev.exit23

_ZN5arrow6StatusD2Ev.exit23:                      ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10DoubleTypeENS1_9IsNonZeroEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %5 = alloca %"struct.arrow::compute::internal::ArrayIterator.83", align 8 ; 5 uses
  %6 = alloca %class.anon.84, align 8             ; 7 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !127
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !129  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr null, ptr %4, align 8, !tbaa !101, !alias.scope !248
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !135
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !142
  %i.h = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.e
  store ptr %i.h, ptr %5, align 8, !tbaa !251
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.j = load i8, ptr %i.i, align 8, !tbaa !147
  switch i8 %i.j, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke [
    i8 0, label %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !149

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke: ; preds = %bb.a, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  %.str.2.sink = phi ptr [ @.str.1, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i ], [ @.str.2, %bb.a ]
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVSt18bad_variant_access, i32 0, i32 0, i32 2), ptr %i.k, align 8, !tbaa !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.str.2.sink, ptr %i.l, align 8, !tbaa !150
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont unwind label %bb.b

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  unreachable

_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %i.a, ptr %6, align 8, !tbaa !153
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.m, align 8, !tbaa !254
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %i.n, align 8, !tbaa !158
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !142, !noalias !256
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !135, !noalias !256
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !163, !noalias !256
  invoke void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10DoubleTypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %i.p, i64 noundef %i.r, i64 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.c

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.u = load ptr, ptr %4, align 8, !tbaa !101
  store ptr %i.u, ptr %0, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void

bb.b:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %i.w, %bb.c ], [ %i.v, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.x = load ptr, ptr %4, align 8, !tbaa !101    ; 2 uses
  %.not.i22 = icmp eq ptr %i.x, null
  br i1 %.not.i22, label %_ZN5arrow6StatusD2Ev.exit23, label %bb.e, !prof !104

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !105, !range !115, !noundef !116
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN5arrow6StatusD2Ev.exit23, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br label %_ZN5arrow6StatusD2Ev.exit23

_ZN5arrow6StatusD2Ev.exit23:                      ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal11FailFunctorIPFNS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEEE4ExecES5_S8_SA_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow6Status8FromArgsIJRA25_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(25) @.str.3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_8Int8TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat {
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
  %i.e = load i8, ptr %i.c, align 1, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL17kPrecedingBitmaskE, i64 %i.d
  %i.g = load i8, ptr %i.f, align 1, !tbaa !55
  %i.h = and i8 %i.g, %i.e                        ; 2 uses
  %i.i = icmp sgt i64 %2, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.d
  %i.k = load i8, ptr %i.j, align 1, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !259, !nonnull !116, !align !261 ; 2 uses
  %.promoted = load ptr, ptr %i.m, align 8, !tbaa !145
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.n = phi ptr [ %.promoted, %.lr.ph ], [ %i.o, %bb.d ] ; 2 uses
  %.03551 = phi i64 [ %2, %.lr.ph ], [ %i.t, %bb.d ] ; 2 uses
  %.03650 = phi i8 [ %i.k, %.lr.ph ], [ %i.s, %bb.d ] ; 2 uses
  %.03849 = phi i8 [ %i.h, %.lr.ph ], [ %i.r, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1 ; 2 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !145
  %i.p = load i8, ptr %i.n, align 1, !tbaa !55
  %.not46 = icmp eq i8 %i.p, 0
  %i.q = select i1 %.not46, i8 0, i8 %.03650
  %i.r = or i8 %i.q, %.03849                      ; 2 uses
  %i.s = shl i8 %.03650, 1                        ; 2 uses
  %i.t = add nsw i64 %.03551, -1                  ; 2 uses
  %i.u = icmp ne i8 %i.s, 0
  %i.v = icmp samesign ugt i64 %.03551, 1
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %bb.d, label %._crit_edge, !llvm.loop !262

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.038.lcssa = phi i8 [ %i.h, %bb.c ], [ %i.r, %bb.d ]
  %.035.lcssa = phi i64 [ %2, %bb.c ], [ %i.t, %bb.d ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.038.lcssa, ptr %i.c, align 1, !tbaa !55
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %.040 = phi ptr [ %i.x, %._crit_edge ], [ %i.c, %bb.b ] ; 2 uses
  %.1 = phi i64 [ %.035.lcssa, %._crit_edge ], [ %2, %bb.b ] ; 3 uses
  %i.y = icmp sgt i64 %.1, 7
  br i1 %i.y, label %.preheader48.lr.ph, label %._crit_edge56

.preheader48.lr.ph:                               ; preds = %bb.e
  %i.z = lshr i64 %.1, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.preheader48

.preheader48:                                     ; preds = %.preheader48.lr.ph, %.preheader48
  %.in = phi i64 [ %i.z, %.preheader48.lr.ph ], [ %i.ak, %.preheader48 ] ; 2 uses
  %.14155 = phi ptr [ %.040, %.preheader48.lr.ph ], [ %i.bc, %.preheader48 ] ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !259, !nonnull !116, !align !261 ; 9 uses
  %.promoted53 = load ptr, ptr %i.ab, align 8, !tbaa !145 ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.promoted53, i64 1 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !145
  %i.ad = getelementptr inbounds nuw i8, ptr %.promoted53, i64 2 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.promoted53, i64 3 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.promoted53, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.promoted53, i64 5 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.promoted53, i64 6 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.promoted53, i64 7 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.promoted53, i64 8
  %i.ak = add nsw i64 %.in, -1
  %i.al = load i8, ptr %.promoted53, align 1, !tbaa !55
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !145
  %i.am = load i8, ptr %i.ac, align 1, !tbaa !55
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !145
  %i.an = load i8, ptr %i.ad, align 1, !tbaa !55
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !145
  %i.ao = load i8, ptr %i.ae, align 1, !tbaa !55
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !145
  %i.ap = load i8, ptr %i.af, align 1, !tbaa !55
  store ptr %i.ah, ptr %i.ab, align 8, !tbaa !145
  %i.aq = load i8, ptr %i.ag, align 1, !tbaa !55
  store ptr %i.ai, ptr %i.ab, align 8, !tbaa !145
  %i.ar = load i8, ptr %i.ah, align 1, !tbaa !55
  store ptr %i.aj, ptr %i.ab, align 8, !tbaa !145
  %i.as = load i8, ptr %i.ai, align 1, !tbaa !55
  %i.at = insertelement <8 x i8> poison, i8 %i.al, i64 0
  %i.au = insertelement <8 x i8> %i.at, i8 %i.am, i64 1
  %i.av = insertelement <8 x i8> %i.au, i8 %i.an, i64 2
  %i.aw = insertelement <8 x i8> %i.av, i8 %i.ao, i64 3
  %i.ax = insertelement <8 x i8> %i.aw, i8 %i.ap, i64 4
  %i.ay = insertelement <8 x i8> %i.ax, i8 %i.aq, i64 5
  %i.az = insertelement <8 x i8> %i.ay, i8 %i.ar, i64 6
  %i.ba = insertelement <8 x i8> %i.az, i8 %i.as, i64 7
  %i.bb = icmp ne <8 x i8> %i.ba, zeroinitializer
  %i.bc = getelementptr inbounds nuw i8, ptr %.14155, i64 1 ; 2 uses
  store <8 x i1> %i.bb, ptr %.14155, align 1, !tbaa !55
  %i.bd = icmp samesign ugt i64 %.in, 1
  br i1 %i.bd, label %.preheader48, label %._crit_edge56, !llvm.loop !264

._crit_edge56:                                    ; preds = %.preheader48, %bb.e
  %.141.lcssa = phi ptr [ %.040, %bb.e ], [ %i.bc, %.preheader48 ]
  %i.be = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.be, 0
  br i1 %.not45, label %bb.g, label %.preheader

.preheader:                                       ; preds = %._crit_edge56
  %i.bf = icmp sgt i64 %i.be, 0
  br i1 %i.bf, label %.lr.ph61, label %._crit_edge62

.lr.ph61:                                         ; preds = %.preheader
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !259, !nonnull !116, !align !261 ; 4 uses
  %.promoted64 = load ptr, ptr %i.bh, align 8, !tbaa !145 ; 2 uses
  %xtraiter = and i64 %i.be, 1
  %i.bi = icmp eq i64 %i.be, 1
  br i1 %i.bi, label %.epil.preheader, label %.lr.ph61.new

.lr.ph61.new:                                     ; preds = %.lr.ph61
end_hunk_1
begin_hunk_2_@llvm.memcpy.p0.p0.i64

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 272) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow7compute8internal12CastFunctionEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(252) %i.a) #20, !inline_history !344
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 272) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !345  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !55
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #20
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN5arrow7compute8internal12CastFunctionEJRA13_KcNS0_4Type4typeEEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(13) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !347
  %i.b = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20 ; 8 uses
  %i.c = icmp ugt i64 %i.b, 15
  br i1 %i.c, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %i.b, 0
  br i1 %i.d, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #24
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i64 %i.b, 1                      ; 2 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !66

.noexc11.i:                                       ; preds = %bb.c
  call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.g = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #21 ; 2 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !339
  store i64 %i.b, ptr %i.a, align 8, !tbaa !55
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.h = phi ptr [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.b, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !55
  store i8 %i.i, ptr %i.h, align 1, !tbaa !55
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.b, ptr %i.j, align 8, !tbaa !348
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b
  store i8 0, ptr %i.k, align 1, !tbaa !55
  %i.l = load i32, ptr %2, align 4, !tbaa !33
  invoke void @_ZN5arrow7compute8internal12CastFunctionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_4Type4typeE(ptr noundef nonnull align 8 dereferenceable(252) %0, ptr noundef nonnull %3, i32 noundef %i.l)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %3, align 8, !tbaa !339    ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.a
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.o = load i64, ptr %i.a, align 8, !tbaa !55
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %3, align 8, !tbaa !339    ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.a
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.h
  %i.t = load i64, ptr %i.a, align 8, !tbaa !55
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  resume { ptr, i32 } %i.q
}

declare void @_ZN5arrow7compute8internal12CastFunctionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_4Type4typeE(ptr noundef nonnull align 8 dereferenceable(252), ptr noundef, i32 noundef) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator18ScalarUnaryNotNullINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 {
bb.a:
  %4 = alloca %"struct.arrow::compute::internal::applicator::ScalarUnaryNotNullStateful", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129, !noalias !349
  call void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator18ScalarUnaryNotNullINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 {
bb.a:
  %4 = alloca %"struct.arrow::compute::internal::applicator::ScalarUnaryNotNullStateful.108", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129, !noalias !352
  call void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !101, !alias.scope !355
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.c = load i8, ptr %i.b, align 8, !tbaa !147
  switch i8 %i.c, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke [
    i8 0, label %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !149

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke: ; preds = %bb.a, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  %.str.2.sink = phi ptr [ @.str.1, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i ], [ @.str.2, %bb.a ]
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVSt18bad_variant_access, i32 0, i32 0, i32 2), ptr %i.d, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.str.2.sink, ptr %i.e, align 8, !tbaa !150
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont unwind label %bb.n

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  unreachable

_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !142  ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !135  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !163  ; 2 uses
  %i.l = sdiv i64 %i.i, 8                         ; 4 uses
  %i.m = srem i64 %i.i, 8                         ; 2 uses
  %i.n = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !55    ; 3 uses
  %i.p = icmp sgt i64 %i.k, 0                     ; 2 uses
  br i1 %i.p, label %bb.b, label %_ZN5arrow8internal21FirstTimeBitmapWriterC2EPhll.exit

bb.b:                                             ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  %i.q = getelementptr inbounds i8, ptr %i.g, i64 %i.l
  %i.r = load i8, ptr %i.q, align 1, !tbaa !55
  %i.s = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL17kPrecedingBitmaskE, i64 %i.m
  %i.t = load i8, ptr %i.s, align 1, !tbaa !55
  %i.u = and i8 %i.t, %i.r
  br label %_ZN5arrow8internal21FirstTimeBitmapWriterC2EPhll.exit

_ZN5arrow8internal21FirstTimeBitmapWriterC2EPhll.exit: ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit, %bb.b
  %storemerge.i = phi i8 [ %i.u, %bb.b ], [ 0, %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1, !tbaa !55
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !163  ; 4 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow8internal21FirstTimeBitmapWriterC2EPhll.exit
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !135  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !142
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.z ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !142 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  %storemerge.i.i.i = select i1 %i.ag, ptr %i.a, ptr %i.af ; 2 uses
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !142 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.ah, i64 noundef %i.z, i64 noundef %i.w)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %bb.c
  %i.ai = icmp sgt i64 %i.w, 0
  br i1 %i.ai, label %.lr.ph48.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES3_NS7_18ParseBooleanStringEE9ArrayExecISB_vE4ExecERKSD_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_EUllE_SU_EEvPKhllS15_S10_.exit.i.i.i

.lr.ph48.i.i.i.i:                                 ; preds = %.noexc11, %.loopexit.i.i.i.i
  %.sroa.33.1 = phi i8 [ %.sroa.33.2, %.loopexit.i.i.i.i ], [ %i.o, %.noexc11 ] ; 7 uses
  %.sroa.8.1 = phi i64 [ %.sroa.8.2, %.loopexit.i.i.i.i ], [ 0, %.noexc11 ] ; 6 uses
  %.sroa.4740.1 = phi i64 [ %.sroa.4740.2, %.loopexit.i.i.i.i ], [ %i.l, %.noexc11 ] ; 7 uses
  %.sroa.20.1 = phi i8 [ %.sroa.20.2, %.loopexit.i.i.i.i ], [ %storemerge.i, %.noexc11 ] ; 7 uses
  %.02447.i.i.i.i = phi i64 [ %.4.i.i.i.i, %.loopexit.i.i.i.i ], [ 0, %.noexc11 ] ; 7 uses
  %i.aj = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc12:                                         ; preds = %.lr.ph48.i.i.i.i
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.aj to i16 ; 8 uses
  %.sroa.7.0.extract.shift.i.i.i.i = lshr i32 %i.aj, 16 ; 2 uses
  %.sroa.7.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i.i to i16
  %i.ak = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.7.0.extract.trunc.i.i.i.i
  br i1 %i.ak, label %.preheader.i.i.i.i, label %bb.e

.preheader.i.i.i.i:                               ; preds = %.noexc12
  %i.al = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.am = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.am, label %.lr.ph45.i.i.i.i.preheader, label %.loopexit.i.i.i.i

.lr.ph45.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.an = add i64 %.sroa.8.1, %i.al
  br label %.lr.ph45.i.i.i.i

.lr.ph45.i.i.i.i:                                 ; preds = %.lr.ph45.i.i.i.i.preheader, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i
  %.sroa.33.8 = phi i8 [ %.sroa.33.9, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ %.sroa.33.1, %.lr.ph45.i.i.i.i.preheader ] ; 2 uses
  %.sroa.4740.7 = phi i64 [ %.sroa.4740.8, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ %.sroa.4740.1, %.lr.ph45.i.i.i.i.preheader ] ; 3 uses
  %.sroa.20.9 = phi i8 [ %.sroa.20.11, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ %.sroa.20.1, %.lr.ph45.i.i.i.i.preheader ]
  %.02344.i.i.i.i = phi i64 [ %i.bc, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ 0, %.lr.ph45.i.i.i.i.preheader ]
  %.143.i.i.i.i = phi i64 [ %i.bd, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ %.02447.i.i.i.i, %.lr.ph45.i.i.i.i.preheader ] ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %.143.i.i.i.i ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3  ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ao, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3
  %i.au = sub nsw i32 %i.at, %i.ap
  %i.av = sext i32 %i.au to i64
  %i.aw = invoke noundef zeroext i1 @_ZN5arrow7compute8internal18ParseBooleanString4CallIbSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef %2, i64 %i.av, ptr nonnull %i.ar, ptr noundef nonnull %0)
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %.lr.ph45.i.i.i.i
  %i.ax = select i1 %i.aw, i8 %.sroa.33.8, i8 0
  %spec.select = or i8 %i.ax, %.sroa.20.9         ; 2 uses
  %i.ay = shl i8 %.sroa.33.8, 1                   ; 2 uses
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %bb.d, label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i

bb.d:                                             ; preds = %.noexc13
  %i.ba = add nsw i64 %.sroa.4740.7, 1
  %i.bb = getelementptr inbounds i8, ptr %i.g, i64 %.sroa.4740.7
  store i8 %spec.select, ptr %i.bb, align 1, !tbaa !55
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i

_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i: ; preds = %bb.d, %.noexc13
  %.sroa.33.9 = phi i8 [ 1, %bb.d ], [ %i.ay, %.noexc13 ] ; 2 uses
  %.sroa.4740.8 = phi i64 [ %i.ba, %bb.d ], [ %.sroa.4740.7, %.noexc13 ] ; 2 uses
  %.sroa.20.11 = phi i8 [ 0, %bb.d ], [ %spec.select, %.noexc13 ] ; 2 uses
  %i.bc = add nuw nsw i64 %.02344.i.i.i.i, 1      ; 2 uses
  %i.bd = add nsw i64 %.143.i.i.i.i, 1            ; 2 uses
  %exitcond54.not.i.i.i.i = icmp eq i64 %i.bc, %i.al
  br i1 %exitcond54.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph45.i.i.i.i, !llvm.loop !358

bb.e:                                             ; preds = %.noexc12
  %i.be = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.be, label %.preheader33.i.i.i.i, label %.preheader35.i.i.i.i

.preheader35.i.i.i.i:                             ; preds = %bb.e
  %i.bf = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.bf, label %.lr.ph.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader35.i.i.i.i
  %.sroa.0.0.extract.trunc.mask.i.i.i.i = and i32 %i.aj, 32767
  %i.bg = zext nneg i32 %.sroa.0.0.extract.trunc.mask.i.i.i.i to i64
  %i.bh = add i64 %.02447.i.i.i.i, %i.bg          ; 2 uses
  br label %.lr.ph.i.i.i.i

.preheader33.i.i.i.i:                             ; preds = %bb.e
  %i.bi = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 3 uses
  %i.bj = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.bj, label %.lr.ph41.i.i.i.i.preheader, label %.loopexit.i.i.i.i

.lr.ph41.i.i.i.i.preheader:                       ; preds = %.preheader33.i.i.i.i
  %i.bk = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, 1
  br i1 %i.bk, label %.lr.ph41.i.i.i.i.epil.preheader, label %.lr.ph41.i.i.i.i.preheader.new

.lr.ph41.i.i.i.i.preheader.new:                   ; preds = %.lr.ph41.i.i.i.i.preheader
  %unroll_iter = and i64 %i.bi, 32766
  br label %.lr.ph41.i.i.i.i

.lr.ph41.i.i.i.i:                                 ; preds = %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1, %.lr.ph41.i.i.i.i.preheader.new
  %.sroa.33.6 = phi i8 [ %.sroa.33.1, %.lr.ph41.i.i.i.i.preheader.new ], [ %.sroa.33.7.1, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1 ]
  %.sroa.4740.5 = phi i64 [ %.sroa.4740.1, %.lr.ph41.i.i.i.i.preheader.new ], [ %.sroa.4740.6.1, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1 ] ; 3 uses
  %.sroa.20.7 = phi i8 [ %.sroa.20.1, %.lr.ph41.i.i.i.i.preheader.new ], [ %.sroa.20.8.1, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph41.i.i.i.i.preheader.new ], [ %niter.next.1, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1 ]
  %i.bl = shl i8 %.sroa.33.6, 1                   ; 2 uses
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %bb.f, label %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i

bb.f:                                             ; preds = %.lr.ph41.i.i.i.i
  %i.bn = add nsw i64 %.sroa.4740.5, 1
  %i.bo = getelementptr inbounds i8, ptr %i.g, i64 %.sroa.4740.5
  store i8 %.sroa.20.7, ptr %i.bo, align 1, !tbaa !55
  br label %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i

_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i: ; preds = %bb.f, %.lr.ph41.i.i.i.i
  %.sroa.33.7 = phi i8 [ 1, %bb.f ], [ %i.bl, %.lr.ph41.i.i.i.i ]
  %.sroa.4740.6 = phi i64 [ %i.bn, %bb.f ], [ %.sroa.4740.5, %.lr.ph41.i.i.i.i ] ; 3 uses
  %.sroa.20.8 = phi i8 [ 0, %bb.f ], [ %.sroa.20.7, %.lr.ph41.i.i.i.i ] ; 2 uses
  %i.bp = shl i8 %.sroa.33.7, 1                   ; 2 uses
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %bb.g, label %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1

bb.g:                                             ; preds = %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i
  %i.br = add nsw i64 %.sroa.4740.6, 1
  %i.bs = getelementptr inbounds i8, ptr %i.g, i64 %.sroa.4740.6
  store i8 %.sroa.20.8, ptr %i.bs, align 1, !tbaa !55
  br label %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1

_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1: ; preds = %bb.g, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i
  %.sroa.33.7.1 = phi i8 [ 1, %bb.g ], [ %i.bp, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i ] ; 3 uses
  %.sroa.4740.6.1 = phi i64 [ %i.br, %bb.g ], [ %.sroa.4740.6, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i ] ; 3 uses
  %.sroa.20.8.1 = phi i8 [ 0, %bb.g ], [ %.sroa.20.8, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i ] ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit49.i.i.i.i.unr-lcssa, label %.lr.ph41.i.i.i.i, !llvm.loop !359

.lr.ph.i.i.i.i:                                   ; preds = %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.sroa.33.3 = phi i8 [ %.sroa.33.1, %.lr.ph.preheader.i.i.i.i ], [ %.sroa.33.4, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i ] ; 3 uses
  %.sroa.8.3 = phi i64 [ %.sroa.8.1, %.lr.ph.preheader.i.i.i.i ], [ %.sroa.8.4, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i ] ; 2 uses
  %.sroa.4740.3 = phi i64 [ %.sroa.4740.1, %.lr.ph.preheader.i.i.i.i ], [ %.sroa.4740.4, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i ] ; 4 uses
  %.sroa.20.3 = phi i8 [ %.sroa.20.1, %.lr.ph.preheader.i.i.i.i ], [ %.sroa.20.4, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i ] ; 3 uses
  %.337.i.i.i.i = phi i64 [ %.02447.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.ct, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i ] ; 3 uses
  %i.bt = add nsw i64 %.337.i.i.i.i, %i.z         ; 2 uses
  %i.bu = lshr i64 %i.bt, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !55
  %i.bx = trunc i64 %i.bt to i8
  %i.by = and i8 %i.bx, 7
  %i.bz = lshr i8 %i.bw, %i.by
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE:bb.a
  %.sroa.4740.9 = phi i64 [ %i.l, %_ZN5arrow8internal21FirstTimeBitmapWriterC2EPhll.exit ], [ %.sroa.4740.0, %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES3_NS7_18ParseBooleanStringEE9ArrayExecISB_vE4ExecERKSD_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_EUllE_SU_EEvPKhllS15_S10_.exit.i.i.i ]
  %.sroa.20.12 = phi i8 [ %storemerge.i, %_ZN5arrow8internal21FirstTimeBitmapWriterC2EPhll.exit ], [ %.sroa.20.0, %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES3_NS7_18ParseBooleanStringEE9ArrayExecISB_vE4ExecERKSD_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_EUllE_SU_EEvPKhllS15_S10_.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br i1 %i.p, label %bb.l, label %_ZN5arrow8internal21FirstTimeBitmapWriter6FinishEv.exit

bb.l:                                             ; preds = %bb.k
  %.not.i = icmp ne i8 %.sroa.33.10, 1
  %i.dc = icmp slt i64 %.sroa.8.8, %i.k
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.dc
  br i1 %or.cond.i, label %bb.m, label %_ZN5arrow8internal21FirstTimeBitmapWriter6FinishEv.exit

bb.m:                                             ; preds = %bb.l
  %i.dd = getelementptr inbounds i8, ptr %i.g, i64 %.sroa.4740.9
  store i8 %.sroa.20.12, ptr %i.dd, align 1, !tbaa !55
  br label %_ZN5arrow8internal21FirstTimeBitmapWriter6FinishEv.exit

_ZN5arrow8internal21FirstTimeBitmapWriter6FinishEv.exit: ; preds = %bb.k, %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit:                                        ; preds = %.lr.ph45.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.h
  %lpad.loopexit52 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph48.i.i.i.i
  %lpad.loopexit56 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.n
  %.pn = phi { ptr, i32 } [ %i.de, %bb.n ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit52, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit56, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.df = load ptr, ptr %0, align 8, !tbaa !101   ; 2 uses
  %.not.i15 = icmp eq ptr %i.df, null
  br i1 %.not.i15, label %_ZN5arrow6StatusD2Ev.exit, label %bb.o, !prof !104

bb.o:                                             ; preds = %.loopexit.split-lp
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !105, !range !115, !noundef !116
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %_ZN5arrow6StatusD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.loopexit.split-lp, %bb.o, %bb.p
  resume { ptr, i32 } %.pn
}

declare void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef, i64 noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !362, !range !115, !noundef !116
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !365  ; 4 uses
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !366  ; 3 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = icmp slt i64 %i.e, 64
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 64) #20 ; 2 uses
  %.sroa.5.0.extract.shift.i = lshr i32 %i.j, 16
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !367  ; 2 uses
  %i.l = load i64, ptr %i.k, align 1
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.m = sub nsw i64 128, %i.g
  %i.n = icmp slt i64 %i.e, %i.m
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 64) #20 ; 2 uses
  %.sroa.5.0.extract.shift2.i = lshr i32 %i.o, 16
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !367  ; 3 uses
  %i.q = load i64, ptr %i.p, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 1
  %.0.i.i = tail call noundef i64 @llvm.fshr.i64(i64 %i.s, i64 %i.q, i64 %i.g)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.0.i.sink.i = phi i64 [ %.0.i.i, %bb.i ], [ %i.l, %bb.f ]
  %i.t = phi ptr [ %i.p, %bb.i ], [ %i.k, %bb.f ]
  %i.u = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %.0.i.sink.i)
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.v, ptr %i.c, align 8, !tbaa !367
  %i.w = add nsw i64 %i.e, -64
  store i64 %i.w, ptr %i.d, align 8, !tbaa !365
  %i.x = trunc nuw nsw i64 %i.u to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.e
  %.sroa.0.0.i = phi i32 [ %i.j, %bb.e ], [ 64, %bb.j ], [ %i.o, %bb.h ]
  %.sroa.5.0.i = phi i32 [ %.sroa.5.0.extract.shift.i, %bb.e ], [ %i.x, %bb.j ], [ %.sroa.5.0.extract.shift2.i, %bb.h ]
  %i.y = shl nuw i32 %.sroa.5.0.i, 16
  %i.z = and i32 %.sroa.0.0.i, 65535
  %i.aa = or disjoint i32 %i.y, %i.z
  br label %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit

_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit: ; preds = %bb.b, %bb.k
  %.sroa.0.0.insert.insert.i = phi i32 [ %i.aa, %bb.k ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i32 %.sroa.0.0.insert.insert.i to i16 ; 2 uses
  %.sroa.4.0.extract.shift = lshr i32 %.sroa.0.0.insert.insert.i, 16
  %.sroa.4.0.extract.trunc = trunc nuw i32 %.sroa.4.0.extract.shift to i16
  %i.ab = sext i16 %.sroa.0.0.extract.trunc to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !368
  %i.ae = add nsw i64 %i.ad, %i.ab
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !368
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !369
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !368 ; 2 uses
  %i.aj = sub nsw i64 %i.ag, %i.ai
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.aj, i64 32767) ; 2 uses
  %i.ak = trunc i64 %.sroa.speculated to i16      ; 2 uses
  %sext = shl i64 %.sroa.speculated, 48
  %i.al = ashr exact i64 %sext, 48
  %i.am = add nsw i64 %i.al, %i.ai
  store i64 %i.am, ptr %i.ah, align 8, !tbaa !368
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit
  %.sroa.0.0 = phi i16 [ %.sroa.0.0.extract.trunc, %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit ], [ %i.ak, %bb.l ]
  %.sroa.4.0 = phi i16 [ %.sroa.4.0.extract.trunc, %_ZN5arrow8internal15BitBlockCounter8NextWordEv.exit ], [ %i.ak, %bb.l ]
  %.sroa.4.0.insert.ext = zext i16 %.sroa.4.0 to i32
  %.sroa.4.0.insert.shift = shl nuw i32 %.sroa.4.0.insert.ext, 16
  %.sroa.0.0.insert.ext = zext i16 %.sroa.0.0 to i32
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.shift, %.sroa.0.0.insert.ext
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: nounwind
declare i32 @_ZN5arrow8internal15BitBlockCounter12GetBlockSlowEl(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #16

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow7compute8internal18ParseBooleanString4CallIbSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef %0, i64 %1, ptr %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  store i64 %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = load atomic i8, ptr @_ZGVZN5arrow8internal10ParseValueINS_11BooleanTypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN5arrow8internal10ParseValueINS_11BooleanTypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit, !prof !370

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_11BooleanTypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #20
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN5arrow8internal10ParseValueINS_11BooleanTypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_11BooleanTypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 8), i8 0, i64 32, i1 false)
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_11BooleanTypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 40), align 8, !tbaa !78
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) getelementptr inbounds nuw (i8, ptr @_ZZN5arrow8internal10ParseValueINS_11BooleanTypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, i64 48), i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds inrange(-16, 80) ({ [12 x ptr] }, ptr @_ZTVN5arrow11BooleanTypeE, i32 0, i32 0, i32 2), ptr @_ZZN5arrow8internal10ParseValueINS_11BooleanTypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, align 8, !tbaa !44
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5arrow14PrimitiveCTypeD2Ev, ptr nonnull @_ZZN5arrow8internal10ParseValueINS_11BooleanTypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type, ptr nonnull @__dso_handle) #20 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow8internal10ParseValueINS_11BooleanTypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type) #20
  br label %_ZN5arrow8internal10ParseValueINS_11BooleanTypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit

_ZN5arrow8internal10ParseValueINS_11BooleanTypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit: ; preds = %bb.a, %bb.b, %bb.c
  switch i64 %1, label %_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit.thread [
    i64 1, label %bb.d
    i64 4, label %bb.f
    i64 5, label %bb.i
  ]

bb.d:                                             ; preds = %_ZN5arrow8internal10ParseValueINS_11BooleanTypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit
  %i.f = load i8, ptr %2, align 1, !tbaa !55
  switch i8 %i.f, label %_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit.thread [
    i8 48, label %_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit.thread8
    i8 49, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit.thread8

bb.f:                                             ; preds = %_ZN5arrow8internal10ParseValueINS_11BooleanTypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit
  %i.g = load i8, ptr %2, align 1, !tbaa !55
  switch i8 %i.g, label %_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit.thread [
    i8 116, label %bb.g
    i8 84, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !55
  switch i8 %i.i, label %_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit.thread [
    i8 114, label %bb.h
    i8 82, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !55
  switch i8 %i.k, label %_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit.thread [
    i8 117, label %_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit
    i8 85, label %_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit
  ]

bb.i:                                             ; preds = %_ZN5arrow8internal10ParseValueINS_11BooleanTypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit
  %i.l = load i8, ptr %2, align 1, !tbaa !55
  switch i8 %i.l, label %_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit.thread [
    i8 102, label %bb.j
    i8 70, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !55
  switch i8 %i.n, label %_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit.thread [
    i8 97, label %bb.k
    i8 65, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !55
  switch i8 %i.p, label %_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit.thread [
    i8 108, label %bb.l
    i8 76, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.r = load i8, ptr %i.q, align 1, !tbaa !55
  switch i8 %i.r, label %_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit.thread [
    i8 115, label %bb.m
    i8 83, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.t = load i8, ptr %i.s, align 1, !tbaa !55
  %i.u = and i8 %i.t, -33
  %spec.select38.i = icmp eq i8 %i.u, 69
  br i1 %spec.select38.i, label %_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit.thread8, label %_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit.thread, !prof !371

_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit: ; preds = %bb.h, %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !55
  %i.x = and i8 %i.w, -33
  %spec.select.i = icmp eq i8 %i.x, 69
  br i1 %spec.select.i, label %_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit.thread8, label %_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit.thread, !prof !371

_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit.thread: ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.f, %bb.g, %bb.h, %_ZN5arrow8internal10ParseValueINS_11BooleanTypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit, %bb.d, %bb.m, %_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit
  %.04 = phi i1 [ false, %bb.m ], [ true, %_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.f ], [ false, %bb.d ], [ false, %_ZN5arrow8internal10ParseValueINS_11BooleanTypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZN5arrow6Status7InvalidIJRA24_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 1 dereferenceable(24) @.str.7, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.y = load ptr, ptr %3, align 8, !tbaa !101    ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.n, !prof !104

bb.n:                                             ; preds = %_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit.thread
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !105, !range !115, !noundef !116
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %_ZN5arrow6StatusD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.o, %bb.n, %_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit.thread
  %i.ac = load ptr, ptr %5, align 8, !tbaa !101
  store ptr %i.ac, ptr %3, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit.thread8

_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit.thread8: ; preds = %bb.d, %bb.e, %bb.m, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit
  %.05 = phi i1 [ %.04, %_ZN5arrow6StatusD2Ev.exit ], [ true, %_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit ], [ false, %bb.m ], [ true, %bb.e ], [ false, %bb.d ]
  ret i1 %.05
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status7InvalidIJRA24_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEES0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20, !noalias !372
  call void @_ZN5arrow8internal12JoinToStringIJRA24_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2), !noalias !372
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !339, !noalias !372 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN5arrow6Status8FromArgsIJRA24_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEES0_NS_10StatusCodeEDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !55, !noalias !372
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #22
  br label %_ZN5arrow6Status8FromArgsIJRA24_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEES0_NS_10StatusCodeEDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %3, align 8, !tbaa !339, !noalias !372 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !55, !noalias !372
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !372
  resume { ptr, i32 } %i.f

_ZN5arrow6Status8FromArgsIJRA24_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEES0_NS_10StatusCodeEDpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !372
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #17

; Function Attrs: nounwind
declare void @_ZN5arrow14PrimitiveCTypeD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #9

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA24_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !329, !nonnull !116, !align !261
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(24) %1) #20
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(24) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA24_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSI_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA24_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSI_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !329, !nonnull !116, !align !261
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !299
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !375
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA24_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clIS9_EEDaSI_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA24_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clIS9_EEDaSI_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA24_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSI_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA24_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clIS9_EEDaSI_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA24_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSI_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA24_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clIS9_EEDaSI_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.pn6 = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.h, %bb.d ], [ %i.g, %bb.c ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !101, !alias.scope !376
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.c = load i8, ptr %i.b, align 8, !tbaa !147
  switch i8 %i.c, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke [
    i8 0, label %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !149

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke: ; preds = %bb.a, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  %.str.2.sink = phi ptr [ @.str.1, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i ], [ @.str.2, %bb.a ]
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVSt18bad_variant_access, i32 0, i32 0, i32 2), ptr %i.d, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.str.2.sink, ptr %i.e, align 8, !tbaa !150
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont unwind label %bb.n

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  unreachable

_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !142  ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !135  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !163  ; 2 uses
  %i.l = sdiv i64 %i.i, 8                         ; 4 uses
  %i.m = srem i64 %i.i, 8                         ; 2 uses
  %i.n = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !55    ; 3 uses
  %i.p = icmp sgt i64 %i.k, 0                     ; 2 uses
  br i1 %i.p, label %bb.b, label %_ZN5arrow8internal21FirstTimeBitmapWriterC2EPhll.exit

bb.b:                                             ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  %i.q = getelementptr inbounds i8, ptr %i.g, i64 %i.l
  %i.r = load i8, ptr %i.q, align 1, !tbaa !55
  %i.s = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL17kPrecedingBitmaskE, i64 %i.m
  %i.t = load i8, ptr %i.s, align 1, !tbaa !55
  %i.u = and i8 %i.t, %i.r
  br label %_ZN5arrow8internal21FirstTimeBitmapWriterC2EPhll.exit

_ZN5arrow8internal21FirstTimeBitmapWriterC2EPhll.exit: ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit, %bb.b
  %storemerge.i = phi i8 [ %i.u, %bb.b ], [ 0, %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1, !tbaa !55
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !163  ; 4 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow8internal21FirstTimeBitmapWriterC2EPhll.exit
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !135  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !142
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.z ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !142 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  %storemerge.i.i.i = select i1 %i.ag, ptr %i.a, ptr %i.af ; 2 uses
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !142 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.ah, i64 noundef %i.z, i64 noundef %i.w)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %bb.c
  %i.ai = icmp sgt i64 %i.w, 0
  br i1 %i.ai, label %.lr.ph48.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES3_NS7_18ParseBooleanStringEE9ArrayExecISB_vE4ExecERKSD_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_EUllE_SU_EEvPKhllS15_S10_.exit.i.i.i

.lr.ph48.i.i.i.i:                                 ; preds = %.noexc11, %.loopexit.i.i.i.i
  %.sroa.33.1 = phi i8 [ %.sroa.33.2, %.loopexit.i.i.i.i ], [ %i.o, %.noexc11 ] ; 7 uses
  %.sroa.8.1 = phi i64 [ %.sroa.8.2, %.loopexit.i.i.i.i ], [ 0, %.noexc11 ] ; 6 uses
  %.sroa.4740.1 = phi i64 [ %.sroa.4740.2, %.loopexit.i.i.i.i ], [ %i.l, %.noexc11 ] ; 7 uses
  %.sroa.20.1 = phi i8 [ %.sroa.20.2, %.loopexit.i.i.i.i ], [ %storemerge.i, %.noexc11 ] ; 7 uses
  %.02447.i.i.i.i = phi i64 [ %.4.i.i.i.i, %.loopexit.i.i.i.i ], [ 0, %.noexc11 ] ; 7 uses
  %i.aj = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc12:                                         ; preds = %.lr.ph48.i.i.i.i
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.aj to i16 ; 8 uses
  %.sroa.7.0.extract.shift.i.i.i.i = lshr i32 %i.aj, 16 ; 2 uses
  %.sroa.7.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i.i to i16
  %i.ak = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.7.0.extract.trunc.i.i.i.i
  br i1 %i.ak, label %.preheader.i.i.i.i, label %bb.e

.preheader.i.i.i.i:                               ; preds = %.noexc12
  %i.al = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.am = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.am, label %.lr.ph45.i.i.i.i.preheader, label %.loopexit.i.i.i.i

.lr.ph45.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.an = add i64 %.sroa.8.1, %i.al
  br label %.lr.ph45.i.i.i.i

.lr.ph45.i.i.i.i:                                 ; preds = %.lr.ph45.i.i.i.i.preheader, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i
  %.sroa.33.8 = phi i8 [ %.sroa.33.9, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ %.sroa.33.1, %.lr.ph45.i.i.i.i.preheader ] ; 2 uses
  %.sroa.4740.7 = phi i64 [ %.sroa.4740.8, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ %.sroa.4740.1, %.lr.ph45.i.i.i.i.preheader ] ; 3 uses
  %.sroa.20.9 = phi i8 [ %.sroa.20.11, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ %.sroa.20.1, %.lr.ph45.i.i.i.i.preheader ]
  %.02344.i.i.i.i = phi i64 [ %i.ba, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ 0, %.lr.ph45.i.i.i.i.preheader ]
  %.143.i.i.i.i = phi i64 [ %i.bb, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ %.02447.i.i.i.i, %.lr.ph45.i.i.i.i.preheader ] ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %.143.i.i.i.i ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !299 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.ao, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !299
  %i.at = sub nsw i64 %i.as, %i.ap
  %i.au = invoke noundef zeroext i1 @_ZN5arrow7compute8internal18ParseBooleanString4CallIbSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef %2, i64 %i.at, ptr nonnull %i.aq, ptr noundef nonnull %0)
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %.lr.ph45.i.i.i.i
  %i.av = select i1 %i.au, i8 %.sroa.33.8, i8 0
  %spec.select = or i8 %i.av, %.sroa.20.9         ; 2 uses
  %i.aw = shl i8 %.sroa.33.8, 1                   ; 2 uses
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.d, label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i

bb.d:                                             ; preds = %.noexc13
  %i.ay = add nsw i64 %.sroa.4740.7, 1
  %i.az = getelementptr inbounds i8, ptr %i.g, i64 %.sroa.4740.7
  store i8 %spec.select, ptr %i.az, align 1, !tbaa !55
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i

_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i: ; preds = %bb.d, %.noexc13
  %.sroa.33.9 = phi i8 [ 1, %bb.d ], [ %i.aw, %.noexc13 ] ; 2 uses
  %.sroa.4740.8 = phi i64 [ %i.ay, %bb.d ], [ %.sroa.4740.7, %.noexc13 ] ; 2 uses
  %.sroa.20.11 = phi i8 [ 0, %bb.d ], [ %spec.select, %.noexc13 ] ; 2 uses
  %i.ba = add nuw nsw i64 %.02344.i.i.i.i, 1      ; 2 uses
  %i.bb = add nsw i64 %.143.i.i.i.i, 1            ; 2 uses
  %exitcond54.not.i.i.i.i = icmp eq i64 %i.ba, %i.al
  br i1 %exitcond54.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph45.i.i.i.i, !llvm.loop !379

bb.e:                                             ; preds = %.noexc12
  %i.bc = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.bc, label %.preheader33.i.i.i.i, label %.preheader35.i.i.i.i

.preheader35.i.i.i.i:                             ; preds = %bb.e
  %i.bd = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.bd, label %.lr.ph.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader35.i.i.i.i
  %.sroa.0.0.extract.trunc.mask.i.i.i.i = and i32 %i.aj, 32767
  %i.be = zext nneg i32 %.sroa.0.0.extract.trunc.mask.i.i.i.i to i64
  %i.bf = add i64 %.02447.i.i.i.i, %i.be          ; 2 uses
  br label %.lr.ph.i.i.i.i

.preheader33.i.i.i.i:                             ; preds = %bb.e
  %i.bg = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 3 uses
  %i.bh = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.bh, label %.lr.ph41.i.i.i.i.preheader, label %.loopexit.i.i.i.i

.lr.ph41.i.i.i.i.preheader:                       ; preds = %.preheader33.i.i.i.i
  %i.bi = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, 1
  br i1 %i.bi, label %.lr.ph41.i.i.i.i.epil.preheader, label %.lr.ph41.i.i.i.i.preheader.new

.lr.ph41.i.i.i.i.preheader.new:                   ; preds = %.lr.ph41.i.i.i.i.preheader
  %unroll_iter = and i64 %i.bg, 32766
  br label %.lr.ph41.i.i.i.i

.lr.ph41.i.i.i.i:                                 ; preds = %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1, %.lr.ph41.i.i.i.i.preheader.new
  %.sroa.33.6 = phi i8 [ %.sroa.33.1, %.lr.ph41.i.i.i.i.preheader.new ], [ %.sroa.33.7.1, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1 ]
  %.sroa.4740.5 = phi i64 [ %.sroa.4740.1, %.lr.ph41.i.i.i.i.preheader.new ], [ %.sroa.4740.6.1, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1 ] ; 3 uses
  %.sroa.20.7 = phi i8 [ %.sroa.20.1, %.lr.ph41.i.i.i.i.preheader.new ], [ %.sroa.20.8.1, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph41.i.i.i.i.preheader.new ], [ %niter.next.1, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1 ]
  %i.bj = shl i8 %.sroa.33.6, 1                   ; 2 uses
  %i.bk = icmp eq i8 %i.bj, 0
  br i1 %i.bk, label %bb.f, label %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i

bb.f:                                             ; preds = %.lr.ph41.i.i.i.i
  %i.bl = add nsw i64 %.sroa.4740.5, 1
  %i.bm = getelementptr inbounds i8, ptr %i.g, i64 %.sroa.4740.5
  store i8 %.sroa.20.7, ptr %i.bm, align 1, !tbaa !55
  br label %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i

_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i: ; preds = %bb.f, %.lr.ph41.i.i.i.i
  %.sroa.33.7 = phi i8 [ 1, %bb.f ], [ %i.bj, %.lr.ph41.i.i.i.i ]
  %.sroa.4740.6 = phi i64 [ %i.bl, %bb.f ], [ %.sroa.4740.5, %.lr.ph41.i.i.i.i ] ; 3 uses
  %.sroa.20.8 = phi i8 [ 0, %bb.f ], [ %.sroa.20.7, %.lr.ph41.i.i.i.i ] ; 2 uses
  %i.bn = shl i8 %.sroa.33.7, 1                   ; 2 uses
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %bb.g, label %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1

bb.g:                                             ; preds = %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i
  %i.bp = add nsw i64 %.sroa.4740.6, 1
  %i.bq = getelementptr inbounds i8, ptr %i.g, i64 %.sroa.4740.6
  store i8 %.sroa.20.8, ptr %i.bq, align 1, !tbaa !55
  br label %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1

_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1: ; preds = %bb.g, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i
  %.sroa.33.7.1 = phi i8 [ 1, %bb.g ], [ %i.bn, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i ] ; 3 uses
  %.sroa.4740.6.1 = phi i64 [ %i.bp, %bb.g ], [ %.sroa.4740.6, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i ] ; 3 uses
  %.sroa.20.8.1 = phi i8 [ 0, %bb.g ], [ %.sroa.20.8, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i ] ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit49.i.i.i.i.unr-lcssa, label %.lr.ph41.i.i.i.i, !llvm.loop !380

.lr.ph.i.i.i.i:                                   ; preds = %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.sroa.33.3 = phi i8 [ %.sroa.33.1, %.lr.ph.preheader.i.i.i.i ], [ %.sroa.33.4, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i ] ; 3 uses
  %.sroa.8.3 = phi i64 [ %.sroa.8.1, %.lr.ph.preheader.i.i.i.i ], [ %.sroa.8.4, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i ] ; 2 uses
  %.sroa.4740.3 = phi i64 [ %.sroa.4740.1, %.lr.ph.preheader.i.i.i.i ], [ %.sroa.4740.4, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i ] ; 4 uses
  %.sroa.20.3 = phi i8 [ %.sroa.20.1, %.lr.ph.preheader.i.i.i.i ], [ %.sroa.20.4, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i ] ; 3 uses
  %.337.i.i.i.i = phi i64 [ %.02447.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.cp, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i ] ; 3 uses
  %i.br = add nsw i64 %.337.i.i.i.i, %i.z         ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !55
  %i.bv = trunc i64 %i.br to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = lshr i8 %i.bu, %i.bw
  %i.by = trunc i8 %i.bx to i1
  br i1 %i.by, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %.337.i.i.i.i ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !299 ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.bz, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !299
  %i.ce = sub nsw i64 %i.cd, %i.ca
  %i.cf = invoke noundef zeroext i1 @_ZN5arrow7compute8internal18ParseBooleanString4CallIbSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef %2, i64 %i.ce, ptr nonnull %i.cb, ptr noundef nonnull %0)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit

.noexc14:                                         ; preds = %bb.h
  %i.cg = select i1 %i.cf, i8 %.sroa.33.3, i8 0
  %spec.select51 = or i8 %i.cg, %.sroa.20.3       ; 2 uses
  %i.ch = shl i8 %.sroa.33.3, 1                   ; 2 uses
  %i.ci = add nsw i64 %.sroa.8.3, 1               ; 2 uses
  %i.cj = icmp eq i8 %i.ch, 0
  br i1 %i.cj, label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.sink.split.i.i.i.i, label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ck = shl i8 %.sroa.33.3, 1                   ; 2 uses
  %i.cl = add nsw i64 %.sroa.8.3, 1               ; 2 uses
  %i.cm = icmp eq i8 %i.ck, 0
  br i1 %i.cm, label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.sink.split.i.i.i.i, label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i

_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.sink.split.i.i.i.i: ; preds = %bb.i, %.noexc14
  %.sroa.8.5 = phi i64 [ %i.ci, %.noexc14 ], [ %i.cl, %bb.i ]
  %.sroa.20.5 = phi i8 [ %spec.select51, %.noexc14 ], [ %.sroa.20.3, %bb.i ]
  %i.cn = add nsw i64 %.sroa.4740.3, 1
  %i.co = getelementptr inbounds i8, ptr %i.g, i64 %.sroa.4740.3
  store i8 %.sroa.20.5, ptr %i.co, align 1, !tbaa !55
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i

_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i: ; preds = %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.sink.split.i.i.i.i, %bb.i, %.noexc14
  %.sroa.33.4 = phi i8 [ 1, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.sink.split.i.i.i.i ], [ %i.ch, %.noexc14 ], [ %i.ck, %bb.i ] ; 2 uses
  %.sroa.8.4 = phi i64 [ %.sroa.8.5, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.sink.split.i.i.i.i ], [ %i.ci, %.noexc14 ], [ %i.cl, %bb.i ] ; 2 uses
  %.sroa.4740.4 = phi i64 [ %i.cn, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.sink.split.i.i.i.i ], [ %.sroa.4740.3, %.noexc14 ], [ %.sroa.4740.3, %bb.i ] ; 2 uses
  %.sroa.20.4 = phi i8 [ 0, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.sink.split.i.i.i.i ], [ %spec.select51, %.noexc14 ], [ %.sroa.20.3, %bb.i ] ; 2 uses
  %i.cp = add i64 %.337.i.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cp, %i.bf
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !381

.loopexit.loopexit49.i.i.i.i.unr-lcssa:           ; preds = %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1
  %i.cq = and i16 %.sroa.0.0.extract.trunc.i.i.i.i, 1
  %lcmp.mod.not = icmp eq i16 %i.cq, 0
  br i1 %lcmp.mod.not, label %.loopexit.loopexit49.i.i.i.i, label %.lr.ph41.i.i.i.i.epil.preheader

.lr.ph41.i.i.i.i.epil.preheader:                  ; preds = %.loopexit.loopexit49.i.i.i.i.unr-lcssa, %.lr.ph41.i.i.i.i.preheader
  %.sroa.33.6.epil.init = phi i8 [ %.sroa.33.1, %.lr.ph41.i.i.i.i.preheader ], [ %.sroa.33.7.1, %.loopexit.loopexit49.i.i.i.i.unr-lcssa ]
  %.sroa.4740.5.epil.init = phi i64 [ %.sroa.4740.1, %.lr.ph41.i.i.i.i.preheader ], [ %.sroa.4740.6.1, %.loopexit.loopexit49.i.i.i.i.unr-lcssa ] ; 3 uses
  %.sroa.20.7.epil.init = phi i8 [ %.sroa.20.1, %.lr.ph41.i.i.i.i.preheader ], [ %.sroa.20.8.1, %.loopexit.loopexit49.i.i.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod81 = trunc i32 %i.aj to i1
  call void @llvm.assume(i1 %lcmp.mod81)
  %i.cr = shl i8 %.sroa.33.6.epil.init, 1         ; 2 uses
  %i.cs = icmp eq i8 %i.cr, 0
  br i1 %i.cs, label %bb.j, label %.loopexit.loopexit49.i.i.i.i

bb.j:                                             ; preds = %.lr.ph41.i.i.i.i.epil.preheader
  %i.ct = add nsw i64 %.sroa.4740.5.epil.init, 1
  %i.cu = getelementptr inbounds i8, ptr %i.g, i64 %.sroa.4740.5.epil.init
  store i8 %.sroa.20.7.epil.init, ptr %i.cu, align 1, !tbaa !55
  br label %.loopexit.loopexit49.i.i.i.i

.loopexit.loopexit49.i.i.i.i:                     ; preds = %.lr.ph41.i.i.i.i.epil.preheader, %bb.j, %.loopexit.loopexit49.i.i.i.i.unr-lcssa
  %.sroa.33.7.lcssa = phi i8 [ %.sroa.33.7.1, %.loopexit.loopexit49.i.i.i.i.unr-lcssa ], [ 1, %bb.j ], [ %i.cr, %.lr.ph41.i.i.i.i.epil.preheader ]
  %.sroa.4740.6.lcssa = phi i64 [ %.sroa.4740.6.1, %.loopexit.loopexit49.i.i.i.i.unr-lcssa ], [ %i.ct, %bb.j ], [ %.sroa.4740.5.epil.init, %.lr.ph41.i.i.i.i.epil.preheader ]
  %.sroa.20.8.lcssa = phi i8 [ %.sroa.20.8.1, %.loopexit.loopexit49.i.i.i.i.unr-lcssa ], [ 0, %bb.j ], [ %.sroa.20.7.epil.init, %.lr.ph41.i.i.i.i.epil.preheader ]
  %i.cv = add i64 %.sroa.8.1, %i.bg
  %i.cw = add i64 %.02447.i.i.i.i, %i.bg
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i, %.loopexit.loopexit49.i.i.i.i, %.preheader33.i.i.i.i, %.preheader35.i.i.i.i, %.preheader.i.i.i.i
  %.sroa.33.2 = phi i8 [ %.sroa.33.1, %.preheader35.i.i.i.i ], [ %.sroa.33.1, %.preheader.i.i.i.i ], [ %.sroa.33.7.lcssa, %.loopexit.loopexit49.i.i.i.i ], [ %.sroa.33.1, %.preheader33.i.i.i.i ], [ %.sroa.33.9, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ %.sroa.33.4, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i ] ; 2 uses
  %.sroa.8.2 = phi i64 [ %.sroa.8.1, %.preheader35.i.i.i.i ], [ %.sroa.8.1, %.preheader.i.i.i.i ], [ %i.cv, %.loopexit.loopexit49.i.i.i.i ], [ %.sroa.8.1, %.preheader33.i.i.i.i ], [ %i.an, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ %.sroa.8.4, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i ] ; 2 uses
  %.sroa.4740.2 = phi i64 [ %.sroa.4740.1, %.preheader35.i.i.i.i ], [ %.sroa.4740.1, %.preheader.i.i.i.i ], [ %.sroa.4740.6.lcssa, %.loopexit.loopexit49.i.i.i.i ], [ %.sroa.4740.1, %.preheader33.i.i.i.i ], [ %.sroa.4740.8, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ %.sroa.4740.4, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i ] ; 2 uses
  %.sroa.20.2 = phi i8 [ %.sroa.20.1, %.preheader35.i.i.i.i ], [ %.sroa.20.1, %.preheader.i.i.i.i ], [ %.sroa.20.8.lcssa, %.loopexit.loopexit49.i.i.i.i ], [ %.sroa.20.1, %.preheader33.i.i.i.i ], [ %.sroa.20.11, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ %.sroa.20.4, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i ] ; 2 uses
  %.4.i.i.i.i = phi i64 [ %.02447.i.i.i.i, %.preheader35.i.i.i.i ], [ %.02447.i.i.i.i, %.preheader.i.i.i.i ], [ %i.cw, %.loopexit.loopexit49.i.i.i.i ], [ %.02447.i.i.i.i, %.preheader33.i.i.i.i ], [ %i.bb, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ %i.bf, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i ] ; 2 uses
  %i.cx = icmp slt i64 %.4.i.i.i.i, %i.w
  br i1 %i.cx, label %.lr.ph48.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES3_NS7_18ParseBooleanStringEE9ArrayExecISB_vE4ExecERKSD_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_EUllE_SU_EEvPKhllS15_S10_.exit.i.i.i, !llvm.loop !382

_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES3_NS7_18ParseBooleanStringEE9ArrayExecISB_vE4ExecERKSD_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_EUllE_SU_EEvPKhllS15_S10_.exit.i.i.i: ; preds = %.loopexit.i.i.i.i, %.noexc11
  %.sroa.33.0 = phi i8 [ %i.o, %.noexc11 ], [ %.sroa.33.2, %.loopexit.i.i.i.i ]
  %.sroa.8.0 = phi i64 [ 0, %.noexc11 ], [ %.sroa.8.2, %.loopexit.i.i.i.i ]
  %.sroa.4740.0 = phi i64 [ %i.l, %.noexc11 ], [ %.sroa.4740.2, %.loopexit.i.i.i.i ]
  %.sroa.20.0 = phi i8 [ %storemerge.i, %.noexc11 ], [ %.sroa.20.2, %.loopexit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.k

bb.k:                                             ; preds = %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES3_NS7_18ParseBooleanStringEE9ArrayExecISB_vE4ExecERKSD_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_EUllE_SU_EEvPKhllS15_S10_.exit.i.i.i, %_ZN5arrow8internal21FirstTimeBitmapWriterC2EPhll.exit
  %.sroa.33.10 = phi i8 [ %i.o, %_ZN5arrow8internal21FirstTimeBitmapWriterC2EPhll.exit ], [ %.sroa.33.0, %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES3_NS7_18ParseBooleanStringEE9ArrayExecISB_vE4ExecERKSD_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_EUllE_SU_EEvPKhllS15_S10_.exit.i.i.i ]
  %.sroa.8.8 = phi i64 [ 0, %_ZN5arrow8internal21FirstTimeBitmapWriterC2EPhll.exit ], [ %.sroa.8.0, %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES3_NS7_18ParseBooleanStringEE9ArrayExecISB_vE4ExecERKSD_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_EUllE_SU_EEvPKhllS15_S10_.exit.i.i.i ]
  %.sroa.4740.9 = phi i64 [ %i.l, %_ZN5arrow8internal21FirstTimeBitmapWriterC2EPhll.exit ], [ %.sroa.4740.0, %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES3_NS7_18ParseBooleanStringEE9ArrayExecISB_vE4ExecERKSD_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_EUllE_SU_EEvPKhllS15_S10_.exit.i.i.i ]
  %.sroa.20.12 = phi i8 [ %storemerge.i, %_ZN5arrow8internal21FirstTimeBitmapWriterC2EPhll.exit ], [ %.sroa.20.0, %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES3_NS7_18ParseBooleanStringEE9ArrayExecISB_vE4ExecERKSD_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_EUllE_SU_EEvPKhllS15_S10_.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br i1 %i.p, label %bb.l, label %_ZN5arrow8internal21FirstTimeBitmapWriter6FinishEv.exit

bb.l:                                             ; preds = %bb.k
  %.not.i = icmp ne i8 %.sroa.33.10, 1
  %i.cy = icmp slt i64 %.sroa.8.8, %i.k
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.cy
  br i1 %or.cond.i, label %bb.m, label %_ZN5arrow8internal21FirstTimeBitmapWriter6FinishEv.exit

bb.m:                                             ; preds = %bb.l
  %i.cz = getelementptr inbounds i8, ptr %i.g, i64 %.sroa.4740.9
  store i8 %.sroa.20.12, ptr %i.cz, align 1, !tbaa !55
  br label %_ZN5arrow8internal21FirstTimeBitmapWriter6FinishEv.exit

_ZN5arrow8internal21FirstTimeBitmapWriter6FinishEv.exit: ; preds = %bb.k, %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit:                                        ; preds = %.lr.ph45.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.h
  %lpad.loopexit52 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph48.i.i.i.i
  %lpad.loopexit56 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.n
  %.pn = phi { ptr, i32 } [ %i.da, %bb.n ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit52, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit56, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.db = load ptr, ptr %0, align 8, !tbaa !101   ; 2 uses
  %.not.i15 = icmp eq ptr %i.db, null
  br i1 %.not.i15, label %_ZN5arrow6StatusD2Ev.exit, label %bb.o, !prof !104

bb.o:                                             ; preds = %.loopexit.split-lp
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !105, !range !115, !noundef !116
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %_ZN5arrow6StatusD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.loopexit.split-lp, %bb.o, %bb.p
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator18ScalarUnaryNotNullINS_11BooleanTypeENS_14BinaryViewTypeENS1_18ParseBooleanStringEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 {
bb.a:
  %4 = alloca %"struct.arrow::compute::internal::applicator::ScalarUnaryNotNullStateful.113", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129, !noalias !383
  call void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_14BinaryViewTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_14BinaryViewTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !101, !alias.scope !386
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !147
  switch i8 %i.b, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke [
    i8 0, label %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !149

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke: ; preds = %bb.a, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  %.str.2.sink = phi ptr [ @.str.1, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i ], [ @.str.2, %bb.a ]
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds inrange(-16, 24) ({ [5 x ptr] }, ptr @_ZTVSt18bad_variant_access, i32 0, i32 0, i32 2), ptr %i.c, align 8, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.str.2.sink, ptr %i.d, align 8, !tbaa !150
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont unwind label %bb.q

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  unreachable

_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !142  ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !135  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !163  ; 2 uses
  %i.k = sdiv i64 %i.h, 8                         ; 4 uses
  %i.l = srem i64 %i.h, 8                         ; 2 uses
  %i.m = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !55    ; 3 uses
  %i.o = icmp sgt i64 %i.j, 0                     ; 2 uses
  br i1 %i.o, label %bb.b, label %_ZN5arrow8internal21FirstTimeBitmapWriterC2EPhll.exit

bb.b:                                             ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  %i.p = getelementptr inbounds i8, ptr %i.f, i64 %i.k
  %i.q = load i8, ptr %i.p, align 1, !tbaa !55
  %i.r = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL17kPrecedingBitmaskE, i64 %i.l
  %i.s = load i8, ptr %i.r, align 1, !tbaa !55
  %i.t = and i8 %i.s, %i.q
  br label %_ZN5arrow8internal21FirstTimeBitmapWriterC2EPhll.exit

_ZN5arrow8internal21FirstTimeBitmapWriterC2EPhll.exit: ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit, %bb.b
  %storemerge.i = phi i8 [ %i.t, %bb.b ], [ 0, %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !163
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_ZN5arrow7compute8internalL22VisitArrayValuesInlineINS_14BinaryViewTypeEZNS1_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES3_NS1_18ParseBooleanStringEE9ArrayExecIS6_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSA_4ExecESC_SE_SH_SJ_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESH_OSR_OT1_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow8internal21FirstTimeBitmapWriterC2EPhll.exit
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !135
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !142
  %i.ab = getelementptr inbounds [16 x i8], ptr %i.aa, i64 %i.y ; 2 uses
  %i.ac = invoke { ptr, i64 } @_ZNK5arrow9ArraySpan18GetVariadicBuffersEv(ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ae = extractvalue { ptr, i64 } %i.ac, 0      ; 2 uses
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !142 ; 2 uses
  %i.ag = load i64, ptr %i.x, align 8, !tbaa !135 ; 2 uses
  %i.ah = load i64, ptr %i.u, align 8, !tbaa !163 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.af, i64 noundef %i.ag, i64 noundef %i.ah)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %.noexc11
  %i.ai = icmp sgt i64 %i.ah, 0
  br i1 %i.ai, label %.lr.ph49.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES3_NS7_18ParseBooleanStringEE9ArrayExecISB_vE4ExecERKSD_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_EUllE_SU_EEvPKhllS15_S10_.exit.i.i.i

.lr.ph49.i.i.i.i:                                 ; preds = %.noexc12, %.loopexit.i.i.i.i
  %.sroa.33.1 = phi i8 [ %.sroa.33.2, %.loopexit.i.i.i.i ], [ %i.n, %.noexc12 ] ; 7 uses
  %.sroa.8.1 = phi i64 [ %.sroa.8.2, %.loopexit.i.i.i.i ], [ 0, %.noexc12 ] ; 6 uses
  %.sroa.4741.1 = phi i64 [ %.sroa.4741.2, %.loopexit.i.i.i.i ], [ %i.k, %.noexc12 ] ; 7 uses
  %.sroa.20.1 = phi i8 [ %.sroa.20.2, %.loopexit.i.i.i.i ], [ %storemerge.i, %.noexc12 ] ; 7 uses
  %.02448.i.i.i.i = phi i64 [ %.4.i.i.i.i, %.loopexit.i.i.i.i ], [ 0, %.noexc12 ] ; 7 uses
  %i.aj = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc13:                                         ; preds = %.lr.ph49.i.i.i.i
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.aj to i16 ; 8 uses
  %.sroa.7.0.extract.shift.i.i.i.i = lshr i32 %i.aj, 16 ; 2 uses
  %.sroa.7.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i.i to i16
  %i.ak = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.7.0.extract.trunc.i.i.i.i
  br i1 %i.ak, label %.preheader.i.i.i.i, label %bb.g

.preheader.i.i.i.i:                               ; preds = %.noexc13
  %i.al = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.am = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.am, label %.lr.ph46.i.i.i.i.preheader, label %.loopexit.i.i.i.i

.lr.ph46.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.an = add i64 %.sroa.8.1, %i.al
  br label %.lr.ph46.i.i.i.i

.lr.ph46.i.i.i.i:                                 ; preds = %.lr.ph46.i.i.i.i.preheader, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i
  %.sroa.33.8 = phi i8 [ %.sroa.33.9, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ %.sroa.33.1, %.lr.ph46.i.i.i.i.preheader ] ; 2 uses
  %.sroa.4741.7 = phi i64 [ %.sroa.4741.8, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ %.sroa.4741.1, %.lr.ph46.i.i.i.i.preheader ] ; 3 uses
  %.sroa.20.9 = phi i8 [ %.sroa.20.11, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ %.sroa.20.1, %.lr.ph46.i.i.i.i.preheader ]
  %.02345.i.i.i.i = phi i64 [ %i.bp, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ 0, %.lr.ph46.i.i.i.i.preheader ]
  %.144.i.i.i.i = phi i64 [ %i.bq, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ %.02448.i.i.i.i, %.lr.ph46.i.i.i.i.preheader ] ; 2 uses
  %i.ao = getelementptr inbounds [16 x i8], ptr %i.ab, i64 %.144.i.i.i.i ; 4 uses
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !55 ; 2 uses
  %i.aq = icmp slt i32 %i.ap, 13
  br i1 %i.aq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph46.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  br label %_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph46.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !55
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [16 x i8], ptr %i.ae, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !389 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 9
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !392, !range !115, !noundef !116
  %i.az = trunc nuw i8 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = select i1 %i.az, ptr %i.bb, ptr null, !prof !104
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !55
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds i8, ptr %i.bc, i64 %i.bf
  br label %_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit.i.i.i.i.i

_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.bh = phi ptr [ %i.ar, %bb.d ], [ %i.bg, %bb.e ]
  %i.bi = sext i32 %i.ap to i64
  %i.bj = invoke noundef zeroext i1 @_ZN5arrow7compute8internal18ParseBooleanString4CallIbSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef %2, i64 %i.bi, ptr %i.bh, ptr noundef nonnull %0)
          to label %.noexc14 unwind label %.loopexit

.noexc14:                                         ; preds = %_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit.i.i.i.i.i
  %i.bk = select i1 %i.bj, i8 %.sroa.33.8, i8 0
  %spec.select = or i8 %i.bk, %.sroa.20.9         ; 2 uses
  %i.bl = shl i8 %.sroa.33.8, 1                   ; 2 uses
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %bb.f, label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i

bb.f:                                             ; preds = %.noexc14
  %i.bn = add nsw i64 %.sroa.4741.7, 1
  %i.bo = getelementptr inbounds i8, ptr %i.f, i64 %.sroa.4741.7
  store i8 %spec.select, ptr %i.bo, align 1, !tbaa !55
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i

_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i: ; preds = %bb.f, %.noexc14
  %.sroa.33.9 = phi i8 [ 1, %bb.f ], [ %i.bl, %.noexc14 ] ; 2 uses
  %.sroa.4741.8 = phi i64 [ %i.bn, %bb.f ], [ %.sroa.4741.7, %.noexc14 ] ; 2 uses
  %.sroa.20.11 = phi i8 [ 0, %bb.f ], [ %spec.select, %.noexc14 ] ; 2 uses
  %i.bp = add nuw nsw i64 %.02345.i.i.i.i, 1      ; 2 uses
  %i.bq = add nsw i64 %.144.i.i.i.i, 1            ; 2 uses
  %exitcond55.not.i.i.i.i = icmp eq i64 %i.bp, %i.al
  br i1 %exitcond55.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph46.i.i.i.i, !llvm.loop !399

bb.g:                                             ; preds = %.noexc13
  %i.br = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.br, label %.preheader34.i.i.i.i, label %.preheader36.i.i.i.i

.preheader36.i.i.i.i:                             ; preds = %bb.g
  %i.bs = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.bs, label %.lr.ph.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader36.i.i.i.i
  %.sroa.0.0.extract.trunc.mask.i.i.i.i = and i32 %i.aj, 32767
  %i.bt = zext nneg i32 %.sroa.0.0.extract.trunc.mask.i.i.i.i to i64
  %i.bu = add i64 %.02448.i.i.i.i, %i.bt          ; 2 uses
  br label %.lr.ph.i.i.i.i

.preheader34.i.i.i.i:                             ; preds = %bb.g
  %i.bv = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 3 uses
  %i.bw = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.bw, label %.lr.ph42.i.i.i.i.preheader, label %.loopexit.i.i.i.i

.lr.ph42.i.i.i.i.preheader:                       ; preds = %.preheader34.i.i.i.i
  %i.bx = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, 1
  br i1 %i.bx, label %.lr.ph42.i.i.i.i.epil.preheader, label %.lr.ph42.i.i.i.i.preheader.new

.lr.ph42.i.i.i.i.preheader.new:                   ; preds = %.lr.ph42.i.i.i.i.preheader
  %unroll_iter = and i64 %i.bv, 32766
  br label %.lr.ph42.i.i.i.i

.lr.ph42.i.i.i.i:                                 ; preds = %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_14BinaryViewTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1, %.lr.ph42.i.i.i.i.preheader.new
  %.sroa.33.6 = phi i8 [ %.sroa.33.1, %.lr.ph42.i.i.i.i.preheader.new ], [ %.sroa.33.7.1, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_14BinaryViewTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1 ]
  %.sroa.4741.5 = phi i64 [ %.sroa.4741.1, %.lr.ph42.i.i.i.i.preheader.new ], [ %.sroa.4741.6.1, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_14BinaryViewTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1 ] ; 3 uses
  %.sroa.20.7 = phi i8 [ %.sroa.20.1, %.lr.ph42.i.i.i.i.preheader.new ], [ %.sroa.20.8.1, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_14BinaryViewTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph42.i.i.i.i.preheader.new ], [ %niter.next.1, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_14BinaryViewTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1 ]
  %i.by = shl i8 %.sroa.33.6, 1                   ; 2 uses
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %bb.h, label %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_14BinaryViewTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i

bb.h:                                             ; preds = %.lr.ph42.i.i.i.i
  %i.ca = add nsw i64 %.sroa.4741.5, 1
  %i.cb = getelementptr inbounds i8, ptr %i.f, i64 %.sroa.4741.5
  store i8 %.sroa.20.7, ptr %i.cb, align 1, !tbaa !55
  br label %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_14BinaryViewTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i

_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_14BinaryViewTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i: ; preds = %bb.h, %.lr.ph42.i.i.i.i
  %.sroa.33.7 = phi i8 [ 1, %bb.h ], [ %i.by, %.lr.ph42.i.i.i.i ]
  %.sroa.4741.6 = phi i64 [ %i.ca, %bb.h ], [ %.sroa.4741.5, %.lr.ph42.i.i.i.i ] ; 3 uses
  %.sroa.20.8 = phi i8 [ 0, %bb.h ], [ %.sroa.20.7, %.lr.ph42.i.i.i.i ] ; 2 uses
  %i.cc = shl i8 %.sroa.33.7, 1                   ; 2 uses
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %bb.i, label %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_14BinaryViewTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1

bb.i:                                             ; preds = %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_14BinaryViewTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i
  %i.ce = add nsw i64 %.sroa.4741.6, 1
  %i.cf = getelementptr inbounds i8, ptr %i.f, i64 %.sroa.4741.6
  store i8 %.sroa.20.8, ptr %i.cf, align 1, !tbaa !55
end_hunk_3
