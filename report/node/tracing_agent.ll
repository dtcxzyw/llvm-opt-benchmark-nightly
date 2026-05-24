inline.NumInlined: 2306
inline.NumDeleted: 1054
begin_hunk_0_@_ZN4node9inspector8protocol12_GLOBAL__N_120InspectorTraceWriterD2Ev:bb.a
bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !33
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !33
  br label %_ZNSt12__shared_ptrIN4node9inspector16MainThreadHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN4node9inspector16MainThreadHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZNSt12__shared_ptrIN4node9inspector16MainThreadHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN4node9inspector16MainThreadHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.s, ptr %i.r, align 8
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.u = getelementptr i8, ptr %i.s, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %i.r, i64 %i.v
  store ptr %i.t, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN4node9inspector16MainThreadHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #25
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt12__shared_ptrIN4node9inspector16MainThreadHandleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.x, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ae) #22
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.af) #22
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v88platform7tracing11TraceWriterESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v88platform7tracing11TraceWriterEEclEPS3_.exit.i

_ZNKSt14default_deleteIN2v88platform7tracing11TraceWriterEEclEPS3_.exit.i: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #22, !inline_history !334
  br label %_ZNSt10unique_ptrIN2v88platform7tracing11TraceWriterESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN2v88platform7tracing11TraceWriterESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNKSt14default_deleteIN2v88platform7tracing11TraceWriterEEclEPS3_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4node9inspector8protocol12_GLOBAL__N_120InspectorTraceWriterD0Ev(ptr noundef nonnull align 8 dereferenceable(416) initializes((0, 8), (16, 32)) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN4node9inspector8protocol12_GLOBAL__N_120InspectorTraceWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(416) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 416) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4node9inspector8protocol12_GLOBAL__N_120InspectorTraceWriter16AppendTraceEventEPN2v88platform7tracing11TraceObjectE(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.d, ptr %2, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.d, ptr noundef nonnull align 1 dereferenceable(5) @.str.43, i64 5, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 5, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 21
  store i8 0, ptr %i.f, align 1
  %i.g = call noundef ptr @_ZN2v88platform7tracing11TraceWriter21CreateJSONTraceWriterERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2) #22
  %i.h = load ptr, ptr %i.a, align 8              ; 3 uses
  store ptr %i.g, ptr %i.a, align 8
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN2v88platform7tracing11TraceWriterESt14default_deleteIS3_EE5resetEPS3_.exit, label %_ZNKSt14default_deleteIN2v88platform7tracing11TraceWriterEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN2v88platform7tracing11TraceWriterEEclEPS3_.exit.i.i: ; preds = %._crit_edge.i.i
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #22, !inline_history !335
  br label %_ZNSt10unique_ptrIN2v88platform7tracing11TraceWriterESt14default_deleteIS3_EE5resetEPS3_.exit

_ZNSt10unique_ptrIN2v88platform7tracing11TraceWriterESt14default_deleteIS3_EE5resetEPS3_.exit: ; preds = %._crit_edge.i.i, %_ZNKSt14default_deleteIN2v88platform7tracing11TraceWriterEEclEPS3_.exit.i.i
  %i.l = load ptr, ptr %2, align 8                ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.d
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10unique_ptrIN2v88platform7tracing11TraceWriterESt14default_deleteIS3_EE5resetEPS3_.exit
  %i.n = load i64, ptr %i.d, align 8
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN2v88platform7tracing11TraceWriterESt14default_deleteIS3_EE5resetEPS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %i.p = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef %1) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4node9inspector8protocol12_GLOBAL__N_120InspectorTraceWriter5FlushEb(ptr noundef nonnull align 8 dereferenceable(416) %0, i1 zeroext %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 16 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::unique_ptr.32", align 8 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.l, label %_ZNSt10unique_ptrIN2v88platform7tracing11TraceWriterESt14default_deleteIS3_EE5resetEPS3_.exit

_ZNSt10unique_ptrIN2v88platform7tracing11TraceWriterESt14default_deleteIS3_EE5resetEPS3_.exit: ; preds = %bb.a
  store ptr null, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #22, !inline_history !335
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.g = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24 ; 3 uses
  store ptr %i.g, ptr %3, align 8
  store i64 47, ptr %i.f, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.g, ptr noundef nonnull align 1 dereferenceable(47) @.str.44, i64 47, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 47, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 47
  store i8 0, ptr %i.i, align 1
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1EONS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 2)
  %i.j = load ptr, ptr %3, align 8                ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.f
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10unique_ptrIN2v88platform7tracing11TraceWriterESt14default_deleteIS3_EE5resetEPS3_.exit
  %i.l = load i64, ptr %i.f, align 8
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN2v88platform7tracing11TraceWriterESt14default_deleteIS3_EE5resetEPS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !336)
  call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.n, ptr %4, align 8, !alias.scope !342
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.o, align 8, !alias.scope !342
  store i8 0, ptr %i.n, align 8, !alias.scope !342
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.q = load ptr, ptr %i.p, align 8, !noalias !342 ; 3 uses
  %.not4.i.i = icmp eq ptr %i.q, null
  br i1 %.not4.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %9 = load ptr, ptr %8, align 8, !noalias !342   ; 2 uses
  %10 = icmp ugt ptr %i.q, %9
  %.08.i.i.i = select i1 %10, ptr %i.q, ptr %9
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !noalias !342 ; 2 uses
  %i.t = ptrtoint ptr %.08.i.i.i to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.s, i64 noundef %i.v) ; 0 uses
  br label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.x)
  br label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.b, %bb.c
  %i.y = load ptr, ptr %4, align 8
  %i.z = load i64, ptr %i.o, align 8
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.y, i64 noundef %i.z) #22 ; 0 uses
  %i.ab = load ptr, ptr %4, align 8               ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.n
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ad = load i64, ptr %i.n, align 8
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.af = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.45, i64 noundef 1) #22 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 392
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !343)
  call void @llvm.experimental.noalias.scope.decl(metadata !346)
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.aj, ptr %6, align 8, !alias.scope !349
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.ak, align 8, !alias.scope !349
  store i8 0, ptr %i.aj, align 8, !alias.scope !349
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !noalias !349 ; 3 uses
  %.not4.i.i9 = icmp eq ptr %i.am, null
  br i1 %.not4.i.i9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 32
  %12 = load ptr, ptr %11, align 8, !noalias !349 ; 2 uses
  %13 = icmp ugt ptr %i.am, %12
  %.08.i.i.i7 = select i1 %13, ptr %i.am, ptr %12
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !349 ; 2 uses
  %i.ap = ptrtoint ptr %.08.i.i.i7 to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.ao, i64 noundef %i.ar) ; 0 uses
  br label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit11

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.at)
  br label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit11

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit11: ; preds = %bb.d, %bb.e
  %.val = load i32, ptr %i.ai, align 8
  %.val1 = load ptr, ptr %6, align 8              ; 2 uses
  %.val2 = load i64, ptr %i.ak, align 8           ; 8 uses
  %i.au = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #24, !noalias !350 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4node9inspector8protocol12_GLOBAL__N_118SendMessageRequestE, i64 16), ptr %i.au, align 8, !noalias !350
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 %.val, ptr %i.av, align 8, !noalias !350
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 32 ; 3 uses
  store ptr %i.ax, ptr %i.aw, align 8, !noalias !350
  %i.ay = icmp ugt i64 %.val2, 15
  br i1 %i.ay, label %bb.f, label %._crit_edge.i.i.i.i

