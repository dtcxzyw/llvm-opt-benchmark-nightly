inline.NumInlined: 5368
inline.NumDeleted: 2188
begin_hunk_0_@_ZN8facebook5velox6memory14MemoryPoolImpl12growCapacityEPNS1_10MemoryPoolEm:bb.a
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6memory14MemoryPoolImpl12growCapacityEPNS1_10MemoryPoolEmE18veloxCheckFailArgs_0) #45
  unreachable

bb.r:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.br = load ptr, ptr %0, align 8, !tbaa !24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 400
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(264) %0)
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull %6) #45
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bv = load ptr, ptr %6, align 8, !tbaa !84
  %.not.i20 = icmp eq ptr %i.bv, null
  br i1 %.not.i20, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit21, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #29
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit21

bb.v:                                             ; preds = %bb.e
  ret void

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit21: ; preds = %bb.u, %bb.t, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %bb.h
  %.merged = phi { ptr, i32 } [ %.pn14, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit ], [ %.pn, %bb.h ], [ %i.bu, %bb.t ], [ %i.bu, %bb.u ]
  resume { ptr, i32 } %.merged

bb.w:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #47
  unreachable

bb.x:                                             ; preds = %.critedge
  unreachable
}

declare void @_ZN8facebook5velox6memory28MemoryPoolArbitrationSectionC1EPNS1_10MemoryPoolE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN8facebook5velox6memory28MemoryPoolArbitrationSectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox6memory14MemoryPoolImpl16wrapExceptionDbgERKNS0_17VeloxRuntimeErrorE(ptr dead_on_unwind noalias writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(561) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.281", align 16 ; 7 uses
  %8 = alloca %"class.std::vector.176", align 8   ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 22 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.facebook::velox::VeloxRuntimeError", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(264) %1)
  br i1 %i.d, label %bb.c, label %bb.b, !prof !103

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6memory14MemoryPoolImpl16wrapExceptionDbgERKNS0_17VeloxRuntimeErrorEE18veloxCheckFailArgs) #45
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !68
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !103

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6memory14MemoryPoolImpl16wrapExceptionDbgERKNS0_17VeloxRuntimeErrorEE18veloxCheckFailArgs_0) #45
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  invoke void @_ZNK8facebook5velox6memory14MemoryPoolImpl24treeAllocationRecordsDbgERSt6vectorINS2_14MemoryPoolDumpESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(561) %1, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.g = load ptr, ptr %8, align 8, !tbaa !448    ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !448  ; 6 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.114, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.k ; 0 uses

bb.i:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.j:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.k:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.l:                                             ; preds = %bb.g
  %i.p = ptrtoint ptr %i.i to i64
  %i.q = ptrtoint ptr %i.g to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = sdiv exact i64 %i.r, 40
  %i.t = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.s, i1 true)
  %i.u = shl nuw nsw i64 %i.t, 1
  %i.v = xor i64 %i.u, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory14MemoryPoolImpl14MemoryPoolDumpESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNKS5_16wrapExceptionDbgERKNS3_17VeloxRuntimeErrorEE3$_0EEEvT_SJ_T0_T1_"(ptr %i.g, ptr %i.i, i64 noundef %i.v)
  %i.w = icmp sgt i64 %i.r, 640
  br i1 %i.w, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 640 ; 3 uses
  call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory14MemoryPoolImpl14MemoryPoolDumpESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_16wrapExceptionDbgERKNS3_17VeloxRuntimeErrorEE3$_0EEEvT_SJ_T0_"(ptr %i.g, ptr nonnull %i.x)
  %i.y = icmp eq ptr %i.x, %i.i
  br i1 %i.y, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory14MemoryPoolImpl14MemoryPoolDumpESt6vectorIS6_SaIS6_EEEEZNKS5_16wrapExceptionDbgERKNS3_17VeloxRuntimeErrorEE3$_0EvT_SG_T0_.exit", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.m, %.lr.ph.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %i.x, %bb.m ] ; 2 uses
  call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory14MemoryPoolImpl14MemoryPoolDumpESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS5_16wrapExceptionDbgERKNS3_17VeloxRuntimeErrorEE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.06.i.i.i.i)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 40 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.i
  br i1 %i.aa, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory14MemoryPoolImpl14MemoryPoolDumpESt6vectorIS6_SaIS6_EEEEZNKS5_16wrapExceptionDbgERKNS3_17VeloxRuntimeErrorEE3$_0EvT_SG_T0_.exit", label %.lr.ph.i.i.i.i, !llvm.loop !450

bb.n:                                             ; preds = %bb.l
  call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory14MemoryPoolImpl14MemoryPoolDumpESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS5_16wrapExceptionDbgERKNS3_17VeloxRuntimeErrorEE3$_0EEEvT_SJ_T0_"(ptr %i.g, ptr %i.i)
  br label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory14MemoryPoolImpl14MemoryPoolDumpESt6vectorIS6_SaIS6_EEEEZNKS5_16wrapExceptionDbgERKNS3_17VeloxRuntimeErrorEE3$_0EvT_SG_T0_.exit"

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory14MemoryPoolImpl14MemoryPoolDumpESt6vectorIS6_SaIS6_EEEEZNKS5_16wrapExceptionDbgERKNS3_17VeloxRuntimeErrorEE3$_0EvT_SG_T0_.exit": ; preds = %.lr.ph.i.i.i.i, %bb.n, %bb.m
  %i.ab = load ptr, ptr %8, align 8, !tbaa !448   ; 2 uses
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !448 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory14MemoryPoolImpl14MemoryPoolDumpESt6vectorIS6_SaIS6_EEEEZNKS5_16wrapExceptionDbgERKNS3_17VeloxRuntimeErrorEE3$_0EvT_SG_T0_.exit"
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34
  %.sroa.061.066 = phi ptr [ %i.ab, %.lr.ph ], [ %i.ak, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34 ] ; 3 uses
  %i.af = load ptr, ptr %.sroa.061.066, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.061.066, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !21
  %i.ai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef %i.af, i64 noundef %i.ah)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.p

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.o
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.115, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34 unwind label %bb.p ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.061.066, i64 40 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.ac
  br i1 %i.al, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, label %bb.o

bb.p:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.o
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34, %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory14MemoryPoolImpl14MemoryPoolDumpESt6vectorIS6_SaIS6_EEEEZNKS5_16wrapExceptionDbgERKNS3_17VeloxRuntimeErrorEE3$_0EvT_SG_T0_.exit", %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !445 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !451)
  call void @llvm.experimental.noalias.scope.decl(metadata !454)
  %i.aq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.aq, ptr %11, align 8, !tbaa !26, !alias.scope !457
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store i64 0, ptr %i.ar, align 8, !tbaa !21, !alias.scope !457
  store i8 0, ptr %i.aq, align 8, !tbaa !22, !alias.scope !457
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !458, !noalias !457 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.at, null
  br i1 %.not5.i.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %13 = getelementptr inbounds nuw i8, ptr %9, i64 48
  %14 = load ptr, ptr %13, align 8, !noalias !457 ; 2 uses
  %15 = icmp ugt ptr %i.at, %14
  %.08.i.i.i = select i1 %15, ptr %i.at, ptr %14
  %i.au = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !462, !noalias !457 ; 2 uses
  %i.aw = ptrtoint ptr %.08.i.i.i to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef %i.av, i64 noundef %i.ay)
          to label %.noexc29 unwind label %bb.r   ; 0 uses

bb.r:                                             ; preds = %bb.s, %bb.q
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %11, align 8, !tbaa !16, !alias.scope !457 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.aq
  br i1 %i.bc, label %.body, label %.body.sink.split

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.bd)
          to label %.noexc29 unwind label %bb.r

.noexc29:                                         ; preds = %bb.s, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29, !noalias !463
  %i.be = load ptr, ptr %i.ap, align 8, !tbaa !16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 112
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !21
  store ptr %i.be, ptr %7, align 16, !tbaa !22
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !22
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bj = load ptr, ptr %11, align 8, !tbaa !16
  %i.bk = load i64, ptr %i.ar, align 8, !tbaa !21
  store ptr %i.bj, ptr %i.bi, align 16, !tbaa !22
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !22
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.116, i64 41, i64 221, ptr nonnull %7)
          to label %bb.t unwind label %bb.af

