Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/dependencies?download=true
inline.NumInlined: 13345
inline.NumDeleted: 2349
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumUnrolled: 71
begin_hunk_0_@_ZL20C_A_T_C_H_T_E_S_T_69v:._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #22
  br label %bb.il

bb.il:                                            ; preds = %bb.ik, %_ZN5vcpkg7VersionD2Ev.exit665, %_ZN5vcpkg7VersionD2Ev.exit658
  %.pn213.pn.pn.pn = phi { ptr, i32 } [ %.pn213.pn.pn, %bb.ik ], [ %.pn200.pn, %_ZN5vcpkg7VersionD2Ev.exit665 ], [ %.pn197.pn, %_ZN5vcpkg7VersionD2Ev.exit658 ]
  call void @_ZN20MockBaselineProviderD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %78) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #22
  br label %bb.io

bb.im:                                            ; preds = %_ZN20MockBaselineProviderD2Ev.exit688, %bb.ft
  call void @_ZN5Catch7SectionD1Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %74) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #22
  call void @_ZN5vcpkg4Test20MockCMakeVarProviderD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV29MockVersionedPortfileProvider, i64 16), ptr %10, align 8, !tbaa !9
  %i.apz = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aqa = load ptr, ptr %i.h, align 8, !tbaa !11
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIN5vcpkg7VersionENS9_28SourceControlFileAndLocationENS9_14VersionMapLessESaIS6_IKSA_SB_EEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E(ptr noundef nonnull align 8 dereferenceable(48) %i.apz, ptr noundef %i.aqa)
          to label %_ZN29MockVersionedPortfileProviderD2Ev.exit unwind label %bb.in, !inline_history !134

bb.in:                                            ; preds = %bb.im
  %i.aqb = landingpad { ptr, i32 }
          catch ptr null
  %i.aqc = extractvalue { ptr, i32 } %i.aqb, 0
  call void @__clang_call_terminate(ptr %i.aqc) #21, !inline_history !134
  unreachable

_ZN29MockVersionedPortfileProviderD2Ev.exit:      ; preds = %bb.im
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  ret void

bb.io:                                            ; preds = %bb.il, %bb.gy
  %.pn213.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn213.pn.pn.pn, %bb.il ], [ %i.akz, %bb.gy ]
  call void @_ZN5Catch7SectionD1Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %74) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #22
  br label %bb.ip

bb.ip:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit651, %bb.io, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521, %bb.gu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376, %bb.dz
  %.pn213.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn168, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521 ], [ %.pn137.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit376 ], [ %.pn159.pn.pn.pn.pn.pn.pn, %bb.dz ], [ %.pn187.pn.pn.pn.pn, %bb.gu ], [ %.pn213.pn.pn.pn.pn, %bb.io ], [ %.pn194, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit651 ]
  call void @_ZN5vcpkg4Test20MockCMakeVarProviderD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342
  %.pn213.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn213.pn.pn.pn.pn.pn.pn, %bb.ip ], [ %.pn134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373 ], [ %.pn131, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366 ], [ %.pn127.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342 ]
  call void @_ZN29MockVersionedPortfileProviderD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  resume { ptr, i32 } %.pn213.pn.pn.pn.pn.pn.pn.pn

bb.ir:                                            ; preds = %bb.id, %bb.hn, %bb.fi, %bb.es, %bb.bx
  %i.aqd = landingpad { ptr, i32 }
          catch ptr null
  %i.aqe = extractvalue { ptr, i32 } %i.aqd, 0
  call void @__clang_call_terminate(ptr %i.aqe) #21
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL20C_A_T_C_H_T_E_S_T_74v() #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %1 = alloca %"struct.vcpkg::LineInfo", align 8  ; 6 uses
  %2 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %4 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %5 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %6 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %7 = alloca %"class.Catch::StringRef", align 8  ; 5 uses
  %8 = alloca %"class.Catch::UnaryExpr", align 8  ; 10 uses
  %9 = alloca %"struct.vcpkg::StringView", align 8 ; 5 uses
  %10 = alloca %"struct.vcpkg::StringView", align 8 ; 5 uses
  %11 = alloca %"struct.vcpkg::StringView", align 8 ; 5 uses
  %12 = alloca %struct.MockVersionedPortfileProvider, align 8 ; 19 uses
  %13 = alloca %"class.std::unique_ptr.32", align 8 ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"struct.vcpkg::Version", align 8  ; 9 uses
  %16 = alloca %"class.std::unique_ptr.32", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"struct.vcpkg::Version", align 8  ; 9 uses
  %19 = alloca %"class.std::unique_ptr.32", align 8 ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"struct.vcpkg::Version", align 8  ; 9 uses
  %22 = alloca %"struct.vcpkg::Test::MockCMakeVarProvider", align 8 ; 28 uses
  %23 = alloca %"class.Catch::Section", align 8   ; 7 uses
  %24 = alloca %"struct.Catch::SectionInfo", align 8 ; 10 uses
  %25 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %struct.MockBaselineProvider, align 8 ; 15 uses
  %28 = alloca %"struct.vcpkg::Version", align 8  ; 19 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %30 = alloca %"struct.vcpkg::Version", align 8  ; 19 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %32 = alloca %"struct.vcpkg::Version", align 8  ; 19 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %34 = alloca %"class.Catch::Section", align 8   ; 7 uses
  %35 = alloca %"struct.Catch::SectionInfo", align 8 ; 10 uses
  %36 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %38 = alloca %"struct.vcpkg::ExpectedT", align 8 ; 15 uses
  %39 = alloca %"class.std::vector.47", align 8   ; 13 uses
  %40 = alloca [1 x %"struct.vcpkg::Dependency"], align 8 ; 21 uses
  %41 = alloca [1 x %"struct.vcpkg::DependencyRequestedFeature"], align 8 ; 16 uses
  %42 = alloca %"class.std::vector.72", align 8   ; 10 uses
  %43 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %44 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %45 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %46 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %47 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %48 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %49 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %50 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %51 = alloca %"class.Catch::BinaryExpr", align 8 ; 13 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %52 = alloca %"struct.vcpkg::Version", align 8  ; 6 uses
  %53 = alloca [1 x %"struct.vcpkg::StringLiteral"], align 8 ; 6 uses
  %54 = alloca %"class.Catch::Section", align 8   ; 7 uses
  %55 = alloca %"struct.Catch::SectionInfo", align 8 ; 10 uses
  %56 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %58 = alloca %"struct.vcpkg::ExpectedT", align 8 ; 15 uses
  %59 = alloca %"class.std::vector.47", align 8   ; 13 uses
  %60 = alloca [1 x %"struct.vcpkg::Dependency"], align 8 ; 21 uses
  %61 = alloca [1 x %"struct.vcpkg::DependencyRequestedFeature"], align 8 ; 16 uses
  %62 = alloca %"class.std::vector.72", align 8   ; 10 uses
  %63 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %64 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %65 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %66 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %67 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %68 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %69 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %70 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %71 = alloca %"class.Catch::BinaryExpr", align 8 ; 13 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %72 = alloca %"struct.vcpkg::Version", align 8  ; 6 uses
  %73 = alloca [1 x %"struct.vcpkg::StringLiteral"], align 8 ; 6 uses
  %74 = alloca %"class.Catch::Section", align 8   ; 7 uses
  %75 = alloca %"struct.Catch::SectionInfo", align 8 ; 10 uses
  %76 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %77 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %78 = alloca %"struct.vcpkg::ExpectedT", align 8 ; 15 uses
  %79 = alloca %"class.std::vector.47", align 8   ; 13 uses
  %80 = alloca [1 x %"struct.vcpkg::Dependency"], align 8 ; 21 uses
  %81 = alloca [1 x %"struct.vcpkg::DependencyRequestedFeature"], align 8 ; 16 uses
  %82 = alloca %"class.std::vector.72", align 8   ; 10 uses
  %83 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %84 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %85 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %86 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %87 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %88 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %89 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %90 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %91 = alloca %"class.Catch::BinaryExpr", align 8 ; 13 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %92 = alloca %"struct.vcpkg::Version", align 8  ; 6 uses
  %93 = alloca [1 x %"struct.vcpkg::StringLiteral"], align 8 ; 6 uses
  %94 = alloca %"class.Catch::Section", align 8   ; 7 uses
  %95 = alloca %"struct.Catch::SectionInfo", align 8 ; 10 uses
  %96 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %97 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %98 = alloca %struct.MockBaselineProvider, align 8 ; 13 uses
  %99 = alloca %"struct.vcpkg::ExpectedT", align 8 ; 11 uses
  %100 = alloca %"class.std::vector.47", align 8  ; 13 uses
  %101 = alloca [1 x %"struct.vcpkg::Dependency"], align 8 ; 21 uses
  %102 = alloca [1 x %"struct.vcpkg::DependencyRequestedFeature"], align 8 ; 16 uses
  %103 = alloca %"class.std::vector.72", align 8  ; 10 uses
  %104 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %105 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %106 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %107 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %108 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %109 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %110 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %111 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %112 = alloca %"class.Catch::BinaryExpr.314", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV29MockVersionedPortfileProvider, i64 16), ptr %12, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store i32 0, ptr %i.h, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  store ptr null, ptr %i.i, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %i.h, ptr %i.j, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 40
  store ptr %i.h, ptr %i.k, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 48
  store i64 0, ptr %i.l, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !616)
  %i.m = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #24
          to label %.noexc unwind label %bb.bm    ; 13 uses

.noexc:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.n, i8 0, i64 160, i1 false), !noalias !616
  store ptr %i.n, ptr %i.m, align 8, !tbaa !22, !noalias !616
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store i64 0, ptr %i.o, align 8, !tbaa !26, !noalias !616
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, i8 0, i64 48, i1 false), !noalias !616
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #22, !noalias !616
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  invoke void @_ZN5vcpkg28ParsedSpdxLicenseDeclarationC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.r)
          to label %bb.c unwind label %bb.b, !noalias !616

bb.b:                                             ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #22, !noalias !616
  call void @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.t) #22, !noalias !616
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.p) #22, !noalias !616
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !28, !noalias !616 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.n
  br i1 %i.v, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.w = load i64, ptr %i.n, align 8, !tbaa !25, !noalias !616
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #23, !noalias !616
  br label %.body.i

.body.i:                                          ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 176) #23, !noalias !616
  br label %.body

bb.c:                                             ; preds = %.noexc
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false), !noalias !616
  store ptr %i.m, ptr %13, align 8, !tbaa !619, !alias.scope !616
  %i.z = load i64, ptr %i.o, align 8, !tbaa !26
  %i.aa = ptrtoint ptr %i.m to i64                ; 2 uses
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 noundef 0, i64 noundef %i.z, ptr noundef nonnull @.str.216, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.bn ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.ac, ptr %14, align 8, !tbaa !22
  store i8 97, ptr %i.ac, align 8, !tbaa !25
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 1, ptr %i.ad, align 8, !tbaa !26
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 17
  store i8 0, ptr %i.ae, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %15, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit unwind label %bb.bo

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr @.str.123, ptr %11, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !33
  %i.af = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(36) %15, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %11)
          to label %bb.d unwind label %bb.bp

bb.d:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !136 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !621 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !624
  %.not.i.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.aa, ptr %i.aj, align 8, !tbaa !619
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !621
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

bb.f:                                             ; preds = %bb.d
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !625 ; 10 uses
  %i.ao = ptrtoint ptr %i.aj to i64               ; 3 uses
  %i.ap = ptrtoint ptr %i.an to i64               ; 4 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc750 unwind label %bb.bp

.noexc750:                                        ; preds = %bb.g
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.f
  %i.as = ashr exact i64 %i.aq, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = call i64 @llvm.umin.i64(i64 %i.at, i64 1152921504606846975)
  %i.aw = select i1 %i.au, i64 1152921504606846975, i64 %i.av ; 3 uses
  %.not.i.i749 = icmp ne i64 %i.aw, 0
  call void @llvm.assume(i1 %.not.i.i749)
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #24
          to label %.noexc751 unwind label %bb.bp ; 10 uses

.noexc751:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aq
  store i64 %i.aa, ptr %i.az, align 8, !tbaa !619
  store ptr null, ptr %13, align 8, !tbaa !619
  %.not10.i.i.i.i = icmp eq ptr %i.an, %i.aj
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc751
  %i.ba = add i64 %i.ao, -8
  %i.bb = sub i64 %i.ba, %i.ap                    ; 2 uses
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bb, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader1244, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.be = add i64 %i.ao, -8
  %i.bf = sub i64 %i.be, %i.ap
  %i.bg = and i64 %i.bf, -8
  %i.bh = add i64 %i.bg, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ay, i64 %i.bh
  %scevgep1195 = getelementptr i8, ptr %i.an, i64 %i.bh
  %bound0 = icmp ult ptr %i.ay, %scevgep1195
  %bound1 = icmp ult ptr %i.an, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader1244, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bd, 4611686018427387900     ; 3 uses
  %i.bi = shl i64 %n.vec, 3                       ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ay, i64 %i.bi  ; 2 uses
  %i.bk = getelementptr i8, ptr %i.an, i64 %i.bi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ay, i64 %i.bl ; 2 uses
  %next.gep1196 = getelementptr i8, ptr %i.an, i64 %i.bl ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !626)
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  %i.bm = getelementptr i8, ptr %next.gep1196, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1196, align 8, !tbaa !619, !alias.scope !631, !noalias !626
  %wide.load1197 = load <2 x i64>, ptr %i.bm, align 8, !tbaa !619, !alias.scope !631, !noalias !626
  %i.bn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !619, !alias.scope !634, !noalias !631
  store <2 x i64> %wide.load1197, ptr %i.bn, align 8, !tbaa !619, !alias.scope !634, !noalias !631
  %i.bo = getelementptr i8, ptr %next.gep1196, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1196, align 8, !tbaa !619, !alias.scope !631, !noalias !626
  store <2 x ptr> splat (ptr null), ptr %i.bo, align 8, !tbaa !619, !alias.scope !631, !noalias !626
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !636

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader1244

.lr.ph.i.i.i.i.preheader1244:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ay, %vector.memcheck ], [ %i.ay, %.lr.ph.i.i.i.i.preheader ], [ %i.bj, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.i.i.i.preheader ], [ %i.bk, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader1244, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader1244 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader1244 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !626)
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  %i.bq = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !629, !noalias !626
  store i64 %i.bq, ptr %.012.i.i.i.i, align 8, !tbaa !619, !alias.scope !626, !noalias !629
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !629, !noalias !626
  %i.br = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.br, %i.aj
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !639

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc751
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ay, %.noexc751 ], [ %i.bj, %middle.block ], [ %i.bs, %.lr.ph.i.i.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.an, null
  br i1 %.not.i23.i, label %.noexc307, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.bu = load ptr, ptr %i.ak, align 8, !tbaa !624
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = sub i64 %i.bv, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.bw) #23
  br label %.noexc307

.noexc307:                                        ; preds = %bb.h, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.ay, ptr %i.ah, align 8, !tbaa !625
  store ptr %i.bt, ptr %i.ai, align 8, !tbaa !621
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  store ptr %i.bx, ptr %i.ak, align 8, !tbaa !624
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %.noexc307, %bb.e
  %i.by = load ptr, ptr %15, align 8, !tbaa !28   ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZN5vcpkg7VersionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !25
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit

_ZN5vcpkg7VersionD2Ev.exit:                       ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.cd = load ptr, ptr %14, align 8, !tbaa !28   ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.ac
  br i1 %i.ce, label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5vcpkg7VersionD2Ev.exit
  %i.cf = load i64, ptr %i.ac, align 8, !tbaa !25
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #23
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN5vcpkg7VersionD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !640)
  %i.ch = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #24
          to label %.noexc311 unwind label %bb.br ; 13 uses

.noexc311:                                        ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.ci, i8 0, i64 160, i1 false), !noalias !640
  store ptr %i.ci, ptr %i.ch, align 8, !tbaa !22, !noalias !640
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  store i64 0, ptr %i.cj, align 8, !tbaa !26, !noalias !640
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 32 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ck, i8 0, i64 48, i1 false), !noalias !640
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.cl) #22, !noalias !640
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 88
  invoke void @_ZN5vcpkg28ParsedSpdxLicenseDeclarationC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.cm)
          to label %bb.j unwind label %bb.i, !noalias !640

bb.i:                                             ; preds = %.noexc311
  %i.cn = landingpad { ptr, i32 }
          cleanup
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cl) #22, !noalias !640
  call void @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.co) #22, !noalias !640
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ck) #22, !noalias !640
  %i.cp = load ptr, ptr %i.ch, align 8, !tbaa !28, !noalias !640 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.ci
  br i1 %i.cq, label %.body.i309, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i308

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i308: ; preds = %bb.i
  %i.cr = load i64, ptr %i.ci, align 8, !tbaa !25, !noalias !640
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #23, !noalias !640
  br label %.body.i309

.body.i309:                                       ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i308
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 176) #23, !noalias !640
  br label %.body312

bb.j:                                             ; preds = %.noexc311
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ch, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i8 0, i64 24, i1 false), !noalias !640
  store ptr %i.ch, ptr %16, align 8, !tbaa !619, !alias.scope !640
  %i.cu = load i64, ptr %i.cj, align 8, !tbaa !26
  %i.cv = ptrtoint ptr %i.ch to i64               ; 2 uses
  %i.cw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, i64 noundef 0, i64 noundef %i.cu, ptr noundef nonnull @.str.216, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit316 unwind label %bb.bs ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit316: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.cx = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.cx, ptr %17, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.cx, ptr noundef nonnull align 1 dereferenceable(6) @.str.391, i64 6, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 6, ptr %i.cy, align 8, !tbaa !26
  %i.cz = getelementptr inbounds nuw i8, ptr %17, i64 22
  store i8 0, ptr %i.cz, align 2, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %18, ptr nonnull @.str.207, i64 5, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi6EEERAT__Kci.exit unwind label %bb.bt

