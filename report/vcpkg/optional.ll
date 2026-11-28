Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/optional?download=true
inline.NumInlined: 915
inline.NumDeleted: 305
begin_hunk_0_@_ZL19C_A_T_C_H_T_E_S_T_0v:bb.a
  store i32 42, ptr %i.ds, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #17
  store i8 1, ptr %39, align 4, !tbaa !17
  %i.dt = getelementptr inbounds nuw i8, ptr %39, i64 4
  store i32 42, ptr %i.dt, align 4, !tbaa !18
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.17) #17, !noalias !77
  %i.du = load ptr, ptr %0, align 8, !noalias !77
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !77
  %i.dx = getelementptr inbounds nuw i8, ptr %37, i64 8
  store i8 1, ptr %i.dx, align 8, !tbaa !20, !alias.scope !77
  %i.dy = getelementptr inbounds nuw i8, ptr %37, i64 9
  store i8 1, ptr %i.dy, align 1, !tbaa !21, !alias.scope !77
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKN5vcpkg8OptionalIiEES5_EE, i64 16), ptr %37, align 8, !tbaa !23, !alias.scope !77
  %i.dz = getelementptr inbounds nuw i8, ptr %37, i64 16
  store ptr %38, ptr %i.dz, align 8, !tbaa !25, !alias.scope !77
  %i.ea = getelementptr inbounds nuw i8, ptr %37, i64 24
  store ptr %i.du, ptr %i.ea, align 8, !tbaa !26, !alias.scope !77
  %.sroa.2.0..sroa_idx.i.i40 = getelementptr inbounds nuw i8, ptr %37, i64 32
  store i64 %i.dw, ptr %.sroa.2.0..sroa_idx.i.i40, align 8, !tbaa !27, !alias.scope !77
  %i.eb = getelementptr inbounds nuw i8, ptr %37, i64 40
  store ptr %39, ptr %i.eb, align 8, !tbaa !25, !alias.scope !77
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %33, ptr noundef nonnull align 8 dereferenceable(10) %37)
          to label %bb.aq unwind label %bb.au

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %37) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #17
  br label %bb.aw

bb.ar:                                            ; preds = %bb.aj
  %i.ec = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.at unwind label %bb.be

bb.as:                                            ; preds = %bb.al, %bb.ak
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %.pn21 = phi { ptr, i32 } [ %i.ed, %bb.as ], [ %i.ec, %bb.ar ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %26) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  br label %bb.bd

bb.au:                                            ; preds = %bb.ap
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %37) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #17
  %.13 = extractvalue { ptr, i32 } %i.ee, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #17
  %i.ef = call ptr @__cxa_begin_catch(ptr %.13) #17 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %33)
          to label %bb.av unwind label %bb.ba

bb.av:                                            ; preds = %bb.au
  invoke void @__cxa_end_catch()
          to label %bb.aw unwind label %bb.bb

bb.aw:                                            ; preds = %bb.av, %bb.aq
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %33)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %i.eg = getelementptr inbounds nuw i8, ptr %33, i64 58
  %i.eh = load i8, ptr %i.eg, align 2, !tbaa !34, !range !35, !noundef !36
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %_ZN5Catch16AssertionHandlerD2Ev.exit42, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ej = getelementptr inbounds nuw i8, ptr %33, i64 64
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !37, !nonnull !36, !align !38 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !23
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 112
  %i.en = load ptr, ptr %i.em, align 8
  invoke void %i.en(ptr noundef nonnull align 8 dereferenceable(8) %i.ek, ptr noundef nonnull align 8 dereferenceable(72) %33)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit42 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.eo = landingpad { ptr, i32 }
          catch ptr null
  %i.ep = extractvalue { ptr, i32 } %i.eo, 0
  call void @__clang_call_terminate(ptr %i.ep) #18
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit42:           ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #17
  ret void

bb.ba:                                            ; preds = %bb.au
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bc unwind label %bb.be