bb.t:                                             ; preds = %.noexc29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29, !noalias !463
  %i.bm = load ptr, ptr %11, align 8, !tbaa !16   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.aq
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.t
  %i.bo = load i64, ptr %i.aq, align 8, !tbaa !22
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.bq = load ptr, ptr %i.an, align 8, !tbaa !445 ; 10 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !466
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !476
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !477
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 80
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !21
  %i.cb = load ptr, ptr %10, align 8, !tbaa !16
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !21
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bq, i64 176
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 184
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !21
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bq, i64 272
  %i.cj = load i8, ptr %i.ci, align 8, !tbaa !478, !range !71, !noundef !72
  %i.ck = trunc nuw i8 %i.cj to i1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %i.co, ptr %4, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.cm, ptr %.sroa.2.0..sroa_idx, align 8
  store i64 %i.ch, ptr %5, align 8
  %.sroa.255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.cf, ptr %.sroa.255.0..sroa_idx, align 8
  store i64 %i.cd, ptr %6, align 8
  %.sroa.259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.cb, ptr %.sroa.259.0..sroa_idx, align 8
  store i64 7, ptr %3, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @_ZN8facebook5velox12error_source19kErrorSourceRuntimeE, ptr %i.cp, align 8
  invoke void @_ZN8facebook5velox14VeloxExceptionC2EPKcmS3_St17basic_string_viewIcSt11char_traitsIcEES7_S7_S7_bNS1_4TypeES7_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef %i.bs, i64 noundef %i.bu, ptr noundef %i.bw, i64 %i.ca, ptr %i.by, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %6, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %3, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %5, i1 noundef zeroext %i.ck, i32 noundef 1, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %4)
          to label %bb.u unwind label %bb.ag

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox17VeloxRuntimeErrorE, i64 16), ptr %12, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.cq = call ptr @__cxa_allocate_exception(i64 noundef 24) #29, !noalias !479 ; 5 uses
  %i.cr = call ptr @__cxa_init_primary_exception(ptr noundef %i.cq, ptr noundef nonnull @_ZTIN8facebook5velox17VeloxRuntimeErrorE, ptr noundef nonnull @_ZNSt15__exception_ptr12__dest_thunkIN8facebook5velox17VeloxRuntimeErrorEEEvPv) #29, !noalias !479 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox14VeloxExceptionE, i64 16), ptr %i.cq, align 8, !tbaa !24, !noalias !479
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !66, !noalias !479 ; 2 uses
  %i.cw = load <2 x ptr>, ptr %i.ct, align 8, !tbaa !67, !noalias !479
  store <2 x ptr> %i.cw, ptr %i.cs, align 8, !tbaa !67, !noalias !479
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt18make_exception_ptrIN8facebook5velox17VeloxRuntimeErrorEENSt15__exception_ptr13exception_ptrET_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 3 uses
  %i.cy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22, !noalias !479
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.cy, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !3, !noalias !479
  %i.da = add nsw i32 %i.cz, 1
  store i32 %i.da, ptr %i.cx, align 4, !tbaa !3, !noalias !479
  br label %_ZSt18make_exception_ptrIN8facebook5velox17VeloxRuntimeErrorEENSt15__exception_ptr13exception_ptrET_.exit

bb.x:                                             ; preds = %bb.v
  %i.db = atomicrmw volatile add ptr %i.cx, i32 1 acq_rel, align 4, !noalias !479 ; 0 uses
  br label %_ZSt18make_exception_ptrIN8facebook5velox17VeloxRuntimeErrorEENSt15__exception_ptr13exception_ptrET_.exit

_ZSt18make_exception_ptrIN8facebook5velox17VeloxRuntimeErrorEENSt15__exception_ptr13exception_ptrET_.exit: ; preds = %bb.u, %bb.w, %bb.x
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox17VeloxRuntimeErrorE, i64 16), ptr %i.cq, align 8, !tbaa !24, !noalias !479
  call void @_ZNSt15__exception_ptr13exception_ptrC1EPv(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.cq) #29
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8facebook5velox14VeloxExceptionE, i64 16), ptr %12, align 8, !tbaa !24
  %i.dc = load ptr, ptr %i.cu, align 8, !tbaa !66 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i, label %_ZN8facebook5velox14VeloxExceptionD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZSt18make_exception_ptrIN8facebook5velox17VeloxRuntimeErrorEENSt15__exception_ptr13exception_ptrET_.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 4 uses
  %i.de = load atomic i64, ptr %i.dd acquire, align 8 ; 2 uses
  %i.df = icmp eq i64 %i.de, 4294967297
  %i.dg = trunc i64 %i.de to i32                  ; 2 uses
  br i1 %i.df, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.dd, align 8, !tbaa !96
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  store i32 0, ptr %i.dh, align 4, !tbaa !98
  %i.di = load ptr, ptr %i.dc, align 8, !tbaa !24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #29, !inline_history !482
  %i.dl = load ptr, ptr %i.dc, align 8, !tbaa !24
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #29, !inline_history !482
  br label %_ZN8facebook5velox14VeloxExceptionD2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.do = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i = icmp eq i8 %i.do, 0
  br i1 %.not.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dp = add nsw i32 %i.dg, -1
  store i32 %i.dp, ptr %i.dd, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.dq = atomicrmw volatile add ptr %i.dd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i = phi i32 [ %i.dg, %bb.ab ], [ %i.dq, %bb.ac ]
  %i.dr = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.dr, label %bb.ad, label %_ZN8facebook5velox14VeloxExceptionD2Ev.exit, !prof !27

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dc) #29, !inline_history !483
  br label %_ZN8facebook5velox14VeloxExceptionD2Ev.exit

_ZN8facebook5velox14VeloxExceptionD2Ev.exit:      ; preds = %_ZSt18make_exception_ptrIN8facebook5velox17VeloxRuntimeErrorEENSt15__exception_ptr13exception_ptrET_.exit, %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ad
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %12) #29, !inline_history !483
  %i.ds = load ptr, ptr %10, align 8, !tbaa !16   ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %_ZN8facebook5velox14VeloxExceptionD2Ev.exit
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !22
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dw) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %_ZN8facebook5velox14VeloxExceptionD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.dx = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.dx, ptr %9, align 8, !tbaa !24
  %i.dy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.dz = getelementptr i8, ptr %i.dx, i64 -24
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox6memory14MemoryPoolImpl8toStringB5cxx11Eb:bb.a
  %.sroa.speculated = call i64 @llvm.smax.i64(i64 %i.gp, i64 0)
  br label %_ZNK8facebook5velox6memory14MemoryPoolImpl26availableReservationLockedEv.exit

_ZNK8facebook5velox6memory14MemoryPoolImpl26availableReservationLockedEv.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107, %bb.an
  %i.gq = phi i64 [ %.sroa.speculated, %bb.an ], [ 0, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit107 ]
  invoke void @_ZN8facebook5velox13succinctBytesB5cxx11Emi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i64 noundef %i.gq, i32 noundef 2)
          to label %bb.ao unwind label %bb.ax, !noalias !503

bb.ao:                                            ; preds = %_ZNK8facebook5velox6memory14MemoryPoolImpl26availableReservationLockedEv.exit
  %i.gr = load ptr, ptr %11, align 8, !tbaa !16, !noalias !503
  %i.gs = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !21, !noalias !503
  %i.gu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gh, ptr noundef %i.gr, i64 noundef %i.gt)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit109 unwind label %bb.ay ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit109: ; preds = %bb.ao
  %i.gv = load ptr, ptr %11, align 8, !tbaa !16, !noalias !503 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.gx = icmp eq ptr %i.gv, %i.gw
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit109
  %i.gy = load i64, ptr %i.gw, align 8, !tbaa !22, !noalias !503
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gz) #44, !noalias !503
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29, !noalias !503
  %i.ha = load ptr, ptr %10, align 8, !tbaa !16, !noalias !503 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.hc = icmp eq ptr %i.ha, %i.hb
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112
  %i.hd = load i64, ptr %i.hb, align 8, !tbaa !22, !noalias !503
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.he) #44, !noalias !503
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29, !noalias !503
  %i.hf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.164, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29, !noalias !503
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !217, !noalias !503
  invoke void @_ZN8facebook5velox13succinctBytesB5cxx11Emi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, i64 noundef %i.hh, i32 noundef 2)
          to label %bb.ap unwind label %bb.ba, !noalias !503

bb.ap:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117
  %i.hi = load ptr, ptr %12, align 8, !tbaa !16, !noalias !503
  %i.hj = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !21, !noalias !503
  %i.hl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.hi, i64 noundef %i.hk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit119 unwind label %bb.bb ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit119: ; preds = %bb.ap
  %i.hm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hl, ptr noundef nonnull @.str.165, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121 unwind label %bb.bb ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit119
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29, !noalias !503
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !289, !noalias !503
  invoke void @_ZN8facebook5velox13succinctBytesB5cxx11Emi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, i64 noundef %i.ho, i32 noundef 2)
          to label %bb.aq unwind label %bb.bc, !noalias !503