_ZN5vcpkg7VersionC2ILi6EEERAT__Kci.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit316
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr @.str.123, ptr %10, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i322 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i322, align 8, !tbaa !33
  %i.da = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(36) %18, i32 noundef 2, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %10)
          to label %bb.k unwind label %bb.bu

bb.k:                                             ; preds = %_ZN5vcpkg7VersionC2ILi6EEERAT__Kci.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !136 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 3 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !621 ; 6 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 24 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !624
  %.not.i.i325 = icmp eq ptr %i.de, %i.dg
  br i1 %.not.i.i325, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 %i.cv, ptr %i.de, align 8, !tbaa !619
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %i.dh, ptr %i.dd, align 8, !tbaa !621
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit327

bb.m:                                             ; preds = %bb.k
  %i.di = load ptr, ptr %i.dc, align 8, !tbaa !625 ; 10 uses
  %i.dj = ptrtoint ptr %i.de to i64               ; 3 uses
  %i.dk = ptrtoint ptr %i.di to i64               ; 4 uses
  %i.dl = sub i64 %i.dj, %i.dk                    ; 3 uses
  %i.dm = icmp eq i64 %i.dl, 9223372036854775800
  br i1 %i.dm, label %bb.n, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i752

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc770 unwind label %bb.bu

.noexc770:                                        ; preds = %bb.n
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i752: ; preds = %bb.m
  %i.dn = ashr exact i64 %i.dl, 3                 ; 3 uses
  %.sroa.speculated.i.i753 = call i64 @llvm.umax.i64(i64 %i.dn, i64 1)
  %i.do = add nsw i64 %.sroa.speculated.i.i753, %i.dn ; 2 uses
  %i.dp = icmp ult i64 %i.do, %i.dn
  %i.dq = call i64 @llvm.umin.i64(i64 %i.do, i64 1152921504606846975)
  %i.dr = select i1 %i.dp, i64 1152921504606846975, i64 %i.dq ; 3 uses
  %.not.i.i754 = icmp ne i64 %i.dr, 0
  call void @llvm.assume(i1 %.not.i.i754)
  %i.ds = shl nuw nsw i64 %i.dr, 3
  %i.dt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ds) #24
          to label %.noexc771 unwind label %bb.bu ; 10 uses

.noexc771:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i752
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dl
  store i64 %i.cv, ptr %i.du, align 8, !tbaa !619
  store ptr null, ptr %16, align 8, !tbaa !619
  %.not10.i.i.i.i755 = icmp eq ptr %i.di, %i.de
  br i1 %.not10.i.i.i.i755, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i767, label %.lr.ph.i.i.i.i756.preheader

.lr.ph.i.i.i.i756.preheader:                      ; preds = %.noexc771
  %i.dv = add i64 %i.dj, -8
  %i.dw = sub i64 %i.dv, %i.dk                    ; 2 uses
  %i.dx = lshr i64 %i.dw, 3
  %i.dy = add nuw nsw i64 %i.dx, 1                ; 2 uses
  %min.iters.check1206 = icmp ult i64 %i.dw, 136
  br i1 %min.iters.check1206, label %.lr.ph.i.i.i.i756.preheader1242, label %vector.memcheck1199

vector.memcheck1199:                              ; preds = %.lr.ph.i.i.i.i756.preheader
  %i.dz = add i64 %i.dj, -8
  %i.ea = sub i64 %i.dz, %i.dk
  %i.eb = and i64 %i.ea, -8
  %i.ec = add i64 %i.eb, 8                        ; 2 uses
  %scevgep1200 = getelementptr i8, ptr %i.dt, i64 %i.ec
  %scevgep1201 = getelementptr i8, ptr %i.di, i64 %i.ec
  %bound01202 = icmp ult ptr %i.dt, %scevgep1201
  %bound11203 = icmp ult ptr %i.di, %scevgep1200
  %found.conflict1204 = and i1 %bound01202, %bound11203
  br i1 %found.conflict1204, label %.lr.ph.i.i.i.i756.preheader1242, label %vector.ph1207

vector.ph1207:                                    ; preds = %vector.memcheck1199
  %n.vec1208 = and i64 %i.dy, 4611686018427387900 ; 3 uses
  %i.ed = shl i64 %n.vec1208, 3                   ; 2 uses
  %i.ee = getelementptr i8, ptr %i.dt, i64 %i.ed  ; 2 uses
  %i.ef = getelementptr i8, ptr %i.di, i64 %i.ed
  br label %vector.body1209

vector.body1209:                                  ; preds = %vector.body1209, %vector.ph1207
  %index1210 = phi i64 [ 0, %vector.ph1207 ], [ %index.next1215, %vector.body1209 ] ; 2 uses
  %i.eg = shl i64 %index1210, 3                   ; 2 uses
  %next.gep1211 = getelementptr i8, ptr %i.dt, i64 %i.eg ; 2 uses
  %next.gep1212 = getelementptr i8, ptr %i.di, i64 %i.eg ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !643)
  call void @llvm.experimental.noalias.scope.decl(metadata !646)
  %i.eh = getelementptr i8, ptr %next.gep1212, i64 16
  %wide.load1213 = load <2 x i64>, ptr %next.gep1212, align 8, !tbaa !619, !alias.scope !648, !noalias !643
  %wide.load1214 = load <2 x i64>, ptr %i.eh, align 8, !tbaa !619, !alias.scope !648, !noalias !643
  %i.ei = getelementptr i8, ptr %next.gep1211, i64 16
  store <2 x i64> %wide.load1213, ptr %next.gep1211, align 8, !tbaa !619, !alias.scope !651, !noalias !648
  store <2 x i64> %wide.load1214, ptr %i.ei, align 8, !tbaa !619, !alias.scope !651, !noalias !648
  %i.ej = getelementptr i8, ptr %next.gep1212, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1212, align 8, !tbaa !619, !alias.scope !648, !noalias !643
  store <2 x ptr> splat (ptr null), ptr %i.ej, align 8, !tbaa !619, !alias.scope !648, !noalias !643
  %index.next1215 = add nuw i64 %index1210, 4     ; 2 uses
  %i.ek = icmp eq i64 %index.next1215, %n.vec1208
  br i1 %i.ek, label %middle.block1216, label %vector.body1209, !llvm.loop !653

middle.block1216:                                 ; preds = %vector.body1209
  %cmp.n1217 = icmp eq i64 %i.dy, %n.vec1208
  br i1 %cmp.n1217, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i767, label %.lr.ph.i.i.i.i756.preheader1242

.lr.ph.i.i.i.i756.preheader1242:                  ; preds = %vector.memcheck1199, %.lr.ph.i.i.i.i756.preheader, %middle.block1216
  %.012.i.i.i.i757.ph = phi ptr [ %i.dt, %vector.memcheck1199 ], [ %i.dt, %.lr.ph.i.i.i.i756.preheader ], [ %i.ee, %middle.block1216 ]
  %.0911.i.i.i.i758.ph = phi ptr [ %i.di, %vector.memcheck1199 ], [ %i.di, %.lr.ph.i.i.i.i756.preheader ], [ %i.ef, %middle.block1216 ]
  br label %.lr.ph.i.i.i.i756

.lr.ph.i.i.i.i756:                                ; preds = %.lr.ph.i.i.i.i756.preheader1242, %.lr.ph.i.i.i.i756
  %.012.i.i.i.i757 = phi ptr [ %i.en, %.lr.ph.i.i.i.i756 ], [ %.012.i.i.i.i757.ph, %.lr.ph.i.i.i.i756.preheader1242 ] ; 2 uses
  %.0911.i.i.i.i758 = phi ptr [ %i.em, %.lr.ph.i.i.i.i756 ], [ %.0911.i.i.i.i758.ph, %.lr.ph.i.i.i.i756.preheader1242 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !643)
  call void @llvm.experimental.noalias.scope.decl(metadata !646)
  %i.el = load i64, ptr %.0911.i.i.i.i758, align 8, !tbaa !619, !alias.scope !646, !noalias !643
  store i64 %i.el, ptr %.012.i.i.i.i757, align 8, !tbaa !619, !alias.scope !643, !noalias !646
  store ptr null, ptr %.0911.i.i.i.i758, align 8, !tbaa !619, !alias.scope !646, !noalias !643
  %i.em = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i758, i64 8 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i757, i64 8 ; 2 uses
  %.not.i.i.i.i759 = icmp eq ptr %i.em, %i.de
  br i1 %.not.i.i.i.i759, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i767, label %.lr.ph.i.i.i.i756, !llvm.loop !654

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i767: ; preds = %.lr.ph.i.i.i.i756, %middle.block1216, %.noexc771
  %.0.lcssa.i.i.i.i761 = phi ptr [ %i.dt, %.noexc771 ], [ %i.ee, %middle.block1216 ], [ %i.en, %.lr.ph.i.i.i.i756 ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i761, i64 8
  %.not.i23.i769 = icmp eq ptr %i.di, null
  br i1 %.not.i23.i769, label %.noexc326, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i767
  %i.ep = load ptr, ptr %i.df, align 8, !tbaa !624
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = sub i64 %i.eq, %i.dk
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.er) #23
  br label %.noexc326

.noexc326:                                        ; preds = %bb.o, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i767
  store ptr %i.dt, ptr %i.dc, align 8, !tbaa !625
  store ptr %i.eo, ptr %i.dd, align 8, !tbaa !621
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dr
  store ptr %i.es, ptr %i.df, align 8, !tbaa !624
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit327

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit327: ; preds = %.noexc326, %bb.l
  %i.et = load ptr, ptr %18, align 8, !tbaa !28   ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZN5vcpkg7VersionD2Ev.exit330, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i328

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i328: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit327
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !25
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit330

_ZN5vcpkg7VersionD2Ev.exit330:                    ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit327, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i328
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.ey = load ptr, ptr %17, align 8, !tbaa !28   ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.cx
  br i1 %i.ez, label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit336, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331: ; preds = %_ZN5vcpkg7VersionD2Ev.exit330
  %i.fa = load i64, ptr %i.cx, align 8, !tbaa !25
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fb) #23
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit336

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit336: ; preds = %_ZN5vcpkg7VersionD2Ev.exit330, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !655)
  %i.fc = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #24
          to label %.noexc340 unwind label %bb.bw ; 13 uses

.noexc340:                                        ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit336
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.fd, i8 0, i64 160, i1 false), !noalias !655
  store ptr %i.fd, ptr %i.fc, align 8, !tbaa !22, !noalias !655
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 2 uses
  store i64 0, ptr %i.fe, align 8, !tbaa !26, !noalias !655
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 32 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ff, i8 0, i64 48, i1 false), !noalias !655
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.fg) #22, !noalias !655
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 88
  invoke void @_ZN5vcpkg28ParsedSpdxLicenseDeclarationC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.fh)
          to label %bb.q unwind label %bb.p, !noalias !655

bb.p:                                             ; preds = %.noexc340
  %i.fi = landingpad { ptr, i32 }
          cleanup
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fc, i64 56
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fg) #22, !noalias !655
  call void @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fj) #22, !noalias !655
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ff) #22, !noalias !655
  %i.fk = load ptr, ptr %i.fc, align 8, !tbaa !28, !noalias !655 ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.fd
  br i1 %i.fl, label %.body.i338, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i337

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i337: ; preds = %bb.p
  %i.fm = load i64, ptr %i.fd, align 8, !tbaa !25, !noalias !655
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fn) #23, !noalias !655
  br label %.body.i338

.body.i338:                                       ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i337
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef 176) #23, !noalias !655
  br label %.body341

bb.q:                                             ; preds = %.noexc340
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fc, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fo, i8 0, i64 24, i1 false), !noalias !655
  store ptr %i.fc, ptr %19, align 8, !tbaa !619, !alias.scope !655
  %i.fp = load i64, ptr %i.fe, align 8, !tbaa !26
  %i.fq = ptrtoint ptr %i.fc to i64               ; 2 uses
  %i.fr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.fc, i64 noundef 0, i64 noundef %i.fp, ptr noundef nonnull @.str.216, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit345 unwind label %bb.bx ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit345: ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.fs = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  store ptr %i.fs, ptr %20, align 8, !tbaa !22
  store i32 1702125924, ptr %i.fs, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 4, ptr %i.ft, align 8, !tbaa !26
  %i.fu = getelementptr inbounds nuw i8, ptr %20, i64 20
  store i8 0, ptr %i.fu, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %21, ptr nonnull @.str.393, i64 10, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi11EEERAT__Kci.exit unwind label %bb.by

_ZN5vcpkg7VersionC2ILi11EEERAT__Kci.exit:         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit345
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr @.str.123, ptr %9, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i351 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i351, align 8, !tbaa !33
  %i.fv = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(36) %21, i32 noundef 3, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %9)
          to label %bb.r unwind label %bb.bz

bb.r:                                             ; preds = %_ZN5vcpkg7VersionC2ILi11EEERAT__Kci.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !136 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 16 ; 3 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !621 ; 6 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 24 ; 3 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !624
  %.not.i.i354 = icmp eq ptr %i.fz, %i.gb
  br i1 %.not.i.i354, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i64 %i.fq, ptr %i.fz, align 8, !tbaa !619
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store ptr %i.gc, ptr %i.fy, align 8, !tbaa !621
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit356

bb.t:                                             ; preds = %bb.r
  %i.gd = load ptr, ptr %i.fx, align 8, !tbaa !625 ; 10 uses
  %i.ge = ptrtoint ptr %i.fz to i64               ; 3 uses
  %i.gf = ptrtoint ptr %i.gd to i64               ; 4 uses
  %i.gg = sub i64 %i.ge, %i.gf                    ; 3 uses
  %i.gh = icmp eq i64 %i.gg, 9223372036854775800
  br i1 %i.gh, label %bb.u, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i773

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc791 unwind label %bb.bz

.noexc791:                                        ; preds = %bb.u
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i773: ; preds = %bb.t
  %i.gi = ashr exact i64 %i.gg, 3                 ; 3 uses
  %.sroa.speculated.i.i774 = call i64 @llvm.umax.i64(i64 %i.gi, i64 1)
  %i.gj = add nsw i64 %.sroa.speculated.i.i774, %i.gi ; 2 uses
  %i.gk = icmp ult i64 %i.gj, %i.gi
  %i.gl = call i64 @llvm.umin.i64(i64 %i.gj, i64 1152921504606846975)
  %i.gm = select i1 %i.gk, i64 1152921504606846975, i64 %i.gl ; 3 uses
  %.not.i.i775 = icmp ne i64 %i.gm, 0
  call void @llvm.assume(i1 %.not.i.i775)
  %i.gn = shl nuw nsw i64 %i.gm, 3
  %i.go = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gn) #24
          to label %.noexc792 unwind label %bb.bz ; 10 uses

.noexc792:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i773
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gg
  store i64 %i.fq, ptr %i.gp, align 8, !tbaa !619
  store ptr null, ptr %19, align 8, !tbaa !619
  %.not10.i.i.i.i776 = icmp eq ptr %i.gd, %i.fz
  br i1 %.not10.i.i.i.i776, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i788, label %.lr.ph.i.i.i.i777.preheader

.lr.ph.i.i.i.i777.preheader:                      ; preds = %.noexc792
  %i.gq = add i64 %i.ge, -8
  %i.gr = sub i64 %i.gq, %i.gf                    ; 2 uses
  %i.gs = lshr i64 %i.gr, 3
  %i.gt = add nuw nsw i64 %i.gs, 1                ; 2 uses
  %min.iters.check1227 = icmp ult i64 %i.gr, 136
  br i1 %min.iters.check1227, label %.lr.ph.i.i.i.i777.preheader1241, label %vector.memcheck1220

vector.memcheck1220:                              ; preds = %.lr.ph.i.i.i.i777.preheader
  %i.gu = add i64 %i.ge, -8
  %i.gv = sub i64 %i.gu, %i.gf
  %i.gw = and i64 %i.gv, -8
  %i.gx = add i64 %i.gw, 8                        ; 2 uses
  %scevgep1221 = getelementptr i8, ptr %i.go, i64 %i.gx
  %scevgep1222 = getelementptr i8, ptr %i.gd, i64 %i.gx
  %bound01223 = icmp ult ptr %i.go, %scevgep1222
  %bound11224 = icmp ult ptr %i.gd, %scevgep1221
  %found.conflict1225 = and i1 %bound01223, %bound11224
  br i1 %found.conflict1225, label %.lr.ph.i.i.i.i777.preheader1241, label %vector.ph1228

vector.ph1228:                                    ; preds = %vector.memcheck1220
  %n.vec1229 = and i64 %i.gt, 4611686018427387900 ; 3 uses
  %i.gy = shl i64 %n.vec1229, 3                   ; 2 uses
  %i.gz = getelementptr i8, ptr %i.go, i64 %i.gy  ; 2 uses
  %i.ha = getelementptr i8, ptr %i.gd, i64 %i.gy
  br label %vector.body1230

