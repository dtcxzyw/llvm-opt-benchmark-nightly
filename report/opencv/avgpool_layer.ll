Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/avgpool_layer?download=true
inline.NumInlined: 642
inline.NumDeleted: 336
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNSt6vectorIN2cv3MatESaIS1_EE17_M_default_appendEm:bb.a
  %.012.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i37 ], [ %i.v, %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit35 ] ; 3 uses
  tail call void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(208) %.0911.i.i.i) #18
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.0911.i.i.i) #18
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 208 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 208
  %.not.i.i.i38 = icmp eq ptr %i.z, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i37, !llvm.loop !276

_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit41, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !277
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #21
  br label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit41

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit41: ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.v, ptr %0, align 8, !tbaa !72
  %i.ae = getelementptr inbounds nuw [208 x i8], ptr %i.w, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !71
  %i.af = getelementptr inbounds nuw [208 x i8], ptr %i.v, i64 %i.t
  store ptr %i.af, ptr %i.h, align 8, !tbaa !277
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv3MatEmS1_ET_S3_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EE13_M_deallocateEPS1_m.exit41, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #14

declare void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #20
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #18
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #14

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv29ParallelLoopBodyLambdaWrapperD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit unwind label %bb.c, !inline_history !112 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #20, !inline_history !112
  unreachable

_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev.exit:   ; preds = %bb.a, %bb.b
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #18, !inline_history !112
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv29ParallelLoopBodyLambdaWrapperclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.b, label %_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt25__throw_bad_function_callv() #19
  unreachable

_ZNKSt8functionIFvRKN2cv5RangeEEEclES3_.exit:     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !110
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 4 dereferenceable(8) %1), !inline_history !278
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL10avgPool32fEPKvPvRKNS5_14dnn5_v202606059ConvStateEbE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !99    ; 6 uses
  %.val2 = load i32, ptr %1, align 4              ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val3 = load i32, ptr %i.a, align 4            ; 9 uses
  %i.b = load ptr, ptr %.val, align 8, !tbaa !310, !nonnull !61, !align !311 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !312  ; 8 uses
  %i.e = icmp slt i32 %i.d, 4
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @"__func__._ZZN2cv3dnnL10avgPool32fEPKvPvRKNS0_14dnn5_v202606059ConvStateEbENK3$_0clERKNS_5RangeE", ptr noundef nonnull @.str.15, i32 noundef 28) #19
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %14, align 8, !tbaa !51    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !46
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

common.resume.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i217.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i211.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i205.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i199.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i193.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i193.i.i.i ], [ %i.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i199.i.i.i ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i205.i.i.i ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i211.i.i.i ], [ %i.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i217.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.e
  %.pn.i.i.i = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.g, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %common.resume.i.i.i

bb.g:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !313, !nonnull !61
  %i.o = load i8, ptr %i.n, align 1, !tbaa !100, !range !60, !noundef !61
  %i.p = trunc nuw i8 %i.o to i1                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.r = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK2cv8MatShape4backEv(ptr noundef nonnull align 4 dereferenceable(52) %i.q)
  %i.s = load i32, ptr %i.r, align 4, !tbaa !84
  %.fr35.i = freeze i32 %i.s                      ; 16 uses
  %i.t = icmp eq i32 %i.d, 3                      ; 2 uses
  br i1 %i.t, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %.val, align 8, !tbaa !310, !nonnull !61, !align !311 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.w = load i32, ptr %i.v, align 8, !tbaa !101  ; 2 uses
  %i.x = icmp sgt i32 %i.w, 2
  br i1 %i.x, label %.thread.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %13)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.18, i32 noundef 103) #19
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %12, align 8, !tbaa !51    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.k
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !46
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %common.resume.i.i.i

.thread.i.i.i:                                    ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 92
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !84
  br label %._crit_edge.i.i.i

bb.l:                                             ; preds = %bb.g
  %i.ag = icmp sgt i32 %i.d, 1
  %.pre121.i.i.i = load ptr, ptr %.val, align 8, !tbaa !310 ; 5 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.pre121.i.i.i, i64 72
  %.pre120.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !101
  %i.ah = tail call i32 @llvm.smax.i32(i32 %.pre120.i.i.i, i32 1) ; 2 uses
  br i1 %i.ag, label %._crit_edge.i.i.i, label %.thread160.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.l, %.thread.i.i.i
  %narrow.i190.i.i.i = phi i32 [ %i.w, %.thread.i.i.i ], [ %i.ah, %bb.l ] ; 2 uses
  %i.ai = phi ptr [ %i.u, %.thread.i.i.i ], [ %.pre121.i.i.i, %bb.l ] ; 5 uses
  %i.aj = phi i32 [ %i.af, %.thread.i.i.i ], [ 1, %bb.l ]
  %i.ak = icmp samesign ult i32 %i.d, %narrow.i190.i.i.i
  br i1 %i.ak, label %bb.p, label %bb.m

bb.m:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %11)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.18, i32 noundef 103) #19
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %10, align 8, !tbaa !51   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i193.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i192.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i192.i.i.i: ; preds = %bb.o
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !46
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i193.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i193.i.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i192.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %common.resume.i.i.i

bb.p:                                             ; preds = %._crit_edge.i.i.i
  %i.ar = zext nneg i32 %i.d to i64               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 84 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ar
  %i.au = load i32, ptr %i.at, align 4, !tbaa !84
  %i.av = add nuw nsw i32 %i.d, 1                 ; 3 uses
  %i.aw = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ax = icmp samesign ult i32 %i.av, %narrow.i190.i.i.i
  br i1 %i.ax, label %_ZNK2cv8MatShapeixEm.exit201.i.i.i, label %bb.q

.thread160.i.i.i:                                 ; preds = %bb.l
  %i.ay = add nsw i32 %i.d, 1                     ; 3 uses
  %i.az = icmp ult i32 %i.ay, %i.ah
  br i1 %i.az, label %._crit_edge124.i.i.i, label %bb.q

bb.q:                                             ; preds = %.thread160.i.i.i, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %9)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.18, i32 noundef 103) #19
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %8, align 8, !tbaa !51    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i199.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i198.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i198.i.i.i: ; preds = %bb.s
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !46
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i199.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i199.i.i.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i198.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %common.resume.i.i.i

_ZNK2cv8MatShapeixEm.exit201.i.i.i:               ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.aw
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !84
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 124
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !101 ; 3 uses
  br i1 %i.t, label %bb.t, label %_ZNK2cv8MatShapeixEm.exit201.i._crit_edge.i.i

_ZNK2cv8MatShapeixEm.exit201.i._crit_edge.i.i:    ; preds = %_ZNK2cv8MatShapeixEm.exit201.i.i.i
  %i.bk = tail call i32 @llvm.smax.i32(i32 %i.bj, i32 1)
  br label %bb.x

bb.t:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit201.i.i.i
  %i.bl = icmp sgt i32 %i.bj, 2
  br i1 %i.bl, label %_ZNK2cv8MatShapeixEm.exit207.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %7)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZNK2cv8MatShapeixEm, ptr noundef nonnull @.str.18, i32 noundef 103) #19
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %i.bn = load ptr, ptr %6, align 8, !tbaa !51    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i205.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i204.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i204.i.i.i: ; preds = %bb.w
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !46
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i205.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i205.i.i.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i204.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %common.resume.i.i.i

_ZNK2cv8MatShapeixEm.exit207.i.i.i:               ; preds = %bb.t
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ai, i64 144
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !84
  br label %bb.x