bb.aq:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121
  %i.hp = load ptr, ptr %13, align 8, !tbaa !16, !noalias !503
  %i.hq = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !21, !noalias !503
  %i.hs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hl, ptr noundef %i.hp, i64 noundef %i.hr)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit123 unwind label %bb.bd ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit123: ; preds = %bb.aq
  %i.ht = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hs, ptr noundef nonnull @.str.166, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit125 unwind label %bb.bd ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit125: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit123
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29, !noalias !503
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !240, !noalias !503
  invoke void @_ZN8facebook5velox13succinctBytesB5cxx11Emi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, i64 noundef %i.hv, i32 noundef 2)
          to label %bb.ar unwind label %bb.be, !noalias !503

bb.ar:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit125
  %i.hw = load ptr, ptr %14, align 8, !tbaa !16, !noalias !503
  %i.hx = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !21, !noalias !503
  %i.hz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hs, ptr noundef %i.hw, i64 noundef %i.hy)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit127 unwind label %bb.bf ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit127: ; preds = %bb.ar
  %i.ia = load ptr, ptr %14, align 8, !tbaa !16, !noalias !503 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ic = icmp eq ptr %i.ia, %i.ib
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit127
  %i.id = load i64, ptr %i.ib, align 8, !tbaa !22, !noalias !503
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.ie) #44, !noalias !503
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit127, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29, !noalias !503
  %i.if = load ptr, ptr %13, align 8, !tbaa !16, !noalias !503 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130
  %i.ii = load i64, ptr %i.ig, align 8, !tbaa !22, !noalias !503
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ij) #44, !noalias !503
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29, !noalias !503
  %i.ik = load ptr, ptr %12, align 8, !tbaa !16, !noalias !503 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.im = icmp eq ptr %i.ik, %i.il
  br i1 %i.im, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  %i.in = load i64, ptr %i.il, align 8, !tbaa !22, !noalias !503
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.io) #44, !noalias !503
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29, !noalias !503
  %i.ip = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.167, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit138 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit138: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit136
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.ir = load atomic i64, ptr %i.iq seq_cst, align 8, !noalias !503
  %i.is = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.ir)
          to label %_ZNSolsEm.exit unwind label %bb.s ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit138
  %i.it = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.is, ptr noundef nonnull @.str.168, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit141 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit141: ; preds = %_ZNSolsEm.exit
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.iv = load atomic i64, ptr %i.iu seq_cst, align 8, !noalias !503
  %i.iw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.is, i64 noundef %i.iv)
          to label %_ZNSolsEm.exit143 unwind label %bb.s ; 2 uses

_ZNSolsEm.exit143:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit141
  %i.ix = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.iw, ptr noundef nonnull @.str.169, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit145 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit145: ; preds = %_ZNSolsEm.exit143
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.iz = load atomic i64, ptr %i.iy seq_cst, align 8, !noalias !503
  %i.ja = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.iw, i64 noundef %i.iz)
          to label %_ZNSolsEm.exit147 unwind label %bb.s ; 2 uses

_ZNSolsEm.exit147:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit145
  %i.jb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ja, ptr noundef nonnull @.str.170, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit149 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit149: ; preds = %_ZNSolsEm.exit147
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.jd = load atomic i64, ptr %i.jc seq_cst, align 8, !noalias !503
  %i.je = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ja, i64 noundef %i.jd)
          to label %_ZNSolsEm.exit151 unwind label %bb.s ; 2 uses

_ZNSolsEm.exit151:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit149
  %i.jf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.je, ptr noundef nonnull @.str.171, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153: ; preds = %_ZNSolsEm.exit151
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.jh = load atomic i64, ptr %i.jg seq_cst, align 8, !noalias !503
  %i.ji = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.je, i64 noundef %i.jh)
          to label %_ZNSolsEm.exit155 unwind label %bb.s

_ZNSolsEm.exit155:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit153
  %i.jj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ji, ptr noundef nonnull @.str.172, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit157 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit157: ; preds = %_ZNSolsEm.exit155
  %i.jk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull @.str.173, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit159 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit159: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit157
  call void @llvm.experimental.noalias.scope.decl(metadata !512)
  call void @llvm.experimental.noalias.scope.decl(metadata !515)
  %i.jl = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 10 uses
  store ptr %i.jl, ptr %15, align 8, !tbaa !26, !alias.scope !518
  %i.jm = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 6 uses
  store i64 0, ptr %i.jm, align 8, !tbaa !21, !alias.scope !518
  store i8 0, ptr %i.jl, align 8, !tbaa !22, !alias.scope !518
  %i.jn = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !458, !noalias !518 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.jo, null
  br i1 %.not5.i.i, label %bb.au, label %bb.as

bb.as:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit159
  %20 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %21 = load ptr, ptr %20, align 8, !noalias !518 ; 2 uses
  %22 = icmp ugt ptr %i.jo, %21
  %.08.i.i.i = select i1 %22, ptr %i.jo, ptr %21
  %i.jp = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !462, !noalias !518 ; 2 uses
  %i.jr = ptrtoint ptr %.08.i.i.i to i64
  %i.js = ptrtoint ptr %i.jq to i64
  %i.jt = sub i64 %i.jr, %i.js
  %i.ju = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef 0, ptr noundef %i.jq, i64 noundef %i.jt)
          to label %_ZNK8facebook5velox6memory14MemoryPoolImpl14toStringLockedB5cxx11Ev.exit unwind label %bb.at ; 0 uses

bb.at:                                            ; preds = %bb.au, %bb.as
  %i.jv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jw = load ptr, ptr %15, align 8, !tbaa !16, !alias.scope !518 ; 2 uses
  %i.jx = icmp eq ptr %i.jw, %i.jl
  br i1 %i.jx, label %.body161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.at
  %i.jy = load i64, ptr %i.jl, align 8, !tbaa !22, !alias.scope !518
  %i.jz = add i64 %i.jy, 1
  call void @_ZdlPvm(ptr noundef %i.jw, i64 noundef %i.jz) #44
  br label %.body161

bb.au:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit159
  %i.ka = getelementptr inbounds nuw i8, ptr %4, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %i.ka)
          to label %_ZNK8facebook5velox6memory14MemoryPoolImpl14toStringLockedB5cxx11Ev.exit unwind label %bb.at

bb.av:                                            ; preds = %bb.al, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit103
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

bb.aw:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit105, %bb.am
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ax:                                            ; preds = %_ZNK8facebook5velox6memory14MemoryPoolImpl26availableReservationLockedEv.exit
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