vector.body1230:                                  ; preds = %vector.body1230, %vector.ph1228
  %index1231 = phi i64 [ 0, %vector.ph1228 ], [ %index.next1236, %vector.body1230 ] ; 2 uses
  %i.hb = shl i64 %index1231, 3                   ; 2 uses
  %next.gep1232 = getelementptr i8, ptr %i.go, i64 %i.hb ; 2 uses
  %next.gep1233 = getelementptr i8, ptr %i.gd, i64 %i.hb ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !658)
  call void @llvm.experimental.noalias.scope.decl(metadata !661)
  %i.hc = getelementptr i8, ptr %next.gep1233, i64 16
  %wide.load1234 = load <2 x i64>, ptr %next.gep1233, align 8, !tbaa !619, !alias.scope !663, !noalias !658
  %wide.load1235 = load <2 x i64>, ptr %i.hc, align 8, !tbaa !619, !alias.scope !663, !noalias !658
  %i.hd = getelementptr i8, ptr %next.gep1232, i64 16
  store <2 x i64> %wide.load1234, ptr %next.gep1232, align 8, !tbaa !619, !alias.scope !666, !noalias !663
  store <2 x i64> %wide.load1235, ptr %i.hd, align 8, !tbaa !619, !alias.scope !666, !noalias !663
  %i.he = getelementptr i8, ptr %next.gep1233, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1233, align 8, !tbaa !619, !alias.scope !663, !noalias !658
  store <2 x ptr> splat (ptr null), ptr %i.he, align 8, !tbaa !619, !alias.scope !663, !noalias !658
  %index.next1236 = add nuw i64 %index1231, 4     ; 2 uses
  %i.hf = icmp eq i64 %index.next1236, %n.vec1229
  br i1 %i.hf, label %middle.block1237, label %vector.body1230, !llvm.loop !668

middle.block1237:                                 ; preds = %vector.body1230
  %cmp.n1238 = icmp eq i64 %i.gt, %n.vec1229
  br i1 %cmp.n1238, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i788, label %.lr.ph.i.i.i.i777.preheader1241

.lr.ph.i.i.i.i777.preheader1241:                  ; preds = %vector.memcheck1220, %.lr.ph.i.i.i.i777.preheader, %middle.block1237
  %.012.i.i.i.i778.ph = phi ptr [ %i.go, %vector.memcheck1220 ], [ %i.go, %.lr.ph.i.i.i.i777.preheader ], [ %i.gz, %middle.block1237 ]
  %.0911.i.i.i.i779.ph = phi ptr [ %i.gd, %vector.memcheck1220 ], [ %i.gd, %.lr.ph.i.i.i.i777.preheader ], [ %i.ha, %middle.block1237 ]
  br label %.lr.ph.i.i.i.i777

.lr.ph.i.i.i.i777:                                ; preds = %.lr.ph.i.i.i.i777.preheader1241, %.lr.ph.i.i.i.i777
  %.012.i.i.i.i778 = phi ptr [ %i.hi, %.lr.ph.i.i.i.i777 ], [ %.012.i.i.i.i778.ph, %.lr.ph.i.i.i.i777.preheader1241 ] ; 2 uses
  %.0911.i.i.i.i779 = phi ptr [ %i.hh, %.lr.ph.i.i.i.i777 ], [ %.0911.i.i.i.i779.ph, %.lr.ph.i.i.i.i777.preheader1241 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !658)
  call void @llvm.experimental.noalias.scope.decl(metadata !661)
  %i.hg = load i64, ptr %.0911.i.i.i.i779, align 8, !tbaa !619, !alias.scope !661, !noalias !658
  store i64 %i.hg, ptr %.012.i.i.i.i778, align 8, !tbaa !619, !alias.scope !658, !noalias !661
  store ptr null, ptr %.0911.i.i.i.i779, align 8, !tbaa !619, !alias.scope !661, !noalias !658
  %i.hh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i779, i64 8 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i778, i64 8 ; 2 uses
  %.not.i.i.i.i780 = icmp eq ptr %i.hh, %i.fz
  br i1 %.not.i.i.i.i780, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i788, label %.lr.ph.i.i.i.i777, !llvm.loop !669

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i788: ; preds = %.lr.ph.i.i.i.i777, %middle.block1237, %.noexc792
  %.0.lcssa.i.i.i.i782 = phi ptr [ %i.go, %.noexc792 ], [ %i.gz, %middle.block1237 ], [ %i.hi, %.lr.ph.i.i.i.i777 ]
  %i.hj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i782, i64 8
  %.not.i23.i790 = icmp eq ptr %i.gd, null
  br i1 %.not.i23.i790, label %.noexc355, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i788
  %i.hk = load ptr, ptr %i.ga, align 8, !tbaa !624
  %i.hl = ptrtoint ptr %i.hk to i64
  %i.hm = sub i64 %i.hl, %i.gf
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.hm) #23
  br label %.noexc355

.noexc355:                                        ; preds = %bb.v, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i788
  store ptr %i.go, ptr %i.fx, align 8, !tbaa !625
  store ptr %i.hj, ptr %i.fy, align 8, !tbaa !621
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %i.gm
  store ptr %i.hn, ptr %i.ga, align 8, !tbaa !624
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit356

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit356: ; preds = %.noexc355, %bb.s
  %i.ho = load ptr, ptr %21, align 8, !tbaa !28   ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.hq = icmp eq ptr %i.ho, %i.hp
  br i1 %i.hq, label %_ZN5vcpkg7VersionD2Ev.exit359, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i357

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i357: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit356
  %i.hr = load i64, ptr %i.hp, align 8, !tbaa !25
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.ho, i64 noundef %i.hs) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit359

_ZN5vcpkg7VersionD2Ev.exit359:                    ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit356, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i357
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  %i.ht = load ptr, ptr %20, align 8, !tbaa !28   ; 2 uses
  %i.hu = icmp eq ptr %i.ht, %i.fs
  br i1 %i.hu, label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit365, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360: ; preds = %_ZN5vcpkg7VersionD2Ev.exit359
  %i.hv = load i64, ptr %i.fs, align 8, !tbaa !25
  %i.hw = add i64 %i.hv, 1
end_hunk_0
begin_hunk_1_@_ZL21C_A_T_C_H_T_E_S_T_144v:bb.a
  %31 = alloca %"struct.vcpkg::PackageSpec", align 8 ; 11 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %34 = alloca %"struct.vcpkg::ExpectedT", align 8 ; 9 uses
  %35 = alloca %"class.std::vector.47", align 8   ; 10 uses
  %36 = alloca [1 x %"struct.vcpkg::Dependency"], align 8 ; 21 uses
  %37 = alloca [1 x %"struct.vcpkg::DependencyRequestedFeature"], align 8 ; 16 uses
  %38 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %39 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %40 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %41 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %42 = alloca %"class.Catch::Section", align 8   ; 7 uses
  %43 = alloca %"struct.Catch::SectionInfo", align 8 ; 10 uses
  %44 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %46 = alloca %struct.MockOverlayProvider, align 8 ; 14 uses
  %47 = alloca %"struct.vcpkg::ExpectedT", align 8 ; 9 uses
  %48 = alloca %"class.std::vector.47", align 8   ; 13 uses
  %49 = alloca [1 x %"struct.vcpkg::Dependency"], align 8 ; 21 uses
  %50 = alloca [1 x %"struct.vcpkg::DependencyRequestedFeature"], align 8 ; 16 uses
  %51 = alloca %"class.std::vector.72", align 8   ; 13 uses
  %52 = alloca [1 x %"struct.vcpkg::DependencyOverride"], align 8 ; 19 uses
  %53 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %54 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %55 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %56 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %57 = alloca %"struct.vcpkg::Version", align 8  ; 19 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %59 = alloca %"struct.vcpkg::ExpectedT", align 8 ; 9 uses
  %60 = alloca %"class.std::vector.47", align 8   ; 13 uses
  %61 = alloca [1 x %"struct.vcpkg::Dependency"], align 8 ; 21 uses
  %62 = alloca [1 x %"struct.vcpkg::DependencyRequestedFeature"], align 8 ; 16 uses
  %63 = alloca %"class.std::vector.72", align 8   ; 13 uses
  %64 = alloca [1 x %"struct.vcpkg::DependencyOverride"], align 8 ; 19 uses
  %65 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %66 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %67 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %68 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV20MockBaselineProvider, i64 16), ptr %8, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.c, ptr %i.e, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.c, ptr %i.f, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 0, ptr %i.g, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit unwind label %bb.at

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit:          ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.i, ptr %10, align 8, !tbaa !22
  store i8 97, ptr %i.i, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 1, ptr %i.j, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 17
  store i8 0, ptr %i.k, align 1, !tbaa !25
  %i.l = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg7VersionESt4lessIvESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.b unwind label %bb.au      ; 10 uses

bb.b:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !28   ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 4 uses
  %i.o = icmp eq ptr %i.m, %i.n
  %i.p = load ptr, ptr %9, align 8, !tbaa !28     ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  %i.r = icmp eq ptr %i.p, %i.q                   ; 2 uses
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  br i1 %i.r, label %bb.c, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.b
  br i1 %i.r, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !26   ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %.not21.i.i = icmp eq ptr %9, %i.l
  br i1 %.not21.i.i, label %_ZN5vcpkg7VersionaSEOS0_.exit, label %bb.d, !prof !29

bb.d:                                             ; preds = %bb.c
  switch i64 %i.t, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.v = load i8, ptr %i.p, align 1, !tbaa !25
  store i8 %i.v, ptr %i.m, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.p, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.w = load i64, ptr %i.s, align 8, !tbaa !26   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !26
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !28
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !25
  %.pre.i.i = load ptr, ptr %9, align 8, !tbaa !28
  br label %_ZN5vcpkg7VersionaSEOS0_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.p, ptr %i.l, align 8, !tbaa !28
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !26
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !26
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !25
  store i64 %i.ad, ptr %i.n, align 8, !tbaa !25
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ae = load i64, ptr %i.n, align 8, !tbaa !25
  store ptr %i.p, ptr %i.l, align 8, !tbaa !28
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !26
  %i.ai = load i64, ptr %i.q, align 8, !tbaa !25
  store i64 %i.ai, ptr %i.n, align 8, !tbaa !25
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.m, ptr %9, align 8, !tbaa !28
  store i64 %i.ae, ptr %i.q, align 8, !tbaa !25
  br label %_ZN5vcpkg7VersionaSEOS0_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.q, ptr %9, align 8, !tbaa !28
  br label %_ZN5vcpkg7VersionaSEOS0_.exit

_ZN5vcpkg7VersionaSEOS0_.exit:                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.g, %bb.h
  %i.aj = phi ptr [ %i.m, %bb.g ], [ %i.q, %bb.h ], [ %i.p, %bb.c ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.ak, align 8, !tbaa !26
  store i8 0, ptr %i.aj, align 1, !tbaa !25
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.am = load i32, ptr %i.al, align 8, !tbaa !30
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i32 %i.am, ptr %i.an, align 8, !tbaa !30
  %i.ao = load ptr, ptr %10, align 8, !tbaa !28   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.i
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228: ; preds = %_ZN5vcpkg7VersionaSEOS0_.exit
  %i.aq = load i64, ptr %i.i, align 8, !tbaa !25
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5vcpkg7VersionaSEOS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.as = load ptr, ptr %9, align 8, !tbaa !28    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZN5vcpkg7VersionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = load i64, ptr %i.at, align 8, !tbaa !25
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit

_ZN5vcpkg7VersionD2Ev.exit:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV29MockVersionedPortfileProvider, i64 16), ptr %11, align 8, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store i32 0, ptr %i.ax, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store ptr null, ptr %i.ay, align 8, !tbaa !11
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !19
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 40
  store ptr %i.ax, ptr %i.ba, align 8, !tbaa !20
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 48
  store i64 0, ptr %i.bb, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  %i.bc = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #24
          to label %.noexc230 unwind label %bb.av ; 13 uses

.noexc230:                                        ; preds = %_ZN5vcpkg7VersionD2Ev.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.bd, i8 0, i64 160, i1 false), !noalias !1169
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !22, !noalias !1169
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  store i64 0, ptr %i.be, align 8, !tbaa !26, !noalias !1169
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 80 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bf, i8 0, i64 48, i1 false), !noalias !1169
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.bg) #22, !noalias !1169
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 88
  invoke void @_ZN5vcpkg28ParsedSpdxLicenseDeclarationC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.bh)
          to label %bb.j unwind label %bb.i, !noalias !1169

bb.i:                                             ; preds = %.noexc230
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bg) #22, !noalias !1169
  call void @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bj) #22, !noalias !1169
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bf) #22, !noalias !1169
  %i.bk = load ptr, ptr %i.bc, align 8, !tbaa !28, !noalias !1169 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.bd
  br i1 %i.bl, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.bm = load i64, ptr %i.bd, align 8, !tbaa !25, !noalias !1169
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #23, !noalias !1169
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef 176) #23, !noalias !1169
  br label %.body

bb.j:                                             ; preds = %.noexc230
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false), !noalias !1169
  store ptr %i.bc, ptr %12, align 8, !tbaa !619, !alias.scope !1169
  %i.bp = load i64, ptr %i.be, align 8, !tbaa !26
  %i.bq = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.br = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, i64 noundef 0, i64 noundef %i.bp, ptr noundef nonnull @.str.216, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.aw ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  invoke void @_ZN5vcpkg18PlatformExpression25parse_platform_expressionENS_10StringViewENS0_23MultipleBinaryOperatorsE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT.400") align 8 %13, ptr nonnull @.str.413, i64 7, i32 noundef 0)
          to label %bb.k unwind label %bb.ax

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  store i32 2333, ptr %14, align 8, !tbaa !143
  %i.bs = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr @.str, ptr %i.bs, align 8, !tbaa !145
  %i.bt = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr @__func__._ZL21C_A_T_C_H_T_E_S_T_144v, ptr %i.bt, align 8, !tbaa !146
  %i.bu = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !1149, !range !90, !noundef !91
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.l, label %_ZNO5vcpkg9ExpectedTINS_18PlatformExpression4ExprENS_15LocalizedStringEE13value_or_exitERKNS_8LineInfoE.exit

bb.l:                                             ; preds = %bb.k
  %i.bx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKR5vcpkg9ExpectedTINS_18PlatformExpression4ExprENS_15LocalizedStringEE5errorEv(ptr noundef nonnull align 8 dereferenceable(33) %13) #22
  invoke void @_ZN5vcpkg6Checks21msg_exit_with_messageERKNS_8LineInfoERKNS_15LocalizedStringE(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.bx) #25
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #21
  unreachable

_ZNO5vcpkg9ExpectedTINS_18PlatformExpression4ExprENS_15LocalizedStringEE13value_or_exitERKNS_8LineInfoE.exit: ; preds = %bb.k
  %i.ca = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5vcpkg18PlatformExpression4ExpraSEOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %13) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.cb = load i8, ptr %i.bu, align 8, !tbaa !1149, !range !90, !noundef !91
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNO5vcpkg9ExpectedTINS_18PlatformExpression4ExprENS_15LocalizedStringEE13value_or_exitERKNS_8LineInfoE.exit
  %i.cd = load ptr, ptr %13, align 8, !tbaa !28   ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZN5vcpkg9ExpectedTINS_18PlatformExpression4ExprENS_15LocalizedStringEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i232: ; preds = %bb.o
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !25
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #23
  br label %_ZN5vcpkg9ExpectedTINS_18PlatformExpression4ExprENS_15LocalizedStringEED2Ev.exit

bb.p:                                             ; preds = %_ZNO5vcpkg9ExpectedTINS_18PlatformExpression4ExprENS_15LocalizedStringEE13value_or_exitERKNS_8LineInfoE.exit
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(33) %13) #22
  br label %_ZN5vcpkg9ExpectedTINS_18PlatformExpression4ExprENS_15LocalizedStringEED2Ev.exit

_ZN5vcpkg9ExpectedTINS_18PlatformExpression4ExprENS_15LocalizedStringEED2Ev.exit: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i232, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.ci = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.ci, ptr %15, align 8, !tbaa !22
  store i8 97, ptr %i.ci, align 8, !tbaa !25
  %i.cj = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 1, ptr %i.cj, align 8, !tbaa !26
  %i.ck = getelementptr inbounds nuw i8, ptr %15, i64 17
  store i8 0, ptr %i.ck, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %16, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit239 unwind label %bb.ay

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit239:       ; preds = %_ZN5vcpkg9ExpectedTINS_18PlatformExpression4ExprENS_15LocalizedStringEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr @.str.123, ptr %7, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !33
  %i.cl = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(36) %16, i32 noundef 4, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %7)
          to label %bb.q unwind label %bb.az

bb.q:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit239
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !136 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !621 ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 24 ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !624
  %.not.i.i241 = icmp eq ptr %i.cp, %i.cr
  br i1 %.not.i.i241, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i64 %i.bq, ptr %i.cp, align 8, !tbaa !619
  store ptr null, ptr %12, align 8, !tbaa !619
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.cs, ptr %i.co, align 8, !tbaa !621
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

bb.s:                                             ; preds = %bb.q
  %i.ct = load ptr, ptr %i.cn, align 8, !tbaa !625 ; 10 uses
  %i.cu = ptrtoint ptr %i.cp to i64               ; 3 uses
  %i.cv = ptrtoint ptr %i.ct to i64               ; 4 uses
  %i.cw = sub i64 %i.cu, %i.cv                    ; 3 uses
  %i.cx = icmp eq i64 %i.cw, 9223372036854775800
  br i1 %i.cx, label %bb.t, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc619 unwind label %bb.az