._crit_edge124.i.i.i:                             ; preds = %.thread160.i.i.i
  %i.bu = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.pre121.i.i.i, i64 84
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bu
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !84
  %.phi.trans.insert125.i.i.i = getelementptr inbounds nuw i8, ptr %.pre121.i.i.i, i64 124
  %.pre126.i.i.i = load i32, ptr %.phi.trans.insert125.i.i.i, align 4, !tbaa !101
  %.pre128.i.i.i = tail call i32 @llvm.smax.i32(i32 %.pre126.i.i.i, i32 1)
  br label %bb.ab

bb.x:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit207.i.i.i, %_ZNK2cv8MatShapeixEm.exit201.i._crit_edge.i.i
  %narrow.i208.i.i.i = phi i32 [ %i.bk, %_ZNK2cv8MatShapeixEm.exit201.i._crit_edge.i.i ], [ %i.bj, %_ZNK2cv8MatShapeixEm.exit207.i.i.i ] ; 2 uses
  %.ph.i.i.i = phi i32 [ 1, %_ZNK2cv8MatShapeixEm.exit201.i._crit_edge.i.i ], [ %i.bt, %_ZNK2cv8MatShapeixEm.exit207.i.i.i ]
  %i.by = icmp samesign ult i32 %i.d, %narrow.i208.i.i.i
  br i1 %i.by, label %_ZNK2cv8MatShapeixEm.exit213.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL10avgPool32fEPKvPvRKNS5_14dnn5_v202606059ConvStateEbE3$_0E9_M_invokeERKSt9_Any_dataS3_":bb.a
  %i.ff = mul i32 %.fr.i, %.fr35.i
  %i.fg = sext i32 %i.ff to i64                   ; 7 uses
  %i.fh = shl nsw i64 %i.fg, 2                    ; 2 uses
  %i.fi = icmp slt i32 %.fr35.i, 1                ; 4 uses
  %i.fj = select i1 %i.p, float %i.fc, float +inf ; 2 uses
  %i.fk = sext i32 %i.dc to i64                   ; 3 uses
  %i.fl = icmp sgt i32 %i.cp, 0
  %or.cond.i.i.i = select i1 %i.fe, i1 %i.fl, i1 false
  br i1 %or.cond.i.i.i, label %.preheader7.us.preheader.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL10avgPool32fEPKvPvRKNS1_14dnn5_v202606059ConvStateEbE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit"

.preheader7.us.preheader.i.i.i:                   ; preds = %.preheader7.lr.ph.i.i.i
  %i.fm = icmp sgt i32 %i.ej, 0
  %i.fn = sext i32 %.fr35.i to i64                ; 8 uses
  %i.fo = sext i32 %i.ea to i64                   ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %.fr35.i to i64 ; 26 uses
  %wide.trip.count86.i.i.i = and i64 %i.ei, 2147483647 ; 2 uses
  br i1 %i.fm, label %.preheader7.us.i.us.i.i.preheader, label %.preheader7.us.i.i.preheader.i

.preheader7.us.i.us.i.i.preheader:                ; preds = %.preheader7.us.preheader.i.i.i
  %i.fp = shl nuw nsw i64 %wide.trip.count.i.i.i, 2
  %i.fq = shl nsw i64 %i.fg, 2
  %i.fr = shl nsw i64 %i.fn, 2
  %i.fs = shl nsw i64 %i.fn, 2
  %i.ft = add nsw i64 %i.eq, %wide.trip.count.i.i.i
  %i.fu = shl nsw i64 %i.ft, 2
  %i.fv = shl nsw i64 %i.fk, 2
  %i.fw = mul i32 %i.cl, %i.dk
  %i.fx = add i32 %i.fw, %i.dm
  %i.fy = mul i32 %i.fx, %i.co
  %i.fz = add i32 %i.fy, %i.do
  %i.ga = sub i32 0, %i.fz
  %i.gb = zext i32 %i.ga to i64
  %i.gc = mul i32 %i.co, %i.cl
  %i.gd = mul i32 %i.gc, %i.de
  %i.ge = zext i32 %i.gd to i64
  %i.gf = mul i32 %i.co, %i.dg
  %i.gg = zext i32 %i.gf to i64
  %i.gh = mul i32 %.fr35.i, %i.di
  %i.gi = shl nuw nsw i64 %wide.trip.count.i.i.i, 2
  %i.gj = shl nsw i64 %i.fg, 2
  %i.gk = shl nsw i64 %i.fn, 2
  %i.gl = shl nsw i64 %i.fn, 2
  %i.gm = add nsw i64 %i.eq, %wide.trip.count.i.i.i
  %i.gn = shl nsw i64 %i.gm, 2
  %i.go = shl nsw i64 %i.fk, 2
  %i.gp = getelementptr i8, ptr %i.eo, i64 %i.gn
  %i.gq = getelementptr i8, ptr %i.eo, i64 %i.fu
  %min.iters.check131 = icmp ult i32 %.fr35.i, 8
  %n.vec133 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %cmp.n142 = icmp eq i64 %n.vec133, %wide.trip.count.i.i.i
  %xtraiter154 = and i64 %wide.trip.count.i.i.i, 3 ; 2 uses
  %lcmp.mod155.not = icmp eq i64 %xtraiter154, 0
  %min.iters.check107 = icmp ult i32 %.fr35.i, 8
  %n.vec109 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %cmp.n118 = icmp eq i64 %n.vec109, %wide.trip.count.i.i.i
  %min.iters.check93 = icmp ult i32 %.fr35.i, 8
  %n.vec95 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %cmp.n104 = icmp eq i64 %n.vec95, %wide.trip.count.i.i.i
  %xtraiter157 = and i64 %wide.trip.count.i.i.i, 3 ; 2 uses
  %lcmp.mod158.not = icmp eq i64 %xtraiter157, 0
  %min.iters.check69 = icmp ult i32 %.fr35.i, 8
  %n.vec71 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert72 = insertelement <4 x float> poison, float %i.fc, i64 0
  %broadcast.splat73 = shufflevector <4 x float> %broadcast.splatinsert72, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n80 = icmp eq i64 %n.vec71, %wide.trip.count.i.i.i
  br label %.preheader7.us.i.us.i.i

.preheader7.us.i.i.preheader.i:                   ; preds = %.preheader7.us.preheader.i.i.i
  br i1 %i.fi, label %.preheader7.us.i.i.preheader.split.us.i, label %.preheader7.us.i.i.i.preheader

.preheader7.us.i.i.i.preheader:                   ; preds = %.preheader7.us.i.i.preheader.i
  %min.iters.check55 = icmp ult i32 %.fr35.i, 8
  %n.vec57 = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert58 = insertelement <4 x float> poison, float %i.fj, i64 0
  %broadcast.splat59 = shufflevector <4 x float> %broadcast.splatinsert58, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n66 = icmp eq i64 %n.vec57, %wide.trip.count.i.i.i
  %min.iters.check = icmp ult i32 %.fr35.i, 8
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fc, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br label %.preheader7.us.i.i.i

.preheader7.us.i.i.preheader.split.us.i:          ; preds = %.preheader7.us.i.i.preheader.i
  %i.gr = icmp sgt i32 %.fr.i, -1
  %i.gs = zext nneg i32 %i.cp to i64
  %i.gt = add nsw i32 %i.cp, -1
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = shl nuw nsw i64 %i.gu, 2                ; 2 uses
  %i.gw = add nuw nsw i64 %i.gv, 4
  %i.gx = mul nsw i64 %i.fg, %i.gs
  %i.gy = zext nneg i32 %i.ci to i64
  %i.gz = mul i64 %i.gx, %i.gy
  %i.ha = shl i64 %i.gz, 2                        ; 18 uses
  %i.hb = add nsw i32 %i.ci, -1
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = mul nuw i64 %i.gw, %i.hc
  %i.he = add nuw i64 %i.hd, %i.gv
  %i.hf = add nuw i64 %i.he, 4
  %i.hg = mul i64 %i.hf, %i.fg                    ; 18 uses
  br i1 %i.gr, label %.preheader7.us.i.i.us.us.i.preheader, label %.preheader7.us.i.i.us.i.preheader

