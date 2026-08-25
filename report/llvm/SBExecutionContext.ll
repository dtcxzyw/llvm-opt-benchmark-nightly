Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SBExecutionContext?download=true
inline.NumInlined: 178
inline.NumDeleted: 96
begin_hunk_0_@_ZN12lldb_private15instrumentation12InstrumenterD1Ev
; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4lldb18SBExecutionContextC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::raw_string_ostream", align 8 ; 15 uses
  %3 = alloca %"class.lldb_private::instrumentation::Instrumenter", align 8 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = load <2 x ptr>, ptr %1, align 8, !tbaa !34
  store <2 x ptr> %i.c, ptr %0, align 8, !tbaa !34
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN12lldb_private19ExecutionContextRefEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.d, align 4, !tbaa !35
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !35
  br label %_ZNSt10shared_ptrIN12lldb_private19ExecutionContextRefEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN12lldb_private19ExecutionContextRefEEC2ERKS2_.exit

_ZNSt10shared_ptrIN12lldb_private19ExecutionContextRefEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.i, ptr %4, align 8, !tbaa !11, !alias.scope !36
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !15, !alias.scope !36
  store i8 0, ptr %i.i, align 8, !tbaa !18, !alias.scope !36
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11, !noalias !36
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.k, align 8, !tbaa !19, !noalias !36
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 0, ptr %i.l, align 8, !tbaa !24, !noalias !36
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 1, ptr %i.m, align 4, !tbaa !25, !noalias !36
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false), !noalias !36
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %2, align 8, !tbaa !26, !noalias !36
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %4, ptr %i.o, align 8, !tbaa !28, !noalias !36
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef null, i64 noundef 0, i32 noundef 0) #11
  %i.p = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull %0) #11 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !39, !noalias !36
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40, !noalias !36 ; 2 uses
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ult i64 %i.w, 2
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN12lldb_private19ExecutionContextRefEEC2ERKS2_.exit
  %i.y = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull @.str, i64 noundef 2) #11 ; 0 uses
  br label %_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb18SBExecutionContextES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN12lldb_private19ExecutionContextRefEEC2ERKS2_.exit
  store i16 8236, ptr %i.t, align 1
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !40, !noalias !36
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  store ptr %i.aa, ptr %i.s, align 8, !tbaa !40, !noalias !36
  br label %_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb18SBExecutionContextES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit

_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb18SBExecutionContextES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit: ; preds = %bb.e, %bb.f
  %i.ab = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(16) %1) #11 ; 0 uses
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11, !noalias !36
  call void @_ZN12lldb_private15instrumentation12InstrumenterC1EN4llvm9StringRefEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(17) %3, ptr nonnull @__PRETTY_FUNCTION__._ZN4lldb18SBExecutionContextC2ERKS0_, i64 78, ptr noundef nonnull align 8 dereferenceable(32) %4) #11
  %i.ac = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.i
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb18SBExecutionContextES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit
  %i.ae = load i64, ptr %i.i, align 8, !tbaa !18
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb18SBExecutionContextES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @_ZN12lldb_private15instrumentation12InstrumenterD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4lldb18SBExecutionContextC2ESt10shared_ptrIN12lldb_private19ExecutionContextRefEE(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 16)) %0, ptr nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::raw_string_ostream", align 8 ; 15 uses
  %3 = alloca %"class.lldb_private::instrumentation::Instrumenter", align 8 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 2 uses
  %i.c = load <2 x ptr>, ptr %1, align 8, !tbaa !34
  store <2 x ptr> %i.c, ptr %0, align 8, !tbaa !34
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN12lldb_private19ExecutionContextRefEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.d, align 4, !tbaa !35
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !35
  br label %_ZNSt10shared_ptrIN12lldb_private19ExecutionContextRefEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN12lldb_private19ExecutionContextRefEEC2ERKS2_.exit