.noexc619:                                        ; preds = %bb.t
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.s
  %i.cy = ashr exact i64 %i.cw, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cy, i64 1)
  %i.cz = add nsw i64 %.sroa.speculated.i.i, %i.cy ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.cy
  %i.db = call i64 @llvm.umin.i64(i64 %i.cz, i64 1152921504606846975)
  %i.dc = select i1 %i.da, i64 1152921504606846975, i64 %i.db ; 3 uses
  %.not.i.i617 = icmp ne i64 %i.dc, 0
  call void @llvm.assume(i1 %.not.i.i617)
  %i.dd = shl nuw nsw i64 %i.dc, 3
  %i.de = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #24
          to label %.noexc620 unwind label %bb.az ; 10 uses

.noexc620:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.cw
  store i64 %i.bq, ptr %i.df, align 8, !tbaa !619
  store ptr null, ptr %12, align 8, !tbaa !619
  %.not10.i.i.i.i = icmp eq ptr %i.ct, %i.cp
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc620
  %i.dg = add i64 %i.cu, -8
  %i.dh = sub i64 %i.dg, %i.cv                    ; 2 uses
  %i.di = lshr i64 %i.dh, 3
  %i.dj = add nuw nsw i64 %i.di, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dh, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader1043, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.dk = add i64 %i.cu, -8
  %i.dl = sub i64 %i.dk, %i.cv
  %i.dm = and i64 %i.dl, -8
  %i.dn = add i64 %i.dm, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.de, i64 %i.dn
  %scevgep1017 = getelementptr i8, ptr %i.ct, i64 %i.dn
  %bound0 = icmp ult ptr %i.de, %scevgep1017
  %bound1 = icmp ult ptr %i.ct, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader1043, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dj, 4611686018427387900     ; 3 uses
  %i.do = shl i64 %n.vec, 3                       ; 2 uses
  %i.dp = getelementptr i8, ptr %i.de, i64 %i.do  ; 2 uses
  %i.dq = getelementptr i8, ptr %i.ct, i64 %i.do
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dr = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.de, i64 %i.dr ; 2 uses
  %next.gep1018 = getelementptr i8, ptr %i.ct, i64 %i.dr ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  %i.ds = getelementptr i8, ptr %next.gep1018, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1018, align 8, !tbaa !619, !alias.scope !1177, !noalias !1172
  %wide.load1019 = load <2 x i64>, ptr %i.ds, align 8, !tbaa !619, !alias.scope !1177, !noalias !1172
  %i.dt = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !619, !alias.scope !1180, !noalias !1177
  store <2 x i64> %wide.load1019, ptr %i.dt, align 8, !tbaa !619, !alias.scope !1180, !noalias !1177
  %i.du = getelementptr i8, ptr %next.gep1018, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1018, align 8, !tbaa !619, !alias.scope !1177, !noalias !1172
  store <2 x ptr> splat (ptr null), ptr %i.du, align 8, !tbaa !619, !alias.scope !1177, !noalias !1172
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !1182

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader1043

.lr.ph.i.i.i.i.preheader1043:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.de, %vector.memcheck ], [ %i.de, %.lr.ph.i.i.i.i.preheader ], [ %i.dp, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ct, %vector.memcheck ], [ %i.ct, %.lr.ph.i.i.i.i.preheader ], [ %i.dq, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader1043, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader1043 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader1043 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  %i.dw = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !1175, !noalias !1172
  store i64 %i.dw, ptr %.012.i.i.i.i, align 8, !tbaa !619, !alias.scope !1172, !noalias !1175
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !1175, !noalias !1172
  %i.dx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i618 = icmp eq ptr %i.dx, %i.cp
  br i1 %.not.i.i.i.i618, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1183

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc620
  %.0.lcssa.i.i.i.i = phi ptr [ %i.de, %.noexc620 ], [ %i.dp, %middle.block ], [ %i.dy, %.lr.ph.i.i.i.i ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ct, null
  br i1 %.not.i23.i, label %.noexc242, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.ea = load ptr, ptr %i.cq, align 8, !tbaa !624
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = sub i64 %i.eb, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.ec) #23
  br label %.noexc242

.noexc242:                                        ; preds = %bb.u, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.de, ptr %i.cn, align 8, !tbaa !625
  store ptr %i.dz, ptr %i.co, align 8, !tbaa !621
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dc
  store ptr %i.ed, ptr %i.cq, align 8, !tbaa !624
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %.noexc242, %bb.r
  %i.ee = load ptr, ptr %16, align 8, !tbaa !28   ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.eg = icmp eq ptr %i.ee, %i.ef
  br i1 %i.eg, label %_ZN5vcpkg7VersionD2Ev.exit245, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i243: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %i.eh = load i64, ptr %i.ef, align 8, !tbaa !25
  %i.ei = add i64 %i.eh, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.ei) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit245

_ZN5vcpkg7VersionD2Ev.exit245:                    ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i243
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.ej = load ptr, ptr %15, align 8, !tbaa !28   ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.ci
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246: ; preds = %_ZN5vcpkg7VersionD2Ev.exit245
  %i.el = load i64, ptr %i.ci, align 8, !tbaa !25
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248: ; preds = %_ZN5vcpkg7VersionD2Ev.exit245, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.en = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #24
          to label %.noexc252 unwind label %bb.ba ; 13 uses

.noexc252:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.eo, i8 0, i64 160, i1 false), !noalias !1184
  store ptr %i.eo, ptr %i.en, align 8, !tbaa !22, !noalias !1184
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  store i64 0, ptr %i.ep, align 8, !tbaa !26, !noalias !1184
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 32 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.eq, i8 0, i64 48, i1 false), !noalias !1184
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.er) #22, !noalias !1184
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 88
  invoke void @_ZN5vcpkg28ParsedSpdxLicenseDeclarationC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.es)
          to label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit unwind label %bb.v, !noalias !1184

bb.v:                                             ; preds = %.noexc252
  %i.et = landingpad { ptr, i32 }
          cleanup
  %i.eu = getelementptr inbounds nuw i8, ptr %i.en, i64 56
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.er) #22, !noalias !1184
  call void @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.eu) #22, !noalias !1184
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.eq) #22, !noalias !1184
  %i.ev = load ptr, ptr %i.en, align 8, !tbaa !28, !noalias !1184 ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.eo
  br i1 %i.ew, label %.body.i250, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i249: ; preds = %bb.v
  %i.ex = load i64, ptr %i.eo, align 8, !tbaa !25, !noalias !1184
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #23, !noalias !1184
  br label %.body.i250

.body.i250:                                       ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i249
  call void @_ZdlPvm(ptr noundef nonnull %i.en, i64 noundef 176) #23, !noalias !1184
  br label %.body253

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit: ; preds = %.noexc252
  %i.ez = getelementptr inbounds nuw i8, ptr %i.en, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ez, i8 0, i64 24, i1 false), !noalias !1184
  store ptr %i.en, ptr %12, align 8, !tbaa !619
  %i.fa = ptrtoint ptr %i.en to i64               ; 2 uses
  %.pre = load i64, ptr %i.ep, align 8, !tbaa !26
  %i.fb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.en, i64 noundef 0, i64 noundef %.pre, ptr noundef nonnull @.str.216, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit257 unwind label %bb.aw ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit257: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.fc = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.fc, ptr %17, align 8, !tbaa !22
  store i8 97, ptr %i.fc, align 8, !tbaa !25
  %i.fd = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 1, ptr %i.fd, align 8, !tbaa !26
  %i.fe = getelementptr inbounds nuw i8, ptr %17, i64 17
  store i8 0, ptr %i.fe, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %18, ptr nonnull @.str.124, i64 1, i32 noundef 1)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit263 unwind label %bb.bb

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit263:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit257
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr @.str.123, ptr %6, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i264 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i264, align 8, !tbaa !33
  %i.ff = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(36) %18, i32 noundef 4, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %6)
          to label %bb.w unwind label %bb.bc

bb.w:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit263
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !136 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 16 ; 3 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !621 ; 6 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 24 ; 3 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !624
  %.not.i.i267 = icmp eq ptr %i.fj, %i.fl
  br i1 %.not.i.i267, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i64 %i.fa, ptr %i.fj, align 8, !tbaa !619
  store ptr null, ptr %12, align 8, !tbaa !619
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store ptr %i.fm, ptr %i.fi, align 8, !tbaa !621
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit269

bb.y:                                             ; preds = %bb.w
  %i.fn = load ptr, ptr %i.fh, align 8, !tbaa !625 ; 10 uses
  %i.fo = ptrtoint ptr %i.fj to i64               ; 3 uses
  %i.fp = ptrtoint ptr %i.fn to i64               ; 4 uses
  %i.fq = sub i64 %i.fo, %i.fp                    ; 3 uses
  %i.fr = icmp eq i64 %i.fq, 9223372036854775800
  br i1 %i.fr, label %bb.z, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i621

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc639 unwind label %bb.bc

.noexc639:                                        ; preds = %bb.z
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i621: ; preds = %bb.y
  %i.fs = ashr exact i64 %i.fq, 3                 ; 3 uses
  %.sroa.speculated.i.i622 = call i64 @llvm.umax.i64(i64 %i.fs, i64 1)
  %i.ft = add nsw i64 %.sroa.speculated.i.i622, %i.fs ; 2 uses
  %i.fu = icmp ult i64 %i.ft, %i.fs
  %i.fv = call i64 @llvm.umin.i64(i64 %i.ft, i64 1152921504606846975)
  %i.fw = select i1 %i.fu, i64 1152921504606846975, i64 %i.fv ; 3 uses
  %.not.i.i623 = icmp ne i64 %i.fw, 0
  call void @llvm.assume(i1 %.not.i.i623)
  %i.fx = shl nuw nsw i64 %i.fw, 3
  %i.fy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fx) #24
          to label %.noexc640 unwind label %bb.bc ; 10 uses

.noexc640:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i621
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fq
  store i64 %i.fa, ptr %i.fz, align 8, !tbaa !619
  store ptr null, ptr %12, align 8, !tbaa !619
  %.not10.i.i.i.i624 = icmp eq ptr %i.fn, %i.fj
  br i1 %.not10.i.i.i.i624, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i636, label %.lr.ph.i.i.i.i625.preheader

.lr.ph.i.i.i.i625.preheader:                      ; preds = %.noexc640
  %i.ga = add i64 %i.fo, -8
  %i.gb = sub i64 %i.ga, %i.fp                    ; 2 uses
  %i.gc = lshr i64 %i.gb, 3
  %i.gd = add nuw nsw i64 %i.gc, 1                ; 2 uses
  %min.iters.check1028 = icmp ult i64 %i.gb, 136
  br i1 %min.iters.check1028, label %.lr.ph.i.i.i.i625.preheader1042, label %vector.memcheck1021

vector.memcheck1021:                              ; preds = %.lr.ph.i.i.i.i625.preheader
  %i.ge = add i64 %i.fo, -8
  %i.gf = sub i64 %i.ge, %i.fp
  %i.gg = and i64 %i.gf, -8
  %i.gh = add i64 %i.gg, 8                        ; 2 uses
  %scevgep1022 = getelementptr i8, ptr %i.fy, i64 %i.gh
  %scevgep1023 = getelementptr i8, ptr %i.fn, i64 %i.gh
  %bound01024 = icmp ult ptr %i.fy, %scevgep1023
  %bound11025 = icmp ult ptr %i.fn, %scevgep1022
  %found.conflict1026 = and i1 %bound01024, %bound11025
  br i1 %found.conflict1026, label %.lr.ph.i.i.i.i625.preheader1042, label %vector.ph1029

vector.ph1029:                                    ; preds = %vector.memcheck1021
  %n.vec1030 = and i64 %i.gd, 4611686018427387900 ; 3 uses
  %i.gi = shl i64 %n.vec1030, 3                   ; 2 uses
  %i.gj = getelementptr i8, ptr %i.fy, i64 %i.gi  ; 2 uses
  %i.gk = getelementptr i8, ptr %i.fn, i64 %i.gi
  br label %vector.body1031

vector.body1031:                                  ; preds = %vector.body1031, %vector.ph1029
  %index1032 = phi i64 [ 0, %vector.ph1029 ], [ %index.next1037, %vector.body1031 ] ; 2 uses
  %i.gl = shl i64 %index1032, 3                   ; 2 uses
  %next.gep1033 = getelementptr i8, ptr %i.fy, i64 %i.gl ; 2 uses
  %next.gep1034 = getelementptr i8, ptr %i.fn, i64 %i.gl ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  call void @llvm.experimental.noalias.scope.decl(metadata !1190)
  %i.gm = getelementptr i8, ptr %next.gep1034, i64 16
  %wide.load1035 = load <2 x i64>, ptr %next.gep1034, align 8, !tbaa !619, !alias.scope !1192, !noalias !1187
  %wide.load1036 = load <2 x i64>, ptr %i.gm, align 8, !tbaa !619, !alias.scope !1192, !noalias !1187
  %i.gn = getelementptr i8, ptr %next.gep1033, i64 16
  store <2 x i64> %wide.load1035, ptr %next.gep1033, align 8, !tbaa !619, !alias.scope !1195, !noalias !1192
  store <2 x i64> %wide.load1036, ptr %i.gn, align 8, !tbaa !619, !alias.scope !1195, !noalias !1192
  %i.go = getelementptr i8, ptr %next.gep1034, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1034, align 8, !tbaa !619, !alias.scope !1192, !noalias !1187
  store <2 x ptr> splat (ptr null), ptr %i.go, align 8, !tbaa !619, !alias.scope !1192, !noalias !1187
  %index.next1037 = add nuw i64 %index1032, 4     ; 2 uses
  %i.gp = icmp eq i64 %index.next1037, %n.vec1030
  br i1 %i.gp, label %middle.block1038, label %vector.body1031, !llvm.loop !1197

middle.block1038:                                 ; preds = %vector.body1031
  %cmp.n1039 = icmp eq i64 %i.gd, %n.vec1030
  br i1 %cmp.n1039, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i636, label %.lr.ph.i.i.i.i625.preheader1042

.lr.ph.i.i.i.i625.preheader1042:                  ; preds = %vector.memcheck1021, %.lr.ph.i.i.i.i625.preheader, %middle.block1038
  %.012.i.i.i.i626.ph = phi ptr [ %i.fy, %vector.memcheck1021 ], [ %i.fy, %.lr.ph.i.i.i.i625.preheader ], [ %i.gj, %middle.block1038 ]
  %.0911.i.i.i.i627.ph = phi ptr [ %i.fn, %vector.memcheck1021 ], [ %i.fn, %.lr.ph.i.i.i.i625.preheader ], [ %i.gk, %middle.block1038 ]
  br label %.lr.ph.i.i.i.i625

.lr.ph.i.i.i.i625:                                ; preds = %.lr.ph.i.i.i.i625.preheader1042, %.lr.ph.i.i.i.i625
  %.012.i.i.i.i626 = phi ptr [ %i.gs, %.lr.ph.i.i.i.i625 ], [ %.012.i.i.i.i626.ph, %.lr.ph.i.i.i.i625.preheader1042 ] ; 2 uses
  %.0911.i.i.i.i627 = phi ptr [ %i.gr, %.lr.ph.i.i.i.i625 ], [ %.0911.i.i.i.i627.ph, %.lr.ph.i.i.i.i625.preheader1042 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  call void @llvm.experimental.noalias.scope.decl(metadata !1190)
  %i.gq = load i64, ptr %.0911.i.i.i.i627, align 8, !tbaa !619, !alias.scope !1190, !noalias !1187
  store i64 %i.gq, ptr %.012.i.i.i.i626, align 8, !tbaa !619, !alias.scope !1187, !noalias !1190
  store ptr null, ptr %.0911.i.i.i.i627, align 8, !tbaa !619, !alias.scope !1190, !noalias !1187
  %i.gr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i627, i64 8 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i626, i64 8 ; 2 uses
  %.not.i.i.i.i628 = icmp eq ptr %i.gr, %i.fj
  br i1 %.not.i.i.i.i628, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i636, label %.lr.ph.i.i.i.i625, !llvm.loop !1198

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i636: ; preds = %.lr.ph.i.i.i.i625, %middle.block1038, %.noexc640
  %.0.lcssa.i.i.i.i630 = phi ptr [ %i.fy, %.noexc640 ], [ %i.gj, %middle.block1038 ], [ %i.gs, %.lr.ph.i.i.i.i625 ]
  %i.gt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i630, i64 8
  %.not.i23.i638 = icmp eq ptr %i.fn, null
  br i1 %.not.i23.i638, label %.noexc268, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i636
  %i.gu = load ptr, ptr %i.fk, align 8, !tbaa !624
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = sub i64 %i.gv, %i.fp
  call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef %i.gw) #23
  br label %.noexc268

.noexc268:                                        ; preds = %bb.aa, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i636
  store ptr %i.fy, ptr %i.fh, align 8, !tbaa !625
  store ptr %i.gt, ptr %i.fi, align 8, !tbaa !621
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.fw
  store ptr %i.gx, ptr %i.fk, align 8, !tbaa !624
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit269

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit269: ; preds = %.noexc268, %bb.x
  %i.gy = load ptr, ptr %18, align 8, !tbaa !28   ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ha = icmp eq ptr %i.gy, %i.gz
  br i1 %i.ha, label %_ZN5vcpkg7VersionD2Ev.exit272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i270

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i270: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit269
  %i.hb = load i64, ptr %i.gz, align 8, !tbaa !25
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hc) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit272