.preheader7.us.i.i.us.i.preheader:                ; preds = %.preheader7.us.i.i.preheader.split.us.i
  %i.hh = sub i32 %.val3, %.val2
  %xtraiter = and i32 %i.hh, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader7.us.i.i.us.i.prol.loopexit, label %.preheader7.us.i.i.us.i.prol

.preheader7.us.i.i.us.i.prol:                     ; preds = %.preheader7.us.i.i.us.i.preheader, %.preheader7.us.i.i.us.i.prol
  %.016462.us.i.i.us.i.prol = phi i32 [ %i.hi, %.preheader7.us.i.i.us.i.prol ], [ %.val2, %.preheader7.us.i.i.us.i.preheader ]
  %.016561.us.i.i.us.i.prol = phi ptr [ %scevgep.prol, %.preheader7.us.i.i.us.i.prol ], [ %i.fa, %.preheader7.us.i.i.us.i.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader7.us.i.i.us.i.prol ], [ 0, %.preheader7.us.i.i.us.i.preheader ]
  tail call void @llvm.memset.p0.i64(ptr align 4 %.016561.us.i.i.us.i.prol, i8 0, i64 %i.ha, i1 false)
  %scevgep.prol = getelementptr i8, ptr %.016561.us.i.i.us.i.prol, i64 %i.hg ; 2 uses
  %i.hi = add nsw i32 %.016462.us.i.i.us.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader7.us.i.i.us.i.prol.loopexit, label %.preheader7.us.i.i.us.i.prol, !llvm.loop !279

.preheader7.us.i.i.us.i.prol.loopexit:            ; preds = %.preheader7.us.i.i.us.i.prol, %.preheader7.us.i.i.us.i.preheader
  %.016462.us.i.i.us.i.unr = phi i32 [ %.val2, %.preheader7.us.i.i.us.i.preheader ], [ %i.hi, %.preheader7.us.i.i.us.i.prol ]
  %.016561.us.i.i.us.i.unr = phi ptr [ %i.fa, %.preheader7.us.i.i.us.i.preheader ], [ %scevgep.prol, %.preheader7.us.i.i.us.i.prol ]
  %i.hj = sub i32 %.val2, %.val3
  %i.hk = icmp ugt i32 %i.hj, -8
  br i1 %i.hk, label %"_ZSt10__invoke_rIvRZN2cv3dnnL10avgPool32fEPKvPvRKNS1_14dnn5_v202606059ConvStateEbE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit", label %.preheader7.us.i.i.us.i

.preheader7.us.i.i.us.us.i.preheader:             ; preds = %.preheader7.us.i.i.preheader.split.us.i
  %i.hl = sub i32 %.val3, %.val2
  %xtraiter151 = and i32 %i.hl, 7                 ; 2 uses
  %lcmp.mod152.not = icmp eq i32 %xtraiter151, 0
  br i1 %lcmp.mod152.not, label %.preheader7.us.i.i.us.us.i.prol.loopexit, label %.preheader7.us.i.i.us.us.i.prol

.preheader7.us.i.i.us.us.i.prol:                  ; preds = %.preheader7.us.i.i.us.us.i.preheader, %.preheader7.us.i.i.us.us.i.prol
  %.016462.us.i.i.us.us.i.prol = phi i32 [ %i.hm, %.preheader7.us.i.i.us.us.i.prol ], [ %.val2, %.preheader7.us.i.i.us.us.i.preheader ]
  %.016561.us.i.i.us.us.i.prol = phi ptr [ %scevgep12.prol, %.preheader7.us.i.i.us.us.i.prol ], [ %i.fa, %.preheader7.us.i.i.us.us.i.preheader ] ; 2 uses
  %prol.iter153 = phi i32 [ %prol.iter153.next, %.preheader7.us.i.i.us.us.i.prol ], [ 0, %.preheader7.us.i.i.us.us.i.preheader ]
  tail call void @llvm.memset.p0.i64(ptr align 4 %.016561.us.i.i.us.us.i.prol, i8 0, i64 %i.ha, i1 false)
  %scevgep12.prol = getelementptr i8, ptr %.016561.us.i.i.us.us.i.prol, i64 %i.hg ; 2 uses
  %i.hm = add nsw i32 %.016462.us.i.i.us.us.i.prol, 1 ; 2 uses
  %prol.iter153.next = add i32 %prol.iter153, 1   ; 2 uses
  %prol.iter153.cmp.not = icmp eq i32 %prol.iter153.next, %xtraiter151
  br i1 %prol.iter153.cmp.not, label %.preheader7.us.i.i.us.us.i.prol.loopexit, label %.preheader7.us.i.i.us.us.i.prol, !llvm.loop !280

.preheader7.us.i.i.us.us.i.prol.loopexit:         ; preds = %.preheader7.us.i.i.us.us.i.prol, %.preheader7.us.i.i.us.us.i.preheader
  %.016462.us.i.i.us.us.i.unr = phi i32 [ %.val2, %.preheader7.us.i.i.us.us.i.preheader ], [ %i.hm, %.preheader7.us.i.i.us.us.i.prol ]
  %.016561.us.i.i.us.us.i.unr = phi ptr [ %i.fa, %.preheader7.us.i.i.us.us.i.preheader ], [ %scevgep12.prol, %.preheader7.us.i.i.us.us.i.prol ]
  %i.hn = sub i32 %.val2, %.val3
  %i.ho = icmp ugt i32 %i.hn, -8
  br i1 %i.ho, label %"_ZSt10__invoke_rIvRZN2cv3dnnL10avgPool32fEPKvPvRKNS1_14dnn5_v202606059ConvStateEbE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit", label %.preheader7.us.i.i.us.us.i

.preheader7.us.i.i.us.us.i:                       ; preds = %.preheader7.us.i.i.us.us.i.prol.loopexit, %.preheader7.us.i.i.us.us.i
  %.016462.us.i.i.us.us.i = phi i32 [ %i.hp, %.preheader7.us.i.i.us.us.i ], [ %.016462.us.i.i.us.us.i.unr, %.preheader7.us.i.i.us.us.i.prol.loopexit ]
  %.016561.us.i.i.us.us.i = phi ptr [ %scevgep12.7, %.preheader7.us.i.i.us.us.i ], [ %.016561.us.i.i.us.us.i.unr, %.preheader7.us.i.i.us.us.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %.016561.us.i.i.us.us.i, i8 0, i64 %i.ha, i1 false)
  %scevgep12 = getelementptr i8, ptr %.016561.us.i.i.us.us.i, i64 %i.hg ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep12, i8 0, i64 %i.ha, i1 false)
  %scevgep12.1 = getelementptr i8, ptr %scevgep12, i64 %i.hg ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep12.1, i8 0, i64 %i.ha, i1 false)
  %scevgep12.2 = getelementptr i8, ptr %scevgep12.1, i64 %i.hg ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep12.2, i8 0, i64 %i.ha, i1 false)
  %scevgep12.3 = getelementptr i8, ptr %scevgep12.2, i64 %i.hg ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep12.3, i8 0, i64 %i.ha, i1 false)
  %scevgep12.4 = getelementptr i8, ptr %scevgep12.3, i64 %i.hg ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep12.4, i8 0, i64 %i.ha, i1 false)
  %scevgep12.5 = getelementptr i8, ptr %scevgep12.4, i64 %i.hg ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep12.5, i8 0, i64 %i.ha, i1 false)
  %scevgep12.6 = getelementptr i8, ptr %scevgep12.5, i64 %i.hg ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep12.6, i8 0, i64 %i.ha, i1 false)
  %scevgep12.7 = getelementptr i8, ptr %scevgep12.6, i64 %i.hg
  %i.hp = add nsw i32 %.016462.us.i.i.us.us.i, 8  ; 2 uses
  %exitcond119.not.i.i.us.us.i.7 = icmp eq i32 %i.hp, %.val3
  br i1 %exitcond119.not.i.i.us.us.i.7, label %"_ZSt10__invoke_rIvRZN2cv3dnnL10avgPool32fEPKvPvRKNS1_14dnn5_v202606059ConvStateEbE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit", label %.preheader7.us.i.i.us.us.i, !llvm.loop !281

