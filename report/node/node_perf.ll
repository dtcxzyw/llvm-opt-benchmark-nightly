Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/node_perf?download=true
inline.NumInlined: 2095
inline.NumDeleted: 983
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN4node11performance25SetupPerformanceObserversERKN2v820FunctionCallbackInfoINS1_5ValueEEE:_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i
_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call ptr @_ZN2v87Isolate17GetCurrentContextEv(ptr noundef nonnull align 1 dereferenceable(1) %i.c) #25 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.e = tail call noundef i32 @_ZN2v87Context29GetNumberOfEmbedderDataFieldsEv(ptr noundef nonnull align 1 dereferenceable(1) %i.d) #25 ; 0 uses
  %i.f = load i64, ptr %i.d, align 8
  %i.g = add i64 %i.f, 47
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load i64, ptr %i.h, align 8
  %i.j = add i64 %i.i, 319
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %i.k, align 8
  %i.m = inttoptr i64 %i.l to ptr                 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 688
  %i.o = load i32, ptr %i.n, align 8
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.b, label %bb.a, !prof !28

bb.a:                                             ; preds = %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11performance25SetupPerformanceObserversERKN2v820FunctionCallbackInfoINS1_5ValueEEEE20error_and_abort_args) #25
  tail call void @abort() #26
  unreachable

bb.b:                                             ; preds = %_ZN4node18ContextEmbedderTag13IsNodeContextEN2v85LocalINS1_7ContextEEE.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = trunc i64 %i.r to i32
  %.not.i5 = icmp sgt i32 %i.s, 0
  br i1 %.not.i5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = add i64 %i.w, 648
  %i.y = inttoptr i64 %i.x to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit6

bb.d:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit6

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit6: ; preds = %bb.c, %bb.d
  %.sroa.09.0 = phi ptr [ %i.aa, %bb.d ], [ %i.y, %bb.c ]
  %i.ab = tail call noundef zeroext i1 @_ZNK2v85Value10IsFunctionEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.09.0) #25
  br i1 %i.ab, label %bb.f, label %bb.e, !prof !28

bb.e:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit6
  tail call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11performance25SetupPerformanceObserversERKN2v820FunctionCallbackInfoINS1_5ValueEEEE20error_and_abort_args_0) #25
  tail call void @abort() #26
  unreachable

bb.f:                                             ; preds = %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit6
  %i.ac = load i64, ptr %i.q, align 8
  %i.ad = trunc i64 %i.ac to i32
  %.not.i = icmp sgt i32 %i.ad, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = add i64 %i.ah, 648
  %i.aj = inttoptr i64 %i.ai to ptr
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit

bb.h:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  br label %_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit

_ZNK2v820FunctionCallbackInfoINS_5ValueEEixEi.exit: ; preds = %bb.g, %bb.h
  %.sroa.08.0 = phi ptr [ %i.al, %bb.h ], [ %i.aj, %bb.g ]
  %i.am = load ptr, ptr %i.m, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 712
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(864) %i.m, ptr %.sroa.08.0) #25
  ret void
}

declare void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #8