bb.bb:                                            ; preds = %bb.aw, %bb.av
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %.pn24 = phi { ptr, i32 } [ %i.er, %bb.bb ], [ %i.eq, %bb.ba ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %33) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #17
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.at, %bb.ai, %bb.x, %bb.m
  %.pn24.pn = phi { ptr, i32 } [ %.pn24, %bb.bc ], [ %.pn21, %bb.at ], [ %.pn18, %bb.ai ], [ %.pn15, %bb.x ], [ %.pn12, %bb.m ]
  resume { ptr, i32 } %.pn24.pn

bb.be:                                            ; preds = %bb.ba, %bb.ar, %bb.ag, %bb.v, %bb.k
  %i.es = landingpad { ptr, i32 }
          catch ptr null
  %i.et = extractvalue { ptr, i32 } %i.es, 0
  call void @__clang_call_terminate(ptr %i.et) #18
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind
declare void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN5Catch11NameAndTagsC1ERKNS_9StringRefES3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN5Catch7AutoRegC1EPNS_12ITestInvokerERKNS_14SourceLineInfoERKNS_9StringRefERKNS_11NameAndTagsE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind
declare void @_ZN5Catch7AutoRegD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal void @_ZL19C_A_T_C_H_T_E_S_T_2v() #1 personality ptr @__gxx_personality_v0 {
_ZN5vcpkg8OptionalIiEC2IRNS0_IlEETnNSt9enable_ifIXaantsr3stdE9is_same_vINSt5decayIT_E4typeES1_Esr3stdE18is_constructible_vINS_7details15OptionalStorageIiLb1EEES7_EEiE4typeELi0EEEOS7_.exit:
  %0 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %1 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %2 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %3 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %4 = alloca %"struct.vcpkg::Optional.5", align 8 ; 6 uses
  %5 = alloca %"struct.vcpkg::Optional.9", align 8 ; 10 uses
  %6 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %7 = alloca %"class.Catch::StringRef", align 8  ; 6 uses
  %8 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %9 = alloca %"class.Catch::StringRef", align 8  ; 3 uses
  %10 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %11 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %12 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %13 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %14 = alloca %"class.Catch::BinaryExpr.21", align 8 ; 13 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %15 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %16 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %17 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %18 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %19 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %20 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %21 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %22 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %23 = alloca %"class.Catch::BinaryExpr.21", align 8 ; 13 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store i8 1, ptr %4, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.19, ptr %i.e, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @_ZN5vcpkg7details15OptionalStorageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEC2IPKcEERKNS_8OptionalIT_EE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.f = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #19
          to label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i unwind label %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i ; 6 uses

_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i:           ; preds = %_ZN5vcpkg8OptionalIiEC2IRNS0_IlEETnNSt9enable_ifIXaantsr3stdE9is_same_vINSt5decayIT_E4typeES1_Esr3stdE18is_constructible_vINS_7details15OptionalStorageIiLb1EEES7_EEiE4typeELi0EEEOS7_.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i: ; preds = %_ZN5vcpkg8OptionalIiEC2IRNS0_IlEETnNSt9enable_ifIXaantsr3stdE9is_same_vINSt5decayIT_E4typeES1_Esr3stdE18is_constructible_vINS_7details15OptionalStorageIiLb1EEES7_EEiE4typeELi0EEEOS7_.exit
  store i32 1, ptr %i.f, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 2, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 3, ptr %.sroa.6.0..sroa_idx, align 4
  %i.h = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #19
          to label %bb.a unwind label %bb.d       ; 3 uses

bb.a:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.h, ptr noundef nonnull align 4 dereferenceable(12) %i.f, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  store ptr @.str.20, ptr %7, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 7, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  store ptr @.str, ptr %8, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 44, ptr %i.j, align 8, !tbaa !14
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str.21) #17
  %i.k = load ptr, ptr %9, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.m = load i64, ptr %i.l, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr %i.k, i64 %i.m, i32 noundef 1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.n, align 8, !tbaa !20, !alias.scope !86
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 1, ptr %i.o, align 1, !tbaa !21, !alias.scope !86
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %3, align 8, !tbaa !23, !alias.scope !86
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i8 1, ptr %i.p, align 2, !tbaa !88, !alias.scope !86
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(10) %3)
          to label %bb.c unwind label %.body35