_ZNSt10shared_ptrIN12lldb_private19ExecutionContextRefEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.i, ptr %4, align 8, !tbaa !11, !alias.scope !41
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.j, align 8, !tbaa !15, !alias.scope !41
  store i8 0, ptr %i.i, align 8, !tbaa !18, !alias.scope !41
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11, !noalias !41
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.k, align 8, !tbaa !19, !noalias !41
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 0, ptr %i.l, align 8, !tbaa !24, !noalias !41
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 1, ptr %i.m, align 4, !tbaa !25, !noalias !41
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false), !noalias !41
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %2, align 8, !tbaa !26, !noalias !41
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %4, ptr %i.o, align 8, !tbaa !28, !noalias !41
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef null, i64 noundef 0, i32 noundef 0) #11
  %i.p = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull %0) #11 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !39, !noalias !41
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40, !noalias !41 ; 2 uses
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = icmp ult i64 %i.w, 2
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN12lldb_private19ExecutionContextRefEEC2ERKS2_.exit
  %i.y = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull @.str, i64 noundef 2) #11 ; 0 uses
  br label %_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb18SBExecutionContextESt10shared_ptrINS_19ExecutionContextRefEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit

bb.f:                                             ; preds = %_ZNSt10shared_ptrIN12lldb_private19ExecutionContextRefEEC2ERKS2_.exit
  store i16 8236, ptr %i.t, align 1
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !40, !noalias !41
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  store ptr %i.aa, ptr %i.s, align 8, !tbaa !40, !noalias !41
  br label %_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb18SBExecutionContextESt10shared_ptrINS_19ExecutionContextRefEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit

_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb18SBExecutionContextESt10shared_ptrINS_19ExecutionContextRefEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit: ; preds = %bb.e, %bb.f
  %i.ab = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(16) %1) #11 ; 0 uses
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11, !noalias !41
  call void @_ZN12lldb_private15instrumentation12InstrumenterC1EN4llvm9StringRefEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(17) %3, ptr nonnull @__PRETTY_FUNCTION__._ZN4lldb18SBExecutionContextC2ESt10shared_ptrIN12lldb_private19ExecutionContextRefEE, i64 73, ptr noundef nonnull align 8 dereferenceable(32) %4) #11
  %i.ac = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.i
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb18SBExecutionContextESt10shared_ptrINS_19ExecutionContextRefEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit
  %i.ae = load i64, ptr %i.i, align 8, !tbaa !18
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb18SBExecutionContextESt10shared_ptrINS_19ExecutionContextRefEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @_ZN12lldb_private15instrumentation12InstrumenterD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4lldb18SBExecutionContextC2ERKNS_8SBTargetE(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::raw_string_ostream", align 8 ; 15 uses
  %3 = alloca %"class.lldb_private::instrumentation::Instrumenter", align 8 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::shared_ptr.15", align 8 ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #13 ; 3 uses
  tail call void @_ZN12lldb_private19ExecutionContextRefC1Ev(ptr noundef nonnull align 8 dereferenceable(168) %i.a) #11
  store ptr %i.a, ptr %0, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !31
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #13 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 1, ptr %i.d, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 1, ptr %i.e, align 4, !tbaa !49
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN12lldb_private19ExecutionContextRefELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.c, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.a, ptr %i.f, align 8, !tbaa !50
  store ptr %i.c, ptr %i.b, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !11, !alias.scope !52
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !15, !alias.scope !52
  store i8 0, ptr %i.g, align 8, !tbaa !18, !alias.scope !52
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11, !noalias !52
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.i, align 8, !tbaa !19, !noalias !52
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 0, ptr %i.j, align 8, !tbaa !24, !noalias !52
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 1, ptr %i.k, align 4, !tbaa !25, !noalias !52
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false), !noalias !52
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %2, align 8, !tbaa !26, !noalias !52
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %4, ptr %i.m, align 8, !tbaa !28, !noalias !52
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef null, i64 noundef 0, i32 noundef 0) #11
  %i.n = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull %0) #11 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39, !noalias !52
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !40, !noalias !52 ; 2 uses
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = icmp ult i64 %i.u, 2
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull @.str, i64 noundef 2) #11 ; 0 uses
  br label %_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb18SBExecutionContextENS2_8SBTargetEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit

bb.c:                                             ; preds = %bb.a
  store i16 8236, ptr %i.r, align 1
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !40, !noalias !52
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  store ptr %i.y, ptr %i.q, align 8, !tbaa !40, !noalias !52
  br label %_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb18SBExecutionContextENS2_8SBTargetEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit

_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb18SBExecutionContextENS2_8SBTargetEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit: ; preds = %bb.b, %bb.c
  %i.z = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(16) %1) #11 ; 0 uses
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11, !noalias !52
  call void @_ZN12lldb_private15instrumentation12InstrumenterC1EN4llvm9StringRefEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(17) %3, ptr nonnull @__PRETTY_FUNCTION__._ZN4lldb18SBExecutionContextC2ERKNS_8SBTargetE, i64 68, ptr noundef nonnull align 8 dereferenceable(32) %4) #11
  %i.aa = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.g
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb18SBExecutionContextENS2_8SBTargetEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit
  %i.ac = load i64, ptr %i.g, align 8, !tbaa !18
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb18SBExecutionContextENS2_8SBTargetEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.ae = load ptr, ptr %0, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @_ZNK4lldb8SBTarget5GetSPEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.15") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %1) #11
  call void @_ZN12lldb_private19ExecutionContextRef11SetTargetSPERKSt10shared_ptrINS_6TargetEE(ptr noundef nonnull align 8 dereferenceable(168) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %5) #11
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !31 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12lldb_private6TargetELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 4294967297
  %i.ak = trunc i64 %i.ai to i32                  ; 2 uses
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.ah, align 8, !tbaa !47
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 0, ptr %i.al, align 4, !tbaa !49
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !26
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #11, !inline_history !55
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !26
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #11, !inline_history !55
  br label %_ZNSt12__shared_ptrIN12lldb_private6TargetELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = add nsw i32 %i.ak, -1
  store i32 %i.at, ptr %i.ah, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.au = atomicrmw volatile add ptr %i.ah, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.ak, %bb.g ], [ %i.au, %bb.h ]
  %i.av = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.av, label %bb.i, label %_ZNSt12__shared_ptrIN12lldb_private6TargetELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #11
  br label %_ZNSt12__shared_ptrIN12lldb_private6TargetELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private6TargetELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @_ZN12lldb_private15instrumentation12InstrumenterD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

declare void @_ZN12lldb_private19ExecutionContextRefC1Ev(ptr noundef nonnull align 8 dereferenceable(168)) unnamed_addr #2

declare void @_ZN12lldb_private19ExecutionContextRef11SetTargetSPERKSt10shared_ptrINS_6TargetEE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZNK4lldb8SBTarget5GetSPEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.15") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4lldb18SBExecutionContextC2ERKNS_9SBProcessE(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::raw_string_ostream", align 8 ; 15 uses
  %3 = alloca %"class.lldb_private::instrumentation::Instrumenter", align 8 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::shared_ptr.18", align 8 ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #13 ; 3 uses
  tail call void @_ZN12lldb_private19ExecutionContextRefC1Ev(ptr noundef nonnull align 8 dereferenceable(168) %i.a) #11
  store ptr %i.a, ptr %0, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !31
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #13 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 1, ptr %i.d, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 1, ptr %i.e, align 4, !tbaa !49
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN12lldb_private19ExecutionContextRefELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.c, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.a, ptr %i.f, align 8, !tbaa !50
  store ptr %i.c, ptr %i.b, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !11, !alias.scope !57
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !15, !alias.scope !57
  store i8 0, ptr %i.g, align 8, !tbaa !18, !alias.scope !57
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11, !noalias !57
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.i, align 8, !tbaa !19, !noalias !57
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 0, ptr %i.j, align 8, !tbaa !24, !noalias !57
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 1, ptr %i.k, align 4, !tbaa !25, !noalias !57
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false), !noalias !57
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %2, align 8, !tbaa !26, !noalias !57
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %4, ptr %i.m, align 8, !tbaa !28, !noalias !57
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef null, i64 noundef 0, i32 noundef 0) #11
  %i.n = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull %0) #11 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39, !noalias !57
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !40, !noalias !57 ; 2 uses
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = icmp ult i64 %i.u, 2
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull @.str, i64 noundef 2) #11 ; 0 uses
  br label %_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb18SBExecutionContextENS2_9SBProcessEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit

bb.c:                                             ; preds = %bb.a
  store i16 8236, ptr %i.r, align 1
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !40, !noalias !57
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  store ptr %i.y, ptr %i.q, align 8, !tbaa !40, !noalias !57
  br label %_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb18SBExecutionContextENS2_9SBProcessEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit

_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb18SBExecutionContextENS2_9SBProcessEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit: ; preds = %bb.b, %bb.c
  %i.z = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(16) %1) #11 ; 0 uses
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11, !noalias !57
  call void @_ZN12lldb_private15instrumentation12InstrumenterC1EN4llvm9StringRefEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(17) %3, ptr nonnull @__PRETTY_FUNCTION__._ZN4lldb18SBExecutionContextC2ERKNS_9SBProcessE, i64 69, ptr noundef nonnull align 8 dereferenceable(32) %4) #11
  %i.aa = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.g
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb18SBExecutionContextENS2_9SBProcessEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit
  %i.ac = load i64, ptr %i.g, align 8, !tbaa !18
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb18SBExecutionContextENS2_9SBProcessEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.ae = load ptr, ptr %0, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @_ZNK4lldb9SBProcess5GetSPEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.18") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %1) #11
  call void @_ZN12lldb_private19ExecutionContextRef12SetProcessSPERKSt10shared_ptrINS_7ProcessEE(ptr noundef nonnull align 8 dereferenceable(168) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %5) #11
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !31 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 4294967297
  %i.ak = trunc i64 %i.ai to i32                  ; 2 uses
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.ah, align 8, !tbaa !47
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 0, ptr %i.al, align 4, !tbaa !49
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !26
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #11, !inline_history !60
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !26
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #11, !inline_history !60
  br label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = add nsw i32 %i.ak, -1
  store i32 %i.at, ptr %i.ah, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.au = atomicrmw volatile add ptr %i.ah, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.ak, %bb.g ], [ %i.au, %bb.h ]
  %i.av = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.av, label %bb.i, label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #11
  br label %_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private7ProcessELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @_ZN12lldb_private15instrumentation12InstrumenterD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void
}

declare void @_ZN12lldb_private19ExecutionContextRef12SetProcessSPERKSt10shared_ptrINS_7ProcessEE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZNK4lldb9SBProcess5GetSPEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.18") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4lldb18SBExecutionContextC2ENS_8SBThreadE(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 16)) %0, ptr nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::raw_string_ostream", align 8 ; 15 uses
  %3 = alloca %"class.lldb_private::instrumentation::Instrumenter", align 8 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #13 ; 3 uses
  tail call void @_ZN12lldb_private19ExecutionContextRefC1Ev(ptr noundef nonnull align 8 dereferenceable(168) %i.a) #11
  store ptr %i.a, ptr %0, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !31
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #13 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 1, ptr %i.d, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 1, ptr %i.e, align 4, !tbaa !49
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN12lldb_private19ExecutionContextRefELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.c, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.a, ptr %i.f, align 8, !tbaa !50
  store ptr %i.c, ptr %i.b, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !11, !alias.scope !61
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !15, !alias.scope !61
  store i8 0, ptr %i.g, align 8, !tbaa !18, !alias.scope !61
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11, !noalias !61
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.i, align 8, !tbaa !19, !noalias !61
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 0, ptr %i.j, align 8, !tbaa !24, !noalias !61
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 1, ptr %i.k, align 4, !tbaa !25, !noalias !61
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false), !noalias !61
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %2, align 8, !tbaa !26, !noalias !61
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %4, ptr %i.m, align 8, !tbaa !28, !noalias !61
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef null, i64 noundef 0, i32 noundef 0) #11
  %i.n = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull %0) #11 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39, !noalias !61
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !40, !noalias !61 ; 2 uses
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = icmp ult i64 %i.u, 2
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull @.str, i64 noundef 2) #11 ; 0 uses
  br label %_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb18SBExecutionContextENS2_8SBThreadEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit

bb.c:                                             ; preds = %bb.a
  store i16 8236, ptr %i.r, align 1
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !40, !noalias !61
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  store ptr %i.y, ptr %i.q, align 8, !tbaa !40, !noalias !61
  br label %_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb18SBExecutionContextENS2_8SBThreadEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit

_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb18SBExecutionContextENS2_8SBThreadEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit: ; preds = %bb.b, %bb.c
  %i.z = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(16) %1) #11 ; 0 uses
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11, !noalias !61
  call void @_ZN12lldb_private15instrumentation12InstrumenterC1EN4llvm9StringRefEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(17) %3, ptr nonnull @__PRETTY_FUNCTION__._ZN4lldb18SBExecutionContextC2ENS_8SBThreadE, i64 60, ptr noundef nonnull align 8 dereferenceable(32) %4) #11
  %i.aa = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.g
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb18SBExecutionContextENS2_8SBThreadEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit
  %i.ac = load i64, ptr %i.g, align 8, !tbaa !18
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb18SBExecutionContextENS2_8SBThreadEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.ae = load ptr, ptr %0, align 8, !tbaa !44
  %i.af = call noundef ptr @_ZN4lldb8SBThread3getEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #11
  call void @_ZN12lldb_private19ExecutionContextRef12SetThreadPtrEPNS_6ThreadEb(ptr noundef nonnull align 8 dereferenceable(168) %i.ae, ptr noundef %i.af, i1 noundef zeroext false) #11
  call void @_ZN12lldb_private15instrumentation12InstrumenterD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void
}

declare void @_ZN12lldb_private19ExecutionContextRef12SetThreadPtrEPNS_6ThreadEb(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare noundef ptr @_ZN4lldb8SBThread3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4lldb18SBExecutionContextC2ERKNS_7SBFrameE(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 16)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::raw_string_ostream", align 8 ; 15 uses
  %3 = alloca %"class.lldb_private::instrumentation::Instrumenter", align 8 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::shared_ptr.21", align 8 ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #13 ; 3 uses
  tail call void @_ZN12lldb_private19ExecutionContextRefC1Ev(ptr noundef nonnull align 8 dereferenceable(168) %i.a) #11
  store ptr %i.a, ptr %0, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !31
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #13 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 1, ptr %i.d, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 1, ptr %i.e, align 4, !tbaa !49
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN12lldb_private19ExecutionContextRefELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.c, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.a, ptr %i.f, align 8, !tbaa !50
  store ptr %i.c, ptr %i.b, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !11, !alias.scope !64
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !15, !alias.scope !64
  store i8 0, ptr %i.g, align 8, !tbaa !18, !alias.scope !64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11, !noalias !64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.i, align 8, !tbaa !19, !noalias !64
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 0, ptr %i.j, align 8, !tbaa !24, !noalias !64
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 1, ptr %i.k, align 4, !tbaa !25, !noalias !64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false), !noalias !64
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %2, align 8, !tbaa !26, !noalias !64
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %4, ptr %i.m, align 8, !tbaa !28, !noalias !64
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef null, i64 noundef 0, i32 noundef 0) #11
  %i.n = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull %0) #11 ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39, !noalias !64
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !40, !noalias !64 ; 2 uses
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = icmp ult i64 %i.u, 2
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull @.str, i64 noundef 2) #11 ; 0 uses
  br label %_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb18SBExecutionContextENS2_7SBFrameEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit

bb.c:                                             ; preds = %bb.a
  store i16 8236, ptr %i.r, align 1
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !40, !noalias !64
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  store ptr %i.y, ptr %i.q, align 8, !tbaa !40, !noalias !64
  br label %_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb18SBExecutionContextENS2_7SBFrameEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit

_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb18SBExecutionContextENS2_7SBFrameEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit: ; preds = %bb.b, %bb.c
  %i.z = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKv(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(16) %1) #11 ; 0 uses
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11, !noalias !64
  call void @_ZN12lldb_private15instrumentation12InstrumenterC1EN4llvm9StringRefEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(17) %3, ptr nonnull @__PRETTY_FUNCTION__._ZN4lldb18SBExecutionContextC2ERKNS_7SBFrameE, i64 67, ptr noundef nonnull align 8 dereferenceable(32) %4) #11
  %i.aa = load ptr, ptr %4, align 8, !tbaa !30    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.g
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb18SBExecutionContextENS2_7SBFrameEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit
  %i.ac = load i64, ptr %i.g, align 8, !tbaa !18
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN12lldb_private15instrumentation14stringify_argsIJPN4lldb18SBExecutionContextENS2_7SBFrameEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpRKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.ae = load ptr, ptr %0, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @_ZNK4lldb7SBFrame10GetFrameSPEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.21") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %1) #11
  call void @_ZN12lldb_private19ExecutionContextRef10SetFrameSPERKSt10shared_ptrINS_10StackFrameEE(ptr noundef nonnull align 8 dereferenceable(168) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %5) #11
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !31 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12lldb_private10StackFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 4294967297
  %i.ak = trunc i64 %i.ai to i32                  ; 2 uses
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.ah, align 8, !tbaa !47
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 0, ptr %i.al, align 4, !tbaa !49
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !26
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #11, !inline_history !67
  %i.ap = load ptr, ptr %i.ag, align 8, !tbaa !26
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #11, !inline_history !67
  br label %_ZNSt12__shared_ptrIN12lldb_private10StackFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = add nsw i32 %i.ak, -1
  store i32 %i.at, ptr %i.ah, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.au = atomicrmw volatile add ptr %i.ah, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.ak, %bb.g ], [ %i.au, %bb.h ]
  %i.av = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.av, label %bb.i, label %_ZNSt12__shared_ptrIN12lldb_private10StackFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #11
  br label %_ZNSt12__shared_ptrIN12lldb_private10StackFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private10StackFrameELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @_ZN12lldb_private15instrumentation12InstrumenterD1Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void
}

declare void @_ZN12lldb_private19ExecutionContextRef10SetFrameSPERKSt10shared_ptrINS_10StackFrameEE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZNK4lldb7SBFrame10GetFrameSPEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.21") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4lldb18SBExecutionContextD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12lldb_private19ExecutionContextRefELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !49
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #11, !inline_history !68
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #11, !inline_history !68
  br label %_ZNSt12__shared_ptrIN12lldb_private19ExecutionContextRefELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN12lldb_private19ExecutionContextRefELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #11
  br label %_ZNSt12__shared_ptrIN12lldb_private19ExecutionContextRefELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private19ExecutionContextRefELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN4lldb18SBExecutionContextaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::raw_string_ostream", align 8 ; 15 uses
  %3 = alloca %"class.lldb_private::instrumentation::Instrumenter", align 8 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !11, !alias.scope !69
end_hunk_0