.preheader7.us.i.i.us.i:                          ; preds = %.preheader7.us.i.i.us.i.prol.loopexit, %.preheader7.us.i.i.us.i
  %.016462.us.i.i.us.i = phi i32 [ %i.hq, %.preheader7.us.i.i.us.i ], [ %.016462.us.i.i.us.i.unr, %.preheader7.us.i.i.us.i.prol.loopexit ]
  %.016561.us.i.i.us.i = phi ptr [ %scevgep.7, %.preheader7.us.i.i.us.i ], [ %.016561.us.i.i.us.i.unr, %.preheader7.us.i.i.us.i.prol.loopexit ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %.016561.us.i.i.us.i, i8 0, i64 %i.ha, i1 false)
  %scevgep = getelementptr i8, ptr %.016561.us.i.i.us.i, i64 %i.hg ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.ha, i1 false)
  %scevgep.1 = getelementptr i8, ptr %scevgep, i64 %i.hg ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.1, i8 0, i64 %i.ha, i1 false)
  %scevgep.2 = getelementptr i8, ptr %scevgep.1, i64 %i.hg ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.2, i8 0, i64 %i.ha, i1 false)
  %scevgep.3 = getelementptr i8, ptr %scevgep.2, i64 %i.hg ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.3, i8 0, i64 %i.ha, i1 false)
  %scevgep.4 = getelementptr i8, ptr %scevgep.3, i64 %i.hg ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.4, i8 0, i64 %i.ha, i1 false)
  %scevgep.5 = getelementptr i8, ptr %scevgep.4, i64 %i.hg ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.5, i8 0, i64 %i.ha, i1 false)
  %scevgep.6 = getelementptr i8, ptr %scevgep.5, i64 %i.hg ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.6, i8 0, i64 %i.ha, i1 false)
  %scevgep.7 = getelementptr i8, ptr %scevgep.6, i64 %i.hg
  %i.hq = add nsw i32 %.016462.us.i.i.us.i, 8     ; 2 uses
  %exitcond119.not.i.i.us.i.7 = icmp eq i32 %i.hq, %.val3
  br i1 %exitcond119.not.i.i.us.i.7, label %"_ZSt10__invoke_rIvRZN2cv3dnnL10avgPool32fEPKvPvRKNS1_14dnn5_v202606059ConvStateEbE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit", label %.preheader7.us.i.i.us.i, !llvm.loop !281

.preheader7.us.i.us.i.i:                          ; preds = %.preheader7.us.i.us.i.i.preheader, %._crit_edge47.split.us.us.i.split.us.us.i.i
  %indvar85 = phi i64 [ 0, %.preheader7.us.i.us.i.i.preheader ], [ %indvar.next86, %._crit_edge47.split.us.us.i.split.us.us.i.i ] ; 3 uses
  %.016462.us.i.us.i.i = phi i32 [ %.val2, %.preheader7.us.i.us.i.i.preheader ], [ %i.nq, %._crit_edge47.split.us.us.i.split.us.us.i.i ]
  %.016561.us.i.us.i.i = phi ptr [ %i.fa, %.preheader7.us.i.us.i.i.preheader ], [ %i.no, %._crit_edge47.split.us.us.i.split.us.us.i.i ]
  %.016859.us.i.us.i.i = phi ptr [ %i.er, %.preheader7.us.i.us.i.i.preheader ], [ %i.nr, %._crit_edge47.split.us.us.i.split.us.us.i.i ] ; 3 uses
  %i.hr = mul i64 %i.go, %indvar85
  %scevgep125.a = getelementptr i8, ptr %i.gp, i64 %i.hr
  %i.hs = mul i64 %i.fv, %indvar85
  %scevgep87 = getelementptr i8, ptr %i.gq, i64 %i.hs
  br label %.lr.ph41.us.us.i.us.us.i.i

.lr.ph41.us.us.i.us.us.i.i:                       ; preds = %._crit_edge42.us.us.i.split.us.us.us.i.i, %.preheader7.us.i.us.i.i
  %indvar88 = phi i64 [ %indvar.next89, %._crit_edge42.us.us.i.split.us.us.us.i.i ], [ 0, %.preheader7.us.i.us.i.i ] ; 2 uses
  %.016345.us.us.i.us.us.i.i = phi i32 [ %i.np, %._crit_edge42.us.us.i.split.us.us.us.i.i ], [ 0, %.preheader7.us.i.us.i.i ] ; 4 uses
  %.116644.us.us.i.us.us.i.i = phi ptr [ %i.no, %._crit_edge42.us.us.i.split.us.us.us.i.i ], [ %.016561.us.i.us.i.i, %.preheader7.us.i.us.i.i ] ; 3 uses
  %i.ht = mul i64 %indvar88, %i.ge
  %i.hu = add i64 %i.ht, %i.gb
  %i.hv = mul nsw i32 %.016345.us.us.i.us.us.i.i, %i.de
  %i.hw = sub nsw i32 %i.hv, %i.dk                ; 2 uses
  %.not.us.us.i.us.us.i.i = icmp sge i32 %.016345.us.us.i.us.us.i.i, %i.dq
  %i.hx = icmp slt i32 %.016345.us.us.i.us.us.i.i, %i.ds
  %or.cond.not2.not5.us.us.i.us.us.i.i = select i1 %.not.us.us.i.us.us.i.i, i1 %i.hx, i1 false
  %i.hy = mul nsw i32 %i.hw, %i.cl
  %i.hz = getelementptr i8, ptr %.116644.us.us.i.us.us.i.i, i64 %i.gi
  %i.ia = getelementptr i8, ptr %.116644.us.us.i.us.us.i.i, i64 %i.fp
  br label %.split.us.us.us.us.i.i