.body35:                                          ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #17 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %bb.f unwind label %bb.m

bb.c:                                             ; preds = %bb.b
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.g

bb.d:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.e:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.p

bb.f:                                             ; preds = %.body35
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f, %bb.c
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 58
  %i.w = load i8, ptr %i.v, align 2, !tbaa !34, !range !35, !noundef !36
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_ZN5Catch16AssertionHandlerD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !37, !nonnull !36, !align !38 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  %i.ac = load ptr, ptr %i.ab, align 8
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #18
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit:             ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  store ptr @.str.20, ptr %11, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 7, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  store ptr @.str, ptr %12, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 45, ptr %i.ag, align 8, !tbaa !14
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str.22) #17
  %i.ah = load ptr, ptr %13, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.aj = load i64, ptr %i.ai, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12, ptr %i.ah, i64 %i.aj, i32 noundef 1)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 3, ptr %i.a, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 3, ptr %i.b, align 4, !tbaa !41
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.17) #17, !noalias !89
  %i.ak = load ptr, ptr %2, align 8, !noalias !89
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = load i64, ptr %i.al, align 8, !noalias !89
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i8 1, ptr %i.an, align 8, !tbaa !20, !alias.scope !89
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 9
  store i8 1, ptr %i.ao, align 1, !tbaa !21, !alias.scope !89
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKmRKiEE, i64 16), ptr %14, align 8, !tbaa !23, !alias.scope !89
  %i.ap = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.a, ptr %i.ap, align 8, !tbaa !90, !alias.scope !89
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %i.ak, ptr %i.aq, align 8, !tbaa !26, !alias.scope !89
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i64 %i.am, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !27, !alias.scope !89
  %i.ar = getelementptr inbounds nuw i8, ptr %14, i64 40
  store ptr %i.b, ptr %i.ar, align 8, !tbaa !44, !alias.scope !89
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %10, ptr noundef nonnull align 8 dereferenceable(10) %14)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.t

bb.m:                                             ; preds = %.body35
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.be

bb.n:                                             ; preds = %bb.g, %bb.f
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.pn = phi { ptr, i32 } [ %i.at, %bb.n ], [ %i.as, %bb.m ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %6) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.o ], [ %i.u, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.bb

bb.q:                                             ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  br label %bb.ac

bb.r:                                             ; preds = %bb.k
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %.38 = extractvalue { ptr, i32 } %i.av, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  %i.aw = call ptr @__cxa_begin_catch(ptr %.38) #17 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %10)
          to label %bb.s unwind label %bb.z

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_end_catch()
          to label %bb.t unwind label %bb.aa

bb.t:                                             ; preds = %bb.s, %bb.l
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %10)
          to label %bb.u unwind label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 58
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !34, !range !35, !noundef !36
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %_ZN5vcpkg8OptionalISt6vectorIiSaIiEEEC2EOS4_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !37, !nonnull !36, !align !38 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !23
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 112
  %i.be = load ptr, ptr %i.bd, align 8
  invoke void %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull align 8 dereferenceable(72) %10)
          to label %_ZN5vcpkg8OptionalISt6vectorIiSaIiEEEC2EOS4_.exit unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #18
  unreachable

_ZN5vcpkg8OptionalISt6vectorIiSaIiEEEC2EOS4_.exit: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  store ptr @.str.20, ptr %16, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 7, ptr %i.bh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  store ptr @.str, ptr %17, align 8, !tbaa !13
  %i.bi = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 47, ptr %i.bi, align 8, !tbaa !14
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull @.str.23) #17
  %i.bj = load ptr, ptr %18, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.bl = load i64, ptr %i.bk, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %15, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %17, ptr %i.bj, i64 %i.bl, i32 noundef 1)
          to label %bb.x unwind label %bb.ad