bb.ay:                                            ; preds = %bb.ao
  %i.ke = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kf = load ptr, ptr %11, align 8, !tbaa !16, !noalias !503 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.kh = icmp eq ptr %i.kf, %i.kg
  br i1 %i.kh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163: ; preds = %bb.ay
  %i.ki = load i64, ptr %i.kg, align 8, !tbaa !22, !noalias !503
  %i.kj = add i64 %i.ki, 1
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.kj) #44, !noalias !503
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163, %bb.ax
  %.pn38.i = phi { ptr, i32 } [ %i.kd, %bb.ax ], [ %i.ke, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163 ], [ %i.ke, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29, !noalias !503
  br label %bb.az

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, %bb.aw
  %.pn38.pn.i = phi { ptr, i32 } [ %.pn38.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165 ], [ %i.kc, %bb.aw ] ; 2 uses
  %i.kk = load ptr, ptr %10, align 8, !tbaa !16, !noalias !503 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.km = icmp eq ptr %i.kk, %i.kl
  br i1 %i.km, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166: ; preds = %bb.az
  %i.kn = load i64, ptr %i.kl, align 8, !tbaa !22, !noalias !503
  %i.ko = add i64 %i.kn, 1
  call void @_ZdlPvm(ptr noundef %i.kk, i64 noundef %i.ko) #44, !noalias !503
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166, %bb.av
  %.pn38.pn.pn.i = phi { ptr, i32 } [ %i.kb, %bb.av ], [ %.pn38.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166 ], [ %.pn38.pn.i, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29, !noalias !503
  br label %.body161

bb.ba:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit117
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

bb.bb:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit119, %bb.ap
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bc:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit121
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

bb.bd:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit123, %bb.aq
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.be:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit125
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

bb.bf:                                            ; preds = %bb.ar
  %i.ku = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kv = load ptr, ptr %14, align 8, !tbaa !16, !noalias !503 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.kx = icmp eq ptr %i.kv, %i.kw
  br i1 %i.kx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169: ; preds = %bb.bf
  %i.ky = load i64, ptr %i.kw, align 8, !tbaa !22, !noalias !503
  %i.kz = add i64 %i.ky, 1
  call void @_ZdlPvm(ptr noundef %i.kv, i64 noundef %i.kz) #44, !noalias !503
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169, %bb.be
  %.pn42.i = phi { ptr, i32 } [ %i.kt, %bb.be ], [ %i.ku, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169 ], [ %i.ku, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29, !noalias !503
  br label %bb.bg

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, %bb.bd
  %.pn42.pn.i = phi { ptr, i32 } [ %.pn42.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171 ], [ %i.ks, %bb.bd ] ; 2 uses
  %i.la = load ptr, ptr %13, align 8, !tbaa !16, !noalias !503 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.lc = icmp eq ptr %i.la, %i.lb
  br i1 %i.lc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %bb.bg
  %i.ld = load i64, ptr %i.lb, align 8, !tbaa !22, !noalias !503
  %i.le = add i64 %i.ld, 1
  call void @_ZdlPvm(ptr noundef %i.la, i64 noundef %i.le) #44, !noalias !503
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172, %bb.bc
  %.pn42.pn.pn.i = phi { ptr, i32 } [ %i.kr, %bb.bc ], [ %.pn42.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172 ], [ %.pn42.pn.i, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29, !noalias !503
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, %bb.bb
  %.pn42.pn.pn.pn.i = phi { ptr, i32 } [ %.pn42.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174 ], [ %i.kq, %bb.bb ] ; 2 uses
  %i.lf = load ptr, ptr %12, align 8, !tbaa !16, !noalias !503 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.lh = icmp eq ptr %i.lf, %i.lg
  br i1 %i.lh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %bb.bh
  %i.li = load i64, ptr %i.lg, align 8, !tbaa !22, !noalias !503
  %i.lj = add i64 %i.li, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.lj) #44, !noalias !503
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175, %bb.ba
  %.pn42.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.kp, %bb.ba ], [ %.pn42.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175 ], [ %.pn42.pn.pn.pn.i, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29, !noalias !503
  br label %.body161

.body161:                                         ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82
  %.pn48.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82 ], [ %.pn42.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177 ], [ %.pn38.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168 ], [ %.pn36.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %.pn33.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85 ], [ %i.dq, %bb.s ], [ %i.jv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.jv, %bb.at ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29, !noalias !503
  br label %.body

_ZNK8facebook5velox6memory14MemoryPoolImpl14toStringLockedB5cxx11Ev.exit: ; preds = %bb.au, %bb.as
  %i.lk = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.lk, ptr %4, align 8, !tbaa !24
  %i.ll = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.lm = getelementptr i8, ptr %i.lk, i64 -24
  %i.ln = load i64, ptr %i.lm, align 8
  %i.lo = getelementptr inbounds i8, ptr %4, i64 %i.ln
  store ptr %i.ll, ptr %i.lo, align 8, !tbaa !24
  %i.lp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.lp, ptr %i.e, align 8, !tbaa !24
  %i.lq = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.lq, align 8, !tbaa !24
  %i.lr = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !16 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %i.lu = icmp eq ptr %i.ls, %i.lt
  br i1 %i.lu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNK8facebook5velox6memory14MemoryPoolImpl14toStringLockedB5cxx11Ev.exit
  %i.lv = load i64, ptr %i.lt, align 8, !tbaa !22
  %i.lw = add i64 %i.lv, 1
  call void @_ZdlPvm(ptr noundef %i.ls, i64 noundef %i.lw) #44
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNK8facebook5velox6memory14MemoryPoolImpl14toStringLockedB5cxx11Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.lq, align 8, !tbaa !24
  %i.lx = getelementptr inbounds nuw i8, ptr %4, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.lx) #29
  %i.ly = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ly, ptr %4, align 8, !tbaa !24
  %i.lz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ma = getelementptr i8, ptr %i.ly, i64 -24
  %i.mb = load i64, ptr %i.ma, align 8
  %i.mc = getelementptr inbounds i8, ptr %4, i64 %i.mb
  store ptr %i.lz, ptr %i.mc, align 8, !tbaa !24
  %i.md = getelementptr inbounds nuw i8, ptr %4, i64 8
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox6memory14MemoryPoolImpl15treeMemoryUsageB5cxx11Eb:bb.a

bb.an:                                            ; preds = %_ZN8facebook5velox6memory12_GLOBAL__N_111MemoryUsageD2Ev.exit83, %bb.aj
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN8facebook5velox6memory12_GLOBAL__N_111MemoryUsageD2Ev.exit83 ], [ %i.fc, %bb.aj ]
  %i.fp = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.l) #29 ; 0 uses
  br label %bb.bv

bb.ao:                                            ; preds = %_ZN8facebook5velox6memory12_GLOBAL__N_111MemoryUsageD2Ev.exit
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit85

bb.ap:                                            ; preds = %bb.n
  %i.fr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fs = load ptr, ptr %i.bp, align 8, !tbaa !81 ; 2 uses
  %.not.i84 = icmp eq ptr %i.fs, null
  br i1 %.not.i84, label %_ZNSt14_Function_baseD2Ev.exit85, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ft = invoke noundef zeroext i1 %i.fs(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit85 unwind label %bb.ar ; 0 uses

bb.ar:                                            ; preds = %bb.aq
  %i.fu = landingpad { ptr, i32 }
          catch ptr null
  %i.fv = extractvalue { ptr, i32 } %i.fu, 0
  call void @__clang_call_terminate(ptr %i.fv) #47
  unreachable

_ZNSt14_Function_baseD2Ev.exit85:                 ; preds = %bb.aq, %bb.ap, %bb.ao
  %.pn29 = phi { ptr, i32 } [ %i.fq, %bb.ao ], [ %i.fr, %bb.ap ], [ %i.fr, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.bu

bb.as:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.at:                                            ; preds = %_ZNSolsEm.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit70, %bb.s
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.au:                                            ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
  %.sroa.0147.0162 = phi ptr [ %.val47, %.lr.ph ], [ %i.gl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  store ptr %i.eu, ptr %11, align 8, !tbaa !26
  store i32 538976288, ptr %i.eu, align 8
  store i64 4, ptr %i.ev, align 8, !tbaa !21
  store i8 0, ptr %i.ew, align 4, !tbaa !22
  %i.fy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef nonnull %i.eu, i64 noundef 4)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit87 unwind label %bb.aw

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit87: ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  invoke fastcc void @_ZNK8facebook5velox6memory12_GLOBAL__N_111MemoryUsage8toStringB5cxx11Ev(ptr dead_on_unwind noalias writable align 8 %12, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0147.0162)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit87
  %i.fz = load ptr, ptr %12, align 8, !tbaa !16
  %i.ga = load i64, ptr %i.ex, align 8, !tbaa !21
  %i.gb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fy, ptr noundef %i.fz, i64 noundef %i.ga)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit89 unwind label %bb.ay

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit89: ; preds = %bb.av
  %i.gc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gb, ptr noundef nonnull @.str.74, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91 unwind label %bb.ay ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit89
  %i.gd = load ptr, ptr %12, align 8, !tbaa !16   ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.ey
  br i1 %i.ge, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91
  %i.gf = load i64, ptr %i.ey, align 8, !tbaa !22
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gd, i64 noundef %i.gg) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  %i.gh = load ptr, ptr %11, align 8, !tbaa !16   ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.eu
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.gj = load i64, ptr %i.eu, align 8, !tbaa !22
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gk) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0147.0162, i64 56 ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %.val
  br i1 %i.gm, label %._crit_edge, label %bb.au

bb.aw:                                            ; preds = %bb.au
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ax:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit87
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

bb.ay:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit89, %bb.av
  %i.gp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gq = load ptr, ptr %12, align 8, !tbaa !16   ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.ey
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %bb.ay
  %i.gs = load i64, ptr %i.ey, align 8, !tbaa !22
  %i.gt = add i64 %i.gs, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gt) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98, %bb.ax
  %.pn31 = phi { ptr, i32 } [ %i.go, %bb.ax ], [ %i.gp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98 ], [ %i.gp, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %bb.az

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %bb.aw
  %.pn31.pn = phi { ptr, i32 } [ %.pn31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ], [ %i.gn, %bb.aw ]
  %i.gu = load ptr, ptr %11, align 8, !tbaa !16   ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.eu
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %bb.az
  %i.gw = load i64, ptr %i.eu, align 8, !tbaa !22
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gx) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %.body

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77: ; preds = %._crit_edge
  br i1 %i.ez, label %_ZSt8_DestroyIPN8facebook5velox6memory12_GLOBAL__N_111MemoryUsageES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i104