.split.us.us.us.us.i.i:                           ; preds = %.split3.us.us.us.us.i.i, %.lr.ph41.us.us.i.us.us.i.i
  %indvar = phi i64 [ %indvar.next, %.split3.us.us.us.us.i.i ], [ 0, %.lr.ph41.us.us.i.us.us.i.i ] ; 4 uses
  %.016239.us.us.i.us.us.us.i.i = phi i32 [ %i.nn, %.split3.us.us.us.us.i.i ], [ 0, %.lr.ph41.us.us.i.us.us.i.i ] ; 4 uses
  %.216738.us.us.i.us.us.us.i.i = phi ptr [ %i.no, %.split3.us.us.us.us.i.i ], [ %.116644.us.us.i.us.us.i.i, %.lr.ph41.us.us.i.us.us.i.i ] ; 4 uses
  %i.ib = mul i64 %i.gj, %indvar
  %i.ic = mul i64 %i.fq, %indvar
  %i.id = mul i64 %indvar, %i.gg
  %i.ie = add i64 %i.hu, %i.id
  %i.if = trunc i64 %i.ie to i32
  %.not182.us.us.i.us.us.us.i.i = icmp sge i32 %.016239.us.us.i.us.us.us.i.i, %i.du
  %or.cond186.not3.us.us.i.us.us.us.i.i = select i1 %or.cond.not2.not5.us.us.i.us.us.i.i, i1 %.not182.us.us.i.us.us.us.i.i, i1 false
  %i.ig = icmp slt i32 %.016239.us.us.i.us.us.us.i.i, %i.dw
  %or.cond187.us.us.i.us.us.us.i.i = select i1 %or.cond186.not3.us.us.i.us.us.us.i.i, i1 %i.ig, i1 false
  %i.ih = select i1 %or.cond187.us.us.i.us.us.us.i.i, i32 %i.dy, i32 %.fr.i
  %i.ii = mul i32 %.016239.us.us.i.us.us.us.i.i, %i.dg
  %i.ij = sub i32 %i.ii, %i.dm                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %.216738.us.us.i.us.us.us.i.i, i8 0, i64 %i.fh, i1 false)
  %i.ik = add nsw i32 %i.ij, %i.hy
  %i.il = mul nsw i32 %i.ik, %i.co
  %i.im = sub i32 %i.il, %i.do
  %i.in = getelementptr i8, ptr %i.hz, i64 %i.ib
  %i.io = getelementptr i8, ptr %i.ia, i64 %i.ic
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.us.us.i.us.us.us.us.i.i, %.split.us.us.us.us.i.i
  %.0160.us.us.i.us.us.us.us.i.i = phi i32 [ 0, %.split.us.us.us.us.i.i ], [ %.2.lcssa.us.us.i.us.us.us.us.i.i, %.loopexit.us.us.i.us.us.us.us.i.i ] ; 3 uses
  %.0159.us.us.i.us.us.us.us.i.i = phi i32 [ %i.ih, %.split.us.us.us.us.i.i ], [ %.fr.i, %.loopexit.us.us.i.us.us.us.us.i.i ] ; 3 uses
  %i.ip = icmp slt i32 %.0160.us.us.i.us.us.us.us.i.i, %.0159.us.us.i.us.us.us.us.i.i
  br i1 %i.ip, label %.lr.ph20.us.us.i.us.us.us.us.i.i, label %._crit_edge21.us.us.i.us.us.us.us.i.i

.lr.ph20.us.us.i.us.us.us.us.i.i:                 ; preds = %bb.af
  %i.iq = zext i32 %.0160.us.us.i.us.us.us.us.i.i to i64 ; 2 uses
  %wide.trip.count96.i.us.us.us.us.i.i = zext nneg i32 %.0159.us.us.i.us.us.us.us.i.i to i64
  %i.ir = mul i64 %i.gk, %i.iq
  %i.is = getelementptr i8, ptr %i.in, i64 %i.ir
  br label %.lr.ph12.us.us.us.i.us.us.us.us.i.i

.lr.ph12.us.us.us.i.us.us.us.us.i.i:              ; preds = %._crit_edge17.us.us.us.i.us.us.us.us.i.i, %.lr.ph20.us.us.i.us.us.us.us.i.i
  %indvar121 = phi i64 [ %indvar.next122, %._crit_edge17.us.us.us.i.us.us.us.us.i.i ], [ 0, %.lr.ph20.us.us.i.us.us.us.us.i.i ] ; 2 uses
  %indvars.iv93.i.us.us.us.us.i.i = phi i64 [ %indvars.iv.next94.i.us.us.us.us.i.i, %._crit_edge17.us.us.us.i.us.us.us.us.i.i ], [ %i.iq, %.lr.ph20.us.us.i.us.us.us.us.i.i ] ; 3 uses
  %i.it = mul i64 %i.gl, %indvar121
  %scevgep123 = getelementptr i8, ptr %i.is, i64 %i.it
  %i.iu = mul i64 %indvars.iv93.i.us.us.us.us.i.i, %i.fn
  %i.iv = trunc i64 %indvars.iv93.i.us.us.us.us.i.i to i32
  %i.iw = mul i32 %i.di, %i.iv
  %i.ix = sub i32 %i.iw, %i.do
  %invariant.gep164.i.us.us.us.us.i.i = getelementptr [4 x i8], ptr %.216738.us.us.i.us.us.us.i.i, i64 %i.iu ; 9 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %.lr.ph12.us.us.us.i.us.us.us.us.i.i
  %indvars.iv83.i.us.us.us.us.i.i = phi i64 [ %indvars.iv.next84.i.us.us.us.us.i.i, %bb.ai ], [ 0, %.lr.ph12.us.us.us.i.us.us.us.us.i.i ] ; 2 uses
  %.01589.us.us.us.i.us.us.us.us.i.i = phi i32 [ %.1.us.us.us.i.us.us.us.us.i.i, %bb.ai ], [ 0, %.lr.ph12.us.us.us.i.us.us.us.us.i.i ] ; 2 uses
  %.idx.i.us.us.us.us.i.i = mul nuw nsw i64 %indvars.iv83.i.us.us.us.us.i.i, 12
  %i.iy = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx.i.us.us.us.us.i.i ; 3 uses
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !84
  %i.ja = add nsw i32 %i.iz, %i.hw                ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !84
  %i.jd = add i32 %i.jc, %i.ij                    ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !84
  %i.jg = add i32 %i.jf, %i.ix                    ; 2 uses
  %.not183.us.us.us.i.us.us.us.us.i.i = icmp ult i32 %i.ja, %i.cm
  %.not184.us.us.us.i.us.us.us.us.i.i = icmp ult i32 %i.jd, %i.cl
  %or.cond188.us.us.us.i.us.us.us.us.i.i = select i1 %.not183.us.us.us.i.us.us.us.us.i.i, i1 %.not184.us.us.us.i.us.us.us.us.i.i, i1 false
  %.not185.us.us.us.i.us.us.us.us.i.i = icmp ult i32 %i.jg, %i.co
  %or.cond189.us.us.us.i.us.us.us.us.i.i = select i1 %or.cond188.us.us.us.i.us.us.us.us.i.i, i1 %.not185.us.us.us.i.us.us.us.us.i.i, i1 false
  br i1 %or.cond189.us.us.us.i.us.us.us.us.i.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.jh = mul i32 %i.ja, %i.cl
  %i.ji = add i32 %i.jh, %i.jd
  %i.jj = mul i32 %i.ji, %i.co
  %i.jk = add i32 %i.jj, %i.jg
  %i.jl = mul i32 %i.jk, %.fr35.i
  %i.jm = sext i32 %i.jl to i64                   ; 2 uses
  %i.jn = getelementptr [4 x i8], ptr %.016859.us.i.us.i.i, i64 %i.jm ; 7 uses
  br i1 %i.fi, label %._crit_edge.us.us.us.i.us.us.us.us.i.i, label %.lr.ph.us.us.us.i.us.us.us.us.i.i.preheader

.lr.ph.us.us.us.i.us.us.us.us.i.i.preheader:      ; preds = %bb.ah
  br i1 %min.iters.check131, label %.lr.ph.us.us.us.i.us.us.us.us.i.i.preheader144, label %vector.memcheck120