_ZN5vcpkg7VersionD2Ev.exit272:                    ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit269, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i270
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.hd = load ptr, ptr %17, align 8, !tbaa !28   ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.fc
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273: ; preds = %_ZN5vcpkg7VersionD2Ev.exit272
  %i.hf = load i64, ptr %i.fc, align 8, !tbaa !25
end_hunk_1
begin_hunk_2_@_ZL21C_A_T_C_H_T_E_S_T_147v:bb.a
  %37 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %38 = alloca %"class.Catch::BinaryExpr", align 8 ; 13 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %39 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %40 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %41 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %42 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %43 = alloca %"class.Catch::BinaryExpr", align 8 ; 13 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %44 = alloca %"class.Catch::Section", align 8   ; 7 uses
  %45 = alloca %"struct.Catch::SectionInfo", align 8 ; 10 uses
  %46 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %49 = alloca %"struct.vcpkg::ExpectedT", align 8 ; 12 uses
  %50 = alloca %"class.std::vector.47", align 8   ; 10 uses
  %51 = alloca [1 x %"struct.vcpkg::Dependency"], align 8 ; 7 uses
  %52 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %53 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %54 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %55 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %56 = alloca %"struct.vcpkg::LineInfo", align 8 ; 6 uses
  %57 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %58 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %59 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %60 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %61 = alloca %"class.Catch::BinaryExpr", align 8 ; 13 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %62 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %63 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %64 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %65 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %66 = alloca %"class.Catch::BinaryExpr", align 8 ; 13 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV20MockBaselineProvider, i64 16), ptr %9, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store i32 0, ptr %i.k, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.k, ptr %i.m, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 40
  store ptr %i.k, ptr %i.n, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i64 0, ptr %i.o, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit unwind label %bb.aq

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.p, ptr %11, align 8, !tbaa !22
  store i8 97, ptr %i.p, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 1, ptr %i.q, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 17
  store i8 0, ptr %i.r, align 1, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.t = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg7VersionESt4lessIvESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.b unwind label %bb.ar      ; 10 uses

bb.b:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !28   ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 4 uses
  %i.w = icmp eq ptr %i.u, %i.v
  %i.x = load ptr, ptr %10, align 8, !tbaa !28    ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.z = icmp eq ptr %i.x, %i.y                   ; 2 uses
  br i1 %i.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  br i1 %i.z, label %bb.c, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.b
  br i1 %i.z, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !26 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %.not21.i.i = icmp eq ptr %10, %i.t
  br i1 %.not21.i.i, label %_ZN5vcpkg7VersionaSEOS0_.exit, label %bb.d, !prof !29

bb.d:                                             ; preds = %bb.c
  switch i64 %i.ab, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.ad = load i8, ptr %i.x, align 1, !tbaa !25
  store i8 %i.ad, ptr %i.u, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.x, i64 %i.ab, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.ae = load i64, ptr %i.aa, align 8, !tbaa !26 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !26
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !28
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !25
  %.pre.i.i = load ptr, ptr %10, align 8, !tbaa !28
  br label %_ZN5vcpkg7VersionaSEOS0_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.x, ptr %i.t, align 8, !tbaa !28
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !26
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !26
  %i.al = load i64, ptr %i.y, align 8, !tbaa !25
  store i64 %i.al, ptr %i.v, align 8, !tbaa !25
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.am = load i64, ptr %i.v, align 8, !tbaa !25
  store ptr %i.x, ptr %i.t, align 8, !tbaa !28
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !26
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !26
  %i.aq = load i64, ptr %i.y, align 8, !tbaa !25
  store i64 %i.aq, ptr %i.v, align 8, !tbaa !25
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.u, ptr %10, align 8, !tbaa !28
  store i64 %i.am, ptr %i.y, align 8, !tbaa !25
  br label %_ZN5vcpkg7VersionaSEOS0_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.y, ptr %10, align 8, !tbaa !28
  br label %_ZN5vcpkg7VersionaSEOS0_.exit

_ZN5vcpkg7VersionaSEOS0_.exit:                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.g, %bb.h
  %i.ar = phi ptr [ %i.u, %bb.g ], [ %i.y, %bb.h ], [ %i.x, %bb.c ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.as, align 8, !tbaa !26
  store i8 0, ptr %i.ar, align 1, !tbaa !25
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !30
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store i32 %i.au, ptr %i.av, align 8, !tbaa !30
  %i.aw = load ptr, ptr %11, align 8, !tbaa !28   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.p
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %_ZN5vcpkg7VersionaSEOS0_.exit
  %i.ay = load i64, ptr %i.p, align 8, !tbaa !25
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5vcpkg7VersionaSEOS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.ba = load ptr, ptr %10, align 8, !tbaa !28   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZN5vcpkg7VersionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !25
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit

_ZN5vcpkg7VersionD2Ev.exit:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV29MockVersionedPortfileProvider, i64 16), ptr %12, align 8, !tbaa !9
  %i.bf = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store i32 0, ptr %i.bf, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  store ptr null, ptr %i.bg, align 8, !tbaa !11
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !19
  %i.bi = getelementptr inbounds nuw i8, ptr %12, i64 40
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !20
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 48
  store i64 0, ptr %i.bj, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  %i.bk = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #24
          to label %.noexc137 unwind label %bb.as ; 13 uses

.noexc137:                                        ; preds = %_ZN5vcpkg7VersionD2Ev.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.bl, i8 0, i64 160, i1 false), !noalias !1217
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !22, !noalias !1217
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  store i64 0, ptr %i.bm, align 8, !tbaa !26, !noalias !1217
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 32 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bn, i8 0, i64 48, i1 false), !noalias !1217
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.bo) #22, !noalias !1217
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 88
  invoke void @_ZN5vcpkg28ParsedSpdxLicenseDeclarationC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.bp)
          to label %bb.j unwind label %bb.i, !noalias !1217

bb.i:                                             ; preds = %.noexc137
  %i.bq = landingpad { ptr, i32 }
          cleanup
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bo) #22, !noalias !1217
  call void @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.br) #22, !noalias !1217
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bn) #22, !noalias !1217
  %i.bs = load ptr, ptr %i.bk, align 8, !tbaa !28, !noalias !1217 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.bl
  br i1 %i.bt, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.bu = load i64, ptr %i.bl, align 8, !tbaa !25, !noalias !1217
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #23, !noalias !1217
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 176) #23, !noalias !1217
  br label %.body

bb.j:                                             ; preds = %.noexc137
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bk, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i8 0, i64 24, i1 false), !noalias !1217
  store ptr %i.bk, ptr %13, align 8, !tbaa !619, !alias.scope !1217
  %i.bx = load i64, ptr %i.bm, align 8, !tbaa !26
  %i.by = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i64 noundef 0, i64 noundef %i.bx, ptr noundef nonnull @.str.216, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.at ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.ca = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.ca, ptr %14, align 8, !tbaa !22
  store i8 97, ptr %i.ca, align 8, !tbaa !25
  %i.cb = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 1, ptr %i.cb, align 8, !tbaa !26
  %i.cc = getelementptr inbounds nuw i8, ptr %14, i64 17
  store i8 0, ptr %i.cc, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %15, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit144 unwind label %bb.au

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit144:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr @.str.123, ptr %8, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !33
  %i.cd = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(36) %15, i32 noundef 4, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %8)
          to label %bb.k unwind label %bb.av

bb.k:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit144
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !136 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !621 ; 6 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 24 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !624
  %.not.i.i146 = icmp eq ptr %i.ch, %i.cj
  br i1 %.not.i.i146, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 %i.by, ptr %i.ch, align 8, !tbaa !619
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.ck, ptr %i.cg, align 8, !tbaa !621
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

bb.m:                                             ; preds = %bb.k
  %i.cl = load ptr, ptr %i.cf, align 8, !tbaa !625 ; 10 uses
  %i.cm = ptrtoint ptr %i.ch to i64               ; 3 uses
  %i.cn = ptrtoint ptr %i.cl to i64               ; 4 uses
  %i.co = sub i64 %i.cm, %i.cn                    ; 3 uses
  %i.cp = icmp eq i64 %i.co, 9223372036854775800
  br i1 %i.cp, label %bb.n, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc293 unwind label %bb.av

.noexc293:                                        ; preds = %bb.n
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.m
  %i.cq = ashr exact i64 %i.co, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cq, i64 1)
  %i.cr = add nsw i64 %.sroa.speculated.i.i, %i.cq ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.cq
  %i.ct = call i64 @llvm.umin.i64(i64 %i.cr, i64 1152921504606846975)
  %i.cu = select i1 %i.cs, i64 1152921504606846975, i64 %i.ct ; 3 uses
  %.not.i.i291 = icmp ne i64 %i.cu, 0
  call void @llvm.assume(i1 %.not.i.i291)
  %i.cv = shl nuw nsw i64 %i.cu, 3
  %i.cw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #24
          to label %.noexc294 unwind label %bb.av ; 10 uses

.noexc294:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.co
  store i64 %i.by, ptr %i.cx, align 8, !tbaa !619
  store ptr null, ptr %13, align 8, !tbaa !619
  %.not10.i.i.i.i = icmp eq ptr %i.cl, %i.ch
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc294
  %i.cy = add i64 %i.cm, -8
  %i.cz = sub i64 %i.cy, %i.cn                    ; 2 uses
  %i.da = lshr i64 %i.cz, 3
  %i.db = add nuw nsw i64 %i.da, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cz, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader438, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.dc = add i64 %i.cm, -8
  %i.dd = sub i64 %i.dc, %i.cn
  %i.de = and i64 %i.dd, -8
  %i.df = add i64 %i.de, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cw, i64 %i.df
  %scevgep434 = getelementptr i8, ptr %i.cl, i64 %i.df
  %bound0 = icmp ult ptr %i.cw, %scevgep434
  %bound1 = icmp ult ptr %i.cl, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader438, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.db, 4611686018427387900     ; 3 uses
  %i.dg = shl i64 %n.vec, 3                       ; 2 uses
  %i.dh = getelementptr i8, ptr %i.cw, i64 %i.dg  ; 2 uses
  %i.di = getelementptr i8, ptr %i.cl, i64 %i.dg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cw, i64 %i.dj ; 2 uses
  %next.gep435 = getelementptr i8, ptr %i.cl, i64 %i.dj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  %i.dk = getelementptr i8, ptr %next.gep435, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep435, align 8, !tbaa !619, !alias.scope !1225, !noalias !1220
  %wide.load436 = load <2 x i64>, ptr %i.dk, align 8, !tbaa !619, !alias.scope !1225, !noalias !1220
  %i.dl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !619, !alias.scope !1228, !noalias !1225
  store <2 x i64> %wide.load436, ptr %i.dl, align 8, !tbaa !619, !alias.scope !1228, !noalias !1225
  %i.dm = getelementptr i8, ptr %next.gep435, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep435, align 8, !tbaa !619, !alias.scope !1225, !noalias !1220
  store <2 x ptr> splat (ptr null), ptr %i.dm, align 8, !tbaa !619, !alias.scope !1225, !noalias !1220
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !1230

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader438

.lr.ph.i.i.i.i.preheader438:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.cw, %vector.memcheck ], [ %i.cw, %.lr.ph.i.i.i.i.preheader ], [ %i.dh, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.cl, %vector.memcheck ], [ %i.cl, %.lr.ph.i.i.i.i.preheader ], [ %i.di, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader438, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dq, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader438 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader438 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  %i.do = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !1223, !noalias !1220
  store i64 %i.do, ptr %.012.i.i.i.i, align 8, !tbaa !619, !alias.scope !1220, !noalias !1223
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !1223, !noalias !1220
  %i.dp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i292 = icmp eq ptr %i.dp, %i.ch
  br i1 %.not.i.i.i.i292, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1231

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc294
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cw, %.noexc294 ], [ %i.dh, %middle.block ], [ %i.dq, %.lr.ph.i.i.i.i ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.cl, null
  br i1 %.not.i23.i, label %.noexc147, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.ds = load ptr, ptr %i.ci, align 8, !tbaa !624
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = sub i64 %i.dt, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.du) #23
  br label %.noexc147

.noexc147:                                        ; preds = %bb.o, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.cw, ptr %i.cf, align 8, !tbaa !625
  store ptr %i.dr, ptr %i.cg, align 8, !tbaa !621
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.dv, ptr %i.ci, align 8, !tbaa !624
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %.noexc147, %bb.l
  %i.dw = load ptr, ptr %15, align 8, !tbaa !28   ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZN5vcpkg7VersionD2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i148: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !25
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit150

_ZN5vcpkg7VersionD2Ev.exit150:                    ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.eb = load ptr, ptr %14, align 8, !tbaa !28   ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.ca
  br i1 %i.ec, label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %_ZN5vcpkg7VersionD2Ev.exit150
  %i.ed = load i64, ptr %i.ca, align 8, !tbaa !25
  %i.ee = add i64 %i.ed, 1
end_hunk_2
begin_hunk_3_@_ZL21C_A_T_C_H_T_E_S_T_151v:bb.a
  %39 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %40 = alloca %"class.Catch::BinaryExpr", align 8 ; 13 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %41 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %42 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %43 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %44 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %45 = alloca %"class.Catch::BinaryExpr", align 8 ; 13 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %46 = alloca %"class.Catch::Section", align 8   ; 7 uses
  %47 = alloca %"struct.Catch::SectionInfo", align 8 ; 10 uses
  %48 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %51 = alloca %"struct.vcpkg::ExpectedT", align 8 ; 12 uses
  %52 = alloca %"class.std::vector.47", align 8   ; 10 uses
  %53 = alloca [1 x %"struct.vcpkg::Dependency"], align 8 ; 7 uses
  %54 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %55 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %56 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %57 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %58 = alloca %"struct.vcpkg::LineInfo", align 8 ; 6 uses
  %59 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %60 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %61 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %62 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %63 = alloca %"class.Catch::BinaryExpr", align 8 ; 13 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %64 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %65 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %66 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %67 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %68 = alloca %"class.Catch::BinaryExpr", align 8 ; 13 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV20MockBaselineProvider, i64 16), ptr %9, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store i32 0, ptr %i.k, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !11
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.k, ptr %i.m, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 40
  store ptr %i.k, ptr %i.n, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i64 0, ptr %i.o, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit unwind label %bb.as

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.p, ptr %11, align 8, !tbaa !22
  store i8 97, ptr %i.p, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 1, ptr %i.q, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 17
  store i8 0, ptr %i.r, align 1, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.t = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg7VersionESt4lessIvESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.b unwind label %bb.at      ; 10 uses

bb.b:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !28   ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 4 uses
  %i.w = icmp eq ptr %i.u, %i.v
  %i.x = load ptr, ptr %10, align 8, !tbaa !28    ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.z = icmp eq ptr %i.x, %i.y                   ; 2 uses
  br i1 %i.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  br i1 %i.z, label %bb.c, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.b
  br i1 %i.z, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !26 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %.not21.i.i = icmp eq ptr %10, %i.t
  br i1 %.not21.i.i, label %_ZN5vcpkg7VersionaSEOS0_.exit, label %bb.d, !prof !29

bb.d:                                             ; preds = %bb.c
  switch i64 %i.ab, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.ad = load i8, ptr %i.x, align 1, !tbaa !25
  store i8 %i.ad, ptr %i.u, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 1 %i.x, i64 %i.ab, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.ae = load i64, ptr %i.aa, align 8, !tbaa !26 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !26
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !28
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1, !tbaa !25
  %.pre.i.i = load ptr, ptr %10, align 8, !tbaa !28
  br label %_ZN5vcpkg7VersionaSEOS0_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.x, ptr %i.t, align 8, !tbaa !28
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !26
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !26
  %i.al = load i64, ptr %i.y, align 8, !tbaa !25
  store i64 %i.al, ptr %i.v, align 8, !tbaa !25
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.am = load i64, ptr %i.v, align 8, !tbaa !25
  store ptr %i.x, ptr %i.t, align 8, !tbaa !28
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !26
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !26
  %i.aq = load i64, ptr %i.y, align 8, !tbaa !25
  store i64 %i.aq, ptr %i.v, align 8, !tbaa !25
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.u, ptr %10, align 8, !tbaa !28
  store i64 %i.am, ptr %i.y, align 8, !tbaa !25
  br label %_ZN5vcpkg7VersionaSEOS0_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.y, ptr %10, align 8, !tbaa !28
  br label %_ZN5vcpkg7VersionaSEOS0_.exit

_ZN5vcpkg7VersionaSEOS0_.exit:                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.g, %bb.h
  %i.ar = phi ptr [ %i.u, %bb.g ], [ %i.y, %bb.h ], [ %i.x, %bb.c ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.as, align 8, !tbaa !26
  store i8 0, ptr %i.ar, align 1, !tbaa !25
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !30
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store i32 %i.au, ptr %i.av, align 8, !tbaa !30
  %i.aw = load ptr, ptr %11, align 8, !tbaa !28   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.p
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %_ZN5vcpkg7VersionaSEOS0_.exit
  %i.ay = load i64, ptr %i.p, align 8, !tbaa !25
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5vcpkg7VersionaSEOS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.ba = load ptr, ptr %10, align 8, !tbaa !28   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZN5vcpkg7VersionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !25
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit

_ZN5vcpkg7VersionD2Ev.exit:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV29MockVersionedPortfileProvider, i64 16), ptr %12, align 8, !tbaa !9
  %i.bf = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store i32 0, ptr %i.bf, align 8, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  store ptr null, ptr %i.bg, align 8, !tbaa !11
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !19
  %i.bi = getelementptr inbounds nuw i8, ptr %12, i64 40
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !20
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 48
  store i64 0, ptr %i.bj, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !1256)
  %i.bk = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #24
          to label %.noexc137 unwind label %bb.au ; 13 uses

