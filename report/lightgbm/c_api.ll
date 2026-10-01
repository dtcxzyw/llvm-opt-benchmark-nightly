Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/c_api?download=true
inline.NumInlined: 9409
inline.NumDeleted: 3547
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 21
begin_hunk_0_@LGBM_DatasetSaveBinary:bb.a
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.y = load i64, ptr %i.w, align 8, !tbaa !67
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @__cxa_end_catch()
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e, %bb.c
  %.0 = phi i32 [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ -1, %bb.c ], [ -1, %bb.e ], [ 0, %bb.a ]
  ret i32 %.0

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.aa

bb.k:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #40
  unreachable
}

declare void @_ZN8LightGBM7Dataset14SaveBinaryFileEPKc(ptr noundef nonnull align 8 dereferenceable(864), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define range(i32 -1, 1) i32 @LGBM_DatasetSerializeReferenceToBinary(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.277", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::allocator", align 1    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr null, ptr %3, align 8, !tbaa !1145
  %i.a = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #43
          to label %_ZNSt10unique_ptrIN8LightGBM10ByteBufferESt14default_deleteIS1_EE5resetEPS1_.exit unwind label %bb.b ; 6 uses

_ZNSt10unique_ptrIN8LightGBM10ByteBufferESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN8LightGBM10ByteBufferE, i64 16), ptr %i.a, align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr %i.a, ptr %3, align 8, !tbaa !425
  invoke void @_ZN8LightGBM7Dataset18SerializeReferenceEPNS_10ByteBufferE(ptr noundef nonnull align 8 dereferenceable(864) %0, ptr noundef nonnull %i.a)
          to label %_ZNSt10unique_ptrIN8LightGBM10ByteBufferESt14default_deleteIS1_EED2Ev.exit unwind label %bb.b

_ZNSt10unique_ptrIN8LightGBM10ByteBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN8LightGBM10ByteBufferESt14default_deleteIS1_EE5resetEPS1_.exit
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !209
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !210
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = trunc i64 %i.h to i32
  store i32 %i.i, ptr %2, align 4, !tbaa !104
  store ptr %i.a, ptr %1, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.i

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN8LightGBM10ByteBufferESt14default_deleteIS1_EE5resetEPS1_.exit, %bb.a
  %i.j = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
          catch ptr null                          ; 2 uses
  %i.k = extractvalue { ptr, i32 } %i.j, 0        ; 2 uses
  %i.l = extractvalue { ptr, i32 } %i.j, 1        ; 2 uses
  call void @_ZNSt10unique_ptrIN8LightGBM10ByteBufferESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.m = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #24
  %i.n = icmp eq i32 %i.l, %i.m
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = call ptr @__cxa_begin_catch(ptr %i.k) #24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o) #24, !inline_history !0
  %i.t = call noundef nonnull align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @_ZZL12LastErrorMsgvE7err_msg)
  %i.u = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.t, i64 noundef 512, ptr noundef nonnull @.str.1, ptr noundef %i.s) #24 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.v = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE) #24
  %i.w = icmp eq i32 %i.l, %i.v
  %i.x = call ptr @__cxa_begin_catch(ptr %i.k) #24
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !64
  %i.z = call noundef nonnull align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @_ZZL12LastErrorMsgvE7err_msg)
  %i.aa = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.z, i64 noundef 512, ptr noundef nonnull @.str.1, ptr noundef %i.y) #24 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %4, align 8, !tbaa !64
  %i.ac = call noundef nonnull align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @_ZZL12LastErrorMsgvE7err_msg)
  %i.ad = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.ac, i64 noundef 512, ptr noundef nonnull @.str.1, ptr noundef %i.ab) #24 ; 0 uses
  %i.ae = load ptr, ptr %4, align 8, !tbaa !64    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !67
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @__cxa_end_catch()
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN8LightGBM10ByteBufferESt14default_deleteIS1_EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e, %bb.c
  %.0 = phi i32 [ 0, %_ZNSt10unique_ptrIN8LightGBM10ByteBufferESt14default_deleteIS1_EED2Ev.exit ], [ -1, %bb.c ], [ -1, %bb.e ], [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  ret i32 %.0

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.aj

bb.k:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %i.ak, 0
  call void @__clang_call_terminate(ptr %i.al) #40
  unreachable
}