vector.memcheck120:                               ; preds = %.lr.ph.us.us.us.i.us.us.us.us.i.i.preheader
  %i.jo = shl nsw i64 %i.jm, 2
  %scevgep126 = getelementptr i8, ptr %scevgep125.a, i64 %i.jo
  %bound0127 = icmp ult ptr %invariant.gep164.i.us.us.us.us.i.i, %scevgep126
  %bound1128 = icmp ult ptr %i.jn, %scevgep123
  %found.conflict129 = and i1 %bound0127, %bound1128
  br i1 %found.conflict129, label %.lr.ph.us.us.us.i.us.us.us.us.i.i.preheader144, label %vector.body134

vector.body134:                                   ; preds = %vector.memcheck120, %vector.body134
  %index135 = phi i64 [ %index.next140, %vector.body134 ], [ 0, %vector.memcheck120 ] ; 3 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %index135 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %wide.load136.a = load <4 x float>, ptr %i.jp, align 4, !tbaa !317, !alias.scope !318
  %wide.load137.a = load <4 x float>, ptr %i.jq, align 4, !tbaa !317, !alias.scope !318
  %i.jr = getelementptr [4 x i8], ptr %invariant.gep164.i.us.us.us.us.i.i, i64 %index135 ; 3 uses
  %i.js = getelementptr i8, ptr %i.jr, i64 16     ; 2 uses
  %wide.load138.a = load <4 x float>, ptr %i.jr, align 4, !tbaa !317, !alias.scope !319, !noalias !318
  %wide.load139 = load <4 x float>, ptr %i.js, align 4, !tbaa !317, !alias.scope !319, !noalias !318
  %i.jt = fadd <4 x float> %wide.load136.a, %wide.load138.a
  %i.ju = fadd <4 x float> %wide.load137.a, %wide.load139
  store <4 x float> %i.jt, ptr %i.jr, align 4, !tbaa !317, !alias.scope !319, !noalias !318
  store <4 x float> %i.ju, ptr %i.js, align 4, !tbaa !317, !alias.scope !319, !noalias !318
  %index.next140 = add nuw i64 %index135, 8       ; 2 uses
  %i.jv = icmp eq i64 %index.next140, %n.vec133
  br i1 %i.jv, label %middle.block141, label %vector.body134, !llvm.loop !285

middle.block141:                                  ; preds = %vector.body134
  br i1 %cmp.n142, label %._crit_edge.us.us.us.i.us.us.us.us.i.i, label %.lr.ph.us.us.us.i.us.us.us.us.i.i.preheader144

.lr.ph.us.us.us.i.us.us.us.us.i.i.preheader144:   ; preds = %vector.memcheck120, %.lr.ph.us.us.us.i.us.us.us.us.i.i.preheader, %middle.block141
  %indvars.iv78.i.us.us.us.us.i.i.ph = phi i64 [ 0, %vector.memcheck120 ], [ 0, %.lr.ph.us.us.us.i.us.us.us.us.i.i.preheader ], [ %n.vec133, %middle.block141 ] ; 3 uses
  br i1 %lcmp.mod155.not, label %.lr.ph.us.us.us.i.us.us.us.us.i.i.prol.loopexit, label %.lr.ph.us.us.us.i.us.us.us.us.i.i.prol

.lr.ph.us.us.us.i.us.us.us.us.i.i.prol:           ; preds = %.lr.ph.us.us.us.i.us.us.us.us.i.i.preheader144, %.lr.ph.us.us.us.i.us.us.us.us.i.i.prol
  %indvars.iv78.i.us.us.us.us.i.i.prol = phi i64 [ %indvars.iv.next79.i.us.us.us.us.i.i.prol, %.lr.ph.us.us.us.i.us.us.us.us.i.i.prol ], [ %indvars.iv78.i.us.us.us.us.i.i.ph, %.lr.ph.us.us.us.i.us.us.us.us.i.i.preheader144 ] ; 3 uses
  %prol.iter156 = phi i64 [ %prol.iter156.next, %.lr.ph.us.us.us.i.us.us.us.us.i.i.prol ], [ 0, %.lr.ph.us.us.us.i.us.us.us.us.i.i.preheader144 ]
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv78.i.us.us.us.us.i.i.prol
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !317
  %gep165.i.us.us.us.us.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep164.i.us.us.us.us.i.i, i64 %indvars.iv78.i.us.us.us.us.i.i.prol ; 2 uses
  %i.jy = load float, ptr %gep165.i.us.us.us.us.i.i.prol, align 4, !tbaa !317
  %i.jz = fadd float %i.jx, %i.jy
  store float %i.jz, ptr %gep165.i.us.us.us.us.i.i.prol, align 4, !tbaa !317
  %indvars.iv.next79.i.us.us.us.us.i.i.prol = add nuw nsw i64 %indvars.iv78.i.us.us.us.us.i.i.prol, 1 ; 2 uses
  %prol.iter156.next = add i64 %prol.iter156, 1   ; 2 uses
  %prol.iter156.cmp.not = icmp eq i64 %prol.iter156.next, %xtraiter154
  br i1 %prol.iter156.cmp.not, label %.lr.ph.us.us.us.i.us.us.us.us.i.i.prol.loopexit, label %.lr.ph.us.us.us.i.us.us.us.us.i.i.prol, !llvm.loop !286

.lr.ph.us.us.us.i.us.us.us.us.i.i.prol.loopexit:  ; preds = %.lr.ph.us.us.us.i.us.us.us.us.i.i.prol, %.lr.ph.us.us.us.i.us.us.us.us.i.i.preheader144
  %indvars.iv78.i.us.us.us.us.i.i.unr = phi i64 [ %indvars.iv78.i.us.us.us.us.i.i.ph, %.lr.ph.us.us.us.i.us.us.us.us.i.i.preheader144 ], [ %indvars.iv.next79.i.us.us.us.us.i.i.prol, %.lr.ph.us.us.us.i.us.us.us.us.i.i.prol ]
  %i.ka = sub nsw i64 %indvars.iv78.i.us.us.us.us.i.i.ph, %wide.trip.count.i.i.i
  %i.kb = icmp ugt i64 %i.ka, -4
  br i1 %i.kb, label %._crit_edge.us.us.us.i.us.us.us.us.i.i, label %.lr.ph.us.us.us.i.us.us.us.us.i.i