.noexc137:                                        ; preds = %_ZN5vcpkg7VersionD2Ev.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.bl, i8 0, i64 160, i1 false), !noalias !1256
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !22, !noalias !1256
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  store i64 0, ptr %i.bm, align 8, !tbaa !26, !noalias !1256
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 32 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bn, i8 0, i64 48, i1 false), !noalias !1256
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.bo) #22, !noalias !1256
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 88
  invoke void @_ZN5vcpkg28ParsedSpdxLicenseDeclarationC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.bp)
          to label %bb.j unwind label %bb.i, !noalias !1256

bb.i:                                             ; preds = %.noexc137
  %i.bq = landingpad { ptr, i32 }
          cleanup
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bo) #22, !noalias !1256
  call void @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.br) #22, !noalias !1256
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bn) #22, !noalias !1256
  %i.bs = load ptr, ptr %i.bk, align 8, !tbaa !28, !noalias !1256 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.bl
  br i1 %i.bt, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.bu = load i64, ptr %i.bl, align 8, !tbaa !25, !noalias !1256
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #23, !noalias !1256
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 176) #23, !noalias !1256
  br label %.body

bb.j:                                             ; preds = %.noexc137
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bk, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i8 0, i64 24, i1 false), !noalias !1256
  store ptr %i.bk, ptr %13, align 8, !tbaa !619, !alias.scope !1256
  %i.bx = load i64, ptr %i.bm, align 8, !tbaa !26
  %i.by = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i64 noundef 0, i64 noundef %i.bx, ptr noundef nonnull @.str.216, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.av ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.ca = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.ca, ptr %14, align 8, !tbaa !22
  store i8 97, ptr %i.ca, align 8, !tbaa !25
  %i.cb = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 1, ptr %i.cb, align 8, !tbaa !26
  %i.cc = getelementptr inbounds nuw i8, ptr %14, i64 17
  store i8 0, ptr %i.cc, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %15, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit144 unwind label %bb.aw

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit144:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr @.str.123, ptr %8, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !33
  %i.cd = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(36) %15, i32 noundef 4, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %8)
          to label %bb.k unwind label %bb.ax      ; 2 uses

bb.k:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit144
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ce = load ptr, ptr %15, align 8, !tbaa !28   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZN5vcpkg7VersionD2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i146: ; preds = %bb.k
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !25
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit148

_ZN5vcpkg7VersionD2Ev.exit148:                    ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.cj = load ptr, ptr %14, align 8, !tbaa !28   ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.ca
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %_ZN5vcpkg7VersionD2Ev.exit148
  %i.cl = load i64, ptr %i.ca, align 8, !tbaa !25
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %_ZN5vcpkg7VersionD2Ev.exit148, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.cn = load ptr, ptr %i.cd, align 8, !tbaa !136 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !621 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 24 ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !624
  %.not.i.i152 = icmp eq ptr %i.cq, %i.cs
  br i1 %.not.i.i152, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151
  store i64 %i.by, ptr %i.cq, align 8, !tbaa !619
  store ptr null, ptr %13, align 8, !tbaa !619
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.ct, ptr %i.cp, align 8, !tbaa !621
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151
  %i.cu = load ptr, ptr %i.co, align 8, !tbaa !625 ; 10 uses
  %i.cv = ptrtoint ptr %i.cq to i64               ; 3 uses
  %i.cw = ptrtoint ptr %i.cu to i64               ; 4 uses
  %i.cx = sub i64 %i.cv, %i.cw                    ; 3 uses
  %i.cy = icmp eq i64 %i.cx, 9223372036854775800
  br i1 %i.cy, label %bb.n, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc309 unwind label %bb.ay

.noexc309:                                        ; preds = %bb.n
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.m
  %i.cz = ashr exact i64 %i.cx, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cz, i64 1)
  %i.da = add nsw i64 %.sroa.speculated.i.i, %i.cz ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.cz
  %i.dc = call i64 @llvm.umin.i64(i64 %i.da, i64 1152921504606846975)
  %i.dd = select i1 %i.db, i64 1152921504606846975, i64 %i.dc ; 3 uses
  %.not.i.i307 = icmp ne i64 %i.dd, 0
  call void @llvm.assume(i1 %.not.i.i307)
  %i.de = shl nuw nsw i64 %i.dd, 3
  %i.df = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #24
          to label %.noexc310 unwind label %bb.ay ; 10 uses

.noexc310:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.cx
  store i64 %i.by, ptr %i.dg, align 8, !tbaa !619
  store ptr null, ptr %13, align 8, !tbaa !619
  %.not10.i.i.i.i = icmp eq ptr %i.cu, %i.cq
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc310
  %i.dh = add i64 %i.cv, -8
  %i.di = sub i64 %i.dh, %i.cw                    ; 2 uses
  %i.dj = lshr i64 %i.di, 3
  %i.dk = add nuw nsw i64 %i.dj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.di, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader466, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.dl = add i64 %i.cv, -8
  %i.dm = sub i64 %i.dl, %i.cw
  %i.dn = and i64 %i.dm, -8
  %i.do = add i64 %i.dn, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.df, i64 %i.do
  %scevgep462 = getelementptr i8, ptr %i.cu, i64 %i.do
  %bound0 = icmp ult ptr %i.df, %scevgep462
  %bound1 = icmp ult ptr %i.cu, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader466, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dk, 4611686018427387900     ; 3 uses
  %i.dp = shl i64 %n.vec, 3                       ; 2 uses
  %i.dq = getelementptr i8, ptr %i.df, i64 %i.dp  ; 2 uses
  %i.dr = getelementptr i8, ptr %i.cu, i64 %i.dp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ds = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.df, i64 %i.ds ; 2 uses
  %next.gep463 = getelementptr i8, ptr %i.cu, i64 %i.ds ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1259)
  call void @llvm.experimental.noalias.scope.decl(metadata !1262)
  %i.dt = getelementptr i8, ptr %next.gep463, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep463, align 8, !tbaa !619, !alias.scope !1264, !noalias !1259
  %wide.load464 = load <2 x i64>, ptr %i.dt, align 8, !tbaa !619, !alias.scope !1264, !noalias !1259
  %i.du = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !619, !alias.scope !1267, !noalias !1264
  store <2 x i64> %wide.load464, ptr %i.du, align 8, !tbaa !619, !alias.scope !1267, !noalias !1264
  %i.dv = getelementptr i8, ptr %next.gep463, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep463, align 8, !tbaa !619, !alias.scope !1264, !noalias !1259
  store <2 x ptr> splat (ptr null), ptr %i.dv, align 8, !tbaa !619, !alias.scope !1264, !noalias !1259
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !1269

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dk, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader466

.lr.ph.i.i.i.i.preheader466:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.df, %vector.memcheck ], [ %i.df, %.lr.ph.i.i.i.i.preheader ], [ %i.dq, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.cu, %vector.memcheck ], [ %i.cu, %.lr.ph.i.i.i.i.preheader ], [ %i.dr, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader466, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dz, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader466 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader466 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1259)
  call void @llvm.experimental.noalias.scope.decl(metadata !1262)
  %i.dx = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !1262, !noalias !1259
  store i64 %i.dx, ptr %.012.i.i.i.i, align 8, !tbaa !619, !alias.scope !1259, !noalias !1262
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !1262, !noalias !1259
  %i.dy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i308 = icmp eq ptr %i.dy, %i.cq
  br i1 %.not.i.i.i.i308, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1270

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc310
  %.0.lcssa.i.i.i.i = phi ptr [ %i.df, %.noexc310 ], [ %i.dq, %middle.block ], [ %i.dz, %.lr.ph.i.i.i.i ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.cu, null
  br i1 %.not.i23.i, label %.noexc153, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.eb = load ptr, ptr %i.cr, align 8, !tbaa !624
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = sub i64 %i.ec, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.ed) #23
  br label %.noexc153

.noexc153:                                        ; preds = %bb.o, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.df, ptr %i.co, align 8, !tbaa !625
end_hunk_3
begin_hunk_4_@_ZNK29MockVersionedPortfileProvider16get_control_fileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN5vcpkg7VersionE:bb.a
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN5vcpkg7VersionENS6_28SourceControlFileAndLocationENS6_14VersionMapLessESaISt4pairIKS7_S8_EEESt4lessIS5_ESaISA_IKS5_SE_EEE4findERSH_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN5vcpkg7VersionENS6_28SourceControlFileAndLocationENS6_14VersionMapLessESaISt4pairIKS7_S8_EEESt4lessIS5_ESaISA_IKS5_SE_EEE4findERSH_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN5vcpkg7VersionENS6_28SourceControlFileAndLocationENS6_14VersionMapLessESaISt4pairIKS7_S8_EEESt4lessIS5_ESaISA_IKS5_SE_EEE4findERSH_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.w, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN5vcpkg7VersionENS6_28SourceControlFileAndLocationENS6_14VersionMapLessESaISt4pairIKS7_S8_EEESt4lessIS5_ESaISA_IKS5_SE_EEE4findERSH_.exit.thread, label %bb.e

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN5vcpkg7VersionENS6_28SourceControlFileAndLocationENS6_14VersionMapLessESaISt4pairIKS7_S8_EEESt4lessIS5_ESaISA_IKS5_SE_EEE4findERSH_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3mapIN5vcpkg7VersionENS9_28SourceControlFileAndLocationENS9_14VersionMapLessESaIS6_IKSA_SB_EEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN5vcpkg7VersionENS6_28SourceControlFileAndLocationENS6_14VersionMapLessESaISt4pairIKS7_S8_EEESt4lessIS5_ESaISA_IKS5_SE_EEE4findERSH_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN5vcpkg15LocalizedString8from_rawENS_10StringViewE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %4, ptr nonnull @.str.136, i64 17)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !22
  %i.y = load ptr, ptr %4, align 8, !tbaa !28     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.d:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN5vcpkg7VersionENS6_28SourceControlFileAndLocationENS6_14VersionMapLessESaISt4pairIKS7_S8_EEESt4lessIS5_ESaISA_IKS5_SE_EEE4findERSH_.exit.thread
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !26 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.z, i64 %i.ae, i1 false)
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN5vcpkg7VersionENS6_28SourceControlFileAndLocationENS6_14VersionMapLessESaISt4pairIKS7_S8_EEESt4lessIS5_ESaISA_IKS5_SE_EEE4findERSH_.exit.thread
  store ptr %i.y, ptr %0, align 8, !tbaa !28
  %i.af = load i64, ptr %i.z, align 8, !tbaa !25
  store i64 %i.af, ptr %i.x, align 8, !tbaa !25
  %.phi.trans.insert31 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre32 = load i64, ptr %.phi.trans.insert31, align 8, !tbaa !26
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit

_ZN5vcpkg15LocalizedStringD2Ev.exit:              ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ag = phi i64 [ %i.ac, %bb.d ], [ %.pre32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !26
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.ai, align 8, !tbaa !1536
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.h

bb.e:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN5vcpkg7VersionENS6_28SourceControlFileAndLocationENS6_14VersionMapLessESaISt4pairIKS7_S8_EEESt4lessIS5_ESaISA_IKS5_SE_EEE4findERSH_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 80
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !11 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 72 ; 2 uses
  %.not10.i.i.i4 = icmp eq ptr %i.al, null
  br i1 %.not10.i.i.i4, label %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit.thread, label %.lr.ph.i.i.i5

.lr.ph.i.i.i5:                                    ; preds = %bb.e, %.lr.ph.i.i.i5
  %.012.i.i.i6 = phi ptr [ %.1.i.i.i11, %.lr.ph.i.i.i5 ], [ %i.al, %bb.e ] ; 3 uses
  %.0811.i.i.i7 = phi ptr [ %.19.i.i.i8, %.lr.ph.i.i.i5 ], [ %i.am, %bb.e ]
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i6, i64 32
  %i.ao = tail call noundef zeroext i1 @_ZNK5vcpkg14VersionMapLessclERKNS_7VersionES3_(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef nonnull align 8 dereferenceable(36) %i.an, ptr noundef nonnull align 8 dereferenceable(36) %3) ; 2 uses
  %.19.i.i.i8 = select i1 %i.ao, ptr %.0811.i.i.i7, ptr %.012.i.i.i6 ; 4 uses
  %.1.in.v.i.i.i9 = select i1 %i.ao, i64 24, i64 16
  %.1.in.i.i.i10 = getelementptr inbounds nuw i8, ptr %.012.i.i.i6, i64 %.1.in.v.i.i.i9
  %.1.i.i.i11 = load ptr, ptr %.1.in.i.i.i10, align 8, !tbaa !174 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %.1.i.i.i11, null
  br i1 %.not.i.i.i12, label %_ZNSt8_Rb_treeIN5vcpkg7VersionESt4pairIKS1_NS0_28SourceControlFileAndLocationEESt10_Select1stIS5_ENS0_14VersionMapLessESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i, label %.lr.ph.i.i.i5, !llvm.loop !1538

_ZNSt8_Rb_treeIN5vcpkg7VersionESt4pairIKS1_NS0_28SourceControlFileAndLocationEESt10_Select1stIS5_ENS0_14VersionMapLessESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i: ; preds = %.lr.ph.i.i.i5
  %i.ap = icmp eq ptr %.19.i.i.i8, %i.am
  br i1 %i.ap, label %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit.thread, label %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit

_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit: ; preds = %_ZNSt8_Rb_treeIN5vcpkg7VersionESt4pairIKS1_NS0_28SourceControlFileAndLocationEESt10_Select1stIS5_ENS0_14VersionMapLessESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.19.i.i.i8, i64 32
  %i.ar = tail call noundef zeroext i1 @_ZNK5vcpkg14VersionMapLessclERKNS_7VersionES3_(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %i.aq)
  br i1 %i.ar, label %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit.thread, label %bb.g

_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit.thread: ; preds = %_ZNSt8_Rb_treeIN5vcpkg7VersionESt4pairIKS1_NS0_28SourceControlFileAndLocationEESt10_Select1stIS5_ENS0_14VersionMapLessESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i, %bb.e, %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN5vcpkg15LocalizedString8from_rawENS_10StringViewE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %5, ptr nonnull @.str.137, i64 20)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.as, ptr %0, align 8, !tbaa !22
  %i.at = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15

bb.f:                                             ; preds = %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !26 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false)
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15: ; preds = %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit.thread
  store ptr %i.at, ptr %0, align 8, !tbaa !28
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !25
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !25
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !26
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit19

_ZN5vcpkg15LocalizedStringD2Ev.exit19:            ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15
  %i.bb = phi i64 [ %i.ax, %bb.f ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i15 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !26
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.bd, align 8, !tbaa !1536
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.h

bb.g:                                             ; preds = %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %.19.i.i.i8, i64 72
  store ptr %i.be, ptr %0, align 8, !tbaa !1539
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.bf, align 8, !tbaa !1536
  br label %bb.h

bb.h:                                             ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit19, %bb.g, %_ZN5vcpkg15LocalizedStringD2Ev.exit
  ret void
}

declare void @_ZN5vcpkg15LocalizedString8from_rawENS_10StringViewE(ptr dead_on_unwind writable sret(%"struct.vcpkg::LocalizedString") align 8, ptr, i64) local_unnamed_addr #11

declare noundef zeroext i1 @_ZNK5vcpkg14VersionMapLessclERKNS_7VersionES3_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef %3, i32 noundef %4, ptr noundef byval(%"struct.vcpkg::StringView") align 8 %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.vcpkg::VersionMapLess", align 1 ; 5 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %8 = alloca %"class.std::unique_ptr.6", align 8 ; 7 uses
  %9 = alloca %"struct.vcpkg::SourceControlFileAndLocation", align 8 ; 20 uses
  %10 = alloca %"struct.vcpkg::Path", align 8     ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IN5vcpkg7VersionENS6_28SourceControlFileAndLocationENS6_14VersionMapLessESaISt4pairIKS7_S8_EEESt4lessIS5_ESaISA_IKS5_SE_EEEixERSH_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.e, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.g = tail call noundef zeroext i1 @_ZNK5vcpkg14VersionMapLessclERKNS_7VersionES3_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(36) %i.f, ptr noundef nonnull align 8 dereferenceable(36) %2) ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !174 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN5vcpkg7VersionESt4pairIKS1_NS0_28SourceControlFileAndLocationEESt10_Select1stIS5_ENS0_14VersionMapLessESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1538

_ZNSt8_Rb_treeIN5vcpkg7VersionESt4pairIKS1_NS0_28SourceControlFileAndLocationEESt10_Select1stIS5_ENS0_14VersionMapLessESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = icmp eq ptr %.19.i.i.i, %i.e
  br i1 %i.h, label %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit.thread, label %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit

_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit: ; preds = %_ZNSt8_Rb_treeIN5vcpkg7VersionESt4pairIKS1_NS0_28SourceControlFileAndLocationEESt10_Select1stIS5_ENS0_14VersionMapLessESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = tail call noundef zeroext i1 @_ZNK5vcpkg14VersionMapLessclERKNS_7VersionES3_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %i.i)
  br i1 %i.j, label %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit.thread, label %bb.q