bb.x:                                             ; preds = %_ZN5vcpkg8OptionalISt6vectorIiSaIiEEEC2EOS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 0, ptr %i.bm, align 8, !tbaa !20, !alias.scope !91
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 1, ptr %i.bn, align 1, !tbaa !21, !alias.scope !91
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %1, align 8, !tbaa !23, !alias.scope !91
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 1, ptr %i.bo, align 2, !tbaa !88, !alias.scope !91
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %15, ptr noundef nonnull align 8 dereferenceable(10) %1)
          to label %bb.y unwind label %.body38

.body38:                                          ; preds = %bb.x
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  %i.br = call ptr @__cxa_begin_catch(ptr %i.bq) #17 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %15)
          to label %bb.ae unwind label %bb.al

bb.y:                                             ; preds = %bb.x
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(11) dereferenceable(11) %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.af

bb.z:                                             ; preds = %bb.r
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.ab unwind label %bb.be

bb.aa:                                            ; preds = %bb.t, %bb.s
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.pn20 = phi { ptr, i32 } [ %i.bt, %bb.aa ], [ %i.bs, %bb.z ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %10) #17
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.q
  %.pn20.pn = phi { ptr, i32 } [ %.pn20, %bb.ab ], [ %i.au, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.bb

bb.ad:                                            ; preds = %_ZN5vcpkg8OptionalISt6vectorIiSaIiEEEC2EOS4_.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  br label %bb.ao

bb.ae:                                            ; preds = %.body38
  invoke void @__cxa_end_catch()
          to label %bb.af unwind label %bb.am

bb.af:                                            ; preds = %bb.ae, %bb.y
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %15)
          to label %bb.ag unwind label %bb.am

bb.ag:                                            ; preds = %bb.af
  %i.bv = getelementptr inbounds nuw i8, ptr %15, i64 58
  %i.bw = load i8, ptr %i.bv, align 2, !tbaa !34, !range !35, !noundef !36
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %_ZN5Catch16AssertionHandlerD2Ev.exit41, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.by = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !37, !nonnull !36, !align !38 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !23
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 112
  %i.cc = load ptr, ptr %i.cb, align 8
  invoke void %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull align 8 dereferenceable(72) %15)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit41 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #18
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit41:           ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  store ptr @.str.20, ptr %20, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 7, ptr %i.cf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  store ptr @.str, ptr %21, align 8, !tbaa !13
  %i.cg = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 48, ptr %i.cg, align 8, !tbaa !14
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull @.str.24) #17
  %i.ch = load ptr, ptr %22, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.cj = load i64, ptr %i.ci, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %19, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %21, ptr %i.ch, i64 %i.cj, i32 noundef 1)
          to label %bb.aj unwind label %bb.ap

bb.aj:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit41
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i64 3, ptr %i.c, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i32 3, ptr %i.d, align 4, !tbaa !41
  call void @llvm.experimental.noalias.scope.decl(metadata !92)
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.17) #17, !noalias !92
  %i.ck = load ptr, ptr %0, align 8, !noalias !92
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !noalias !92
  %i.cn = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i8 1, ptr %i.cn, align 8, !tbaa !20, !alias.scope !92
  %i.co = getelementptr inbounds nuw i8, ptr %23, i64 9
  store i8 1, ptr %i.co, align 1, !tbaa !21, !alias.scope !92
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKmRKiEE, i64 16), ptr %23, align 8, !tbaa !23, !alias.scope !92
  %i.cp = getelementptr inbounds nuw i8, ptr %23, i64 16
  store ptr %i.c, ptr %i.cp, align 8, !tbaa !90, !alias.scope !92
  %i.cq = getelementptr inbounds nuw i8, ptr %23, i64 24
  store ptr %i.ck, ptr %i.cq, align 8, !tbaa !26, !alias.scope !92
  %.sroa.2.0..sroa_idx.i.i42 = getelementptr inbounds nuw i8, ptr %23, i64 32
  store i64 %i.cm, ptr %.sroa.2.0..sroa_idx.i.i42, align 8, !tbaa !27, !alias.scope !92
  %i.cr = getelementptr inbounds nuw i8, ptr %23, i64 40
  store ptr %i.d, ptr %i.cr, align 8, !tbaa !44, !alias.scope !92
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %19, ptr noundef nonnull align 8 dereferenceable(10) %23)
          to label %bb.ak unwind label %bb.aq

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %23) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  br label %bb.as