.lr.ph.us.us.us.i.us.us.us.us.i.i:                ; preds = %.lr.ph.us.us.us.i.us.us.us.us.i.i.prol.loopexit, %.lr.ph.us.us.us.i.us.us.us.us.i.i
  %indvars.iv78.i.us.us.us.us.i.i = phi i64 [ %indvars.iv.next79.i.us.us.us.us.i.i.3, %.lr.ph.us.us.us.i.us.us.us.us.i.i ], [ %indvars.iv78.i.us.us.us.us.i.i.unr, %.lr.ph.us.us.us.i.us.us.us.us.i.i.prol.loopexit ] ; 6 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv78.i.us.us.us.us.i.i
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !317
  %gep165.i.us.us.us.us.i.i = getelementptr [4 x i8], ptr %invariant.gep164.i.us.us.us.us.i.i, i64 %indvars.iv78.i.us.us.us.us.i.i ; 2 uses
  %i.ke = load float, ptr %gep165.i.us.us.us.us.i.i, align 4, !tbaa !317
  %i.kf = fadd float %i.kd, %i.ke
  store float %i.kf, ptr %gep165.i.us.us.us.us.i.i, align 4, !tbaa !317
  %indvars.iv.next79.i.us.us.us.us.i.i = add nuw nsw i64 %indvars.iv78.i.us.us.us.us.i.i, 1 ; 2 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv.next79.i.us.us.us.us.i.i
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !317
  %gep165.i.us.us.us.us.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep164.i.us.us.us.us.i.i, i64 %indvars.iv.next79.i.us.us.us.us.i.i ; 2 uses
  %i.ki = load float, ptr %gep165.i.us.us.us.us.i.i.1, align 4, !tbaa !317
  %i.kj = fadd float %i.kh, %i.ki
  store float %i.kj, ptr %gep165.i.us.us.us.us.i.i.1, align 4, !tbaa !317
  %indvars.iv.next79.i.us.us.us.us.i.i.1 = add nuw nsw i64 %indvars.iv78.i.us.us.us.us.i.i, 2 ; 2 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv.next79.i.us.us.us.us.i.i.1
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !317
  %gep165.i.us.us.us.us.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep164.i.us.us.us.us.i.i, i64 %indvars.iv.next79.i.us.us.us.us.i.i.1 ; 2 uses
  %i.km = load float, ptr %gep165.i.us.us.us.us.i.i.2, align 4, !tbaa !317
  %i.kn = fadd float %i.kl, %i.km
  store float %i.kn, ptr %gep165.i.us.us.us.us.i.i.2, align 4, !tbaa !317
  %indvars.iv.next79.i.us.us.us.us.i.i.2 = add nuw nsw i64 %indvars.iv78.i.us.us.us.us.i.i, 3 ; 2 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv.next79.i.us.us.us.us.i.i.2
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !317
  %gep165.i.us.us.us.us.i.i.3 = getelementptr [4 x i8], ptr %invariant.gep164.i.us.us.us.us.i.i, i64 %indvars.iv.next79.i.us.us.us.us.i.i.2 ; 2 uses
  %i.kq = load float, ptr %gep165.i.us.us.us.us.i.i.3, align 4, !tbaa !317
  %i.kr = fadd float %i.kp, %i.kq
  store float %i.kr, ptr %gep165.i.us.us.us.us.i.i.3, align 4, !tbaa !317
  %indvars.iv.next79.i.us.us.us.us.i.i.3 = add nuw nsw i64 %indvars.iv78.i.us.us.us.us.i.i, 4 ; 2 uses
  %exitcond82.not.i.us.us.us.us.i.i.3 = icmp eq i64 %indvars.iv.next79.i.us.us.us.us.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond82.not.i.us.us.us.us.i.i.3, label %._crit_edge.us.us.us.i.us.us.us.us.i.i, label %.lr.ph.us.us.us.i.us.us.us.us.i.i, !llvm.loop !287

._crit_edge.us.us.us.i.us.us.us.us.i.i:           ; preds = %.lr.ph.us.us.us.i.us.us.us.us.i.i.prol.loopexit, %.lr.ph.us.us.us.i.us.us.us.us.i.i, %middle.block141, %bb.ah
  %i.ks = add nsw i32 %.01589.us.us.us.i.us.us.us.us.i.i, 1
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.us.us.us.i.us.us.us.us.i.i, %bb.ag
  %.1.us.us.us.i.us.us.us.us.i.i = phi i32 [ %i.ks, %._crit_edge.us.us.us.i.us.us.us.us.i.i ], [ %.01589.us.us.us.i.us.us.us.us.i.i, %bb.ag ] ; 2 uses
  %indvars.iv.next84.i.us.us.us.us.i.i = add nuw nsw i64 %indvars.iv83.i.us.us.us.us.i.i, 1 ; 2 uses
  %exitcond87.not.i.us.us.us.us.i.i = icmp eq i64 %indvars.iv.next84.i.us.us.us.us.i.i, %wide.trip.count86.i.i.i
  br i1 %exitcond87.not.i.us.us.us.us.i.i, label %._crit_edge13.us.us.us.i.us.us.us.us.i.i, label %bb.ag, !llvm.loop !288

._crit_edge13.us.us.us.i.us.us.us.us.i.i:         ; preds = %bb.ai
  %i.kt = sitofp i32 %.1.us.us.us.i.us.us.us.us.i.i to float
  %i.ku = fdiv nnan float 1.000000e+00, %i.kt
  %i.kv = select i1 %i.p, float %i.fc, float %i.ku ; 2 uses
  br i1 %i.fi, label %._crit_edge17.us.us.us.i.us.us.us.us.i.i, label %.lr.ph16.us.us.us.i.us.us.us.us.i.i.preheader

.lr.ph16.us.us.us.i.us.us.us.us.i.i.preheader:    ; preds = %._crit_edge13.us.us.us.i.us.us.us.us.i.i
  br i1 %min.iters.check107, label %.lr.ph16.us.us.us.i.us.us.us.us.i.i.preheader146, label %vector.ph108

vector.ph108:                                     ; preds = %.lr.ph16.us.us.us.i.us.us.us.us.i.i.preheader
  %broadcast.splatinsert110 = insertelement <4 x float> poison, float %i.kv, i64 0
  %broadcast.splat111 = shufflevector <4 x float> %broadcast.splatinsert110, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body112

vector.body112:                                   ; preds = %vector.body112, %vector.ph108
  %index113 = phi i64 [ 0, %vector.ph108 ], [ %index.next116, %vector.body112 ] ; 2 uses
  %i.kw = getelementptr [4 x i8], ptr %invariant.gep164.i.us.us.us.us.i.i, i64 %index113 ; 3 uses
  %i.kx = getelementptr i8, ptr %i.kw, i64 16     ; 2 uses
  %wide.load114 = load <4 x float>, ptr %i.kw, align 4, !tbaa !317
  %wide.load115 = load <4 x float>, ptr %i.kx, align 4, !tbaa !317
  %i.ky = fmul <4 x float> %broadcast.splat111, %wide.load114
  %i.kz = fmul <4 x float> %broadcast.splat111, %wide.load115
  store <4 x float> %i.ky, ptr %i.kw, align 4, !tbaa !317
  store <4 x float> %i.kz, ptr %i.kx, align 4, !tbaa !317
  %index.next116 = add nuw i64 %index113, 8       ; 2 uses
  %i.la = icmp eq i64 %index.next116, %n.vec109
  br i1 %i.la, label %middle.block117, label %vector.body112, !llvm.loop !289

middle.block117:                                  ; preds = %vector.body112
  br i1 %cmp.n118, label %._crit_edge17.us.us.us.i.us.us.us.us.i.i, label %.lr.ph16.us.us.us.i.us.us.us.us.i.i.preheader146

.lr.ph16.us.us.us.i.us.us.us.us.i.i.preheader146: ; preds = %.lr.ph16.us.us.us.i.us.us.us.us.i.i.preheader, %middle.block117
  %indvars.iv88.i.us.us.us.us.i.i.ph = phi i64 [ 0, %.lr.ph16.us.us.us.i.us.us.us.us.i.i.preheader ], [ %n.vec109, %middle.block117 ]
  br label %.lr.ph16.us.us.us.i.us.us.us.us.i.i