declare void @_ZN8LightGBM7Dataset18SerializeReferenceEPNS_10ByteBufferE(ptr noundef nonnull align 8 dereferenceable(864), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN8LightGBM10ByteBufferESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !425    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !210  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN8LightGBM10ByteBufferEEclEPS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !211
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #39
  br label %_ZNKSt14default_deleteIN8LightGBM10ByteBufferEEclEPS1_.exit

_ZNKSt14default_deleteIN8LightGBM10ByteBufferEEclEPS1_.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #39
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteIN8LightGBM10ByteBufferEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN8LightGBM10ByteBuffer5WriteEPKvm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.pre.a = load ptr, ptr %i.b, align 8, !tbaa !209
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIcSaIcEE9push_backERKc.exit, %bb.a
  ret i64 %2

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIcSaIcEE9push_backERKc.exit
  %i.d = phi ptr [ %.pre.a, %.lr.ph ], [ %i.z, %_ZNSt6vectorIcSaIcEE9push_backERKc.exit ] ; 3 uses
  %.08 = phi i64 [ 0, %.lr.ph ], [ %i.aa, %_ZNSt6vectorIcSaIcEE9push_backERKc.exit ] ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 %.08 ; 2 uses
  %4 = load ptr, ptr %i.c, align 8, !tbaa !211
  %.not.i = icmp eq ptr %i.d, %4
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %3, align 1, !tbaa !67
  store i8 %i.e, ptr %i.d, align 1, !tbaa !67
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !209
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !209
  br label %_ZNSt6vectorIcSaIcEE9push_backERKc.exit

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !210  ; 4 uses
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 7 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775807
  br i1 %i.l, label %bb.e, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #41
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  %i.m = add i64 %.sroa.speculated.i.i.i, %i.k    ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.k
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 9223372036854775807)
  %i.p = select i1 %i.n, i64 9223372036854775807, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #43 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.k ; 2 uses
  %i.s = load i8, ptr %3, align 1, !tbaa !67
  store i8 %i.s, ptr %i.r, align 1, !tbaa !67
  %i.t = icmp sgt i64 %i.k, 0
  br i1 %i.t, label %bb.f, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !211
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.x) #39
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i
  store ptr %i.q, ptr %i.a, align 8, !tbaa !210
  store ptr %i.u, ptr %i.b, align 8, !tbaa !209
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store ptr %i.y, ptr %i.c, align 8, !tbaa !211
  br label %_ZNSt6vectorIcSaIcEE9push_backERKc.exit

_ZNSt6vectorIcSaIcEE9push_backERKc.exit:          ; preds = %bb.c, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i
  %i.z = phi ptr [ %i.g, %bb.c ], [ %i.u, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i ]
  %i.aa = add nuw i64 %.08, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1146
}

; Function Attrs: mustprogress uwtable
define range(i32 -1, 1) i32 @LGBM_DatasetDumpText(ptr noundef nonnull %0, ptr noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  invoke void @_ZN8LightGBM7Dataset12DumpTextFileEPKc(ptr noundef nonnull align 8 dereferenceable(864) %0, ptr noundef %1)
          to label %bb.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
          catch ptr null                          ; 2 uses
  %i.b = extractvalue { ptr, i32 } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, i32 } %i.a, 1        ; 2 uses
  %i.d = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #24
  %i.e = icmp eq i32 %i.c, %i.d
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__cxa_begin_catch(ptr %i.b) #24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !66
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #24, !inline_history !0
  %i.k = tail call noundef nonnull align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @_ZZL12LastErrorMsgvE7err_msg)
  %i.l = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.k, i64 noundef 512, ptr noundef nonnull @.str.1, ptr noundef %i.j) #24 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.m = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE) #24
  %i.n = icmp eq i32 %i.c, %i.m
  %i.o = tail call ptr @__cxa_begin_catch(ptr %i.b) #24
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !64
  %i.q = tail call noundef nonnull align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @_ZZL12LastErrorMsgvE7err_msg)
  %i.r = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.q, i64 noundef 512, ptr noundef nonnull @.str.1, ptr noundef %i.p) #24 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %2, align 8, !tbaa !64
  %i.t = call noundef nonnull align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @_ZZL12LastErrorMsgvE7err_msg)
  %i.u = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.t, i64 noundef 512, ptr noundef nonnull @.str.1, ptr noundef %i.s) #24 ; 0 uses
  %i.v = load ptr, ptr %2, align 8, !tbaa !64     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.y = load i64, ptr %i.w, align 8, !tbaa !67
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @__cxa_end_catch()
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