_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit.thread: ; preds = %_ZNSt8_Rb_treeIN5vcpkg7VersionESt4pairIKS1_NS0_28SourceControlFileAndLocationEESt10_Select1stIS5_ENS0_14VersionMapLessESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS3_.exit.i.i, %bb.a, %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1542)
  %i.k = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #24, !noalias !1542 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, i8 0, i64 56, i1 false), !noalias !1542
  store ptr %i.k, ptr %7, align 8, !tbaa !136, !alias.scope !1542
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1545)
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = invoke noalias noundef nonnull dereferenceable(488) ptr @_Znwm(i64 noundef 488) #24
          to label %.noexc unwind label %bb.k     ; 9 uses

.noexc:                                           ; preds = %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit.thread
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(488) %i.m, i8 0, i64 488, i1 false), !noalias !1545
  invoke void @_ZN5vcpkg15SourceParagraphC2Ev(ptr noundef nonnull align 8 dereferenceable(488) %i.m)
          to label %bb.c unwind label %bb.b, !noalias !1545

bb.b:                                             ; preds = %.noexc
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 488) #23, !noalias !1545
  br label %.body

bb.c:                                             ; preds = %.noexc
  store ptr %i.m, ptr %8, align 8, !tbaa !138, !alias.scope !1545
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i32 %3, ptr %i.o, align 8, !tbaa !1548
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(36) %i.p, ptr noundef nonnull align 8 dereferenceable(36) %2)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store i32 %i.r, ptr %i.s, align 8, !tbaa !30
  store ptr null, ptr %8, align 8, !tbaa !138
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !138  ; 3 uses
  store ptr %i.m, ptr %i.k, align 8, !tbaa !138
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN5vcpkg15SourceParagraphEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN5vcpkg15SourceParagraphEEclEPS1_.exit.i.i.i.i: ; preds = %bb.d
  tail call void @_ZN5vcpkg15SourceParagraphD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.t) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 488) #23
  br label %_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN5vcpkg15SourceParagraphEEclEPS1_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store i64 %i.l, ptr %9, align 8, !tbaa !136
  store ptr null, ptr %7, align 8, !tbaa !136
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZN5vcpkg4PathC1EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.e unwind label %_ZN5vcpkg4PathD2Ev.exit42.thread

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EEaSEOS4_.exit
  invoke void @_ZNO5vcpkg4PathdvENS_10StringViewE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Path") align 8 %i.u, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr nonnull @.str.138, i64 10)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  invoke void @_ZNK5vcpkg10StringView9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.v, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 4 uses
  store ptr %i.x, ptr %i.w, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 80
  store i64 0, ptr %i.y, align 8, !tbaa !26
  store i8 0, ptr %i.x, align 8, !tbaa !25
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 104
  store i32 %4, ptr %i.z, align 8, !tbaa !1570
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 112 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 128 ; 4 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 120
  store i64 0, ptr %i.ac, align 8, !tbaa !26
  store i8 0, ptr %i.ab, align 8, !tbaa !25
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not10.i.i.i.i, label %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE11lower_boundERS5_.exit.thread.i, label %.lr.ph.i.i.i.i

_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE11lower_boundERS5_.exit.thread.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  br label %.critedge.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.noexc28
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.noexc28 ], [ %i.ad, %bb.g ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.noexc28 ], [ %i.e, %bb.g ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.af = invoke noundef zeroext i1 @_ZNK5vcpkg14VersionMapLessclERKNS_7VersionES3_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(36) %i.ae, ptr noundef nonnull align 8 dereferenceable(36) %2)
          to label %.noexc28 unwind label %_ZN5vcpkg4PathD2Ev.exit38.thread.loopexit ; 2 uses

.noexc28:                                         ; preds = %.lr.ph.i.i.i.i
  %.19.i.i.i.i = select i1 %i.af, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.af, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !174 ; 2 uses
  %.not.i.i.i.i27 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i27, label %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE11lower_boundERS5_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !1538

_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE11lower_boundERS5_.exit.i: ; preds = %.noexc28
  %i.ag = icmp eq ptr %.19.i.i.i.i, %i.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  br i1 %i.ag, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE11lower_boundERS5_.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ai = invoke noundef zeroext i1 @_ZNK5vcpkg14VersionMapLessclERKNS_7VersionES3_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %i.ah)
          to label %.noexc29 unwind label %_ZN5vcpkg4PathD2Ev.exit38.thread.loopexit.split-lp

.noexc29:                                         ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %i.ai, label %bb.i, label %bb.j

.critedge.i:                                      ; preds = %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE11lower_boundERS5_.exit.i, %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE11lower_boundERS5_.exit.thread.i
  %.08.lcssa.i.i.i20.i = phi ptr [ %i.e, %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE11lower_boundERS5_.exit.thread.i ], [ %.19.i.i.i.i, %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE11lower_boundERS5_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.i

bb.i:                                             ; preds = %.critedge.i, %.noexc29
  %.08.lcssa.i.i.i19.i = phi ptr [ %.08.lcssa.i.i.i20.i, %.critedge.i ], [ %.19.i.i.i.i, %.noexc29 ]
  %i.aj = invoke ptr @_ZNSt8_Rb_treeIN5vcpkg7VersionESt4pairIKS1_NS0_28SourceControlFileAndLocationEESt10_Select1stIS5_ENS0_14VersionMapLessESaIS5_EE22_M_emplace_hint_uniqueIJS1_S4_EEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr %.08.lcssa.i.i.i19.i, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(144) %9)
          to label %bb.j unwind label %_ZN5vcpkg4PathD2Ev.exit38.thread.loopexit.split-lp

bb.j:                                             ; preds = %.noexc29, %bb.i
  %.sroa.017.0.i = phi ptr [ %.19.i.i.i.i, %.noexc29 ], [ %i.aj, %bb.i ]
  %i.ak = load ptr, ptr %i.aa, align 8, !tbaa !28 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.ab
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.am = load i64, ptr %i.ab, align 8, !tbaa !25
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ao = load ptr, ptr %i.w, align 8, !tbaa !28  ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.x
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.aq = load i64, ptr %i.x, align 8, !tbaa !25
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.as = load ptr, ptr %i.v, align 8, !tbaa !28  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.av = load i64, ptr %i.at, align 8, !tbaa !25
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.ax = load ptr, ptr %i.u, align 8, !tbaa !28  ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZN5vcpkg4PathD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !25
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #23
  br label %_ZN5vcpkg4PathD2Ev.exit.i

_ZN5vcpkg4PathD2Ev.exit.i:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.bc = load ptr, ptr %9, align 8, !tbaa !136   ; 3 uses
  %.not.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i, label %_ZN5vcpkg28SourceControlFileAndLocationD2Ev.exit, label %_ZNKSt14default_deleteIN5vcpkg17SourceControlFileEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5vcpkg17SourceControlFileEEclEPS1_.exit.i.i: ; preds = %_ZN5vcpkg4PathD2Ev.exit.i
  call void @_ZN5vcpkg17SourceControlFileD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.bc) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef 56) #23
  br label %_ZN5vcpkg28SourceControlFileAndLocationD2Ev.exit

_ZN5vcpkg28SourceControlFileAndLocationD2Ev.exit: ; preds = %_ZN5vcpkg4PathD2Ev.exit.i, %_ZNKSt14default_deleteIN5vcpkg17SourceControlFileEEclEPS1_.exit.i.i
  %i.bd = load ptr, ptr %10, align 8, !tbaa !28   ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZN5vcpkg4PathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31: ; preds = %_ZN5vcpkg28SourceControlFileAndLocationD2Ev.exit
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !25
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #23
  br label %_ZN5vcpkg4PathD2Ev.exit

_ZN5vcpkg4PathD2Ev.exit:                          ; preds = %_ZN5vcpkg28SourceControlFileAndLocationD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.bi = load ptr, ptr %8, align 8, !tbaa !138   ; 3 uses
  %.not.i = icmp eq ptr %i.bi, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5vcpkg15SourceParagraphEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5vcpkg15SourceParagraphEEclEPS1_.exit.i: ; preds = %_ZN5vcpkg4PathD2Ev.exit
  call void @_ZN5vcpkg15SourceParagraphD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.bi) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef 488) #23
  br label %_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN5vcpkg4PathD2Ev.exit, %_ZNKSt14default_deleteIN5vcpkg15SourceParagraphEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.bj = load ptr, ptr %7, align 8, !tbaa !136   ; 3 uses
  %.not.i34 = icmp eq ptr %i.bj, null
  br i1 %.not.i34, label %_ZNSt10unique_ptrIN5vcpkg17SourceControlFileESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5vcpkg17SourceControlFileEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5vcpkg17SourceControlFileEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EED2Ev.exit
  call void @_ZN5vcpkg17SourceControlFileD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.bj) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef 56) #23
  br label %_ZNSt10unique_ptrIN5vcpkg17SourceControlFileESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg17SourceControlFileESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN5vcpkg17SourceControlFileEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.q

bb.k:                                             ; preds = %_ZNSt3mapIN5vcpkg7VersionENS0_28SourceControlFileAndLocationENS0_14VersionMapLessESaISt4pairIKS1_S2_EEE4findERS5_.exit.thread
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body
end_hunk_4
begin_hunk_5_@_ZNK5Catch10BinaryExprIRKN5vcpkg7VerCompES4_E29streamReconstructedExpressionERSo:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.c ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ], [ %i.s, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.y = load ptr, ptr %2, align 8, !tbaa !28     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !25
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Catch10BinaryExprIRKN5vcpkg7VerCompES4_ED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN5Catch20ITransientExpressionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #23
  ret void
}

declare noundef i32 @_ZN5vcpkg11compare_anyERKNS_7VersionES2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #11

declare void @_ZN5Catch11SectionInfoC1ERKNS_14SourceLineInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #11

declare void @_ZN5Catch7SectionC1ERKNS_11SectionInfoE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Catch11SectionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !25
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !25
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

declare noundef zeroext i1 @_ZNK5Catch7SectioncvbEv(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #11

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK5vcpkg15LocalizedString5emptyEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN5Catch7SectionD1Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160)) unnamed_addr #2

declare noundef i32 @_ZN5CatchorENS_17ResultDisposition5FlagsES1_(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIPKN5vcpkg26DependencyRequestedFeatureEPS1_ET0_T_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not19 = icmp eq ptr %0, %1
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructIN5vcpkg26DependencyRequestedFeatureEJRKS1_EEvPT_DpOT0_.exit
  %.021 = phi ptr [ %i.w, %_ZSt10_ConstructIN5vcpkg26DependencyRequestedFeatureEJRKS1_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 10 uses
  %.01220 = phi ptr [ %i.v, %_ZSt10_ConstructIN5vcpkg26DependencyRequestedFeatureEJRKS1_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.021, i64 16 ; 5 uses
  store ptr %i.b, ptr %.021, align 8, !tbaa !22
  %i.c = load ptr, ptr %.01220, align 8, !tbaa !28 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01220, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !26   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.e, ptr %i.a, align 8, !tbaa !33
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %.021, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.g, ptr %.021, align 8, !tbaa !28
  %i.h = load i64, ptr %i.a, align 8, !tbaa !33
  store i64 %i.h, ptr %i.b, align 8, !tbaa !25
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !25
  store i8 %i.j, ptr %i.i, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.021, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !26
  %i.m = load ptr, ptr %.021, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.o = getelementptr inbounds nuw i8, ptr %.021, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %.01220, i64 32
  invoke void @_ZN5vcpkg18PlatformExpression4ExprC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_ZSt10_ConstructIN5vcpkg26DependencyRequestedFeatureEJRKS1_EEvPT_DpOT0_.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.r = load ptr, ptr %.021, align 8, !tbaa !28  ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.b
  br i1 %i.s, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.t = load i64, ptr %i.b, align 8, !tbaa !25
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #23
  br label %.body

_ZSt10_ConstructIN5vcpkg26DependencyRequestedFeatureEJRKS1_EEvPT_DpOT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.01220, i64 40 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.021, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.v, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1946

bb.e:                                             ; preds = %.noexc.i.i.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.q, %bb.d ]
  %i.y = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.z = call ptr @__cxa_begin_catch(ptr %i.y) #22 ; 0 uses
  invoke void @_ZSt8_DestroyIPN5vcpkg26DependencyRequestedFeatureEEvT_S3_(ptr noundef %2, ptr noundef nonnull %.021)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #25
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %_ZSt10_ConstructIN5vcpkg26DependencyRequestedFeatureEJRKS1_EEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.w, %_ZSt10_ConstructIN5vcpkg26DependencyRequestedFeatureEJRKS1_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %.body
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.aa

bb.i:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #21
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL9make_fpghNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 %1) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1947)
  %i.a = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #24, !noalias !1947 ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.b, i8 0, i64 160, i1 false), !noalias !1947
  store ptr %i.b, ptr %i.a, align 8, !tbaa !22, !noalias !1947
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store i64 0, ptr %i.c, align 8, !tbaa !26, !noalias !1947
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, i8 0, i64 48, i1 false), !noalias !1947
  tail call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #22, !noalias !1947
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  invoke void @_ZN5vcpkg28ParsedSpdxLicenseDeclarationC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.f)
          to label %_ZSt11make_uniqueIN5vcpkg16FeatureParagraphEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.b, !noalias !1947

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.e) #22, !noalias !1947
  tail call void @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.h) #22, !noalias !1947
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.d) #22, !noalias !1947
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !28, !noalias !1947 ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.b, align 8, !tbaa !25, !noalias !1947
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #23, !noalias !1947
  br label %.body.i

.body.i:                                          ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 176) #23, !noalias !1947
  resume { ptr, i32 } %i.g

_ZSt11make_uniqueIN5vcpkg16FeatureParagraphEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false), !noalias !1947
  store ptr %i.a, ptr %0, align 8, !tbaa !619, !alias.scope !1947
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !28   ; 6 uses
  %i.o = icmp eq ptr %i.n, %i.b
  %i.p = load ptr, ptr %1, align 8, !tbaa !28     ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.r = icmp eq ptr %i.p, %i.q                   ; 2 uses
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZSt11make_uniqueIN5vcpkg16FeatureParagraphEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  br i1 %i.r, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZSt11make_uniqueIN5vcpkg16FeatureParagraphEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  br i1 %i.r, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !26   ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  tail call void @llvm.assume(i1 %i.u)
  %.not21.i = icmp eq ptr %1, %i.a
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.d, !prof !29

bb.d:                                             ; preds = %bb.c
  switch i64 %i.t, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.v = load i8, ptr %i.p, align 1, !tbaa !25
  store i8 %i.v, ptr %i.n, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.p, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.w = load i64, ptr %i.s, align 8, !tbaa !26   ; 2 uses
  store i64 %i.w, ptr %i.c, align 8, !tbaa !26
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.w
  store i8 0, ptr %i.y, align 1, !tbaa !25
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.p, ptr %i.a, align 8, !tbaa !28
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load <2 x i64>, ptr %i.z, align 8, !tbaa !25
  store <2 x i64> %i.aa, ptr %i.c, align 8, !tbaa !25
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !25
  store ptr %i.p, ptr %i.a, align 8, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = load <2 x i64>, ptr %i.ac, align 8, !tbaa !25
  store <2 x i64> %i.ad, ptr %i.c, align 8, !tbaa !25
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.n, ptr %1, align 8, !tbaa !28
  store i64 %i.ab, ptr %i.q, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.q, ptr %1, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g, %bb.h
  %i.ae = phi ptr [ %i.n, %bb.g ], [ %i.q, %bb.h ], [ %i.p, %bb.c ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.af, align 8, !tbaa !26
  store i8 0, ptr %i.ae, align 1, !tbaa !25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(144) ptr @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !22
  %i.f = load ptr, ptr %1, align 8, !tbaa !28     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !26   ; 2 uses
  %i.k = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  store ptr %i.f, ptr %i.b, align 8, !tbaa !28
  %i.m = load i64, ptr %i.g, align 8, !tbaa !25
  store i64 %i.m, ptr %i.e, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !26
  store ptr %i.g, ptr %1, align 8, !tbaa !28
  store i64 0, ptr %i.n, align 8, !tbaa !26
  store i8 0, ptr %i.g, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.s = load <2 x ptr>, ptr %i.r, align 8, !tbaa !836
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !836
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !671
  store ptr %i.v, ptr %i.t, align 8, !tbaa !671
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56
  tail call void @_ZN5vcpkg18PlatformExpression4ExprC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %i.x) #22
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !47
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !47
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 3 uses
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !22
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !28 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !26 ; 2 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false)
  br label %_ZN5vcpkg10DependencyC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !28
  %i.al = load i64, ptr %i.af, align 8, !tbaa !25
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !25
  br label %_ZN5vcpkg10DependencyC2EOS0_.exit

_ZN5vcpkg10DependencyC2EOS0_.exit:                ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !26
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !26
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !28
  store i64 0, ptr %i.am, align 8, !tbaa !26
  store i8 0, ptr %i.af, align 8, !tbaa !25
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !30
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !30
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.au = load i16, ptr %i.at, align 8
  store i16 %i.au, ptr %i.as, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.ax = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !837
  store <2 x ptr> %i.ax, ptr %i.av, align 8, !tbaa !837
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !793
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !793
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !77
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 144 ; 2 uses
  store ptr %i.bc, ptr %i.a, align 8, !tbaa !77
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(144) %1)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !1950
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5vcpkg10DependencyC2EOS0_.exit
  %i.bd = phi ptr [ %.pre, %bb.e ], [ %i.bc, %_ZN5vcpkg10DependencyC2EOS0_.exit ]
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -144
  ret ptr %i.be
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(144) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !77   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !73     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775728
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN5vcpkg10DependencyESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
  unreachable