.lr.ph16.us.us.us.i.us.us.us.us.i.i:              ; preds = %.lr.ph16.us.us.us.i.us.us.us.us.i.i.preheader146, %.lr.ph16.us.us.us.i.us.us.us.us.i.i
  %indvars.iv88.i.us.us.us.us.i.i = phi i64 [ %indvars.iv.next89.i.us.us.us.us.i.i, %.lr.ph16.us.us.us.i.us.us.us.us.i.i ], [ %indvars.iv88.i.us.us.us.us.i.i.ph, %.lr.ph16.us.us.us.i.us.us.us.us.i.i.preheader146 ] ; 2 uses
  %gep167.i.us.us.us.us.i.i = getelementptr [4 x i8], ptr %invariant.gep164.i.us.us.us.us.i.i, i64 %indvars.iv88.i.us.us.us.us.i.i ; 2 uses
  %i.lb = load float, ptr %gep167.i.us.us.us.us.i.i, align 4, !tbaa !317
  %i.lc = fmul float %i.kv, %i.lb
  store float %i.lc, ptr %gep167.i.us.us.us.us.i.i, align 4, !tbaa !317
  %indvars.iv.next89.i.us.us.us.us.i.i = add nuw nsw i64 %indvars.iv88.i.us.us.us.us.i.i, 1 ; 2 uses
  %exitcond92.not.i.us.us.us.us.i.i = icmp eq i64 %indvars.iv.next89.i.us.us.us.us.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond92.not.i.us.us.us.us.i.i, label %._crit_edge17.us.us.us.i.us.us.us.us.i.i, label %.lr.ph16.us.us.us.i.us.us.us.us.i.i, !llvm.loop !290

._crit_edge17.us.us.us.i.us.us.us.us.i.i:         ; preds = %.lr.ph16.us.us.us.i.us.us.us.us.i.i, %middle.block117, %._crit_edge13.us.us.us.i.us.us.us.us.i.i
  %indvars.iv.next94.i.us.us.us.us.i.i = add nuw nsw i64 %indvars.iv93.i.us.us.us.us.i.i, 1 ; 2 uses
  %exitcond97.not.i.us.us.us.us.i.i = icmp eq i64 %indvars.iv.next94.i.us.us.us.us.i.i, %wide.trip.count96.i.us.us.us.us.i.i
  %indvar.next122 = add i64 %indvar121, 1
  br i1 %exitcond97.not.i.us.us.us.us.i.i, label %._crit_edge21.us.us.i.us.us.us.us.i.i, label %.lr.ph12.us.us.us.i.us.us.us.us.i.i, !llvm.loop !291

._crit_edge21.us.us.i.us.us.us.us.i.i:            ; preds = %._crit_edge17.us.us.us.i.us.us.us.us.i.i, %bb.af
  %.1161.lcssa.us.us.i.us.us.us.us.i.i = phi i32 [ %.0160.us.us.i.us.us.us.us.i.i, %bb.af ], [ %.0159.us.us.i.us.us.us.us.i.i, %._crit_edge17.us.us.us.i.us.us.us.us.i.i ] ; 5 uses
  %i.ld = icmp eq i32 %.1161.lcssa.us.us.i.us.us.us.us.i.i, %.fr.i
  br i1 %i.ld, label %.split3.us.us.us.us.i.i, label %.preheader6.us.us.i.us.us.us.us.i.i

.preheader6.us.us.i.us.us.us.us.i.i:              ; preds = %._crit_edge21.us.us.i.us.us.us.us.i.i
  %i.le = icmp sge i32 %.1161.lcssa.us.us.i.us.us.us.us.i.i, %i.ea
  %brmerge47.i.i = or i1 %i.fi, %i.le
  %.1161.lcssa.us.us.i.us.us.us.us.mux.i.i = tail call i32 @llvm.smax.i32(i32 %.1161.lcssa.us.us.i.us.us.us.us.i.i, i32 %i.ea)
  br i1 %brmerge47.i.i, label %.loopexit.us.us.i.us.us.us.us.i.i, label %.lr.ph37.us.us.i.us.us.us.us.preheader.i.i

.lr.ph37.us.us.i.us.us.us.us.preheader.i.i:       ; preds = %.preheader6.us.us.i.us.us.us.us.i.i
  %i.lf = zext i32 %.1161.lcssa.us.us.i.us.us.us.us.i.i to i64 ; 2 uses
  %i.lg = mul i64 %i.fr, %i.lf
  %i.lh = mul i32 %i.di, %.1161.lcssa.us.us.i.us.us.us.us.i.i
  %i.li = add i32 %i.lh, %i.if
  %i.lj = mul i32 %.fr35.i, %i.li
  %i.lk = getelementptr i8, ptr %i.io, i64 %i.lg
  br label %.lr.ph37.us.us.i.us.us.us.us.i.i

.lr.ph37.us.us.i.us.us.us.us.i.i:                 ; preds = %._crit_edge35.us.us.i.loopexit.us.us.us.us.i.i, %.lr.ph37.us.us.i.us.us.us.us.preheader.i.i
  %indvar82 = phi i64 [ %indvar.next83, %._crit_edge35.us.us.i.loopexit.us.us.us.us.i.i ], [ 0, %.lr.ph37.us.us.i.us.us.us.us.preheader.i.i ] ; 3 uses
  %indvars.iv113.i.us.us.us.us.i.i = phi i64 [ %indvars.iv.next114.i.us.us.us.us.i.i, %._crit_edge35.us.us.i.loopexit.us.us.us.us.i.i ], [ %i.lf, %.lr.ph37.us.us.i.us.us.us.us.preheader.i.i ] ; 3 uses
  %i.ll = mul i64 %i.fs, %indvar82
  %scevgep84 = getelementptr i8, ptr %i.lk, i64 %i.ll
  %i.lm = trunc i64 %indvar82 to i32
  %i.ln = mul i32 %i.gh, %i.lm
  %i.lo = add i32 %i.ln, %i.lj
  %i.lp = sext i32 %i.lo to i64
  %i.lq = shl nsw i64 %i.lp, 2
  %i.lr = trunc i64 %indvars.iv113.i.us.us.us.us.i.i to i32
  %i.ls = mul i32 %i.di, %i.lr
  %i.lt = add i32 %i.im, %i.ls
  %i.lu = mul nsw i32 %i.lt, %.fr35.i
  %i.lv = sext i32 %i.lu to i64
  %i.lw = getelementptr inbounds [4 x i8], ptr %.016859.us.i.us.i.i, i64 %i.lv
  %i.lx = mul nuw nsw i64 %indvars.iv113.i.us.us.us.us.i.i, %i.fn
  %invariant.gep168.i.us.us.us.us.i.i = getelementptr [4 x i8], ptr %.216738.us.us.i.us.us.us.i.i, i64 %i.lx ; 9 uses
  %scevgep90 = getelementptr i8, ptr %scevgep87, i64 %i.lq
  br label %.lr.ph.us55.us.i.us.us.us.us.i.i

.lr.ph.us55.us.i.us.us.us.us.i.i:                 ; preds = %._crit_edge.us56.us.i.us.us.us.us.i.i, %.lr.ph37.us.us.i.us.us.us.us.i.i
  %indvars.iv103.i.us.us.us.us.i.i = phi i64 [ 0, %.lr.ph37.us.us.i.us.us.us.us.i.i ], [ %indvars.iv.next104.i.us.us.us.us.i.i, %._crit_edge.us56.us.i.us.us.us.us.i.i ] ; 2 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv103.i.us.us.us.us.i.i
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !84
  %i.ma = sext i32 %i.lz to i64                   ; 2 uses
  %i.mb = getelementptr inbounds [4 x i8], ptr %i.lw, i64 %i.ma ; 7 uses
  br i1 %min.iters.check93, label %scalar.ph92.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us55.us.i.us.us.us.us.i.i
  %i.mc = shl nsw i64 %i.ma, 2
  %scevgep91 = getelementptr i8, ptr %scevgep90, i64 %i.mc
  %bound0 = icmp ult ptr %invariant.gep168.i.us.us.us.us.i.i, %scevgep91
  %bound1 = icmp ult ptr %i.mb, %scevgep84
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph92.preheader, label %vector.body96

vector.body96:                                    ; preds = %vector.memcheck, %vector.body96
end_hunk_1