.lr.ph.i.i.i104:                                  ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77, %_ZSt8_DestroyIN8facebook5velox6memory12_GLOBAL__N_111MemoryUsageEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.hd, %_ZSt8_DestroyIN8facebook5velox6memory12_GLOBAL__N_111MemoryUsageEEvPT_.exit.i.i.i ], [ %.val47238, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77 ] ; 3 uses
  %i.gy = load ptr, ptr %.05.i.i.i, align 8, !tbaa !16 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ha = icmp eq ptr %i.gy, %i.gz
  br i1 %i.ha, label %_ZSt8_DestroyIN8facebook5velox6memory12_GLOBAL__N_111MemoryUsageEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i105: ; preds = %.lr.ph.i.i.i104
  %i.hb = load i64, ptr %i.gz, align 8, !tbaa !22
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hc) #44
  br label %_ZSt8_DestroyIN8facebook5velox6memory12_GLOBAL__N_111MemoryUsageEEvPT_.exit.i.i.i

_ZSt8_DestroyIN8facebook5velox6memory12_GLOBAL__N_111MemoryUsageEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i105
  %i.hd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i106 = icmp eq ptr %i.hd, %.val237
  br i1 %.not.i.i.i106, label %_ZSt8_DestroyIPN8facebook5velox6memory12_GLOBAL__N_111MemoryUsageES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i104, !llvm.loop !544

_ZSt8_DestroyIPN8facebook5velox6memory12_GLOBAL__N_111MemoryUsageES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN8facebook5velox6memory12_GLOBAL__N_111MemoryUsageEEvPT_.exit.i.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77
  %.not.i.i2.i = icmp eq ptr %.val47238, null
  br i1 %.not.i.i2.i, label %_ZNSt6vectorIN8facebook5velox6memory12_GLOBAL__N_111MemoryUsageESaIS4_EED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZSt8_DestroyIPN8facebook5velox6memory12_GLOBAL__N_111MemoryUsageES4_EvT_S6_RSaIT0_E.exit.i
  %.val1.i = load ptr, ptr %i.cp, align 8, !tbaa !541
  %i.he = ptrtoint ptr %.val1.i to i64
  %i.hf = ptrtoint ptr %.val47238 to i64
  %i.hg = sub i64 %i.he, %i.hf
  call void @_ZdlPvm(ptr noundef nonnull %.val47238, i64 noundef %i.hg) #44
  br label %_ZNSt6vectorIN8facebook5velox6memory12_GLOBAL__N_111MemoryUsageESaIS4_EED2Ev.exit

_ZNSt6vectorIN8facebook5velox6memory12_GLOBAL__N_111MemoryUsageESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN8facebook5velox6memory12_GLOBAL__N_111MemoryUsageES4_EvT_S6_RSaIT0_E.exit.i, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.bc

bb.bb:                                            ; preds = %._crit_edge
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %bb.bb, %.loopexit.i, %.loopexit.split-lp.i
  %.pn31.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %.pn31.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103 ], [ %i.hh, %bb.bb ]
  call fastcc void @_ZNSt6vectorIN8facebook5velox6memory12_GLOBAL__N_111MemoryUsageESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.bs

bb.bc:                                            ; preds = %_ZNSt6vectorIN8facebook5velox6memory12_GLOBAL__N_111MemoryUsageESaIS4_EED2Ev.exit, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !545)
  call void @llvm.experimental.noalias.scope.decl(metadata !548)
  %i.hi = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 7 uses
  store ptr %i.hi, ptr %14, align 8, !tbaa !26, !alias.scope !551
  %i.hj = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.hj, align 8, !tbaa !21, !alias.scope !551
  store i8 0, ptr %i.hi, align 8, !tbaa !22, !alias.scope !551
  %i.hk = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !458, !noalias !551 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.hl, null
  br i1 %.not5.i.i, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %16 = getelementptr inbounds nuw i8, ptr %9, i64 48
  %17 = load ptr, ptr %16, align 8, !noalias !551 ; 2 uses
  %18 = icmp ugt ptr %i.hl, %17
  %.08.i.i.i = select i1 %18, ptr %i.hl, ptr %17
  %i.hm = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !462, !noalias !551 ; 2 uses
  %i.ho = ptrtoint ptr %.08.i.i.i to i64
  %i.hp = ptrtoint ptr %i.hn to i64
  %i.hq = sub i64 %i.ho, %i.hp
  %i.hr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef 0, i64 noundef 0, ptr noundef %i.hn, i64 noundef %i.hq)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.be ; 0 uses

bb.be:                                            ; preds = %bb.bf, %bb.bd
  %i.hs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ht = load ptr, ptr %14, align 8, !tbaa !16, !alias.scope !551 ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.hi
  br i1 %i.hu, label %.body109, label %.body109.sink.split

bb.bf:                                            ; preds = %bb.bc
  %i.hv = getelementptr inbounds nuw i8, ptr %9, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.hv)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.be

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.bf, %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !552)
  call void @llvm.experimental.noalias.scope.decl(metadata !555)
  %i.hw = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 7 uses
  store ptr %i.hw, ptr %15, align 8, !tbaa !26, !alias.scope !558
  %i.hx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.hx, align 8, !tbaa !21, !alias.scope !558
  store i8 0, ptr %i.hw, align 8, !tbaa !22, !alias.scope !558
  %i.hy = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !458, !noalias !558 ; 3 uses
  %.not5.i.i113 = icmp eq ptr %i.hz, null
  br i1 %.not5.i.i113, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %19 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %20 = load ptr, ptr %19, align 8, !noalias !558 ; 2 uses
  %21 = icmp ugt ptr %i.hz, %20
  %.08.i.i.i111 = select i1 %21, ptr %i.hz, ptr %20
  %i.ia = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !462, !noalias !558 ; 2 uses
  %i.ic = ptrtoint ptr %.08.i.i.i111 to i64
  %i.id = ptrtoint ptr %i.ib to i64
  %i.ie = sub i64 %i.ic, %i.id
  %i.if = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 0, i64 noundef 0, ptr noundef %i.ib, i64 noundef %i.ie)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit120 unwind label %bb.bh ; 0 uses

bb.bh:                                            ; preds = %bb.bi, %bb.bg
  %i.ig = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ih = load ptr, ptr %15, align 8, !tbaa !16, !alias.scope !558 ; 2 uses
  %i.ii = icmp eq ptr %i.ih, %i.hw
  br i1 %i.ii, label %.body118, label %.body118.sink.split

bb.bi:                                            ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ij = getelementptr inbounds nuw i8, ptr %4, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %i.ij)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit120 unwind label %bb.bh

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit120: ; preds = %bb.bi, %bb.bg
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.bj unwind label %bb.bq

bb.bj:                                            ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit120
  call void @llvm.experimental.noalias.scope.decl(metadata !559)
  %i.ik = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 5 uses
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !21, !noalias !559 ; 5 uses
  %i.im = icmp eq i64 %i.il, 9223372036854775807
  br i1 %i.im, label %bb.bk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.177) #45
          to label %.noexc123 unwind label %bb.br

.noexc123:                                        ; preds = %bb.bk
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.bj
  %i.in = add nsw i64 %i.il, 1                    ; 3 uses
  %i.io = load ptr, ptr %13, align 8, !tbaa !16, !noalias !559 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.iq = icmp eq ptr %i.io, %i.ip                ; 2 uses
  br i1 %i.iq, label %bb.bl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

