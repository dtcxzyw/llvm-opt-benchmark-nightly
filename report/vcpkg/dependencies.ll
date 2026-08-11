inline.NumInlined: 13345
inline.NumDeleted: 2349
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumUnrolled: 71
begin_hunk_0_@_ZL20C_A_T_C_H_T_E_S_T_74v:bb.a
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
  %113 = sub i64 %i.ao, %i.ap
  %114 = add i64 %113, -8                         ; 2 uses
  %i.ba = lshr i64 %114, 3
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %114, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader1244, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bc = add i64 %i.ao, -8
  %i.bd = sub i64 %i.bc, %i.ap
  %i.be = and i64 %i.bd, -8
  %i.bf = add i64 %i.be, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ay, i64 %i.bf
  %scevgep1195 = getelementptr i8, ptr %i.an, i64 %i.bf
  %bound0 = icmp ult ptr %i.ay, %scevgep1195
  %bound1 = icmp ult ptr %i.an, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader1244, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bb, 4611686018427387900     ; 3 uses
  %i.bg = shl i64 %n.vec, 3                       ; 2 uses
  %i.bh = getelementptr i8, ptr %i.ay, i64 %i.bg  ; 2 uses
  %i.bi = getelementptr i8, ptr %i.an, i64 %i.bg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ay, i64 %i.bj ; 2 uses
  %next.gep1196 = getelementptr i8, ptr %i.an, i64 %i.bj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !626)
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  %i.bk = getelementptr i8, ptr %next.gep1196, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1196, align 8, !tbaa !619, !alias.scope !631, !noalias !626
  %wide.load1197 = load <2 x i64>, ptr %i.bk, align 8, !tbaa !619, !alias.scope !631, !noalias !626
  %i.bl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !619, !alias.scope !634, !noalias !631
  store <2 x i64> %wide.load1197, ptr %i.bl, align 8, !tbaa !619, !alias.scope !634, !noalias !631
  %i.bm = getelementptr i8, ptr %next.gep1196, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1196, align 8, !tbaa !619, !alias.scope !631, !noalias !626
  store <2 x ptr> splat (ptr null), ptr %i.bm, align 8, !tbaa !619, !alias.scope !631, !noalias !626
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !636

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader1244

.lr.ph.i.i.i.i.preheader1244:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ay, %vector.memcheck ], [ %i.ay, %.lr.ph.i.i.i.i.preheader ], [ %i.bh, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.i.i.i.preheader ], [ %i.bi, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader1244, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader1244 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader1244 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !626)
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  %i.bo = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !629, !noalias !626
  store i64 %i.bo, ptr %.012.i.i.i.i, align 8, !tbaa !619, !alias.scope !626, !noalias !629
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !629, !noalias !626
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bp, %i.aj
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !639

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc751
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ay, %.noexc751 ], [ %i.bh, %middle.block ], [ %i.bq, %.lr.ph.i.i.i.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.an, null
  br i1 %.not.i23.i, label %.noexc307, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.bs = load ptr, ptr %i.ak, align 8, !tbaa !624
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.bu) #23
  br label %.noexc307

.noexc307:                                        ; preds = %bb.h, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.ay, ptr %i.ah, align 8, !tbaa !625
  store ptr %i.br, ptr %i.ai, align 8, !tbaa !621
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  store ptr %i.bv, ptr %i.ak, align 8, !tbaa !624
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %.noexc307, %bb.e
  %i.bw = load ptr, ptr %15, align 8, !tbaa !28   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZN5vcpkg7VersionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !25
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit

_ZN5vcpkg7VersionD2Ev.exit:                       ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.cb = load ptr, ptr %14, align 8, !tbaa !28   ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.ac
  br i1 %i.cc, label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5vcpkg7VersionD2Ev.exit
  %i.cd = load i64, ptr %i.ac, align 8, !tbaa !25
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #23
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN5vcpkg7VersionD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !640)
  %i.cf = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #24
          to label %.noexc311 unwind label %bb.br ; 13 uses

.noexc311:                                        ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.cg, i8 0, i64 160, i1 false), !noalias !640
  store ptr %i.cg, ptr %i.cf, align 8, !tbaa !22, !noalias !640
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  store i64 0, ptr %i.ch, align 8, !tbaa !26, !noalias !640
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 32 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ci, i8 0, i64 48, i1 false), !noalias !640
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.cj) #22, !noalias !640
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 88
  invoke void @_ZN5vcpkg28ParsedSpdxLicenseDeclarationC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.ck)
          to label %bb.j unwind label %bb.i, !noalias !640

bb.i:                                             ; preds = %.noexc311
  %i.cl = landingpad { ptr, i32 }
          cleanup
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.cj) #22, !noalias !640
  call void @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cm) #22, !noalias !640
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ci) #22, !noalias !640
  %i.cn = load ptr, ptr %i.cf, align 8, !tbaa !28, !noalias !640 ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.cg
  br i1 %i.co, label %.body.i309, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i308

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i308: ; preds = %bb.i
  %i.cp = load i64, ptr %i.cg, align 8, !tbaa !25, !noalias !640
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #23, !noalias !640
  br label %.body.i309

.body.i309:                                       ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i308
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef 176) #23, !noalias !640
  br label %.body312

bb.j:                                             ; preds = %.noexc311
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cf, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i8 0, i64 24, i1 false), !noalias !640
  store ptr %i.cf, ptr %16, align 8, !tbaa !619, !alias.scope !640
  %i.cs = load i64, ptr %i.ch, align 8, !tbaa !26
  %i.ct = ptrtoint ptr %i.cf to i64               ; 2 uses
  %i.cu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i64 noundef 0, i64 noundef %i.cs, ptr noundef nonnull @.str.216, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit316 unwind label %bb.bs ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit316: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.cv = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.cv, ptr %17, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.cv, ptr noundef nonnull align 1 dereferenceable(6) @.str.391, i64 6, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 6, ptr %i.cw, align 8, !tbaa !26
  %i.cx = getelementptr inbounds nuw i8, ptr %17, i64 22
  store i8 0, ptr %i.cx, align 2, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %18, ptr nonnull @.str.207, i64 5, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi6EEERAT__Kci.exit unwind label %bb.bt

_ZN5vcpkg7VersionC2ILi6EEERAT__Kci.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit316
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr @.str.123, ptr %10, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i322 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i322, align 8, !tbaa !33
  %i.cy = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(36) %18, i32 noundef 2, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %10)
          to label %bb.k unwind label %bb.bu

bb.k:                                             ; preds = %_ZN5vcpkg7VersionC2ILi6EEERAT__Kci.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !136 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !621 ; 6 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 24 ; 3 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !624
  %.not.i.i325 = icmp eq ptr %i.dc, %i.de
  br i1 %.not.i.i325, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 %i.ct, ptr %i.dc, align 8, !tbaa !619
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %i.df, ptr %i.db, align 8, !tbaa !621
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit327

bb.m:                                             ; preds = %bb.k
  %i.dg = load ptr, ptr %i.da, align 8, !tbaa !625 ; 10 uses
  %i.dh = ptrtoint ptr %i.dc to i64               ; 3 uses
  %i.di = ptrtoint ptr %i.dg to i64               ; 4 uses
  %i.dj = sub i64 %i.dh, %i.di                    ; 3 uses
  %i.dk = icmp eq i64 %i.dj, 9223372036854775800
  br i1 %i.dk, label %bb.n, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i752

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc770 unwind label %bb.bu

.noexc770:                                        ; preds = %bb.n
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i752: ; preds = %bb.m
  %i.dl = ashr exact i64 %i.dj, 3                 ; 3 uses
  %.sroa.speculated.i.i753 = call i64 @llvm.umax.i64(i64 %i.dl, i64 1)
  %i.dm = add nsw i64 %.sroa.speculated.i.i753, %i.dl ; 2 uses
  %i.dn = icmp ult i64 %i.dm, %i.dl
  %i.do = call i64 @llvm.umin.i64(i64 %i.dm, i64 1152921504606846975)
  %i.dp = select i1 %i.dn, i64 1152921504606846975, i64 %i.do ; 3 uses
  %.not.i.i754 = icmp ne i64 %i.dp, 0
  call void @llvm.assume(i1 %.not.i.i754)
  %i.dq = shl nuw nsw i64 %i.dp, 3
  %i.dr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dq) #24
          to label %.noexc771 unwind label %bb.bu ; 10 uses

.noexc771:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i752
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dj
  store i64 %i.ct, ptr %i.ds, align 8, !tbaa !619
  store ptr null, ptr %16, align 8, !tbaa !619
  %.not10.i.i.i.i755 = icmp eq ptr %i.dg, %i.dc
  br i1 %.not10.i.i.i.i755, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i767, label %.lr.ph.i.i.i.i756.preheader

.lr.ph.i.i.i.i756.preheader:                      ; preds = %.noexc771
  %115 = sub i64 %i.dh, %i.di
  %116 = add i64 %115, -8                         ; 2 uses
  %i.dt = lshr i64 %116, 3
  %i.du = add nuw nsw i64 %i.dt, 1                ; 2 uses
  %min.iters.check1206 = icmp ult i64 %116, 136
  br i1 %min.iters.check1206, label %.lr.ph.i.i.i.i756.preheader1242, label %vector.memcheck1199

vector.memcheck1199:                              ; preds = %.lr.ph.i.i.i.i756.preheader
  %i.dv = add i64 %i.dh, -8
  %i.dw = sub i64 %i.dv, %i.di
  %i.dx = and i64 %i.dw, -8
  %i.dy = add i64 %i.dx, 8                        ; 2 uses
  %scevgep1200 = getelementptr i8, ptr %i.dr, i64 %i.dy
  %scevgep1201 = getelementptr i8, ptr %i.dg, i64 %i.dy
  %bound01202 = icmp ult ptr %i.dr, %scevgep1201
  %bound11203 = icmp ult ptr %i.dg, %scevgep1200
  %found.conflict1204 = and i1 %bound01202, %bound11203
  br i1 %found.conflict1204, label %.lr.ph.i.i.i.i756.preheader1242, label %vector.ph1207

vector.ph1207:                                    ; preds = %vector.memcheck1199
  %n.vec1208 = and i64 %i.du, 4611686018427387900 ; 3 uses
  %i.dz = shl i64 %n.vec1208, 3                   ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dr, i64 %i.dz  ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dg, i64 %i.dz
  br label %vector.body1209

vector.body1209:                                  ; preds = %vector.body1209, %vector.ph1207
  %index1210 = phi i64 [ 0, %vector.ph1207 ], [ %index.next1215, %vector.body1209 ] ; 2 uses
  %i.ec = shl i64 %index1210, 3                   ; 2 uses
  %next.gep1211 = getelementptr i8, ptr %i.dr, i64 %i.ec ; 2 uses
  %next.gep1212 = getelementptr i8, ptr %i.dg, i64 %i.ec ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !643)
  call void @llvm.experimental.noalias.scope.decl(metadata !646)
  %i.ed = getelementptr i8, ptr %next.gep1212, i64 16
  %wide.load1213 = load <2 x i64>, ptr %next.gep1212, align 8, !tbaa !619, !alias.scope !648, !noalias !643
  %wide.load1214 = load <2 x i64>, ptr %i.ed, align 8, !tbaa !619, !alias.scope !648, !noalias !643
  %i.ee = getelementptr i8, ptr %next.gep1211, i64 16
  store <2 x i64> %wide.load1213, ptr %next.gep1211, align 8, !tbaa !619, !alias.scope !651, !noalias !648
  store <2 x i64> %wide.load1214, ptr %i.ee, align 8, !tbaa !619, !alias.scope !651, !noalias !648
  %i.ef = getelementptr i8, ptr %next.gep1212, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1212, align 8, !tbaa !619, !alias.scope !648, !noalias !643
  store <2 x ptr> splat (ptr null), ptr %i.ef, align 8, !tbaa !619, !alias.scope !648, !noalias !643
  %index.next1215 = add nuw i64 %index1210, 4     ; 2 uses
  %i.eg = icmp eq i64 %index.next1215, %n.vec1208
  br i1 %i.eg, label %middle.block1216, label %vector.body1209, !llvm.loop !653

middle.block1216:                                 ; preds = %vector.body1209
  %cmp.n1217 = icmp eq i64 %i.du, %n.vec1208
  br i1 %cmp.n1217, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i767, label %.lr.ph.i.i.i.i756.preheader1242

.lr.ph.i.i.i.i756.preheader1242:                  ; preds = %vector.memcheck1199, %.lr.ph.i.i.i.i756.preheader, %middle.block1216
  %.012.i.i.i.i757.ph = phi ptr [ %i.dr, %vector.memcheck1199 ], [ %i.dr, %.lr.ph.i.i.i.i756.preheader ], [ %i.ea, %middle.block1216 ]
  %.0911.i.i.i.i758.ph = phi ptr [ %i.dg, %vector.memcheck1199 ], [ %i.dg, %.lr.ph.i.i.i.i756.preheader ], [ %i.eb, %middle.block1216 ]
  br label %.lr.ph.i.i.i.i756

.lr.ph.i.i.i.i756:                                ; preds = %.lr.ph.i.i.i.i756.preheader1242, %.lr.ph.i.i.i.i756
  %.012.i.i.i.i757 = phi ptr [ %i.ej, %.lr.ph.i.i.i.i756 ], [ %.012.i.i.i.i757.ph, %.lr.ph.i.i.i.i756.preheader1242 ] ; 2 uses
  %.0911.i.i.i.i758 = phi ptr [ %i.ei, %.lr.ph.i.i.i.i756 ], [ %.0911.i.i.i.i758.ph, %.lr.ph.i.i.i.i756.preheader1242 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !643)
  call void @llvm.experimental.noalias.scope.decl(metadata !646)
  %i.eh = load i64, ptr %.0911.i.i.i.i758, align 8, !tbaa !619, !alias.scope !646, !noalias !643
  store i64 %i.eh, ptr %.012.i.i.i.i757, align 8, !tbaa !619, !alias.scope !643, !noalias !646
  store ptr null, ptr %.0911.i.i.i.i758, align 8, !tbaa !619, !alias.scope !646, !noalias !643
  %i.ei = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i758, i64 8 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i757, i64 8 ; 2 uses
  %.not.i.i.i.i759 = icmp eq ptr %i.ei, %i.dc
  br i1 %.not.i.i.i.i759, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i767, label %.lr.ph.i.i.i.i756, !llvm.loop !654

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i767: ; preds = %.lr.ph.i.i.i.i756, %middle.block1216, %.noexc771
  %.0.lcssa.i.i.i.i761 = phi ptr [ %i.dr, %.noexc771 ], [ %i.ea, %middle.block1216 ], [ %i.ej, %.lr.ph.i.i.i.i756 ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i761, i64 8
  %.not.i23.i769 = icmp eq ptr %i.dg, null
  br i1 %.not.i23.i769, label %.noexc326, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i767
  %i.el = load ptr, ptr %i.dd, align 8, !tbaa !624
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = sub i64 %i.em, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.en) #23
  br label %.noexc326

.noexc326:                                        ; preds = %bb.o, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i767
  store ptr %i.dr, ptr %i.da, align 8, !tbaa !625
  store ptr %i.ek, ptr %i.db, align 8, !tbaa !621
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dp
  store ptr %i.eo, ptr %i.dd, align 8, !tbaa !624
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit327

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit327: ; preds = %.noexc326, %bb.l
  %i.ep = load ptr, ptr %18, align 8, !tbaa !28   ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %_ZN5vcpkg7VersionD2Ev.exit330, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i328

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i328: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit327
  %i.es = load i64, ptr %i.eq, align 8, !tbaa !25
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.et) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit330

_ZN5vcpkg7VersionD2Ev.exit330:                    ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit327, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i328
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.eu = load ptr, ptr %17, align 8, !tbaa !28   ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.cv
  br i1 %i.ev, label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit336, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331: ; preds = %_ZN5vcpkg7VersionD2Ev.exit330
  %i.ew = load i64, ptr %i.cv, align 8, !tbaa !25
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #23
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit336

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit336: ; preds = %_ZN5vcpkg7VersionD2Ev.exit330, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !655)
  %i.ey = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #24
          to label %.noexc340 unwind label %bb.bw ; 13 uses

.noexc340:                                        ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit336
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.ez, i8 0, i64 160, i1 false), !noalias !655
  store ptr %i.ez, ptr %i.ey, align 8, !tbaa !22, !noalias !655
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  store i64 0, ptr %i.fa, align 8, !tbaa !26, !noalias !655
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 32 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fb, i8 0, i64 48, i1 false), !noalias !655
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.fc) #22, !noalias !655
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 88
  invoke void @_ZN5vcpkg28ParsedSpdxLicenseDeclarationC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.fd)
          to label %bb.q unwind label %bb.p, !noalias !655

bb.p:                                             ; preds = %.noexc340
  %i.fe = landingpad { ptr, i32 }
          cleanup
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 56
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fc) #22, !noalias !655
  call void @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ff) #22, !noalias !655
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fb) #22, !noalias !655
  %i.fg = load ptr, ptr %i.ey, align 8, !tbaa !28, !noalias !655 ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.ez
  br i1 %i.fh, label %.body.i338, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i337

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i337: ; preds = %bb.p
  %i.fi = load i64, ptr %i.ez, align 8, !tbaa !25, !noalias !655
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #23, !noalias !655
  br label %.body.i338

.body.i338:                                       ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i337
  call void @_ZdlPvm(ptr noundef nonnull %i.ey, i64 noundef 176) #23, !noalias !655
  br label %.body341

bb.q:                                             ; preds = %.noexc340
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ey, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fk, i8 0, i64 24, i1 false), !noalias !655
  store ptr %i.ey, ptr %19, align 8, !tbaa !619, !alias.scope !655
  %i.fl = load i64, ptr %i.fa, align 8, !tbaa !26
  %i.fm = ptrtoint ptr %i.ey to i64               ; 2 uses
  %i.fn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ey, i64 noundef 0, i64 noundef %i.fl, ptr noundef nonnull @.str.216, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit345 unwind label %bb.bx ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit345: ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.fo = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  store ptr %i.fo, ptr %20, align 8, !tbaa !22
  store i32 1702125924, ptr %i.fo, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 4, ptr %i.fp, align 8, !tbaa !26
  %i.fq = getelementptr inbounds nuw i8, ptr %20, i64 20
  store i8 0, ptr %i.fq, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %21, ptr nonnull @.str.393, i64 10, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi11EEERAT__Kci.exit unwind label %bb.by

_ZN5vcpkg7VersionC2ILi11EEERAT__Kci.exit:         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit345
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr @.str.123, ptr %9, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i351 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i351, align 8, !tbaa !33
  %i.fr = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(36) %21, i32 noundef 3, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %9)
          to label %bb.r unwind label %bb.bz

bb.r:                                             ; preds = %_ZN5vcpkg7VersionC2ILi11EEERAT__Kci.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !136 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 16 ; 3 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !621 ; 6 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 24 ; 3 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !624
  %.not.i.i354 = icmp eq ptr %i.fv, %i.fx
  br i1 %.not.i.i354, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i64 %i.fm, ptr %i.fv, align 8, !tbaa !619
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store ptr %i.fy, ptr %i.fu, align 8, !tbaa !621
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit356

bb.t:                                             ; preds = %bb.r
  %i.fz = load ptr, ptr %i.ft, align 8, !tbaa !625 ; 10 uses
  %i.ga = ptrtoint ptr %i.fv to i64               ; 3 uses
  %i.gb = ptrtoint ptr %i.fz to i64               ; 4 uses
  %i.gc = sub i64 %i.ga, %i.gb                    ; 3 uses
  %i.gd = icmp eq i64 %i.gc, 9223372036854775800
  br i1 %i.gd, label %bb.u, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i773

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc791 unwind label %bb.bz

.noexc791:                                        ; preds = %bb.u
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i773: ; preds = %bb.t
  %i.ge = ashr exact i64 %i.gc, 3                 ; 3 uses
  %.sroa.speculated.i.i774 = call i64 @llvm.umax.i64(i64 %i.ge, i64 1)
  %i.gf = add nsw i64 %.sroa.speculated.i.i774, %i.ge ; 2 uses
  %i.gg = icmp ult i64 %i.gf, %i.ge
  %i.gh = call i64 @llvm.umin.i64(i64 %i.gf, i64 1152921504606846975)
  %i.gi = select i1 %i.gg, i64 1152921504606846975, i64 %i.gh ; 3 uses
  %.not.i.i775 = icmp ne i64 %i.gi, 0
  call void @llvm.assume(i1 %.not.i.i775)
  %i.gj = shl nuw nsw i64 %i.gi, 3
  %i.gk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gj) #24
          to label %.noexc792 unwind label %bb.bz ; 10 uses

.noexc792:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i773
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gc
  store i64 %i.fm, ptr %i.gl, align 8, !tbaa !619
  store ptr null, ptr %19, align 8, !tbaa !619
  %.not10.i.i.i.i776 = icmp eq ptr %i.fz, %i.fv
  br i1 %.not10.i.i.i.i776, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i788, label %.lr.ph.i.i.i.i777.preheader

.lr.ph.i.i.i.i777.preheader:                      ; preds = %.noexc792
  %117 = sub i64 %i.ga, %i.gb
  %118 = add i64 %117, -8                         ; 2 uses
  %i.gm = lshr i64 %118, 3
  %i.gn = add nuw nsw i64 %i.gm, 1                ; 2 uses
  %min.iters.check1227 = icmp ult i64 %118, 136
  br i1 %min.iters.check1227, label %.lr.ph.i.i.i.i777.preheader1241, label %vector.memcheck1220

vector.memcheck1220:                              ; preds = %.lr.ph.i.i.i.i777.preheader
  %i.go = add i64 %i.ga, -8
  %i.gp = sub i64 %i.go, %i.gb
  %i.gq = and i64 %i.gp, -8
  %i.gr = add i64 %i.gq, 8                        ; 2 uses
  %scevgep1221 = getelementptr i8, ptr %i.gk, i64 %i.gr
  %scevgep1222 = getelementptr i8, ptr %i.fz, i64 %i.gr
  %bound01223 = icmp ult ptr %i.gk, %scevgep1222
  %bound11224 = icmp ult ptr %i.fz, %scevgep1221
  %found.conflict1225 = and i1 %bound01223, %bound11224
  br i1 %found.conflict1225, label %.lr.ph.i.i.i.i777.preheader1241, label %vector.ph1228

vector.ph1228:                                    ; preds = %vector.memcheck1220
  %n.vec1229 = and i64 %i.gn, 4611686018427387900 ; 3 uses
  %i.gs = shl i64 %n.vec1229, 3                   ; 2 uses
  %i.gt = getelementptr i8, ptr %i.gk, i64 %i.gs  ; 2 uses
  %i.gu = getelementptr i8, ptr %i.fz, i64 %i.gs
  br label %vector.body1230

vector.body1230:                                  ; preds = %vector.body1230, %vector.ph1228
  %index1231 = phi i64 [ 0, %vector.ph1228 ], [ %index.next1236, %vector.body1230 ] ; 2 uses
  %i.gv = shl i64 %index1231, 3                   ; 2 uses
  %next.gep1232 = getelementptr i8, ptr %i.gk, i64 %i.gv ; 2 uses
  %next.gep1233 = getelementptr i8, ptr %i.fz, i64 %i.gv ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !658)
  call void @llvm.experimental.noalias.scope.decl(metadata !661)
  %i.gw = getelementptr i8, ptr %next.gep1233, i64 16
  %wide.load1234 = load <2 x i64>, ptr %next.gep1233, align 8, !tbaa !619, !alias.scope !663, !noalias !658
  %wide.load1235 = load <2 x i64>, ptr %i.gw, align 8, !tbaa !619, !alias.scope !663, !noalias !658
  %i.gx = getelementptr i8, ptr %next.gep1232, i64 16
  store <2 x i64> %wide.load1234, ptr %next.gep1232, align 8, !tbaa !619, !alias.scope !666, !noalias !663
  store <2 x i64> %wide.load1235, ptr %i.gx, align 8, !tbaa !619, !alias.scope !666, !noalias !663
  %i.gy = getelementptr i8, ptr %next.gep1233, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1233, align 8, !tbaa !619, !alias.scope !663, !noalias !658
  store <2 x ptr> splat (ptr null), ptr %i.gy, align 8, !tbaa !619, !alias.scope !663, !noalias !658
  %index.next1236 = add nuw i64 %index1231, 4     ; 2 uses
  %i.gz = icmp eq i64 %index.next1236, %n.vec1229
  br i1 %i.gz, label %middle.block1237, label %vector.body1230, !llvm.loop !668

middle.block1237:                                 ; preds = %vector.body1230
  %cmp.n1238 = icmp eq i64 %i.gn, %n.vec1229
  br i1 %cmp.n1238, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i788, label %.lr.ph.i.i.i.i777.preheader1241

.lr.ph.i.i.i.i777.preheader1241:                  ; preds = %vector.memcheck1220, %.lr.ph.i.i.i.i777.preheader, %middle.block1237
  %.012.i.i.i.i778.ph = phi ptr [ %i.gk, %vector.memcheck1220 ], [ %i.gk, %.lr.ph.i.i.i.i777.preheader ], [ %i.gt, %middle.block1237 ]
  %.0911.i.i.i.i779.ph = phi ptr [ %i.fz, %vector.memcheck1220 ], [ %i.fz, %.lr.ph.i.i.i.i777.preheader ], [ %i.gu, %middle.block1237 ]
  br label %.lr.ph.i.i.i.i777

.lr.ph.i.i.i.i777:                                ; preds = %.lr.ph.i.i.i.i777.preheader1241, %.lr.ph.i.i.i.i777
  %.012.i.i.i.i778 = phi ptr [ %i.hc, %.lr.ph.i.i.i.i777 ], [ %.012.i.i.i.i778.ph, %.lr.ph.i.i.i.i777.preheader1241 ] ; 2 uses
  %.0911.i.i.i.i779 = phi ptr [ %i.hb, %.lr.ph.i.i.i.i777 ], [ %.0911.i.i.i.i779.ph, %.lr.ph.i.i.i.i777.preheader1241 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !658)
  call void @llvm.experimental.noalias.scope.decl(metadata !661)
  %i.ha = load i64, ptr %.0911.i.i.i.i779, align 8, !tbaa !619, !alias.scope !661, !noalias !658
  store i64 %i.ha, ptr %.012.i.i.i.i778, align 8, !tbaa !619, !alias.scope !658, !noalias !661
  store ptr null, ptr %.0911.i.i.i.i779, align 8, !tbaa !619, !alias.scope !661, !noalias !658
  %i.hb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i779, i64 8 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i778, i64 8 ; 2 uses
  %.not.i.i.i.i780 = icmp eq ptr %i.hb, %i.fv
  br i1 %.not.i.i.i.i780, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i788, label %.lr.ph.i.i.i.i777, !llvm.loop !669

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i788: ; preds = %.lr.ph.i.i.i.i777, %middle.block1237, %.noexc792
  %.0.lcssa.i.i.i.i782 = phi ptr [ %i.gk, %.noexc792 ], [ %i.gt, %middle.block1237 ], [ %i.hc, %.lr.ph.i.i.i.i777 ]
  %i.hd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i782, i64 8
  %.not.i23.i790 = icmp eq ptr %i.fz, null
  br i1 %.not.i23.i790, label %.noexc355, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i788
  %i.he = load ptr, ptr %i.fw, align 8, !tbaa !624
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = sub i64 %i.hf, %i.gb
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef %i.hg) #23
  br label %.noexc355

.noexc355:                                        ; preds = %bb.v, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i788
  store ptr %i.gk, ptr %i.ft, align 8, !tbaa !625
  store ptr %i.hd, ptr %i.fu, align 8, !tbaa !621
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gi
  store ptr %i.hh, ptr %i.fw, align 8, !tbaa !624
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit356

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit356: ; preds = %.noexc355, %bb.s
  %i.hi = load ptr, ptr %21, align 8, !tbaa !28   ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.hk = icmp eq ptr %i.hi, %i.hj
  br i1 %i.hk, label %_ZN5vcpkg7VersionD2Ev.exit359, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i357

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i357: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit356
  %i.hl = load i64, ptr %i.hj, align 8, !tbaa !25
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hm) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit359

_ZN5vcpkg7VersionD2Ev.exit359:                    ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit356, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i357
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  %i.hn = load ptr, ptr %20, align 8, !tbaa !28   ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.fo
  br i1 %i.ho, label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit365, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360: ; preds = %_ZN5vcpkg7VersionD2Ev.exit359
  %i.hp = load i64, ptr %i.fo, align 8, !tbaa !25
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hq) #23
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit365

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit365: ; preds = %_ZN5vcpkg7VersionD2Ev.exit359, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5vcpkg4Test20MockCMakeVarProviderE, i64 16), ptr %22, align 8, !tbaa !9
  %i.hr = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %22, i64 56
  store ptr %i.hs, ptr %i.hr, align 8, !tbaa !34
  %i.ht = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i64 1, ptr %i.ht, align 8, !tbaa !42
  %i.hu = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.hv = getelementptr inbounds nuw i8, ptr %22, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hu, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.hv, align 8, !tbaa !43
  %i.hw = getelementptr inbounds nuw i8, ptr %22, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hw, i8 0, i64 16, i1 false)
  %i.hx = getelementptr inbounds nuw i8, ptr %22, i64 64
  %i.hy = getelementptr inbounds nuw i8, ptr %22, i64 112
  store ptr %i.hy, ptr %i.hx, align 8, !tbaa !34
  %i.hz = getelementptr inbounds nuw i8, ptr %22, i64 72
  store i64 1, ptr %i.hz, align 8, !tbaa !42
  %i.ia = getelementptr inbounds nuw i8, ptr %22, i64 80
  %i.ib = getelementptr inbounds nuw i8, ptr %22, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ia, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ib, align 8, !tbaa !43
  %i.ic = getelementptr inbounds nuw i8, ptr %22, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ic, i8 0, i64 16, i1 false)
  %i.id = getelementptr inbounds nuw i8, ptr %22, i64 120
  %i.ie = getelementptr inbounds nuw i8, ptr %22, i64 168
  store ptr %i.ie, ptr %i.id, align 8, !tbaa !44
  %i.if = getelementptr inbounds nuw i8, ptr %22, i64 128
  store i64 1, ptr %i.if, align 8, !tbaa !46
  %i.ig = getelementptr inbounds nuw i8, ptr %22, i64 136
  %i.ih = getelementptr inbounds nuw i8, ptr %22, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ig, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ih, align 8, !tbaa !43
  %i.ii = getelementptr inbounds nuw i8, ptr %22, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ii, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  store ptr @.str, ptr %25, align 8, !tbaa !85
  %i.ij = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 1354, ptr %i.ij, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  %i.ik = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  store ptr %i.ik, ptr %26, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ik, ptr noundef nonnull align 1 dereferenceable(13) @.str.394, i64 13, i1 false)
  %i.il = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 13, ptr %i.il, align 8, !tbaa !26
  %i.im = getelementptr inbounds nuw i8, ptr %26, i64 29
  store i8 0, ptr %i.im, align 1, !tbaa !25
  invoke void @_ZN5Catch11SectionInfoC1ERKNS_14SourceLineInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %24, ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %bb.w unwind label %bb.cb

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit365
  invoke void @_ZN5Catch7SectionC1ERKNS_11SectionInfoE(ptr noundef nonnull align 8 dereferenceable(160) %23, ptr noundef nonnull align 8 dereferenceable(80) %24)
          to label %bb.x unwind label %bb.cc

bb.x:                                             ; preds = %bb.w
  %i.in = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !28 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %24, i64 48 ; 2 uses
  %i.iq = icmp eq ptr %i.io, %i.ip
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370: ; preds = %bb.x
  %i.ir = load i64, ptr %i.ip, align 8, !tbaa !25
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.is) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370
  %i.it = load ptr, ptr %24, align 8, !tbaa !28   ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.iv = icmp eq ptr %i.it, %i.iu
  br i1 %i.iv, label %_ZN5Catch11SectionInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.iw = load i64, ptr %i.iu, align 8, !tbaa !25
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.ix) #23
  br label %_ZN5Catch11SectionInfoD2Ev.exit

_ZN5Catch11SectionInfoD2Ev.exit:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.iy = load ptr, ptr %26, align 8, !tbaa !28   ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.ik
  br i1 %i.iz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372: ; preds = %_ZN5Catch11SectionInfoD2Ev.exit
end_hunk_0
begin_hunk_1_@_ZL20C_A_T_C_H_T_E_S_T_81v:._crit_edge.i.i
  %35 = alloca %"struct.vcpkg::Version", align 8  ; 6 uses
  %36 = alloca [1 x %"struct.vcpkg::StringLiteral"], align 8 ; 6 uses
  %37 = alloca %"struct.vcpkg::Version", align 8  ; 6 uses
  %38 = alloca [1 x %"struct.vcpkg::StringLiteral"], align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV29MockVersionedPortfileProvider, i64 16), ptr %4, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.c, ptr %i.e, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %i.c, ptr %i.f, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 0, ptr %i.g, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.h, ptr %6, align 8, !tbaa !22
  store i8 120, ptr %i.h, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.i, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 0, ptr %i.j, align 1, !tbaa !25
  invoke fastcc void @_ZL9make_fpghNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef align 8 %6)
          to label %bb.a unwind label %bb.ar

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.k = load ptr, ptr %6, align 8, !tbaa !28     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.h
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.m = load i64, ptr %i.h, align 8, !tbaa !25
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.o = load ptr, ptr %5, align 8                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.q, ptr %7, align 8, !tbaa !22
  store i8 98, ptr %i.q, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 1, ptr %i.r, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 17
  store i8 0, ptr %i.s, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.t, ptr %8, align 8, !tbaa !22
  store i8 121, ptr %i.t, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 1, ptr %i.u, align 8, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 0, ptr %i.v, align 1, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.y = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.z = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24
          to label %_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i unwind label %bb.b ; 3 uses

_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.z, ptr %i.w, align 8, !tbaa !670
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !671
  %i.ad = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN5vcpkg26DependencyRequestedFeatureEPS1_ET0_T_S6_S5_(ptr noundef nonnull %8, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.z)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !670 ; 3 uses
  %.not.i.i5.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i5.i, label %bb.as, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !671
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #23
  br label %bb.as

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %i.ad, ptr %i.al, align 8, !tbaa !672
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 56
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.am) #22
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i32 0, ptr %i.an, align 8, !tbaa !47
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 72
  call void @_ZN5vcpkg7VersionC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.ao) #22
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 112
  store i8 0, ptr %i.ap, align 8, !tbaa !50
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 113
  store i8 1, ptr %i.aq, align 1, !tbaa !72
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false)
  %i.as = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(144) %7)
          to label %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit unwind label %.body ; 0 uses

_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  call void @_ZN5vcpkg10DependencyD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %7) #22
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.at) #22
  %i.au = load ptr, ptr %8, align 8, !tbaa !28    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !25
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #23
  br label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit

_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit:   ; preds = %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.az, ptr %9, align 8, !tbaa !22
  store i8 97, ptr %i.az, align 8, !tbaa !25
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 1, ptr %i.ba, align 8, !tbaa !26
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 17
  store i8 0, ptr %i.bb, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit unwind label %bb.at

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit:          ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr @.str.123, ptr %3, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !33
  %i.bc = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(36) %10, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %3)
          to label %bb.e unwind label %bb.au

bb.e:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !136 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !621 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !624
  %.not.i.i = icmp eq ptr %i.bg, %i.bi
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %i.y, ptr %i.bg, align 8, !tbaa !619
  store ptr null, ptr %5, align 8, !tbaa !619
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !621
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

bb.g:                                             ; preds = %bb.e
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !625 ; 10 uses
  %i.bl = ptrtoint ptr %i.bg to i64               ; 3 uses
  %i.bm = ptrtoint ptr %i.bk to i64               ; 4 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %bb.h, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc270 unwind label %bb.au

.noexc270:                                        ; preds = %bb.h
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.g
  %i.bp = ashr exact i64 %i.bn, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = call i64 @llvm.umin.i64(i64 %i.bq, i64 1152921504606846975)
  %i.bt = select i1 %i.br, i64 1152921504606846975, i64 %i.bs ; 3 uses
  %.not.i.i269 = icmp ne i64 %i.bt, 0
  call void @llvm.assume(i1 %.not.i.i269)
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #24
          to label %.noexc271 unwind label %bb.au ; 10 uses

.noexc271:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  store i64 %i.y, ptr %i.bw, align 8, !tbaa !619
  store ptr null, ptr %5, align 8, !tbaa !619
  %.not10.i.i.i.i = icmp eq ptr %i.bk, %i.bg
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc271
  %39 = sub i64 %i.bl, %i.bm
  %40 = add i64 %39, -8                           ; 2 uses
  %i.bx = lshr i64 %40, 3
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %40, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader474, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bz = add i64 %i.bl, -8
  %i.ca = sub i64 %i.bz, %i.bm
  %i.cb = and i64 %i.ca, -8
  %i.cc = add i64 %i.cb, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bv, i64 %i.cc
  %scevgep448 = getelementptr i8, ptr %i.bk, i64 %i.cc
  %bound0 = icmp ult ptr %i.bv, %scevgep448
  %bound1 = icmp ult ptr %i.bk, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader474, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.by, 4611686018427387900     ; 3 uses
  %i.cd = shl i64 %n.vec, 3                       ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bv, i64 %i.cd  ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bk, i64 %i.cd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cg = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bv, i64 %i.cg ; 2 uses
  %next.gep449 = getelementptr i8, ptr %i.bk, i64 %i.cg ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !700)
  call void @llvm.experimental.noalias.scope.decl(metadata !703)
  %i.ch = getelementptr i8, ptr %next.gep449, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep449, align 8, !tbaa !619, !alias.scope !705, !noalias !700
  %wide.load450 = load <2 x i64>, ptr %i.ch, align 8, !tbaa !619, !alias.scope !705, !noalias !700
  %i.ci = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !619, !alias.scope !708, !noalias !705
  store <2 x i64> %wide.load450, ptr %i.ci, align 8, !tbaa !619, !alias.scope !708, !noalias !705
  %i.cj = getelementptr i8, ptr %next.gep449, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep449, align 8, !tbaa !619, !alias.scope !705, !noalias !700
  store <2 x ptr> splat (ptr null), ptr %i.cj, align 8, !tbaa !619, !alias.scope !705, !noalias !700
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !710

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader474

.lr.ph.i.i.i.i.preheader474:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bv, %vector.memcheck ], [ %i.bv, %.lr.ph.i.i.i.i.preheader ], [ %i.ce, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bk, %vector.memcheck ], [ %i.bk, %.lr.ph.i.i.i.i.preheader ], [ %i.cf, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader474, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader474 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader474 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !700)
  call void @llvm.experimental.noalias.scope.decl(metadata !703)
  %i.cl = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !703, !noalias !700
  store i64 %i.cl, ptr %.012.i.i.i.i, align 8, !tbaa !619, !alias.scope !700, !noalias !703
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !703, !noalias !700
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cm, %i.bg
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !711

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc271
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bv, %.noexc271 ], [ %i.ce, %middle.block ], [ %i.cn, %.lr.ph.i.i.i.i ]
  %i.co = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.bk, null
  br i1 %.not.i23.i, label %.noexc122, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.cp = load ptr, ptr %i.bh, align 8, !tbaa !624
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = sub i64 %i.cq, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.cr) #23
  br label %.noexc122

.noexc122:                                        ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.bv, ptr %i.be, align 8, !tbaa !625
  store ptr %i.co, ptr %i.bf, align 8, !tbaa !621
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.cs, ptr %i.bh, align 8, !tbaa !624
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %.noexc122, %bb.f
  %i.ct = load ptr, ptr %10, align 8, !tbaa !28   ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZN5vcpkg7VersionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i123: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !25
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit

_ZN5vcpkg7VersionD2Ev.exit:                       ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.cy = load ptr, ptr %9, align 8, !tbaa !28    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.az
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %_ZN5vcpkg7VersionD2Ev.exit
  %i.da = load i64, ptr %i.az, align 8, !tbaa !25
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %_ZN5vcpkg7VersionD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.dc = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.dc, ptr %12, align 8, !tbaa !22
  store i8 121, ptr %i.dc, align 8, !tbaa !25
  %i.dd = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 1, ptr %i.dd, align 8, !tbaa !26
  %i.de = getelementptr inbounds nuw i8, ptr %12, i64 17
  store i8 0, ptr %i.de, align 1, !tbaa !25
  invoke fastcc void @_ZL9make_fpghNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %11, ptr noundef align 8 %12)
          to label %bb.j unwind label %bb.av

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127
  %i.df = load ptr, ptr %12, align 8, !tbaa !28   ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.dc
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %bb.j
  %i.dh = load i64, ptr %i.dc, align 8, !tbaa !25
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.dj = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.dj, ptr %13, align 8, !tbaa !22
  store i8 98, ptr %i.dj, align 8, !tbaa !25
  %i.dk = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 1, ptr %i.dk, align 8, !tbaa !26
  %i.dl = getelementptr inbounds nuw i8, ptr %13, i64 17
  store i8 0, ptr %i.dl, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %14, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit140 unwind label %bb.aw

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit140:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr @.str.123, ptr %2, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i141 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i141, align 8, !tbaa !33
  %i.dm = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(36) %14, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %2)
          to label %bb.k unwind label %bb.ax

bb.k:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit140
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !136 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 3 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !621 ; 6 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 24 ; 3 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !624
  %.not.i.i144 = icmp eq ptr %i.dq, %i.ds
  br i1 %.not.i.i144, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dt = load i64, ptr %11, align 8, !tbaa !619
  store i64 %i.dt, ptr %i.dq, align 8, !tbaa !619
  store ptr null, ptr %11, align 8, !tbaa !619
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store ptr %i.du, ptr %i.dp, align 8, !tbaa !621
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit146

bb.m:                                             ; preds = %bb.k
  %i.dv = load ptr, ptr %i.do, align 8, !tbaa !625 ; 10 uses
  %i.dw = ptrtoint ptr %i.dq to i64               ; 3 uses
  %i.dx = ptrtoint ptr %i.dv to i64               ; 4 uses
  %i.dy = sub i64 %i.dw, %i.dx                    ; 3 uses
  %i.dz = icmp eq i64 %i.dy, 9223372036854775800
  br i1 %i.dz, label %bb.n, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i272

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc290 unwind label %bb.ax

.noexc290:                                        ; preds = %bb.n
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i272: ; preds = %bb.m
  %i.ea = ashr exact i64 %i.dy, 3                 ; 3 uses
  %.sroa.speculated.i.i273 = call i64 @llvm.umax.i64(i64 %i.ea, i64 1)
  %i.eb = add nsw i64 %.sroa.speculated.i.i273, %i.ea ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %i.ea
  %i.ed = call i64 @llvm.umin.i64(i64 %i.eb, i64 1152921504606846975)
  %i.ee = select i1 %i.ec, i64 1152921504606846975, i64 %i.ed ; 3 uses
  %.not.i.i274 = icmp ne i64 %i.ee, 0
  call void @llvm.assume(i1 %.not.i.i274)
  %i.ef = shl nuw nsw i64 %i.ee, 3
  %i.eg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ef) #24
          to label %.noexc291 unwind label %bb.ax ; 10 uses

.noexc291:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i272
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.dy
  %i.ei = load i64, ptr %11, align 8, !tbaa !619
  store i64 %i.ei, ptr %i.eh, align 8, !tbaa !619
  store ptr null, ptr %11, align 8, !tbaa !619
  %.not10.i.i.i.i275 = icmp eq ptr %i.dv, %i.dq
  br i1 %.not10.i.i.i.i275, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i287, label %.lr.ph.i.i.i.i276.preheader

.lr.ph.i.i.i.i276.preheader:                      ; preds = %.noexc291
  %41 = sub i64 %i.dw, %i.dx
  %42 = add i64 %41, -8                           ; 2 uses
  %i.ej = lshr i64 %42, 3
  %i.ek = add nuw nsw i64 %i.ej, 1                ; 2 uses
  %min.iters.check459 = icmp ult i64 %42, 136
  br i1 %min.iters.check459, label %.lr.ph.i.i.i.i276.preheader473, label %vector.memcheck452

vector.memcheck452:                               ; preds = %.lr.ph.i.i.i.i276.preheader
  %i.el = add i64 %i.dw, -8
  %i.em = sub i64 %i.el, %i.dx
  %i.en = and i64 %i.em, -8
  %i.eo = add i64 %i.en, 8                        ; 2 uses
  %scevgep453 = getelementptr i8, ptr %i.eg, i64 %i.eo
  %scevgep454 = getelementptr i8, ptr %i.dv, i64 %i.eo
  %bound0455 = icmp ult ptr %i.eg, %scevgep454
  %bound1456 = icmp ult ptr %i.dv, %scevgep453
  %found.conflict457 = and i1 %bound0455, %bound1456
  br i1 %found.conflict457, label %.lr.ph.i.i.i.i276.preheader473, label %vector.ph460

vector.ph460:                                     ; preds = %vector.memcheck452
  %n.vec461 = and i64 %i.ek, 4611686018427387900  ; 3 uses
  %i.ep = shl i64 %n.vec461, 3                    ; 2 uses
  %i.eq = getelementptr i8, ptr %i.eg, i64 %i.ep  ; 2 uses
  %i.er = getelementptr i8, ptr %i.dv, i64 %i.ep
  br label %vector.body462

vector.body462:                                   ; preds = %vector.body462, %vector.ph460
  %index463 = phi i64 [ 0, %vector.ph460 ], [ %index.next468, %vector.body462 ] ; 2 uses
  %i.es = shl i64 %index463, 3                    ; 2 uses
  %next.gep464 = getelementptr i8, ptr %i.eg, i64 %i.es ; 2 uses
  %next.gep465 = getelementptr i8, ptr %i.dv, i64 %i.es ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !712)
  call void @llvm.experimental.noalias.scope.decl(metadata !715)
  %i.et = getelementptr i8, ptr %next.gep465, i64 16
  %wide.load466 = load <2 x i64>, ptr %next.gep465, align 8, !tbaa !619, !alias.scope !717, !noalias !712
  %wide.load467 = load <2 x i64>, ptr %i.et, align 8, !tbaa !619, !alias.scope !717, !noalias !712
  %i.eu = getelementptr i8, ptr %next.gep464, i64 16
  store <2 x i64> %wide.load466, ptr %next.gep464, align 8, !tbaa !619, !alias.scope !720, !noalias !717
  store <2 x i64> %wide.load467, ptr %i.eu, align 8, !tbaa !619, !alias.scope !720, !noalias !717
  %i.ev = getelementptr i8, ptr %next.gep465, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep465, align 8, !tbaa !619, !alias.scope !717, !noalias !712
  store <2 x ptr> splat (ptr null), ptr %i.ev, align 8, !tbaa !619, !alias.scope !717, !noalias !712
  %index.next468 = add nuw i64 %index463, 4       ; 2 uses
  %i.ew = icmp eq i64 %index.next468, %n.vec461
  br i1 %i.ew, label %middle.block469, label %vector.body462, !llvm.loop !722

middle.block469:                                  ; preds = %vector.body462
  %cmp.n470 = icmp eq i64 %i.ek, %n.vec461
  br i1 %cmp.n470, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i287, label %.lr.ph.i.i.i.i276.preheader473

.lr.ph.i.i.i.i276.preheader473:                   ; preds = %vector.memcheck452, %.lr.ph.i.i.i.i276.preheader, %middle.block469
  %.012.i.i.i.i277.ph = phi ptr [ %i.eg, %vector.memcheck452 ], [ %i.eg, %.lr.ph.i.i.i.i276.preheader ], [ %i.eq, %middle.block469 ]
  %.0911.i.i.i.i278.ph = phi ptr [ %i.dv, %vector.memcheck452 ], [ %i.dv, %.lr.ph.i.i.i.i276.preheader ], [ %i.er, %middle.block469 ]
  br label %.lr.ph.i.i.i.i276

.lr.ph.i.i.i.i276:                                ; preds = %.lr.ph.i.i.i.i276.preheader473, %.lr.ph.i.i.i.i276
  %.012.i.i.i.i277 = phi ptr [ %i.ez, %.lr.ph.i.i.i.i276 ], [ %.012.i.i.i.i277.ph, %.lr.ph.i.i.i.i276.preheader473 ] ; 2 uses
  %.0911.i.i.i.i278 = phi ptr [ %i.ey, %.lr.ph.i.i.i.i276 ], [ %.0911.i.i.i.i278.ph, %.lr.ph.i.i.i.i276.preheader473 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !712)
  call void @llvm.experimental.noalias.scope.decl(metadata !715)
  %i.ex = load i64, ptr %.0911.i.i.i.i278, align 8, !tbaa !619, !alias.scope !715, !noalias !712
  store i64 %i.ex, ptr %.012.i.i.i.i277, align 8, !tbaa !619, !alias.scope !712, !noalias !715
  store ptr null, ptr %.0911.i.i.i.i278, align 8, !tbaa !619, !alias.scope !715, !noalias !712
  %i.ey = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i278, i64 8 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i277, i64 8 ; 2 uses
  %.not.i.i.i.i279 = icmp eq ptr %i.ey, %i.dq
  br i1 %.not.i.i.i.i279, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i287, label %.lr.ph.i.i.i.i276, !llvm.loop !723

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i287: ; preds = %.lr.ph.i.i.i.i276, %middle.block469, %.noexc291
  %.0.lcssa.i.i.i.i281 = phi ptr [ %i.eg, %.noexc291 ], [ %i.eq, %middle.block469 ], [ %i.ez, %.lr.ph.i.i.i.i276 ]
  %i.fa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i281, i64 8
  %.not.i23.i289 = icmp eq ptr %i.dv, null
  br i1 %.not.i23.i289, label %.noexc145, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i287
  %i.fb = load ptr, ptr %i.dr, align 8, !tbaa !624
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = sub i64 %i.fc, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.fd) #23
  br label %.noexc145

.noexc145:                                        ; preds = %bb.o, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i287
  store ptr %i.eg, ptr %i.do, align 8, !tbaa !625
  store ptr %i.fa, ptr %i.dp, align 8, !tbaa !621
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ee
  store ptr %i.fe, ptr %i.dr, align 8, !tbaa !624
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit146

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit146: ; preds = %.noexc145, %bb.l
  %i.ff = load ptr, ptr %14, align 8, !tbaa !28   ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.fh = icmp eq ptr %i.ff, %i.fg
  br i1 %i.fh, label %_ZN5vcpkg7VersionD2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit146
  %i.fi = load i64, ptr %i.fg, align 8, !tbaa !25
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fj) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit149

_ZN5vcpkg7VersionD2Ev.exit149:                    ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit146, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.fk = load ptr, ptr %13, align 8, !tbaa !28   ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.dj
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %_ZN5vcpkg7VersionD2Ev.exit149
  %i.fm = load i64, ptr %i.dj, align 8, !tbaa !25
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fn) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %_ZN5vcpkg7VersionD2Ev.exit149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5vcpkg4Test20MockCMakeVarProviderE, i64 16), ptr %15, align 8, !tbaa !9
  %i.fo = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %15, i64 56
  store ptr %i.fp, ptr %i.fo, align 8, !tbaa !34
  %i.fq = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 1, ptr %i.fq, align 8, !tbaa !42
  %i.fr = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.fs = getelementptr inbounds nuw i8, ptr %15, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fr, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.fs, align 8, !tbaa !43
  %i.ft = getelementptr inbounds nuw i8, ptr %15, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ft, i8 0, i64 16, i1 false)
  %i.fu = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.fv = getelementptr inbounds nuw i8, ptr %15, i64 112
  store ptr %i.fv, ptr %i.fu, align 8, !tbaa !34
  %i.fw = getelementptr inbounds nuw i8, ptr %15, i64 72
  store i64 1, ptr %i.fw, align 8, !tbaa !42
  %i.fx = getelementptr inbounds nuw i8, ptr %15, i64 80
  %i.fy = getelementptr inbounds nuw i8, ptr %15, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.fy, align 8, !tbaa !43
  %i.fz = getelementptr inbounds nuw i8, ptr %15, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fz, i8 0, i64 16, i1 false)
  %i.ga = getelementptr inbounds nuw i8, ptr %15, i64 120
  %i.gb = getelementptr inbounds nuw i8, ptr %15, i64 168
  store ptr %i.gb, ptr %i.ga, align 8, !tbaa !44
  %i.gc = getelementptr inbounds nuw i8, ptr %15, i64 128
  store i64 1, ptr %i.gc, align 8, !tbaa !46
  %i.gd = getelementptr inbounds nuw i8, ptr %15, i64 136
  %i.ge = getelementptr inbounds nuw i8, ptr %15, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gd, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ge, align 8, !tbaa !43
  %i.gf = getelementptr inbounds nuw i8, ptr %15, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gf, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV20MockBaselineProvider, i64 16), ptr %16, align 8, !tbaa !9
  %i.gg = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store i32 0, ptr %i.gg, align 8, !tbaa !18
  %i.gh = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  store ptr null, ptr %i.gh, align 8, !tbaa !11
  %i.gi = getelementptr inbounds nuw i8, ptr %16, i64 32
  store ptr %i.gg, ptr %i.gi, align 8, !tbaa !19
  %i.gj = getelementptr inbounds nuw i8, ptr %16, i64 40
  store ptr %i.gg, ptr %i.gj, align 8, !tbaa !20
  %i.gk = getelementptr inbounds nuw i8, ptr %16, i64 48
  store i64 0, ptr %i.gk, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %17, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit154 unwind label %bb.ay

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit154:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152
  %i.gl = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.gm = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.gm, ptr %18, align 8, !tbaa !22
  store i8 97, ptr %i.gm, align 8, !tbaa !25
  %i.gn = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 1, ptr %i.gn, align 8, !tbaa !26
  %i.go = getelementptr inbounds nuw i8, ptr %18, i64 17
  store i8 0, ptr %i.go, align 1, !tbaa !25
  %i.gp = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg7VersionESt4lessIvESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.gl, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.p unwind label %bb.az      ; 10 uses

bb.p:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit154
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !28 ; 6 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 4 uses
  %i.gs = icmp eq ptr %i.gq, %i.gr
  %i.gt = load ptr, ptr %17, align 8, !tbaa !28   ; 6 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  %i.gv = icmp eq ptr %i.gt, %i.gu                ; 2 uses
  br i1 %i.gs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %bb.p
  br i1 %i.gv, label %bb.q, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i159: ; preds = %bb.p
  br i1 %i.gv, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i159, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161
  %i.gw = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !26 ; 3 uses
  %i.gy = icmp ult i64 %i.gx, 16
  call void @llvm.assume(i1 %i.gy)
  %.not21.i.i = icmp eq ptr %17, %i.gp
  br i1 %.not21.i.i, label %_ZN5vcpkg7VersionaSEOS0_.exit, label %bb.r, !prof !29

bb.r:                                             ; preds = %bb.q
end_hunk_1
begin_hunk_2_@_ZL20C_A_T_C_H_T_E_S_T_83v:._crit_edge.i.i
  %i.e = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV29MockVersionedPortfileProvider, i64 16), ptr %9, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.f, ptr %i.h, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 40
  store ptr %i.f, ptr %i.i, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i64 0, ptr %i.j, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.k, ptr %11, align 8, !tbaa !22
  store i8 120, ptr %i.k, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 1, ptr %i.l, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 17
  store i8 0, ptr %i.m, align 1, !tbaa !25
  invoke fastcc void @_ZL9make_fpghNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %10, ptr noundef align 8 %11)
          to label %bb.a unwind label %bb.bf

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.n = load ptr, ptr %11, align 8, !tbaa !28    ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.k
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.p = load i64, ptr %i.k, align 8, !tbaa !25
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.r = load ptr, ptr %10, align 8               ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.t, ptr %12, align 8, !tbaa !22
  store i8 98, ptr %i.t, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 1, ptr %i.u, align 8, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 17
  store i8 0, ptr %i.v, align 1, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.x, ptr %13, align 8, !tbaa !22
  store i8 121, ptr %i.x, align 8, !tbaa !25
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 1, ptr %i.y, align 8, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 17
  store i8 0, ptr %i.z, align 1, !tbaa !25
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.ab = ptrtoint ptr %i.r to i64                ; 2 uses
  %i.ac = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24
          to label %_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i unwind label %bb.b ; 3 uses

_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 40
  store ptr %i.ac, ptr %i.w, align 8, !tbaa !670
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 48
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !671
  %i.ag = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN5vcpkg26DependencyRequestedFeatureEPS1_ET0_T_S6_S5_(ptr noundef nonnull %13, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ac)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !670 ; 3 uses
  %.not.i.i5.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i5.i, label %bb.bh, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !671
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #23
  br label %bb.bh

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 40
  store ptr %i.ag, ptr %i.ao, align 8, !tbaa !672
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 2 uses
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ap) #22
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i32 1, ptr %i.aq, align 8, !tbaa !47
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 72
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %i.ar, ptr nonnull @.str.178, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit unwind label %bb.bg

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit:          ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 112
  store i8 0, ptr %i.as, align 8, !tbaa !50
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 113
  store i8 1, ptr %i.at, align 1, !tbaa !72
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %i.av = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(144) %12)
          to label %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit unwind label %.body ; 0 uses

_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit
  call void @_ZN5vcpkg10DependencyD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %12) #22
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aw) #22
  %i.ax = load ptr, ptr %13, align 8, !tbaa !28   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !25
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #23
  br label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit

_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit:   ; preds = %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.bc, ptr %14, align 8, !tbaa !22
  store i8 97, ptr %i.bc, align 8, !tbaa !25
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 1, ptr %i.bd, align 8, !tbaa !26
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 17
  store i8 0, ptr %i.be, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %15, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit169 unwind label %bb.bi

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit169:       ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr @.str.123, ptr %8, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !33
  %i.bf = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(36) %15, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %8)
          to label %bb.e unwind label %bb.bj

bb.e:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit169
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !136 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !621 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !624
  %.not.i.i = icmp eq ptr %i.bj, %i.bl
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %i.ab, ptr %i.bj, align 8, !tbaa !619
  store ptr null, ptr %10, align 8, !tbaa !619
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !621
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

bb.g:                                             ; preds = %bb.e
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !625 ; 10 uses
  %i.bo = ptrtoint ptr %i.bj to i64               ; 3 uses
  %i.bp = ptrtoint ptr %i.bn to i64               ; 4 uses
  %i.bq = sub i64 %i.bo, %i.bp                    ; 3 uses
  %i.br = icmp eq i64 %i.bq, 9223372036854775800
  br i1 %i.br, label %bb.h, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc424 unwind label %bb.bj

.noexc424:                                        ; preds = %bb.h
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.g
  %i.bs = ashr exact i64 %i.bq, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bs, i64 1)
  %i.bt = add nsw i64 %.sroa.speculated.i.i, %i.bs ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %i.bs
  %i.bv = call i64 @llvm.umin.i64(i64 %i.bt, i64 1152921504606846975)
  %i.bw = select i1 %i.bu, i64 1152921504606846975, i64 %i.bv ; 3 uses
  %.not.i.i423 = icmp ne i64 %i.bw, 0
  call void @llvm.assume(i1 %.not.i.i423)
  %i.bx = shl nuw nsw i64 %i.bw, 3
  %i.by = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bx) #24
          to label %.noexc425 unwind label %bb.bj ; 10 uses

.noexc425:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bq
  store i64 %i.ab, ptr %i.bz, align 8, !tbaa !619
  store ptr null, ptr %10, align 8, !tbaa !619
  %.not10.i.i.i.i = icmp eq ptr %i.bn, %i.bj
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc425
  %69 = sub i64 %i.bo, %i.bp
  %70 = add i64 %69, -8                           ; 2 uses
  %i.ca = lshr i64 %70, 3
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %70, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader736, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.cc = add i64 %i.bo, -8
  %i.cd = sub i64 %i.cc, %i.bp
  %i.ce = and i64 %i.cd, -8
  %i.cf = add i64 %i.ce, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.by, i64 %i.cf
  %scevgep687 = getelementptr i8, ptr %i.bn, i64 %i.cf
  %bound0 = icmp ult ptr %i.by, %scevgep687
  %bound1 = icmp ult ptr %i.bn, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader736, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cb, 4611686018427387900     ; 3 uses
  %i.cg = shl i64 %n.vec, 3                       ; 2 uses
  %i.ch = getelementptr i8, ptr %i.by, i64 %i.cg  ; 2 uses
  %i.ci = getelementptr i8, ptr %i.bn, i64 %i.cg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.by, i64 %i.cj ; 2 uses
  %next.gep688 = getelementptr i8, ptr %i.bn, i64 %i.cj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !730)
  call void @llvm.experimental.noalias.scope.decl(metadata !733)
  %i.ck = getelementptr i8, ptr %next.gep688, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep688, align 8, !tbaa !619, !alias.scope !735, !noalias !730
  %wide.load689 = load <2 x i64>, ptr %i.ck, align 8, !tbaa !619, !alias.scope !735, !noalias !730
  %i.cl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !619, !alias.scope !738, !noalias !735
  store <2 x i64> %wide.load689, ptr %i.cl, align 8, !tbaa !619, !alias.scope !738, !noalias !735
  %i.cm = getelementptr i8, ptr %next.gep688, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep688, align 8, !tbaa !619, !alias.scope !735, !noalias !730
  store <2 x ptr> splat (ptr null), ptr %i.cm, align 8, !tbaa !619, !alias.scope !735, !noalias !730
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !740

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader736

.lr.ph.i.i.i.i.preheader736:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.by, %vector.memcheck ], [ %i.by, %.lr.ph.i.i.i.i.preheader ], [ %i.ch, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bn, %vector.memcheck ], [ %i.bn, %.lr.ph.i.i.i.i.preheader ], [ %i.ci, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader736, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader736 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader736 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !730)
  call void @llvm.experimental.noalias.scope.decl(metadata !733)
  %i.co = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !733, !noalias !730
  store i64 %i.co, ptr %.012.i.i.i.i, align 8, !tbaa !619, !alias.scope !730, !noalias !733
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !733, !noalias !730
  %i.cp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cp, %i.bj
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !741

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc425
  %.0.lcssa.i.i.i.i = phi ptr [ %i.by, %.noexc425 ], [ %i.ch, %middle.block ], [ %i.cq, %.lr.ph.i.i.i.i ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.bn, null
  br i1 %.not.i23.i, label %.noexc171, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.cs = load ptr, ptr %i.bk, align 8, !tbaa !624
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = sub i64 %i.ct, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.cu) #23
  br label %.noexc171

.noexc171:                                        ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.by, ptr %i.bh, align 8, !tbaa !625
  store ptr %i.cr, ptr %i.bi, align 8, !tbaa !621
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bw
  store ptr %i.cv, ptr %i.bk, align 8, !tbaa !624
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %.noexc171, %bb.f
  %i.cw = load ptr, ptr %15, align 8, !tbaa !28   ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cw, %i.cx
  br i1 %i.cy, label %_ZN5vcpkg7VersionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i172: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %i.cz = load i64, ptr %i.cx, align 8, !tbaa !25
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.da) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit

_ZN5vcpkg7VersionD2Ev.exit:                       ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.db = load ptr, ptr %14, align 8, !tbaa !28   ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.bc
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %_ZN5vcpkg7VersionD2Ev.exit
  %i.dd = load i64, ptr %i.bc, align 8, !tbaa !25
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.de) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %_ZN5vcpkg7VersionD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.df = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.df, ptr %17, align 8, !tbaa !22
  store i8 121, ptr %i.df, align 8, !tbaa !25
  %i.dg = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 1, ptr %i.dg, align 8, !tbaa !26
  %i.dh = getelementptr inbounds nuw i8, ptr %17, i64 17
  store i8 0, ptr %i.dh, align 1, !tbaa !25
  invoke fastcc void @_ZL9make_fpghNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %16, ptr noundef align 8 %17)
          to label %bb.j unwind label %bb.bk

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  %i.di = load ptr, ptr %17, align 8, !tbaa !28   ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.df
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181: ; preds = %bb.j
  %i.dk = load i64, ptr %i.df, align 8, !tbaa !25
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.dm = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.dm, ptr %18, align 8, !tbaa !22
  store i8 98, ptr %i.dm, align 8, !tbaa !25
  %i.dn = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 1, ptr %i.dn, align 8, !tbaa !26
  %i.do = getelementptr inbounds nuw i8, ptr %18, i64 17
  store i8 0, ptr %i.do, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %19, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit189 unwind label %bb.bl

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit189:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr @.str.123, ptr %7, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i190 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i190, align 8, !tbaa !33
  %i.dp = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(36) %19, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %7)
          to label %bb.k unwind label %bb.bm

bb.k:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit189
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !136 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 3 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !621 ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 24 ; 3 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !624
  %.not.i.i193 = icmp eq ptr %i.dt, %i.dv
  br i1 %.not.i.i193, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dw = load i64, ptr %16, align 8, !tbaa !619
  store i64 %i.dw, ptr %i.dt, align 8, !tbaa !619
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %i.dx, ptr %i.ds, align 8, !tbaa !621
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit195

bb.m:                                             ; preds = %bb.k
  %i.dy = load ptr, ptr %i.dr, align 8, !tbaa !625 ; 10 uses
  %i.dz = ptrtoint ptr %i.dt to i64               ; 3 uses
  %i.ea = ptrtoint ptr %i.dy to i64               ; 4 uses
  %i.eb = sub i64 %i.dz, %i.ea                    ; 3 uses
  %i.ec = icmp eq i64 %i.eb, 9223372036854775800
  br i1 %i.ec, label %bb.n, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i426

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc444 unwind label %bb.bm

.noexc444:                                        ; preds = %bb.n
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i426: ; preds = %bb.m
  %i.ed = ashr exact i64 %i.eb, 3                 ; 3 uses
  %.sroa.speculated.i.i427 = call i64 @llvm.umax.i64(i64 %i.ed, i64 1)
  %i.ee = add nsw i64 %.sroa.speculated.i.i427, %i.ed ; 2 uses
  %i.ef = icmp ult i64 %i.ee, %i.ed
  %i.eg = call i64 @llvm.umin.i64(i64 %i.ee, i64 1152921504606846975)
  %i.eh = select i1 %i.ef, i64 1152921504606846975, i64 %i.eg ; 3 uses
  %.not.i.i428 = icmp ne i64 %i.eh, 0
  call void @llvm.assume(i1 %.not.i.i428)
  %i.ei = shl nuw nsw i64 %i.eh, 3
  %i.ej = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ei) #24
          to label %.noexc445 unwind label %bb.bm ; 10 uses

.noexc445:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i426
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eb
  %i.el = load i64, ptr %16, align 8, !tbaa !619
  store i64 %i.el, ptr %i.ek, align 8, !tbaa !619
  store ptr null, ptr %16, align 8, !tbaa !619
  %.not10.i.i.i.i429 = icmp eq ptr %i.dy, %i.dt
  br i1 %.not10.i.i.i.i429, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i441, label %.lr.ph.i.i.i.i430.preheader

.lr.ph.i.i.i.i430.preheader:                      ; preds = %.noexc445
  %71 = sub i64 %i.dz, %i.ea
  %72 = add i64 %71, -8                           ; 2 uses
  %i.em = lshr i64 %72, 3
  %i.en = add nuw nsw i64 %i.em, 1                ; 2 uses
  %min.iters.check698 = icmp ult i64 %72, 136
  br i1 %min.iters.check698, label %.lr.ph.i.i.i.i430.preheader734, label %vector.memcheck691

vector.memcheck691:                               ; preds = %.lr.ph.i.i.i.i430.preheader
  %i.eo = add i64 %i.dz, -8
  %i.ep = sub i64 %i.eo, %i.ea
  %i.eq = and i64 %i.ep, -8
  %i.er = add i64 %i.eq, 8                        ; 2 uses
  %scevgep692 = getelementptr i8, ptr %i.ej, i64 %i.er
  %scevgep693 = getelementptr i8, ptr %i.dy, i64 %i.er
  %bound0694 = icmp ult ptr %i.ej, %scevgep693
  %bound1695 = icmp ult ptr %i.dy, %scevgep692
  %found.conflict696 = and i1 %bound0694, %bound1695
  br i1 %found.conflict696, label %.lr.ph.i.i.i.i430.preheader734, label %vector.ph699

vector.ph699:                                     ; preds = %vector.memcheck691
  %n.vec700 = and i64 %i.en, 4611686018427387900  ; 3 uses
  %i.es = shl i64 %n.vec700, 3                    ; 2 uses
  %i.et = getelementptr i8, ptr %i.ej, i64 %i.es  ; 2 uses
  %i.eu = getelementptr i8, ptr %i.dy, i64 %i.es
  br label %vector.body701

vector.body701:                                   ; preds = %vector.body701, %vector.ph699
  %index702 = phi i64 [ 0, %vector.ph699 ], [ %index.next707, %vector.body701 ] ; 2 uses
  %i.ev = shl i64 %index702, 3                    ; 2 uses
  %next.gep703 = getelementptr i8, ptr %i.ej, i64 %i.ev ; 2 uses
  %next.gep704 = getelementptr i8, ptr %i.dy, i64 %i.ev ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !742)
  call void @llvm.experimental.noalias.scope.decl(metadata !745)
  %i.ew = getelementptr i8, ptr %next.gep704, i64 16
  %wide.load705 = load <2 x i64>, ptr %next.gep704, align 8, !tbaa !619, !alias.scope !747, !noalias !742
  %wide.load706 = load <2 x i64>, ptr %i.ew, align 8, !tbaa !619, !alias.scope !747, !noalias !742
  %i.ex = getelementptr i8, ptr %next.gep703, i64 16
  store <2 x i64> %wide.load705, ptr %next.gep703, align 8, !tbaa !619, !alias.scope !750, !noalias !747
  store <2 x i64> %wide.load706, ptr %i.ex, align 8, !tbaa !619, !alias.scope !750, !noalias !747
  %i.ey = getelementptr i8, ptr %next.gep704, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep704, align 8, !tbaa !619, !alias.scope !747, !noalias !742
  store <2 x ptr> splat (ptr null), ptr %i.ey, align 8, !tbaa !619, !alias.scope !747, !noalias !742
  %index.next707 = add nuw i64 %index702, 4       ; 2 uses
  %i.ez = icmp eq i64 %index.next707, %n.vec700
  br i1 %i.ez, label %middle.block708, label %vector.body701, !llvm.loop !752

middle.block708:                                  ; preds = %vector.body701
  %cmp.n709 = icmp eq i64 %i.en, %n.vec700
  br i1 %cmp.n709, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i441, label %.lr.ph.i.i.i.i430.preheader734

.lr.ph.i.i.i.i430.preheader734:                   ; preds = %vector.memcheck691, %.lr.ph.i.i.i.i430.preheader, %middle.block708
  %.012.i.i.i.i431.ph = phi ptr [ %i.ej, %vector.memcheck691 ], [ %i.ej, %.lr.ph.i.i.i.i430.preheader ], [ %i.et, %middle.block708 ]
  %.0911.i.i.i.i432.ph = phi ptr [ %i.dy, %vector.memcheck691 ], [ %i.dy, %.lr.ph.i.i.i.i430.preheader ], [ %i.eu, %middle.block708 ]
  br label %.lr.ph.i.i.i.i430

.lr.ph.i.i.i.i430:                                ; preds = %.lr.ph.i.i.i.i430.preheader734, %.lr.ph.i.i.i.i430
  %.012.i.i.i.i431 = phi ptr [ %i.fc, %.lr.ph.i.i.i.i430 ], [ %.012.i.i.i.i431.ph, %.lr.ph.i.i.i.i430.preheader734 ] ; 2 uses
  %.0911.i.i.i.i432 = phi ptr [ %i.fb, %.lr.ph.i.i.i.i430 ], [ %.0911.i.i.i.i432.ph, %.lr.ph.i.i.i.i430.preheader734 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !742)
  call void @llvm.experimental.noalias.scope.decl(metadata !745)
  %i.fa = load i64, ptr %.0911.i.i.i.i432, align 8, !tbaa !619, !alias.scope !745, !noalias !742
  store i64 %i.fa, ptr %.012.i.i.i.i431, align 8, !tbaa !619, !alias.scope !742, !noalias !745
  store ptr null, ptr %.0911.i.i.i.i432, align 8, !tbaa !619, !alias.scope !745, !noalias !742
  %i.fb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i432, i64 8 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i431, i64 8 ; 2 uses
  %.not.i.i.i.i433 = icmp eq ptr %i.fb, %i.dt
  br i1 %.not.i.i.i.i433, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i441, label %.lr.ph.i.i.i.i430, !llvm.loop !753

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i441: ; preds = %.lr.ph.i.i.i.i430, %middle.block708, %.noexc445
  %.0.lcssa.i.i.i.i435 = phi ptr [ %i.ej, %.noexc445 ], [ %i.et, %middle.block708 ], [ %i.fc, %.lr.ph.i.i.i.i430 ]
  %i.fd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i435, i64 8
  %.not.i23.i443 = icmp eq ptr %i.dy, null
  br i1 %.not.i23.i443, label %.noexc194, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i441
  %i.fe = load ptr, ptr %i.du, align 8, !tbaa !624
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = sub i64 %i.ff, %i.ea
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.fg) #23
  br label %.noexc194

.noexc194:                                        ; preds = %bb.o, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i441
  store ptr %i.ej, ptr %i.dr, align 8, !tbaa !625
  store ptr %i.fd, ptr %i.ds, align 8, !tbaa !621
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.eh
  store ptr %i.fh, ptr %i.du, align 8, !tbaa !624
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit195

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit195: ; preds = %.noexc194, %bb.l
  %i.fi = load ptr, ptr %19, align 8, !tbaa !28   ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.fk = icmp eq ptr %i.fi, %i.fj
  br i1 %i.fk, label %_ZN5vcpkg7VersionD2Ev.exit198, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i196: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit195
  %i.fl = load i64, ptr %i.fj, align 8, !tbaa !25
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fm) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit198

_ZN5vcpkg7VersionD2Ev.exit198:                    ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit195, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i196
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.fn = load ptr, ptr %18, align 8, !tbaa !28   ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.dm
  br i1 %i.fo, label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199: ; preds = %_ZN5vcpkg7VersionD2Ev.exit198
  %i.fp = load i64, ptr %i.dm, align 8, !tbaa !25
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fq) #23
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN5vcpkg7VersionD2Ev.exit198, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.fr = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  store ptr %i.fr, ptr %21, align 8, !tbaa !22
  store i8 121, ptr %i.fr, align 8, !tbaa !25
  %i.fs = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 1, ptr %i.fs, align 8, !tbaa !26
  %i.ft = getelementptr inbounds nuw i8, ptr %21, i64 17
  store i8 0, ptr %i.ft, align 1, !tbaa !25
  invoke fastcc void @_ZL9make_fpghNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %20, ptr noundef align 8 %21)
          to label %bb.p unwind label %bb.bn

bb.p:                                             ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit
  %i.fu = load ptr, ptr %21, align 8, !tbaa !28   ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.fr
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206: ; preds = %bb.p
  %i.fw = load i64, ptr %i.fr, align 8, !tbaa !25
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fx) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206
  %i.fy = load ptr, ptr %20, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  %i.fz = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  store ptr %i.fz, ptr %22, align 8, !tbaa !22
  store i8 99, ptr %i.fz, align 8, !tbaa !25
  %i.ga = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 1, ptr %i.ga, align 8, !tbaa !26
  %i.gb = getelementptr inbounds nuw i8, ptr %22, i64 17
  store i8 0, ptr %i.gb, align 1, !tbaa !25
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 56
  %i.gd = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.ge = getelementptr inbounds nuw i8, ptr %22, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gd, i8 0, i64 24, i1 false)
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ge) #22
  %i.gf = getelementptr inbounds nuw i8, ptr %22, i64 64
  store i32 0, ptr %i.gf, align 8, !tbaa !47
  %i.gg = getelementptr inbounds nuw i8, ptr %22, i64 72
  call void @_ZN5vcpkg7VersionC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.gg) #22
  %i.gh = getelementptr inbounds nuw i8, ptr %22, i64 112
  store i8 0, ptr %i.gh, align 8, !tbaa !50
  %i.gi = getelementptr inbounds nuw i8, ptr %22, i64 113
  store i8 1, ptr %i.gi, align 1, !tbaa !72
  %i.gj = getelementptr inbounds nuw i8, ptr %22, i64 120
  %i.gk = ptrtoint ptr %i.fy to i64               ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gj, i8 0, i64 24, i1 false)
  %i.gl = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.gc, ptr noundef nonnull align 8 dereferenceable(144) %22)
          to label %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit214 unwind label %bb.bo ; 0 uses

_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit214: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208
  call void @_ZN5vcpkg10DependencyD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %22) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  %i.gm = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  store ptr %i.gm, ptr %23, align 8, !tbaa !22
  store i8 98, ptr %i.gm, align 8, !tbaa !25
  %i.gn = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 1, ptr %i.gn, align 8, !tbaa !26
  %i.go = getelementptr inbounds nuw i8, ptr %23, i64 17
  store i8 0, ptr %i.go, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %24, ptr nonnull @.str.178, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit220 unwind label %bb.bp

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit220:       ; preds = %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit214
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr @.str.123, ptr %6, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i221 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i221, align 8, !tbaa !33
  %i.gp = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(36) %24, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %6)
          to label %bb.q unwind label %bb.bq

bb.q:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit220
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !136 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 16 ; 3 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !621 ; 6 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 24 ; 3 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !624
  %.not.i.i224 = icmp eq ptr %i.gt, %i.gv
  br i1 %.not.i.i224, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i64 %i.gk, ptr %i.gt, align 8, !tbaa !619
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  store ptr %i.gw, ptr %i.gs, align 8, !tbaa !621
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit226

bb.s:                                             ; preds = %bb.q
  %i.gx = load ptr, ptr %i.gr, align 8, !tbaa !625 ; 10 uses
  %i.gy = ptrtoint ptr %i.gt to i64               ; 3 uses
  %i.gz = ptrtoint ptr %i.gx to i64               ; 4 uses
  %i.ha = sub i64 %i.gy, %i.gz                    ; 3 uses
  %i.hb = icmp eq i64 %i.ha, 9223372036854775800
  br i1 %i.hb, label %bb.t, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i447

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc465 unwind label %bb.bq

.noexc465:                                        ; preds = %bb.t
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i447: ; preds = %bb.s
  %i.hc = ashr exact i64 %i.ha, 3                 ; 3 uses
  %.sroa.speculated.i.i448 = call i64 @llvm.umax.i64(i64 %i.hc, i64 1)
  %i.hd = add nsw i64 %.sroa.speculated.i.i448, %i.hc ; 2 uses
  %i.he = icmp ult i64 %i.hd, %i.hc
  %i.hf = call i64 @llvm.umin.i64(i64 %i.hd, i64 1152921504606846975)
  %i.hg = select i1 %i.he, i64 1152921504606846975, i64 %i.hf ; 3 uses
  %.not.i.i449 = icmp ne i64 %i.hg, 0
  call void @llvm.assume(i1 %.not.i.i449)
  %i.hh = shl nuw nsw i64 %i.hg, 3
  %i.hi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hh) #24
          to label %.noexc466 unwind label %bb.bq ; 10 uses

.noexc466:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i447
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.ha
  store i64 %i.gk, ptr %i.hj, align 8, !tbaa !619
  store ptr null, ptr %20, align 8, !tbaa !619
  %.not10.i.i.i.i450 = icmp eq ptr %i.gx, %i.gt
  br i1 %.not10.i.i.i.i450, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i462, label %.lr.ph.i.i.i.i451.preheader

.lr.ph.i.i.i.i451.preheader:                      ; preds = %.noexc466
  %73 = sub i64 %i.gy, %i.gz
  %74 = add i64 %73, -8                           ; 2 uses
  %i.hk = lshr i64 %74, 3
  %i.hl = add nuw nsw i64 %i.hk, 1                ; 2 uses
  %min.iters.check719 = icmp ult i64 %74, 136
  br i1 %min.iters.check719, label %.lr.ph.i.i.i.i451.preheader733, label %vector.memcheck712

vector.memcheck712:                               ; preds = %.lr.ph.i.i.i.i451.preheader
  %i.hm = add i64 %i.gy, -8
  %i.hn = sub i64 %i.hm, %i.gz
  %i.ho = and i64 %i.hn, -8
  %i.hp = add i64 %i.ho, 8                        ; 2 uses
  %scevgep713 = getelementptr i8, ptr %i.hi, i64 %i.hp
  %scevgep714 = getelementptr i8, ptr %i.gx, i64 %i.hp
  %bound0715 = icmp ult ptr %i.hi, %scevgep714
  %bound1716 = icmp ult ptr %i.gx, %scevgep713
  %found.conflict717 = and i1 %bound0715, %bound1716
  br i1 %found.conflict717, label %.lr.ph.i.i.i.i451.preheader733, label %vector.ph720

vector.ph720:                                     ; preds = %vector.memcheck712
  %n.vec721 = and i64 %i.hl, 4611686018427387900  ; 3 uses
  %i.hq = shl i64 %n.vec721, 3                    ; 2 uses
  %i.hr = getelementptr i8, ptr %i.hi, i64 %i.hq  ; 2 uses
  %i.hs = getelementptr i8, ptr %i.gx, i64 %i.hq
  br label %vector.body722

vector.body722:                                   ; preds = %vector.body722, %vector.ph720
  %index723 = phi i64 [ 0, %vector.ph720 ], [ %index.next728, %vector.body722 ] ; 2 uses
  %i.ht = shl i64 %index723, 3                    ; 2 uses
  %next.gep724 = getelementptr i8, ptr %i.hi, i64 %i.ht ; 2 uses
  %next.gep725 = getelementptr i8, ptr %i.gx, i64 %i.ht ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !754)
  call void @llvm.experimental.noalias.scope.decl(metadata !757)
  %i.hu = getelementptr i8, ptr %next.gep725, i64 16
  %wide.load726 = load <2 x i64>, ptr %next.gep725, align 8, !tbaa !619, !alias.scope !759, !noalias !754
  %wide.load727 = load <2 x i64>, ptr %i.hu, align 8, !tbaa !619, !alias.scope !759, !noalias !754
  %i.hv = getelementptr i8, ptr %next.gep724, i64 16
  store <2 x i64> %wide.load726, ptr %next.gep724, align 8, !tbaa !619, !alias.scope !762, !noalias !759
  store <2 x i64> %wide.load727, ptr %i.hv, align 8, !tbaa !619, !alias.scope !762, !noalias !759
  %i.hw = getelementptr i8, ptr %next.gep725, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep725, align 8, !tbaa !619, !alias.scope !759, !noalias !754
  store <2 x ptr> splat (ptr null), ptr %i.hw, align 8, !tbaa !619, !alias.scope !759, !noalias !754
  %index.next728 = add nuw i64 %index723, 4       ; 2 uses
  %i.hx = icmp eq i64 %index.next728, %n.vec721
  br i1 %i.hx, label %middle.block729, label %vector.body722, !llvm.loop !764

middle.block729:                                  ; preds = %vector.body722
  %cmp.n730 = icmp eq i64 %i.hl, %n.vec721
  br i1 %cmp.n730, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i462, label %.lr.ph.i.i.i.i451.preheader733

.lr.ph.i.i.i.i451.preheader733:                   ; preds = %vector.memcheck712, %.lr.ph.i.i.i.i451.preheader, %middle.block729
  %.012.i.i.i.i452.ph = phi ptr [ %i.hi, %vector.memcheck712 ], [ %i.hi, %.lr.ph.i.i.i.i451.preheader ], [ %i.hr, %middle.block729 ]
  %.0911.i.i.i.i453.ph = phi ptr [ %i.gx, %vector.memcheck712 ], [ %i.gx, %.lr.ph.i.i.i.i451.preheader ], [ %i.hs, %middle.block729 ]
  br label %.lr.ph.i.i.i.i451

.lr.ph.i.i.i.i451:                                ; preds = %.lr.ph.i.i.i.i451.preheader733, %.lr.ph.i.i.i.i451
  %.012.i.i.i.i452 = phi ptr [ %i.ia, %.lr.ph.i.i.i.i451 ], [ %.012.i.i.i.i452.ph, %.lr.ph.i.i.i.i451.preheader733 ] ; 2 uses
  %.0911.i.i.i.i453 = phi ptr [ %i.hz, %.lr.ph.i.i.i.i451 ], [ %.0911.i.i.i.i453.ph, %.lr.ph.i.i.i.i451.preheader733 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !754)
  call void @llvm.experimental.noalias.scope.decl(metadata !757)
  %i.hy = load i64, ptr %.0911.i.i.i.i453, align 8, !tbaa !619, !alias.scope !757, !noalias !754
  store i64 %i.hy, ptr %.012.i.i.i.i452, align 8, !tbaa !619, !alias.scope !754, !noalias !757
  store ptr null, ptr %.0911.i.i.i.i453, align 8, !tbaa !619, !alias.scope !757, !noalias !754
  %i.hz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i453, i64 8 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i452, i64 8 ; 2 uses
  %.not.i.i.i.i454 = icmp eq ptr %i.hz, %i.gt
  br i1 %.not.i.i.i.i454, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i462, label %.lr.ph.i.i.i.i451, !llvm.loop !765

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i462: ; preds = %.lr.ph.i.i.i.i451, %middle.block729, %.noexc466
  %.0.lcssa.i.i.i.i456 = phi ptr [ %i.hi, %.noexc466 ], [ %i.hr, %middle.block729 ], [ %i.ia, %.lr.ph.i.i.i.i451 ]
  %i.ib = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i456, i64 8
  %.not.i23.i464 = icmp eq ptr %i.gx, null
  br i1 %.not.i23.i464, label %.noexc225, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i462
  %i.ic = load ptr, ptr %i.gu, align 8, !tbaa !624
  %i.id = ptrtoint ptr %i.ic to i64
  %i.ie = sub i64 %i.id, %i.gz
  call void @_ZdlPvm(ptr noundef nonnull %i.gx, i64 noundef %i.ie) #23
  br label %.noexc225

.noexc225:                                        ; preds = %bb.u, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i462
  store ptr %i.hi, ptr %i.gr, align 8, !tbaa !625
  store ptr %i.ib, ptr %i.gs, align 8, !tbaa !621
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %i.hg
  store ptr %i.if, ptr %i.gu, align 8, !tbaa !624
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit226

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit226: ; preds = %.noexc225, %bb.r
  %i.ig = load ptr, ptr %24, align 8, !tbaa !28   ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.ii = icmp eq ptr %i.ig, %i.ih
  br i1 %i.ii, label %_ZN5vcpkg7VersionD2Ev.exit229, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i227: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit226
  %i.ij = load i64, ptr %i.ih, align 8, !tbaa !25
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ik) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit229

_ZN5vcpkg7VersionD2Ev.exit229:                    ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit226, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i227
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  %i.il = load ptr, ptr %23, align 8, !tbaa !28   ; 2 uses
  %i.im = icmp eq ptr %i.il, %i.gm
  br i1 %i.im, label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230: ; preds = %_ZN5vcpkg7VersionD2Ev.exit229
  %i.in = load i64, ptr %i.gm, align 8, !tbaa !25
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.il, i64 noundef %i.io) #23
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit235

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit235: ; preds = %_ZN5vcpkg7VersionD2Ev.exit229, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  %i.ip = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  store ptr %i.ip, ptr %25, align 8, !tbaa !22
  store i8 99, ptr %i.ip, align 8, !tbaa !25
  %i.iq = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 1, ptr %i.iq, align 8, !tbaa !26
  %i.ir = getelementptr inbounds nuw i8, ptr %25, i64 17
  store i8 0, ptr %i.ir, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %26, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit241 unwind label %bb.bs

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit241:       ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit235
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr @.str.123, ptr %5, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i242 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i242, align 8, !tbaa !33
  %i.is = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(36) %26, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %5)
          to label %bb.v unwind label %bb.bt      ; 0 uses

bb.v:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit241
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.it = load ptr, ptr %26, align 8, !tbaa !28   ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.iv = icmp eq ptr %i.it, %i.iu
  br i1 %i.iv, label %_ZN5vcpkg7VersionD2Ev.exit247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i245: ; preds = %bb.v
  %i.iw = load i64, ptr %i.iu, align 8, !tbaa !25
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.ix) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit247

_ZN5vcpkg7VersionD2Ev.exit247:                    ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i245
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  %i.iy = load ptr, ptr %25, align 8, !tbaa !28   ; 2 uses
  %i.iz = icmp eq ptr %i.iy, %i.ip
  br i1 %i.iz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248: ; preds = %_ZN5vcpkg7VersionD2Ev.exit247
  %i.ja = load i64, ptr %i.ip, align 8, !tbaa !25
  %i.jb = add i64 %i.ja, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jb) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250: ; preds = %_ZN5vcpkg7VersionD2Ev.exit247, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5vcpkg4Test20MockCMakeVarProviderE, i64 16), ptr %27, align 8, !tbaa !9
  %i.jc = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.jd = getelementptr inbounds nuw i8, ptr %27, i64 56
  store ptr %i.jd, ptr %i.jc, align 8, !tbaa !34
  %i.je = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i64 1, ptr %i.je, align 8, !tbaa !42
  %i.jf = getelementptr inbounds nuw i8, ptr %27, i64 24
  %i.jg = getelementptr inbounds nuw i8, ptr %27, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jf, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.jg, align 8, !tbaa !43
  %i.jh = getelementptr inbounds nuw i8, ptr %27, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jh, i8 0, i64 16, i1 false)
  %i.ji = getelementptr inbounds nuw i8, ptr %27, i64 64
  %i.jj = getelementptr inbounds nuw i8, ptr %27, i64 112
  store ptr %i.jj, ptr %i.ji, align 8, !tbaa !34
  %i.jk = getelementptr inbounds nuw i8, ptr %27, i64 72
  store i64 1, ptr %i.jk, align 8, !tbaa !42
  %i.jl = getelementptr inbounds nuw i8, ptr %27, i64 80
  %i.jm = getelementptr inbounds nuw i8, ptr %27, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jl, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.jm, align 8, !tbaa !43
  %i.jn = getelementptr inbounds nuw i8, ptr %27, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jn, i8 0, i64 16, i1 false)
  %i.jo = getelementptr inbounds nuw i8, ptr %27, i64 120
  %i.jp = getelementptr inbounds nuw i8, ptr %27, i64 168
  store ptr %i.jp, ptr %i.jo, align 8, !tbaa !44
  %i.jq = getelementptr inbounds nuw i8, ptr %27, i64 128
  store i64 1, ptr %i.jq, align 8, !tbaa !46
  %i.jr = getelementptr inbounds nuw i8, ptr %27, i64 136
  %i.js = getelementptr inbounds nuw i8, ptr %27, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jr, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.js, align 8, !tbaa !43
  %i.jt = getelementptr inbounds nuw i8, ptr %27, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jt, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV20MockBaselineProvider, i64 16), ptr %28, align 8, !tbaa !9
  %i.ju = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 3 uses
  store i32 0, ptr %i.ju, align 8, !tbaa !18
  %i.jv = getelementptr inbounds nuw i8, ptr %28, i64 24 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZL20C_A_T_C_H_T_E_S_T_95v:._crit_edge.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 0, ptr %i.g, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !22
  store i8 120, ptr %i.h, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.i, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 0, ptr %i.j, align 1, !tbaa !25
  invoke fastcc void @_ZL9make_fpghNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef align 8 %5)
          to label %bb.a unwind label %bb.ab

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.k = load ptr, ptr %5, align 8, !tbaa !28     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.h
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.m = load i64, ptr %i.h, align 8, !tbaa !25
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.o, ptr %6, align 8, !tbaa !22
  store i8 97, ptr %i.o, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.p, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 0, ptr %i.q, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit unwind label %bb.ac

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr @.str.123, ptr %2, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !33
  %i.r = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %2)
          to label %bb.b unwind label %bb.ad      ; 2 uses

bb.b:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.s = load ptr, ptr %7, align 8, !tbaa !28     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN5vcpkg7VersionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.v = load i64, ptr %i.t, align 8, !tbaa !25
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit

_ZN5vcpkg7VersionD2Ev.exit:                       ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.x = load ptr, ptr %6, align 8, !tbaa !28     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.o
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %_ZN5vcpkg7VersionD2Ev.exit
  %i.z = load i64, ptr %i.o, align 8, !tbaa !25
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %_ZN5vcpkg7VersionD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !136
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !138 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  store ptr %i.ad, ptr %8, align 8, !tbaa !22
  store i8 120, ptr %i.ad, align 8, !tbaa !25
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i64 1, ptr %i.ae, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 0, ptr %i.af, align 1, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #22
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 272 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !672 ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 280
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !671
  %.not.i.i = icmp eq ptr %i.ai, %i.ak
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 3 uses
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !22
  %i.am = load ptr, ptr %8, align 8, !tbaa !28    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.ad
  br i1 %i.an, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ao = load i64, ptr %i.ae, align 8, !tbaa !26 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.aq, i1 false)
  br label %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !28
  %i.ar = load i64, ptr %i.ad, align 8, !tbaa !25
  store i64 %i.ar, ptr %i.al, align 8, !tbaa !25
  %.pre = load i64, ptr %i.ae, align 8, !tbaa !26
  br label %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i

_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.d
  %i.as = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ao, %bb.d ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !26
  store ptr %i.ad, ptr %8, align 8, !tbaa !28
  store i64 0, ptr %i.ae, align 8, !tbaa !26
  store i8 0, ptr %i.ad, align 8, !tbaa !25
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #22
  %i.av = load ptr, ptr %i.ah, align 8, !tbaa !672
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store ptr %i.aw, ptr %i.ah, align 8, !tbaa !672
  br label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 264
  invoke void @_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr %i.ai, ptr noundef nonnull align 8 dereferenceable(40) %8)
          to label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit unwind label %bb.ae

_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i, %bb.e
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ag) #22
  %i.ay = load ptr, ptr %8, align 8, !tbaa !28    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ad
  br i1 %i.az, label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71: ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit
  %i.ba = load i64, ptr %i.ad, align 8, !tbaa !25
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #23
  br label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit

_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit:   ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.bc = load ptr, ptr %i.r, align 8, !tbaa !136 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !621 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !624
  %.not.i.i73 = icmp eq ptr %i.bf, %i.bh
  br i1 %.not.i.i73, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit
  %i.bi = load i64, ptr %4, align 8, !tbaa !619
  store i64 %i.bi, ptr %i.bf, align 8, !tbaa !619
  store ptr null, ptr %4, align 8, !tbaa !619
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bj, ptr %i.be, align 8, !tbaa !621
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

bb.g:                                             ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit
  %i.bk = load ptr, ptr %i.bd, align 8, !tbaa !625 ; 10 uses
  %i.bl = ptrtoint ptr %i.bf to i64               ; 3 uses
  %i.bm = ptrtoint ptr %i.bk to i64               ; 4 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %bb.h, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc125 unwind label %bb.af

.noexc125:                                        ; preds = %bb.h
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.g
  %i.bp = ashr exact i64 %i.bn, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = call i64 @llvm.umin.i64(i64 %i.bq, i64 1152921504606846975)
  %i.bt = select i1 %i.br, i64 1152921504606846975, i64 %i.bs ; 3 uses
  %.not.i.i124 = icmp ne i64 %i.bt, 0
  call void @llvm.assume(i1 %.not.i.i124)
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #24
          to label %.noexc126 unwind label %bb.af ; 10 uses

.noexc126:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  %i.bx = load i64, ptr %4, align 8, !tbaa !619
  store i64 %i.bx, ptr %i.bw, align 8, !tbaa !619
  store ptr null, ptr %4, align 8, !tbaa !619
  %.not10.i.i.i.i = icmp eq ptr %i.bk, %i.bf
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc126
  %28 = sub i64 %i.bl, %i.bm
  %29 = add i64 %28, -8                           ; 2 uses
  %i.by = lshr i64 %29, 3
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %29, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader214, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ca = add i64 %i.bl, -8
  %i.cb = sub i64 %i.ca, %i.bm
  %i.cc = and i64 %i.cb, -8
  %i.cd = add i64 %i.cc, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bv, i64 %i.cd
  %scevgep210 = getelementptr i8, ptr %i.bk, i64 %i.cd
  %bound0 = icmp ult ptr %i.bv, %scevgep210
  %bound1 = icmp ult ptr %i.bk, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader214, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bz, 4611686018427387900     ; 3 uses
  %i.ce = shl i64 %n.vec, 3                       ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bv, i64 %i.ce  ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bk, i64 %i.ce
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ch = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bv, i64 %i.ch ; 2 uses
  %next.gep211 = getelementptr i8, ptr %i.bk, i64 %i.ch ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !806)
  call void @llvm.experimental.noalias.scope.decl(metadata !809)
  %i.ci = getelementptr i8, ptr %next.gep211, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep211, align 8, !tbaa !619, !alias.scope !811, !noalias !806
  %wide.load212 = load <2 x i64>, ptr %i.ci, align 8, !tbaa !619, !alias.scope !811, !noalias !806
  %i.cj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !619, !alias.scope !814, !noalias !811
  store <2 x i64> %wide.load212, ptr %i.cj, align 8, !tbaa !619, !alias.scope !814, !noalias !811
  %i.ck = getelementptr i8, ptr %next.gep211, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep211, align 8, !tbaa !619, !alias.scope !811, !noalias !806
  store <2 x ptr> splat (ptr null), ptr %i.ck, align 8, !tbaa !619, !alias.scope !811, !noalias !806
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !816

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader214

.lr.ph.i.i.i.i.preheader214:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bv, %vector.memcheck ], [ %i.bv, %.lr.ph.i.i.i.i.preheader ], [ %i.cf, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bk, %vector.memcheck ], [ %i.bk, %.lr.ph.i.i.i.i.preheader ], [ %i.cg, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader214, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader214 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader214 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !806)
  call void @llvm.experimental.noalias.scope.decl(metadata !809)
  %i.cm = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !809, !noalias !806
  store i64 %i.cm, ptr %.012.i.i.i.i, align 8, !tbaa !619, !alias.scope !806, !noalias !809
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !809, !noalias !806
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cn, %i.bf
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !817

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc126
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bv, %.noexc126 ], [ %i.cf, %middle.block ], [ %i.co, %.lr.ph.i.i.i.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.bk, null
  br i1 %.not.i23.i, label %.noexc74, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.cq = load ptr, ptr %i.bg, align 8, !tbaa !624
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = sub i64 %i.cr, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.cs) #23
  br label %.noexc74

.noexc74:                                         ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.bv, ptr %i.bd, align 8, !tbaa !625
  store ptr %i.cp, ptr %i.be, align 8, !tbaa !621
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.ct, ptr %i.bg, align 8, !tbaa !624
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %.noexc74, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5vcpkg4Test20MockCMakeVarProviderE, i64 16), ptr %9, align 8, !tbaa !9
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 56
  store ptr %i.cv, ptr %i.cu, align 8, !tbaa !34
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 1, ptr %i.cw, align 8, !tbaa !42
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cy, align 8, !tbaa !43
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i8 0, i64 16, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 112
  store ptr %i.db, ptr %i.da, align 8, !tbaa !34
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 72
  store i64 1, ptr %i.dc, align 8, !tbaa !42
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.de, align 8, !tbaa !43
  %i.df = getelementptr inbounds nuw i8, ptr %9, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, i8 0, i64 16, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 120
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 168
  store ptr %i.dh, ptr %i.dg, align 8, !tbaa !44
  %i.di = getelementptr inbounds nuw i8, ptr %9, i64 128
  store i64 1, ptr %i.di, align 8, !tbaa !46
  %i.dj = getelementptr inbounds nuw i8, ptr %9, i64 136
  %i.dk = getelementptr inbounds nuw i8, ptr %9, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.dk, align 8, !tbaa !43
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV20MockBaselineProvider, i64 16), ptr %10, align 8, !tbaa !9
  %i.dm = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store i32 0, ptr %i.dm, align 8, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store ptr null, ptr %i.dn, align 8, !tbaa !11
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.dm, ptr %i.do, align 8, !tbaa !19
  %i.dp = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %i.dm, ptr %i.dp, align 8, !tbaa !20
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i64 0, ptr %i.dq, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit76 unwind label %bb.ag

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit76:        ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.dr = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.dr, ptr %12, align 8, !tbaa !22
  store i8 97, ptr %i.dr, align 8, !tbaa !25
  %i.ds = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 1, ptr %i.ds, align 8, !tbaa !26
  %i.dt = getelementptr inbounds nuw i8, ptr %12, i64 17
  store i8 0, ptr %i.dt, align 1, !tbaa !25
  %i.du = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.dv = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg7VersionESt4lessIvESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.du, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.j unwind label %bb.ah      ; 10 uses

bb.j:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit76
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !28 ; 6 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 4 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  %i.dz = load ptr, ptr %11, align 8, !tbaa !28   ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea                ; 2 uses
  br i1 %i.dy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %bb.j
  br i1 %i.eb, label %bb.k, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i81: ; preds = %bb.j
  br i1 %i.eb, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  %i.ec = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !26 ; 3 uses
  %i.ee = icmp ult i64 %i.ed, 16
  call void @llvm.assume(i1 %i.ee)
  %.not21.i.i = icmp eq ptr %11, %i.dv
  br i1 %.not21.i.i, label %_ZN5vcpkg7VersionaSEOS0_.exit, label %bb.l, !prof !29

bb.l:                                             ; preds = %bb.k
  switch i64 %i.ed, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.ef = load i8, ptr %i.dz, align 1, !tbaa !25
  store i8 %i.ef, ptr %i.dw, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dw, ptr align 1 %i.dz, i64 %i.ed, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.eg = load i64, ptr %i.ec, align 8, !tbaa !26 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !26
  %i.ei = load ptr, ptr %i.dv, align 8, !tbaa !28
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.eg
  store i8 0, ptr %i.ej, align 1, !tbaa !25
  %.pre.i.i = load ptr, ptr %11, align 8, !tbaa !28
  br label %_ZN5vcpkg7VersionaSEOS0_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
end_hunk_3
begin_hunk_4_@_ZL20C_A_T_C_H_T_E_S_T_97v:._crit_edge.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 0, ptr %i.g, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !22
  store i8 120, ptr %i.h, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.i, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.j, align 1, !tbaa !25
  invoke fastcc void @_ZL9make_fpghNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef align 8 %4)
          to label %bb.a unwind label %bb.aj

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.k = load ptr, ptr %4, align 8, !tbaa !28     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.h
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.m = load i64, ptr %i.h, align 8, !tbaa !25
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.o, ptr %5, align 8, !tbaa !22
  store i8 97, ptr %i.o, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.p, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 0, ptr %i.q, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit unwind label %bb.ak

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr @.str.123, ptr %1, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !33
  %i.r = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(36) %6, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %1)
          to label %bb.b unwind label %bb.al      ; 2 uses

bb.b:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.s = load ptr, ptr %6, align 8, !tbaa !28     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN5vcpkg7VersionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.v = load i64, ptr %i.t, align 8, !tbaa !25
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit

_ZN5vcpkg7VersionD2Ev.exit:                       ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.x = load ptr, ptr %5, align 8, !tbaa !28     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.o
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %_ZN5vcpkg7VersionD2Ev.exit
  %i.z = load i64, ptr %i.o, align 8, !tbaa !25
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %_ZN5vcpkg7VersionD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !136
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !138 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  store ptr %i.ad, ptr %7, align 8, !tbaa !22
  store i8 120, ptr %i.ad, align 8, !tbaa !25
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i64 1, ptr %i.ae, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 17
  store i8 0, ptr %i.af, align 1, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #22
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 272 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !672 ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 280
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !671
  %.not.i.i = icmp eq ptr %i.ai, %i.ak
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 3 uses
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !22
  %i.am = load ptr, ptr %7, align 8, !tbaa !28    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.ad
  br i1 %i.an, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ao = load i64, ptr %i.ae, align 8, !tbaa !26 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.aq, i1 false)
  br label %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !28
  %i.ar = load i64, ptr %i.ad, align 8, !tbaa !25
  store i64 %i.ar, ptr %i.al, align 8, !tbaa !25
  %.pre = load i64, ptr %i.ae, align 8, !tbaa !26
  br label %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i

_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.d
  %i.as = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ao, %bb.d ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !26
  store ptr %i.ad, ptr %7, align 8, !tbaa !28
  store i64 0, ptr %i.ae, align 8, !tbaa !26
  store i8 0, ptr %i.ad, align 8, !tbaa !25
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #22
  %i.av = load ptr, ptr %i.ah, align 8, !tbaa !672
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store ptr %i.aw, ptr %i.ah, align 8, !tbaa !672
  br label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 264
  invoke void @_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr %i.ai, ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit unwind label %bb.am

_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i, %bb.e
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ag) #22
  %i.ay = load ptr, ptr %7, align 8, !tbaa !28    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ad
  br i1 %i.az, label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59: ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit
  %i.ba = load i64, ptr %i.ad, align 8, !tbaa !25
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #23
  br label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit

_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit:   ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.bc = load ptr, ptr %i.r, align 8, !tbaa !136 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !621 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !624
  %.not.i.i61 = icmp eq ptr %i.bf, %i.bh
  br i1 %.not.i.i61, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit
  %i.bi = load i64, ptr %3, align 8, !tbaa !619
  store i64 %i.bi, ptr %i.bf, align 8, !tbaa !619
  store ptr null, ptr %3, align 8, !tbaa !619
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bj, ptr %i.be, align 8, !tbaa !621
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

bb.g:                                             ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit
  %i.bk = load ptr, ptr %i.bd, align 8, !tbaa !625 ; 10 uses
  %i.bl = ptrtoint ptr %i.bf to i64               ; 3 uses
  %i.bm = ptrtoint ptr %i.bk to i64               ; 4 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %bb.h, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc125 unwind label %bb.an

.noexc125:                                        ; preds = %bb.h
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.g
  %i.bp = ashr exact i64 %i.bn, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = call i64 @llvm.umin.i64(i64 %i.bq, i64 1152921504606846975)
  %i.bt = select i1 %i.br, i64 1152921504606846975, i64 %i.bs ; 3 uses
  %.not.i.i124 = icmp ne i64 %i.bt, 0
  call void @llvm.assume(i1 %.not.i.i124)
  %i.bu = shl nuw nsw i64 %i.bt, 3
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #24
          to label %.noexc126 unwind label %bb.an ; 10 uses

.noexc126:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  %i.bx = load i64, ptr %3, align 8, !tbaa !619
  store i64 %i.bx, ptr %i.bw, align 8, !tbaa !619
  store ptr null, ptr %3, align 8, !tbaa !619
  %.not10.i.i.i.i = icmp eq ptr %i.bk, %i.bf
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc126
  %28 = sub i64 %i.bl, %i.bm
  %29 = add i64 %28, -8                           ; 2 uses
  %i.by = lshr i64 %29, 3
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %29, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader223, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ca = add i64 %i.bl, -8
  %i.cb = sub i64 %i.ca, %i.bm
  %i.cc = and i64 %i.cb, -8
  %i.cd = add i64 %i.cc, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bv, i64 %i.cd
  %scevgep219 = getelementptr i8, ptr %i.bk, i64 %i.cd
  %bound0 = icmp ult ptr %i.bv, %scevgep219
  %bound1 = icmp ult ptr %i.bk, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader223, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bz, 4611686018427387900     ; 3 uses
  %i.ce = shl i64 %n.vec, 3                       ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bv, i64 %i.ce  ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bk, i64 %i.ce
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ch = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bv, i64 %i.ch ; 2 uses
  %next.gep220 = getelementptr i8, ptr %i.bk, i64 %i.ch ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !824)
  call void @llvm.experimental.noalias.scope.decl(metadata !827)
  %i.ci = getelementptr i8, ptr %next.gep220, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep220, align 8, !tbaa !619, !alias.scope !829, !noalias !824
  %wide.load221 = load <2 x i64>, ptr %i.ci, align 8, !tbaa !619, !alias.scope !829, !noalias !824
  %i.cj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !619, !alias.scope !832, !noalias !829
  store <2 x i64> %wide.load221, ptr %i.cj, align 8, !tbaa !619, !alias.scope !832, !noalias !829
  %i.ck = getelementptr i8, ptr %next.gep220, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep220, align 8, !tbaa !619, !alias.scope !829, !noalias !824
  store <2 x ptr> splat (ptr null), ptr %i.ck, align 8, !tbaa !619, !alias.scope !829, !noalias !824
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !834

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader223

.lr.ph.i.i.i.i.preheader223:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bv, %vector.memcheck ], [ %i.bv, %.lr.ph.i.i.i.i.preheader ], [ %i.cf, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bk, %vector.memcheck ], [ %i.bk, %.lr.ph.i.i.i.i.preheader ], [ %i.cg, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader223, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader223 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader223 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !824)
  call void @llvm.experimental.noalias.scope.decl(metadata !827)
  %i.cm = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !827, !noalias !824
  store i64 %i.cm, ptr %.012.i.i.i.i, align 8, !tbaa !619, !alias.scope !824, !noalias !827
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !827, !noalias !824
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cn, %i.bf
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !835

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc126
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bv, %.noexc126 ], [ %i.cf, %middle.block ], [ %i.co, %.lr.ph.i.i.i.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.bk, null
  br i1 %.not.i23.i, label %.noexc62, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.cq = load ptr, ptr %i.bg, align 8, !tbaa !624
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = sub i64 %i.cr, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.cs) #23
  br label %.noexc62

.noexc62:                                         ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.bv, ptr %i.bd, align 8, !tbaa !625
  store ptr %i.cp, ptr %i.be, align 8, !tbaa !621
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.ct, ptr %i.bg, align 8, !tbaa !624
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %.noexc62, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5vcpkg4Test20MockCMakeVarProviderE, i64 16), ptr %8, align 8, !tbaa !9
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 56
  store ptr %i.cv, ptr %i.cu, align 8, !tbaa !34
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 1, ptr %i.cw, align 8, !tbaa !42
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cy, align 8, !tbaa !43
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i8 0, i64 16, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 112
  store ptr %i.db, ptr %i.da, align 8, !tbaa !34
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i64 1, ptr %i.dc, align 8, !tbaa !42
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.de = getelementptr inbounds nuw i8, ptr %8, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.de, align 8, !tbaa !43
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, i8 0, i64 16, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 168
  store ptr %i.dh, ptr %i.dg, align 8, !tbaa !44
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 128
  store i64 1, ptr %i.di, align 8, !tbaa !46
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 136
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.dk, align 8, !tbaa !43
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV20MockBaselineProvider, i64 16), ptr %9, align 8, !tbaa !9
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store i32 0, ptr %i.dm, align 8, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr null, ptr %i.dn, align 8, !tbaa !11
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.dm, ptr %i.do, align 8, !tbaa !19
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 40
  store ptr %i.dm, ptr %i.dp, align 8, !tbaa !20
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i64 0, ptr %i.dq, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit64 unwind label %bb.ao

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit64:        ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.dr, ptr %11, align 8, !tbaa !22
  store i8 97, ptr %i.dr, align 8, !tbaa !25
  %i.ds = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 1, ptr %i.ds, align 8, !tbaa !26
  %i.dt = getelementptr inbounds nuw i8, ptr %11, i64 17
  store i8 0, ptr %i.dt, align 1, !tbaa !25
  %i.du = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.dv = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg7VersionESt4lessIvESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.du, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.j unwind label %bb.ap      ; 10 uses

bb.j:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit64
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !28 ; 6 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 4 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  %i.dz = load ptr, ptr %10, align 8, !tbaa !28   ; 6 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea                ; 2 uses
  br i1 %i.dy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.j
  br i1 %i.eb, label %bb.k, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i69: ; preds = %bb.j
  br i1 %i.eb, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !26 ; 3 uses
  %i.ee = icmp ult i64 %i.ed, 16
  call void @llvm.assume(i1 %i.ee)
  %.not21.i.i = icmp eq ptr %10, %i.dv
  br i1 %.not21.i.i, label %_ZN5vcpkg7VersionaSEOS0_.exit, label %bb.l, !prof !29

bb.l:                                             ; preds = %bb.k
  switch i64 %i.ed, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.ef = load i8, ptr %i.dz, align 1, !tbaa !25
  store i8 %i.ef, ptr %i.dw, align 1, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dw, ptr align 1 %i.dz, i64 %i.ed, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.eg = load i64, ptr %i.ec, align 8, !tbaa !26 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !26
  %i.ei = load ptr, ptr %i.dv, align 8, !tbaa !28
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.eg
  store i8 0, ptr %i.ej, align 1, !tbaa !25
  %.pre.i.i = load ptr, ptr %10, align 8, !tbaa !28
  br label %_ZN5vcpkg7VersionaSEOS0_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
end_hunk_4
begin_hunk_5_@_ZL20C_A_T_C_H_T_E_S_T_99v:._crit_edge.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 0, ptr %i.i, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.j, ptr %7, align 8, !tbaa !22
  store i8 120, ptr %i.j, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 1, ptr %i.k, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 17
  store i8 0, ptr %i.l, align 1, !tbaa !25
  invoke fastcc void @_ZL9make_fpghNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef align 8 %7)
          to label %bb.a unwind label %bb.ax

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.m = load ptr, ptr %7, align 8, !tbaa !28     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.j
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.o = load i64, ptr %i.j, align 8, !tbaa !25
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.q, ptr %8, align 8, !tbaa !22
  store i8 97, ptr %i.q, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 1, ptr %i.r, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 0, ptr %i.s, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit unwind label %bb.ay

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr @.str.123, ptr %4, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !33
  %i.t = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(36) %9, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %4)
          to label %bb.b unwind label %bb.az      ; 2 uses

bb.b:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.u = load ptr, ptr %9, align 8, !tbaa !28     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN5vcpkg7VersionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.x = load i64, ptr %i.v, align 8, !tbaa !25
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit

_ZN5vcpkg7VersionD2Ev.exit:                       ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.z = load ptr, ptr %8, align 8, !tbaa !28     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.q
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %_ZN5vcpkg7VersionD2Ev.exit
  %i.ab = load i64, ptr %i.q, align 8, !tbaa !25
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %_ZN5vcpkg7VersionD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.ad = load ptr, ptr %i.t, align 8, !tbaa !136
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !138 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 9 uses
  store ptr %i.af, ptr %10, align 8, !tbaa !22
  store i8 120, ptr %i.af, align 8, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i64 1, ptr %i.ag, align 8, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 17
  store i8 0, ptr %i.ah, align 1, !tbaa !25
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ai) #22
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 272 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !672 ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 280
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !671
  %.not.i.i = icmp eq ptr %i.ak, %i.am
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 3 uses
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !22
  %i.ao = load ptr, ptr %10, align 8, !tbaa !28   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.af
  br i1 %i.ap, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.aq = load i64, ptr %i.ag, align 8, !tbaa !26 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.as, i1 false)
  br label %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !28
  %i.at = load i64, ptr %i.af, align 8, !tbaa !25
  store i64 %i.at, ptr %i.an, align 8, !tbaa !25
  %.pre = load i64, ptr %i.ag, align 8, !tbaa !26
  br label %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i

_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.d
  %i.au = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aq, %bb.d ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %i.au, ptr %i.av, align 8, !tbaa !26
  store ptr %i.af, ptr %10, align 8, !tbaa !28
  store i64 0, ptr %i.ag, align 8, !tbaa !26
  store i8 0, ptr %i.af, align 8, !tbaa !25
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.ai) #22
  %i.ax = load ptr, ptr %i.aj, align 8, !tbaa !672
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  store ptr %i.ay, ptr %i.aj, align 8, !tbaa !672
  br label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %i.az = getelementptr inbounds nuw i8, ptr %i.ae, i64 264
  invoke void @_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr %i.ak, ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit unwind label %bb.ba

_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i, %bb.e
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ai) #22
  %i.ba = load ptr, ptr %10, align 8, !tbaa !28   ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.af
  br i1 %i.bb, label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i119: ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit
  %i.bc = load i64, ptr %i.af, align 8, !tbaa !25
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #23
  br label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit

_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit:   ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.be = load ptr, ptr %i.t, align 8, !tbaa !136 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !621 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !624
  %.not.i.i121 = icmp eq ptr %i.bh, %i.bj
  br i1 %.not.i.i121, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit
  %i.bk = load i64, ptr %6, align 8, !tbaa !619
  store i64 %i.bk, ptr %i.bh, align 8, !tbaa !619
  store ptr null, ptr %6, align 8, !tbaa !619
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bl, ptr %i.bg, align 8, !tbaa !621
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

bb.g:                                             ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit
  %i.bm = load ptr, ptr %i.bf, align 8, !tbaa !625 ; 10 uses
  %i.bn = ptrtoint ptr %i.bh to i64               ; 3 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 4 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 3 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.h, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc368 unwind label %bb.bb

.noexc368:                                        ; preds = %bb.h
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.g
  %i.br = ashr exact i64 %i.bp, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 1152921504606846975)
  %i.bv = select i1 %i.bt, i64 1152921504606846975, i64 %i.bu ; 3 uses
  %.not.i.i367 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i367)
  %i.bw = shl nuw nsw i64 %i.bv, 3
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #24
          to label %.noexc369 unwind label %bb.bb ; 10 uses

.noexc369:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  %i.bz = load i64, ptr %6, align 8, !tbaa !619
  store i64 %i.bz, ptr %i.by, align 8, !tbaa !619
  store ptr null, ptr %6, align 8, !tbaa !619
  %.not10.i.i.i.i = icmp eq ptr %i.bm, %i.bh
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc369
  %59 = sub i64 %i.bn, %i.bo
  %60 = add i64 %59, -8                           ; 2 uses
  %i.ca = lshr i64 %60, 3
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %60, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader599, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.cc = add i64 %i.bn, -8
  %i.cd = sub i64 %i.cc, %i.bo
  %i.ce = and i64 %i.cd, -8
  %i.cf = add i64 %i.ce, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bx, i64 %i.cf
  %scevgep595 = getelementptr i8, ptr %i.bm, i64 %i.cf
  %bound0 = icmp ult ptr %i.bx, %scevgep595
  %bound1 = icmp ult ptr %i.bm, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader599, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cb, 4611686018427387900     ; 3 uses
  %i.cg = shl i64 %n.vec, 3                       ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bx, i64 %i.cg  ; 2 uses
  %i.ci = getelementptr i8, ptr %i.bm, i64 %i.cg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bx, i64 %i.cj ; 2 uses
  %next.gep596 = getelementptr i8, ptr %i.bm, i64 %i.cj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !841)
  call void @llvm.experimental.noalias.scope.decl(metadata !844)
  %i.ck = getelementptr i8, ptr %next.gep596, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep596, align 8, !tbaa !619, !alias.scope !846, !noalias !841
  %wide.load597 = load <2 x i64>, ptr %i.ck, align 8, !tbaa !619, !alias.scope !846, !noalias !841
  %i.cl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !619, !alias.scope !849, !noalias !846
  store <2 x i64> %wide.load597, ptr %i.cl, align 8, !tbaa !619, !alias.scope !849, !noalias !846
  %i.cm = getelementptr i8, ptr %next.gep596, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep596, align 8, !tbaa !619, !alias.scope !846, !noalias !841
  store <2 x ptr> splat (ptr null), ptr %i.cm, align 8, !tbaa !619, !alias.scope !846, !noalias !841
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !851

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader599

.lr.ph.i.i.i.i.preheader599:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bx, %vector.memcheck ], [ %i.bx, %.lr.ph.i.i.i.i.preheader ], [ %i.ch, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bm, %vector.memcheck ], [ %i.bm, %.lr.ph.i.i.i.i.preheader ], [ %i.ci, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader599, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader599 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader599 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !841)
  call void @llvm.experimental.noalias.scope.decl(metadata !844)
  %i.co = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !844, !noalias !841
  store i64 %i.co, ptr %.012.i.i.i.i, align 8, !tbaa !619, !alias.scope !841, !noalias !844
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !844, !noalias !841
  %i.cp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cp, %i.bh
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !852

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc369
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bx, %.noexc369 ], [ %i.ch, %middle.block ], [ %i.cq, %.lr.ph.i.i.i.i ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.bm, null
  br i1 %.not.i23.i, label %.noexc122, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.cs = load ptr, ptr %i.bi, align 8, !tbaa !624
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = sub i64 %i.ct, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.cu) #23
  br label %.noexc122

.noexc122:                                        ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.bx, ptr %i.bf, align 8, !tbaa !625
  store ptr %i.cr, ptr %i.bg, align 8, !tbaa !621
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.cv, ptr %i.bi, align 8, !tbaa !624
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %.noexc122, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.cw, ptr %11, align 8, !tbaa !22
  store i8 98, ptr %i.cw, align 8, !tbaa !25
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 1, ptr %i.cx, align 8, !tbaa !26
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 17
  store i8 0, ptr %i.cy, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %12, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit128 unwind label %bb.bc

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit128:       ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr @.str.123, ptr %3, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i129 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i129, align 8, !tbaa !33
  %i.cz = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(36) %12, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %3)
          to label %bb.j unwind label %bb.bd

bb.j:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit128
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.da = load ptr, ptr %12, align 8, !tbaa !28   ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZN5vcpkg7VersionD2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132: ; preds = %bb.j
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !25
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit134

_ZN5vcpkg7VersionD2Ev.exit134:                    ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.df = load ptr, ptr %11, align 8, !tbaa !28   ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.cw
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %_ZN5vcpkg7VersionD2Ev.exit134
  %i.dh = load i64, ptr %i.cw, align 8, !tbaa !25
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %_ZN5vcpkg7VersionD2Ev.exit134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.dj = load ptr, ptr %i.cz, align 8, !tbaa !136
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.dl = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 11 uses
  store ptr %i.dl, ptr %14, align 8, !tbaa !22
  store i8 97, ptr %i.dl, align 8, !tbaa !25
  %i.dm = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store i64 1, ptr %i.dm, align 8, !tbaa !26
  %i.dn = getelementptr inbounds nuw i8, ptr %14, i64 17
  store i8 0, ptr %i.dn, align 1, !tbaa !25
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 216
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #22
  %i.dp = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr %i.dp, ptr %13, align 8, !tbaa !22
  %i.dq = load ptr, ptr %14, align 8, !tbaa !28   ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.dl
  br i1 %i.dr, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  %i.ds = load i64, ptr %i.dm, align 8, !tbaa !26 ; 3 uses
  %i.dt = icmp ult i64 %i.ds, 16
  call void @llvm.assume(i1 %i.dt)
  %i.du = add nuw nsw i64 %i.ds, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dp, ptr noundef nonnull align 8 dereferenceable(1) %i.dl, i64 %i.du, i1 false)
  br label %_ZN14CoreDependencyC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS8_EENS7_18PlatformExpression4ExprE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  store ptr %i.dq, ptr %13, align 8, !tbaa !28
  %i.dv = load i64, ptr %i.dl, align 8, !tbaa !25
  store i64 %i.dv, ptr %i.dp, align 8, !tbaa !25
  %.pre431 = load i64, ptr %i.dm, align 8, !tbaa !26
  br label %_ZN14CoreDependencyC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS8_EENS7_18PlatformExpression4ExprE.exit

_ZN14CoreDependencyC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS8_EENS7_18PlatformExpression4ExprE.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142
  %i.dw = phi i64 [ %i.ds, %bb.k ], [ %.pre431, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142 ]
  %i.dx = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !26
  store ptr %i.dl, ptr %14, align 8, !tbaa !28
  store i64 0, ptr %i.dm, align 8, !tbaa !26
  store i8 0, ptr %i.dl, align 8, !tbaa !25
  %i.dy = getelementptr inbounds nuw i8, ptr %13, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %13, i64 56
  call void @_ZN5vcpkg18PlatformExpression4ExprC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, ptr noundef nonnull align 8 dereferenceable(8) %16) #22
  %i.ea = getelementptr inbounds nuw i8, ptr %13, i64 64
  store i32 0, ptr %i.ea, align 8, !tbaa !47
  %i.eb = getelementptr inbounds nuw i8, ptr %13, i64 72
  call void @_ZN5vcpkg7VersionC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.eb) #22
  %i.ec = getelementptr inbounds nuw i8, ptr %13, i64 112
  store i8 0, ptr %i.ec, align 8, !tbaa !50
  %i.ed = getelementptr inbounds nuw i8, ptr %13, i64 113
  %i.ee = getelementptr inbounds nuw i8, ptr %13, i64 120
  store i8 0, ptr %i.ed, align 1, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ee, i8 0, i64 24, i1 false)
  %i.ef = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.do, ptr noundef nonnull align 8 dereferenceable(144) %13)
          to label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EED2Ev.exit unwind label %bb.be ; 0 uses

_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EED2Ev.exit: ; preds = %_ZN14CoreDependencyC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS8_EENS7_18PlatformExpression4ExprE.exit
  call void @_ZN5vcpkg10DependencyD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %13) #22
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #22
  %.pre432 = load ptr, ptr %14, align 8, !tbaa !28 ; 2 uses
  %i.eg = icmp eq ptr %.pre432, %i.dl
  br i1 %i.eg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EED2Ev.exit
end_hunk_5
begin_hunk_6_@_ZL21C_A_T_C_H_T_E_S_T_101v:.noexc.i
  br label %_ZN14CoreDependencyC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS8_EENS7_18PlatformExpression4ExprE.exit

_ZN14CoreDependencyC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS8_EENS7_18PlatformExpression4ExprE.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356
  %i.hq = phi i64 [ %i.hm, %bb.s ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356 ]
  %i.hr = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 4 uses
  store i64 %i.hq, ptr %i.hr, align 8, !tbaa !26
  store ptr %i.gm, ptr %18, align 8, !tbaa !28
  store i64 0, ptr %i.gv, align 8, !tbaa !26
  store i8 0, ptr %i.gm, align 8, !tbaa !25
  %i.hs = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 3 uses
  store ptr %i.hc, ptr %i.hs, align 8, !tbaa !670
  %i.ht = getelementptr inbounds nuw i8, ptr %17, i64 40
  store ptr %i.hh, ptr %i.ht, align 8, !tbaa !672
  %i.hu = getelementptr inbounds nuw i8, ptr %17, i64 48 ; 2 uses
  store ptr %i.hf, ptr %i.hu, align 8, !tbaa !671
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  %i.hv = getelementptr inbounds nuw i8, ptr %17, i64 56 ; 2 uses
  call void @_ZN5vcpkg18PlatformExpression4ExprC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.hv, ptr noundef nonnull align 8 dereferenceable(8) %21) #22
  %i.hw = getelementptr inbounds nuw i8, ptr %17, i64 64 ; 2 uses
  store i32 0, ptr %i.hw, align 8, !tbaa !47
  %i.hx = getelementptr inbounds nuw i8, ptr %17, i64 72 ; 3 uses
  call void @_ZN5vcpkg7VersionC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.hx) #22
  %i.hy = getelementptr inbounds nuw i8, ptr %17, i64 112 ; 2 uses
  store i8 0, ptr %i.hy, align 8, !tbaa !50
  %i.hz = getelementptr inbounds nuw i8, ptr %17, i64 113
  %i.ia = getelementptr inbounds nuw i8, ptr %17, i64 120 ; 3 uses
  store i8 0, ptr %i.hz, align 1, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ia, i8 0, i64 24, i1 false)
  %i.ib = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.ib, ptr %16, align 8, !tbaa !22
  %i.ic = load ptr, ptr %17, align 8, !tbaa !28   ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.hj
  br i1 %i.id, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357

bb.t:                                             ; preds = %_ZN14CoreDependencyC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS8_EENS7_18PlatformExpression4ExprE.exit
  %i.ie = load i64, ptr %i.hr, align 8, !tbaa !26 ; 3 uses
  %i.if = icmp ult i64 %i.ie, 16
  call void @llvm.assume(i1 %i.if)
  %i.ig = add nuw nsw i64 %i.ie, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ib, ptr noundef nonnull align 8 dereferenceable(1) %i.hj, i64 %i.ig, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357: ; preds = %_ZN14CoreDependencyC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS8_EENS7_18PlatformExpression4ExprE.exit
  store ptr %i.ic, ptr %16, align 8, !tbaa !28
  %i.ih = load i64, ptr %i.hj, align 8, !tbaa !25
  store i64 %i.ih, ptr %i.ib, align 8, !tbaa !25
  %.pre748 = load i64, ptr %i.hr, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357, %bb.t
  %i.ii = phi i64 [ %.pre748, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357 ], [ %i.ie, %bb.t ]
  %i.ij = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.ii, ptr %i.ij, align 8, !tbaa !26
  store ptr %i.hj, ptr %17, align 8, !tbaa !28
  store i64 0, ptr %i.hr, align 8, !tbaa !26
  store i8 0, ptr %i.hj, align 8, !tbaa !25
  %i.ik = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.il = load <2 x ptr>, ptr %i.hs, align 8, !tbaa !836
  store <2 x ptr> %i.il, ptr %i.ik, align 8, !tbaa !836
  %i.im = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.in = load ptr, ptr %i.hu, align 8, !tbaa !671
  store ptr %i.in, ptr %i.im, align 8, !tbaa !671
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hs, i8 0, i64 24, i1 false)
  %i.io = getelementptr inbounds nuw i8, ptr %16, i64 56
  call void @_ZN5vcpkg18PlatformExpression4ExprC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.io, ptr noundef nonnull align 8 dereferenceable(8) %i.hv) #22
  %i.ip = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.iq = load i32, ptr %i.hw, align 8, !tbaa !47
  store i32 %i.iq, ptr %i.ip, align 8, !tbaa !47
  %i.ir = getelementptr inbounds nuw i8, ptr %16, i64 72 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %16, i64 88 ; 3 uses
  store ptr %i.is, ptr %i.ir, align 8, !tbaa !22
  %i.it = load ptr, ptr %i.hx, align 8, !tbaa !28 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %17, i64 88 ; 5 uses
  %i.iv = icmp eq ptr %i.it, %i.iu
  br i1 %i.iv, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.iw = getelementptr inbounds nuw i8, ptr %17, i64 80
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !26 ; 3 uses
  %i.iy = icmp ult i64 %i.ix, 16
  call void @llvm.assume(i1 %i.iy)
  %i.iz = add nuw nsw i64 %i.ix, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.is, ptr noundef nonnull align 8 dereferenceable(1) %i.iu, i64 %i.iz, i1 false)
  br label %_ZN5vcpkg10DependencyC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.it, ptr %i.ir, align 8, !tbaa !28
  %i.ja = load i64, ptr %i.iu, align 8, !tbaa !25
  store i64 %i.ja, ptr %i.is, align 8, !tbaa !25
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %17, i64 80
  %.pre749 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !26
  br label %_ZN5vcpkg10DependencyC2EOS0_.exit

_ZN5vcpkg10DependencyC2EOS0_.exit:                ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.jb = phi i64 [ %i.ix, %bb.u ], [ %.pre749, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  %i.jc = getelementptr inbounds nuw i8, ptr %17, i64 80
  %i.jd = getelementptr inbounds nuw i8, ptr %16, i64 80
  store i64 %i.jb, ptr %i.jd, align 8, !tbaa !26
  store ptr %i.iu, ptr %i.hx, align 8, !tbaa !28
  store i64 0, ptr %i.jc, align 8, !tbaa !26
  store i8 0, ptr %i.iu, align 8, !tbaa !25
  %i.je = getelementptr inbounds nuw i8, ptr %16, i64 104
  %i.jf = getelementptr inbounds nuw i8, ptr %17, i64 104
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !30
  store i32 %i.jg, ptr %i.je, align 8, !tbaa !30
  %i.jh = getelementptr inbounds nuw i8, ptr %16, i64 112
  %i.ji = load i16, ptr %i.hy, align 8
  store i16 %i.ji, ptr %i.jh, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %16, i64 120
  %i.jk = load <2 x ptr>, ptr %i.ia, align 8, !tbaa !837
  store <2 x ptr> %i.jk, ptr %i.jj, align 8, !tbaa !837
  %i.jl = getelementptr inbounds nuw i8, ptr %16, i64 136
  %i.jm = getelementptr inbounds nuw i8, ptr %17, i64 136
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !793
  store ptr %i.jn, ptr %i.jl, align 8, !tbaa !793
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ia, i8 0, i64 24, i1 false)
  %i.jo = load ptr, ptr %i.ev, align 8, !tbaa !138
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 216
  %i.jq = getelementptr inbounds nuw i8, ptr %16, i64 144
  invoke void @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE13_M_assign_auxIPKS1_EEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.jp, ptr noundef nonnull %16, ptr noundef nonnull %i.jq)
          to label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EED2Ev.exit unwind label %bb.bv

_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EED2Ev.exit: ; preds = %_ZN5vcpkg10DependencyC2EOS0_.exit
  call void @_ZN5vcpkg10DependencyD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %16) #22
  call void @_ZN5vcpkg10DependencyD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %17) #22
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #22
  %i.jr = getelementptr inbounds nuw i8, ptr %20, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.jr) #22
  %i.js = load ptr, ptr %20, align 8, !tbaa !28   ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ju = icmp eq ptr %i.js, %i.jt
  br i1 %i.ju, label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit363, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i361

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i361: ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EED2Ev.exit
  %i.jv = load i64, ptr %i.jt, align 8, !tbaa !25
  %i.jw = add i64 %i.jv, 1
  call void @_ZdlPvm(ptr noundef %i.js, i64 noundef %i.jw) #23
  br label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit363

_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit363: ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i361
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %i.jx = load ptr, ptr %18, align 8, !tbaa !28   ; 2 uses
  %i.jy = icmp eq ptr %i.jx, %i.gm
  br i1 %i.jy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364: ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit363
  %i.jz = load i64, ptr %i.gm, align 8, !tbaa !25
  %i.ka = add i64 %i.jz, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.ka) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366: ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit363, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 6 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 7 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !621 ; 6 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ev, i64 24 ; 7 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !624 ; 2 uses
  %.not.i.i = icmp eq ptr %i.kd, %i.kf
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366
  %i.kg = load i64, ptr %4, align 8, !tbaa !619
  store i64 %i.kg, ptr %i.kd, align 8, !tbaa !619
  store ptr null, ptr %4, align 8, !tbaa !619
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kd, i64 8 ; 2 uses
  store ptr %i.kh, ptr %i.kc, align 8, !tbaa !621
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366
  %i.ki = load ptr, ptr %i.kb, align 8, !tbaa !625 ; 10 uses
  %i.kj = ptrtoint ptr %i.kd to i64               ; 3 uses
  %i.kk = ptrtoint ptr %i.ki to i64               ; 4 uses
  %i.kl = sub i64 %i.kj, %i.kk                    ; 3 uses
  %i.km = icmp eq i64 %i.kl, 9223372036854775800
  br i1 %i.km, label %.invoke, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.w
  %i.kn = ashr exact i64 %i.kl, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.kn, i64 1)
  %i.ko = add nsw i64 %.sroa.speculated.i.i, %i.kn ; 2 uses
  %i.kp = icmp ult i64 %i.ko, %i.kn
  %i.kq = call i64 @llvm.umin.i64(i64 %i.ko, i64 1152921504606846975)
  %i.kr = select i1 %i.kp, i64 1152921504606846975, i64 %i.kq ; 3 uses
  %.not.i.i570 = icmp ne i64 %i.kr, 0
  call void @llvm.assume(i1 %.not.i.i570)
  %i.ks = shl nuw nsw i64 %i.kr, 3
  %i.kt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ks) #24
          to label %.noexc572 unwind label %bb.bw ; 10 uses

.noexc572:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.kl
  %i.kv = load i64, ptr %4, align 8, !tbaa !619
  store i64 %i.kv, ptr %i.ku, align 8, !tbaa !619
  store ptr null, ptr %4, align 8, !tbaa !619
  %.not10.i.i.i.i = icmp eq ptr %i.ki, %i.kd
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc572
  %63 = sub i64 %i.kj, %i.kk
  %64 = add i64 %63, -8                           ; 2 uses
  %i.kw = lshr i64 %64, 3
  %i.kx = add nuw nsw i64 %i.kw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %64, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader965, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ky = add i64 %i.kj, -8
  %i.kz = sub i64 %i.ky, %i.kk
  %i.la = and i64 %i.kz, -8
  %i.lb = add i64 %i.la, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.kt, i64 %i.lb
  %scevgep916 = getelementptr i8, ptr %i.ki, i64 %i.lb
  %bound0 = icmp ult ptr %i.kt, %scevgep916
  %bound1 = icmp ult ptr %i.ki, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader965, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.kx, 4611686018427387900     ; 3 uses
  %i.lc = shl i64 %n.vec, 3                       ; 2 uses
  %i.ld = getelementptr i8, ptr %i.kt, i64 %i.lc  ; 2 uses
  %i.le = getelementptr i8, ptr %i.ki, i64 %i.lc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.kt, i64 %i.lf ; 2 uses
  %next.gep917 = getelementptr i8, ptr %i.ki, i64 %i.lf ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !859)
  call void @llvm.experimental.noalias.scope.decl(metadata !862)
  %i.lg = getelementptr i8, ptr %next.gep917, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep917, align 8, !tbaa !619, !alias.scope !864, !noalias !859
  %wide.load918 = load <2 x i64>, ptr %i.lg, align 8, !tbaa !619, !alias.scope !864, !noalias !859
  %i.lh = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !619, !alias.scope !867, !noalias !864
  store <2 x i64> %wide.load918, ptr %i.lh, align 8, !tbaa !619, !alias.scope !867, !noalias !864
  %i.li = getelementptr i8, ptr %next.gep917, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep917, align 8, !tbaa !619, !alias.scope !864, !noalias !859
  store <2 x ptr> splat (ptr null), ptr %i.li, align 8, !tbaa !619, !alias.scope !864, !noalias !859
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lj = icmp eq i64 %index.next, %n.vec
  br i1 %i.lj, label %middle.block, label %vector.body, !llvm.loop !869

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kx, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader965

.lr.ph.i.i.i.i.preheader965:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.kt, %vector.memcheck ], [ %i.kt, %.lr.ph.i.i.i.i.preheader ], [ %i.ld, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ki, %vector.memcheck ], [ %i.ki, %.lr.ph.i.i.i.i.preheader ], [ %i.le, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader965, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.lm, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader965 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ll, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader965 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !859)
  call void @llvm.experimental.noalias.scope.decl(metadata !862)
  %i.lk = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !862, !noalias !859
  store i64 %i.lk, ptr %.012.i.i.i.i, align 8, !tbaa !619, !alias.scope !859, !noalias !862
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !862, !noalias !859
  %i.ll = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ll, %i.kd
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !870

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc572
  %.0.lcssa.i.i.i.i = phi ptr [ %i.kt, %.noexc572 ], [ %i.ld, %middle.block ], [ %i.lm, %.lr.ph.i.i.i.i ]
  %i.ln = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.ki, null
  br i1 %.not.i23.i, label %.noexc367, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.lo = load ptr, ptr %i.ke, align 8, !tbaa !624
  %i.lp = ptrtoint ptr %i.lo to i64
  %i.lq = sub i64 %i.lp, %i.kk
  call void @_ZdlPvm(ptr noundef nonnull %i.ki, i64 noundef %i.lq) #23
  br label %.noexc367

.noexc367:                                        ; preds = %bb.x, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.kt, ptr %i.kb, align 8, !tbaa !625
  store ptr %i.ln, ptr %i.kc, align 8, !tbaa !621
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %i.kr ; 2 uses
  store ptr %i.lr, ptr %i.ke, align 8, !tbaa !624
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %.noexc367, %bb.v
  %i.ls = phi ptr [ %i.lr, %.noexc367 ], [ %i.kf, %bb.v ] ; 5 uses
  %i.lt = phi ptr [ %i.ln, %.noexc367 ], [ %i.kh, %bb.v ] ; 3 uses
  %.not.i.i368 = icmp eq ptr %i.lt, %i.ls
  br i1 %.not.i.i368, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  store i64 %i.ca, ptr %i.lt, align 8, !tbaa !619
  store ptr null, ptr %6, align 8, !tbaa !619
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8 ; 2 uses
  store ptr %i.lu, ptr %i.kc, align 8, !tbaa !621
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit370

bb.z:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %i.lv = load ptr, ptr %i.kb, align 8, !tbaa !625 ; 10 uses
  %i.lw = ptrtoint ptr %i.ls to i64               ; 3 uses
  %i.lx = ptrtoint ptr %i.lv to i64               ; 4 uses
  %i.ly = sub i64 %i.lw, %i.lx                    ; 3 uses
  %i.lz = icmp eq i64 %i.ly, 9223372036854775800
  br i1 %i.lz, label %.invoke, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i573

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i573: ; preds = %bb.z
  %i.ma = ashr exact i64 %i.ly, 3                 ; 3 uses
  %.sroa.speculated.i.i574 = call i64 @llvm.umax.i64(i64 %i.ma, i64 1)
  %i.mb = add nsw i64 %.sroa.speculated.i.i574, %i.ma ; 2 uses
  %i.mc = icmp ult i64 %i.mb, %i.ma
  %i.md = call i64 @llvm.umin.i64(i64 %i.mb, i64 1152921504606846975)
  %i.me = select i1 %i.mc, i64 1152921504606846975, i64 %i.md ; 3 uses
  %.not.i.i575 = icmp ne i64 %i.me, 0
  call void @llvm.assume(i1 %.not.i.i575)
  %i.mf = shl nuw nsw i64 %i.me, 3
  %i.mg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mf) #24
          to label %.noexc592 unwind label %bb.bw ; 10 uses

.noexc592:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i573
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.ly
  store i64 %i.ca, ptr %i.mh, align 8, !tbaa !619
  store ptr null, ptr %6, align 8, !tbaa !619
  %.not10.i.i.i.i576 = icmp eq ptr %i.lv, %i.ls
  br i1 %.not10.i.i.i.i576, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i588, label %.lr.ph.i.i.i.i577.preheader

.lr.ph.i.i.i.i577.preheader:                      ; preds = %.noexc592
  %65 = sub i64 %i.lw, %i.lx
  %66 = add i64 %65, -8                           ; 2 uses
  %i.mi = lshr i64 %66, 3
  %i.mj = add nuw nsw i64 %i.mi, 1                ; 2 uses
  %min.iters.check927 = icmp ult i64 %66, 136
  br i1 %min.iters.check927, label %.lr.ph.i.i.i.i577.preheader963, label %vector.memcheck920

vector.memcheck920:                               ; preds = %.lr.ph.i.i.i.i577.preheader
  %i.mk = add i64 %i.lw, -8
  %i.ml = sub i64 %i.mk, %i.lx
  %i.mm = and i64 %i.ml, -8
  %i.mn = add i64 %i.mm, 8                        ; 2 uses
  %scevgep921 = getelementptr i8, ptr %i.mg, i64 %i.mn
  %scevgep922 = getelementptr i8, ptr %i.lv, i64 %i.mn
  %bound0923 = icmp ult ptr %i.mg, %scevgep922
  %bound1924 = icmp ult ptr %i.lv, %scevgep921
  %found.conflict925 = and i1 %bound0923, %bound1924
  br i1 %found.conflict925, label %.lr.ph.i.i.i.i577.preheader963, label %vector.ph928

vector.ph928:                                     ; preds = %vector.memcheck920
  %n.vec929 = and i64 %i.mj, 4611686018427387900  ; 3 uses
  %i.mo = shl i64 %n.vec929, 3                    ; 2 uses
  %i.mp = getelementptr i8, ptr %i.mg, i64 %i.mo  ; 2 uses
  %i.mq = getelementptr i8, ptr %i.lv, i64 %i.mo
  br label %vector.body930

vector.body930:                                   ; preds = %vector.body930, %vector.ph928
  %index931 = phi i64 [ 0, %vector.ph928 ], [ %index.next936, %vector.body930 ] ; 2 uses
  %i.mr = shl i64 %index931, 3                    ; 2 uses
  %next.gep932 = getelementptr i8, ptr %i.mg, i64 %i.mr ; 2 uses
  %next.gep933 = getelementptr i8, ptr %i.lv, i64 %i.mr ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !871)
  call void @llvm.experimental.noalias.scope.decl(metadata !874)
  %i.ms = getelementptr i8, ptr %next.gep933, i64 16
  %wide.load934 = load <2 x i64>, ptr %next.gep933, align 8, !tbaa !619, !alias.scope !876, !noalias !871
  %wide.load935 = load <2 x i64>, ptr %i.ms, align 8, !tbaa !619, !alias.scope !876, !noalias !871
  %i.mt = getelementptr i8, ptr %next.gep932, i64 16
  store <2 x i64> %wide.load934, ptr %next.gep932, align 8, !tbaa !619, !alias.scope !879, !noalias !876
  store <2 x i64> %wide.load935, ptr %i.mt, align 8, !tbaa !619, !alias.scope !879, !noalias !876
  %i.mu = getelementptr i8, ptr %next.gep933, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep933, align 8, !tbaa !619, !alias.scope !876, !noalias !871
  store <2 x ptr> splat (ptr null), ptr %i.mu, align 8, !tbaa !619, !alias.scope !876, !noalias !871
  %index.next936 = add nuw i64 %index931, 4       ; 2 uses
  %i.mv = icmp eq i64 %index.next936, %n.vec929
  br i1 %i.mv, label %middle.block937, label %vector.body930, !llvm.loop !881

middle.block937:                                  ; preds = %vector.body930
  %cmp.n938 = icmp eq i64 %i.mj, %n.vec929
  br i1 %cmp.n938, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i588, label %.lr.ph.i.i.i.i577.preheader963

.lr.ph.i.i.i.i577.preheader963:                   ; preds = %vector.memcheck920, %.lr.ph.i.i.i.i577.preheader, %middle.block937
  %.012.i.i.i.i578.ph = phi ptr [ %i.mg, %vector.memcheck920 ], [ %i.mg, %.lr.ph.i.i.i.i577.preheader ], [ %i.mp, %middle.block937 ]
  %.0911.i.i.i.i579.ph = phi ptr [ %i.lv, %vector.memcheck920 ], [ %i.lv, %.lr.ph.i.i.i.i577.preheader ], [ %i.mq, %middle.block937 ]
  br label %.lr.ph.i.i.i.i577

.lr.ph.i.i.i.i577:                                ; preds = %.lr.ph.i.i.i.i577.preheader963, %.lr.ph.i.i.i.i577
  %.012.i.i.i.i578 = phi ptr [ %i.my, %.lr.ph.i.i.i.i577 ], [ %.012.i.i.i.i578.ph, %.lr.ph.i.i.i.i577.preheader963 ] ; 2 uses
  %.0911.i.i.i.i579 = phi ptr [ %i.mx, %.lr.ph.i.i.i.i577 ], [ %.0911.i.i.i.i579.ph, %.lr.ph.i.i.i.i577.preheader963 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !871)
  call void @llvm.experimental.noalias.scope.decl(metadata !874)
  %i.mw = load i64, ptr %.0911.i.i.i.i579, align 8, !tbaa !619, !alias.scope !874, !noalias !871
  store i64 %i.mw, ptr %.012.i.i.i.i578, align 8, !tbaa !619, !alias.scope !871, !noalias !874
  store ptr null, ptr %.0911.i.i.i.i579, align 8, !tbaa !619, !alias.scope !874, !noalias !871
  %i.mx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i579, i64 8 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i578, i64 8 ; 2 uses
  %.not.i.i.i.i580 = icmp eq ptr %i.mx, %i.ls
  br i1 %.not.i.i.i.i580, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i588, label %.lr.ph.i.i.i.i577, !llvm.loop !882

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i588: ; preds = %.lr.ph.i.i.i.i577, %middle.block937, %.noexc592
  %.0.lcssa.i.i.i.i582 = phi ptr [ %i.mg, %.noexc592 ], [ %i.mp, %middle.block937 ], [ %i.my, %.lr.ph.i.i.i.i577 ]
  %i.mz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i582, i64 8 ; 2 uses
  %.not.i23.i590 = icmp eq ptr %i.lv, null
  br i1 %.not.i23.i590, label %.noexc369, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i588
  %i.na = load ptr, ptr %i.ke, align 8, !tbaa !624
  %i.nb = ptrtoint ptr %i.na to i64
  %i.nc = sub i64 %i.nb, %i.lx
  call void @_ZdlPvm(ptr noundef nonnull %i.lv, i64 noundef %i.nc) #23
  br label %.noexc369

.noexc369:                                        ; preds = %bb.aa, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i588
  store ptr %i.mg, ptr %i.kb, align 8, !tbaa !625
  store ptr %i.mz, ptr %i.kc, align 8, !tbaa !621
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %i.mg, i64 %i.me ; 2 uses
  store ptr %i.nd, ptr %i.ke, align 8, !tbaa !624
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit370

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit370: ; preds = %.noexc369, %bb.y
  %i.ne = phi ptr [ %i.nd, %.noexc369 ], [ %i.ls, %bb.y ] ; 4 uses
  %i.nf = phi ptr [ %i.mz, %.noexc369 ], [ %i.lu, %bb.y ] ; 3 uses
  %.not.i.i371 = icmp eq ptr %i.nf, %i.ne
  br i1 %.not.i.i371, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit370
  store i64 %i.eg, ptr %i.nf, align 8, !tbaa !619
  store ptr null, ptr %10, align 8, !tbaa !619
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  store ptr %i.ng, ptr %i.kc, align 8, !tbaa !621
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit373

bb.ac:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit370
  %i.nh = load ptr, ptr %i.kb, align 8, !tbaa !625 ; 10 uses
  %i.ni = ptrtoint ptr %i.ne to i64               ; 3 uses
  %i.nj = ptrtoint ptr %i.nh to i64               ; 4 uses
  %i.nk = sub i64 %i.ni, %i.nj                    ; 3 uses
  %i.nl = icmp eq i64 %i.nk, 9223372036854775800
  br i1 %i.nl, label %.invoke, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i594

.invoke:                                          ; preds = %bb.ac, %bb.z, %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.cont unwind label %bb.bw

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i594: ; preds = %bb.ac
  %i.nm = ashr exact i64 %i.nk, 3                 ; 3 uses
  %.sroa.speculated.i.i595 = call i64 @llvm.umax.i64(i64 %i.nm, i64 1)
  %i.nn = add nsw i64 %.sroa.speculated.i.i595, %i.nm ; 2 uses
  %i.no = icmp ult i64 %i.nn, %i.nm
  %i.np = call i64 @llvm.umin.i64(i64 %i.nn, i64 1152921504606846975)
  %i.nq = select i1 %i.no, i64 1152921504606846975, i64 %i.np ; 3 uses
  %.not.i.i596 = icmp ne i64 %i.nq, 0
  call void @llvm.assume(i1 %.not.i.i596)
  %i.nr = shl nuw nsw i64 %i.nq, 3
  %i.ns = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nr) #24
          to label %.noexc613 unwind label %bb.bw ; 10 uses

.noexc613:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i594
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.nk
  store i64 %i.eg, ptr %i.nt, align 8, !tbaa !619
  store ptr null, ptr %10, align 8, !tbaa !619
  %.not10.i.i.i.i597 = icmp eq ptr %i.nh, %i.ne
  br i1 %.not10.i.i.i.i597, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i609, label %.lr.ph.i.i.i.i598.preheader

.lr.ph.i.i.i.i598.preheader:                      ; preds = %.noexc613
  %67 = sub i64 %i.ni, %i.nj
  %68 = add i64 %67, -8                           ; 2 uses
  %i.nu = lshr i64 %68, 3
  %i.nv = add nuw nsw i64 %i.nu, 1                ; 2 uses
  %min.iters.check948 = icmp ult i64 %68, 136
  br i1 %min.iters.check948, label %.lr.ph.i.i.i.i598.preheader962, label %vector.memcheck941

vector.memcheck941:                               ; preds = %.lr.ph.i.i.i.i598.preheader
  %i.nw = add i64 %i.ni, -8
  %i.nx = sub i64 %i.nw, %i.nj
  %i.ny = and i64 %i.nx, -8
  %i.nz = add i64 %i.ny, 8                        ; 2 uses
  %scevgep942 = getelementptr i8, ptr %i.ns, i64 %i.nz
  %scevgep943 = getelementptr i8, ptr %i.nh, i64 %i.nz
  %bound0944 = icmp ult ptr %i.ns, %scevgep943
  %bound1945 = icmp ult ptr %i.nh, %scevgep942
  %found.conflict946 = and i1 %bound0944, %bound1945
  br i1 %found.conflict946, label %.lr.ph.i.i.i.i598.preheader962, label %vector.ph949

vector.ph949:                                     ; preds = %vector.memcheck941
  %n.vec950 = and i64 %i.nv, 4611686018427387900  ; 3 uses
  %i.oa = shl i64 %n.vec950, 3                    ; 2 uses
  %i.ob = getelementptr i8, ptr %i.ns, i64 %i.oa  ; 2 uses
  %i.oc = getelementptr i8, ptr %i.nh, i64 %i.oa
  br label %vector.body951

vector.body951:                                   ; preds = %vector.body951, %vector.ph949
  %index952 = phi i64 [ 0, %vector.ph949 ], [ %index.next957, %vector.body951 ] ; 2 uses
  %i.od = shl i64 %index952, 3                    ; 2 uses
  %next.gep953 = getelementptr i8, ptr %i.ns, i64 %i.od ; 2 uses
  %next.gep954 = getelementptr i8, ptr %i.nh, i64 %i.od ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !883)
  call void @llvm.experimental.noalias.scope.decl(metadata !886)
  %i.oe = getelementptr i8, ptr %next.gep954, i64 16
  %wide.load955 = load <2 x i64>, ptr %next.gep954, align 8, !tbaa !619, !alias.scope !888, !noalias !883
  %wide.load956 = load <2 x i64>, ptr %i.oe, align 8, !tbaa !619, !alias.scope !888, !noalias !883
  %i.of = getelementptr i8, ptr %next.gep953, i64 16
  store <2 x i64> %wide.load955, ptr %next.gep953, align 8, !tbaa !619, !alias.scope !891, !noalias !888
  store <2 x i64> %wide.load956, ptr %i.of, align 8, !tbaa !619, !alias.scope !891, !noalias !888
  %i.og = getelementptr i8, ptr %next.gep954, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep954, align 8, !tbaa !619, !alias.scope !888, !noalias !883
  store <2 x ptr> splat (ptr null), ptr %i.og, align 8, !tbaa !619, !alias.scope !888, !noalias !883
  %index.next957 = add nuw i64 %index952, 4       ; 2 uses
  %i.oh = icmp eq i64 %index.next957, %n.vec950
  br i1 %i.oh, label %middle.block958, label %vector.body951, !llvm.loop !893

middle.block958:                                  ; preds = %vector.body951
  %cmp.n959 = icmp eq i64 %i.nv, %n.vec950
  br i1 %cmp.n959, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i609, label %.lr.ph.i.i.i.i598.preheader962

.lr.ph.i.i.i.i598.preheader962:                   ; preds = %vector.memcheck941, %.lr.ph.i.i.i.i598.preheader, %middle.block958
  %.012.i.i.i.i599.ph = phi ptr [ %i.ns, %vector.memcheck941 ], [ %i.ns, %.lr.ph.i.i.i.i598.preheader ], [ %i.ob, %middle.block958 ]
  %.0911.i.i.i.i600.ph = phi ptr [ %i.nh, %vector.memcheck941 ], [ %i.nh, %.lr.ph.i.i.i.i598.preheader ], [ %i.oc, %middle.block958 ]
  br label %.lr.ph.i.i.i.i598

.lr.ph.i.i.i.i598:                                ; preds = %.lr.ph.i.i.i.i598.preheader962, %.lr.ph.i.i.i.i598
  %.012.i.i.i.i599 = phi ptr [ %i.ok, %.lr.ph.i.i.i.i598 ], [ %.012.i.i.i.i599.ph, %.lr.ph.i.i.i.i598.preheader962 ] ; 2 uses
  %.0911.i.i.i.i600 = phi ptr [ %i.oj, %.lr.ph.i.i.i.i598 ], [ %.0911.i.i.i.i600.ph, %.lr.ph.i.i.i.i598.preheader962 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !883)
  call void @llvm.experimental.noalias.scope.decl(metadata !886)
  %i.oi = load i64, ptr %.0911.i.i.i.i600, align 8, !tbaa !619, !alias.scope !886, !noalias !883
  store i64 %i.oi, ptr %.012.i.i.i.i599, align 8, !tbaa !619, !alias.scope !883, !noalias !886
  store ptr null, ptr %.0911.i.i.i.i600, align 8, !tbaa !619, !alias.scope !886, !noalias !883
  %i.oj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i600, i64 8 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i599, i64 8 ; 2 uses
  %.not.i.i.i.i601 = icmp eq ptr %i.oj, %i.ne
  br i1 %.not.i.i.i.i601, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i609, label %.lr.ph.i.i.i.i598, !llvm.loop !894

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i609: ; preds = %.lr.ph.i.i.i.i598, %middle.block958, %.noexc613
  %.0.lcssa.i.i.i.i603 = phi ptr [ %i.ns, %.noexc613 ], [ %i.ob, %middle.block958 ], [ %i.ok, %.lr.ph.i.i.i.i598 ]
  %i.ol = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i603, i64 8
  %.not.i23.i611 = icmp eq ptr %i.nh, null
  br i1 %.not.i23.i611, label %.noexc372, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i609
  %i.om = load ptr, ptr %i.ke, align 8, !tbaa !624
  %i.on = ptrtoint ptr %i.om to i64
  %i.oo = sub i64 %i.on, %i.nj
  call void @_ZdlPvm(ptr noundef nonnull %i.nh, i64 noundef %i.oo) #23
  br label %.noexc372

.noexc372:                                        ; preds = %bb.ad, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i609
  store ptr %i.ns, ptr %i.kb, align 8, !tbaa !625
  store ptr %i.ol, ptr %i.kc, align 8, !tbaa !621
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.ns, i64 %i.nq
  store ptr %i.op, ptr %i.ke, align 8, !tbaa !624
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit373

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit373: ; preds = %.noexc372, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV29MockVersionedPortfileProvider, i64 16), ptr %22, align 8, !tbaa !9
  %i.oq = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  store i32 0, ptr %i.oq, align 8, !tbaa !18
  %i.or = getelementptr inbounds nuw i8, ptr %22, i64 24 ; 2 uses
  store ptr null, ptr %i.or, align 8, !tbaa !11
  %i.os = getelementptr inbounds nuw i8, ptr %22, i64 32
  store ptr %i.oq, ptr %i.os, align 8, !tbaa !19
  %i.ot = getelementptr inbounds nuw i8, ptr %22, i64 40
  store ptr %i.oq, ptr %i.ot, align 8, !tbaa !20
  %i.ou = getelementptr inbounds nuw i8, ptr %22, i64 48
  store i64 0, ptr %i.ou, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5vcpkg4Test20MockCMakeVarProviderE, i64 16), ptr %23, align 8, !tbaa !9
  %i.ov = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ow = getelementptr inbounds nuw i8, ptr %23, i64 56
  store ptr %i.ow, ptr %i.ov, align 8, !tbaa !34
  %i.ox = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i64 1, ptr %i.ox, align 8, !tbaa !42
  %i.oy = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.oz = getelementptr inbounds nuw i8, ptr %23, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oy, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.oz, align 8, !tbaa !43
  %i.pa = getelementptr inbounds nuw i8, ptr %23, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pa, i8 0, i64 16, i1 false)
  %i.pb = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.pc = getelementptr inbounds nuw i8, ptr %23, i64 112
  store ptr %i.pc, ptr %i.pb, align 8, !tbaa !34
  %i.pd = getelementptr inbounds nuw i8, ptr %23, i64 72
  store i64 1, ptr %i.pd, align 8, !tbaa !42
  %i.pe = getelementptr inbounds nuw i8, ptr %23, i64 80
  %i.pf = getelementptr inbounds nuw i8, ptr %23, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pe, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.pf, align 8, !tbaa !43
  %i.pg = getelementptr inbounds nuw i8, ptr %23, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pg, i8 0, i64 16, i1 false)
  %i.ph = getelementptr inbounds nuw i8, ptr %23, i64 120
  %i.pi = getelementptr inbounds nuw i8, ptr %23, i64 168
  store ptr %i.pi, ptr %i.ph, align 8, !tbaa !44
  %i.pj = getelementptr inbounds nuw i8, ptr %23, i64 128
  store i64 1, ptr %i.pj, align 8, !tbaa !46
  %i.pk = getelementptr inbounds nuw i8, ptr %23, i64 136
  %i.pl = getelementptr inbounds nuw i8, ptr %23, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pk, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.pl, align 8, !tbaa !43
  %i.pm = getelementptr inbounds nuw i8, ptr %23, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pm, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV20MockBaselineProvider, i64 16), ptr %24, align 8, !tbaa !9
  %i.pn = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 3 uses
  store i32 0, ptr %i.pn, align 8, !tbaa !18
  %i.po = getelementptr inbounds nuw i8, ptr %24, i64 24 ; 2 uses
  store ptr null, ptr %i.po, align 8, !tbaa !11
  %i.pp = getelementptr inbounds nuw i8, ptr %24, i64 32
  store ptr %i.pn, ptr %i.pp, align 8, !tbaa !19
  %i.pq = getelementptr inbounds nuw i8, ptr %24, i64 40
  store ptr %i.pn, ptr %i.pq, align 8, !tbaa !20
  %i.pr = getelementptr inbounds nuw i8, ptr %24, i64 48
  store i64 0, ptr %i.pr, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  invoke fastcc void @_ZL13toplevel_specv()
          to label %bb.ae unwind label %bb.bx

bb.ae:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit373
  %i.ps = invoke ptr @_ZNK5vcpkg11PackageSpec7tripletEv(ptr noundef nonnull align 8 dereferenceable(40) @_ZZL13toplevel_specvE3ret)
          to label %bb.af unwind label %bb.bx

bb.af:                                            ; preds = %bb.ae
  %i.pt = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 7 uses
  store ptr %i.pt, ptr %25, align 8, !tbaa !22
  %i.pu = load ptr, ptr %2, align 8, !tbaa !28    ; 2 uses
  %i.pv = load i64, ptr %i.r, align 8, !tbaa !26  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store i64 %i.pv, ptr %i.f, align 8, !tbaa !33
  %i.pw = icmp ugt i64 %i.pv, 15
  br i1 %i.pw, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.af
  %i.px = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc374 unwind label %bb.bx ; 2 uses

.noexc374:                                        ; preds = %.noexc.i.i
  store ptr %i.px, ptr %25, align 8, !tbaa !28
  %i.py = load i64, ptr %i.f, align 8, !tbaa !33
  store i64 %i.py, ptr %i.pt, align 8, !tbaa !25
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc374, %bb.af
  %i.pz = phi ptr [ %i.px, %.noexc374 ], [ %i.pt, %bb.af ] ; 2 uses
  switch i64 %i.pv, label %bb.ah [
    i64 1, label %bb.ag
    i64 0, label %.noexc.i376
  ]

bb.ag:                                            ; preds = %._crit_edge.i.i.i
  %i.qa = load i8, ptr %i.pu, align 1, !tbaa !25
  store i8 %i.qa, ptr %i.pz, align 1, !tbaa !25
  br label %.noexc.i376

bb.ah:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.pz, ptr align 1 %i.pu, i64 %i.pv, i1 false)
  br label %.noexc.i376

.noexc.i376:                                      ; preds = %bb.ah, %bb.ag, %._crit_edge.i.i.i
  %i.qb = load i64, ptr %i.f, align 8, !tbaa !33  ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 %i.qb, ptr %i.qc, align 8, !tbaa !26
  %i.qd = load ptr, ptr %25, align 8, !tbaa !28
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 %i.qb
  store i8 0, ptr %i.qe, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  %i.qf = getelementptr inbounds nuw i8, ptr %25, i64 32
  store ptr %i.ps, ptr %i.qf, align 8, !tbaa !895
end_hunk_6
begin_hunk_7_@_ZL21C_A_T_C_H_T_E_S_T_109v:._crit_edge.i.i
  %36 = alloca %"struct.vcpkg::Version", align 8  ; 6 uses
  %37 = alloca [1 x %"struct.vcpkg::StringLiteral"], align 8 ; 6 uses
  %38 = alloca %"struct.vcpkg::Version", align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV29MockVersionedPortfileProvider, i64 16), ptr %3, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.c, ptr %i.e, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %i.c, ptr %i.f, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 0, ptr %i.g, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !22
  store i8 97, ptr %i.h, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.i, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.j, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit unwind label %bb.ar

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit:          ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr @.str.123, ptr %2, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !33
  %i.k = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %2)
          to label %bb.a unwind label %bb.as      ; 2 uses

bb.a:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.l = load ptr, ptr %5, align 8, !tbaa !28     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN5vcpkg7VersionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.o = load i64, ptr %i.m, align 8, !tbaa !25
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit

_ZN5vcpkg7VersionD2Ev.exit:                       ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.q = load ptr, ptr %4, align 8, !tbaa !28     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.h
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5vcpkg7VersionD2Ev.exit
  %i.s = load i64, ptr %i.h, align 8, !tbaa !25
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5vcpkg7VersionD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !136
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !138  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  store ptr %i.w, ptr %6, align 8, !tbaa !22
  store i8 120, ptr %i.w, align 8, !tbaa !25
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 1, ptr %i.x, align 8, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 0, ptr %i.y, align 1, !tbaa !25
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #22
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 272 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !672 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 280
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !671
  %.not.i.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 3 uses
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !22
  %i.af = load ptr, ptr %6, align 8, !tbaa !28    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.w
  br i1 %i.ag, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.ah = load i64, ptr %i.x, align 8, !tbaa !26  ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.aj, i1 false)
  br label %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !28
  %i.ak = load i64, ptr %i.w, align 8, !tbaa !25
  store i64 %i.ak, ptr %i.ae, align 8, !tbaa !25
  %.pre = load i64, ptr %i.x, align 8, !tbaa !26
  br label %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i

_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.c
  %i.al = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ah, %bb.c ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !26
  store ptr %i.w, ptr %6, align 8, !tbaa !28
  store i64 0, ptr %i.x, align 8, !tbaa !26
  store i8 0, ptr %i.w, align 8, !tbaa !25
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.z) #22
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !672
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store ptr %i.ap, ptr %i.aa, align 8, !tbaa !672
  br label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 264
  invoke void @_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr %i.ab, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit unwind label %bb.at

_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i, %bb.d
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.z) #22
  %i.ar = load ptr, ptr %6, align 8, !tbaa !28    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.w
  br i1 %i.as, label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75: ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit
  %i.at = load i64, ptr %i.w, align 8, !tbaa !25
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #23
  br label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit

_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit:   ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.av = load ptr, ptr %i.k, align 8, !tbaa !136 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.ax, ptr %8, align 8, !tbaa !22
  store i8 120, ptr %i.ax, align 8, !tbaa !25
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 1, ptr %i.ay, align 8, !tbaa !26
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 0, ptr %i.az, align 1, !tbaa !25
  invoke fastcc void @_ZL9make_fpghNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef align 8 %8)
          to label %bb.e unwind label %bb.au

bb.e:                                             ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !621 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !624
  %.not.i.i81 = icmp eq ptr %i.bb, %i.bd
  br i1 %.not.i.i81, label %bb.f, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.e
  %i.be = load i64, ptr %7, align 8, !tbaa !619
  store i64 %i.be, ptr %i.bb, align 8, !tbaa !619
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.bf, ptr %i.ba, align 8, !tbaa !621
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.bg = load ptr, ptr %i.aw, align 8, !tbaa !625 ; 10 uses
  %i.bh = ptrtoint ptr %i.bb to i64               ; 3 uses
  %i.bi = ptrtoint ptr %i.bg to i64               ; 4 uses
  %i.bj = sub i64 %i.bh, %i.bi                    ; 3 uses
  %i.bk = icmp eq i64 %i.bj, 9223372036854775800
  br i1 %i.bk, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc236 unwind label %bb.av

.noexc236:                                        ; preds = %bb.g
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.f
  %i.bl = ashr exact i64 %i.bj, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bl, i64 1)
  %i.bm = add nsw i64 %.sroa.speculated.i.i, %i.bl ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bl
  %i.bo = call i64 @llvm.umin.i64(i64 %i.bm, i64 1152921504606846975)
  %i.bp = select i1 %i.bn, i64 1152921504606846975, i64 %i.bo ; 3 uses
  %.not.i.i235 = icmp ne i64 %i.bp, 0
  call void @llvm.assume(i1 %.not.i.i235)
  %i.bq = shl nuw nsw i64 %i.bp, 3
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #24
          to label %.noexc237 unwind label %bb.av ; 10 uses

.noexc237:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bj
  %i.bt = load i64, ptr %7, align 8, !tbaa !619
  store i64 %i.bt, ptr %i.bs, align 8, !tbaa !619
  %.not10.i.i.i.i = icmp eq ptr %i.bg, %i.bb
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc237
  %39 = sub i64 %i.bh, %i.bi
  %40 = add i64 %39, -8                           ; 2 uses
  %i.bu = lshr i64 %40, 3
  %i.bv = add nuw nsw i64 %i.bu, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %40, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader397, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bw = add i64 %i.bh, -8
  %i.bx = sub i64 %i.bw, %i.bi
  %i.by = and i64 %i.bx, -8
  %i.bz = add i64 %i.by, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.br, i64 %i.bz
  %scevgep393 = getelementptr i8, ptr %i.bg, i64 %i.bz
  %bound0 = icmp ult ptr %i.br, %scevgep393
  %bound1 = icmp ult ptr %i.bg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader397, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bv, 4611686018427387900     ; 3 uses
  %i.ca = shl i64 %n.vec, 3                       ; 2 uses
  %i.cb = getelementptr i8, ptr %i.br, i64 %i.ca  ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bg, i64 %i.ca
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cd = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.br, i64 %i.cd ; 2 uses
  %next.gep394 = getelementptr i8, ptr %i.bg, i64 %i.cd ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !911)
  call void @llvm.experimental.noalias.scope.decl(metadata !914)
  %i.ce = getelementptr i8, ptr %next.gep394, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep394, align 8, !tbaa !619, !alias.scope !916, !noalias !911
  %wide.load395 = load <2 x i64>, ptr %i.ce, align 8, !tbaa !619, !alias.scope !916, !noalias !911
  %i.cf = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !619, !alias.scope !919, !noalias !916
  store <2 x i64> %wide.load395, ptr %i.cf, align 8, !tbaa !619, !alias.scope !919, !noalias !916
  %i.cg = getelementptr i8, ptr %next.gep394, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep394, align 8, !tbaa !619, !alias.scope !916, !noalias !911
  store <2 x ptr> splat (ptr null), ptr %i.cg, align 8, !tbaa !619, !alias.scope !916, !noalias !911
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !921

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bv, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader397

.lr.ph.i.i.i.i.preheader397:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.br, %vector.memcheck ], [ %i.br, %.lr.ph.i.i.i.i.preheader ], [ %i.cb, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph.i.i.i.i.preheader ], [ %i.cc, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader397, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader397 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader397 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !911)
  call void @llvm.experimental.noalias.scope.decl(metadata !914)
  %i.ci = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !914, !noalias !911
  store i64 %i.ci, ptr %.012.i.i.i.i, align 8, !tbaa !619, !alias.scope !911, !noalias !914
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !914, !noalias !911
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cj, %i.bb
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !922

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc237
  %.0.lcssa.i.i.i.i = phi ptr [ %i.br, %.noexc237 ], [ %i.cb, %middle.block ], [ %i.ck, %.lr.ph.i.i.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.bg, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.cm = load ptr, ptr %i.bc, align 8, !tbaa !624
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.co) #23
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.h
  store ptr %i.br, ptr %i.aw, align 8, !tbaa !625
  store ptr %i.cl, ptr %i.ba, align 8, !tbaa !621
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bp
  store ptr %i.cp, ptr %i.bc, align 8, !tbaa !624
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread
  %i.cq = load ptr, ptr %8, align 8, !tbaa !28    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.ax
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit
  %i.cs = load i64, ptr %i.ax, align 8, !tbaa !25
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.cu, ptr %9, align 8, !tbaa !22
  store i8 98, ptr %i.cu, align 8, !tbaa !25
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 1, ptr %i.cv, align 8, !tbaa !26
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 17
  store i8 0, ptr %i.cw, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit91 unwind label %bb.ax

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit91:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr @.str.123, ptr %1, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i92 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i92, align 8, !tbaa !33
  %i.cx = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(36) %10, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %1)
          to label %._crit_edge.i.i95 unwind label %bb.ay

._crit_edge.i.i95:                                ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit91
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !136
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.da = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 11 uses
  store ptr %i.da, ptr %12, align 8, !tbaa !22
  store i8 97, ptr %i.da, align 8, !tbaa !25
  %i.db = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  store i64 1, ptr %i.db, align 8, !tbaa !26
  %i.dc = getelementptr inbounds nuw i8, ptr %12, i64 17
  store i8 0, ptr %i.dc, align 1, !tbaa !25
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 216
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #22
  %i.de = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.de, ptr %11, align 8, !tbaa !22
  %i.df = load ptr, ptr %12, align 8, !tbaa !28   ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.da
  br i1 %i.dg, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

bb.i:                                             ; preds = %._crit_edge.i.i95
  %i.dh = load i64, ptr %i.db, align 8, !tbaa !26 ; 3 uses
  %i.di = icmp ult i64 %i.dh, 16
  call void @llvm.assume(i1 %i.di)
  %i.dj = add nuw nsw i64 %i.dh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.de, ptr noundef nonnull align 8 dereferenceable(1) %i.da, i64 %i.dj, i1 false)
  br label %_ZN14CoreDependencyC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS8_EENS7_18PlatformExpression4ExprE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %._crit_edge.i.i95
  store ptr %i.df, ptr %11, align 8, !tbaa !28
  %i.dk = load i64, ptr %i.da, align 8, !tbaa !25
  store i64 %i.dk, ptr %i.de, align 8, !tbaa !25
  %.pre273 = load i64, ptr %i.db, align 8, !tbaa !26
  br label %_ZN14CoreDependencyC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS8_EENS7_18PlatformExpression4ExprE.exit

_ZN14CoreDependencyC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS8_EENS7_18PlatformExpression4ExprE.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  %i.dl = phi i64 [ %i.dh, %bb.i ], [ %.pre273, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99 ]
  %i.dm = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !26
  store ptr %i.da, ptr %12, align 8, !tbaa !28
  store i64 0, ptr %i.db, align 8, !tbaa !26
  store i8 0, ptr %i.da, align 8, !tbaa !25
  %i.dn = getelementptr inbounds nuw i8, ptr %11, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %11, i64 56
  call void @_ZN5vcpkg18PlatformExpression4ExprC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef nonnull align 8 dereferenceable(8) %14) #22
  %i.dp = getelementptr inbounds nuw i8, ptr %11, i64 64
  store i32 0, ptr %i.dp, align 8, !tbaa !47
  %i.dq = getelementptr inbounds nuw i8, ptr %11, i64 72
  call void @_ZN5vcpkg7VersionC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.dq) #22
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 112
  store i8 0, ptr %i.dr, align 8, !tbaa !50
  %i.ds = getelementptr inbounds nuw i8, ptr %11, i64 113
  %i.dt = getelementptr inbounds nuw i8, ptr %11, i64 120
  store i8 0, ptr %i.ds, align 1, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, i8 0, i64 24, i1 false)
  %i.du = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, ptr noundef nonnull align 8 dereferenceable(144) %11)
          to label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EED2Ev.exit unwind label %bb.az ; 0 uses

_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EED2Ev.exit: ; preds = %_ZN14CoreDependencyC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS8_EENS7_18PlatformExpression4ExprE.exit
  call void @_ZN5vcpkg10DependencyD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %11) #22
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #22
  %.pre274 = load ptr, ptr %12, align 8, !tbaa !28 ; 2 uses
  %i.dv = icmp eq ptr %.pre274, %i.da
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EED2Ev.exit
  %i.dw = load i64, ptr %i.da, align 8, !tbaa !25
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %.pre274, i64 noundef %i.dx) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.dy = load ptr, ptr %10, align 8, !tbaa !28   ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %_ZN5vcpkg7VersionD2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
end_hunk_7
begin_hunk_8_@_ZL21C_A_T_C_H_T_E_S_T_115v:._crit_edge.i.i
  %53 = alloca [1 x %"struct.vcpkg::StringLiteral"], align 8 ; 6 uses
  %54 = alloca %"struct.vcpkg::Version", align 8  ; 6 uses
  %55 = alloca [1 x %"struct.vcpkg::StringLiteral"], align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV29MockVersionedPortfileProvider, i64 16), ptr %5, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.c, ptr %i.e, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.c, ptr %i.f, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 0, ptr %i.g, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.h, ptr %6, align 8, !tbaa !22
  store i8 98, ptr %i.h, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.i, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 0, ptr %i.j, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit unwind label %bb.bu

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit:          ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr @.str.123, ptr %4, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !33
  %i.k = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %4)
          to label %bb.a unwind label %bb.bv      ; 3 uses

bb.a:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.l = load ptr, ptr %7, align 8, !tbaa !28     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN5vcpkg7VersionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.o = load i64, ptr %i.m, align 8, !tbaa !25
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit

_ZN5vcpkg7VersionD2Ev.exit:                       ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.q = load ptr, ptr %6, align 8, !tbaa !28     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.h
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5vcpkg7VersionD2Ev.exit
  %i.s = load i64, ptr %i.h, align 8, !tbaa !25
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5vcpkg7VersionD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !136
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !138  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  store ptr %i.w, ptr %8, align 8, !tbaa !22
  store i8 120, ptr %i.w, align 8, !tbaa !25
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i64 1, ptr %i.x, align 8, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 0, ptr %i.y, align 1, !tbaa !25
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #22
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 272 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !672 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 280
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !671
  %.not.i.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 3 uses
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !22
  %i.af = load ptr, ptr %8, align 8, !tbaa !28    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.w
  br i1 %i.ag, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.ah = load i64, ptr %i.x, align 8, !tbaa !26  ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.aj, i1 false)
  br label %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !28
  %i.ak = load i64, ptr %i.w, align 8, !tbaa !25
  store i64 %i.ak, ptr %i.ae, align 8, !tbaa !25
  %.pre = load i64, ptr %i.x, align 8, !tbaa !26
  br label %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i

_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.c
  %i.al = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ah, %bb.c ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !26
  store ptr %i.w, ptr %8, align 8, !tbaa !28
  store i64 0, ptr %i.x, align 8, !tbaa !26
  store i8 0, ptr %i.w, align 8, !tbaa !25
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.z) #22
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !672
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store ptr %i.ap, ptr %i.aa, align 8, !tbaa !672
  br label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 264
  invoke void @_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr %i.ab, ptr noundef nonnull align 8 dereferenceable(40) %8)
          to label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit unwind label %bb.bw

_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i, %bb.d
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.z) #22
  %i.ar = load ptr, ptr %8, align 8, !tbaa !28    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.w
  br i1 %i.as, label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i135: ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit
  %i.at = load i64, ptr %i.w, align 8, !tbaa !25
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #23
  br label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit

_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit:   ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.av = load ptr, ptr %i.k, align 8, !tbaa !136 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.ax, ptr %10, align 8, !tbaa !22
  store i8 120, ptr %i.ax, align 8, !tbaa !25
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 1, ptr %i.ay, align 8, !tbaa !26
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 17
  store i8 0, ptr %i.az, align 1, !tbaa !25
  invoke fastcc void @_ZL9make_fpghNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef align 8 %10)
          to label %bb.e unwind label %bb.bx

bb.e:                                             ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !621 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !624
  %.not.i.i141 = icmp eq ptr %i.bb, %i.bd
  br i1 %.not.i.i141, label %bb.f, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.e
  %i.be = load i64, ptr %9, align 8, !tbaa !619
  store i64 %i.be, ptr %i.bb, align 8, !tbaa !619
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.bf, ptr %i.ba, align 8, !tbaa !621
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.bg = load ptr, ptr %i.aw, align 8, !tbaa !625 ; 10 uses
  %i.bh = ptrtoint ptr %i.bb to i64               ; 3 uses
  %i.bi = ptrtoint ptr %i.bg to i64               ; 4 uses
  %i.bj = sub i64 %i.bh, %i.bi                    ; 3 uses
  %i.bk = icmp eq i64 %i.bj, 9223372036854775800
  br i1 %i.bk, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc474 unwind label %bb.by

.noexc474:                                        ; preds = %bb.g
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.f
  %i.bl = ashr exact i64 %i.bj, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bl, i64 1)
  %i.bm = add nsw i64 %.sroa.speculated.i.i, %i.bl ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bl
  %i.bo = call i64 @llvm.umin.i64(i64 %i.bm, i64 1152921504606846975)
  %i.bp = select i1 %i.bn, i64 1152921504606846975, i64 %i.bo ; 3 uses
  %.not.i.i473 = icmp ne i64 %i.bp, 0
  call void @llvm.assume(i1 %.not.i.i473)
  %i.bq = shl nuw nsw i64 %i.bp, 3
  %i.br = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #24
          to label %.noexc475 unwind label %bb.by ; 10 uses

.noexc475:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bj
  %i.bt = load i64, ptr %9, align 8, !tbaa !619
  store i64 %i.bt, ptr %i.bs, align 8, !tbaa !619
  %.not10.i.i.i.i = icmp eq ptr %i.bg, %i.bb
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc475
  %56 = sub i64 %i.bh, %i.bi
  %57 = add i64 %56, -8                           ; 2 uses
  %i.bu = lshr i64 %57, 3
  %i.bv = add nuw nsw i64 %i.bu, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %57, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader817, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.bw = add i64 %i.bh, -8
  %i.bx = sub i64 %i.bw, %i.bi
  %i.by = and i64 %i.bx, -8
  %i.bz = add i64 %i.by, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.br, i64 %i.bz
  %scevgep768 = getelementptr i8, ptr %i.bg, i64 %i.bz
  %bound0 = icmp ult ptr %i.br, %scevgep768
  %bound1 = icmp ult ptr %i.bg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader817, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bv, 4611686018427387900     ; 3 uses
  %i.ca = shl i64 %n.vec, 3                       ; 2 uses
  %i.cb = getelementptr i8, ptr %i.br, i64 %i.ca  ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bg, i64 %i.ca
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cd = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.br, i64 %i.cd ; 2 uses
  %next.gep769 = getelementptr i8, ptr %i.bg, i64 %i.cd ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !935)
  call void @llvm.experimental.noalias.scope.decl(metadata !938)
  %i.ce = getelementptr i8, ptr %next.gep769, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep769, align 8, !tbaa !619, !alias.scope !940, !noalias !935
  %wide.load770 = load <2 x i64>, ptr %i.ce, align 8, !tbaa !619, !alias.scope !940, !noalias !935
  %i.cf = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !619, !alias.scope !943, !noalias !940
  store <2 x i64> %wide.load770, ptr %i.cf, align 8, !tbaa !619, !alias.scope !943, !noalias !940
  %i.cg = getelementptr i8, ptr %next.gep769, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep769, align 8, !tbaa !619, !alias.scope !940, !noalias !935
  store <2 x ptr> splat (ptr null), ptr %i.cg, align 8, !tbaa !619, !alias.scope !940, !noalias !935
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !945

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bv, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader817

.lr.ph.i.i.i.i.preheader817:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.br, %vector.memcheck ], [ %i.br, %.lr.ph.i.i.i.i.preheader ], [ %i.cb, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph.i.i.i.i.preheader ], [ %i.cc, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader817, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader817 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader817 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !935)
  call void @llvm.experimental.noalias.scope.decl(metadata !938)
  %i.ci = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !938, !noalias !935
  store i64 %i.ci, ptr %.012.i.i.i.i, align 8, !tbaa !619, !alias.scope !935, !noalias !938
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !938, !noalias !935
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cj, %i.bb
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !946

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc475
  %.0.lcssa.i.i.i.i = phi ptr [ %i.br, %.noexc475 ], [ %i.cb, %middle.block ], [ %i.ck, %.lr.ph.i.i.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.bg, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.cm = load ptr, ptr %i.bc, align 8, !tbaa !624
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = sub i64 %i.cn, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.co) #23
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.h
  store ptr %i.br, ptr %i.aw, align 8, !tbaa !625
  store ptr %i.cl, ptr %i.ba, align 8, !tbaa !621
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bp
  store ptr %i.cp, ptr %i.bc, align 8, !tbaa !624
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread
  %i.cq = load ptr, ptr %10, align 8, !tbaa !28   ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.ax
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit
  %i.cs = load i64, ptr %i.ax, align 8, !tbaa !25
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.cu = load ptr, ptr %i.k, align 8, !tbaa !136
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !947
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 -8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !619
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.cz, ptr %11, align 8, !tbaa !22
  store i8 97, ptr %i.cz, align 8, !tbaa !25
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 1, ptr %i.da, align 8, !tbaa !26
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 17
  store i8 0, ptr %i.db, align 1, !tbaa !25
  %i.dc = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZL14parse_platformN5vcpkg10StringViewE(ptr dead_on_unwind noalias writable align 8 %i.dd, ptr nonnull @.str.416, i64 6)
          to label %bb.i unwind label %bb.ca

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 64
  store i32 0, ptr %i.df, align 8, !tbaa !47
  %i.dg = getelementptr inbounds nuw i8, ptr %11, i64 72
  call void @_ZN5vcpkg7VersionC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.dg) #22
  %i.dh = getelementptr inbounds nuw i8, ptr %11, i64 112
  store i8 0, ptr %i.dh, align 8, !tbaa !50
  %i.di = getelementptr inbounds nuw i8, ptr %11, i64 113
  store i8 1, ptr %i.di, align 1, !tbaa !72
  %i.dj = getelementptr inbounds nuw i8, ptr %11, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i8 0, i64 24, i1 false)
  %i.dk = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef nonnull align 8 dereferenceable(144) %11)
          to label %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit unwind label %bb.cb ; 0 uses

_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.i
  call void @_ZN5vcpkg10DependencyD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.dl, ptr %12, align 8, !tbaa !22
  store i8 97, ptr %i.dl, align 8, !tbaa !25
  %i.dm = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 1, ptr %i.dm, align 8, !tbaa !26
  %i.dn = getelementptr inbounds nuw i8, ptr %12, i64 17
  store i8 0, ptr %i.dn, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %13, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit156 unwind label %bb.cc

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit156:       ; preds = %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr @.str.123, ptr %3, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i157 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i157, align 8, !tbaa !33
  %i.do = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(36) %13, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %3)
          to label %bb.j unwind label %bb.cd      ; 3 uses

bb.j:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit156
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.dp = load ptr, ptr %13, align 8, !tbaa !28   ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZN5vcpkg7VersionD2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i160: ; preds = %bb.j
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !25
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit162

_ZN5vcpkg7VersionD2Ev.exit162:                    ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.du = load ptr, ptr %12, align 8, !tbaa !28   ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.dl
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163: ; preds = %_ZN5vcpkg7VersionD2Ev.exit162
  %i.dw = load i64, ptr %i.dl, align 8, !tbaa !25
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165: ; preds = %_ZN5vcpkg7VersionD2Ev.exit162, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.dy = load ptr, ptr %i.do, align 8, !tbaa !136
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !138 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.ea = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 9 uses
  store ptr %i.ea, ptr %14, align 8, !tbaa !22
  store i8 121, ptr %i.ea, align 8, !tbaa !25
  %i.eb = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store i64 1, ptr %i.eb, align 8, !tbaa !26
  %i.ec = getelementptr inbounds nuw i8, ptr %14, i64 17
  store i8 0, ptr %i.ec, align 1, !tbaa !25
  %i.ed = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ed) #22
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 272 ; 3 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !672 ; 7 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 280
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !671
  %.not.i.i170 = icmp eq ptr %i.ef, %i.eh
  br i1 %.not.i.i170, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 3 uses
  store ptr %i.ei, ptr %i.ef, align 8, !tbaa !22
  %i.ej = load ptr, ptr %14, align 8, !tbaa !28   ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.ea
  br i1 %i.ek, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i171

bb.l:                                             ; preds = %bb.k
  %i.el = load i64, ptr %i.eb, align 8, !tbaa !26 ; 3 uses
  %i.em = icmp ult i64 %i.el, 16
  call void @llvm.assume(i1 %i.em)
  %i.en = add nuw nsw i64 %i.el, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ei, ptr noundef nonnull align 8 dereferenceable(1) %i.ea, i64 %i.en, i1 false)
  br label %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i171: ; preds = %bb.k
  store ptr %i.ej, ptr %i.ef, align 8, !tbaa !28
  %i.eo = load i64, ptr %i.ea, align 8, !tbaa !25
  store i64 %i.eo, ptr %i.ei, align 8, !tbaa !25
  %.pre570 = load i64, ptr %i.eb, align 8, !tbaa !26
  br label %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i172

_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i172: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i171, %bb.l
  %i.ep = phi i64 [ %.pre570, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i171 ], [ %i.el, %bb.l ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !26
  store ptr %i.ea, ptr %14, align 8, !tbaa !28
  store i64 0, ptr %i.eb, align 8, !tbaa !26
  store i8 0, ptr %i.ea, align 8, !tbaa !25
  %i.er = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.er, ptr noundef nonnull align 8 dereferenceable(8) %i.ed) #22
  %i.es = load ptr, ptr %i.ee, align 8, !tbaa !672
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  store ptr %i.et, ptr %i.ee, align 8, !tbaa !672
  br label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit174

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dz, i64 264
  invoke void @_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.eu, ptr %i.ef, ptr noundef nonnull align 8 dereferenceable(40) %14)
          to label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit174 unwind label %bb.ce

_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit174: ; preds = %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i172, %bb.m
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ed) #22
  %i.ev = load ptr, ptr %14, align 8, !tbaa !28   ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %i.ea
  br i1 %i.ew, label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i175: ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit174
  %i.ex = load i64, ptr %i.ea, align 8, !tbaa !25
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.ev, i64 noundef %i.ey) #23
  br label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit177

_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit177: ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit174, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.ez = load ptr, ptr %i.do, align 8, !tbaa !136 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.fb = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.fb, ptr %16, align 8, !tbaa !22
  store i8 121, ptr %i.fb, align 8, !tbaa !25
  %i.fc = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 1, ptr %i.fc, align 8, !tbaa !26
  %i.fd = getelementptr inbounds nuw i8, ptr %16, i64 17
  store i8 0, ptr %i.fd, align 1, !tbaa !25
  invoke fastcc void @_ZL9make_fpghNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %15, ptr noundef align 8 %16)
          to label %bb.n unwind label %bb.cf

bb.n:                                             ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit177
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 3 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !621 ; 6 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ez, i64 24 ; 3 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !624
  %.not.i.i182 = icmp eq ptr %i.ff, %i.fh
  br i1 %.not.i.i182, label %bb.o, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit184.thread

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit184.thread: ; preds = %bb.n
  %i.fi = load i64, ptr %15, align 8, !tbaa !619
  store i64 %i.fi, ptr %i.ff, align 8, !tbaa !619
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store ptr %i.fj, ptr %i.fe, align 8, !tbaa !621
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit187

bb.o:                                             ; preds = %bb.n
  %i.fk = load ptr, ptr %i.fa, align 8, !tbaa !625 ; 10 uses
  %i.fl = ptrtoint ptr %i.ff to i64               ; 3 uses
  %i.fm = ptrtoint ptr %i.fk to i64               ; 4 uses
  %i.fn = sub i64 %i.fl, %i.fm                    ; 3 uses
  %i.fo = icmp eq i64 %i.fn, 9223372036854775800
  br i1 %i.fo, label %bb.p, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i476

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc494 unwind label %bb.cg

.noexc494:                                        ; preds = %bb.p
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i476: ; preds = %bb.o
  %i.fp = ashr exact i64 %i.fn, 3                 ; 3 uses
  %.sroa.speculated.i.i477 = call i64 @llvm.umax.i64(i64 %i.fp, i64 1)
  %i.fq = add nsw i64 %.sroa.speculated.i.i477, %i.fp ; 2 uses
  %i.fr = icmp ult i64 %i.fq, %i.fp
  %i.fs = call i64 @llvm.umin.i64(i64 %i.fq, i64 1152921504606846975)
  %i.ft = select i1 %i.fr, i64 1152921504606846975, i64 %i.fs ; 3 uses
  %.not.i.i478 = icmp ne i64 %i.ft, 0
  call void @llvm.assume(i1 %.not.i.i478)
  %i.fu = shl nuw nsw i64 %i.ft, 3
  %i.fv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fu) #24
          to label %.noexc495 unwind label %bb.cg ; 10 uses

.noexc495:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i476
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fn
  %i.fx = load i64, ptr %15, align 8, !tbaa !619
  store i64 %i.fx, ptr %i.fw, align 8, !tbaa !619
  %.not10.i.i.i.i479 = icmp eq ptr %i.fk, %i.ff
  br i1 %.not10.i.i.i.i479, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i491, label %.lr.ph.i.i.i.i480.preheader

.lr.ph.i.i.i.i480.preheader:                      ; preds = %.noexc495
  %58 = sub i64 %i.fl, %i.fm
  %59 = add i64 %58, -8                           ; 2 uses
  %i.fy = lshr i64 %59, 3
  %i.fz = add nuw nsw i64 %i.fy, 1                ; 2 uses
  %min.iters.check779 = icmp ult i64 %59, 136
  br i1 %min.iters.check779, label %.lr.ph.i.i.i.i480.preheader815, label %vector.memcheck772

vector.memcheck772:                               ; preds = %.lr.ph.i.i.i.i480.preheader
  %i.ga = add i64 %i.fl, -8
  %i.gb = sub i64 %i.ga, %i.fm
  %i.gc = and i64 %i.gb, -8
  %i.gd = add i64 %i.gc, 8                        ; 2 uses
  %scevgep773 = getelementptr i8, ptr %i.fv, i64 %i.gd
  %scevgep774 = getelementptr i8, ptr %i.fk, i64 %i.gd
  %bound0775 = icmp ult ptr %i.fv, %scevgep774
  %bound1776 = icmp ult ptr %i.fk, %scevgep773
  %found.conflict777 = and i1 %bound0775, %bound1776
  br i1 %found.conflict777, label %.lr.ph.i.i.i.i480.preheader815, label %vector.ph780

vector.ph780:                                     ; preds = %vector.memcheck772
  %n.vec781 = and i64 %i.fz, 4611686018427387900  ; 3 uses
  %i.ge = shl i64 %n.vec781, 3                    ; 2 uses
  %i.gf = getelementptr i8, ptr %i.fv, i64 %i.ge  ; 2 uses
  %i.gg = getelementptr i8, ptr %i.fk, i64 %i.ge
  br label %vector.body782

vector.body782:                                   ; preds = %vector.body782, %vector.ph780
  %index783 = phi i64 [ 0, %vector.ph780 ], [ %index.next788, %vector.body782 ] ; 2 uses
  %i.gh = shl i64 %index783, 3                    ; 2 uses
  %next.gep784 = getelementptr i8, ptr %i.fv, i64 %i.gh ; 2 uses
  %next.gep785 = getelementptr i8, ptr %i.fk, i64 %i.gh ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !948)
  call void @llvm.experimental.noalias.scope.decl(metadata !951)
  %i.gi = getelementptr i8, ptr %next.gep785, i64 16
  %wide.load786 = load <2 x i64>, ptr %next.gep785, align 8, !tbaa !619, !alias.scope !953, !noalias !948
  %wide.load787 = load <2 x i64>, ptr %i.gi, align 8, !tbaa !619, !alias.scope !953, !noalias !948
  %i.gj = getelementptr i8, ptr %next.gep784, i64 16
  store <2 x i64> %wide.load786, ptr %next.gep784, align 8, !tbaa !619, !alias.scope !956, !noalias !953
  store <2 x i64> %wide.load787, ptr %i.gj, align 8, !tbaa !619, !alias.scope !956, !noalias !953
  %i.gk = getelementptr i8, ptr %next.gep785, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep785, align 8, !tbaa !619, !alias.scope !953, !noalias !948
  store <2 x ptr> splat (ptr null), ptr %i.gk, align 8, !tbaa !619, !alias.scope !953, !noalias !948
  %index.next788 = add nuw i64 %index783, 4       ; 2 uses
  %i.gl = icmp eq i64 %index.next788, %n.vec781
  br i1 %i.gl, label %middle.block789, label %vector.body782, !llvm.loop !958

middle.block789:                                  ; preds = %vector.body782
  %cmp.n790 = icmp eq i64 %i.fz, %n.vec781
  br i1 %cmp.n790, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i491, label %.lr.ph.i.i.i.i480.preheader815

.lr.ph.i.i.i.i480.preheader815:                   ; preds = %vector.memcheck772, %.lr.ph.i.i.i.i480.preheader, %middle.block789
  %.012.i.i.i.i481.ph = phi ptr [ %i.fv, %vector.memcheck772 ], [ %i.fv, %.lr.ph.i.i.i.i480.preheader ], [ %i.gf, %middle.block789 ]
  %.0911.i.i.i.i482.ph = phi ptr [ %i.fk, %vector.memcheck772 ], [ %i.fk, %.lr.ph.i.i.i.i480.preheader ], [ %i.gg, %middle.block789 ]
  br label %.lr.ph.i.i.i.i480

.lr.ph.i.i.i.i480:                                ; preds = %.lr.ph.i.i.i.i480.preheader815, %.lr.ph.i.i.i.i480
  %.012.i.i.i.i481 = phi ptr [ %i.go, %.lr.ph.i.i.i.i480 ], [ %.012.i.i.i.i481.ph, %.lr.ph.i.i.i.i480.preheader815 ] ; 2 uses
  %.0911.i.i.i.i482 = phi ptr [ %i.gn, %.lr.ph.i.i.i.i480 ], [ %.0911.i.i.i.i482.ph, %.lr.ph.i.i.i.i480.preheader815 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !948)
  call void @llvm.experimental.noalias.scope.decl(metadata !951)
  %i.gm = load i64, ptr %.0911.i.i.i.i482, align 8, !tbaa !619, !alias.scope !951, !noalias !948
  store i64 %i.gm, ptr %.012.i.i.i.i481, align 8, !tbaa !619, !alias.scope !948, !noalias !951
  store ptr null, ptr %.0911.i.i.i.i482, align 8, !tbaa !619, !alias.scope !951, !noalias !948
  %i.gn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i482, i64 8 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i481, i64 8 ; 2 uses
  %.not.i.i.i.i483 = icmp eq ptr %i.gn, %i.ff
  br i1 %.not.i.i.i.i483, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i491, label %.lr.ph.i.i.i.i480, !llvm.loop !959

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i491: ; preds = %.lr.ph.i.i.i.i480, %middle.block789, %.noexc495
  %.0.lcssa.i.i.i.i485 = phi ptr [ %i.fv, %.noexc495 ], [ %i.gf, %middle.block789 ], [ %i.go, %.lr.ph.i.i.i.i480 ]
  %i.gp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i485, i64 8
  %.not.i23.i493 = icmp eq ptr %i.fk, null
  br i1 %.not.i23.i493, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit184, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i491
  %i.gq = load ptr, ptr %i.fg, align 8, !tbaa !624
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = sub i64 %i.gr, %i.fm
  call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef %i.gs) #23
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit184

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit184: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i491, %bb.q
  store ptr %i.fv, ptr %i.fa, align 8, !tbaa !625
  store ptr %i.gp, ptr %i.fe, align 8, !tbaa !621
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.ft
  store ptr %i.gt, ptr %i.fg, align 8, !tbaa !624
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit187

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit187: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit184, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit184.thread
  %i.gu = load ptr, ptr %16, align 8, !tbaa !28   ; 2 uses
  %i.gv = icmp eq ptr %i.gu, %i.fb
  br i1 %i.gv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit187
  %i.gw = load i64, ptr %i.fb, align 8, !tbaa !25
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gx) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit187, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.gy = load ptr, ptr %i.do, align 8, !tbaa !136
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !947
  %i.hb = getelementptr inbounds i8, ptr %i.ha, i64 -8
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !619
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.hd = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  store ptr %i.hd, ptr %17, align 8, !tbaa !22
  store i8 99, ptr %i.hd, align 8, !tbaa !25
  %i.he = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 1, ptr %i.he, align 8, !tbaa !26
  %i.hf = getelementptr inbounds nuw i8, ptr %17, i64 17
  store i8 0, ptr %i.hf, align 1, !tbaa !25
  %i.hg = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %17, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hg, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZL14parse_platformN5vcpkg10StringViewE(ptr dead_on_unwind noalias writable align 8 %i.hh, ptr nonnull @.str.417, i64 5)
          to label %bb.r unwind label %bb.ci

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hc, i64 56
  %i.hj = getelementptr inbounds nuw i8, ptr %17, i64 64
  store i32 0, ptr %i.hj, align 8, !tbaa !47
  %i.hk = getelementptr inbounds nuw i8, ptr %17, i64 72
  call void @_ZN5vcpkg7VersionC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.hk) #22
  %i.hl = getelementptr inbounds nuw i8, ptr %17, i64 112
  store i8 0, ptr %i.hl, align 8, !tbaa !50
  %i.hm = getelementptr inbounds nuw i8, ptr %17, i64 113
  store i8 1, ptr %i.hm, align 1, !tbaa !72
  %i.hn = getelementptr inbounds nuw i8, ptr %17, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hn, i8 0, i64 24, i1 false)
  %i.ho = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.hi, ptr noundef nonnull align 8 dereferenceable(144) %17)
          to label %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit196 unwind label %bb.cj ; 0 uses

_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit196: ; preds = %bb.r
  call void @_ZN5vcpkg10DependencyD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.hp = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.hp, ptr %18, align 8, !tbaa !22
  store i8 99, ptr %i.hp, align 8, !tbaa !25
  %i.hq = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 1, ptr %i.hq, align 8, !tbaa !26
  %i.hr = getelementptr inbounds nuw i8, ptr %18, i64 17
  store i8 0, ptr %i.hr, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %19, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit202 unwind label %bb.ck

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit202:       ; preds = %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit196
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr @.str.123, ptr %2, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i203 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i203, align 8, !tbaa !33
  %i.hs = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(36) %19, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %2)
          to label %bb.s unwind label %bb.cl      ; 3 uses

bb.s:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit202
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ht = load ptr, ptr %19, align 8, !tbaa !28   ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.hv = icmp eq ptr %i.ht, %i.hu
  br i1 %i.hv, label %_ZN5vcpkg7VersionD2Ev.exit208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i206: ; preds = %bb.s
  %i.hw = load i64, ptr %i.hu, align 8, !tbaa !25
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hx) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit208

_ZN5vcpkg7VersionD2Ev.exit208:                    ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i206
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.hy = load ptr, ptr %18, align 8, !tbaa !28   ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %i.hp
  br i1 %i.hz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209: ; preds = %_ZN5vcpkg7VersionD2Ev.exit208
  %i.ia = load i64, ptr %i.hp, align 8, !tbaa !25
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ib) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211: ; preds = %_ZN5vcpkg7VersionD2Ev.exit208, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.ic = load ptr, ptr %i.hs, align 8, !tbaa !136
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !138 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.ie = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 9 uses
  store ptr %i.ie, ptr %20, align 8, !tbaa !22
  store i8 122, ptr %i.ie, align 8, !tbaa !25
  %i.if = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 4 uses
  store i64 1, ptr %i.if, align 8, !tbaa !26
  %i.ig = getelementptr inbounds nuw i8, ptr %20, i64 17
  store i8 0, ptr %i.ig, align 1, !tbaa !25
  %i.ih = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 3 uses
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ih) #22
  %i.ii = getelementptr inbounds nuw i8, ptr %i.id, i64 272 ; 3 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !672 ; 7 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.id, i64 280
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !671
  %.not.i.i216 = icmp eq ptr %i.ij, %i.il
  br i1 %.not.i.i216, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 16 ; 3 uses
  store ptr %i.im, ptr %i.ij, align 8, !tbaa !22
  %i.in = load ptr, ptr %20, align 8, !tbaa !28   ; 2 uses
  %i.io = icmp eq ptr %i.in, %i.ie
  br i1 %i.io, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i217

bb.u:                                             ; preds = %bb.t
  %i.ip = load i64, ptr %i.if, align 8, !tbaa !26 ; 3 uses
  %i.iq = icmp ult i64 %i.ip, 16
  call void @llvm.assume(i1 %i.iq)
  %i.ir = add nuw nsw i64 %i.ip, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.im, ptr noundef nonnull align 8 dereferenceable(1) %i.ie, i64 %i.ir, i1 false)
  br label %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i218

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i217: ; preds = %bb.t
  store ptr %i.in, ptr %i.ij, align 8, !tbaa !28
  %i.is = load i64, ptr %i.ie, align 8, !tbaa !25
  store i64 %i.is, ptr %i.im, align 8, !tbaa !25
  %.pre571 = load i64, ptr %i.if, align 8, !tbaa !26
  br label %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i218

_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i218: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i217, %bb.u
  %i.it = phi i64 [ %.pre571, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i217 ], [ %i.ip, %bb.u ]
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store i64 %i.it, ptr %i.iu, align 8, !tbaa !26
  store ptr %i.ie, ptr %20, align 8, !tbaa !28
  store i64 0, ptr %i.if, align 8, !tbaa !26
  store i8 0, ptr %i.ie, align 8, !tbaa !25
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ij, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.iv, ptr noundef nonnull align 8 dereferenceable(8) %i.ih) #22
  %i.iw = load ptr, ptr %i.ii, align 8, !tbaa !672
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 40
  store ptr %i.ix, ptr %i.ii, align 8, !tbaa !672
  br label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit220

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211
  %i.iy = getelementptr inbounds nuw i8, ptr %i.id, i64 264
  invoke void @_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.iy, ptr %i.ij, ptr noundef nonnull align 8 dereferenceable(40) %20)
          to label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit220 unwind label %bb.cm

_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit220: ; preds = %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i218, %bb.v
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ih) #22
  %i.iz = load ptr, ptr %20, align 8, !tbaa !28   ; 2 uses
  %i.ja = icmp eq ptr %i.iz, %i.ie
  br i1 %i.ja, label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i221

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i221: ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit220
  %i.jb = load i64, ptr %i.ie, align 8, !tbaa !25
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.iz, i64 noundef %i.jc) #23
  br label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit223

_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit223: ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit220, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i221
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %i.jd = load ptr, ptr %i.hs, align 8, !tbaa !136 ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  %i.jf = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  store ptr %i.jf, ptr %22, align 8, !tbaa !22
  store i8 122, ptr %i.jf, align 8, !tbaa !25
  %i.jg = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 1, ptr %i.jg, align 8, !tbaa !26
  %i.jh = getelementptr inbounds nuw i8, ptr %22, i64 17
  store i8 0, ptr %i.jh, align 1, !tbaa !25
  invoke fastcc void @_ZL9make_fpghNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %21, ptr noundef align 8 %22)
          to label %bb.w unwind label %bb.cn

bb.w:                                             ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit223
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 16 ; 3 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !621 ; 6 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jd, i64 24 ; 3 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !624
  %.not.i.i228 = icmp eq ptr %i.jj, %i.jl
  br i1 %.not.i.i228, label %bb.x, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit230.thread

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit230.thread: ; preds = %bb.w
  %i.jm = load i64, ptr %21, align 8, !tbaa !619
  store i64 %i.jm, ptr %i.jj, align 8, !tbaa !619
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store ptr %i.jn, ptr %i.ji, align 8, !tbaa !621
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit233

bb.x:                                             ; preds = %bb.w
  %i.jo = load ptr, ptr %i.je, align 8, !tbaa !625 ; 10 uses
  %i.jp = ptrtoint ptr %i.jj to i64               ; 3 uses
  %i.jq = ptrtoint ptr %i.jo to i64               ; 4 uses
  %i.jr = sub i64 %i.jp, %i.jq                    ; 3 uses
  %i.js = icmp eq i64 %i.jr, 9223372036854775800
  br i1 %i.js, label %bb.y, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i497

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc515 unwind label %bb.co

.noexc515:                                        ; preds = %bb.y
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i497: ; preds = %bb.x
  %i.jt = ashr exact i64 %i.jr, 3                 ; 3 uses
  %.sroa.speculated.i.i498 = call i64 @llvm.umax.i64(i64 %i.jt, i64 1)
  %i.ju = add nsw i64 %.sroa.speculated.i.i498, %i.jt ; 2 uses
  %i.jv = icmp ult i64 %i.ju, %i.jt
  %i.jw = call i64 @llvm.umin.i64(i64 %i.ju, i64 1152921504606846975)
  %i.jx = select i1 %i.jv, i64 1152921504606846975, i64 %i.jw ; 3 uses
  %.not.i.i499 = icmp ne i64 %i.jx, 0
  call void @llvm.assume(i1 %.not.i.i499)
  %i.jy = shl nuw nsw i64 %i.jx, 3
  %i.jz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jy) #24
          to label %.noexc516 unwind label %bb.co ; 10 uses

.noexc516:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i497
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.jr
  %i.kb = load i64, ptr %21, align 8, !tbaa !619
  store i64 %i.kb, ptr %i.ka, align 8, !tbaa !619
  %.not10.i.i.i.i500 = icmp eq ptr %i.jo, %i.jj
  br i1 %.not10.i.i.i.i500, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i512, label %.lr.ph.i.i.i.i501.preheader

.lr.ph.i.i.i.i501.preheader:                      ; preds = %.noexc516
  %60 = sub i64 %i.jp, %i.jq
  %61 = add i64 %60, -8                           ; 2 uses
  %i.kc = lshr i64 %61, 3
  %i.kd = add nuw nsw i64 %i.kc, 1                ; 2 uses
  %min.iters.check800 = icmp ult i64 %61, 136
  br i1 %min.iters.check800, label %.lr.ph.i.i.i.i501.preheader814, label %vector.memcheck793

vector.memcheck793:                               ; preds = %.lr.ph.i.i.i.i501.preheader
  %i.ke = add i64 %i.jp, -8
  %i.kf = sub i64 %i.ke, %i.jq
  %i.kg = and i64 %i.kf, -8
  %i.kh = add i64 %i.kg, 8                        ; 2 uses
  %scevgep794 = getelementptr i8, ptr %i.jz, i64 %i.kh
  %scevgep795 = getelementptr i8, ptr %i.jo, i64 %i.kh
  %bound0796 = icmp ult ptr %i.jz, %scevgep795
  %bound1797 = icmp ult ptr %i.jo, %scevgep794
  %found.conflict798 = and i1 %bound0796, %bound1797
  br i1 %found.conflict798, label %.lr.ph.i.i.i.i501.preheader814, label %vector.ph801

vector.ph801:                                     ; preds = %vector.memcheck793
  %n.vec802 = and i64 %i.kd, 4611686018427387900  ; 3 uses
  %i.ki = shl i64 %n.vec802, 3                    ; 2 uses
  %i.kj = getelementptr i8, ptr %i.jz, i64 %i.ki  ; 2 uses
  %i.kk = getelementptr i8, ptr %i.jo, i64 %i.ki
  br label %vector.body803

vector.body803:                                   ; preds = %vector.body803, %vector.ph801
  %index804 = phi i64 [ 0, %vector.ph801 ], [ %index.next809, %vector.body803 ] ; 2 uses
  %i.kl = shl i64 %index804, 3                    ; 2 uses
  %next.gep805 = getelementptr i8, ptr %i.jz, i64 %i.kl ; 2 uses
  %next.gep806 = getelementptr i8, ptr %i.jo, i64 %i.kl ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !960)
  call void @llvm.experimental.noalias.scope.decl(metadata !963)
  %i.km = getelementptr i8, ptr %next.gep806, i64 16
  %wide.load807 = load <2 x i64>, ptr %next.gep806, align 8, !tbaa !619, !alias.scope !965, !noalias !960
  %wide.load808 = load <2 x i64>, ptr %i.km, align 8, !tbaa !619, !alias.scope !965, !noalias !960
  %i.kn = getelementptr i8, ptr %next.gep805, i64 16
  store <2 x i64> %wide.load807, ptr %next.gep805, align 8, !tbaa !619, !alias.scope !968, !noalias !965
  store <2 x i64> %wide.load808, ptr %i.kn, align 8, !tbaa !619, !alias.scope !968, !noalias !965
  %i.ko = getelementptr i8, ptr %next.gep806, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep806, align 8, !tbaa !619, !alias.scope !965, !noalias !960
  store <2 x ptr> splat (ptr null), ptr %i.ko, align 8, !tbaa !619, !alias.scope !965, !noalias !960
  %index.next809 = add nuw i64 %index804, 4       ; 2 uses
  %i.kp = icmp eq i64 %index.next809, %n.vec802
  br i1 %i.kp, label %middle.block810, label %vector.body803, !llvm.loop !970

middle.block810:                                  ; preds = %vector.body803
  %cmp.n811 = icmp eq i64 %i.kd, %n.vec802
  br i1 %cmp.n811, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i512, label %.lr.ph.i.i.i.i501.preheader814

.lr.ph.i.i.i.i501.preheader814:                   ; preds = %vector.memcheck793, %.lr.ph.i.i.i.i501.preheader, %middle.block810
  %.012.i.i.i.i502.ph = phi ptr [ %i.jz, %vector.memcheck793 ], [ %i.jz, %.lr.ph.i.i.i.i501.preheader ], [ %i.kj, %middle.block810 ]
  %.0911.i.i.i.i503.ph = phi ptr [ %i.jo, %vector.memcheck793 ], [ %i.jo, %.lr.ph.i.i.i.i501.preheader ], [ %i.kk, %middle.block810 ]
  br label %.lr.ph.i.i.i.i501

.lr.ph.i.i.i.i501:                                ; preds = %.lr.ph.i.i.i.i501.preheader814, %.lr.ph.i.i.i.i501
  %.012.i.i.i.i502 = phi ptr [ %i.ks, %.lr.ph.i.i.i.i501 ], [ %.012.i.i.i.i502.ph, %.lr.ph.i.i.i.i501.preheader814 ] ; 2 uses
  %.0911.i.i.i.i503 = phi ptr [ %i.kr, %.lr.ph.i.i.i.i501 ], [ %.0911.i.i.i.i503.ph, %.lr.ph.i.i.i.i501.preheader814 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !960)
  call void @llvm.experimental.noalias.scope.decl(metadata !963)
  %i.kq = load i64, ptr %.0911.i.i.i.i503, align 8, !tbaa !619, !alias.scope !963, !noalias !960
  store i64 %i.kq, ptr %.012.i.i.i.i502, align 8, !tbaa !619, !alias.scope !960, !noalias !963
  store ptr null, ptr %.0911.i.i.i.i503, align 8, !tbaa !619, !alias.scope !963, !noalias !960
  %i.kr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i503, i64 8 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i502, i64 8 ; 2 uses
  %.not.i.i.i.i504 = icmp eq ptr %i.kr, %i.jj
  br i1 %.not.i.i.i.i504, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i512, label %.lr.ph.i.i.i.i501, !llvm.loop !971

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i512: ; preds = %.lr.ph.i.i.i.i501, %middle.block810, %.noexc516
  %.0.lcssa.i.i.i.i506 = phi ptr [ %i.jz, %.noexc516 ], [ %i.kj, %middle.block810 ], [ %i.ks, %.lr.ph.i.i.i.i501 ]
  %i.kt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i506, i64 8
  %.not.i23.i514 = icmp eq ptr %i.jo, null
  br i1 %.not.i23.i514, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit230, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i512
  %i.ku = load ptr, ptr %i.jk, align 8, !tbaa !624
  %i.kv = ptrtoint ptr %i.ku to i64
  %i.kw = sub i64 %i.kv, %i.jq
  call void @_ZdlPvm(ptr noundef nonnull %i.jo, i64 noundef %i.kw) #23
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit230

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit230: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i512, %bb.z
  store ptr %i.jz, ptr %i.je, align 8, !tbaa !625
  store ptr %i.kt, ptr %i.ji, align 8, !tbaa !621
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.jx
  store ptr %i.kx, ptr %i.jk, align 8, !tbaa !624
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit233

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit233: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit230, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit230.thread
  %i.ky = load ptr, ptr %22, align 8, !tbaa !28   ; 2 uses
  %i.kz = icmp eq ptr %i.ky, %i.jf
  br i1 %i.kz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit233
  %i.la = load i64, ptr %i.jf, align 8, !tbaa !25
  %i.lb = add i64 %i.la, 1
  call void @_ZdlPvm(ptr noundef %i.ky, i64 noundef %i.lb) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit233, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  %i.lc = load ptr, ptr %i.hs, align 8, !tbaa !136
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !947
  %i.lf = getelementptr inbounds i8, ptr %i.le, i64 -8
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !619
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  %i.lh = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  store ptr %i.lh, ptr %23, align 8, !tbaa !22
  store i8 100, ptr %i.lh, align 8, !tbaa !25
  %i.li = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 1, ptr %i.li, align 8, !tbaa !26
  %i.lj = getelementptr inbounds nuw i8, ptr %23, i64 17
  store i8 0, ptr %i.lj, align 1, !tbaa !25
  %i.lk = getelementptr inbounds nuw i8, ptr %23, i64 32 ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %23, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lk, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZL14parse_platformN5vcpkg10StringViewE(ptr dead_on_unwind noalias writable align 8 %i.ll, ptr nonnull @.str.417, i64 5)
          to label %bb.aa unwind label %bb.cq

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lg, i64 56
  %i.ln = getelementptr inbounds nuw i8, ptr %23, i64 64
  store i32 0, ptr %i.ln, align 8, !tbaa !47
  %i.lo = getelementptr inbounds nuw i8, ptr %23, i64 72
  call void @_ZN5vcpkg7VersionC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.lo) #22
  %i.lp = getelementptr inbounds nuw i8, ptr %23, i64 112
  store i8 0, ptr %i.lp, align 8, !tbaa !50
  %i.lq = getelementptr inbounds nuw i8, ptr %23, i64 113
  store i8 1, ptr %i.lq, align 1, !tbaa !72
  %i.lr = getelementptr inbounds nuw i8, ptr %23, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lr, i8 0, i64 24, i1 false)
  %i.ls = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.lm, ptr noundef nonnull align 8 dereferenceable(144) %23)
          to label %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit242 unwind label %bb.cr ; 0 uses

_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit242: ; preds = %bb.aa
  call void @_ZN5vcpkg10DependencyD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  %i.lt = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.lt, ptr %24, align 8, !tbaa !22
  store i8 100, ptr %i.lt, align 8, !tbaa !25
  %i.lu = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 1, ptr %i.lu, align 8, !tbaa !26
  %i.lv = getelementptr inbounds nuw i8, ptr %24, i64 17
  store i8 0, ptr %i.lv, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %25, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit248 unwind label %bb.cs

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit248:       ; preds = %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit242
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr @.str.123, ptr %1, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i249 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i249, align 8, !tbaa !33
  %i.lw = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(36) %25, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %1)
          to label %bb.ab unwind label %bb.ct     ; 0 uses

bb.ab:                                            ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit248
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.lx = load ptr, ptr %25, align 8, !tbaa !28   ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.lz = icmp eq ptr %i.lx, %i.ly
  br i1 %i.lz, label %_ZN5vcpkg7VersionD2Ev.exit254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i252: ; preds = %bb.ab
  %i.ma = load i64, ptr %i.ly, align 8, !tbaa !25
  %i.mb = add i64 %i.ma, 1
  call void @_ZdlPvm(ptr noundef %i.lx, i64 noundef %i.mb) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit254

_ZN5vcpkg7VersionD2Ev.exit254:                    ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i252
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  %i.mc = load ptr, ptr %24, align 8, !tbaa !28   ; 2 uses
  %i.md = icmp eq ptr %i.mc, %i.lt
  br i1 %i.md, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255: ; preds = %_ZN5vcpkg7VersionD2Ev.exit254
  %i.me = load i64, ptr %i.lt, align 8, !tbaa !25
  %i.mf = add i64 %i.me, 1
  call void @_ZdlPvm(ptr noundef %i.mc, i64 noundef %i.mf) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257: ; preds = %_ZN5vcpkg7VersionD2Ev.exit254, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5vcpkg4Test20MockCMakeVarProviderE, i64 16), ptr %26, align 8, !tbaa !9
  %i.mg = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %26, i64 56
  store ptr %i.mh, ptr %i.mg, align 8, !tbaa !34
  %i.mi = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i64 1, ptr %i.mi, align 8, !tbaa !42
  %i.mj = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.mk = getelementptr inbounds nuw i8, ptr %26, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mj, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.mk, align 8, !tbaa !43
  %i.ml = getelementptr inbounds nuw i8, ptr %26, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ml, i8 0, i64 16, i1 false)
  %i.mm = getelementptr inbounds nuw i8, ptr %26, i64 64
  %i.mn = getelementptr inbounds nuw i8, ptr %26, i64 112
  store ptr %i.mn, ptr %i.mm, align 8, !tbaa !34
  %i.mo = getelementptr inbounds nuw i8, ptr %26, i64 72
end_hunk_8
begin_hunk_9_@_ZL21C_A_T_C_H_T_E_S_T_117v:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.w = load i64, ptr %i.s, align 8, !tbaa !26   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !26
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !28
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !25
  %.pre.i.i = load ptr, ptr %3, align 8, !tbaa !28
  br label %_ZN5vcpkg7VersionaSEOS0_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.p, ptr %i.l, align 8, !tbaa !28
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !26
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !26
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !25
  store i64 %i.ad, ptr %i.n, align 8, !tbaa !25
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ae = load i64, ptr %i.n, align 8, !tbaa !25
  store ptr %i.p, ptr %i.l, align 8, !tbaa !28
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !26
  %i.ai = load i64, ptr %i.q, align 8, !tbaa !25
  store i64 %i.ai, ptr %i.n, align 8, !tbaa !25
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.m, ptr %3, align 8, !tbaa !28
  store i64 %i.ae, ptr %i.q, align 8, !tbaa !25
  br label %_ZN5vcpkg7VersionaSEOS0_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.q, ptr %3, align 8, !tbaa !28
  br label %_ZN5vcpkg7VersionaSEOS0_.exit

_ZN5vcpkg7VersionaSEOS0_.exit:                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.g, %bb.h
  %i.aj = phi ptr [ %i.m, %bb.g ], [ %i.q, %bb.h ], [ %i.p, %bb.c ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ak, align 8, !tbaa !26
  store i8 0, ptr %i.aj, align 1, !tbaa !25
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.am = load i32, ptr %i.al, align 8, !tbaa !30
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i32 %i.am, ptr %i.an, align 8, !tbaa !30
  %i.ao = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.h
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZN5vcpkg7VersionaSEOS0_.exit
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !25
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5vcpkg7VersionaSEOS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.as = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZN5vcpkg7VersionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = load i64, ptr %i.at, align 8, !tbaa !25
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit

_ZN5vcpkg7VersionD2Ev.exit:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV29MockVersionedPortfileProvider, i64 16), ptr %5, align 8, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i32 0, ptr %i.ax, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr null, ptr %i.ay, align 8, !tbaa !11
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !19
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.ax, ptr %i.ba, align 8, !tbaa !20
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 0, ptr %i.bb, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.bc, ptr %6, align 8, !tbaa !22
  store i8 97, ptr %i.bc, align 8, !tbaa !25
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.bd, align 8, !tbaa !26
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 0, ptr %i.be, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit95 unwind label %bb.at

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit95:        ; preds = %_ZN5vcpkg7VersionD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr @.str.123, ptr %1, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !33
  %i.bf = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef 4, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %1)
          to label %bb.i unwind label %bb.au      ; 4 uses

bb.i:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit95
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.bg = load ptr, ptr %7, align 8, !tbaa !28    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZN5vcpkg7VersionD2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i97: ; preds = %bb.i
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !25
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit99

_ZN5vcpkg7VersionD2Ev.exit99:                     ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.bl = load ptr, ptr %6, align 8, !tbaa !28    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.bc
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %_ZN5vcpkg7VersionD2Ev.exit99
  %i.bn = load i64, ptr %i.bc, align 8, !tbaa !25
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %_ZN5vcpkg7VersionD2Ev.exit99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bp = load ptr, ptr %i.bf, align 8, !tbaa !136 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.br, ptr %9, align 8, !tbaa !22
  store i8 120, ptr %i.br, align 8, !tbaa !25
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 1, ptr %i.bs, align 8, !tbaa !26
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 17
  store i8 0, ptr %i.bt, align 1, !tbaa !25
  invoke fastcc void @_ZL9make_fpghNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef align 8 %9)
          to label %bb.j unwind label %bb.av

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !621 ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 24 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !624
  %.not.i.i107 = icmp eq ptr %i.bv, %i.bx
  br i1 %.not.i.i107, label %bb.k, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.j
  %i.by = load i64, ptr %8, align 8, !tbaa !619
  store i64 %i.by, ptr %i.bv, align 8, !tbaa !619
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.bz, ptr %i.bu, align 8, !tbaa !621
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.ca = load ptr, ptr %i.bq, align 8, !tbaa !625 ; 10 uses
  %i.cb = ptrtoint ptr %i.bv to i64               ; 3 uses
  %i.cc = ptrtoint ptr %i.ca to i64               ; 4 uses
  %i.cd = sub i64 %i.cb, %i.cc                    ; 3 uses
  %i.ce = icmp eq i64 %i.cd, 9223372036854775800
  br i1 %i.ce, label %bb.l, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc218 unwind label %bb.aw

.noexc218:                                        ; preds = %bb.l
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.k
  %i.cf = ashr exact i64 %i.cd, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cf, i64 1)
  %i.cg = add nsw i64 %.sroa.speculated.i.i, %i.cf ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %i.cf
  %i.ci = call i64 @llvm.umin.i64(i64 %i.cg, i64 1152921504606846975)
  %i.cj = select i1 %i.ch, i64 1152921504606846975, i64 %i.ci ; 3 uses
  %.not.i.i217 = icmp ne i64 %i.cj, 0
  call void @llvm.assume(i1 %.not.i.i217)
  %i.ck = shl nuw nsw i64 %i.cj, 3
  %i.cl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #24
          to label %.noexc219 unwind label %bb.aw ; 10 uses

.noexc219:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cd
  %i.cn = load i64, ptr %8, align 8, !tbaa !619
  store i64 %i.cn, ptr %i.cm, align 8, !tbaa !619
  %.not10.i.i.i.i = icmp eq ptr %i.ca, %i.bv
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc219
  %34 = sub i64 %i.cb, %i.cc
  %35 = add i64 %34, -8                           ; 2 uses
  %i.co = lshr i64 %35, 3
  %i.cp = add nuw nsw i64 %i.co, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %35, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader439, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.cq = add i64 %i.cb, -8
  %i.cr = sub i64 %i.cq, %i.cc
  %i.cs = and i64 %i.cr, -8
  %i.ct = add i64 %i.cs, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cl, i64 %i.ct
  %scevgep390 = getelementptr i8, ptr %i.ca, i64 %i.ct
  %bound0 = icmp ult ptr %i.cl, %scevgep390
  %bound1 = icmp ult ptr %i.ca, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader439, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cp, 4611686018427387900     ; 3 uses
  %i.cu = shl i64 %n.vec, 3                       ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cl, i64 %i.cu  ; 2 uses
  %i.cw = getelementptr i8, ptr %i.ca, i64 %i.cu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cx = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cl, i64 %i.cx ; 2 uses
  %next.gep391 = getelementptr i8, ptr %i.ca, i64 %i.cx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !975)
  call void @llvm.experimental.noalias.scope.decl(metadata !978)
  %i.cy = getelementptr i8, ptr %next.gep391, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep391, align 8, !tbaa !619, !alias.scope !980, !noalias !975
  %wide.load392 = load <2 x i64>, ptr %i.cy, align 8, !tbaa !619, !alias.scope !980, !noalias !975
  %i.cz = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !619, !alias.scope !983, !noalias !980
  store <2 x i64> %wide.load392, ptr %i.cz, align 8, !tbaa !619, !alias.scope !983, !noalias !980
  %i.da = getelementptr i8, ptr %next.gep391, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep391, align 8, !tbaa !619, !alias.scope !980, !noalias !975
  store <2 x ptr> splat (ptr null), ptr %i.da, align 8, !tbaa !619, !alias.scope !980, !noalias !975
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !985

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cp, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader439

.lr.ph.i.i.i.i.preheader439:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.cl, %vector.memcheck ], [ %i.cl, %.lr.ph.i.i.i.i.preheader ], [ %i.cv, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ca, %vector.memcheck ], [ %i.ca, %.lr.ph.i.i.i.i.preheader ], [ %i.cw, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader439, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader439 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader439 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !975)
  call void @llvm.experimental.noalias.scope.decl(metadata !978)
  %i.dc = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !978, !noalias !975
  store i64 %i.dc, ptr %.012.i.i.i.i, align 8, !tbaa !619, !alias.scope !975, !noalias !978
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !978, !noalias !975
  %i.dd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dd, %i.bv
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !986

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc219
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cl, %.noexc219 ], [ %i.cv, %middle.block ], [ %i.de, %.lr.ph.i.i.i.i ]
  %i.df = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ca, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.dg = load ptr, ptr %i.bw, align 8, !tbaa !624
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = sub i64 %i.dh, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.di) #23
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.m
  store ptr %i.cl, ptr %i.bq, align 8, !tbaa !625
  store ptr %i.df, ptr %i.bu, align 8, !tbaa !621
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cj
  store ptr %i.dj, ptr %i.bw, align 8, !tbaa !624
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread
  %i.dk = load ptr, ptr %9, align 8, !tbaa !28    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.br
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit
  %i.dm = load i64, ptr %i.br, align 8, !tbaa !25
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.do = load ptr, ptr %i.bf, align 8, !tbaa !136
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !947
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !619
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.du = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 11 uses
  store ptr %i.du, ptr %11, align 8, !tbaa !22
  store i8 97, ptr %i.du, align 8, !tbaa !25
  %i.dv = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i64 1, ptr %i.dv, align 8, !tbaa !26
  %i.dw = getelementptr inbounds nuw i8, ptr %11, i64 17
  store i8 0, ptr %i.dw, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.dx = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.dx, ptr %13, align 8, !tbaa !22
  store i8 121, ptr %i.dx, align 8, !tbaa !25
  %i.dy = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 1, ptr %i.dy, align 8, !tbaa !26
  %i.dz = getelementptr inbounds nuw i8, ptr %13, i64 17
  store i8 0, ptr %i.dz, align 1, !tbaa !25
  %i.ea = getelementptr inbounds nuw i8, ptr %13, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ea) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.eb = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24
          to label %_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i unwind label %.thread ; 5 uses

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  %i.ed = getelementptr inbounds nuw i8, ptr %13, i64 40
  store ptr %i.eb, ptr %12, align 8, !tbaa !670
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 40 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !671
  %i.eg = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN5vcpkg26DependencyRequestedFeatureEPS1_ET0_T_S6_S5_(ptr noundef nonnull %13, ptr noundef nonnull %i.ed, ptr noundef nonnull %i.eb)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef 40) #23
  br label %.body

bb.o:                                             ; preds = %_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #22
  %i.ei = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.ei, ptr %10, align 8, !tbaa !22
  %i.ej = load ptr, ptr %11, align 8, !tbaa !28   ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.du
  br i1 %i.ek, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

bb.p:                                             ; preds = %bb.o
  %i.el = load i64, ptr %i.dv, align 8, !tbaa !26 ; 3 uses
  %i.em = icmp ult i64 %i.el, 16
  call void @llvm.assume(i1 %i.em)
  %i.en = add nuw nsw i64 %i.el, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ei, ptr noundef nonnull align 8 dereferenceable(1) %i.du, i64 %i.en, i1 false)
  br label %_ZN14CoreDependencyC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS8_EENS7_18PlatformExpression4ExprE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %bb.o
  store ptr %i.ej, ptr %10, align 8, !tbaa !28
  %i.eo = load i64, ptr %i.du, align 8, !tbaa !25
  store i64 %i.eo, ptr %i.ei, align 8, !tbaa !25
  %.pre = load i64, ptr %i.dv, align 8, !tbaa !26
  br label %_ZN14CoreDependencyC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS8_EENS7_18PlatformExpression4ExprE.exit

_ZN14CoreDependencyC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS8_EENS7_18PlatformExpression4ExprE.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120
  %i.ep = phi i64 [ %i.el, %bb.p ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ]
  %i.eq = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !26
  store ptr %i.du, ptr %11, align 8, !tbaa !28
  store i64 0, ptr %i.dv, align 8, !tbaa !26
  store i8 0, ptr %i.du, align 8, !tbaa !25
  %i.er = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.eb, ptr %i.er, align 8, !tbaa !670
  %i.es = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %i.eg, ptr %i.es, align 8, !tbaa !672
  %i.et = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr %i.ee, ptr %i.et, align 8, !tbaa !671
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.eu = getelementptr inbounds nuw i8, ptr %10, i64 56
  call void @_ZN5vcpkg18PlatformExpression4ExprC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.eu, ptr noundef nonnull align 8 dereferenceable(8) %14) #22
  %i.ev = getelementptr inbounds nuw i8, ptr %10, i64 64
  store i32 0, ptr %i.ev, align 8, !tbaa !47
  %i.ew = getelementptr inbounds nuw i8, ptr %10, i64 72
  call void @_ZN5vcpkg7VersionC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.ew) #22
  %i.ex = getelementptr inbounds nuw i8, ptr %10, i64 112
  store i8 0, ptr %i.ex, align 8, !tbaa !50
  %i.ey = getelementptr inbounds nuw i8, ptr %10, i64 113
  %i.ez = getelementptr inbounds nuw i8, ptr %10, i64 120
  store i8 0, ptr %i.ey, align 1, !tbaa !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ez, i8 0, i64 24, i1 false)
  %i.fa = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr noundef nonnull align 8 dereferenceable(144) %10)
          to label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EED2Ev.exit unwind label %bb.ay ; 0 uses

_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EED2Ev.exit: ; preds = %_ZN14CoreDependencyC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS8_EENS7_18PlatformExpression4ExprE.exit
  call void @_ZN5vcpkg10DependencyD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %10) #22
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #22
  %i.fb = getelementptr inbounds nuw i8, ptr %13, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fb) #22
  %i.fc = load ptr, ptr %13, align 8, !tbaa !28   ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.fe = icmp eq ptr %i.fc, %i.fd
  br i1 %i.fe, label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i123: ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EED2Ev.exit
  %i.ff = load i64, ptr %i.fd, align 8, !tbaa !25
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fg) #23
  br label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit

_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit:   ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.fh = load ptr, ptr %11, align 8, !tbaa !28   ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.du
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit
  %i.fj = load i64, ptr %i.du, align 8, !tbaa !25
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fk) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.fl = load ptr, ptr %i.bf, align 8, !tbaa !136 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.fn = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.fn, ptr %16, align 8, !tbaa !22
  store i8 121, ptr %i.fn, align 8, !tbaa !25
  %i.fo = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 1, ptr %i.fo, align 8, !tbaa !26
  %i.fp = getelementptr inbounds nuw i8, ptr %16, i64 17
  store i8 0, ptr %i.fp, align 1, !tbaa !25
  invoke fastcc void @_ZL9make_fpghNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %15, ptr noundef align 8 %16)
          to label %bb.q unwind label %bb.az

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 3 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !621 ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fl, i64 24 ; 3 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !624
  %.not.i.i132 = icmp eq ptr %i.fr, %i.ft
  br i1 %.not.i.i132, label %bb.r, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit134.thread

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit134.thread: ; preds = %bb.q
  %i.fu = load i64, ptr %15, align 8, !tbaa !619
  store i64 %i.fu, ptr %i.fr, align 8, !tbaa !619
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store ptr %i.fv, ptr %i.fq, align 8, !tbaa !621
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit137

bb.r:                                             ; preds = %bb.q
  %i.fw = load ptr, ptr %i.fm, align 8, !tbaa !625 ; 10 uses
  %i.fx = ptrtoint ptr %i.fr to i64               ; 3 uses
  %i.fy = ptrtoint ptr %i.fw to i64               ; 4 uses
  %i.fz = sub i64 %i.fx, %i.fy                    ; 3 uses
  %i.ga = icmp eq i64 %i.fz, 9223372036854775800
  br i1 %i.ga, label %bb.s, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i220

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc238 unwind label %bb.ba

.noexc238:                                        ; preds = %bb.s
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i220: ; preds = %bb.r
  %i.gb = ashr exact i64 %i.fz, 3                 ; 3 uses
  %.sroa.speculated.i.i221 = call i64 @llvm.umax.i64(i64 %i.gb, i64 1)
  %i.gc = add nsw i64 %.sroa.speculated.i.i221, %i.gb ; 2 uses
  %i.gd = icmp ult i64 %i.gc, %i.gb
  %i.ge = call i64 @llvm.umin.i64(i64 %i.gc, i64 1152921504606846975)
  %i.gf = select i1 %i.gd, i64 1152921504606846975, i64 %i.ge ; 3 uses
  %.not.i.i222 = icmp ne i64 %i.gf, 0
  call void @llvm.assume(i1 %.not.i.i222)
  %i.gg = shl nuw nsw i64 %i.gf, 3
  %i.gh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gg) #24
          to label %.noexc239 unwind label %bb.ba ; 10 uses

.noexc239:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i220
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.fz
  %i.gj = load i64, ptr %15, align 8, !tbaa !619
  store i64 %i.gj, ptr %i.gi, align 8, !tbaa !619
  %.not10.i.i.i.i223 = icmp eq ptr %i.fw, %i.fr
  br i1 %.not10.i.i.i.i223, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i235, label %.lr.ph.i.i.i.i224.preheader

.lr.ph.i.i.i.i224.preheader:                      ; preds = %.noexc239
  %36 = sub i64 %i.fx, %i.fy
  %37 = add i64 %36, -8                           ; 2 uses
  %i.gk = lshr i64 %37, 3
  %i.gl = add nuw nsw i64 %i.gk, 1                ; 2 uses
  %min.iters.check401 = icmp ult i64 %37, 136
  br i1 %min.iters.check401, label %.lr.ph.i.i.i.i224.preheader437, label %vector.memcheck394

vector.memcheck394:                               ; preds = %.lr.ph.i.i.i.i224.preheader
  %i.gm = add i64 %i.fx, -8
  %i.gn = sub i64 %i.gm, %i.fy
  %i.go = and i64 %i.gn, -8
  %i.gp = add i64 %i.go, 8                        ; 2 uses
  %scevgep395 = getelementptr i8, ptr %i.gh, i64 %i.gp
  %scevgep396 = getelementptr i8, ptr %i.fw, i64 %i.gp
  %bound0397 = icmp ult ptr %i.gh, %scevgep396
  %bound1398 = icmp ult ptr %i.fw, %scevgep395
  %found.conflict399 = and i1 %bound0397, %bound1398
  br i1 %found.conflict399, label %.lr.ph.i.i.i.i224.preheader437, label %vector.ph402

vector.ph402:                                     ; preds = %vector.memcheck394
  %n.vec403 = and i64 %i.gl, 4611686018427387900  ; 3 uses
  %i.gq = shl i64 %n.vec403, 3                    ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gh, i64 %i.gq  ; 2 uses
  %i.gs = getelementptr i8, ptr %i.fw, i64 %i.gq
  br label %vector.body404

vector.body404:                                   ; preds = %vector.body404, %vector.ph402
  %index405 = phi i64 [ 0, %vector.ph402 ], [ %index.next410, %vector.body404 ] ; 2 uses
  %i.gt = shl i64 %index405, 3                    ; 2 uses
  %next.gep406 = getelementptr i8, ptr %i.gh, i64 %i.gt ; 2 uses
  %next.gep407 = getelementptr i8, ptr %i.fw, i64 %i.gt ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !987)
  call void @llvm.experimental.noalias.scope.decl(metadata !990)
  %i.gu = getelementptr i8, ptr %next.gep407, i64 16
  %wide.load408 = load <2 x i64>, ptr %next.gep407, align 8, !tbaa !619, !alias.scope !992, !noalias !987
  %wide.load409 = load <2 x i64>, ptr %i.gu, align 8, !tbaa !619, !alias.scope !992, !noalias !987
  %i.gv = getelementptr i8, ptr %next.gep406, i64 16
  store <2 x i64> %wide.load408, ptr %next.gep406, align 8, !tbaa !619, !alias.scope !995, !noalias !992
  store <2 x i64> %wide.load409, ptr %i.gv, align 8, !tbaa !619, !alias.scope !995, !noalias !992
  %i.gw = getelementptr i8, ptr %next.gep407, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep407, align 8, !tbaa !619, !alias.scope !992, !noalias !987
  store <2 x ptr> splat (ptr null), ptr %i.gw, align 8, !tbaa !619, !alias.scope !992, !noalias !987
  %index.next410 = add nuw i64 %index405, 4       ; 2 uses
  %i.gx = icmp eq i64 %index.next410, %n.vec403
  br i1 %i.gx, label %middle.block411, label %vector.body404, !llvm.loop !997

middle.block411:                                  ; preds = %vector.body404
  %cmp.n412 = icmp eq i64 %i.gl, %n.vec403
  br i1 %cmp.n412, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i235, label %.lr.ph.i.i.i.i224.preheader437

.lr.ph.i.i.i.i224.preheader437:                   ; preds = %vector.memcheck394, %.lr.ph.i.i.i.i224.preheader, %middle.block411
  %.012.i.i.i.i225.ph = phi ptr [ %i.gh, %vector.memcheck394 ], [ %i.gh, %.lr.ph.i.i.i.i224.preheader ], [ %i.gr, %middle.block411 ]
  %.0911.i.i.i.i226.ph = phi ptr [ %i.fw, %vector.memcheck394 ], [ %i.fw, %.lr.ph.i.i.i.i224.preheader ], [ %i.gs, %middle.block411 ]
  br label %.lr.ph.i.i.i.i224

.lr.ph.i.i.i.i224:                                ; preds = %.lr.ph.i.i.i.i224.preheader437, %.lr.ph.i.i.i.i224
  %.012.i.i.i.i225 = phi ptr [ %i.ha, %.lr.ph.i.i.i.i224 ], [ %.012.i.i.i.i225.ph, %.lr.ph.i.i.i.i224.preheader437 ] ; 2 uses
  %.0911.i.i.i.i226 = phi ptr [ %i.gz, %.lr.ph.i.i.i.i224 ], [ %.0911.i.i.i.i226.ph, %.lr.ph.i.i.i.i224.preheader437 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !987)
  call void @llvm.experimental.noalias.scope.decl(metadata !990)
  %i.gy = load i64, ptr %.0911.i.i.i.i226, align 8, !tbaa !619, !alias.scope !990, !noalias !987
  store i64 %i.gy, ptr %.012.i.i.i.i225, align 8, !tbaa !619, !alias.scope !987, !noalias !990
  store ptr null, ptr %.0911.i.i.i.i226, align 8, !tbaa !619, !alias.scope !990, !noalias !987
  %i.gz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i226, i64 8 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i225, i64 8 ; 2 uses
  %.not.i.i.i.i227 = icmp eq ptr %i.gz, %i.fr
  br i1 %.not.i.i.i.i227, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i235, label %.lr.ph.i.i.i.i224, !llvm.loop !998

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i235: ; preds = %.lr.ph.i.i.i.i224, %middle.block411, %.noexc239
  %.0.lcssa.i.i.i.i229 = phi ptr [ %i.gh, %.noexc239 ], [ %i.gr, %middle.block411 ], [ %i.ha, %.lr.ph.i.i.i.i224 ]
  %i.hb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i229, i64 8
  %.not.i23.i237 = icmp eq ptr %i.fw, null
  br i1 %.not.i23.i237, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit134, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i235
  %i.hc = load ptr, ptr %i.fs, align 8, !tbaa !624
  %i.hd = ptrtoint ptr %i.hc to i64
  %i.he = sub i64 %i.hd, %i.fy
  call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.he) #23
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit134

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit134: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i235, %bb.t
  store ptr %i.gh, ptr %i.fm, align 8, !tbaa !625
  store ptr %i.hb, ptr %i.fq, align 8, !tbaa !621
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.gf
  store ptr %i.hf, ptr %i.fs, align 8, !tbaa !624
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit137

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit137: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit134, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit134.thread
  %i.hg = load ptr, ptr %16, align 8, !tbaa !28   ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.fn
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit137
  %i.hi = load i64, ptr %i.fn, align 8, !tbaa !25
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.hk = load ptr, ptr %i.bf, align 8, !tbaa !136 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.hm = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.hm, ptr %18, align 8, !tbaa !22
  store i8 122, ptr %i.hm, align 8, !tbaa !25
  %i.hn = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 1, ptr %i.hn, align 8, !tbaa !26
  %i.ho = getelementptr inbounds nuw i8, ptr %18, i64 17
  store i8 0, ptr %i.ho, align 1, !tbaa !25
  invoke fastcc void @_ZL9make_fpghNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %17, ptr noundef align 8 %18)
          to label %bb.u unwind label %bb.bc

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 16 ; 3 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !621 ; 6 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hk, i64 24 ; 3 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !624
  %.not.i.i145 = icmp eq ptr %i.hq, %i.hs
  br i1 %.not.i.i145, label %bb.v, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit147.thread

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit147.thread: ; preds = %bb.u
  %i.ht = load i64, ptr %17, align 8, !tbaa !619
  store i64 %i.ht, ptr %i.hq, align 8, !tbaa !619
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  store ptr %i.hu, ptr %i.hp, align 8, !tbaa !621
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit150

bb.v:                                             ; preds = %bb.u
  %i.hv = load ptr, ptr %i.hl, align 8, !tbaa !625 ; 10 uses
  %i.hw = ptrtoint ptr %i.hq to i64               ; 3 uses
  %i.hx = ptrtoint ptr %i.hv to i64               ; 4 uses
  %i.hy = sub i64 %i.hw, %i.hx                    ; 3 uses
  %i.hz = icmp eq i64 %i.hy, 9223372036854775800
  br i1 %i.hz, label %bb.w, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i241

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc259 unwind label %bb.bd

.noexc259:                                        ; preds = %bb.w
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i241: ; preds = %bb.v
  %i.ia = ashr exact i64 %i.hy, 3                 ; 3 uses
  %.sroa.speculated.i.i242 = call i64 @llvm.umax.i64(i64 %i.ia, i64 1)
  %i.ib = add nsw i64 %.sroa.speculated.i.i242, %i.ia ; 2 uses
  %i.ic = icmp ult i64 %i.ib, %i.ia
  %i.id = call i64 @llvm.umin.i64(i64 %i.ib, i64 1152921504606846975)
  %i.ie = select i1 %i.ic, i64 1152921504606846975, i64 %i.id ; 3 uses
  %.not.i.i243 = icmp ne i64 %i.ie, 0
  call void @llvm.assume(i1 %.not.i.i243)
  %i.if = shl nuw nsw i64 %i.ie, 3
  %i.ig = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.if) #24
          to label %.noexc260 unwind label %bb.bd ; 10 uses

.noexc260:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i241
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.hy
  %i.ii = load i64, ptr %17, align 8, !tbaa !619
  store i64 %i.ii, ptr %i.ih, align 8, !tbaa !619
  %.not10.i.i.i.i244 = icmp eq ptr %i.hv, %i.hq
  br i1 %.not10.i.i.i.i244, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i256, label %.lr.ph.i.i.i.i245.preheader

.lr.ph.i.i.i.i245.preheader:                      ; preds = %.noexc260
  %38 = sub i64 %i.hw, %i.hx
  %39 = add i64 %38, -8                           ; 2 uses
  %i.ij = lshr i64 %39, 3
  %i.ik = add nuw nsw i64 %i.ij, 1                ; 2 uses
  %min.iters.check422 = icmp ult i64 %39, 136
  br i1 %min.iters.check422, label %.lr.ph.i.i.i.i245.preheader436, label %vector.memcheck415

vector.memcheck415:                               ; preds = %.lr.ph.i.i.i.i245.preheader
  %i.il = add i64 %i.hw, -8
  %i.im = sub i64 %i.il, %i.hx
  %i.in = and i64 %i.im, -8
  %i.io = add i64 %i.in, 8                        ; 2 uses
  %scevgep416 = getelementptr i8, ptr %i.ig, i64 %i.io
  %scevgep417 = getelementptr i8, ptr %i.hv, i64 %i.io
  %bound0418 = icmp ult ptr %i.ig, %scevgep417
  %bound1419 = icmp ult ptr %i.hv, %scevgep416
  %found.conflict420 = and i1 %bound0418, %bound1419
  br i1 %found.conflict420, label %.lr.ph.i.i.i.i245.preheader436, label %vector.ph423

vector.ph423:                                     ; preds = %vector.memcheck415
  %n.vec424 = and i64 %i.ik, 4611686018427387900  ; 3 uses
  %i.ip = shl i64 %n.vec424, 3                    ; 2 uses
  %i.iq = getelementptr i8, ptr %i.ig, i64 %i.ip  ; 2 uses
  %i.ir = getelementptr i8, ptr %i.hv, i64 %i.ip
  br label %vector.body425

vector.body425:                                   ; preds = %vector.body425, %vector.ph423
  %index426 = phi i64 [ 0, %vector.ph423 ], [ %index.next431, %vector.body425 ] ; 2 uses
  %i.is = shl i64 %index426, 3                    ; 2 uses
  %next.gep427 = getelementptr i8, ptr %i.ig, i64 %i.is ; 2 uses
  %next.gep428 = getelementptr i8, ptr %i.hv, i64 %i.is ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !999)
  call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  %i.it = getelementptr i8, ptr %next.gep428, i64 16
  %wide.load429 = load <2 x i64>, ptr %next.gep428, align 8, !tbaa !619, !alias.scope !1004, !noalias !999
  %wide.load430 = load <2 x i64>, ptr %i.it, align 8, !tbaa !619, !alias.scope !1004, !noalias !999
  %i.iu = getelementptr i8, ptr %next.gep427, i64 16
  store <2 x i64> %wide.load429, ptr %next.gep427, align 8, !tbaa !619, !alias.scope !1007, !noalias !1004
  store <2 x i64> %wide.load430, ptr %i.iu, align 8, !tbaa !619, !alias.scope !1007, !noalias !1004
  %i.iv = getelementptr i8, ptr %next.gep428, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep428, align 8, !tbaa !619, !alias.scope !1004, !noalias !999
  store <2 x ptr> splat (ptr null), ptr %i.iv, align 8, !tbaa !619, !alias.scope !1004, !noalias !999
  %index.next431 = add nuw i64 %index426, 4       ; 2 uses
  %i.iw = icmp eq i64 %index.next431, %n.vec424
  br i1 %i.iw, label %middle.block432, label %vector.body425, !llvm.loop !1009

middle.block432:                                  ; preds = %vector.body425
  %cmp.n433 = icmp eq i64 %i.ik, %n.vec424
  br i1 %cmp.n433, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i256, label %.lr.ph.i.i.i.i245.preheader436

.lr.ph.i.i.i.i245.preheader436:                   ; preds = %vector.memcheck415, %.lr.ph.i.i.i.i245.preheader, %middle.block432
  %.012.i.i.i.i246.ph = phi ptr [ %i.ig, %vector.memcheck415 ], [ %i.ig, %.lr.ph.i.i.i.i245.preheader ], [ %i.iq, %middle.block432 ]
  %.0911.i.i.i.i247.ph = phi ptr [ %i.hv, %vector.memcheck415 ], [ %i.hv, %.lr.ph.i.i.i.i245.preheader ], [ %i.ir, %middle.block432 ]
  br label %.lr.ph.i.i.i.i245

.lr.ph.i.i.i.i245:                                ; preds = %.lr.ph.i.i.i.i245.preheader436, %.lr.ph.i.i.i.i245
  %.012.i.i.i.i246 = phi ptr [ %i.iz, %.lr.ph.i.i.i.i245 ], [ %.012.i.i.i.i246.ph, %.lr.ph.i.i.i.i245.preheader436 ] ; 2 uses
  %.0911.i.i.i.i247 = phi ptr [ %i.iy, %.lr.ph.i.i.i.i245 ], [ %.0911.i.i.i.i247.ph, %.lr.ph.i.i.i.i245.preheader436 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !999)
  call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  %i.ix = load i64, ptr %.0911.i.i.i.i247, align 8, !tbaa !619, !alias.scope !1002, !noalias !999
  store i64 %i.ix, ptr %.012.i.i.i.i246, align 8, !tbaa !619, !alias.scope !999, !noalias !1002
  store ptr null, ptr %.0911.i.i.i.i247, align 8, !tbaa !619, !alias.scope !1002, !noalias !999
  %i.iy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i247, i64 8 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i246, i64 8 ; 2 uses
  %.not.i.i.i.i248 = icmp eq ptr %i.iy, %i.hq
  br i1 %.not.i.i.i.i248, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i256, label %.lr.ph.i.i.i.i245, !llvm.loop !1010

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i256: ; preds = %.lr.ph.i.i.i.i245, %middle.block432, %.noexc260
  %.0.lcssa.i.i.i.i250 = phi ptr [ %i.ig, %.noexc260 ], [ %i.iq, %middle.block432 ], [ %i.iz, %.lr.ph.i.i.i.i245 ]
  %i.ja = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i250, i64 8
  %.not.i23.i258 = icmp eq ptr %i.hv, null
  br i1 %.not.i23.i258, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit147, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i256
  %i.jb = load ptr, ptr %i.hr, align 8, !tbaa !624
  %i.jc = ptrtoint ptr %i.jb to i64
  %i.jd = sub i64 %i.jc, %i.hx
  call void @_ZdlPvm(ptr noundef nonnull %i.hv, i64 noundef %i.jd) #23
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit147

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit147: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i256, %bb.x
  store ptr %i.ig, ptr %i.hl, align 8, !tbaa !625
  store ptr %i.ja, ptr %i.hp, align 8, !tbaa !621
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %i.ie
  store ptr %i.je, ptr %i.hr, align 8, !tbaa !624
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit150

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit150: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit147, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit147.thread
  %i.jf = load ptr, ptr %18, align 8, !tbaa !28   ; 2 uses
  %i.jg = icmp eq ptr %i.jf, %i.hm
  br i1 %i.jg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit150
  %i.jh = load i64, ptr %i.hm, align 8, !tbaa !25
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.ji) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5vcpkg4Test20MockCMakeVarProviderE, i64 16), ptr %19, align 8, !tbaa !9
  %i.jj = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.jk = getelementptr inbounds nuw i8, ptr %19, i64 56
  store ptr %i.jk, ptr %i.jj, align 8, !tbaa !34
  %i.jl = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 1, ptr %i.jl, align 8, !tbaa !42
  %i.jm = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.jn = getelementptr inbounds nuw i8, ptr %19, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jm, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.jn, align 8, !tbaa !43
  %i.jo = getelementptr inbounds nuw i8, ptr %19, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jo, i8 0, i64 16, i1 false)
  %i.jp = getelementptr inbounds nuw i8, ptr %19, i64 64
  %i.jq = getelementptr inbounds nuw i8, ptr %19, i64 112
  store ptr %i.jq, ptr %i.jp, align 8, !tbaa !34
  %i.jr = getelementptr inbounds nuw i8, ptr %19, i64 72
  store i64 1, ptr %i.jr, align 8, !tbaa !42
  %i.js = getelementptr inbounds nuw i8, ptr %19, i64 80
  %i.jt = getelementptr inbounds nuw i8, ptr %19, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.js, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.jt, align 8, !tbaa !43
  %i.ju = getelementptr inbounds nuw i8, ptr %19, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ju, i8 0, i64 16, i1 false)
  %i.jv = getelementptr inbounds nuw i8, ptr %19, i64 120
  %i.jw = getelementptr inbounds nuw i8, ptr %19, i64 168
  store ptr %i.jw, ptr %i.jv, align 8, !tbaa !44
  %i.jx = getelementptr inbounds nuw i8, ptr %19, i64 128
  store i64 1, ptr %i.jx, align 8, !tbaa !46
  %i.jy = getelementptr inbounds nuw i8, ptr %19, i64 136
  %i.jz = getelementptr inbounds nuw i8, ptr %19, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jy, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.jz, align 8, !tbaa !43
  %i.ka = getelementptr inbounds nuw i8, ptr %19, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ka, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  %i.kb = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  store ptr %i.kb, ptr %23, align 8, !tbaa !22
  store i8 97, ptr %i.kb, align 8, !tbaa !25
  %i.kc = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 1, ptr %i.kc, align 8, !tbaa !26
  %i.kd = getelementptr inbounds nuw i8, ptr %23, i64 17
  store i8 0, ptr %i.kd, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  %i.ke = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  store ptr %i.ke, ptr %24, align 8, !tbaa !22
  store i8 120, ptr %i.ke, align 8, !tbaa !25
  %i.kf = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 1, ptr %i.kf, align 8, !tbaa !26
  %i.kg = getelementptr inbounds nuw i8, ptr %24, i64 17
  store i8 0, ptr %i.kg, align 1, !tbaa !25
  %i.kh = getelementptr inbounds nuw i8, ptr %23, i64 32 ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %24, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ki) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kh, i8 0, i64 24, i1 false)
  %i.kj = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24
          to label %_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i164 unwind label %bb.y ; 3 uses

_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i164: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  %i.kk = getelementptr inbounds nuw i8, ptr %24, i64 40
  store ptr %i.kj, ptr %i.kh, align 8, !tbaa !670
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 40
  %i.km = getelementptr inbounds nuw i8, ptr %23, i64 48
  store ptr %i.kl, ptr %i.km, align 8, !tbaa !671
  %i.kn = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN5vcpkg26DependencyRequestedFeatureEPS1_ET0_T_S6_S5_(ptr noundef nonnull %24, ptr noundef nonnull %i.kk, ptr noundef nonnull %i.kj)
          to label %bb.aa unwind label %bb.y

bb.y:                                             ; preds = %_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  %i.ko = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kp = load ptr, ptr %i.kh, align 8, !tbaa !670 ; 3 uses
  %.not.i.i5.i162 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i5.i162, label %bb.bg, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.kq = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !671
  %i.ks = ptrtoint ptr %i.kr to i64
  %i.kt = ptrtoint ptr %i.kp to i64
  %i.ku = sub i64 %i.ks, %i.kt
  call void @_ZdlPvm(ptr noundef nonnull %i.kp, i64 noundef %i.ku) #23
  br label %bb.bg

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i164
  %i.kv = getelementptr inbounds nuw i8, ptr %23, i64 40
  store ptr %i.kn, ptr %i.kv, align 8, !tbaa !672
  %i.kw = getelementptr inbounds nuw i8, ptr %23, i64 56
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.kw) #22
  %i.kx = getelementptr inbounds nuw i8, ptr %23, i64 64
  store i32 0, ptr %i.kx, align 8, !tbaa !47
  %i.ky = getelementptr inbounds nuw i8, ptr %23, i64 72
  call void @_ZN5vcpkg7VersionC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.ky) #22
  %i.kz = getelementptr inbounds nuw i8, ptr %23, i64 112
  store i8 0, ptr %i.kz, align 8, !tbaa !50
  %i.la = getelementptr inbounds nuw i8, ptr %23, i64 113
  store i8 1, ptr %i.la, align 1, !tbaa !72
  %i.lb = getelementptr inbounds nuw i8, ptr %23, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lb, i8 0, i64 24, i1 false)
end_hunk_9
begin_hunk_10_@_ZL21C_A_T_C_H_T_E_S_T_119v:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.u = load i64, ptr %i.q, align 8, !tbaa !26   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !26
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !25
  %.pre.i.i = load ptr, ptr %5, align 8, !tbaa !28
  br label %_ZN5vcpkg7VersionaSEOS0_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.n, ptr %i.j, align 8, !tbaa !28
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !26
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !26
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !25
  store i64 %i.ab, ptr %i.l, align 8, !tbaa !25
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ac = load i64, ptr %i.l, align 8, !tbaa !25
  store ptr %i.n, ptr %i.j, align 8, !tbaa !28
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !26
  %i.ag = load i64, ptr %i.o, align 8, !tbaa !25
  store i64 %i.ag, ptr %i.l, align 8, !tbaa !25
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.k, ptr %5, align 8, !tbaa !28
  store i64 %i.ac, ptr %i.o, align 8, !tbaa !25
  br label %_ZN5vcpkg7VersionaSEOS0_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.o, ptr %5, align 8, !tbaa !28
  br label %_ZN5vcpkg7VersionaSEOS0_.exit

_ZN5vcpkg7VersionaSEOS0_.exit:                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.g, %bb.h
  %i.ah = phi ptr [ %i.k, %bb.g ], [ %i.o, %bb.h ], [ %i.n, %bb.c ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.ai, align 8, !tbaa !26
  store i8 0, ptr %i.ah, align 1, !tbaa !25
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !30
  %i.am = load ptr, ptr %6, align 8, !tbaa !28    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.f
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %_ZN5vcpkg7VersionaSEOS0_.exit
  %i.ao = load i64, ptr %i.f, align 8, !tbaa !25
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5vcpkg7VersionaSEOS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.aq = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZN5vcpkg7VersionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !25
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit

_ZN5vcpkg7VersionD2Ev.exit:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV29MockVersionedPortfileProvider, i64 16), ptr %7, align 8, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store i32 0, ptr %i.av, align 8, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr null, ptr %i.aw, align 8, !tbaa !11
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %i.av, ptr %i.ay, align 8, !tbaa !20
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i64 0, ptr %i.az, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.ba, ptr %8, align 8, !tbaa !22
  store i8 97, ptr %i.ba, align 8, !tbaa !25
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 1, ptr %i.bb, align 8, !tbaa !26
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 0, ptr %i.bc, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit70 unwind label %bb.ab

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit70:        ; preds = %_ZN5vcpkg7VersionD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr @.str.123, ptr %3, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !33
  %i.bd = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(36) %9, i32 noundef 4, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %3)
          to label %bb.i unwind label %bb.ac

bb.i:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.be = load ptr, ptr %9, align 8, !tbaa !28    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZN5vcpkg7VersionD2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72: ; preds = %bb.i
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !25
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit74

_ZN5vcpkg7VersionD2Ev.exit74:                     ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.bj = load ptr, ptr %8, align 8, !tbaa !28    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.ba
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %_ZN5vcpkg7VersionD2Ev.exit74
  %i.bl = load i64, ptr %i.ba, align 8, !tbaa !25
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %_ZN5vcpkg7VersionD2Ev.exit74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.bn = load ptr, ptr %i.bd, align 8, !tbaa !136 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.bp, ptr %11, align 8, !tbaa !22
  store i8 120, ptr %i.bp, align 8, !tbaa !25
  %i.bq = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 1, ptr %i.bq, align 8, !tbaa !26
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 17
  store i8 0, ptr %i.br, align 1, !tbaa !25
  invoke fastcc void @_ZL9make_fpghNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %10, ptr noundef align 8 %11)
          to label %bb.j unwind label %bb.ad

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !621 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !624
  %.not.i.i82 = icmp eq ptr %i.bt, %i.bv
  br i1 %.not.i.i82, label %bb.k, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.j
  %i.bw = load i64, ptr %10, align 8, !tbaa !619
  store i64 %i.bw, ptr %i.bt, align 8, !tbaa !619
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.bx, ptr %i.bs, align 8, !tbaa !621
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.by = load ptr, ptr %i.bo, align 8, !tbaa !625 ; 10 uses
  %i.bz = ptrtoint ptr %i.bt to i64               ; 3 uses
  %i.ca = ptrtoint ptr %i.by to i64               ; 4 uses
  %i.cb = sub i64 %i.bz, %i.ca                    ; 3 uses
  %i.cc = icmp eq i64 %i.cb, 9223372036854775800
  br i1 %i.cc, label %bb.l, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc123 unwind label %bb.ae

.noexc123:                                        ; preds = %bb.l
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.k
  %i.cd = ashr exact i64 %i.cb, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cd, i64 1)
  %i.ce = add nsw i64 %.sroa.speculated.i.i, %i.cd ; 2 uses
  %i.cf = icmp ult i64 %i.ce, %i.cd
  %i.cg = call i64 @llvm.umin.i64(i64 %i.ce, i64 1152921504606846975)
  %i.ch = select i1 %i.cf, i64 1152921504606846975, i64 %i.cg ; 3 uses
  %.not.i.i122 = icmp ne i64 %i.ch, 0
  call void @llvm.assume(i1 %.not.i.i122)
  %i.ci = shl nuw nsw i64 %i.ch, 3
  %i.cj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #24
          to label %.noexc124 unwind label %bb.ae ; 10 uses

.noexc124:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cb
  %i.cl = load i64, ptr %10, align 8, !tbaa !619
  store i64 %i.cl, ptr %i.ck, align 8, !tbaa !619
  %.not10.i.i.i.i = icmp eq ptr %i.by, %i.bt
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc124
  %25 = sub i64 %i.bz, %i.ca
  %26 = add i64 %25, -8                           ; 2 uses
  %i.cm = lshr i64 %26, 3
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %26, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader204, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.co = add i64 %i.bz, -8
  %i.cp = sub i64 %i.co, %i.ca
  %i.cq = and i64 %i.cp, -8
  %i.cr = add i64 %i.cq, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cj, i64 %i.cr
  %scevgep200 = getelementptr i8, ptr %i.by, i64 %i.cr
  %bound0 = icmp ult ptr %i.cj, %scevgep200
  %bound1 = icmp ult ptr %i.by, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader204, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cn, 4611686018427387900     ; 3 uses
  %i.cs = shl i64 %n.vec, 3                       ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cj, i64 %i.cs  ; 2 uses
  %i.cu = getelementptr i8, ptr %i.by, i64 %i.cs
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cv = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cj, i64 %i.cv ; 2 uses
  %next.gep201 = getelementptr i8, ptr %i.by, i64 %i.cv ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  %i.cw = getelementptr i8, ptr %next.gep201, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep201, align 8, !tbaa !619, !alias.scope !1020, !noalias !1015
  %wide.load202 = load <2 x i64>, ptr %i.cw, align 8, !tbaa !619, !alias.scope !1020, !noalias !1015
  %i.cx = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !619, !alias.scope !1023, !noalias !1020
  store <2 x i64> %wide.load202, ptr %i.cx, align 8, !tbaa !619, !alias.scope !1023, !noalias !1020
  %i.cy = getelementptr i8, ptr %next.gep201, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep201, align 8, !tbaa !619, !alias.scope !1020, !noalias !1015
  store <2 x ptr> splat (ptr null), ptr %i.cy, align 8, !tbaa !619, !alias.scope !1020, !noalias !1015
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !1025

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cn, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader204

.lr.ph.i.i.i.i.preheader204:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.cj, %vector.memcheck ], [ %i.cj, %.lr.ph.i.i.i.i.preheader ], [ %i.ct, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.by, %vector.memcheck ], [ %i.by, %.lr.ph.i.i.i.i.preheader ], [ %i.cu, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader204, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader204 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.db, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader204 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  %i.da = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !1018, !noalias !1015
  store i64 %i.da, ptr %.012.i.i.i.i, align 8, !tbaa !619, !alias.scope !1015, !noalias !1018
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !1018, !noalias !1015
  %i.db = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.db, %i.bt
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1026

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc124
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cj, %.noexc124 ], [ %i.ct, %middle.block ], [ %i.dc, %.lr.ph.i.i.i.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.by, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.de = load ptr, ptr %i.bu, align 8, !tbaa !624
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = sub i64 %i.df, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.dg) #23
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.m
  store ptr %i.cj, ptr %i.bo, align 8, !tbaa !625
  store ptr %i.dd, ptr %i.bs, align 8, !tbaa !621
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ch
  store ptr %i.dh, ptr %i.bu, align 8, !tbaa !624
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread
  %i.di = load ptr, ptr %11, align 8, !tbaa !28   ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.bp
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit
  %i.dk = load i64, ptr %i.bp, align 8, !tbaa !25
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.dm = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  store ptr %i.dm, ptr %14, align 8, !tbaa !22
  store i8 97, ptr %i.dm, align 8, !tbaa !25
  %i.dn = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 1, ptr %i.dn, align 8, !tbaa !26
  %i.do = getelementptr inbounds nuw i8, ptr %14, i64 17
  store i8 0, ptr %i.do, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.dp = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store ptr %i.dp, ptr %15, align 8, !tbaa !22
  store i8 121, ptr %i.dp, align 8, !tbaa !25
  %i.dq = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 1, ptr %i.dq, align 8, !tbaa !26
  %i.dr = getelementptr inbounds nuw i8, ptr %15, i64 17
  store i8 0, ptr %i.dr, align 1, !tbaa !25
  %i.ds = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %15, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.dt) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, i8 0, i64 24, i1 false)
  %i.du = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24
          to label %_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i unwind label %bb.n ; 3 uses

_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %i.dv = getelementptr inbounds nuw i8, ptr %15, i64 40
  store ptr %i.du, ptr %i.ds, align 8, !tbaa !670
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 40
  %i.dx = getelementptr inbounds nuw i8, ptr %14, i64 48
  store ptr %i.dw, ptr %i.dx, align 8, !tbaa !671
  %i.dy = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN5vcpkg26DependencyRequestedFeatureEPS1_ET0_T_S6_S5_(ptr noundef nonnull %15, ptr noundef nonnull %i.dv, ptr noundef nonnull %i.du)
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ea = load ptr, ptr %i.ds, align 8, !tbaa !670 ; 3 uses
  %.not.i.i5.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i5.i, label %bb.ah, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eb = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !671
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = ptrtoint ptr %i.ea to i64
  %i.ef = sub i64 %i.ed, %i.ee
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.ef) #23
  br label %bb.ah

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %14, i64 40
  store ptr %i.dy, ptr %i.eg, align 8, !tbaa !672
  %i.eh = getelementptr inbounds nuw i8, ptr %14, i64 56
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.eh) #22
  %i.ei = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i32 0, ptr %i.ei, align 8, !tbaa !47
  %i.ej = getelementptr inbounds nuw i8, ptr %14, i64 72
  call void @_ZN5vcpkg7VersionC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.ej) #22
  %i.ek = getelementptr inbounds nuw i8, ptr %14, i64 112
  store i8 0, ptr %i.ek, align 8, !tbaa !50
  %i.el = getelementptr inbounds nuw i8, ptr %14, i64 113
  store i8 1, ptr %i.el, align 1, !tbaa !72
  %i.em = getelementptr inbounds nuw i8, ptr %14, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.em, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.en = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #24
          to label %.noexc126 unwind label %.body127.thread ; 3 uses

.noexc126:                                        ; preds = %bb.p
  store ptr %i.en, ptr %13, align 8, !tbaa !73
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 144 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !76
  invoke void @_ZN5vcpkg10DependencyC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(144) %i.en, ptr noundef nonnull align 8 dereferenceable(144) %14)
          to label %_ZSt10_ConstructIN5vcpkg10DependencyEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %_ZSt8_DestroyIPN5vcpkg10DependencyEEvT_S3_.exit.i.i.i.i.i

_ZSt10_ConstructIN5vcpkg10DependencyEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc126
  %i.eq = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr %i.eo, ptr %i.eq, align 8, !tbaa !77
  invoke fastcc void @_ZL29create_versioned_install_planR29MockVersionedPortfileProviderR20MockBaselineProviderSt6vectorIN5vcpkg10DependencyESaIS5_EE(ptr dead_on_unwind noalias writable align 8 %12, ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef align 8 %13)
          to label %bb.u unwind label %bb.ag

_ZSt8_DestroyIPN5vcpkg10DependencyEEvT_S3_.exit.i.i.i.i.i: ; preds = %.noexc126
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  %i.et = call ptr @__cxa_begin_catch(ptr %i.es) #22 ; 0 uses
  invoke void @__cxa_rethrow() #25
          to label %bb.s unwind label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPN5vcpkg10DependencyEEvT_S3_.exit.i.i.i.i.i
  %i.eu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body127 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ev = landingpad { ptr, i32 }
          catch ptr null
  %i.ew = extractvalue { ptr, i32 } %i.ev, 0
  call void @__clang_call_terminate(ptr %i.ew) #21
end_hunk_10
begin_hunk_11_@_ZL21C_A_T_C_H_T_E_S_T_123v:bb.a
  store i8 0, ptr %i.go, align 8, !tbaa !50
  %i.gp = getelementptr inbounds nuw i8, ptr %19, i64 113
  store i8 1, ptr %i.gp, align 1, !tbaa !72
  %i.gq = getelementptr inbounds nuw i8, ptr %19, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gq, i8 0, i64 24, i1 false)
  %i.gr = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.gn, ptr noundef nonnull align 8 dereferenceable(144) %19)
          to label %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit200 unwind label %bb.bh ; 0 uses

_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit200: ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit198
  call void @_ZN5vcpkg10DependencyD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.gs = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  store ptr %i.gs, ptr %20, align 8, !tbaa !22
  store i8 97, ptr %i.gs, align 8, !tbaa !25
  %i.gt = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 1, ptr %i.gt, align 8, !tbaa !26
  %i.gu = getelementptr inbounds nuw i8, ptr %20, i64 17
  store i8 0, ptr %i.gu, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %21, ptr nonnull @.str.124, i64 1, i32 noundef 1)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit206 unwind label %bb.bi

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit206:       ; preds = %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit200
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr @.str.123, ptr %5, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i207 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i207, align 8, !tbaa !33
  %i.gv = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %14, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(36) %21, i32 noundef 4, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %5)
          to label %bb.aa unwind label %bb.bj

bb.aa:                                            ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit206
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.gw = load ptr, ptr %21, align 8, !tbaa !28   ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %_ZN5vcpkg7VersionD2Ev.exit212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i210: ; preds = %bb.aa
  %i.gz = load i64, ptr %i.gx, align 8, !tbaa !25
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.ha) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit212

_ZN5vcpkg7VersionD2Ev.exit212:                    ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i210
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  %i.hb = load ptr, ptr %20, align 8, !tbaa !28   ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.gs
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213: ; preds = %_ZN5vcpkg7VersionD2Ev.exit212
  %i.hd = load i64, ptr %i.gs, align 8, !tbaa !25
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.he) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215: ; preds = %_ZN5vcpkg7VersionD2Ev.exit212, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %i.hf = load ptr, ptr %i.gv, align 8, !tbaa !136
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  %i.hh = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  store ptr %i.hh, ptr %22, align 8, !tbaa !22
  store i8 98, ptr %i.hh, align 8, !tbaa !25
  %i.hi = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 1, ptr %i.hi, align 8, !tbaa !26
  %i.hj = getelementptr inbounds nuw i8, ptr %22, i64 17
  store i8 0, ptr %i.hj, align 1, !tbaa !25
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 216
  %i.hl = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.hm = getelementptr inbounds nuw i8, ptr %22, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hl, i8 0, i64 24, i1 false)
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.hm) #22
  %i.hn = getelementptr inbounds nuw i8, ptr %22, i64 64
  store i32 0, ptr %i.hn, align 8, !tbaa !47
  %i.ho = getelementptr inbounds nuw i8, ptr %22, i64 72
  call void @_ZN5vcpkg7VersionC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.ho) #22
  %i.hp = getelementptr inbounds nuw i8, ptr %22, i64 112
  store i8 0, ptr %i.hp, align 8, !tbaa !50
  %i.hq = getelementptr inbounds nuw i8, ptr %22, i64 113
  store i8 1, ptr %i.hq, align 1, !tbaa !72
  %i.hr = getelementptr inbounds nuw i8, ptr %22, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hr, i8 0, i64 24, i1 false)
  %i.hs = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.hk, ptr noundef nonnull align 8 dereferenceable(144) %22)
          to label %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit221 unwind label %bb.bk ; 0 uses

_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit221: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  call void @_ZN5vcpkg10DependencyD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %22) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  %i.ht = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  store ptr %i.ht, ptr %23, align 8, !tbaa !22
  store i8 98, ptr %i.ht, align 8, !tbaa !25
  %i.hu = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 1, ptr %i.hu, align 8, !tbaa !26
  %i.hv = getelementptr inbounds nuw i8, ptr %23, i64 17
  store i8 0, ptr %i.hv, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %24, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit227 unwind label %bb.bl

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit227:       ; preds = %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit221
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr @.str.123, ptr %4, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i228 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i228, align 8, !tbaa !33
  %i.hw = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %14, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(36) %24, i32 noundef 4, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %4)
          to label %bb.ab unwind label %bb.bm

bb.ab:                                            ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit227
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.hx = load ptr, ptr %24, align 8, !tbaa !28   ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.hz = icmp eq ptr %i.hx, %i.hy
  br i1 %i.hz, label %_ZN5vcpkg7VersionD2Ev.exit233, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i231: ; preds = %bb.ab
  %i.ia = load i64, ptr %i.hy, align 8, !tbaa !25
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ib) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit233

_ZN5vcpkg7VersionD2Ev.exit233:                    ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i231
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  %i.ic = load ptr, ptr %23, align 8, !tbaa !28   ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.ht
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234: ; preds = %_ZN5vcpkg7VersionD2Ev.exit233
  %i.ie = load i64, ptr %i.ht, align 8, !tbaa !25
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.if) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236: ; preds = %_ZN5vcpkg7VersionD2Ev.exit233, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  %i.ig = load ptr, ptr %i.hw, align 8, !tbaa !136 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  %i.ii = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  store ptr %i.ii, ptr %26, align 8, !tbaa !22
  store i8 120, ptr %i.ii, align 8, !tbaa !25
  %i.ij = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 1, ptr %i.ij, align 8, !tbaa !26
  %i.ik = getelementptr inbounds nuw i8, ptr %26, i64 17
  store i8 0, ptr %i.ik, align 1, !tbaa !25
  invoke fastcc void @_ZL9make_fpghNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %25, ptr noundef align 8 %26)
          to label %bb.ac unwind label %bb.bn

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 16 ; 3 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !621 ; 6 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ig, i64 24 ; 3 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !624
  %.not.i.i241 = icmp eq ptr %i.im, %i.io
  br i1 %.not.i.i241, label %bb.ad, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.ac
  %i.ip = load i64, ptr %25, align 8, !tbaa !619
  store i64 %i.ip, ptr %i.im, align 8, !tbaa !619
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store ptr %i.iq, ptr %i.il, align 8, !tbaa !621
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ir = load ptr, ptr %i.ih, align 8, !tbaa !625 ; 10 uses
  %i.is = ptrtoint ptr %i.im to i64               ; 3 uses
  %i.it = ptrtoint ptr %i.ir to i64               ; 4 uses
  %i.iu = sub i64 %i.is, %i.it                    ; 3 uses
  %i.iv = icmp eq i64 %i.iu, 9223372036854775800
  br i1 %i.iv, label %bb.ae, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc420 unwind label %bb.bo

.noexc420:                                        ; preds = %bb.ae
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ad
  %i.iw = ashr exact i64 %i.iu, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.iw, i64 1)
  %i.ix = add nsw i64 %.sroa.speculated.i.i, %i.iw ; 2 uses
  %i.iy = icmp ult i64 %i.ix, %i.iw
  %i.iz = call i64 @llvm.umin.i64(i64 %i.ix, i64 1152921504606846975)
  %i.ja = select i1 %i.iy, i64 1152921504606846975, i64 %i.iz ; 3 uses
  %.not.i.i419 = icmp ne i64 %i.ja, 0
  call void @llvm.assume(i1 %.not.i.i419)
  %i.jb = shl nuw nsw i64 %i.ja, 3
  %i.jc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jb) #24
          to label %.noexc421 unwind label %bb.bo ; 10 uses

.noexc421:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.iu
  %i.je = load i64, ptr %25, align 8, !tbaa !619
  store i64 %i.je, ptr %i.jd, align 8, !tbaa !619
  %.not10.i.i.i.i = icmp eq ptr %i.ir, %i.im
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc421
  %47 = sub i64 %i.is, %i.it
  %48 = add i64 %47, -8                           ; 2 uses
  %i.jf = lshr i64 %48, 3
  %i.jg = add nuw nsw i64 %i.jf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %48, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader632, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.jh = add i64 %i.is, -8
  %i.ji = sub i64 %i.jh, %i.it
  %i.jj = and i64 %i.ji, -8
  %i.jk = add i64 %i.jj, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.jc, i64 %i.jk
  %scevgep625 = getelementptr i8, ptr %i.ir, i64 %i.jk
  %bound0 = icmp ult ptr %i.jc, %scevgep625
  %bound1 = icmp ult ptr %i.ir, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader632, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.jg, 4611686018427387900     ; 3 uses
  %i.jl = shl i64 %n.vec, 3                       ; 2 uses
  %i.jm = getelementptr i8, ptr %i.jc, i64 %i.jl  ; 2 uses
  %i.jn = getelementptr i8, ptr %i.ir, i64 %i.jl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jo = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.jc, i64 %i.jo ; 2 uses
  %next.gep626 = getelementptr i8, ptr %i.ir, i64 %i.jo ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1039)
  call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  %i.jp = getelementptr i8, ptr %next.gep626, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep626, align 8, !tbaa !619, !alias.scope !1044, !noalias !1039
  %wide.load627 = load <2 x i64>, ptr %i.jp, align 8, !tbaa !619, !alias.scope !1044, !noalias !1039
  %i.jq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !619, !alias.scope !1047, !noalias !1044
  store <2 x i64> %wide.load627, ptr %i.jq, align 8, !tbaa !619, !alias.scope !1047, !noalias !1044
  %i.jr = getelementptr i8, ptr %next.gep626, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep626, align 8, !tbaa !619, !alias.scope !1044, !noalias !1039
  store <2 x ptr> splat (ptr null), ptr %i.jr, align 8, !tbaa !619, !alias.scope !1044, !noalias !1039
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.js = icmp eq i64 %index.next, %n.vec
  br i1 %i.js, label %middle.block, label %vector.body, !llvm.loop !1049

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jg, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader632

.lr.ph.i.i.i.i.preheader632:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.jc, %vector.memcheck ], [ %i.jc, %.lr.ph.i.i.i.i.preheader ], [ %i.jm, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ir, %vector.memcheck ], [ %i.ir, %.lr.ph.i.i.i.i.preheader ], [ %i.jn, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader632, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.jv, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader632 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ju, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader632 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1039)
  call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  %i.jt = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !1042, !noalias !1039
  store i64 %i.jt, ptr %.012.i.i.i.i, align 8, !tbaa !619, !alias.scope !1039, !noalias !1042
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !1042, !noalias !1039
  %i.ju = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ju, %i.im
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1050

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc421
  %.0.lcssa.i.i.i.i = phi ptr [ %i.jc, %.noexc421 ], [ %i.jm, %middle.block ], [ %i.jv, %.lr.ph.i.i.i.i ]
  %i.jw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ir, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.jx = load ptr, ptr %i.in, align 8, !tbaa !624
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = sub i64 %i.jy, %i.it
  call void @_ZdlPvm(ptr noundef nonnull %i.ir, i64 noundef %i.jz) #23
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.af
  store ptr %i.jc, ptr %i.ih, align 8, !tbaa !625
  store ptr %i.jw, ptr %i.il, align 8, !tbaa !621
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.ja
  store ptr %i.ka, ptr %i.in, align 8, !tbaa !624
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread
  %i.kb = load ptr, ptr %26, align 8, !tbaa !28   ; 2 uses
  %i.kc = icmp eq ptr %i.kb, %i.ii
  br i1 %i.kc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit
  %i.kd = load i64, ptr %i.ii, align 8, !tbaa !25
  %i.ke = add i64 %i.kd, 1
  call void @_ZdlPvm(ptr noundef %i.kb, i64 noundef %i.ke) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  %i.kf = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 6 uses
  store ptr %i.kf, ptr %27, align 8, !tbaa !22
  store i8 98, ptr %i.kf, align 8, !tbaa !25
  %i.kg = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 1, ptr %i.kg, align 8, !tbaa !26
  %i.kh = getelementptr inbounds nuw i8, ptr %27, i64 17
  store i8 0, ptr %i.kh, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %28, ptr nonnull @.str.124, i64 1, i32 noundef 1)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit251 unwind label %bb.bq

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit251:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr @.str.123, ptr %3, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i252 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i252, align 8, !tbaa !33
  %i.ki = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %14, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(36) %28, i32 noundef 4, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %3)
          to label %bb.ag unwind label %bb.br

bb.ag:                                            ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit251
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.kj = load ptr, ptr %28, align 8, !tbaa !28   ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.kl = icmp eq ptr %i.kj, %i.kk
  br i1 %i.kl, label %_ZN5vcpkg7VersionD2Ev.exit257, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i255

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i255: ; preds = %bb.ag
  %i.km = load i64, ptr %i.kk, align 8, !tbaa !25
  %i.kn = add i64 %i.km, 1
  call void @_ZdlPvm(ptr noundef %i.kj, i64 noundef %i.kn) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit257

_ZN5vcpkg7VersionD2Ev.exit257:                    ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i255
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  %i.ko = load ptr, ptr %27, align 8, !tbaa !28   ; 2 uses
  %i.kp = icmp eq ptr %i.ko, %i.kf
  br i1 %i.kp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258: ; preds = %_ZN5vcpkg7VersionD2Ev.exit257
  %i.kq = load i64, ptr %i.kf, align 8, !tbaa !25
  %i.kr = add i64 %i.kq, 1
  call void @_ZdlPvm(ptr noundef %i.ko, i64 noundef %i.kr) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260: ; preds = %_ZN5vcpkg7VersionD2Ev.exit257, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  %i.ks = load ptr, ptr %i.ki, align 8, !tbaa !136
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  %i.ku = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  store ptr %i.ku, ptr %29, align 8, !tbaa !22
  store i8 99, ptr %i.ku, align 8, !tbaa !25
  %i.kv = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 1, ptr %i.kv, align 8, !tbaa !26
  %i.kw = getelementptr inbounds nuw i8, ptr %29, i64 17
  store i8 0, ptr %i.kw, align 1, !tbaa !25
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 216
  %i.ky = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.kz = getelementptr inbounds nuw i8, ptr %29, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ky, i8 0, i64 24, i1 false)
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.kz) #22
  %i.la = getelementptr inbounds nuw i8, ptr %29, i64 64
  store i32 0, ptr %i.la, align 8, !tbaa !47
  %i.lb = getelementptr inbounds nuw i8, ptr %29, i64 72
  call void @_ZN5vcpkg7VersionC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.lb) #22
  %i.lc = getelementptr inbounds nuw i8, ptr %29, i64 112
  store i8 0, ptr %i.lc, align 8, !tbaa !50
  %i.ld = getelementptr inbounds nuw i8, ptr %29, i64 113
  store i8 1, ptr %i.ld, align 1, !tbaa !72
  %i.le = getelementptr inbounds nuw i8, ptr %29, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.le, i8 0, i64 24, i1 false)
  %i.lf = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.kx, ptr noundef nonnull align 8 dereferenceable(144) %29)
          to label %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit266 unwind label %bb.bs ; 0 uses

_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit266: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260
  call void @_ZN5vcpkg10DependencyD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %29) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  %i.lg = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  store ptr %i.lg, ptr %30, align 8, !tbaa !22
  store i8 99, ptr %i.lg, align 8, !tbaa !25
  %i.lh = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 1, ptr %i.lh, align 8, !tbaa !26
  %i.li = getelementptr inbounds nuw i8, ptr %30, i64 17
  store i8 0, ptr %i.li, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %31, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit272 unwind label %bb.bt

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit272:       ; preds = %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit266
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr @.str.123, ptr %2, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i273 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i273, align 8, !tbaa !33
  %i.lj = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %14, ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(36) %31, i32 noundef 4, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %2)
          to label %bb.ah unwind label %bb.bu     ; 0 uses

bb.ah:                                            ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit272
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.lk = load ptr, ptr %31, align 8, !tbaa !28   ; 2 uses
end_hunk_11
begin_hunk_12_@_ZL21C_A_T_C_H_T_E_S_T_144v:bb.a
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
  %69 = sub i64 %i.cu, %i.cv
  %70 = add i64 %69, -8                           ; 2 uses
  %i.dg = lshr i64 %70, 3
  %i.dh = add nuw nsw i64 %i.dg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %70, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader1043, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.di = add i64 %i.cu, -8
  %i.dj = sub i64 %i.di, %i.cv
  %i.dk = and i64 %i.dj, -8
  %i.dl = add i64 %i.dk, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.de, i64 %i.dl
  %scevgep1017 = getelementptr i8, ptr %i.ct, i64 %i.dl
  %bound0 = icmp ult ptr %i.de, %scevgep1017
  %bound1 = icmp ult ptr %i.ct, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader1043, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dh, 4611686018427387900     ; 3 uses
  %i.dm = shl i64 %n.vec, 3                       ; 2 uses
  %i.dn = getelementptr i8, ptr %i.de, i64 %i.dm  ; 2 uses
  %i.do = getelementptr i8, ptr %i.ct, i64 %i.dm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dp = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.de, i64 %i.dp ; 2 uses
  %next.gep1018 = getelementptr i8, ptr %i.ct, i64 %i.dp ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  %i.dq = getelementptr i8, ptr %next.gep1018, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1018, align 8, !tbaa !619, !alias.scope !1177, !noalias !1172
  %wide.load1019 = load <2 x i64>, ptr %i.dq, align 8, !tbaa !619, !alias.scope !1177, !noalias !1172
  %i.dr = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !619, !alias.scope !1180, !noalias !1177
  store <2 x i64> %wide.load1019, ptr %i.dr, align 8, !tbaa !619, !alias.scope !1180, !noalias !1177
  %i.ds = getelementptr i8, ptr %next.gep1018, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1018, align 8, !tbaa !619, !alias.scope !1177, !noalias !1172
  store <2 x ptr> splat (ptr null), ptr %i.ds, align 8, !tbaa !619, !alias.scope !1177, !noalias !1172
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !1182

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dh, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader1043

.lr.ph.i.i.i.i.preheader1043:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.de, %vector.memcheck ], [ %i.de, %.lr.ph.i.i.i.i.preheader ], [ %i.dn, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ct, %vector.memcheck ], [ %i.ct, %.lr.ph.i.i.i.i.preheader ], [ %i.do, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader1043, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader1043 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dv, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader1043 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  call void @llvm.experimental.noalias.scope.decl(metadata !1175)
  %i.du = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !1175, !noalias !1172
  store i64 %i.du, ptr %.012.i.i.i.i, align 8, !tbaa !619, !alias.scope !1172, !noalias !1175
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !1175, !noalias !1172
  %i.dv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i618 = icmp eq ptr %i.dv, %i.cp
  br i1 %.not.i.i.i.i618, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1183

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc620
  %.0.lcssa.i.i.i.i = phi ptr [ %i.de, %.noexc620 ], [ %i.dn, %middle.block ], [ %i.dw, %.lr.ph.i.i.i.i ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ct, null
  br i1 %.not.i23.i, label %.noexc242, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.dy = load ptr, ptr %i.cq, align 8, !tbaa !624
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = sub i64 %i.dz, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.ea) #23
  br label %.noexc242

.noexc242:                                        ; preds = %bb.u, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.de, ptr %i.cn, align 8, !tbaa !625
  store ptr %i.dx, ptr %i.co, align 8, !tbaa !621
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dc
  store ptr %i.eb, ptr %i.cq, align 8, !tbaa !624
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %.noexc242, %bb.r
  %i.ec = load ptr, ptr %16, align 8, !tbaa !28   ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZN5vcpkg7VersionD2Ev.exit245, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i243: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !25
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit245

_ZN5vcpkg7VersionD2Ev.exit245:                    ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i243
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.eh = load ptr, ptr %15, align 8, !tbaa !28   ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.ci
  br i1 %i.ei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246: ; preds = %_ZN5vcpkg7VersionD2Ev.exit245
  %i.ej = load i64, ptr %i.ci, align 8, !tbaa !25
  %i.ek = add i64 %i.ej, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ek) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248: ; preds = %_ZN5vcpkg7VersionD2Ev.exit245, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.el = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #24
          to label %.noexc252 unwind label %bb.ba ; 13 uses

.noexc252:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.em, i8 0, i64 160, i1 false), !noalias !1184
  store ptr %i.em, ptr %i.el, align 8, !tbaa !22, !noalias !1184
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  store i64 0, ptr %i.en, align 8, !tbaa !26, !noalias !1184
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 32 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.eo, i8 0, i64 48, i1 false), !noalias !1184
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ep) #22, !noalias !1184
  %i.eq = getelementptr inbounds nuw i8, ptr %i.el, i64 88
  invoke void @_ZN5vcpkg28ParsedSpdxLicenseDeclarationC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.eq)
          to label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit unwind label %bb.v, !noalias !1184

bb.v:                                             ; preds = %.noexc252
  %i.er = landingpad { ptr, i32 }
          cleanup
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 56
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ep) #22, !noalias !1184
  call void @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.es) #22, !noalias !1184
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.eo) #22, !noalias !1184
  %i.et = load ptr, ptr %i.el, align 8, !tbaa !28, !noalias !1184 ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.em
  br i1 %i.eu, label %.body.i250, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i249: ; preds = %bb.v
  %i.ev = load i64, ptr %i.em, align 8, !tbaa !25, !noalias !1184
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #23, !noalias !1184
  br label %.body.i250

.body.i250:                                       ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i249
  call void @_ZdlPvm(ptr noundef nonnull %i.el, i64 noundef 176) #23, !noalias !1184
  br label %.body253

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit: ; preds = %.noexc252
  %i.ex = getelementptr inbounds nuw i8, ptr %i.el, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ex, i8 0, i64 24, i1 false), !noalias !1184
  store ptr %i.el, ptr %12, align 8, !tbaa !619
  %i.ey = ptrtoint ptr %i.el to i64               ; 2 uses
  %.pre = load i64, ptr %i.en, align 8, !tbaa !26
  %i.ez = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.el, i64 noundef 0, i64 noundef %.pre, ptr noundef nonnull @.str.216, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit257 unwind label %bb.aw ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit257: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.fa = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.fa, ptr %17, align 8, !tbaa !22
  store i8 97, ptr %i.fa, align 8, !tbaa !25
  %i.fb = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 1, ptr %i.fb, align 8, !tbaa !26
  %i.fc = getelementptr inbounds nuw i8, ptr %17, i64 17
  store i8 0, ptr %i.fc, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %18, ptr nonnull @.str.124, i64 1, i32 noundef 1)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit263 unwind label %bb.bb

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit263:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit257
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr @.str.123, ptr %6, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i264 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i264, align 8, !tbaa !33
  %i.fd = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(36) %18, i32 noundef 4, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %6)
          to label %bb.w unwind label %bb.bc

bb.w:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit263
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !136 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 16 ; 3 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !621 ; 6 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 24 ; 3 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !624
  %.not.i.i267 = icmp eq ptr %i.fh, %i.fj
  br i1 %.not.i.i267, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i64 %i.ey, ptr %i.fh, align 8, !tbaa !619
  store ptr null, ptr %12, align 8, !tbaa !619
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store ptr %i.fk, ptr %i.fg, align 8, !tbaa !621
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit269

bb.y:                                             ; preds = %bb.w
  %i.fl = load ptr, ptr %i.ff, align 8, !tbaa !625 ; 10 uses
  %i.fm = ptrtoint ptr %i.fh to i64               ; 3 uses
  %i.fn = ptrtoint ptr %i.fl to i64               ; 4 uses
  %i.fo = sub i64 %i.fm, %i.fn                    ; 3 uses
  %i.fp = icmp eq i64 %i.fo, 9223372036854775800
  br i1 %i.fp, label %bb.z, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i621

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc639 unwind label %bb.bc

.noexc639:                                        ; preds = %bb.z
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i621: ; preds = %bb.y
  %i.fq = ashr exact i64 %i.fo, 3                 ; 3 uses
  %.sroa.speculated.i.i622 = call i64 @llvm.umax.i64(i64 %i.fq, i64 1)
  %i.fr = add nsw i64 %.sroa.speculated.i.i622, %i.fq ; 2 uses
  %i.fs = icmp ult i64 %i.fr, %i.fq
  %i.ft = call i64 @llvm.umin.i64(i64 %i.fr, i64 1152921504606846975)
  %i.fu = select i1 %i.fs, i64 1152921504606846975, i64 %i.ft ; 3 uses
  %.not.i.i623 = icmp ne i64 %i.fu, 0
  call void @llvm.assume(i1 %.not.i.i623)
  %i.fv = shl nuw nsw i64 %i.fu, 3
  %i.fw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fv) #24
          to label %.noexc640 unwind label %bb.bc ; 10 uses

.noexc640:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i621
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fo
  store i64 %i.ey, ptr %i.fx, align 8, !tbaa !619
  store ptr null, ptr %12, align 8, !tbaa !619
  %.not10.i.i.i.i624 = icmp eq ptr %i.fl, %i.fh
  br i1 %.not10.i.i.i.i624, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i636, label %.lr.ph.i.i.i.i625.preheader

.lr.ph.i.i.i.i625.preheader:                      ; preds = %.noexc640
  %71 = sub i64 %i.fm, %i.fn
  %72 = add i64 %71, -8                           ; 2 uses
  %i.fy = lshr i64 %72, 3
  %i.fz = add nuw nsw i64 %i.fy, 1                ; 2 uses
  %min.iters.check1028 = icmp ult i64 %72, 136
  br i1 %min.iters.check1028, label %.lr.ph.i.i.i.i625.preheader1042, label %vector.memcheck1021

vector.memcheck1021:                              ; preds = %.lr.ph.i.i.i.i625.preheader
  %i.ga = add i64 %i.fm, -8
  %i.gb = sub i64 %i.ga, %i.fn
  %i.gc = and i64 %i.gb, -8
  %i.gd = add i64 %i.gc, 8                        ; 2 uses
  %scevgep1022 = getelementptr i8, ptr %i.fw, i64 %i.gd
  %scevgep1023 = getelementptr i8, ptr %i.fl, i64 %i.gd
  %bound01024 = icmp ult ptr %i.fw, %scevgep1023
  %bound11025 = icmp ult ptr %i.fl, %scevgep1022
  %found.conflict1026 = and i1 %bound01024, %bound11025
  br i1 %found.conflict1026, label %.lr.ph.i.i.i.i625.preheader1042, label %vector.ph1029

vector.ph1029:                                    ; preds = %vector.memcheck1021
  %n.vec1030 = and i64 %i.fz, 4611686018427387900 ; 3 uses
  %i.ge = shl i64 %n.vec1030, 3                   ; 2 uses
  %i.gf = getelementptr i8, ptr %i.fw, i64 %i.ge  ; 2 uses
  %i.gg = getelementptr i8, ptr %i.fl, i64 %i.ge
  br label %vector.body1031

vector.body1031:                                  ; preds = %vector.body1031, %vector.ph1029
  %index1032 = phi i64 [ 0, %vector.ph1029 ], [ %index.next1037, %vector.body1031 ] ; 2 uses
  %i.gh = shl i64 %index1032, 3                   ; 2 uses
  %next.gep1033 = getelementptr i8, ptr %i.fw, i64 %i.gh ; 2 uses
  %next.gep1034 = getelementptr i8, ptr %i.fl, i64 %i.gh ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  call void @llvm.experimental.noalias.scope.decl(metadata !1190)
  %i.gi = getelementptr i8, ptr %next.gep1034, i64 16
  %wide.load1035 = load <2 x i64>, ptr %next.gep1034, align 8, !tbaa !619, !alias.scope !1192, !noalias !1187
  %wide.load1036 = load <2 x i64>, ptr %i.gi, align 8, !tbaa !619, !alias.scope !1192, !noalias !1187
  %i.gj = getelementptr i8, ptr %next.gep1033, i64 16
  store <2 x i64> %wide.load1035, ptr %next.gep1033, align 8, !tbaa !619, !alias.scope !1195, !noalias !1192
  store <2 x i64> %wide.load1036, ptr %i.gj, align 8, !tbaa !619, !alias.scope !1195, !noalias !1192
  %i.gk = getelementptr i8, ptr %next.gep1034, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1034, align 8, !tbaa !619, !alias.scope !1192, !noalias !1187
  store <2 x ptr> splat (ptr null), ptr %i.gk, align 8, !tbaa !619, !alias.scope !1192, !noalias !1187
  %index.next1037 = add nuw i64 %index1032, 4     ; 2 uses
  %i.gl = icmp eq i64 %index.next1037, %n.vec1030
  br i1 %i.gl, label %middle.block1038, label %vector.body1031, !llvm.loop !1197

middle.block1038:                                 ; preds = %vector.body1031
  %cmp.n1039 = icmp eq i64 %i.fz, %n.vec1030
  br i1 %cmp.n1039, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i636, label %.lr.ph.i.i.i.i625.preheader1042

.lr.ph.i.i.i.i625.preheader1042:                  ; preds = %vector.memcheck1021, %.lr.ph.i.i.i.i625.preheader, %middle.block1038
  %.012.i.i.i.i626.ph = phi ptr [ %i.fw, %vector.memcheck1021 ], [ %i.fw, %.lr.ph.i.i.i.i625.preheader ], [ %i.gf, %middle.block1038 ]
  %.0911.i.i.i.i627.ph = phi ptr [ %i.fl, %vector.memcheck1021 ], [ %i.fl, %.lr.ph.i.i.i.i625.preheader ], [ %i.gg, %middle.block1038 ]
  br label %.lr.ph.i.i.i.i625

.lr.ph.i.i.i.i625:                                ; preds = %.lr.ph.i.i.i.i625.preheader1042, %.lr.ph.i.i.i.i625
  %.012.i.i.i.i626 = phi ptr [ %i.go, %.lr.ph.i.i.i.i625 ], [ %.012.i.i.i.i626.ph, %.lr.ph.i.i.i.i625.preheader1042 ] ; 2 uses
  %.0911.i.i.i.i627 = phi ptr [ %i.gn, %.lr.ph.i.i.i.i625 ], [ %.0911.i.i.i.i627.ph, %.lr.ph.i.i.i.i625.preheader1042 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1187)
  call void @llvm.experimental.noalias.scope.decl(metadata !1190)
  %i.gm = load i64, ptr %.0911.i.i.i.i627, align 8, !tbaa !619, !alias.scope !1190, !noalias !1187
  store i64 %i.gm, ptr %.012.i.i.i.i626, align 8, !tbaa !619, !alias.scope !1187, !noalias !1190
  store ptr null, ptr %.0911.i.i.i.i627, align 8, !tbaa !619, !alias.scope !1190, !noalias !1187
  %i.gn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i627, i64 8 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i626, i64 8 ; 2 uses
  %.not.i.i.i.i628 = icmp eq ptr %i.gn, %i.fh
  br i1 %.not.i.i.i.i628, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i636, label %.lr.ph.i.i.i.i625, !llvm.loop !1198

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i636: ; preds = %.lr.ph.i.i.i.i625, %middle.block1038, %.noexc640
  %.0.lcssa.i.i.i.i630 = phi ptr [ %i.fw, %.noexc640 ], [ %i.gf, %middle.block1038 ], [ %i.go, %.lr.ph.i.i.i.i625 ]
  %i.gp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i630, i64 8
  %.not.i23.i638 = icmp eq ptr %i.fl, null
  br i1 %.not.i23.i638, label %.noexc268, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i636
  %i.gq = load ptr, ptr %i.fi, align 8, !tbaa !624
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = sub i64 %i.gr, %i.fn
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.gs) #23
  br label %.noexc268

.noexc268:                                        ; preds = %bb.aa, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i636
  store ptr %i.fw, ptr %i.ff, align 8, !tbaa !625
  store ptr %i.gp, ptr %i.fg, align 8, !tbaa !621
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.fu
  store ptr %i.gt, ptr %i.fi, align 8, !tbaa !624
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit269

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit269: ; preds = %.noexc268, %bb.x
  %i.gu = load ptr, ptr %18, align 8, !tbaa !28   ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.gw = icmp eq ptr %i.gu, %i.gv
  br i1 %i.gw, label %_ZN5vcpkg7VersionD2Ev.exit272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i270

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i270: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit269
  %i.gx = load i64, ptr %i.gv, align 8, !tbaa !25
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gy) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit272

_ZN5vcpkg7VersionD2Ev.exit272:                    ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit269, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i270
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.gz = load ptr, ptr %17, align 8, !tbaa !28   ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.fa
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273: ; preds = %_ZN5vcpkg7VersionD2Ev.exit272
  %i.hb = load i64, ptr %i.fa, align 8, !tbaa !25
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hc) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275: ; preds = %_ZN5vcpkg7VersionD2Ev.exit272, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5vcpkg4Test20MockCMakeVarProviderE, i64 16), ptr %19, align 8, !tbaa !9
  %i.hd = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %19, i64 56
  store ptr %i.he, ptr %i.hd, align 8, !tbaa !34
  %i.hf = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 1, ptr %i.hf, align 8, !tbaa !42
  %i.hg = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.hh = getelementptr inbounds nuw i8, ptr %19, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hg, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.hh, align 8, !tbaa !43
  %i.hi = getelementptr inbounds nuw i8, ptr %19, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hi, i8 0, i64 16, i1 false)
  %i.hj = getelementptr inbounds nuw i8, ptr %19, i64 64
  %i.hk = getelementptr inbounds nuw i8, ptr %19, i64 112
  store ptr %i.hk, ptr %i.hj, align 8, !tbaa !34
  %i.hl = getelementptr inbounds nuw i8, ptr %19, i64 72
  store i64 1, ptr %i.hl, align 8, !tbaa !42
  %i.hm = getelementptr inbounds nuw i8, ptr %19, i64 80
  %i.hn = getelementptr inbounds nuw i8, ptr %19, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hm, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.hn, align 8, !tbaa !43
  %i.ho = getelementptr inbounds nuw i8, ptr %19, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ho, i8 0, i64 16, i1 false)
  %i.hp = getelementptr inbounds nuw i8, ptr %19, i64 120
  %i.hq = getelementptr inbounds nuw i8, ptr %19, i64 168
  store ptr %i.hq, ptr %i.hp, align 8, !tbaa !44
  %i.hr = getelementptr inbounds nuw i8, ptr %19, i64 128
  store i64 1, ptr %i.hr, align 8, !tbaa !46
  %i.hs = getelementptr inbounds nuw i8, ptr %19, i64 136
  %i.ht = getelementptr inbounds nuw i8, ptr %19, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hs, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ht, align 8, !tbaa !43
  %i.hu = getelementptr inbounds nuw i8, ptr %19, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hu, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  %i.hv = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 11 uses
  store ptr %i.hv, ptr %21, align 8, !tbaa !22
  store i8 97, ptr %i.hv, align 8, !tbaa !25
  %i.hw = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 4 uses
  store i64 1, ptr %i.hw, align 8, !tbaa !26
  %i.hx = getelementptr inbounds nuw i8, ptr %21, i64 17
  store i8 0, ptr %i.hx, align 1, !tbaa !25
  invoke fastcc void @_ZL13toplevel_specv()
          to label %bb.ab unwind label %bb.bd

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275
  %i.hy = invoke ptr @_ZNK5vcpkg11PackageSpec7tripletEv(ptr noundef nonnull align 8 dereferenceable(40) @_ZZL13toplevel_specvE3ret)
          to label %bb.ac unwind label %bb.bd

bb.ac:                                            ; preds = %bb.ab
  %i.hz = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  store ptr %i.hz, ptr %20, align 8, !tbaa !22
  %i.ia = load ptr, ptr %21, align 8, !tbaa !28   ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.hv
  br i1 %i.ib, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280

bb.ad:                                            ; preds = %bb.ac
  %i.ic = load i64, ptr %i.hw, align 8, !tbaa !26 ; 3 uses
  %i.id = icmp ult i64 %i.ic, 16
  call void @llvm.assume(i1 %i.id)
  %i.ie = add nuw nsw i64 %i.ic, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hz, ptr noundef nonnull align 8 dereferenceable(1) %i.hv, i64 %i.ie, i1 false)
  br label %_ZN5vcpkg11PackageSpecC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7TripletE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280: ; preds = %bb.ac
  store ptr %i.ia, ptr %20, align 8, !tbaa !28
  %i.if = load i64, ptr %i.hv, align 8, !tbaa !25
  store i64 %i.if, ptr %i.hz, align 8, !tbaa !25
  %.pre800 = load i64, ptr %i.hw, align 8, !tbaa !26
  br label %_ZN5vcpkg11PackageSpecC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7TripletE.exit

_ZN5vcpkg11PackageSpecC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7TripletE.exit: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280
  %i.ig = phi i64 [ %i.ic, %bb.ad ], [ %.pre800, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280 ]
  %i.ih = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.ig, ptr %i.ih, align 8, !tbaa !26
  store ptr %i.hv, ptr %21, align 8, !tbaa !28
  store i64 0, ptr %i.hw, align 8, !tbaa !26
  store i8 0, ptr %i.hv, align 8, !tbaa !25
  %i.ii = getelementptr inbounds nuw i8, ptr %20, i64 32
  store ptr %i.hy, ptr %i.ii, align 8, !tbaa !895
  %i.ij = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZNSt8__detail9_Map_baseIN5vcpkg11PackageSpecESt4pairIKS2_St13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_St4hashISB_ESt8equal_toISB_ESaIS3_IKSB_SB_EEEESaISK_ENS_10_Select1stESE_IS2_ESC_IS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.hd, ptr noundef nonnull align 8 dereferenceable(40) %20)
          to label %_ZNSt13unordered_mapIN5vcpkg11PackageSpecES_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S7_EEES8_IS1_ESA_IS1_ESaISC_IKS1_SG_EEEixEOS1_.exit unwind label %bb.be

_ZNSt13unordered_mapIN5vcpkg11PackageSpecES_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S7_EEES8_IS1_ESA_IS1_ESaISC_IKS1_SG_EEEixEOS1_.exit: ; preds = %_ZN5vcpkg11PackageSpecC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7TripletE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  %i.ik = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
end_hunk_12
begin_hunk_13_@_ZL21C_A_T_C_H_T_E_S_T_147v:bb.a
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
  %67 = sub i64 %i.cm, %i.cn
  %68 = add i64 %67, -8                           ; 2 uses
  %i.cy = lshr i64 %68, 3
  %i.cz = add nuw nsw i64 %i.cy, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %68, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader438, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.da = add i64 %i.cm, -8
  %i.db = sub i64 %i.da, %i.cn
  %i.dc = and i64 %i.db, -8
  %i.dd = add i64 %i.dc, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cw, i64 %i.dd
  %scevgep434 = getelementptr i8, ptr %i.cl, i64 %i.dd
  %bound0 = icmp ult ptr %i.cw, %scevgep434
  %bound1 = icmp ult ptr %i.cl, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader438, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cz, 4611686018427387900     ; 3 uses
  %i.de = shl i64 %n.vec, 3                       ; 2 uses
  %i.df = getelementptr i8, ptr %i.cw, i64 %i.de  ; 2 uses
  %i.dg = getelementptr i8, ptr %i.cl, i64 %i.de
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dh = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cw, i64 %i.dh ; 2 uses
  %next.gep435 = getelementptr i8, ptr %i.cl, i64 %i.dh ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  %i.di = getelementptr i8, ptr %next.gep435, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep435, align 8, !tbaa !619, !alias.scope !1225, !noalias !1220
  %wide.load436 = load <2 x i64>, ptr %i.di, align 8, !tbaa !619, !alias.scope !1225, !noalias !1220
  %i.dj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !619, !alias.scope !1228, !noalias !1225
  store <2 x i64> %wide.load436, ptr %i.dj, align 8, !tbaa !619, !alias.scope !1228, !noalias !1225
  %i.dk = getelementptr i8, ptr %next.gep435, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep435, align 8, !tbaa !619, !alias.scope !1225, !noalias !1220
  store <2 x ptr> splat (ptr null), ptr %i.dk, align 8, !tbaa !619, !alias.scope !1225, !noalias !1220
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dl = icmp eq i64 %index.next, %n.vec
  br i1 %i.dl, label %middle.block, label %vector.body, !llvm.loop !1230

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cz, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader438

.lr.ph.i.i.i.i.preheader438:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.cw, %vector.memcheck ], [ %i.cw, %.lr.ph.i.i.i.i.preheader ], [ %i.df, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.cl, %vector.memcheck ], [ %i.cl, %.lr.ph.i.i.i.i.preheader ], [ %i.dg, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader438, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader438 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader438 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  %i.dm = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !1223, !noalias !1220
  store i64 %i.dm, ptr %.012.i.i.i.i, align 8, !tbaa !619, !alias.scope !1220, !noalias !1223
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !1223, !noalias !1220
  %i.dn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i292 = icmp eq ptr %i.dn, %i.ch
  br i1 %.not.i.i.i.i292, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1231

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc294
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cw, %.noexc294 ], [ %i.df, %middle.block ], [ %i.do, %.lr.ph.i.i.i.i ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.cl, null
  br i1 %.not.i23.i, label %.noexc147, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.dq = load ptr, ptr %i.ci, align 8, !tbaa !624
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = sub i64 %i.dr, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.ds) #23
  br label %.noexc147

.noexc147:                                        ; preds = %bb.o, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.cw, ptr %i.cf, align 8, !tbaa !625
  store ptr %i.dp, ptr %i.cg, align 8, !tbaa !621
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.dt, ptr %i.ci, align 8, !tbaa !624
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %.noexc147, %bb.l
  %i.du = load ptr, ptr %15, align 8, !tbaa !28   ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZN5vcpkg7VersionD2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i148: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !25
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit150

_ZN5vcpkg7VersionD2Ev.exit150:                    ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.dz = load ptr, ptr %14, align 8, !tbaa !28   ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.ca
  br i1 %i.ea, label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %_ZN5vcpkg7VersionD2Ev.exit150
  %i.eb = load i64, ptr %i.ca, align 8, !tbaa !25
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #23
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN5vcpkg7VersionD2Ev.exit150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5vcpkg4Test20MockCMakeVarProviderE, i64 16), ptr %16, align 8, !tbaa !9
  %i.ed = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %16, i64 56
  store ptr %i.ee, ptr %i.ed, align 8, !tbaa !34
  %i.ef = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 1, ptr %i.ef, align 8, !tbaa !42
  %i.eg = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.eh = getelementptr inbounds nuw i8, ptr %16, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eg, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.eh, align 8, !tbaa !43
  %i.ei = getelementptr inbounds nuw i8, ptr %16, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ei, i8 0, i64 16, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.ek = getelementptr inbounds nuw i8, ptr %16, i64 112
  store ptr %i.ek, ptr %i.ej, align 8, !tbaa !34
  %i.el = getelementptr inbounds nuw i8, ptr %16, i64 72
  store i64 1, ptr %i.el, align 8, !tbaa !42
  %i.em = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.en = getelementptr inbounds nuw i8, ptr %16, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.em, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.en, align 8, !tbaa !43
  %i.eo = getelementptr inbounds nuw i8, ptr %16, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i8 0, i64 16, i1 false)
  %i.ep = getelementptr inbounds nuw i8, ptr %16, i64 120
  %i.eq = getelementptr inbounds nuw i8, ptr %16, i64 168
  store ptr %i.eq, ptr %i.ep, align 8, !tbaa !44
  %i.er = getelementptr inbounds nuw i8, ptr %16, i64 128
  store i64 1, ptr %i.er, align 8, !tbaa !46
  %i.es = getelementptr inbounds nuw i8, ptr %16, i64 136
  %i.et = getelementptr inbounds nuw i8, ptr %16, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.es, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.et, align 8, !tbaa !43
  %i.eu = getelementptr inbounds nuw i8, ptr %16, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eu, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.ev = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  store ptr %i.ev, ptr %17, align 8, !tbaa !22
  store i8 97, ptr %i.ev, align 8, !tbaa !25
  %i.ew = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 1, ptr %i.ew, align 8, !tbaa !26
  %i.ex = getelementptr inbounds nuw i8, ptr %17, i64 17
  store i8 0, ptr %i.ex, align 1, !tbaa !25
  %i.ey = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.ez = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store ptr %i.ez, ptr %18, align 8, !tbaa !22
  store i8 120, ptr %i.ez, align 8, !tbaa !25
  %i.fa = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 1, ptr %i.fa, align 8, !tbaa !26
  %i.fb = getelementptr inbounds nuw i8, ptr %18, i64 17
  store i8 0, ptr %i.fb, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  invoke void @_ZN5vcpkg18PlatformExpression25parse_platform_expressionENS_10StringViewENS0_23MultipleBinaryOperatorsE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT.400") align 8 %19, ptr nonnull @.str.417, i64 5, i32 noundef 0)
          to label %bb.p unwind label %bb.ax

bb.p:                                             ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  store i32 2386, ptr %20, align 8, !tbaa !143
  %i.fc = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr @.str, ptr %i.fc, align 8, !tbaa !145
  %i.fd = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr @__func__._ZL21C_A_T_C_H_T_E_S_T_147v, ptr %i.fd, align 8, !tbaa !146
  %i.fe = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 8, !tbaa !1149, !range !90, !noundef !91
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %bb.q, label %_ZNO5vcpkg9ExpectedTINS_18PlatformExpression4ExprENS_15LocalizedStringEE13value_or_exitERKNS_8LineInfoE.exit

bb.q:                                             ; preds = %bb.p
  %i.fh = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKR5vcpkg9ExpectedTINS_18PlatformExpression4ExprENS_15LocalizedStringEE5errorEv(ptr noundef nonnull align 8 dereferenceable(33) %19) #22
  invoke void @_ZN5vcpkg6Checks21msg_exit_with_messageERKNS_8LineInfoERKNS_15LocalizedStringE(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(32) %i.fh) #25
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.fi = landingpad { ptr, i32 }
          catch ptr null
  %i.fj = extractvalue { ptr, i32 } %i.fi, 0
  call void @__clang_call_terminate(ptr %i.fj) #21
  unreachable

_ZNO5vcpkg9ExpectedTINS_18PlatformExpression4ExprENS_15LocalizedStringEE13value_or_exitERKNS_8LineInfoE.exit: ; preds = %bb.p
  %i.fk = getelementptr inbounds nuw i8, ptr %18, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.fk, ptr noundef nonnull align 8 dereferenceable(8) %19) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ey, i8 0, i64 24, i1 false)
end_hunk_13
begin_hunk_14_@_ZL21C_A_T_C_H_T_E_S_T_151v:bb.a

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
  %69 = sub i64 %i.cv, %i.cw
  %70 = add i64 %69, -8                           ; 2 uses
  %i.dh = lshr i64 %70, 3
  %i.di = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %70, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader466, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.dj = add i64 %i.cv, -8
  %i.dk = sub i64 %i.dj, %i.cw
  %i.dl = and i64 %i.dk, -8
  %i.dm = add i64 %i.dl, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.df, i64 %i.dm
  %scevgep462 = getelementptr i8, ptr %i.cu, i64 %i.dm
  %bound0 = icmp ult ptr %i.df, %scevgep462
  %bound1 = icmp ult ptr %i.cu, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader466, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.di, 4611686018427387900     ; 3 uses
  %i.dn = shl i64 %n.vec, 3                       ; 2 uses
  %i.do = getelementptr i8, ptr %i.df, i64 %i.dn  ; 2 uses
  %i.dp = getelementptr i8, ptr %i.cu, i64 %i.dn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.df, i64 %i.dq ; 2 uses
  %next.gep463 = getelementptr i8, ptr %i.cu, i64 %i.dq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1259)
  call void @llvm.experimental.noalias.scope.decl(metadata !1262)
  %i.dr = getelementptr i8, ptr %next.gep463, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep463, align 8, !tbaa !619, !alias.scope !1264, !noalias !1259
  %wide.load464 = load <2 x i64>, ptr %i.dr, align 8, !tbaa !619, !alias.scope !1264, !noalias !1259
  %i.ds = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !619, !alias.scope !1267, !noalias !1264
  store <2 x i64> %wide.load464, ptr %i.ds, align 8, !tbaa !619, !alias.scope !1267, !noalias !1264
  %i.dt = getelementptr i8, ptr %next.gep463, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep463, align 8, !tbaa !619, !alias.scope !1264, !noalias !1259
  store <2 x ptr> splat (ptr null), ptr %i.dt, align 8, !tbaa !619, !alias.scope !1264, !noalias !1259
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !1269

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.di, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader466

.lr.ph.i.i.i.i.preheader466:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.df, %vector.memcheck ], [ %i.df, %.lr.ph.i.i.i.i.preheader ], [ %i.do, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.cu, %vector.memcheck ], [ %i.cu, %.lr.ph.i.i.i.i.preheader ], [ %i.dp, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader466, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader466 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader466 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1259)
  call void @llvm.experimental.noalias.scope.decl(metadata !1262)
  %i.dv = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !1262, !noalias !1259
  store i64 %i.dv, ptr %.012.i.i.i.i, align 8, !tbaa !619, !alias.scope !1259, !noalias !1262
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !619, !alias.scope !1262, !noalias !1259
  %i.dw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i308 = icmp eq ptr %i.dw, %i.cq
  br i1 %.not.i.i.i.i308, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1270

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc310
  %.0.lcssa.i.i.i.i = phi ptr [ %i.df, %.noexc310 ], [ %i.do, %middle.block ], [ %i.dx, %.lr.ph.i.i.i.i ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.cu, null
  br i1 %.not.i23.i, label %.noexc153, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.dz = load ptr, ptr %i.cr, align 8, !tbaa !624
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = sub i64 %i.ea, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.eb) #23
  br label %.noexc153

.noexc153:                                        ; preds = %bb.o, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.df, ptr %i.co, align 8, !tbaa !625
  store ptr %i.dy, ptr %i.cp, align 8, !tbaa !621
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dd
  store ptr %i.ec, ptr %i.cr, align 8, !tbaa !624
  %.pre = load ptr, ptr %i.cd, align 8, !tbaa !136
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %.noexc153, %bb.l
  %i.ed = phi ptr [ %.pre, %.noexc153 ], [ %i.cn, %bb.l ]
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !138 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 264
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.eg = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 11 uses
  store ptr %i.eg, ptr %16, align 8, !tbaa !22
  store i8 120, ptr %i.eg, align 8, !tbaa !25
  %i.eh = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  store i64 1, ptr %i.eh, align 8, !tbaa !26
  %i.ei = getelementptr inbounds nuw i8, ptr %16, i64 17
  store i8 0, ptr %i.ei, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  invoke void @_ZN5vcpkg18PlatformExpression25parse_platform_expressionENS_10StringViewENS0_23MultipleBinaryOperatorsE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT.400") align 8 %17, ptr nonnull @.str.417, i64 5, i32 noundef 0)
          to label %bb.p unwind label %bb.ba

bb.p:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %i.ej = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  store i32 2423, ptr %18, align 8, !tbaa !143
  %i.ek = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr @.str, ptr %i.ek, align 8, !tbaa !145
  %i.el = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr @__func__._ZL21C_A_T_C_H_T_E_S_T_151v, ptr %i.el, align 8, !tbaa !146
  %i.em = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  %i.en = load i8, ptr %i.em, align 8, !tbaa !1149, !range !90, !noundef !91
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.q, label %_ZNO5vcpkg9ExpectedTINS_18PlatformExpression4ExprENS_15LocalizedStringEE13value_or_exitERKNS_8LineInfoE.exit

bb.q:                                             ; preds = %bb.p
  %i.ep = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKR5vcpkg9ExpectedTINS_18PlatformExpression4ExprENS_15LocalizedStringEE5errorEv(ptr noundef nonnull align 8 dereferenceable(33) %17) #22
  invoke void @_ZN5vcpkg6Checks21msg_exit_with_messageERKNS_8LineInfoERKNS_15LocalizedStringE(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(32) %i.ep) #25
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.eq = landingpad { ptr, i32 }
          catch ptr null
  %i.er = extractvalue { ptr, i32 } %i.eq, 0
  call void @__clang_call_terminate(ptr %i.er) #21
  unreachable

_ZNO5vcpkg9ExpectedTINS_18PlatformExpression4ExprENS_15LocalizedStringEE13value_or_exitERKNS_8LineInfoE.exit: ; preds = %bb.p
  call void @_ZN5vcpkg18PlatformExpression4ExprC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, ptr noundef nonnull align 8 dereferenceable(8) %17) #22
  %i.es = getelementptr inbounds nuw i8, ptr %i.ee, i64 272 ; 3 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !672 ; 7 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ee, i64 280
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !671
  %.not.i.i158 = icmp eq ptr %i.et, %i.ev
  br i1 %.not.i.i158, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_ZNO5vcpkg9ExpectedTINS_18PlatformExpression4ExprENS_15LocalizedStringEE13value_or_exitERKNS_8LineInfoE.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 3 uses
  store ptr %i.ew, ptr %i.et, align 8, !tbaa !22
  %i.ex = load ptr, ptr %16, align 8, !tbaa !28   ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.eg
  br i1 %i.ey, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i159

bb.u:                                             ; preds = %bb.t
  %i.ez = load i64, ptr %i.eh, align 8, !tbaa !26 ; 3 uses
  %i.fa = icmp ult i64 %i.ez, 16
  call void @llvm.assume(i1 %i.fa)
  %i.fb = add nuw nsw i64 %i.ez, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ew, ptr noundef nonnull align 8 dereferenceable(1) %i.eg, i64 %i.fb, i1 false)
  br label %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i159: ; preds = %bb.t
  store ptr %i.ex, ptr %i.et, align 8, !tbaa !28
  %i.fc = load i64, ptr %i.eg, align 8, !tbaa !25
  store i64 %i.fc, ptr %i.ew, align 8, !tbaa !25
  %.pre366 = load i64, ptr %i.eh, align 8, !tbaa !26
  br label %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i

_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i159, %bb.u
  %i.fd = phi i64 [ %.pre366, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i159 ], [ %i.ez, %bb.u ]
  %i.fe = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store i64 %i.fd, ptr %i.fe, align 8, !tbaa !26
  store ptr %i.eg, ptr %16, align 8, !tbaa !28
  store i64 0, ptr %i.eh, align 8, !tbaa !26
  store i8 0, ptr %i.eg, align 8, !tbaa !25
  %i.ff = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.ff, ptr noundef nonnull align 8 dereferenceable(8) %i.ej) #22
  %i.fg = load ptr, ptr %i.es, align 8, !tbaa !672
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  store ptr %i.fh, ptr %i.es, align 8, !tbaa !672
  br label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit

bb.v:                                             ; preds = %_ZNO5vcpkg9ExpectedTINS_18PlatformExpression4ExprENS_15LocalizedStringEE13value_or_exitERKNS_8LineInfoE.exit
  invoke void @_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ef, ptr %i.et, ptr noundef nonnull align 8 dereferenceable(40) %16)
          to label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit unwind label %bb.az

_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i, %bb.v
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ej) #22
  %i.fi = load ptr, ptr %16, align 8, !tbaa !28   ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.eg
  br i1 %i.fj, label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i161: ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit
  %i.fk = load i64, ptr %i.eg, align 8, !tbaa !25
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fl) #23
  br label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit

_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit:   ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.fm = load i8, ptr %i.em, align 8, !tbaa !1149, !range !90, !noundef !91
  %i.fn = trunc nuw i8 %i.fm to i1
  br i1 %i.fn, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit
  %i.fo = load ptr, ptr %17, align 8, !tbaa !28   ; 2 uses
end_hunk_14
begin_hunk_15_@_ZL21C_A_T_C_H_T_E_S_T_155v:bb.a
  %24 = alloca %"struct.vcpkg::Version", align 8  ; 9 uses
  %25 = alloca %"struct.vcpkg::RemovePlanAction", align 8 ; 13 uses
  %26 = alloca %"struct.vcpkg::PackageSpec", align 8 ; 10 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"struct.vcpkg::RemovePlanAction", align 8 ; 13 uses
  %29 = alloca %"struct.vcpkg::PackageSpec", align 8 ; 10 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %31 = alloca %"struct.vcpkg::RemovePlanAction", align 8 ; 13 uses
  %32 = alloca %"struct.vcpkg::PackageSpec", align 8 ; 10 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %34 = alloca %"struct.vcpkg::PackagesDirAssigner", align 8 ; 13 uses
  %35 = alloca %"struct.vcpkg::Path", align 8     ; 9 uses
  %36 = alloca %"struct.vcpkg::InstallPlanAction", align 8 ; 9 uses
  %37 = alloca %"struct.vcpkg::PackageSpec", align 8 ; 10 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %39 = alloca %"class.std::map.147", align 8     ; 12 uses
  %40 = alloca %"class.std::vector.152", align 8  ; 10 uses
  %41 = alloca %"class.std::vector.42", align 8   ; 10 uses
  %42 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %43 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %44 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %45 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %46 = alloca %"class.Catch::BinaryExpr.359", align 8 ; 13 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %48 = alloca %"struct.vcpkg::InstallPlanAction", align 8 ; 8 uses
  %49 = alloca %"struct.vcpkg::PackageSpec", align 8 ; 10 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %51 = alloca %"class.std::map.147", align 8     ; 14 uses
  %52 = alloca [1 x %"struct.std::pair.256"], align 8 ; 16 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %54 = alloca %"class.std::vector.258", align 8  ; 10 uses
  %55 = alloca %"class.std::vector.152", align 8  ; 10 uses
  %56 = alloca %"class.std::vector.42", align 8   ; 10 uses
  %57 = alloca %"struct.vcpkg::InstallPlanAction", align 8 ; 8 uses
  %58 = alloca %"struct.vcpkg::PackageSpec", align 8 ; 10 uses
  %59 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %60 = alloca %"class.std::map.147", align 8     ; 12 uses
  %61 = alloca %"class.std::vector.152", align 8  ; 10 uses
  %62 = alloca %"class.std::vector.42", align 8   ; 10 uses
  %63 = alloca %"struct.vcpkg::AlreadyInstalledPlanAction", align 8 ; 16 uses
  %64 = alloca %"struct.vcpkg::Optional.429", align 8 ; 12 uses
  %65 = alloca %"struct.vcpkg::PackageSpec", align 8 ; 10 uses
  %66 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %67 = alloca %"struct.vcpkg::LineInfo", align 8 ; 7 uses
  %68 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %69 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %70 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %71 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %72 = alloca %"class.Catch::BinaryExpr.368", align 8 ; 13 uses
  %73 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %74 = alloca %"struct.vcpkg::AlreadyInstalledPlanAction", align 8 ; 15 uses
  %75 = alloca %"struct.vcpkg::Optional.429", align 8 ; 12 uses
  %76 = alloca %"struct.vcpkg::PackageSpec", align 8 ; 10 uses
  %77 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %78 = alloca %"struct.vcpkg::LineInfo", align 8 ; 7 uses
  %79 = alloca %"struct.vcpkg::InstallPlanAction", align 8 ; 8 uses
  %80 = alloca %"struct.vcpkg::PackageSpec", align 8 ; 10 uses
  %81 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %82 = alloca %"class.std::map.147", align 8     ; 12 uses
  %83 = alloca %"class.std::vector.152", align 8  ; 10 uses
  %84 = alloca %"class.std::vector.42", align 8   ; 10 uses
  %85 = alloca %"struct.vcpkg::ActionPlan", align 8 ; 28 uses
  %86 = alloca %"struct.vcpkg::FormattedPlan", align 8 ; 11 uses
  %87 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %88 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %89 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %90 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %91 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %92 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %93 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %94 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %95 = alloca %"class.Catch::BinaryExpr.433", align 8 ; 13 uses
  %96 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 10 uses
  %97 = alloca %"struct.vcpkg::FormattedPlan", align 8 ; 11 uses
  %98 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %99 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %100 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %101 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %102 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %103 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %104 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %105 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %106 = alloca %"class.Catch::BinaryExpr.434", align 8 ; 13 uses
  %107 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 10 uses
  %108 = alloca %"struct.vcpkg::Optional", align 8 ; 14 uses
  %109 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 9 uses
  %110 = alloca %"struct.vcpkg::FormattedPlan", align 8 ; 10 uses
  %111 = alloca %"class.Catch::AssertionHandler", align 8 ; 10 uses
  %112 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %113 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %114 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %115 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %116 = alloca %"struct.Catch::MessageStream", align 8 ; 9 uses
  %117 = alloca %"struct.vcpkg::Optional", align 8 ; 14 uses
  %118 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 9 uses
  %119 = alloca %"struct.vcpkg::FormattedPlan", align 8 ; 10 uses
  %120 = alloca %"class.Catch::AssertionHandler", align 8 ; 10 uses
  %121 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %122 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %123 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %124 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %125 = alloca %"struct.Catch::MessageStream", align 8 ; 9 uses
  %126 = alloca %"struct.vcpkg::Optional", align 8 ; 14 uses
  %127 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 9 uses
  %128 = alloca %"struct.vcpkg::FormattedPlan", align 8 ; 10 uses
  %129 = alloca %"class.Catch::AssertionHandler", align 8 ; 10 uses
  %130 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %131 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %132 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %133 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %134 = alloca %"struct.Catch::MessageStream", align 8 ; 9 uses
  %135 = alloca %"struct.vcpkg::Optional", align 8 ; 14 uses
  %136 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 9 uses
  %137 = alloca %"struct.vcpkg::FormattedPlan", align 8 ; 10 uses
  %138 = alloca %"class.Catch::AssertionHandler", align 8 ; 10 uses
  %139 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %140 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %141 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %142 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %143 = alloca %"struct.Catch::MessageStream", align 8 ; 9 uses
  %144 = alloca %"struct.vcpkg::FormattedPlan", align 8 ; 11 uses
  %145 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %146 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %147 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %148 = alloca %"class.Catch::StringRef", align 8 ; 3 uses
  %149 = alloca %"struct.vcpkg::Optional", align 8 ; 14 uses
  %150 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 9 uses
  %151 = alloca %"class.Catch::AssertionHandler", align 8 ; 10 uses
  %152 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %153 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %154 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %155 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %156 = alloca %"struct.Catch::MessageStream", align 8 ; 9 uses
  %157 = alloca %"struct.vcpkg::Optional", align 8 ; 14 uses
  %158 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 9 uses
  %159 = alloca %"struct.vcpkg::FormattedPlan", align 8 ; 10 uses
  %160 = alloca %"class.Catch::AssertionHandler", align 8 ; 10 uses
  %161 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %162 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 6 uses
  %163 = alloca %"class.Catch::StringRef", align 8 ; 6 uses
  %164 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %165 = alloca %"struct.Catch::MessageStream", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  invoke void @_ZN5vcpkg4Test15make_status_pghEPKcS2_S2_S2_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.417") align 8 %13, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.448)
          to label %bb.b unwind label %bb.ac

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1295 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1298
  %.not.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i.i, label %bb.c, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.b
  %i.h = load i64, ptr %13, align 8, !tbaa !1299
  store i64 %i.h, ptr %i.e, align 8, !tbaa !1299
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.i, ptr %i.d, align 8, !tbaa !1295
  br label %_ZNSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS1_EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %12, align 8, !tbaa !1301  ; 10 uses
  %i.k = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 4 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc1006 unwind label %bb.ad

.noexc1006:                                       ; preds = %bb.d
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i, %i.o  ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i1003 = icmp ne i64 %i.s, 0
  call void @llvm.assume(i1 %.not.i.i1003)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #24
          to label %.noexc1007 unwind label %bb.ad ; 10 uses

.noexc1007:                                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  %i.w = load i64, ptr %13, align 8, !tbaa !1299
  store i64 %i.w, ptr %i.v, align 8, !tbaa !1299
  store ptr null, ptr %13, align 8, !tbaa !1299
  %.not10.i.i.i.i = icmp eq ptr %i.j, %i.e
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i1004.preheader

.lr.ph.i.i.i.i1004.preheader:                     ; preds = %.noexc1007
  %166 = sub i64 %i.k, %i.l
  %167 = add i64 %166, -8                         ; 2 uses
  %i.x = lshr i64 %167, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %167, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i1004.preheader1529, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i1004.preheader
  %i.z = add i64 %i.k, -8
  %i.aa = sub i64 %i.z, %i.l
  %i.ab = and i64 %i.aa, -8
  %i.ac = add i64 %i.ab, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.u, i64 %i.ac
  %scevgep1503 = getelementptr i8, ptr %i.j, i64 %i.ac
  %bound0 = icmp ult ptr %i.u, %scevgep1503
  %bound1 = icmp ult ptr %i.j, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i1004.preheader1529, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 4611686018427387900      ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.u, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.j, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ag ; 2 uses
  %next.gep1504 = getelementptr i8, ptr %i.j, i64 %i.ag ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  %i.ah = getelementptr i8, ptr %next.gep1504, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1504, align 8, !tbaa !1299, !alias.scope !1307, !noalias !1302
  %wide.load1505 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !1299, !alias.scope !1307, !noalias !1302
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1299, !alias.scope !1310, !noalias !1307
  store <2 x i64> %wide.load1505, ptr %i.ai, align 8, !tbaa !1299, !alias.scope !1310, !noalias !1307
  %i.aj = getelementptr i8, ptr %next.gep1504, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1504, align 8, !tbaa !1299, !alias.scope !1307, !noalias !1302
  store <2 x ptr> splat (ptr null), ptr %i.aj, align 8, !tbaa !1299, !alias.scope !1307, !noalias !1302
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !1312

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i1004.preheader1529

.lr.ph.i.i.i.i1004.preheader1529:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i1004.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i1004.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.i.i.i1004.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i1004

.lr.ph.i.i.i.i1004:                               ; preds = %.lr.ph.i.i.i.i1004.preheader1529, %.lr.ph.i.i.i.i1004
  %.012.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i1004 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i1004.preheader1529 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i1004 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i1004.preheader1529 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  %i.al = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !1299, !alias.scope !1305, !noalias !1302
  store i64 %i.al, ptr %.012.i.i.i.i, align 8, !tbaa !1299, !alias.scope !1302, !noalias !1305
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !1299, !alias.scope !1305, !noalias !1302
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i1005 = icmp eq ptr %i.am, %i.e
  br i1 %.not.i.i.i.i1005, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i1004, !llvm.loop !1313

_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i1004, %middle.block, %.noexc1007
  %.0.lcssa.i.i.i.i = phi ptr [ %i.u, %.noexc1007 ], [ %i.ae, %middle.block ], [ %i.an, %.lr.ph.i.i.i.i1004 ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.m) #23
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.e
  store ptr %i.u, ptr %12, align 8, !tbaa !1301
  store ptr %i.ao, ptr %i.d, align 8, !tbaa !1295
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ap, ptr %i.f, align 8, !tbaa !1298
  %.pr = load ptr, ptr %13, align 8, !tbaa !1299  ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5vcpkg15StatusParagraphEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5vcpkg15StatusParagraphEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  call void @_ZN5vcpkg15BinaryParagraphD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(248) %.pr) #22
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 248) #23
  br label %_ZNSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN5vcpkg15StatusParagraphEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN5vcpkg4Test15make_status_pghEPKcS2_S2_S2_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.417") align 8 %14, ptr noundef nonnull @.str.449, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.448)
          to label %bb.f unwind label %bb.af

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS1_EED2Ev.exit
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !1295 ; 6 uses
  %i.ar = load ptr, ptr %i.f, align 8, !tbaa !1298
  %.not.i.i292 = icmp eq ptr %i.aq, %i.ar
  br i1 %.not.i.i292, label %bb.g, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit294.thread

_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit294.thread: ; preds = %bb.f
  %i.as = load i64, ptr %14, align 8, !tbaa !1299
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !1299
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.at, ptr %i.d, align 8, !tbaa !1295
  br label %_ZNSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS1_EED2Ev.exit297

bb.g:                                             ; preds = %bb.f
  %i.au = load ptr, ptr %12, align 8, !tbaa !1301 ; 10 uses
  %i.av = ptrtoint ptr %i.aq to i64               ; 3 uses
  %i.aw = ptrtoint ptr %i.au to i64               ; 3 uses
  %i.ax = sub i64 %i.av, %i.aw                    ; 4 uses
  %i.ay = icmp eq i64 %i.ax, 9223372036854775800
  br i1 %i.ay, label %bb.h, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i1008

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc1026 unwind label %bb.ag

.noexc1026:                                       ; preds = %bb.h
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i1008: ; preds = %bb.g
  %i.az = ashr exact i64 %i.ax, 3                 ; 3 uses
  %.sroa.speculated.i.i1009 = call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  %i.ba = add nsw i64 %.sroa.speculated.i.i1009, %i.az ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.az
  %i.bc = call i64 @llvm.umin.i64(i64 %i.ba, i64 1152921504606846975)
  %i.bd = select i1 %i.bb, i64 1152921504606846975, i64 %i.bc ; 3 uses
  %.not.i.i1010 = icmp ne i64 %i.bd, 0
  call void @llvm.assume(i1 %.not.i.i1010)
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #24
          to label %.noexc1027 unwind label %bb.ag ; 10 uses

.noexc1027:                                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i1008
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.ax
  %i.bh = load i64, ptr %14, align 8, !tbaa !1299
  store i64 %i.bh, ptr %i.bg, align 8, !tbaa !1299
  store ptr null, ptr %14, align 8, !tbaa !1299
  %.not10.i.i.i.i1011 = icmp eq ptr %i.au, %i.aq
  br i1 %.not10.i.i.i.i1011, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i1023, label %.lr.ph.i.i.i.i1012.preheader

.lr.ph.i.i.i.i1012.preheader:                     ; preds = %.noexc1027
  %168 = sub i64 %i.av, %i.aw
  %169 = add i64 %168, -8                         ; 2 uses
  %i.bi = lshr i64 %169, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check1514 = icmp ult i64 %169, 136
  br i1 %min.iters.check1514, label %.lr.ph.i.i.i.i1012.preheader1528, label %vector.memcheck1507

vector.memcheck1507:                              ; preds = %.lr.ph.i.i.i.i1012.preheader
  %i.bk = add i64 %i.av, -8
  %i.bl = sub i64 %i.bk, %i.aw
  %i.bm = and i64 %i.bl, -8
  %i.bn = add i64 %i.bm, 8                        ; 2 uses
  %scevgep1508 = getelementptr i8, ptr %i.bf, i64 %i.bn
  %scevgep1509 = getelementptr i8, ptr %i.au, i64 %i.bn
  %bound01510 = icmp ult ptr %i.bf, %scevgep1509
  %bound11511 = icmp ult ptr %i.au, %scevgep1508
  %found.conflict1512 = and i1 %bound01510, %bound11511
  br i1 %found.conflict1512, label %.lr.ph.i.i.i.i1012.preheader1528, label %vector.ph1515

vector.ph1515:                                    ; preds = %vector.memcheck1507
  %n.vec1516 = and i64 %i.bj, 4611686018427387900 ; 3 uses
  %i.bo = shl i64 %n.vec1516, 3                   ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bf, i64 %i.bo  ; 2 uses
  %i.bq = getelementptr i8, ptr %i.au, i64 %i.bo
  br label %vector.body1517

vector.body1517:                                  ; preds = %vector.body1517, %vector.ph1515
  %index1518 = phi i64 [ 0, %vector.ph1515 ], [ %index.next1523, %vector.body1517 ] ; 2 uses
  %i.br = shl i64 %index1518, 3                   ; 2 uses
  %next.gep1519 = getelementptr i8, ptr %i.bf, i64 %i.br ; 2 uses
  %next.gep1520 = getelementptr i8, ptr %i.au, i64 %i.br ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  %i.bs = getelementptr i8, ptr %next.gep1520, i64 16
  %wide.load1521 = load <2 x i64>, ptr %next.gep1520, align 8, !tbaa !1299, !alias.scope !1319, !noalias !1314
  %wide.load1522 = load <2 x i64>, ptr %i.bs, align 8, !tbaa !1299, !alias.scope !1319, !noalias !1314
  %i.bt = getelementptr i8, ptr %next.gep1519, i64 16
  store <2 x i64> %wide.load1521, ptr %next.gep1519, align 8, !tbaa !1299, !alias.scope !1322, !noalias !1319
  store <2 x i64> %wide.load1522, ptr %i.bt, align 8, !tbaa !1299, !alias.scope !1322, !noalias !1319
  %i.bu = getelementptr i8, ptr %next.gep1520, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1520, align 8, !tbaa !1299, !alias.scope !1319, !noalias !1314
  store <2 x ptr> splat (ptr null), ptr %i.bu, align 8, !tbaa !1299, !alias.scope !1319, !noalias !1314
  %index.next1523 = add nuw i64 %index1518, 4     ; 2 uses
  %i.bv = icmp eq i64 %index.next1523, %n.vec1516
  br i1 %i.bv, label %middle.block1524, label %vector.body1517, !llvm.loop !1324

middle.block1524:                                 ; preds = %vector.body1517
  %cmp.n1525 = icmp eq i64 %i.bj, %n.vec1516
  br i1 %cmp.n1525, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i1023, label %.lr.ph.i.i.i.i1012.preheader1528

.lr.ph.i.i.i.i1012.preheader1528:                 ; preds = %vector.memcheck1507, %.lr.ph.i.i.i.i1012.preheader, %middle.block1524
  %.012.i.i.i.i1013.ph = phi ptr [ %i.bf, %vector.memcheck1507 ], [ %i.bf, %.lr.ph.i.i.i.i1012.preheader ], [ %i.bp, %middle.block1524 ]
  %.0911.i.i.i.i1014.ph = phi ptr [ %i.au, %vector.memcheck1507 ], [ %i.au, %.lr.ph.i.i.i.i1012.preheader ], [ %i.bq, %middle.block1524 ]
  br label %.lr.ph.i.i.i.i1012

.lr.ph.i.i.i.i1012:                               ; preds = %.lr.ph.i.i.i.i1012.preheader1528, %.lr.ph.i.i.i.i1012
  %.012.i.i.i.i1013 = phi ptr [ %i.by, %.lr.ph.i.i.i.i1012 ], [ %.012.i.i.i.i1013.ph, %.lr.ph.i.i.i.i1012.preheader1528 ] ; 2 uses
  %.0911.i.i.i.i1014 = phi ptr [ %i.bx, %.lr.ph.i.i.i.i1012 ], [ %.0911.i.i.i.i1014.ph, %.lr.ph.i.i.i.i1012.preheader1528 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  %i.bw = load i64, ptr %.0911.i.i.i.i1014, align 8, !tbaa !1299, !alias.scope !1317, !noalias !1314
  store i64 %i.bw, ptr %.012.i.i.i.i1013, align 8, !tbaa !1299, !alias.scope !1314, !noalias !1317
  store ptr null, ptr %.0911.i.i.i.i1014, align 8, !tbaa !1299, !alias.scope !1317, !noalias !1314
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i1014, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1013, i64 8 ; 2 uses
  %.not.i.i.i.i1015 = icmp eq ptr %i.bx, %i.aq
  br i1 %.not.i.i.i.i1015, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i1023, label %.lr.ph.i.i.i.i1012, !llvm.loop !1325

_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i1023: ; preds = %.lr.ph.i.i.i.i1012, %middle.block1524, %.noexc1027
  %.0.lcssa.i.i.i.i1017 = phi ptr [ %i.bf, %.noexc1027 ], [ %i.bp, %middle.block1524 ], [ %i.by, %.lr.ph.i.i.i.i1012 ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i1017, i64 8
  %.not.i23.i1025 = icmp eq ptr %i.au, null
  br i1 %.not.i23.i1025, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit294, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i1023
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ax) #23
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit294

_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit294: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i1023, %bb.i
  store ptr %i.bf, ptr %12, align 8, !tbaa !1301
  store ptr %i.bz, ptr %i.d, align 8, !tbaa !1295
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bd
  store ptr %i.ca, ptr %i.f, align 8, !tbaa !1298
  %.pr1094 = load ptr, ptr %14, align 8, !tbaa !1299 ; 3 uses
  %.not.i295 = icmp eq ptr %.pr1094, null
  br i1 %.not.i295, label %_ZNSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS1_EED2Ev.exit297, label %_ZNKSt14default_deleteIN5vcpkg15StatusParagraphEEclEPS1_.exit.i296

_ZNKSt14default_deleteIN5vcpkg15StatusParagraphEEclEPS1_.exit.i296: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit294
  call void @_ZN5vcpkg15BinaryParagraphD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(248) %.pr1094) #22
  call void @_ZdlPvm(ptr noundef nonnull %.pr1094, i64 noundef 248) #23
  br label %_ZNSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS1_EED2Ev.exit297

_ZNSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS1_EED2Ev.exit297: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit294.thread, %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit294, %_ZNKSt14default_deleteIN5vcpkg15StatusParagraphEEclEPS1_.exit.i296
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  invoke void @_ZN5vcpkg16StatusParagraphsC1EOSt6vectorISt10unique_ptrINS_15StatusParagraphESt14default_deleteIS3_EESaIS6_EE(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %._crit_edge.i.i unwind label %bb.ai

._crit_edge.i.i:                                  ; preds = %_ZNSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS1_EED2Ev.exit297
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV29MockVersionedPortfileProvider, i64 16), ptr %16, align 8, !tbaa !9
  %i.cb = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store i32 0, ptr %i.cb, align 8, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  store ptr null, ptr %i.cc, align 8, !tbaa !11
  %i.cd = getelementptr inbounds nuw i8, ptr %16, i64 32
  store ptr %i.cb, ptr %i.cd, align 8, !tbaa !19
  %i.ce = getelementptr inbounds nuw i8, ptr %16, i64 40
  store ptr %i.cb, ptr %i.ce, align 8, !tbaa !20
  %i.cf = getelementptr inbounds nuw i8, ptr %16, i64 48
  store i64 0, ptr %i.cf, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.cg = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.cg, ptr %17, align 8, !tbaa !22
  store i8 97, ptr %i.cg, align 8, !tbaa !25
  %i.ch = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 1, ptr %i.ch, align 8, !tbaa !26
  %i.ci = getelementptr inbounds nuw i8, ptr %17, i64 17
  store i8 0, ptr %i.ci, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %18, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit unwind label %bb.aj

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit:          ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr @.str.123, ptr %11, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !33
  %i.cj = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(36) %18, i32 noundef 4, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %11)
          to label %bb.j unwind label %bb.ak

bb.j:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.ck = load ptr, ptr %18, align 8, !tbaa !28   ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZN5vcpkg7VersionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !25
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit

_ZN5vcpkg7VersionD2Ev.exit:                       ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.cp = load ptr, ptr %17, align 8, !tbaa !28   ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.cg
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5vcpkg7VersionD2Ev.exit
  %i.cr = load i64, ptr %i.cg, align 8, !tbaa !25
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5vcpkg7VersionD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.ct = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.ct, ptr %19, align 8, !tbaa !22
  store i8 98, ptr %i.ct, align 8, !tbaa !25
  %i.cu = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 1, ptr %i.cu, align 8, !tbaa !26
  %i.cv = getelementptr inbounds nuw i8, ptr %19, i64 17
  store i8 0, ptr %i.cv, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %20, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit306 unwind label %bb.al

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit306:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr @.str.123, ptr %10, align 8, !tbaa !32
  %.sroa.4.0..sroa_idx.i307 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i307, align 8, !tbaa !33
  %i.cw = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(36) %20, i32 noundef 4, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %10)
          to label %bb.k unwind label %bb.am

bb.k:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit306
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.cx = load ptr, ptr %20, align 8, !tbaa !28   ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZN5vcpkg7VersionD2Ev.exit312, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i310

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i310: ; preds = %bb.k
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !25
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit312

_ZN5vcpkg7VersionD2Ev.exit312:                    ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i310
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %i.dc = load ptr, ptr %19, align 8, !tbaa !28   ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.ct
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313: ; preds = %_ZN5vcpkg7VersionD2Ev.exit312
  %i.de = load i64, ptr %i.ct, align 8, !tbaa !25
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315
end_hunk_15