declare noundef zeroext i1 @_ZNK2v85Value10IsFunctionEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node11performance26MarkGarbageCollectionStartEPN2v87IsolateENS1_6GCTypeENS1_15GCCallbackFlagsEPv(ptr nofree readnone captures(none) %0, i32 noundef %1, i32 %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 2296 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.d = load i16, ptr %i.c, align 8
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @uv_hrtime() #25
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  store i64 %i.e, ptr %i.g, align 8
  %i.h = trunc i32 %1 to i16
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  store i16 %i.h, ptr %i.j, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4node11performance24GCPerformanceEntryTraits10GetDetailsEPNS_11EnvironmentERKNS0_16PerformanceEntryIS1_EE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @_ZN2v86Object3NewEPNS_7IsolateE(ptr noundef %i.b) #25 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3008 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1712
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load i32, ptr %i.l, align 8
  %i.n = tail call ptr @_ZN2v87Integer15NewFromUnsignedEPNS_7IsolateEj(ptr noundef %i.k, i32 noundef %i.m) #25
  %i.o = tail call i16 @_ZN2v86Object3SetENS_5LocalINS_7ContextEEENS1_INS_5ValueEEES5_(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr %.sroa.0.0.copyload.i.i.i, ptr %i.j, ptr %i.n) #25
  %i.p = trunc i16 %i.o to i1
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.d, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 192
  %.sroa.0.0.copyload.i.i.i15 = load ptr, ptr %i.r, align 8
  %i.s = load ptr, ptr %i.g, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1264
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.x = load i32, ptr %i.w, align 4
  %i.y = tail call ptr @_ZN2v87Integer15NewFromUnsignedEPNS_7IsolateEj(ptr noundef %i.v, i32 noundef %i.x) #25
  %i.z = tail call i16 @_ZN2v86Object3SetENS_5LocalINS_7ContextEEENS1_INS_5ValueEEES5_(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr %.sroa.0.0.copyload.i.i.i15, ptr %i.u, ptr %i.y) #25
  %i.aa = trunc i16 %i.z to i1
  %spec.select = select i1 %i.aa, ptr %i.c, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.024.0 = phi ptr [ %spec.select, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.024.0
}

declare ptr @_ZN2v86Object3NewEPNS_7IsolateE(ptr noundef) local_unnamed_addr #5

declare i16 @_ZN2v86Object3SetENS_5LocalINS_7ContextEEENS1_INS_5ValueEEES5_(ptr noundef nonnull align 1 dereferenceable(1), ptr, ptr, ptr) local_unnamed_addr #5

declare ptr @_ZN2v87Integer15NewFromUnsignedEPNS_7IsolateEj(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node11performance24MarkGarbageCollectionEndEPN2v87IsolateENS1_6GCTypeENS1_15GCCallbackFlagsEPv(ptr nofree readnone captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %4 = alloca %"class.std::unique_ptr.390", align 8 ; 6 uses
  %5 = alloca %"struct.node::performance::GCPerformanceEntryTraits::Details", align 4 ; 5 uses
  %6 = alloca %class.anon, align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 2296
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 176 ; 2 uses
  %i.f = load i16, ptr %i.e, align 8
  %i.g = zext i16 %i.f to i32
  %.not = icmp eq i32 %1, %i.g
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  store i16 0, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load i32, ptr %i.i, align 4
  %.not11 = icmp eq i32 %i.j, 0
  br i1 %.not11, label %bb.d, label %bb.c, !prof !28

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 168 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 2272
  %i.n = load i64, ptr %i.m, align 8
  %i.o = sub i64 %i.l, %i.n
  %7 = uitofp i64 %i.o to double
  %8 = fdiv double %7, 1.000000e+06
  store double %8, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.p = tail call i64 @uv_hrtime() #25
  %9 = load i64, ptr %i.k, align 8
  %i.q = insertelement <2 x i64> poison, i64 %i.p, i64 0
  %i.r = insertelement <2 x i64> %i.q, i64 %9, i64 1
  %i.s = uitofp <2 x i64> %i.r to <2 x double>
  %i.t = fdiv <2 x double> %i.s, splat (double 1.000000e+06) ; 2 uses
  %shift = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.t, %shift
  %i.u = extractelement <2 x double> %foldExtExtBinop, i64 0
  store double %i.u, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store i32 %1, ptr %5, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %2, ptr %i.v, align 4
  call void @_ZSt11make_uniqueIN4node11performance16PerformanceEntryINS1_24GCPerformanceEntryTraitsEEEJRA3_KcRdS8_NS3_7DetailsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.390") align 8 %4, ptr noundef nonnull align 1 dereferenceable(3) @.str.24, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.w = load i64, ptr %4, align 8
  store i64 %i.w, ptr %6, align 8
  store ptr null, ptr %4, align 8
  call fastcc void @"_ZN4node11Environment12SetImmediateIZNS_11performance24MarkGarbageCollectionEndEPN2v87IsolateENS3_6GCTypeENS3_15GCCallbackFlagsEPvE3$_0EEvOT_NS_13CallbackFlags5FlagsE"(ptr noundef nonnull align 8 dereferenceable(3304) %3, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %.val = load ptr, ptr %6, align 8
  call fastcc void @"_ZZN4node11performance24MarkGarbageCollectionEndEPN2v87IsolateENS1_6GCTypeENS1_15GCCallbackFlagsEPvEN3$_0D2Ev"(ptr %.val) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZNSt10unique_ptrIN4node11performance16PerformanceEntryINS1_24GCPerformanceEntryTraitsEEESt14default_deleteIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt11make_uniqueIN4node11performance16PerformanceEntryINS1_24GCPerformanceEntryTraitsEEEJRA3_KcRdS8_NS3_7DetailsEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.390") align 8 %0, ptr noundef nonnull align 1 dereferenceable(3) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4) local_unnamed_addr #2 comdat {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.b, ptr %5, align 8
  %i.c = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #26
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !24

bb.e:                                             ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.h = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27 ; 2 uses
  store ptr %i.h, ptr %5, align 8
  store i64 %i.c, ptr %i.b, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.b, %bb.a ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %1, align 1
  store i8 %i.j, ptr %i.i, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.f, %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.c, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1
  %i.m = load double, ptr %2, align 8
  %i.n = load double, ptr %3, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store ptr %i.o, ptr %i.a, align 8
  %i.p = load ptr, ptr %5, align 8                ; 2 uses
  %i.q = load i64, ptr %i.k, align 8              ; 8 uses
  %i.r = icmp ugt i64 %i.q, 15
  br i1 %i.r, label %bb.h, label %._crit_edge.i.i.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.s = icmp slt i64 %i.q, 0
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #26
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.t = add nuw i64 %i.q, 1                      ; 2 uses
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !24

bb.k:                                             ; preds = %bb.j
  call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.j
  %i.v = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #27 ; 2 uses
  store ptr %i.v, ptr %i.a, align 8
  store i64 %i.q, ptr %i.o, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.w = phi ptr [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit ] ; 3 uses
  switch i64 %i.q, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %_ZN4node11performance16PerformanceEntryINS0_24GCPerformanceEntryTraitsEEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEddRKNS2_7DetailsE.exit
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.x = load i8, ptr %i.p, align 1
  store i8 %i.x, ptr %i.w, align 1
  br label %_ZN4node11performance16PerformanceEntryINS0_24GCPerformanceEntryTraitsEEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEddRKNS2_7DetailsE.exit

bb.m:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.p, i64 %i.q, i1 false)
  br label %_ZN4node11performance16PerformanceEntryINS0_24GCPerformanceEntryTraitsEEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEddRKNS2_7DetailsE.exit

_ZN4node11performance16PerformanceEntryINS0_24GCPerformanceEntryTraitsEEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEddRKNS2_7DetailsE.exit: ; preds = %._crit_edge.i.i.i, %bb.l, %bb.m
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.q, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.q
  store i8 0, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store double %i.m, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store double %i.n, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ad = load i64, ptr %4, align 4
  store i64 %i.ad, ptr %i.ac, align 8
  store ptr %i.a, ptr %0, align 8
  %i.ae = load ptr, ptr %5, align 8               ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.b
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4node11performance16PerformanceEntryINS0_24GCPerformanceEntryTraitsEEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEddRKNS2_7DetailsE.exit
  %i.ag = load i64, ptr %i.b, align 8
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4node11performance16PerformanceEntryINS0_24GCPerformanceEntryTraitsEEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEddRKNS2_7DetailsE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZN4node11Environment12SetImmediateIZNS_11performance24MarkGarbageCollectionEndEPN2v87IsolateENS3_6GCTypeENS3_15GCCallbackFlagsEPvE3$_0EEvOT_NS_13CallbackFlags5FlagsE"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(3304) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27, !noalias !60 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.c, align 8, !noalias !60
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr null, ptr %i.d, align 8, !noalias !60
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN4node13CallbackQueueIvJPNS_11EnvironmentEEE12CallbackImplIZNS_11performance24MarkGarbageCollectionEndEPN2v87IsolateENS6_6GCTypeENS6_15GCCallbackFlagsEPvE3$_0EE", i64 16), ptr %i.b, align 8, !noalias !60
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load i64, ptr %1, align 8, !noalias !60
  store i64 %i.f, ptr %i.e, align 8, !noalias !60
  store ptr null, ptr %1, align 8, !noalias !60
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2728 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = atomicrmw add ptr %i.a, i64 1 seq_cst, align 8 ; 0 uses
  store ptr %i.b, ptr %i.g, align 8
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  store ptr %i.b, ptr %i.j, align 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackESt14default_deleteIS5_EED2Ev.exit6, label %_ZNSt10unique_ptrIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackESt14default_deleteIS5_EED2Ev.exit.sink.split.i

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2720 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  store ptr %i.b, ptr %i.l, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackESt14default_deleteIS5_EED2Ev.exit6, label %_ZNSt10unique_ptrIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackESt14default_deleteIS5_EED2Ev.exit.sink.split.i

_ZNSt10unique_ptrIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackESt14default_deleteIS5_EED2Ev.exit.sink.split.i: ; preds = %bb.c, %bb.b
  %.sink9.i = phi ptr [ %i.k, %bb.b ], [ %i.m, %bb.c ] ; 2 uses
  %i.n = load ptr, ptr %.sink9.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.sink9.i) #25, !inline_history !59
  br label %_ZNSt10unique_ptrIN4node13CallbackQueueIvJPNS0_11EnvironmentEEE8CallbackESt14default_deleteIS5_EED2Ev.exit6

end_hunk_0