bb.al:                                            ; preds = %.body38
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.an unwind label %bb.be

bb.am:                                            ; preds = %bb.af, %bb.ae
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  %.pn23 = phi { ptr, i32 } [ %i.ct, %bb.am ], [ %i.cs, %bb.al ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %15) #17
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ad
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %bb.an ], [ %i.bu, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  br label %bb.bb

bb.ap:                                            ; preds = %_ZN5Catch16AssertionHandlerD2Ev.exit41
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  br label %bb.ba

bb.aq:                                            ; preds = %bb.aj
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %23) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  %.914 = extractvalue { ptr, i32 } %i.cv, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #17
  %i.cw = call ptr @__cxa_begin_catch(ptr %.914) #17 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %19)
          to label %bb.ar unwind label %bb.ax

bb.ar:                                            ; preds = %bb.aq
  invoke void @__cxa_end_catch()
          to label %bb.as unwind label %bb.ay

bb.as:                                            ; preds = %bb.ar, %bb.ak
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %19)
          to label %bb.at unwind label %bb.ay

bb.at:                                            ; preds = %bb.as
  %i.cx = getelementptr inbounds nuw i8, ptr %19, i64 58
  %i.cy = load i8, ptr %i.cx, align 2, !tbaa !34, !range !35, !noundef !36
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.da = getelementptr inbounds nuw i8, ptr %19, i64 64
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !37, !nonnull !36, !align !38 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !23
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 112
  %i.de = load ptr, ptr %i.dd, align 8
  invoke void %i.de(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull align 8 dereferenceable(72) %19)
          to label %_ZNSt6vectorIiSaIiEED2Ev.exit unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #18
  unreachable

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 12) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 12) #20
  %i.dh = load i8, ptr %5, align 8, !tbaa !46, !range !35, !noundef !36
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.aw, label %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit

bb.aw:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !49 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.aw
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !18
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #20
  br label %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit

_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit: ; preds = %bb.aw, %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void

bb.ax:                                            ; preds = %bb.aq
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.az unwind label %bb.be

bb.ay:                                            ; preds = %bb.as, %bb.ar
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %.pn27 = phi { ptr, i32 } [ %i.dq, %bb.ay ], [ %i.dp, %bb.ax ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %19) #17
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ap
  %.pn27.pn = phi { ptr, i32 } [ %.pn27, %bb.az ], [ %i.cu, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  br label %bb.bb

bb.bb:                                            ; preds = %bb.p, %bb.ac, %bb.ba, %bb.ao
  %.pn27.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn23.pn, %bb.ao ], [ %.pn27.pn, %bb.ba ], [ %.pn.pn, %bb.p ], [ %.pn20.pn, %bb.ac ]
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 12) #20
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.d
  %.pn27.pn.pn.pn.ph = phi { ptr, i32 } [ %i.t, %bb.d ], [ %.pn27.pn.pn.pn.pn.ph, %bb.bb ]
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 12) #20
  br label %.body

.body:                                            ; preds = %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i, %bb.bc
  %.pn27.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn27.pn.pn.pn.ph, %bb.bc ], [ %i.g, %_ZNSt12_Vector_baseIiSaIiEED2Ev.exit.i ]
  %i.dr = load i8, ptr %5, align 8, !tbaa !46, !range !35, !noundef !36
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %bb.bd, label %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit56

bb.bd:                                            ; preds = %.body
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !49 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54: ; preds = %bb.bd
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !18
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #20
  br label %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit56

_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit56: ; preds = %bb.bd, %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  resume { ptr, i32 } %.pn27.pn.pn.pn.pn.pn