bb.f:                                             ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit11
  %i.az = icmp slt i64 %.val2, 0
  br i1 %i.az, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #23, !noalias !350
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ba = add nuw i64 %.val2, 1                   ; 2 uses
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !5

bb.i:                                             ; preds = %bb.h
  call void @_ZSt17__throw_bad_allocv() #23, !noalias !350
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.h
  %i.bc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #24, !noalias !350 ; 2 uses
  store ptr %i.bc, ptr %i.aw, align 8, !noalias !350
  store i64 %.val2, ptr %i.ax, align 8, !noalias !350
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit11
  %i.bd = phi ptr [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.ax, %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit11 ] ; 3 uses
  switch i64 %.val2, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZSt11make_uniqueIN4node9inspector8protocol12_GLOBAL__N_118SendMessageRequestEJRiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.be = load i8, ptr %.val1, align 1, !noalias !350
  store i8 %i.be, ptr %i.bd, align 1, !noalias !350
  br label %_ZSt11make_uniqueIN4node9inspector8protocol12_GLOBAL__N_118SendMessageRequestEJRiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr readonly align 1 %.val1, i64 %.val2, i1 false), !noalias !350
  br label %_ZSt11make_uniqueIN4node9inspector8protocol12_GLOBAL__N_118SendMessageRequestEJRiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN4node9inspector8protocol12_GLOBAL__N_118SendMessageRequestEJRiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.j, %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store i64 %.val2, ptr %i.bf, align 8, !noalias !350
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.val2
  store i8 0, ptr %i.bg, align 1, !noalias !350
  store ptr %i.au, ptr %5, align 8
  %i.bh = call noundef zeroext i1 @_ZN4node9inspector16MainThreadHandle4PostESt10unique_ptrINS0_7RequestESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(80) %i.ah, ptr noundef nonnull %5) #22 ; 0 uses
  %i.bi = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i = icmp eq ptr %i.bi, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4node9inspector8protocol12_GLOBAL__N_118SendMessageRequestESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN4node9inspector7RequestEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4node9inspector7RequestEEclEPS2_.exit.i: ; preds = %_ZSt11make_uniqueIN4node9inspector8protocol12_GLOBAL__N_118SendMessageRequestEJRiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bi) #22, !inline_history !31
  br label %_ZNSt10unique_ptrIN4node9inspector8protocol12_GLOBAL__N_118SendMessageRequestESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN4node9inspector8protocol12_GLOBAL__N_118SendMessageRequestESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4node9inspector7RequestEEclEPS2_.exit.i, %_ZSt11make_uniqueIN4node9inspector8protocol12_GLOBAL__N_118SendMessageRequestEJRiNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.bm = load ptr, ptr %6, align 8               ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.aj
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt10unique_ptrIN4node9inspector8protocol12_GLOBAL__N_118SendMessageRequestESt14default_deleteIS4_EED2Ev.exit
  %i.bo = load i64, ptr %i.aj, align 8
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt10unique_ptrIN4node9inspector8protocol12_GLOBAL__N_118SendMessageRequestESt14default_deleteIS4_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.bq, ptr %7, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.br, align 8
  store i8 0, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %7)
  %i.bt = load ptr, ptr %7, align 8               ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.bq
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.bv = load i64, ptr %i.bq, align 8
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.bx = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bx, ptr %2, align 8
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bz = getelementptr i8, ptr %i.bx, i64 -24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds i8, ptr %2, i64 %i.ca
  store ptr %i.by, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %i.ch = load i64, ptr %i.cf, align 8
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #25
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.cc, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cj) #22
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ck) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node7tracing16AsyncTraceWriter18InitializeOnThreadEP9uv_loop_s(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

declare noundef ptr @_ZN2v88platform7tracing11TraceWriter21CreateJSONTraceWriterERSoRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1EONS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #1 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #23
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8                ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
end_hunk_0