bb.i:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e, %bb.c
  %.0 = phi i32 [ -1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ -1, %bb.c ], [ -1, %bb.e ], [ 0, %bb.a ]
  ret i32 %.0

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.aa

bb.k:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #40
  unreachable
}

declare void @_ZN8LightGBM7Dataset12DumpTextFileEPKc(ptr noundef nonnull align 8 dereferenceable(864), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define range(i32 -1, 1) i32 @LGBM_DatasetSetField(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::allocator", align 1    ; 4 uses
  switch i32 %4, label %.critedge [
    i32 0, label %bb.b
    i32 2, label %bb.i
    i32 1, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = invoke noundef zeroext i1 @_ZN8LightGBM7Dataset13SetFloatFieldEPKcPKfi(ptr noundef nonnull align 8 dereferenceable(864) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
          to label %bb.k unwind label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.j, %bb.i, %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
          catch ptr null                          ; 2 uses
  %i.c = extractvalue { ptr, i32 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i32 } %i.b, 1        ; 2 uses
  %i.e = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #24
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.c) #24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #24, !inline_history !0
  %i.l = tail call noundef nonnull align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @_ZZL12LastErrorMsgvE7err_msg)
  %i.m = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.l, i64 noundef 512, ptr noundef nonnull @.str.1, ptr noundef %i.k) #24 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.n = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE) #24
  %i.o = icmp eq i32 %i.d, %i.n
  %i.p = tail call ptr @__cxa_begin_catch(ptr %i.c) #24
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !64
  %i.r = tail call noundef nonnull align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @_ZZL12LastErrorMsgvE7err_msg)
  %i.s = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.r, i64 noundef 512, ptr noundef nonnull @.str.1, ptr noundef %i.q) #24 ; 0 uses
  tail call void @__cxa_end_catch()
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %5, align 8, !tbaa !64
  %i.u = call noundef nonnull align 16 ptr @llvm.threadlocal.address.p0(ptr align 16 @_ZZL12LastErrorMsgvE7err_msg)
  %i.v = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.u, i64 noundef 512, ptr noundef nonnull @.str.1, ptr noundef %i.t) #24 ; 0 uses
  %i.w = load ptr, ptr %5, align 8, !tbaa !64     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.z = load i64, ptr %i.x, align 8, !tbaa !67
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @__cxa_end_catch()
  br label %bb.m

bb.i:                                             ; preds = %bb.a
  %i.ab = invoke noundef zeroext i1 @_ZN8LightGBM7Dataset11SetIntFieldEPKcPKii(ptr noundef nonnull align 8 dereferenceable(864) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
          to label %bb.k unwind label %bb.c

bb.j:                                             ; preds = %bb.a
  %i.ac = invoke noundef zeroext i1 @_ZN8LightGBM7Dataset14SetDoubleFieldEPKcPKdi(ptr noundef nonnull align 8 dereferenceable(864) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
          to label %bb.k unwind label %bb.c

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.b
  %.028.shrunk = phi i1 [ %i.ac, %bb.j ], [ %i.a, %bb.b ], [ %i.ab, %bb.i ]
  br i1 %.028.shrunk, label %bb.m, label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.k
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.97)
          to label %bb.m unwind label %bb.c

bb.l:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  invoke void @__cxa_end_catch()
end_hunk_0