bb.be:                                            ; preds = %bb.ax, %bb.al, %bb.z, %bb.m
  %i.dz = landingpad { ptr, i32 }
          catch ptr null
  %i.ea = extractvalue { ptr, i32 } %i.dz, 0
  call void @__clang_call_terminate(ptr %i.ea) #18
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL19C_A_T_C_H_T_E_S_T_4v() #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %1 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %2 = alloca %"struct.vcpkg::Optional", align 4  ; 6 uses
  %3 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %4 = alloca %"class.Catch::StringRef", align 8  ; 6 uses
  %5 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %6 = alloca %"class.Catch::StringRef", align 8  ; 3 uses
  %7 = alloca %"class.Catch::BinaryExpr.45", align 8 ; 13 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"struct.vcpkg::Optional", align 4  ; 6 uses
  %9 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %10 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %11 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %12 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %13 = alloca %"class.Catch::BinaryExpr.45", align 8 ; 13 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 1, ptr %i.c, align 4, !tbaa !18, !alias.scope !101
  store i8 1, ptr %2, align 4, !tbaa !17, !alias.scope !101
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr @.str.20, ptr %4, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 7, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  store ptr @.str, ptr %5, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 76, ptr %i.e, align 8, !tbaa !14
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.27) #17
  %i.f = load ptr, ptr %6, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = load i64, ptr %i.g, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr %i.f, i64 %i.h, i32 noundef 1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 1, ptr %i.a, align 4, !tbaa !41
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.17) #17, !noalias !102
  %i.i = load ptr, ptr %1, align 8, !noalias !102
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noalias !102
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i8 1, ptr %i.l, align 8, !tbaa !20, !alias.scope !102
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 9
  store i8 1, ptr %i.m, align 1, !tbaa !21, !alias.scope !102
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKN5vcpkg8OptionalIiEERKiEE, i64 16), ptr %7, align 8, !tbaa !23, !alias.scope !102
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %2, ptr %i.n, align 8, !tbaa !25, !alias.scope !102
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.i, ptr %i.o, align 8, !tbaa !26, !alias.scope !102
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %i.k, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !27, !alias.scope !102
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %i.a, ptr %i.p, align 8, !tbaa !44, !alias.scope !102
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(10) %7)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.q

bb.e:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.14 = extractvalue { ptr, i32 } %i.r, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.s = call ptr @__cxa_begin_catch(ptr %.14) #17 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f, %bb.c
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.h unwind label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 58
  %i.u = load i8, ptr %i.t, align 2, !tbaa !34, !range !35, !noundef !36
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !37, !nonnull !36, !align !38 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 112
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #18
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 -1, ptr %i.ad, align 4, !tbaa !18, !alias.scope !103
  store i8 1, ptr %8, align 4, !tbaa !17, !alias.scope !103
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  store ptr @.str.20, ptr %10, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 7, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  store ptr @.str, ptr %11, align 8, !tbaa !13
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 78, ptr %i.af, align 8, !tbaa !14
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull @.str.28) #17
  %i.ag = load ptr, ptr %12, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ai = load i64, ptr %i.ah, align 8
  invoke void @_ZN5Catch16AssertionHandlerC1ERKNS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr %i.ag, i64 %i.ai, i32 noundef 1)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 -1, ptr %i.b, align 4, !tbaa !41
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  call void @_ZN5Catch9StringRefC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull @.str.17) #17, !noalias !104
  %i.aj = load ptr, ptr %0, align 8, !noalias !104
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !noalias !104
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i8 1, ptr %i.am, align 8, !tbaa !20, !alias.scope !104
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 9
  store i8 1, ptr %i.an, align 1, !tbaa !21, !alias.scope !104
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch10BinaryExprIRKN5vcpkg8OptionalIiEERKiEE, i64 16), ptr %13, align 8, !tbaa !23, !alias.scope !104
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %8, ptr %i.ao, align 8, !tbaa !25, !alias.scope !104
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %i.aj, ptr %i.ap, align 8, !tbaa !26, !alias.scope !104
  %.sroa.2.0..sroa_idx.i.i32 = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i64 %i.al, ptr %.sroa.2.0..sroa_idx.i.i32, align 8, !tbaa !27, !alias.scope !104
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 40
  store ptr %i.b, ptr %i.aq, align 8, !tbaa !44, !alias.scope !104
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
end_hunk_0