bb.bl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ir = icmp ult i64 %i.il, 16
  call void @llvm.assume(i1 %i.ir)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.is = load i64, ptr %i.ip, align 8, !noalias !559
  %i.it = select i1 %i.iq, i64 15, i64 %i.is
  %.not.i.i.i121 = icmp ugt i64 %i.in, %i.it
  br i1 %.not.i.i.i121, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.iu = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.il
  store i8 10, ptr %i.iu, align 1, !tbaa !22, !noalias !559
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.bn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %i.il, i64 noundef 0, ptr noundef nonnull @.str.74, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i unwind label %bb.br

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.bn, %bb.bm
  store i64 %i.in, ptr %i.ik, align 8, !tbaa !21, !noalias !559
  %i.iv = load ptr, ptr %13, align 8, !tbaa !16, !noalias !559
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.in
  store i8 0, ptr %i.iw, align 1, !tbaa !22, !noalias !559
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ix, ptr %0, align 8, !tbaa !26, !alias.scope !559
  %i.iy = load ptr, ptr %13, align 8, !tbaa !16, !noalias !559 ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.ip
  br i1 %i.iz, label %bb.bo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ja = load i64, ptr %i.ik, align 8, !tbaa !21, !noalias !559 ; 3 uses
  %i.jb = icmp ult i64 %i.ja, 16
  call void @llvm.assume(i1 %i.jb)
  %i.jc = add nuw nsw i64 %i.ja, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ix, ptr noundef nonnull align 8 dereferenceable(1) %i.ip, i64 %i.jc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.iy, ptr %0, align 8, !tbaa !16, !alias.scope !559
  %i.jd = load i64, ptr %i.ip, align 8, !tbaa !22, !noalias !559
  store i64 %i.jd, ptr %i.ix, align 8, !tbaa !22, !alias.scope !559
  %.pre.i = load i64, ptr %i.ik, align 8, !tbaa !21, !noalias !559
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.a: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122, %bb.bo
  %i.je = phi i64 [ %i.ja, %bb.bo ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122 ]
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.je, ptr %i.jf, align 8, !tbaa !21, !alias.scope !559
  store ptr %i.ip, ptr %13, align 8, !tbaa !16, !noalias !559
  store i64 0, ptr %i.ik, align 8, !tbaa !21, !noalias !559
  store i8 0, ptr %i.ip, align 8, !tbaa !22, !noalias !559
  %i.jg = load ptr, ptr %15, align 8, !tbaa !16   ; 2 uses
  %i.jh = icmp eq ptr %i.jg, %i.hw
  br i1 %i.jh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128.a: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.a
  %i.ji = load i64, ptr %i.hw, align 8, !tbaa !22
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jg, i64 noundef %i.jj) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130.a: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i128.a
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  %i.jk = load ptr, ptr %14, align 8, !tbaa !16   ; 2 uses
  %i.jl = icmp eq ptr %i.jk, %i.hi
  br i1 %i.jl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130.a
  %i.jm = load i64, ptr %i.hi, align 8, !tbaa !22
  %i.jn = add i64 %i.jm, 1
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jn) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #29
  %i.jo = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 3 uses
  store ptr %i.jo, ptr %9, align 8, !tbaa !24
  %i.jp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8 ; 2 uses
  %i.jq = getelementptr i8, ptr %i.jo, i64 -24    ; 2 uses
  %i.jr = load i64, ptr %i.jq, align 8
  %i.js = getelementptr inbounds i8, ptr %9, i64 %i.jr
  store ptr %i.jp, ptr %i.js, align 8, !tbaa !24
  %i.jt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.jt, ptr %i.ju, align 8, !tbaa !24
  %i.jv = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.jv, align 8, !tbaa !24
  %i.jw = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !16 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 2 uses
  %i.jz = icmp eq ptr %i.jx, %i.jy
  br i1 %i.jz, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  %i.ka = load i64, ptr %i.jy, align 8, !tbaa !22
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.kb) #44
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.jv, align 8, !tbaa !24
  %i.kc = getelementptr inbounds nuw i8, ptr %9, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.kc) #29
  %i.kd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.kd, ptr %9, align 8, !tbaa !24
  %i.ke = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.kf = getelementptr i8, ptr %i.kd, i64 -24    ; 2 uses
  %i.kg = load i64, ptr %i.kf, align 8
  %i.kh = getelementptr inbounds i8, ptr %9, i64 %i.kg
  store ptr %i.ke, ptr %i.kh, align 8, !tbaa !24
  %i.ki = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.ki, align 8, !tbaa !484
  %i.kj = getelementptr inbounds nuw i8, ptr %9, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.kj) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %i.kk = load ptr, ptr %7, align 8, !tbaa !535   ; 3 uses
  %i.kl = load ptr, ptr %i.ca, align 8, !tbaa !537 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.kk, %i.kl
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN8facebook5velox6memory12_GLOBAL__N_111MemoryUsageES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZSt8_DestroyIN8facebook5velox6memory12_GLOBAL__N_111MemoryUsageEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.kr, %_ZSt8_DestroyIN8facebook5velox6memory12_GLOBAL__N_111MemoryUsageEEvPT_.exit.i.i.i.i ], [ %i.kk, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 3 uses
  %i.km = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !16 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.ko = icmp eq ptr %i.km, %i.kn
  br i1 %i.ko, label %_ZSt8_DestroyIN8facebook5velox6memory12_GLOBAL__N_111MemoryUsageEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.kp = load i64, ptr %i.kn, align 8, !tbaa !22
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %i.km, i64 noundef %i.kq) #44
  br label %_ZSt8_DestroyIN8facebook5velox6memory12_GLOBAL__N_111MemoryUsageEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN8facebook5velox6memory12_GLOBAL__N_111MemoryUsageEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.kr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.kr, %i.kl
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN8facebook5velox6memory12_GLOBAL__N_111MemoryUsageES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !544

_ZSt8_DestroyIPN8facebook5velox6memory12_GLOBAL__N_111MemoryUsageES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN8facebook5velox6memory12_GLOBAL__N_111MemoryUsageEEvPT_.exit.i.i.i.i
  %.val.pr.i.i = load ptr, ptr %7, align 8, !tbaa !535
  br label %_ZSt8_DestroyIPN8facebook5velox6memory12_GLOBAL__N_111MemoryUsageES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN8facebook5velox6memory12_GLOBAL__N_111MemoryUsageES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN8facebook5velox6memory12_GLOBAL__N_111MemoryUsageES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.val.i.i = phi ptr [ %.val.pr.i.i, %_ZSt8_DestroyIPN8facebook5velox6memory12_GLOBAL__N_111MemoryUsageES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.kk, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 3 uses
  %.not.i.i2.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i2.i.i, label %_ZNSt14priority_queueIN8facebook5velox6memory12_GLOBAL__N_111MemoryUsageESt6vectorIS4_SaIS4_EENS3_15MemoryUsageCompEED2Ev.exit, label %bb.bp

bb.bp:                                            ; preds = %_ZSt8_DestroyIPN8facebook5velox6memory12_GLOBAL__N_111MemoryUsageES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.ks = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.val1.i.i = load ptr, ptr %i.ks, align 8, !tbaa !541
  %i.kt = ptrtoint ptr %.val1.i.i to i64
  %i.ku = ptrtoint ptr %.val.i.i to i64
  %i.kv = sub i64 %i.kt, %i.ku
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i, i64 noundef %i.kv) #44
  br label %_ZNSt14priority_queueIN8facebook5velox6memory12_GLOBAL__N_111MemoryUsageESt6vectorIS4_SaIS4_EENS3_15MemoryUsageCompEED2Ev.exit
end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedB5cxx11Ev:bb.a
  br i1 %i.dr, label %bb.ae, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.us.i.i.i.i.i

bb.ae:                                            ; preds = %.split.us.i.i.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.us.i.i.i.i.i, i64 16
  %.val6.i.us.i.i.i.i.i = load i64, ptr %i.ds, align 8, !tbaa !21
  %i.dt = icmp eq i64 %.val6.i.us.i.i.i.i.i, 0
  br i1 %i.dt, label %.loopexit111, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.us.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.us.i.i.i.i.i: ; preds = %bb.ae, %.split.us.i.i.i.i.i
  %i.du = load ptr, ptr %.0.us.i.i.i.i.i, align 8, !tbaa !139 ; 3 uses
  %.not18.us.i.i.i.i.i = icmp eq ptr %i.du, null
  br i1 %.not18.us.i.i.i.i.i, label %.loopexit112, label %bb.af

bb.af:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.us.i.i.i.i.i
  %i.dv = getelementptr i8, ptr %i.du, i64 56
  %.val23.us.i.i.i.i.i = load i64, ptr %i.dv, align 8, !tbaa !611 ; 2 uses
  %i.dw = urem i64 %.val23.us.i.i.i.i.i, %.val15.i.i.i
  %.not19.us.i.i.i.i.i = icmp eq i64 %i.dw, %i.dm
  br i1 %.not19.us.i.i.i.i.i, label %.split.us.i.i.i.i.i, label %.loopexit112, !llvm.loop !613

.split.i.i.i.i.i:                                 ; preds = %bb.ad, %bb.ah
  %.val7.i.i.i.i.i.i = phi i64 [ %.val23.i.i.i.i.i, %bb.ah ], [ %.val7.i.us.pre.i.i.i.i.i, %bb.ad ]
  %.0.i.i.i.i.i = phi ptr [ %i.ec, %bb.ah ], [ %i.dp, %bb.ad ] ; 3 uses
  %i.dx = icmp eq i64 %i.dj, %.val7.i.i.i.i.i.i
  br i1 %i.dx, label %bb.ag, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i.i