_ZNKSt6vectorIN5vcpkg10DependencyESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 144                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 64051194700380387)
  %i.l = select i1 %i.j, i64 64051194700380387, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 144
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #24 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 15 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !22
  %i.s = load ptr, ptr %2, align 8, !tbaa !28     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN5vcpkg10DependencyESaIS1_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !26   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorIN5vcpkg10DependencyESaIS1_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !28
  %i.z = load i64, ptr %i.t, align 8, !tbaa !25
  store i64 %i.z, ptr %i.r, align 8, !tbaa !25
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
end_hunk_5
begin_hunk_6_@_ZN5vcpkg10ActionPlanaSEOS0_:bb.a
  unreachable

_ZNSt6vectorIN5vcpkg26AlreadyInstalledPlanActionESaIS1_EEaSEOS3_.exit: ; preds = %_ZSt8_DestroyIPN5vcpkg26AlreadyInstalledPlanActionES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !120 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !117 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !252
  %i.an = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !251
  store <2 x ptr> %i.an, ptr %i.ag, align 8, !tbaa !251
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !252
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !252
  %.not4.i.i.i.i.i6 = icmp eq ptr %i.ai, %i.ak
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i6, label %_ZSt8_DestroyIPN5vcpkg17InstallPlanActionES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i7

.lr.ph.i.i.i.i.i7:                                ; preds = %_ZNSt6vectorIN5vcpkg26AlreadyInstalledPlanActionESaIS1_EEaSEOS3_.exit, %.lr.ph.i.i.i.i.i7
  %.05.i.i.i.i.i8 = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i7 ], [ %i.ai, %_ZNSt6vectorIN5vcpkg26AlreadyInstalledPlanActionESaIS1_EEaSEOS3_.exit ] ; 2 uses
  tail call void @_ZN5vcpkg17InstallPlanActionD2Ev(ptr noundef nonnull align 8 dead_on_return(440) dereferenceable(440) %.05.i.i.i.i.i8) #22
  %i.aq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i8, i64 440 ; 2 uses
  %.not.i.i.i.i.i9 = icmp eq ptr %i.aq, %i.ak
  br i1 %.not.i.i.i.i.i9, label %_ZSt8_DestroyIPN5vcpkg17InstallPlanActionES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i7, !llvm.loop !1614

_ZSt8_DestroyIPN5vcpkg17InstallPlanActionES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i7, %_ZNSt6vectorIN5vcpkg26AlreadyInstalledPlanActionESaIS1_EEaSEOS3_.exit
  %.not.i.i1.i.i.i10 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i1.i.i.i10, label %_ZNSt6vectorIN5vcpkg17InstallPlanActionESaIS1_EEaSEOS3_.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN5vcpkg17InstallPlanActionES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.ar = ptrtoint ptr %i.am to i64
  %i.as = ptrtoint ptr %i.ai to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.at) #23
  br label %_ZNSt6vectorIN5vcpkg17InstallPlanActionESaIS1_EEaSEOS3_.exit

_ZNSt6vectorIN5vcpkg17InstallPlanActionESaIS1_EEaSEOS3_.exit: ; preds = %_ZSt8_DestroyIPN5vcpkg17InstallPlanActionES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !11
  invoke void @_ZNSt8_Rb_treeIN5vcpkg11FeatureSpecESt4pairIKS1_NS0_18PlatformExpression4ExprEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E(ptr noundef nonnull align 8 dereferenceable(48) %i.au, ptr noundef %i.aw)
          to label %_ZNSt8_Rb_treeIN5vcpkg11FeatureSpecESt4pairIKS1_NS0_18PlatformExpression4ExprEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE5clearEv.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN5vcpkg17InstallPlanActionESaIS1_EEaSEOS3_.exit
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #21
  unreachable

_ZNSt8_Rb_treeIN5vcpkg11FeatureSpecESt4pairIKS1_NS0_18PlatformExpression4ExprEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE5clearEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN5vcpkg17InstallPlanActionESaIS1_EEaSEOS3_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  store ptr null, ptr %i.av, align 8, !tbaa !11
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !19
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !20
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store i64 0, ptr %i.bc, align 8, !tbaa !21
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !174 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIN5vcpkg11FeatureSpecENS0_18PlatformExpression4ExprESt4lessIS1_ESaISt4pairIKS1_S3_EEEaSEOSA_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt8_Rb_treeIN5vcpkg11FeatureSpecESt4pairIKS1_NS0_18PlatformExpression4ExprEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE5clearEv.exit.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !18
  store i32 %i.bg, ptr %i.az, align 8, !tbaa !18
  store ptr %i.be, ptr %i.av, align 8, !tbaa !11
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bj = load <2 x ptr>, ptr %i.bh, align 8, !tbaa !174
  store <2 x ptr> %i.bj, ptr %i.ba, align 8, !tbaa !174
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.az, ptr %i.bk, align 8, !tbaa !253
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !21
  store i64 %i.bm, ptr %i.bc, align 8, !tbaa !21
  store ptr null, ptr %i.bd, align 8, !tbaa !11
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !19
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !20
  store i64 0, ptr %i.bl, align 8, !tbaa !21
  br label %_ZNSt3mapIN5vcpkg11FeatureSpecENS0_18PlatformExpression4ExprESt4lessIS1_ESaISt4pairIKS1_S3_EEEaSEOSA_.exit

_ZNSt3mapIN5vcpkg11FeatureSpecENS0_18PlatformExpression4ExprESt4lessIS1_ESaISt4pairIKS1_S3_EEEaSEOSA_.exit: ; preds = %_ZNSt8_Rb_treeIN5vcpkg11FeatureSpecESt4pairIKS1_NS0_18PlatformExpression4ExprEESt10_Select1stIS6_ESt4lessIS1_ESaIS6_EE5clearEv.exit.i.i.i, %bb.g
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(144) ptr @_ZN19MockOverlayProvider7emplaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS8_13VersionSchemeE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %5 = alloca %"class.std::unique_ptr.6", align 8 ; 7 uses
  %6 = alloca %"struct.vcpkg::SourceControlFileAndLocation", align 8 ; 20 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg28SourceControlFileAndLocationESt4lessIvESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !26   ; 4 uses
  %i.g = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !26   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.i) ; 2 uses
  %i.j = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.j, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !28
  %i.m = tail call i32 @memcmp(ptr noundef %i.l, ptr noundef %i.g, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.b
  %i.n = sub i64 %i.i, %i.f
  %spec.select7.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.n, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i

_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.m, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.o = icmp slt i32 %.0.i.i.i.i.i.i.i, 0        ; 2 uses
  %.19.i.i.i = select i1 %i.o, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.o, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !174 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5vcpkg28SourceControlFileAndLocationEESt10_Select1stISA_ESt4lessIvESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.b, !llvm.loop !1971

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5vcpkg28SourceControlFileAndLocationEESt10_Select1stISA_ESt4lessIvESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i
  %i.p = icmp eq ptr %.19.i.i.i, %i.d
  br i1 %i.p, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg28SourceControlFileAndLocationESt4lessIvESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5vcpkg28SourceControlFileAndLocationEESt10_Select1stISA_ESt4lessIvESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.r = load i64, ptr %i.q, align 8, !tbaa !26   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.r, i64 %i.f) ; 2 uses
  %i.s = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.s, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !28
  %i.v = tail call i32 @memcmp(ptr noundef %i.g, ptr noundef %i.u, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg28SourceControlFileAndLocationESt4lessIvESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.c
  %i.w = sub i64 %i.f, %i.r
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.w, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg28SourceControlFileAndLocationESt4lessIvESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg28SourceControlFileAndLocationESt4lessIvESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.v, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.x = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br i1 %i.x, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg28SourceControlFileAndLocationESt4lessIvESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread, label %bb.t

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg28SourceControlFileAndLocationESt4lessIvESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5vcpkg28SourceControlFileAndLocationEESt10_Select1stISA_ESt4lessIvESaISA_EE14_M_lower_boundEPSt13_Rb_tree_nodeISA_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg28SourceControlFileAndLocationESt4lessIvESaISt4pairIKS5_S7_EEE4findERSB_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1972)
  %i.y = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #24, !noalias !1972 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.y, i8 0, i64 56, i1 false), !noalias !1972
  store ptr %i.y, ptr %4, align 8, !tbaa !136, !alias.scope !1972
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1975)
  %i.z = invoke noalias noundef nonnull dereferenceable(488) ptr @_Znwm(i64 noundef 488) #24
          to label %.noexc unwind label %bb.n     ; 12 uses

.noexc:                                           ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg28SourceControlFileAndLocationESt4lessIvESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(488) %i.z, i8 0, i64 488, i1 false), !noalias !1975
  invoke void @_ZN5vcpkg15SourceParagraphC2Ev(ptr noundef nonnull align 8 dereferenceable(488) %i.z)
          to label %bb.e unwind label %bb.d, !noalias !1975

bb.d:                                             ; preds = %.noexc
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef 488) #23, !noalias !1975
  br label %.body

bb.e:                                             ; preds = %.noexc
  store ptr %i.z, ptr %5, align 8, !tbaa !138, !alias.scope !1975
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store i32 %3, ptr %i.ab, align 8, !tbaa !1548
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 40 ; 5 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !28 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 56 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  %i.ag = load ptr, ptr %2, align 8, !tbaa !28    ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah                ; 2 uses
  br i1 %i.af, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  br i1 %i.ai, label %bb.f, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  br i1 %i.ai, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !26 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %.not21.i.i = icmp eq ptr %2, %i.ac
  br i1 %.not21.i.i, label %_ZN5vcpkg7VersionaSEOS0_.exit, label %bb.g, !prof !29

bb.g:                                             ; preds = %bb.f
  switch i64 %i.ak, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.am = load i8, ptr %i.ag, align 1, !tbaa !25
  store i8 %i.am, ptr %i.ad, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.ag, i64 %i.ak, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !26 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !26
  %i.ap = load ptr, ptr %i.ac, align 8, !tbaa !28
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store i8 0, ptr %i.aq, align 1, !tbaa !25
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !28
  br label %_ZN5vcpkg7VersionaSEOS0_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !28
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.at = load <2 x i64>, ptr %i.as, align 8, !tbaa !25
  store <2 x i64> %i.at, ptr %i.ar, align 8, !tbaa !25
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.au = load i64, ptr %i.ae, align 8, !tbaa !25
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !28
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ax = load <2 x i64>, ptr %i.av, align 8, !tbaa !25
  store <2 x i64> %i.ax, ptr %i.aw, align 8, !tbaa !25
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.ad, ptr %2, align 8, !tbaa !28
  store i64 %i.au, ptr %i.ah, align 8, !tbaa !25
  br label %_ZN5vcpkg7VersionaSEOS0_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.ah, ptr %2, align 8, !tbaa !28
  br label %_ZN5vcpkg7VersionaSEOS0_.exit

_ZN5vcpkg7VersionaSEOS0_.exit:                    ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.j, %bb.k
  %i.ay = phi ptr [ %i.ad, %bb.j ], [ %i.ah, %bb.k ], [ %i.ag, %bb.f ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.az, align 8, !tbaa !26
  store i8 0, ptr %i.ay, align 1, !tbaa !25
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !30
  %i.bc = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  store i32 %i.bb, ptr %i.bc, align 8, !tbaa !30
  %i.bd = load ptr, ptr %4, align 8               ; 3 uses
  %i.be = load ptr, ptr %5, align 8, !tbaa !138
  store ptr null, ptr %5, align 8, !tbaa !138
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !138 ; 3 uses
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !138
  %.not.i.i.i.i = icmp eq ptr %i.bf, null
  %i.bg = ptrtoint ptr %i.bd to i64
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN5vcpkg15SourceParagraphEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN5vcpkg15SourceParagraphEEclEPS1_.exit.i.i.i.i: ; preds = %_ZN5vcpkg7VersionaSEOS0_.exit
  tail call void @_ZN5vcpkg15SourceParagraphD2Ev(ptr noundef nonnull align 8 dead_on_return(488) dereferenceable(488) %i.bf) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef 488) #23
  br label %_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %_ZN5vcpkg7VersionaSEOS0_.exit, %_ZNKSt14default_deleteIN5vcpkg15SourceParagraphEEclEPS1_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store i64 %i.bg, ptr %6, align 8, !tbaa !136
  store ptr null, ptr %4, align 8, !tbaa !136
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  invoke void @_ZN5vcpkg4PathC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EEaSEOS4_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 4 uses
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !22
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 0, ptr %i.bk, align 8, !tbaa !26
  store i8 0, ptr %i.bj, align 8, !tbaa !25
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 4 uses
  store ptr %i.bm, ptr %i.bl, align 8, !tbaa !22
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 80
  store i64 0, ptr %i.bn, align 8, !tbaa !26
  store i8 0, ptr %i.bm, align 8, !tbaa !25
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 104
  store i32 0, ptr %i.bo, align 8, !tbaa !1570
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 4 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !22
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i64 0, ptr %i.br, align 8, !tbaa !26
  store i8 0, ptr %i.bq, align 8, !tbaa !25
  %i.bs = invoke { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg28SourceControlFileAndLocationESt4lessIvESaISt4pairIKS5_S7_EEE7emplaceIJRSB_S7_EEESA_ISt17_Rb_tree_iteratorISC_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(144) %6)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  %.fca.0.extract = extractvalue { ptr, i8 } %i.bs, 0
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !28 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.bq
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.m
  %i.bv = load i64, ptr %i.bq, align 8, !tbaa !25
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bx = load ptr, ptr %i.bl, align 8, !tbaa !28 ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.bm
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bz = load i64, ptr %i.bm, align 8, !tbaa !25
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.cb = load ptr, ptr %i.bi, align 8, !tbaa !28 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bj
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.cd = load i64, ptr %i.bj, align 8, !tbaa !25
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.cf = load ptr, ptr %i.bh, align 8, !tbaa !28 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZN5vcpkg4PathD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !25
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.cj) #23
  br label %_ZN5vcpkg4PathD2Ev.exit.i

_ZN5vcpkg4PathD2Ev.exit.i:                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.ck = load ptr, ptr %6, align 8, !tbaa !136   ; 3 uses
  %.not.i.i16 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i16, label %_ZNSt10unique_ptrIN5vcpkg17SourceControlFileESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5vcpkg17SourceControlFileEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5vcpkg17SourceControlFileEEclEPS1_.exit.i.i: ; preds = %_ZN5vcpkg4PathD2Ev.exit.i
  call void @_ZN5vcpkg17SourceControlFileD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ck) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef 56) #23
  br label %_ZNSt10unique_ptrIN5vcpkg17SourceControlFileESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg17SourceControlFileESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN5vcpkg4PathD2Ev.exit.i, %_ZNKSt14default_deleteIN5vcpkg17SourceControlFileEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.t

bb.n:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg28SourceControlFileAndLocationESt4lessIvESaISt4pairIKS5_S7_EEE4findERSB_.exit.thread
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %bb.e
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.p:                                             ; preds = %_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EEaSEOS4_.exit
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN5vcpkg17SourceControlFileESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #22
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5vcpkg28SourceControlFileAndLocationD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %6) #22
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.co, %bb.q ], [ %i.cn, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.r ], [ %i.cm, %bb.o ]
  call void @_ZNSt10unique_ptrIN5vcpkg15SourceParagraphESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #22
  br label %.body

.body:                                            ; preds = %bb.n, %bb.d, %bb.s
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.s ], [ %i.cl, %bb.n ], [ %i.aa, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @_ZNSt10unique_ptrIN5vcpkg17SourceControlFileESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn.pn.pn

bb.t:                                             ; preds = %_ZNSt10unique_ptrIN5vcpkg17SourceControlFileESt14default_deleteIS1_EED2Ev.exit, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg28SourceControlFileAndLocationESt4lessIvESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %.sroa.018.0 = phi ptr [ %.fca.0.extract, %_ZNSt10unique_ptrIN5vcpkg17SourceControlFileESt14default_deleteIS1_EED2Ev.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg28SourceControlFileAndLocationESt4lessIvESaISt4pairIKS5_S7_EEE4findERSB_.exit ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.018.0, i64 64
  ret ptr %i.cp
}

declare ptr @_ZNK5vcpkg11PackageSpec7tripletEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL29create_versioned_install_planRKN5vcpkg26IVersionedPortfileProviderERKNS_17IBaselineProviderERKNS_16IOverlayProviderERKNS_9CMakeVars16CMakeVarProviderERKSt6vectorINS_10DependencyESaISE_EERKSD_INS_18DependencyOverrideESaISJ_EERKNS_11PackageSpecE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(40) %7) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.vcpkg::PackagesDirAssigner", align 8 ; 10 uses
  %9 = alloca %"struct.vcpkg::Path", align 8      ; 9 uses
  %10 = alloca %"struct.vcpkg::CreateInstallPlanOptions", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @_ZN5vcpkg4PathC1EPKc(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.139)
  invoke void @_ZN5vcpkg19PackagesDirAssignerC1ERKNS_4PathE(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %9, align 8, !tbaa !28     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN5vcpkg4PathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !25
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #23
  br label %_ZN5vcpkg4PathD2Ev.exit

end_hunk_6