bb.ag:                                            ; preds = %.split.i.i.i.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %.val6.i.i.i.i.i.i = load i64, ptr %i.dy, align 8, !tbaa !21
  %i.dz = icmp eq i64 %.8.val4.fr.i.i.i.i.i, %.val6.i.i.i.i.i.i
  br i1 %i.dz, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i.i: ; preds = %bb.ag
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 8
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.ea, align 8
  %bcmp.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr readonly %.val18.i.i.i, ptr readonly %.val5.i.i.i.i.i.i, i64 %.8.val4.fr.i.i.i.i.i)
  %i.eb = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.eb, label %.loopexit111, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i.i, %bb.ag, %.split.i.i.i.i.i
  %i.ec = load ptr, ptr %.0.i.i.i.i.i, align 8, !tbaa !139 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ec, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit112, label %bb.ah

bb.ah:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i.i
  %i.ed = getelementptr i8, ptr %i.ec, i64 56
  %.val23.i.i.i.i.i = load i64, ptr %i.ed, align 8, !tbaa !611 ; 2 uses
  %i.ee = urem i64 %.val23.i.i.i.i.i, %.val15.i.i.i
  %.not19.i.i.i.i.i = icmp eq i64 %i.ee, %i.dm
  br i1 %.not19.i.i.i.i.i, label %.split.i.i.i.i.i, label %.loopexit112, !llvm.loop !613

.loopexit112:                                     ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread23.i.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread23.us.i.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i.i.i, %bb.ah, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.us.i.i.i.i.i, %bb.af, %bb.aa, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i.i.i
  %i.ef = invoke fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %.loopexit112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, i8 0, i64 16, i1 false)
  br label %.loopexit111

.loopexit119:                                     ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

.loopexit.split-lp:                               ; preds = %.noexc.i64, %.noexc6.i63
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

bb.aj:                                            ; preds = %bb.al, %.loopexit111
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ak:                                            ; preds = %.loopexit112
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.loopexit111:                                     ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i, %.lr.ph.split.us.i.i.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i.i.i, %bb.ae, %bb.ai
  %i.ei = load i64, ptr %i.cl, align 8, !tbaa !311
  %i.ej = invoke fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.al unwind label %bb.aj     ; 2 uses

bb.al:                                            ; preds = %.loopexit111
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !614
  %i.el = add i64 %i.ek, %i.ei
  store i64 %i.el, ptr %i.ej, align 8, !tbaa !614
  %i.em = invoke fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.am unwind label %bb.aj

bb.am:                                            ; preds = %bb.al
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !616
  %i.ep = add i64 %i.eo, 1
  store i64 %i.ep, ptr %i.en, align 8, !tbaa !616
  %i.eq = load ptr, ptr %8, align 8, !tbaa !16    ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.al
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %bb.am
  %i.es = load i64, ptr %i.al, align 8, !tbaa !22
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %.sroa.0102.0 = load ptr, ptr %.sroa.0102.0138, align 8, !tbaa !139 ; 2 uses
  %i.eu = icmp eq ptr %.sroa.0102.0, null
  br i1 %i.eu, label %._crit_edge, label %bb.t

bb.an:                                            ; preds = %bb.ak, %bb.aj
  %.pn35 = phi { ptr, i32 } [ %i.eg, %bb.aj ], [ %i.eh, %bb.ak ] ; 2 uses
  %i.ev = load ptr, ptr %8, align 8, !tbaa !16    ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.al
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.an
  %i.ex = load i64, ptr %i.al, align 8, !tbaa !22
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %bb.an, %.loopexit119, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  %.pn35.pn = phi { ptr, i32 } [ %.pn35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit119 ], [ %.pn35, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.bb

.loopexit.thread:                                 ; preds = %._crit_edge, %._crit_edge.thread
  %i.ez = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr null, ptr %i.ez, align 8, !tbaa !617
  br label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEEZNKSC_20dumpRecordsDbgLockedEvE3$_0EvT_SL_T0_.exitthread-pre-split"

.loopexit:                                        ; preds = %bb.k
  %.val47.pre = load ptr, ptr %9, align 8, !tbaa !618 ; 7 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.bm, ptr %i.fa, align 8, !tbaa !617
  %i.fb = icmp eq ptr %.val47.pre, %i.bm
  br i1 %i.fb, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEEZNKSC_20dumpRecordsDbgLockedEvE3$_0EvT_SL_T0_.exit", label %bb.ao

bb.ao:                                            ; preds = %.loopexit
  %i.fc = ptrtoint ptr %i.bm to i64
  %i.fd = ptrtoint ptr %.val47.pre to i64
  %i.fe = sub i64 %i.fc, %i.fd                    ; 2 uses
  %i.ff = sdiv exact i64 %i.fe, 48
  %i.fg = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ff, i1 true)
  %i.fh = shl nuw nsw i64 %i.fg, 1
  %i.fi = xor i64 %i.fh, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEElNS0_5__ops15_Iter_comp_iterIZNKSC_20dumpRecordsDbgLockedEvE3$_0EEEvT_SO_T0_T1_"(ptr %.val47.pre, ptr nonnull %i.bm, i64 noundef %i.fi)
  %i.fj = icmp sgt i64 %i.fe, 768
  br i1 %i.fj, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fk = getelementptr inbounds nuw i8, ptr %.val47.pre, i64 768 ; 3 uses
  call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterIZNKSC_20dumpRecordsDbgLockedEvE3$_0EEEvT_SO_T0_"(ptr %.val47.pre, ptr nonnull %i.fk)
  %i.fl = icmp eq ptr %i.fk, %i.bm
  br i1 %i.fl, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEEZNKSC_20dumpRecordsDbgLockedEvE3$_0EvT_SL_T0_.exitthread-pre-split", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ap, %.lr.ph.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi ptr [ %i.fm, %.lr.ph.i.i.i.i ], [ %i.fk, %bb.ap ] ; 3 uses
  call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEENS0_5__ops14_Val_comp_iterIZNKSC_20dumpRecordsDbgLockedEvE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.06.i.i.i.i)
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0.06.i.i.i.i, i64 48
  %i.fn = icmp eq ptr %.sroa.0.06.i.i.i.i, %.019.i.i.i.i.i.i
  br i1 %i.fn, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEEZNKSC_20dumpRecordsDbgLockedEvE3$_0EvT_SL_T0_.exitthread-pre-split", label %.lr.ph.i.i.i.i, !llvm.loop !619

bb.aq:                                            ; preds = %bb.ao
  call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEENS0_5__ops15_Iter_comp_iterIZNKSC_20dumpRecordsDbgLockedEvE3$_0EEEvT_SO_T0_"(ptr %.val47.pre, ptr nonnull %i.bm)
  br label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEEZNKSC_20dumpRecordsDbgLockedEvE3$_0EvT_SL_T0_.exitthread-pre-split"

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEEZNKSC_20dumpRecordsDbgLockedEvE3$_0EvT_SL_T0_.exitthread-pre-split": ; preds = %.lr.ph.i.i.i.i, %bb.ap, %bb.aq, %.loopexit.thread
  %.0.lcssa.i.i.i.i.i.i200.ph = phi ptr [ null, %.loopexit.thread ], [ %i.bm, %bb.ap ], [ %i.bm, %bb.aq ], [ %i.bm, %.lr.ph.i.i.i.i ]
  %.val46.pr = load ptr, ptr %9, align 8, !tbaa !618
  br label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEEZNKSC_20dumpRecordsDbgLockedEvE3$_0EvT_SL_T0_.exit"

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEEZNKSC_20dumpRecordsDbgLockedEvE3$_0EvT_SL_T0_.exit": ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEEZNKSC_20dumpRecordsDbgLockedEvE3$_0EvT_SL_T0_.exitthread-pre-split", %.loopexit
  %.val46 = phi ptr [ %.val46.pr, %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEEZNKSC_20dumpRecordsDbgLockedEvE3$_0EvT_SL_T0_.exitthread-pre-split" ], [ %.val47.pre, %.loopexit ] ; 6 uses
  %.0.lcssa.i.i.i.i.i.i200 = phi ptr [ %.0.lcssa.i.i.i.i.i.i200.ph, %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEEZNKSC_20dumpRecordsDbgLockedEvE3$_0EvT_SL_T0_.exitthread-pre-split" ], [ %i.bm, %.loopexit ] ; 3 uses
  %i.fo = icmp eq ptr %.val46, %.0.lcssa.i.i.i.i.i.i200 ; 2 uses
  br i1 %i.fo, label %._crit_edge141, label %.lr.ph140

.lr.ph140:                                        ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEEZNKSC_20dumpRecordsDbgLockedEvE3$_0EvT_SL_T0_.exit"
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.fq = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.fu = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  br label %bb.au

._crit_edge141:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESt6vectorISE_SaISE_EEEEZNKSC_20dumpRecordsDbgLockedEvE3$_0EvT_SL_T0_.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !620)
  call void @llvm.experimental.noalias.scope.decl(metadata !623)
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.fx, ptr %0, align 8, !tbaa !26, !alias.scope !626
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.fy, align 8, !tbaa !21, !alias.scope !626
  store i8 0, ptr %i.fx, align 8, !tbaa !22, !alias.scope !626
  %i.fz = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !458, !noalias !626 ; 3 uses
  %.not5.i.i = icmp eq ptr %i.ga, null
  br i1 %.not5.i.i, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge141
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %13 = load ptr, ptr %12, align 8, !noalias !626 ; 2 uses
  %14 = icmp ugt ptr %i.ga, %13
  %.08.i.i.i = select i1 %14, ptr %i.ga, ptr %13
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !462, !noalias !626 ; 2 uses
  %i.gd = ptrtoint ptr %.08.i.i.i to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.gc, i64 noundef %i.gf)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.as ; 0 uses

bb.as:                                            ; preds = %bb.at, %bb.ar
  %i.gh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gi = load ptr, ptr %0, align 8, !tbaa !16, !alias.scope !626 ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.fx
  br i1 %i.gj, label %.body77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.as
  %i.gk = load i64, ptr %i.fx, align 8, !tbaa !22, !alias.scope !626
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gl) #44
  br label %.body77

bb.at:                                            ; preds = %._crit_edge141
  %i.gm = getelementptr inbounds nuw i8, ptr %4, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.gm)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.as

bb.au:                                            ; preds = %.lr.ph140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %.sroa.099.0139 = phi ptr [ %.val46, %.lr.ph140 ], [ %i.hh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.099.0139, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !627
  invoke void @_ZN8facebook5velox13succinctBytesB5cxx11Emi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i64 noundef %i.go, i32 noundef 2)
          to label %.noexc44 unwind label %bb.aw

.noexc44:                                         ; preds = %bb.au
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.099.0139, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29, !noalias !629
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !23, !noalias !629
  store i64 %i.gq, ptr %2, align 16, !tbaa !22
  %i.gr = load ptr, ptr %11, align 8, !tbaa !16
  %i.gs = load i64, ptr %i.fq, align 8, !tbaa !21
  store ptr %i.gr, ptr %i.fp, align 16, !tbaa !22
  store i64 %i.gs, ptr %i.fr, align 8, !tbaa !22
  %i.gt = load ptr, ptr %.sroa.099.0139, align 8, !tbaa !16
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.099.0139, i64 8
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !21
  store ptr %i.gt, ptr %i.fs, align 16, !tbaa !22
  store i64 %i.gv, ptr %i.ft, align 8, !tbaa !22
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.119, i64 53, i64 3540, ptr nonnull %2)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %.noexc44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29, !noalias !629
  %i.gw = load ptr, ptr %10, align 8, !tbaa !16
  %i.gx = load i64, ptr %i.fu, align 8, !tbaa !21
  %i.gy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %i.gw, i64 noundef %i.gx)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit80 unwind label %bb.ay ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit80: ; preds = %bb.av
  %i.gz = load ptr, ptr %10, align 8, !tbaa !16   ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.fv
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit80
  %i.hb = load i64, ptr %i.fv, align 8, !tbaa !22
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hc) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  %i.hd = load ptr, ptr %11, align 8, !tbaa !16   ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.fw
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %i.hf = load i64, ptr %i.fw, align 8, !tbaa !22
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hg) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.099.0139, i64 48 ; 2 uses
  %i.hi = icmp eq ptr %i.hh, %.0.lcssa.i.i.i.i.i.i200
  br i1 %i.hi, label %._crit_edge141, label %bb.au

bb.aw:                                            ; preds = %bb.au
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

bb.ax:                                            ; preds = %.noexc44
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

bb.ay:                                            ; preds = %bb.av
  %i.hl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hm = load ptr, ptr %10, align 8, !tbaa !16   ; 2 uses
  %i.hn = icmp eq ptr %i.hm, %i.fv
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %bb.ay
  %i.ho = load i64, ptr %i.fv, align 8, !tbaa !22
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hm, i64 noundef %i.hp) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87, %bb.ax
  %.pn30 = phi { ptr, i32 } [ %i.hk, %bb.ax ], [ %i.hl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %i.hl, %bb.ay ] ; 2 uses
  %i.hq = load ptr, ptr %11, align 8, !tbaa !16   ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %i.fw
  br i1 %i.hr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  %i.hs = load i64, ptr %i.fw, align 8, !tbaa !22
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.ht) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90, %bb.aw
  %.pn30.pn = phi { ptr, i32 } [ %i.hj, %bb.aw ], [ %.pn30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ], [ %.pn30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %.body77

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.at, %bb.ar
  br i1 %i.fo, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESC_EvT_SE_RSaIT0_E.exit.i, label %.lr.ph.i.i.i93

.lr.ph.i.i.i93:                                   ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsEEvPT_.exit.i.i.i
  %.05.i.i.i94 = phi ptr [ %i.hz, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsEEvPT_.exit.i.i.i ], [ %.val46, %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit ] ; 3 uses
  %i.hu = load ptr, ptr %.05.i.i.i94, align 8, !tbaa !16 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.05.i.i.i94, i64 16 ; 2 uses
  %i.hw = icmp eq ptr %i.hu, %i.hv
  br i1 %i.hw, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i93
  %i.hx = load i64, ptr %i.hv, align 8, !tbaa !22
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hu, i64 noundef %i.hy) #44
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.hz = getelementptr inbounds nuw i8, ptr %.05.i.i.i94, i64 48 ; 2 uses
  %.not.i.i.i95 = icmp eq ptr %i.hz, %.0.lcssa.i.i.i.i.i.i200
  br i1 %.not.i.i.i95, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESC_EvT_SE_RSaIT0_E.exit.i, label %.lr.ph.i.i.i93, !llvm.loop !632

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESC_EvT_SE_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsEEvPT_.exit.i.i.i, %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %.not.i.i2.i = icmp eq ptr %.val46, null
  br i1 %.not.i.i2.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESaISC_EED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESC_EvT_SE_RSaIT0_E.exit.i
  %i.ia = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.val1.i = load ptr, ptr %i.ia, align 8, !tbaa !606
  %i.ib = ptrtoint ptr %.val1.i to i64
  %i.ic = ptrtoint ptr %.val46 to i64
  %i.id = sub i64 %i.ib, %i.ic
  call void @_ZdlPvm(ptr noundef nonnull %.val46, i64 noundef %i.id) #44
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESaISC_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESaISC_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESC_EvT_SE_RSaIT0_E.exit.i, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %.val.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !601 ; 2 uses
  %.not1.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not1.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i98

.lr.ph.i.i.i.i98:                                 ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESaISC_EED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i
  %.02.i.i.i.i = phi ptr [ %.0.val.i.i.i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i ], [ %.val.i.i.i, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESaISC_EED2Ev.exit ] ; 4 uses
  %.0.val.i.i.i.i = load ptr, ptr %.02.i.i.i.i, align 8, !tbaa !139 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i, i64 8
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !16 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i, i64 24 ; 2 uses
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i98
  %i.ii = load i64, ptr %i.ig, align 8, !tbaa !22
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ij) #44
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.02.i.i.i.i, i64 noundef 64) #44
  %.not.i.i.i.i = icmp eq ptr %.0.val.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i98, !llvm.loop !633

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESaISC_EED2Ev.exit
  %i.ik = load ptr, ptr %7, align 8, !tbaa !598
  %i.il = load i64, ptr %i.af, align 8, !tbaa !600
  %i.im = shl i64 %i.il, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ik, i8 0, i64 %i.im, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  %i.in = load ptr, ptr %7, align 8, !tbaa !598   ; 2 uses
  %i.io = icmp eq ptr %i.in, %i.ae
  br i1 %i.io, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_ZNK8facebook5velox6memory14MemoryPoolImpl20dumpRecordsDbgLockedEvE15AllocationStatsESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
end_hunk_3
