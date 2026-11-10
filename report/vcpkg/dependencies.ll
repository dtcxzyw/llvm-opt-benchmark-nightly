Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/dependencies?download=true
inline.NumInlined: 13345
inline.NumDeleted: 2349
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumUnrolled: 71
begin_hunk_0_@_ZL20C_A_T_C_H_T_E_S_T_74v:bb.a
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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV29MockVersionedPortfileProvider, i64 16), ptr %12, align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store i32 0, ptr %i.h, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  store ptr null, ptr %i.i, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %i.h, ptr %i.j, align 8, !tbaa !42
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 40
  store ptr %i.h, ptr %i.k, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 48
  store i64 0, ptr %i.l, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !864)
  %i.m = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #24
          to label %.noexc unwind label %bb.bn    ; 13 uses

.noexc:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.n, i8 0, i64 160, i1 false), !noalias !864
  store ptr %i.n, ptr %i.m, align 16, !tbaa !47, !noalias !864
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store i64 0, ptr %i.o, align 8, !tbaa !50, !noalias !864
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.p, i8 0, i64 48, i1 false), !noalias !864
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #22, !noalias !864
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  invoke void @_ZN5vcpkg28ParsedSpdxLicenseDeclarationC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.r)
          to label %bb.c unwind label %bb.b, !noalias !864

bb.b:                                             ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #22, !noalias !864
  call void @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.t) #22, !noalias !864
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.p) #22, !noalias !864
  %i.u = load ptr, ptr %i.m, align 16, !tbaa !51, !noalias !864 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.n
  br i1 %i.v, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.w = load i64, ptr %i.n, align 16, !tbaa !48, !noalias !864
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #23, !noalias !864
  br label %.body.i

.body.i:                                          ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 176) #23, !noalias !864
  br label %.body

bb.c:                                             ; preds = %.noexc
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false), !noalias !864
  store ptr %i.m, ptr %13, align 8, !tbaa !210, !alias.scope !864
  %i.z = load i64, ptr %i.o, align 8, !tbaa !50
  %i.aa = ptrtoint ptr %i.m to i64                ; 2 uses
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 noundef 0, i64 noundef %i.z, ptr noundef nonnull @.str.216, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.bo ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.ac, ptr %14, align 8, !tbaa !47
  store i8 97, ptr %i.ac, align 8, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 1, ptr %i.ad, align 8, !tbaa !50
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 17
  store i8 0, ptr %i.ae, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %15, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit unwind label %bb.bp

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr @.str.123, ptr %11, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !56
  %i.af = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(36) %15, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %11)
          to label %bb.d unwind label %bb.bq

bb.d:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !150 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !213 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !214
  %.not.i.i = icmp eq ptr %i.aj, %i.al
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.aa, ptr %i.aj, align 8, !tbaa !210
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !213
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

bb.f:                                             ; preds = %bb.d
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !215 ; 10 uses
  %i.ao = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64               ; 3 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 3 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc750 unwind label %bb.bq

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
          to label %.noexc751 unwind label %bb.bq ; 10 uses

.noexc751:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aq
  store i64 %i.aa, ptr %i.az, align 8, !tbaa !210
  store ptr null, ptr %13, align 8, !tbaa !210
  %.not10.i.i.i.i = icmp eq ptr %i.an, %i.aj
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc751
  %i.ba = add i64 %i.ao, -8
  %i.bb = sub i64 %i.ba, %i.ap                    ; 3 uses
  %i.bc = lshr i64 %i.bb, 3
  %i.bd = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bb, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader1239, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.be = and i64 %i.bb, -8
  %i.bf = add i64 %i.be, 8                        ; 2 uses
  %i.bg = getelementptr i8, ptr %i.ay, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.an, i64 %i.bf
  %bound0 = icmp ult ptr %i.ay, %i.bh
  %bound1 = icmp ult ptr %i.an, %i.bg
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader1239, label %vector.ph

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
  %next.gep1185 = getelementptr i8, ptr %i.an, i64 %i.bl ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !865)
  call void @llvm.experimental.noalias.scope.decl(metadata !866)
  %i.bm = getelementptr i8, ptr %next.gep1185, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1185, align 8, !tbaa !210, !alias.scope !867
  %wide.load1186 = load <2 x i64>, ptr %i.bm, align 8, !tbaa !210, !alias.scope !867
  %i.bn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !210, !alias.scope !868, !noalias !869
  store <2 x i64> %wide.load1186, ptr %i.bn, align 8, !tbaa !210, !alias.scope !868, !noalias !869
  %113 = getelementptr i8, ptr %next.gep1185, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1185, align 8, !tbaa !210, !alias.scope !867
  store <2 x ptr> splat (ptr null), ptr %113, align 8, !tbaa !210, !alias.scope !867
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !826

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader1239

.lr.ph.i.i.i.i.preheader1239:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ay, %vector.memcheck ], [ %i.ay, %.lr.ph.i.i.i.i.preheader ], [ %i.bj, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.i.i.i.preheader ], [ %i.bk, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader1239, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader1239 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader1239 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !865)
  call void @llvm.experimental.noalias.scope.decl(metadata !866)
  %i.bp = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !210, !alias.scope !866
  store i64 %i.bp, ptr %.012.i.i.i.i, align 8, !tbaa !210, !alias.scope !865
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !210, !alias.scope !866
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bq, %i.aj
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !827

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc751
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ay, %.noexc751 ], [ %i.bj, %middle.block ], [ %i.br, %.lr.ph.i.i.i.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.an, null
  br i1 %.not.i23.i, label %.noexc307, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.bt = load ptr, ptr %i.ak, align 8, !tbaa !214
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.bv) #23
  br label %.noexc307

.noexc307:                                        ; preds = %bb.h, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.ay, ptr %i.ah, align 8, !tbaa !215
  store ptr %i.bs, ptr %i.ai, align 8, !tbaa !213
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  store ptr %i.bw, ptr %i.ak, align 8, !tbaa !214
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %.noexc307, %bb.e
  %i.bx = load ptr, ptr %15, align 8, !tbaa !51   ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZN5vcpkg7VersionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !48
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit

_ZN5vcpkg7VersionD2Ev.exit:                       ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.cc = load ptr, ptr %14, align 8, !tbaa !51   ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.ac
  br i1 %i.cd, label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5vcpkg7VersionD2Ev.exit
  %i.ce = load i64, ptr %i.ac, align 8, !tbaa !48
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #23
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN5vcpkg7VersionD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !870)
  %i.cg = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #24
          to label %.noexc311 unwind label %bb.bs ; 13 uses

.noexc311:                                        ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.ch, i8 0, i64 160, i1 false), !noalias !870
  store ptr %i.ch, ptr %i.cg, align 16, !tbaa !47, !noalias !870
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  store i64 0, ptr %i.ci, align 8, !tbaa !50, !noalias !870
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 32 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.cj, i8 0, i64 48, i1 false), !noalias !870
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ck) #22, !noalias !870
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 88
  invoke void @_ZN5vcpkg28ParsedSpdxLicenseDeclarationC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.cl)
          to label %bb.j unwind label %bb.i, !noalias !870

bb.i:                                             ; preds = %.noexc311
  %i.cm = landingpad { ptr, i32 }
          cleanup
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 56
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ck) #22, !noalias !870
  call void @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cn) #22, !noalias !870
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cj) #22, !noalias !870
  %i.co = load ptr, ptr %i.cg, align 16, !tbaa !51, !noalias !870 ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.ch
  br i1 %i.cp, label %.body.i309, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i308

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i308: ; preds = %bb.i
  %i.cq = load i64, ptr %i.ch, align 16, !tbaa !48, !noalias !870
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #23, !noalias !870
  br label %.body.i309

.body.i309:                                       ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i308
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef 176) #23, !noalias !870
  br label %.body312

bb.j:                                             ; preds = %.noexc311
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cg, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i8 0, i64 24, i1 false), !noalias !870
  store ptr %i.cg, ptr %16, align 8, !tbaa !210, !alias.scope !870
  %i.ct = load i64, ptr %i.ci, align 8, !tbaa !50
  %i.cu = ptrtoint ptr %i.cg to i64               ; 2 uses
  %i.cv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cg, i64 noundef 0, i64 noundef %i.ct, ptr noundef nonnull @.str.216, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit316 unwind label %bb.bt ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit316: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.cw = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.cw, ptr %17, align 8, !tbaa !47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.cw, ptr noundef nonnull align 1 dereferenceable(6) @.str.391, i64 6, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 6, ptr %i.cx, align 8, !tbaa !50
  %i.cy = getelementptr inbounds nuw i8, ptr %17, i64 22
  store i8 0, ptr %i.cy, align 2, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %18, ptr nonnull @.str.207, i64 5, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi6EEERAT__Kci.exit unwind label %bb.bu

_ZN5vcpkg7VersionC2ILi6EEERAT__Kci.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit316
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr @.str.123, ptr %10, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i322 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i322, align 8, !tbaa !56
  %i.cz = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(36) %18, i32 noundef 2, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %10)
          to label %bb.k unwind label %bb.bv

bb.k:                                             ; preds = %_ZN5vcpkg7VersionC2ILi6EEERAT__Kci.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !150 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 3 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !213 ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 24 ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !214
  %.not.i.i325 = icmp eq ptr %i.dd, %i.df
  br i1 %.not.i.i325, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 %i.cu, ptr %i.dd, align 8, !tbaa !210
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr %i.dg, ptr %i.dc, align 8, !tbaa !213
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit327

bb.m:                                             ; preds = %bb.k
  %i.dh = load ptr, ptr %i.db, align 8, !tbaa !215 ; 10 uses
  %i.di = ptrtoint ptr %i.dd to i64               ; 2 uses
  %i.dj = ptrtoint ptr %i.dh to i64               ; 3 uses
  %i.dk = sub i64 %i.di, %i.dj                    ; 3 uses
  %i.dl = icmp eq i64 %i.dk, 9223372036854775800
  br i1 %i.dl, label %bb.n, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i752

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc770 unwind label %bb.bv

.noexc770:                                        ; preds = %bb.n
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i752: ; preds = %bb.m
  %i.dm = ashr exact i64 %i.dk, 3                 ; 3 uses
  %.sroa.speculated.i.i753 = call i64 @llvm.umax.i64(i64 %i.dm, i64 1)
  %i.dn = add nsw i64 %.sroa.speculated.i.i753, %i.dm ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.dm
  %i.dp = call i64 @llvm.umin.i64(i64 %i.dn, i64 1152921504606846975)
  %i.dq = select i1 %i.do, i64 1152921504606846975, i64 %i.dp ; 3 uses
  %.not.i.i754 = icmp ne i64 %i.dq, 0
  call void @llvm.assume(i1 %.not.i.i754)
  %i.dr = shl nuw nsw i64 %i.dq, 3
  %i.ds = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #24
          to label %.noexc771 unwind label %bb.bv ; 10 uses

.noexc771:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i752
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dk
  store i64 %i.cu, ptr %i.dt, align 8, !tbaa !210
  store ptr null, ptr %16, align 8, !tbaa !210
  %.not10.i.i.i.i755 = icmp eq ptr %i.dh, %i.dd
  br i1 %.not10.i.i.i.i755, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i767, label %.lr.ph.i.i.i.i756.preheader

.lr.ph.i.i.i.i756.preheader:                      ; preds = %.noexc771
  %i.du = add i64 %i.di, -8
  %i.dv = sub i64 %i.du, %i.dj                    ; 3 uses
  %i.dw = lshr i64 %i.dv, 3
  %i.dx = add nuw nsw i64 %i.dw, 1                ; 2 uses
  %min.iters.check1194 = icmp ult i64 %i.dv, 136
  br i1 %min.iters.check1194, label %.lr.ph.i.i.i.i756.preheader1237, label %vector.memcheck1195

vector.memcheck1195:                              ; preds = %.lr.ph.i.i.i.i756.preheader
  %i.dy = and i64 %i.dv, -8
  %i.dz = add i64 %i.dy, 8                        ; 2 uses
  %i.ea = getelementptr i8, ptr %i.ds, i64 %i.dz
  %i.eb = getelementptr i8, ptr %i.dh, i64 %i.dz
  %bound01196 = icmp ult ptr %i.ds, %i.eb
  %bound11197 = icmp ult ptr %i.dh, %i.ea
  %found.conflict1198 = and i1 %bound01196, %bound11197
  br i1 %found.conflict1198, label %.lr.ph.i.i.i.i756.preheader1237, label %vector.ph1199

vector.ph1199:                                    ; preds = %vector.memcheck1195
  %n.vec1200 = and i64 %i.dx, 4611686018427387900 ; 3 uses
  %i.ec = shl i64 %n.vec1200, 3                   ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ds, i64 %i.ec  ; 2 uses
  %i.ee = getelementptr i8, ptr %i.dh, i64 %i.ec
  br label %vector.body1201

vector.body1201:                                  ; preds = %vector.body1201, %vector.ph1199
  %index1202 = phi i64 [ 0, %vector.ph1199 ], [ %index.next1207, %vector.body1201 ] ; 2 uses
  %i.ef = shl i64 %index1202, 3                   ; 2 uses
  %next.gep1203 = getelementptr i8, ptr %i.ds, i64 %i.ef ; 2 uses
  %next.gep1204 = getelementptr i8, ptr %i.dh, i64 %i.ef ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !871)
  call void @llvm.experimental.noalias.scope.decl(metadata !872)
  %i.eg = getelementptr i8, ptr %next.gep1204, i64 16
  %wide.load1205 = load <2 x i64>, ptr %next.gep1204, align 8, !tbaa !210, !alias.scope !873
  %wide.load1206 = load <2 x i64>, ptr %i.eg, align 8, !tbaa !210, !alias.scope !873
  %i.eh = getelementptr i8, ptr %next.gep1203, i64 16
  store <2 x i64> %wide.load1205, ptr %next.gep1203, align 8, !tbaa !210, !alias.scope !874, !noalias !875
  store <2 x i64> %wide.load1206, ptr %i.eh, align 8, !tbaa !210, !alias.scope !874, !noalias !875
  %114 = getelementptr i8, ptr %next.gep1204, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1204, align 8, !tbaa !210, !alias.scope !873
  store <2 x ptr> splat (ptr null), ptr %114, align 8, !tbaa !210, !alias.scope !873
  %index.next1207 = add nuw i64 %index1202, 4     ; 2 uses
  %i.ei = icmp eq i64 %index.next1207, %n.vec1200
  br i1 %i.ei, label %middle.block1208, label %vector.body1201, !llvm.loop !836

middle.block1208:                                 ; preds = %vector.body1201
  %cmp.n1209 = icmp eq i64 %i.dx, %n.vec1200
  br i1 %cmp.n1209, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i767, label %.lr.ph.i.i.i.i756.preheader1237

.lr.ph.i.i.i.i756.preheader1237:                  ; preds = %vector.memcheck1195, %.lr.ph.i.i.i.i756.preheader, %middle.block1208
  %.012.i.i.i.i757.ph = phi ptr [ %i.ds, %vector.memcheck1195 ], [ %i.ds, %.lr.ph.i.i.i.i756.preheader ], [ %i.ed, %middle.block1208 ]
  %.0911.i.i.i.i758.ph = phi ptr [ %i.dh, %vector.memcheck1195 ], [ %i.dh, %.lr.ph.i.i.i.i756.preheader ], [ %i.ee, %middle.block1208 ]
  br label %.lr.ph.i.i.i.i756

.lr.ph.i.i.i.i756:                                ; preds = %.lr.ph.i.i.i.i756.preheader1237, %.lr.ph.i.i.i.i756
  %.012.i.i.i.i757 = phi ptr [ %i.el, %.lr.ph.i.i.i.i756 ], [ %.012.i.i.i.i757.ph, %.lr.ph.i.i.i.i756.preheader1237 ] ; 2 uses
  %.0911.i.i.i.i758 = phi ptr [ %i.ek, %.lr.ph.i.i.i.i756 ], [ %.0911.i.i.i.i758.ph, %.lr.ph.i.i.i.i756.preheader1237 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !871)
  call void @llvm.experimental.noalias.scope.decl(metadata !872)
  %i.ej = load i64, ptr %.0911.i.i.i.i758, align 8, !tbaa !210, !alias.scope !872
  store i64 %i.ej, ptr %.012.i.i.i.i757, align 8, !tbaa !210, !alias.scope !871
  store ptr null, ptr %.0911.i.i.i.i758, align 8, !tbaa !210, !alias.scope !872
  %i.ek = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i758, i64 8 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i757, i64 8 ; 2 uses
  %.not.i.i.i.i759 = icmp eq ptr %i.ek, %i.dd
  br i1 %.not.i.i.i.i759, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i767, label %.lr.ph.i.i.i.i756, !llvm.loop !837

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i767: ; preds = %.lr.ph.i.i.i.i756, %middle.block1208, %.noexc771
  %.0.lcssa.i.i.i.i761 = phi ptr [ %i.ds, %.noexc771 ], [ %i.ed, %middle.block1208 ], [ %i.el, %.lr.ph.i.i.i.i756 ]
  %i.em = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i761, i64 8
  %.not.i23.i769 = icmp eq ptr %i.dh, null
  br i1 %.not.i23.i769, label %.noexc326, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i767
  %i.en = load ptr, ptr %i.de, align 8, !tbaa !214
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = sub i64 %i.eo, %i.dj
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.ep) #23
  br label %.noexc326

.noexc326:                                        ; preds = %bb.o, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i767
  store ptr %i.ds, ptr %i.db, align 8, !tbaa !215
  store ptr %i.em, ptr %i.dc, align 8, !tbaa !213
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dq
  store ptr %i.eq, ptr %i.de, align 8, !tbaa !214
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit327

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit327: ; preds = %.noexc326, %bb.l
  %i.er = load ptr, ptr %18, align 8, !tbaa !51   ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %_ZN5vcpkg7VersionD2Ev.exit330, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i328

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i328: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit327
  %i.eu = load i64, ptr %i.es, align 8, !tbaa !48
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.ev) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit330

_ZN5vcpkg7VersionD2Ev.exit330:                    ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit327, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i328
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.ew = load ptr, ptr %17, align 8, !tbaa !51   ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.cw
  br i1 %i.ex, label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit336, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331: ; preds = %_ZN5vcpkg7VersionD2Ev.exit330
  %i.ey = load i64, ptr %i.cw, align 8, !tbaa !48
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #23
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit336

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit336: ; preds = %_ZN5vcpkg7VersionD2Ev.exit330, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !876)
  %i.fa = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #24
          to label %.noexc340 unwind label %bb.bx ; 13 uses

.noexc340:                                        ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit336
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.fb, i8 0, i64 160, i1 false), !noalias !876
  store ptr %i.fb, ptr %i.fa, align 16, !tbaa !47, !noalias !876
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 2 uses
  store i64 0, ptr %i.fc, align 8, !tbaa !50, !noalias !876
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 32 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.fd, i8 0, i64 48, i1 false), !noalias !876
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.fe) #22, !noalias !876
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 88
  invoke void @_ZN5vcpkg28ParsedSpdxLicenseDeclarationC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.ff)
          to label %bb.q unwind label %bb.p, !noalias !876

bb.p:                                             ; preds = %.noexc340
  %i.fg = landingpad { ptr, i32 }
          cleanup
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fa, i64 56
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fe) #22, !noalias !876
  call void @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fh) #22, !noalias !876
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.fd) #22, !noalias !876
  %i.fi = load ptr, ptr %i.fa, align 16, !tbaa !51, !noalias !876 ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.fb
  br i1 %i.fj, label %.body.i338, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i337

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i337: ; preds = %bb.p
  %i.fk = load i64, ptr %i.fb, align 16, !tbaa !48, !noalias !876
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fl) #23, !noalias !876
  br label %.body.i338

.body.i338:                                       ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i337
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef 176) #23, !noalias !876
  br label %.body341

bb.q:                                             ; preds = %.noexc340
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fa, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fm, i8 0, i64 24, i1 false), !noalias !876
  store ptr %i.fa, ptr %19, align 8, !tbaa !210, !alias.scope !876
  %i.fn = load i64, ptr %i.fc, align 8, !tbaa !50
  %i.fo = ptrtoint ptr %i.fa to i64               ; 2 uses
  %i.fp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.fa, i64 noundef 0, i64 noundef %i.fn, ptr noundef nonnull @.str.216, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit345 unwind label %bb.by ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit345: ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.fq = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 6 uses
  store ptr %i.fq, ptr %20, align 8, !tbaa !47
  store i32 1702125924, ptr %i.fq, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 4, ptr %i.fr, align 8, !tbaa !50
  %i.fs = getelementptr inbounds nuw i8, ptr %20, i64 20
  store i8 0, ptr %i.fs, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %21, ptr nonnull @.str.393, i64 10, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi11EEERAT__Kci.exit unwind label %bb.bz

_ZN5vcpkg7VersionC2ILi11EEERAT__Kci.exit:         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit345
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr @.str.123, ptr %9, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i351 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i351, align 8, !tbaa !56
  %i.ft = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(36) %21, i32 noundef 3, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %9)
          to label %bb.r unwind label %bb.ca

bb.r:                                             ; preds = %_ZN5vcpkg7VersionC2ILi11EEERAT__Kci.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !150 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 16 ; 3 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !213 ; 6 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 24 ; 3 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !214
  %.not.i.i354 = icmp eq ptr %i.fx, %i.fz
  br i1 %.not.i.i354, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i64 %i.fo, ptr %i.fx, align 8, !tbaa !210
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store ptr %i.ga, ptr %i.fw, align 8, !tbaa !213
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit356

bb.t:                                             ; preds = %bb.r
  %i.gb = load ptr, ptr %i.fv, align 8, !tbaa !215 ; 10 uses
  %i.gc = ptrtoint ptr %i.fx to i64               ; 2 uses
  %i.gd = ptrtoint ptr %i.gb to i64               ; 3 uses
  %i.ge = sub i64 %i.gc, %i.gd                    ; 3 uses
  %i.gf = icmp eq i64 %i.ge, 9223372036854775800
  br i1 %i.gf, label %bb.u, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i773

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc791 unwind label %bb.ca

.noexc791:                                        ; preds = %bb.u
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i773: ; preds = %bb.t
  %i.gg = ashr exact i64 %i.ge, 3                 ; 3 uses
  %.sroa.speculated.i.i774 = call i64 @llvm.umax.i64(i64 %i.gg, i64 1)
  %i.gh = add nsw i64 %.sroa.speculated.i.i774, %i.gg ; 2 uses
  %i.gi = icmp ult i64 %i.gh, %i.gg
  %i.gj = call i64 @llvm.umin.i64(i64 %i.gh, i64 1152921504606846975)
  %i.gk = select i1 %i.gi, i64 1152921504606846975, i64 %i.gj ; 3 uses
  %.not.i.i775 = icmp ne i64 %i.gk, 0
  call void @llvm.assume(i1 %.not.i.i775)
  %i.gl = shl nuw nsw i64 %i.gk, 3
  %i.gm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gl) #24
          to label %.noexc792 unwind label %bb.ca ; 10 uses

.noexc792:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i773
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.ge
  store i64 %i.fo, ptr %i.gn, align 8, !tbaa !210
  store ptr null, ptr %19, align 8, !tbaa !210
  %.not10.i.i.i.i776 = icmp eq ptr %i.gb, %i.fx
  br i1 %.not10.i.i.i.i776, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i788, label %.lr.ph.i.i.i.i777.preheader

.lr.ph.i.i.i.i777.preheader:                      ; preds = %.noexc792
  %i.go = add i64 %i.gc, -8
  %i.gp = sub i64 %i.go, %i.gd                    ; 3 uses
  %i.gq = lshr i64 %i.gp, 3
  %i.gr = add nuw nsw i64 %i.gq, 1                ; 2 uses
  %min.iters.check1218 = icmp ult i64 %i.gp, 136
  br i1 %min.iters.check1218, label %.lr.ph.i.i.i.i777.preheader1236, label %vector.memcheck1219

vector.memcheck1219:                              ; preds = %.lr.ph.i.i.i.i777.preheader
  %i.gs = and i64 %i.gp, -8
  %i.gt = add i64 %i.gs, 8                        ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gm, i64 %i.gt
  %i.gv = getelementptr i8, ptr %i.gb, i64 %i.gt
  %bound01220 = icmp ult ptr %i.gm, %i.gv
  %bound11221 = icmp ult ptr %i.gb, %i.gu
  %found.conflict1222 = and i1 %bound01220, %bound11221
  br i1 %found.conflict1222, label %.lr.ph.i.i.i.i777.preheader1236, label %vector.ph1223

vector.ph1223:                                    ; preds = %vector.memcheck1219
  %n.vec1224 = and i64 %i.gr, 4611686018427387900 ; 3 uses
  %i.gw = shl i64 %n.vec1224, 3                   ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gm, i64 %i.gw  ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gb, i64 %i.gw
  br label %vector.body1225

vector.body1225:                                  ; preds = %vector.body1225, %vector.ph1223
  %index1226 = phi i64 [ 0, %vector.ph1223 ], [ %index.next1231, %vector.body1225 ] ; 2 uses
  %i.gz = shl i64 %index1226, 3                   ; 2 uses
  %next.gep1227 = getelementptr i8, ptr %i.gm, i64 %i.gz ; 2 uses
  %next.gep1228 = getelementptr i8, ptr %i.gb, i64 %i.gz ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !877)
  call void @llvm.experimental.noalias.scope.decl(metadata !878)
  %i.ha = getelementptr i8, ptr %next.gep1228, i64 16
  %wide.load1229 = load <2 x i64>, ptr %next.gep1228, align 8, !tbaa !210, !alias.scope !879
  %wide.load1230 = load <2 x i64>, ptr %i.ha, align 8, !tbaa !210, !alias.scope !879
  %i.hb = getelementptr i8, ptr %next.gep1227, i64 16
  store <2 x i64> %wide.load1229, ptr %next.gep1227, align 8, !tbaa !210, !alias.scope !880, !noalias !881
  store <2 x i64> %wide.load1230, ptr %i.hb, align 8, !tbaa !210, !alias.scope !880, !noalias !881
  %115 = getelementptr i8, ptr %next.gep1228, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1228, align 8, !tbaa !210, !alias.scope !879
  store <2 x ptr> splat (ptr null), ptr %115, align 8, !tbaa !210, !alias.scope !879
  %index.next1231 = add nuw i64 %index1226, 4     ; 2 uses
  %i.hc = icmp eq i64 %index.next1231, %n.vec1224
  br i1 %i.hc, label %middle.block1232, label %vector.body1225, !llvm.loop !846

middle.block1232:                                 ; preds = %vector.body1225
  %cmp.n1233 = icmp eq i64 %i.gr, %n.vec1224
  br i1 %cmp.n1233, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i788, label %.lr.ph.i.i.i.i777.preheader1236

.lr.ph.i.i.i.i777.preheader1236:                  ; preds = %vector.memcheck1219, %.lr.ph.i.i.i.i777.preheader, %middle.block1232
  %.012.i.i.i.i778.ph = phi ptr [ %i.gm, %vector.memcheck1219 ], [ %i.gm, %.lr.ph.i.i.i.i777.preheader ], [ %i.gx, %middle.block1232 ]
  %.0911.i.i.i.i779.ph = phi ptr [ %i.gb, %vector.memcheck1219 ], [ %i.gb, %.lr.ph.i.i.i.i777.preheader ], [ %i.gy, %middle.block1232 ]
  br label %.lr.ph.i.i.i.i777

.lr.ph.i.i.i.i777:                                ; preds = %.lr.ph.i.i.i.i777.preheader1236, %.lr.ph.i.i.i.i777
  %.012.i.i.i.i778 = phi ptr [ %i.hf, %.lr.ph.i.i.i.i777 ], [ %.012.i.i.i.i778.ph, %.lr.ph.i.i.i.i777.preheader1236 ] ; 2 uses
  %.0911.i.i.i.i779 = phi ptr [ %i.he, %.lr.ph.i.i.i.i777 ], [ %.0911.i.i.i.i779.ph, %.lr.ph.i.i.i.i777.preheader1236 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !877)
  call void @llvm.experimental.noalias.scope.decl(metadata !878)
  %i.hd = load i64, ptr %.0911.i.i.i.i779, align 8, !tbaa !210, !alias.scope !878
  store i64 %i.hd, ptr %.012.i.i.i.i778, align 8, !tbaa !210, !alias.scope !877
  store ptr null, ptr %.0911.i.i.i.i779, align 8, !tbaa !210, !alias.scope !878
  %i.he = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i779, i64 8 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i778, i64 8 ; 2 uses
  %.not.i.i.i.i780 = icmp eq ptr %i.he, %i.fx
  br i1 %.not.i.i.i.i780, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i788, label %.lr.ph.i.i.i.i777, !llvm.loop !847

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i788: ; preds = %.lr.ph.i.i.i.i777, %middle.block1232, %.noexc792
  %.0.lcssa.i.i.i.i782 = phi ptr [ %i.gm, %.noexc792 ], [ %i.gx, %middle.block1232 ], [ %i.hf, %.lr.ph.i.i.i.i777 ]
  %i.hg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i782, i64 8
  %.not.i23.i790 = icmp eq ptr %i.gb, null
  br i1 %.not.i23.i790, label %.noexc355, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i788
  %i.hh = load ptr, ptr %i.fy, align 8, !tbaa !214
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = sub i64 %i.hi, %i.gd
  call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef %i.hj) #23
  br label %.noexc355

.noexc355:                                        ; preds = %bb.v, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i788
  store ptr %i.gm, ptr %i.fv, align 8, !tbaa !215
  store ptr %i.hg, ptr %i.fw, align 8, !tbaa !213
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gk
  store ptr %i.hk, ptr %i.fy, align 8, !tbaa !214
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit356

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit356: ; preds = %.noexc355, %bb.s
  %i.hl = load ptr, ptr %21, align 8, !tbaa !51   ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.hn = icmp eq ptr %i.hl, %i.hm
  br i1 %i.hn, label %_ZN5vcpkg7VersionD2Ev.exit359, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i357

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i357: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit356
  %i.ho = load i64, ptr %i.hm, align 8, !tbaa !48
  %i.hp = add i64 %i.ho, 1
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.hp) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit359

_ZN5vcpkg7VersionD2Ev.exit359:                    ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit356, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i357
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  %i.hq = load ptr, ptr %20, align 8, !tbaa !51   ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %i.fq
  br i1 %i.hr, label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit365, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360: ; preds = %_ZN5vcpkg7VersionD2Ev.exit359
  %i.hs = load i64, ptr %i.fq, align 8, !tbaa !48
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.ht) #23
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit365

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit365: ; preds = %_ZN5vcpkg7VersionD2Ev.exit359, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i360
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5vcpkg4Test20MockCMakeVarProviderE, i64 16), ptr %22, align 8, !tbaa !33
  %i.hu = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.hv = getelementptr inbounds nuw i8, ptr %22, i64 56
  store ptr %i.hv, ptr %i.hu, align 8, !tbaa !64
  %i.hw = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i64 1, ptr %i.hw, align 8, !tbaa !65
  %i.hx = getelementptr inbounds nuw i8, ptr %22, i64 24
  %i.hy = getelementptr inbounds nuw i8, ptr %22, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.hy, align 8, !tbaa !66
  %i.hz = getelementptr inbounds nuw i8, ptr %22, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hz, i8 0, i64 16, i1 false)
  %i.ia = getelementptr inbounds nuw i8, ptr %22, i64 64
  %i.ib = getelementptr inbounds nuw i8, ptr %22, i64 112
  store ptr %i.ib, ptr %i.ia, align 8, !tbaa !64
  %i.ic = getelementptr inbounds nuw i8, ptr %22, i64 72
  store i64 1, ptr %i.ic, align 8, !tbaa !65
  %i.id = getelementptr inbounds nuw i8, ptr %22, i64 80
  %i.ie = getelementptr inbounds nuw i8, ptr %22, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.id, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ie, align 8, !tbaa !66
  %i.if = getelementptr inbounds nuw i8, ptr %22, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.if, i8 0, i64 16, i1 false)
  %i.ig = getelementptr inbounds nuw i8, ptr %22, i64 120
  %i.ih = getelementptr inbounds nuw i8, ptr %22, i64 168
  store ptr %i.ih, ptr %i.ig, align 8, !tbaa !68
  %i.ii = getelementptr inbounds nuw i8, ptr %22, i64 128
  store i64 1, ptr %i.ii, align 8, !tbaa !69
  %i.ij = getelementptr inbounds nuw i8, ptr %22, i64 136
  %i.ik = getelementptr inbounds nuw i8, ptr %22, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ij, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ik, align 8, !tbaa !66
  %i.il = getelementptr inbounds nuw i8, ptr %22, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.il, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  store ptr @.str, ptr %25, align 8, !tbaa !108
  %i.im = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 1354, ptr %i.im, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  %i.in = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  store ptr %i.in, ptr %26, align 8, !tbaa !47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.in, ptr noundef nonnull align 1 dereferenceable(13) @.str.394, i64 13, i1 false)
  %i.io = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 13, ptr %i.io, align 8, !tbaa !50
  %i.ip = getelementptr inbounds nuw i8, ptr %26, i64 29
  store i8 0, ptr %i.ip, align 1, !tbaa !48
  invoke void @_ZN5Catch11SectionInfoC1ERKNS_14SourceLineInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %24, ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %bb.w unwind label %bb.cc

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit365
  invoke void @_ZN5Catch7SectionC1ERKNS_11SectionInfoE(ptr noundef nonnull align 8 dereferenceable(160) %23, ptr noundef nonnull align 8 dereferenceable(80) %24)
          to label %bb.x unwind label %bb.cd

bb.x:                                             ; preds = %bb.w
  %i.iq = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !51 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %24, i64 48 ; 2 uses
  %i.it = icmp eq ptr %i.ir, %i.is
  br i1 %i.it, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370: ; preds = %bb.x
  %i.iu = load i64, ptr %i.is, align 8, !tbaa !48
  %i.iv = add i64 %i.iu, 1
  call void @_ZdlPvm(ptr noundef %i.ir, i64 noundef %i.iv) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i370
  %i.iw = load ptr, ptr %24, align 8, !tbaa !51   ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.iy = icmp eq ptr %i.iw, %i.ix
  br i1 %i.iy, label %_ZN5Catch11SectionInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.iz = load i64, ptr %i.ix, align 8, !tbaa !48
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.ja) #23
  br label %_ZN5Catch11SectionInfoD2Ev.exit

_ZN5Catch11SectionInfoD2Ev.exit:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.jb = load ptr, ptr %26, align 8, !tbaa !51   ; 2 uses
  %i.jc = icmp eq ptr %i.jb, %i.in
  br i1 %i.jc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372: ; preds = %_ZN5Catch11SectionInfoD2Ev.exit
  %i.jd = load i64, ptr %i.in, align 8, !tbaa !48
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.je) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374: ; preds = %_ZN5Catch11SectionInfoD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  %i.jf = invoke noundef zeroext i1 @_ZNK5Catch7SectioncvbEv(ptr noundef nonnull align 8 dereferenceable(160) %23)
          to label %bb.y unwind label %bb.cf

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374
  br i1 %i.jf, label %bb.z, label %.noexc.i683

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV20MockBaselineProvider, i64 16), ptr %27, align 8, !tbaa !33
  %i.jg = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 3 uses
  store i32 0, ptr %i.jg, align 8, !tbaa !41
  %i.jh = getelementptr inbounds nuw i8, ptr %27, i64 24 ; 2 uses
  store ptr null, ptr %i.jh, align 8, !tbaa !40
  %i.ji = getelementptr inbounds nuw i8, ptr %27, i64 32
  store ptr %i.jg, ptr %i.ji, align 8, !tbaa !42
  %i.jj = getelementptr inbounds nuw i8, ptr %27, i64 40
  store ptr %i.jg, ptr %i.jj, align 8, !tbaa !43
  %i.jk = getelementptr inbounds nuw i8, ptr %27, i64 48
  store i64 0, ptr %i.jk, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %28, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit376 unwind label %bb.cg

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit376:       ; preds = %bb.z
  %i.jl = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  %i.jm = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 6 uses
  store ptr %i.jm, ptr %29, align 8, !tbaa !47
  store i8 97, ptr %i.jm, align 8, !tbaa !48
  %i.jn = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 1, ptr %i.jn, align 8, !tbaa !50
end_hunk_0
begin_hunk_1_@_ZL20C_A_T_C_H_T_E_S_T_81v:._crit_edge.i.i
  %i.k = load ptr, ptr %6, align 8, !tbaa !51     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.h
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.m = load i64, ptr %i.h, align 8, !tbaa !48
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.o = load ptr, ptr %5, align 8                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.q, ptr %7, align 8, !tbaa !47
  store i8 98, ptr %i.q, align 8, !tbaa !48
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 1, ptr %i.r, align 8, !tbaa !50
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 17
  store i8 0, ptr %i.s, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.t, ptr %8, align 8, !tbaa !47
  store i8 121, ptr %i.t, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 1, ptr %i.u, align 8, !tbaa !50
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 0, ptr %i.v, align 1, !tbaa !48
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.y = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.z = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24
          to label %_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i unwind label %bb.b ; 3 uses

_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.z, ptr %i.w, align 8, !tbaa !218
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 48
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !219
  %i.ad = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN5vcpkg26DependencyRequestedFeatureEPS1_ET0_T_S6_S5_(ptr noundef nonnull %8, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.z)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !218 ; 3 uses
  %.not.i.i5.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i5.i, label %bb.at, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !219
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #23
  br label %bb.at

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %i.ad, ptr %i.al, align 8, !tbaa !220
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 56
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.am) #22
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i32 0, ptr %i.an, align 8, !tbaa !72
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 72
  call void @_ZN5vcpkg7VersionC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.ao) #22
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 112
  store i8 0, ptr %i.ap, align 8, !tbaa !94
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 113
  store i8 1, ptr %i.aq, align 1, !tbaa !95
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false)
  %i.as = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(144) %7)
          to label %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit unwind label %.body ; 0 uses

_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  call void @_ZN5vcpkg10DependencyD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %7) #22
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.at) #22
  %i.au = load ptr, ptr %8, align 8, !tbaa !51    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !48
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #23
  br label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit

_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit:   ; preds = %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.az, ptr %9, align 8, !tbaa !47
  store i8 97, ptr %i.az, align 8, !tbaa !48
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 1, ptr %i.ba, align 8, !tbaa !50
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 17
  store i8 0, ptr %i.bb, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit unwind label %bb.au

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit:          ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr @.str.123, ptr %3, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !56
  %i.bc = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(36) %10, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %3)
          to label %bb.e unwind label %bb.av

bb.e:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !150 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !213 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !214
  %.not.i.i = icmp eq ptr %i.bg, %i.bi
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %i.y, ptr %i.bg, align 8, !tbaa !210
  store ptr null, ptr %5, align 8, !tbaa !210
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bj, ptr %i.bf, align 8, !tbaa !213
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

bb.g:                                             ; preds = %bb.e
  %i.bk = load ptr, ptr %i.be, align 8, !tbaa !215 ; 10 uses
  %i.bl = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64               ; 3 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %bb.h, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc270 unwind label %bb.av

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
          to label %.noexc271 unwind label %bb.av ; 10 uses

.noexc271:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  store i64 %i.y, ptr %i.bw, align 8, !tbaa !210
  store ptr null, ptr %5, align 8, !tbaa !210
  %.not10.i.i.i.i = icmp eq ptr %i.bk, %i.bg
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc271
  %i.bx = add i64 %i.bl, -8
  %i.by = sub i64 %i.bx, %i.bm                    ; 3 uses
  %i.bz = lshr i64 %i.by, 3
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.by, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader475, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.cb = and i64 %i.by, -8
  %i.cc = add i64 %i.cb, 8                        ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bv, i64 %i.cc
  %i.ce = getelementptr i8, ptr %i.bk, i64 %i.cc
  %bound0 = icmp ult ptr %i.bv, %i.ce
  %bound1 = icmp ult ptr %i.bk, %i.cd
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader475, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ca, 4611686018427387900     ; 3 uses
  %i.cf = shl i64 %n.vec, 3                       ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bv, i64 %i.cf  ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bk, i64 %i.cf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ci = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bv, i64 %i.ci ; 2 uses
  %next.gep447 = getelementptr i8, ptr %i.bk, i64 %i.ci ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !910)
  call void @llvm.experimental.noalias.scope.decl(metadata !911)
  %i.cj = getelementptr i8, ptr %next.gep447, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep447, align 8, !tbaa !210, !alias.scope !912
  %wide.load448 = load <2 x i64>, ptr %i.cj, align 8, !tbaa !210, !alias.scope !912
  %i.ck = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !210, !alias.scope !913, !noalias !914
  store <2 x i64> %wide.load448, ptr %i.ck, align 8, !tbaa !210, !alias.scope !913, !noalias !914
  %39 = getelementptr i8, ptr %next.gep447, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep447, align 8, !tbaa !210, !alias.scope !912
  store <2 x ptr> splat (ptr null), ptr %39, align 8, !tbaa !210, !alias.scope !912
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !896

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader475

.lr.ph.i.i.i.i.preheader475:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bv, %vector.memcheck ], [ %i.bv, %.lr.ph.i.i.i.i.preheader ], [ %i.cg, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bk, %vector.memcheck ], [ %i.bk, %.lr.ph.i.i.i.i.preheader ], [ %i.ch, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader475, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader475 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader475 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !910)
  call void @llvm.experimental.noalias.scope.decl(metadata !911)
  %i.cm = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !210, !alias.scope !911
  store i64 %i.cm, ptr %.012.i.i.i.i, align 8, !tbaa !210, !alias.scope !910
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !210, !alias.scope !911
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cn, %i.bg
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !897

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc271
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bv, %.noexc271 ], [ %i.cg, %middle.block ], [ %i.co, %.lr.ph.i.i.i.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.bk, null
  br i1 %.not.i23.i, label %.noexc122, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.cq = load ptr, ptr %i.bh, align 8, !tbaa !214
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = sub i64 %i.cr, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.cs) #23
  br label %.noexc122

.noexc122:                                        ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.bv, ptr %i.be, align 8, !tbaa !215
  store ptr %i.cp, ptr %i.bf, align 8, !tbaa !213
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.ct, ptr %i.bh, align 8, !tbaa !214
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %.noexc122, %bb.f
  %i.cu = load ptr, ptr %10, align 8, !tbaa !51   ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %_ZN5vcpkg7VersionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i123: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !48
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cy) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit

_ZN5vcpkg7VersionD2Ev.exit:                       ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.cz = load ptr, ptr %9, align 8, !tbaa !51    ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.az
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %_ZN5vcpkg7VersionD2Ev.exit
  %i.db = load i64, ptr %i.az, align 8, !tbaa !48
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %_ZN5vcpkg7VersionD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.dd = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.dd, ptr %12, align 8, !tbaa !47
  store i8 121, ptr %i.dd, align 8, !tbaa !48
  %i.de = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 1, ptr %i.de, align 8, !tbaa !50
  %i.df = getelementptr inbounds nuw i8, ptr %12, i64 17
  store i8 0, ptr %i.df, align 1, !tbaa !48
  invoke fastcc void @_ZL9make_fpghNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %11, ptr noundef align 8 %12)
          to label %bb.j unwind label %bb.aw

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127
  %i.dg = load ptr, ptr %12, align 8, !tbaa !51   ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.dd
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %bb.j
  %i.di = load i64, ptr %i.dd, align 8, !tbaa !48
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.dk = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.dk, ptr %13, align 8, !tbaa !47
  store i8 98, ptr %i.dk, align 8, !tbaa !48
  %i.dl = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 1, ptr %i.dl, align 8, !tbaa !50
  %i.dm = getelementptr inbounds nuw i8, ptr %13, i64 17
  store i8 0, ptr %i.dm, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %14, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit140 unwind label %bb.ax

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit140:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr @.str.123, ptr %2, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i141 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i141, align 8, !tbaa !56
  %i.dn = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(36) %14, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %2)
          to label %bb.k unwind label %bb.ay

bb.k:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit140
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !150 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 3 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !213 ; 6 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 24 ; 3 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !214
  %.not.i.i144 = icmp eq ptr %i.dr, %i.dt
  br i1 %.not.i.i144, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.du = load i64, ptr %11, align 8, !tbaa !210
  store i64 %i.du, ptr %i.dr, align 8, !tbaa !210
  store ptr null, ptr %11, align 8, !tbaa !210
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store ptr %i.dv, ptr %i.dq, align 8, !tbaa !213
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit146

bb.m:                                             ; preds = %bb.k
  %i.dw = load ptr, ptr %i.dp, align 8, !tbaa !215 ; 10 uses
  %i.dx = ptrtoint ptr %i.dr to i64               ; 2 uses
  %i.dy = ptrtoint ptr %i.dw to i64               ; 3 uses
  %i.dz = sub i64 %i.dx, %i.dy                    ; 3 uses
  %i.ea = icmp eq i64 %i.dz, 9223372036854775800
  br i1 %i.ea, label %bb.n, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i272

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc290 unwind label %bb.ay

.noexc290:                                        ; preds = %bb.n
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i272: ; preds = %bb.m
  %i.eb = ashr exact i64 %i.dz, 3                 ; 3 uses
  %.sroa.speculated.i.i273 = call i64 @llvm.umax.i64(i64 %i.eb, i64 1)
  %i.ec = add nsw i64 %.sroa.speculated.i.i273, %i.eb ; 2 uses
  %i.ed = icmp ult i64 %i.ec, %i.eb
  %i.ee = call i64 @llvm.umin.i64(i64 %i.ec, i64 1152921504606846975)
  %i.ef = select i1 %i.ed, i64 1152921504606846975, i64 %i.ee ; 3 uses
  %.not.i.i274 = icmp ne i64 %i.ef, 0
  call void @llvm.assume(i1 %.not.i.i274)
  %i.eg = shl nuw nsw i64 %i.ef, 3
  %i.eh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eg) #24
          to label %.noexc291 unwind label %bb.ay ; 10 uses

.noexc291:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i272
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.dz
  %i.ej = load i64, ptr %11, align 8, !tbaa !210
  store i64 %i.ej, ptr %i.ei, align 8, !tbaa !210
  store ptr null, ptr %11, align 8, !tbaa !210
  %.not10.i.i.i.i275 = icmp eq ptr %i.dw, %i.dr
  br i1 %.not10.i.i.i.i275, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i287, label %.lr.ph.i.i.i.i276.preheader

.lr.ph.i.i.i.i276.preheader:                      ; preds = %.noexc291
  %i.ek = add i64 %i.dx, -8
  %i.el = sub i64 %i.ek, %i.dy                    ; 3 uses
  %i.em = lshr i64 %i.el, 3
  %i.en = add nuw nsw i64 %i.em, 1                ; 2 uses
  %min.iters.check456 = icmp ult i64 %i.el, 136
  br i1 %min.iters.check456, label %.lr.ph.i.i.i.i276.preheader474, label %vector.memcheck457

vector.memcheck457:                               ; preds = %.lr.ph.i.i.i.i276.preheader
  %i.eo = and i64 %i.el, -8
  %i.ep = add i64 %i.eo, 8                        ; 2 uses
  %i.eq = getelementptr i8, ptr %i.eh, i64 %i.ep
  %i.er = getelementptr i8, ptr %i.dw, i64 %i.ep
  %bound0458 = icmp ult ptr %i.eh, %i.er
  %bound1459 = icmp ult ptr %i.dw, %i.eq
  %found.conflict460 = and i1 %bound0458, %bound1459
  br i1 %found.conflict460, label %.lr.ph.i.i.i.i276.preheader474, label %vector.ph461

vector.ph461:                                     ; preds = %vector.memcheck457
  %n.vec462 = and i64 %i.en, 4611686018427387900  ; 3 uses
  %i.es = shl i64 %n.vec462, 3                    ; 2 uses
  %i.et = getelementptr i8, ptr %i.eh, i64 %i.es  ; 2 uses
  %i.eu = getelementptr i8, ptr %i.dw, i64 %i.es
  br label %vector.body463

vector.body463:                                   ; preds = %vector.body463, %vector.ph461
  %index464 = phi i64 [ 0, %vector.ph461 ], [ %index.next469, %vector.body463 ] ; 2 uses
  %i.ev = shl i64 %index464, 3                    ; 2 uses
  %next.gep465 = getelementptr i8, ptr %i.eh, i64 %i.ev ; 2 uses
  %next.gep466 = getelementptr i8, ptr %i.dw, i64 %i.ev ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !915)
  call void @llvm.experimental.noalias.scope.decl(metadata !916)
  %i.ew = getelementptr i8, ptr %next.gep466, i64 16
  %wide.load467 = load <2 x i64>, ptr %next.gep466, align 8, !tbaa !210, !alias.scope !917
  %wide.load468 = load <2 x i64>, ptr %i.ew, align 8, !tbaa !210, !alias.scope !917
  %i.ex = getelementptr i8, ptr %next.gep465, i64 16
  store <2 x i64> %wide.load467, ptr %next.gep465, align 8, !tbaa !210, !alias.scope !918, !noalias !919
  store <2 x i64> %wide.load468, ptr %i.ex, align 8, !tbaa !210, !alias.scope !918, !noalias !919
  %40 = getelementptr i8, ptr %next.gep466, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep466, align 8, !tbaa !210, !alias.scope !917
  store <2 x ptr> splat (ptr null), ptr %40, align 8, !tbaa !210, !alias.scope !917
  %index.next469 = add nuw i64 %index464, 4       ; 2 uses
  %i.ey = icmp eq i64 %index.next469, %n.vec462
  br i1 %i.ey, label %middle.block470, label %vector.body463, !llvm.loop !904

middle.block470:                                  ; preds = %vector.body463
  %cmp.n471 = icmp eq i64 %i.en, %n.vec462
  br i1 %cmp.n471, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i287, label %.lr.ph.i.i.i.i276.preheader474

.lr.ph.i.i.i.i276.preheader474:                   ; preds = %vector.memcheck457, %.lr.ph.i.i.i.i276.preheader, %middle.block470
  %.012.i.i.i.i277.ph = phi ptr [ %i.eh, %vector.memcheck457 ], [ %i.eh, %.lr.ph.i.i.i.i276.preheader ], [ %i.et, %middle.block470 ]
  %.0911.i.i.i.i278.ph = phi ptr [ %i.dw, %vector.memcheck457 ], [ %i.dw, %.lr.ph.i.i.i.i276.preheader ], [ %i.eu, %middle.block470 ]
  br label %.lr.ph.i.i.i.i276

.lr.ph.i.i.i.i276:                                ; preds = %.lr.ph.i.i.i.i276.preheader474, %.lr.ph.i.i.i.i276
  %.012.i.i.i.i277 = phi ptr [ %i.fb, %.lr.ph.i.i.i.i276 ], [ %.012.i.i.i.i277.ph, %.lr.ph.i.i.i.i276.preheader474 ] ; 2 uses
  %.0911.i.i.i.i278 = phi ptr [ %i.fa, %.lr.ph.i.i.i.i276 ], [ %.0911.i.i.i.i278.ph, %.lr.ph.i.i.i.i276.preheader474 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !915)
  call void @llvm.experimental.noalias.scope.decl(metadata !916)
  %i.ez = load i64, ptr %.0911.i.i.i.i278, align 8, !tbaa !210, !alias.scope !916
  store i64 %i.ez, ptr %.012.i.i.i.i277, align 8, !tbaa !210, !alias.scope !915
  store ptr null, ptr %.0911.i.i.i.i278, align 8, !tbaa !210, !alias.scope !916
  %i.fa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i278, i64 8 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i277, i64 8 ; 2 uses
  %.not.i.i.i.i279 = icmp eq ptr %i.fa, %i.dr
  br i1 %.not.i.i.i.i279, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i287, label %.lr.ph.i.i.i.i276, !llvm.loop !905

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i287: ; preds = %.lr.ph.i.i.i.i276, %middle.block470, %.noexc291
  %.0.lcssa.i.i.i.i281 = phi ptr [ %i.eh, %.noexc291 ], [ %i.et, %middle.block470 ], [ %i.fb, %.lr.ph.i.i.i.i276 ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i281, i64 8
  %.not.i23.i289 = icmp eq ptr %i.dw, null
  br i1 %.not.i23.i289, label %.noexc145, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i287
  %i.fd = load ptr, ptr %i.ds, align 8, !tbaa !214
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = sub i64 %i.fe, %i.dy
  call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %i.ff) #23
  br label %.noexc145

.noexc145:                                        ; preds = %bb.o, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i287
  store ptr %i.eh, ptr %i.dp, align 8, !tbaa !215
  store ptr %i.fc, ptr %i.dq, align 8, !tbaa !213
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.ef
  store ptr %i.fg, ptr %i.ds, align 8, !tbaa !214
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit146

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit146: ; preds = %.noexc145, %bb.l
  %i.fh = load ptr, ptr %14, align 8, !tbaa !51   ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %_ZN5vcpkg7VersionD2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit146
  %i.fk = load i64, ptr %i.fi, align 8, !tbaa !48
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fl) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit149

_ZN5vcpkg7VersionD2Ev.exit149:                    ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit146, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.fm = load ptr, ptr %13, align 8, !tbaa !51   ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.dk
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %_ZN5vcpkg7VersionD2Ev.exit149
  %i.fo = load i64, ptr %i.dk, align 8, !tbaa !48
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %_ZN5vcpkg7VersionD2Ev.exit149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5vcpkg4Test20MockCMakeVarProviderE, i64 16), ptr %15, align 8, !tbaa !33
  %i.fq = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %15, i64 56
  store ptr %i.fr, ptr %i.fq, align 8, !tbaa !64
  %i.fs = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 1, ptr %i.fs, align 8, !tbaa !65
  %i.ft = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.fu = getelementptr inbounds nuw i8, ptr %15, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ft, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.fu, align 8, !tbaa !66
  %i.fv = getelementptr inbounds nuw i8, ptr %15, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fv, i8 0, i64 16, i1 false)
  %i.fw = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.fx = getelementptr inbounds nuw i8, ptr %15, i64 112
  store ptr %i.fx, ptr %i.fw, align 8, !tbaa !64
  %i.fy = getelementptr inbounds nuw i8, ptr %15, i64 72
  store i64 1, ptr %i.fy, align 8, !tbaa !65
  %i.fz = getelementptr inbounds nuw i8, ptr %15, i64 80
  %i.ga = getelementptr inbounds nuw i8, ptr %15, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fz, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ga, align 8, !tbaa !66
  %i.gb = getelementptr inbounds nuw i8, ptr %15, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gb, i8 0, i64 16, i1 false)
  %i.gc = getelementptr inbounds nuw i8, ptr %15, i64 120
  %i.gd = getelementptr inbounds nuw i8, ptr %15, i64 168
  store ptr %i.gd, ptr %i.gc, align 8, !tbaa !68
  %i.ge = getelementptr inbounds nuw i8, ptr %15, i64 128
  store i64 1, ptr %i.ge, align 8, !tbaa !69
  %i.gf = getelementptr inbounds nuw i8, ptr %15, i64 136
  %i.gg = getelementptr inbounds nuw i8, ptr %15, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gf, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.gg, align 8, !tbaa !66
  %i.gh = getelementptr inbounds nuw i8, ptr %15, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gh, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV20MockBaselineProvider, i64 16), ptr %16, align 8, !tbaa !33
  %i.gi = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store i32 0, ptr %i.gi, align 8, !tbaa !41
  %i.gj = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  store ptr null, ptr %i.gj, align 8, !tbaa !40
  %i.gk = getelementptr inbounds nuw i8, ptr %16, i64 32
  store ptr %i.gi, ptr %i.gk, align 8, !tbaa !42
  %i.gl = getelementptr inbounds nuw i8, ptr %16, i64 40
  store ptr %i.gi, ptr %i.gl, align 8, !tbaa !43
  %i.gm = getelementptr inbounds nuw i8, ptr %16, i64 48
  store i64 0, ptr %i.gm, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %17, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit154 unwind label %bb.az

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit154:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152
  %i.gn = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.go = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.go, ptr %18, align 8, !tbaa !47
  store i8 97, ptr %i.go, align 8, !tbaa !48
  %i.gp = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 1, ptr %i.gp, align 8, !tbaa !50
  %i.gq = getelementptr inbounds nuw i8, ptr %18, i64 17
  store i8 0, ptr %i.gq, align 1, !tbaa !48
  %i.gr = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg7VersionESt4lessIvESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.gn, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.p unwind label %bb.ba      ; 10 uses

bb.p:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit154
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !51 ; 6 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 16 ; 4 uses
  %i.gu = icmp eq ptr %i.gs, %i.gt
  %i.gv = load ptr, ptr %17, align 8, !tbaa !51   ; 6 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  %i.gx = icmp eq ptr %i.gv, %i.gw                ; 2 uses
  br i1 %i.gu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %bb.p
  br i1 %i.gx, label %bb.q, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i159: ; preds = %bb.p
  br i1 %i.gx, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i159, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161
  %i.gy = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !50 ; 3 uses
  %i.ha = icmp ult i64 %i.gz, 16
  call void @llvm.assume(i1 %i.ha)
  %.not21.i.i = icmp eq ptr %17, %i.gr
  br i1 %.not21.i.i, label %_ZN5vcpkg7VersionaSEOS0_.exit, label %bb.r, !prof !52

bb.r:                                             ; preds = %bb.q
  switch i64 %i.gz, label %bb.t [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.hb = load i8, ptr %i.gv, align 1, !tbaa !48
  store i8 %i.hb, ptr %i.gs, align 1, !tbaa !48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gs, ptr align 1 %i.gv, i64 %i.gz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.t, %bb.s, %bb.r
  %i.hc = load i64, ptr %i.gy, align 8, !tbaa !50 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store i64 %i.hc, ptr %i.hd, align 8, !tbaa !50
  %i.he = load ptr, ptr %i.gr, align 8, !tbaa !51
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hc
  store i8 0, ptr %i.hf, align 1, !tbaa !48
  %.pre.i.i = load ptr, ptr %17, align 8, !tbaa !51
  br label %_ZN5vcpkg7VersionaSEOS0_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store ptr %i.gv, ptr %i.gr, align 8, !tbaa !51
  %i.hh = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !50
  store i64 %i.hi, ptr %i.hg, align 8, !tbaa !50
  %i.hj = load i64, ptr %i.gw, align 8, !tbaa !48
  store i64 %i.hj, ptr %i.gt, align 8, !tbaa !48
  br label %bb.v

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i159
  %i.hk = load i64, ptr %i.gt, align 8, !tbaa !48
  store ptr %i.gv, ptr %i.gr, align 8, !tbaa !51
  %i.hl = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !50
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
end_hunk_1
begin_hunk_2_@_ZL20C_A_T_C_H_T_E_S_T_83v:._crit_edge.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.p = load i64, ptr %i.k, align 8, !tbaa !48
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.r = load ptr, ptr %10, align 8               ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.t, ptr %12, align 8, !tbaa !47
  store i8 98, ptr %i.t, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 1, ptr %i.u, align 8, !tbaa !50
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 17
  store i8 0, ptr %i.v, align 1, !tbaa !48
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.x, ptr %13, align 8, !tbaa !47
  store i8 121, ptr %i.x, align 8, !tbaa !48
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 1, ptr %i.y, align 8, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 17
  store i8 0, ptr %i.z, align 1, !tbaa !48
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.ab = ptrtoint ptr %i.r to i64                ; 2 uses
  %i.ac = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24
          to label %_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i unwind label %bb.b ; 3 uses

_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 40
  store ptr %i.ac, ptr %i.w, align 8, !tbaa !218
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 48
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !219
  %i.ag = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN5vcpkg26DependencyRequestedFeatureEPS1_ET0_T_S6_S5_(ptr noundef nonnull %13, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ac)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !218 ; 3 uses
  %.not.i.i5.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i5.i, label %bb.bi, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !219
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #23
  br label %bb.bi

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 40
  store ptr %i.ag, ptr %i.ao, align 8, !tbaa !220
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 2 uses
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ap) #22
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i32 1, ptr %i.aq, align 8, !tbaa !72
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 72
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %i.ar, ptr nonnull @.str.178, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit unwind label %bb.bh

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit:          ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 112
  store i8 0, ptr %i.as, align 8, !tbaa !94
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 113
  store i8 1, ptr %i.at, align 1, !tbaa !95
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %i.av = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(144) %12)
          to label %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit unwind label %.body ; 0 uses

_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit
  call void @_ZN5vcpkg10DependencyD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %12) #22
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aw) #22
  %i.ax = load ptr, ptr %13, align 8, !tbaa !51   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !48
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #23
  br label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit

_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit:   ; preds = %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.bc, ptr %14, align 8, !tbaa !47
  store i8 97, ptr %i.bc, align 8, !tbaa !48
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 1, ptr %i.bd, align 8, !tbaa !50
  %i.be = getelementptr inbounds nuw i8, ptr %14, i64 17
  store i8 0, ptr %i.be, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %15, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit169 unwind label %bb.bj

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit169:       ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr @.str.123, ptr %8, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !56
  %i.bf = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(36) %15, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %8)
          to label %bb.e unwind label %bb.bk

bb.e:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit169
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !150 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !213 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 3 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !214
  %.not.i.i = icmp eq ptr %i.bj, %i.bl
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %i.ab, ptr %i.bj, align 8, !tbaa !210
  store ptr null, ptr %10, align 8, !tbaa !210
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bm, ptr %i.bi, align 8, !tbaa !213
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

bb.g:                                             ; preds = %bb.e
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !215 ; 10 uses
  %i.bo = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bp = ptrtoint ptr %i.bn to i64               ; 3 uses
  %i.bq = sub i64 %i.bo, %i.bp                    ; 3 uses
  %i.br = icmp eq i64 %i.bq, 9223372036854775800
  br i1 %i.br, label %bb.h, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc424 unwind label %bb.bk

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
          to label %.noexc425 unwind label %bb.bk ; 10 uses

.noexc425:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bq
  store i64 %i.ab, ptr %i.bz, align 8, !tbaa !210
  store ptr null, ptr %10, align 8, !tbaa !210
  %.not10.i.i.i.i = icmp eq ptr %i.bn, %i.bj
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc425
  %i.ca = add i64 %i.bo, -8
  %i.cb = sub i64 %i.ca, %i.bp                    ; 3 uses
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cb, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader740, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ce = and i64 %i.cb, -8
  %i.cf = add i64 %i.ce, 8                        ; 2 uses
  %i.cg = getelementptr i8, ptr %i.by, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.bn, i64 %i.cf
  %bound0 = icmp ult ptr %i.by, %i.ch
  %bound1 = icmp ult ptr %i.bn, %i.cg
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader740, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cd, 4611686018427387900     ; 3 uses
  %i.ci = shl i64 %n.vec, 3                       ; 2 uses
  %i.cj = getelementptr i8, ptr %i.by, i64 %i.ci  ; 2 uses
  %i.ck = getelementptr i8, ptr %i.bn, i64 %i.ci
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.by, i64 %i.cl ; 2 uses
  %next.gep686 = getelementptr i8, ptr %i.bn, i64 %i.cl ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !956)
  call void @llvm.experimental.noalias.scope.decl(metadata !957)
  %i.cm = getelementptr i8, ptr %next.gep686, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep686, align 8, !tbaa !210, !alias.scope !958
  %wide.load687 = load <2 x i64>, ptr %i.cm, align 8, !tbaa !210, !alias.scope !958
  %i.cn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !210, !alias.scope !959, !noalias !960
  store <2 x i64> %wide.load687, ptr %i.cn, align 8, !tbaa !210, !alias.scope !959, !noalias !960
  %69 = getelementptr i8, ptr %next.gep686, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep686, align 8, !tbaa !210, !alias.scope !958
  store <2 x ptr> splat (ptr null), ptr %69, align 8, !tbaa !210, !alias.scope !958
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !928

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cd, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader740

.lr.ph.i.i.i.i.preheader740:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.by, %vector.memcheck ], [ %i.by, %.lr.ph.i.i.i.i.preheader ], [ %i.cj, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bn, %vector.memcheck ], [ %i.bn, %.lr.ph.i.i.i.i.preheader ], [ %i.ck, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader740, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader740 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader740 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !956)
  call void @llvm.experimental.noalias.scope.decl(metadata !957)
  %i.cp = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !210, !alias.scope !957
  store i64 %i.cp, ptr %.012.i.i.i.i, align 8, !tbaa !210, !alias.scope !956
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !210, !alias.scope !957
  %i.cq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cq, %i.bj
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !929

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc425
  %.0.lcssa.i.i.i.i = phi ptr [ %i.by, %.noexc425 ], [ %i.cj, %middle.block ], [ %i.cr, %.lr.ph.i.i.i.i ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.bn, null
  br i1 %.not.i23.i, label %.noexc171, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.ct = load ptr, ptr %i.bk, align 8, !tbaa !214
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = sub i64 %i.cu, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.cv) #23
  br label %.noexc171

.noexc171:                                        ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.by, ptr %i.bh, align 8, !tbaa !215
  store ptr %i.cs, ptr %i.bi, align 8, !tbaa !213
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bw
  store ptr %i.cw, ptr %i.bk, align 8, !tbaa !214
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %.noexc171, %bb.f
  %i.cx = load ptr, ptr %15, align 8, !tbaa !51   ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZN5vcpkg7VersionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i172: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !48
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit

_ZN5vcpkg7VersionD2Ev.exit:                       ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.dc = load ptr, ptr %14, align 8, !tbaa !51   ; 2 uses
  %i.dd = icmp eq ptr %i.dc, %i.bc
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %_ZN5vcpkg7VersionD2Ev.exit
  %i.de = load i64, ptr %i.bc, align 8, !tbaa !48
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.df) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %_ZN5vcpkg7VersionD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.dg = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.dg, ptr %17, align 8, !tbaa !47
  store i8 121, ptr %i.dg, align 8, !tbaa !48
  %i.dh = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 1, ptr %i.dh, align 8, !tbaa !50
  %i.di = getelementptr inbounds nuw i8, ptr %17, i64 17
  store i8 0, ptr %i.di, align 1, !tbaa !48
  invoke fastcc void @_ZL9make_fpghNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %16, ptr noundef align 8 %17)
          to label %bb.j unwind label %bb.bl

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176
  %i.dj = load ptr, ptr %17, align 8, !tbaa !51   ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.dg
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181: ; preds = %bb.j
  %i.dl = load i64, ptr %i.dg, align 8, !tbaa !48
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i181
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.dn = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.dn, ptr %18, align 8, !tbaa !47
  store i8 98, ptr %i.dn, align 8, !tbaa !48
  %i.do = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 1, ptr %i.do, align 8, !tbaa !50
  %i.dp = getelementptr inbounds nuw i8, ptr %18, i64 17
  store i8 0, ptr %i.dp, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %19, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit189 unwind label %bb.bm

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit189:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr @.str.123, ptr %7, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i190 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i190, align 8, !tbaa !56
  %i.dq = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(36) %19, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %7)
          to label %bb.k unwind label %bb.bn

bb.k:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit189
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !150 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 3 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !213 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 24 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !214
  %.not.i.i193 = icmp eq ptr %i.du, %i.dw
  br i1 %.not.i.i193, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dx = load i64, ptr %16, align 8, !tbaa !210
  store i64 %i.dx, ptr %i.du, align 8, !tbaa !210
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr %i.dy, ptr %i.dt, align 8, !tbaa !213
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit195

bb.m:                                             ; preds = %bb.k
  %i.dz = load ptr, ptr %i.ds, align 8, !tbaa !215 ; 10 uses
  %i.ea = ptrtoint ptr %i.du to i64               ; 2 uses
  %i.eb = ptrtoint ptr %i.dz to i64               ; 3 uses
  %i.ec = sub i64 %i.ea, %i.eb                    ; 3 uses
  %i.ed = icmp eq i64 %i.ec, 9223372036854775800
  br i1 %i.ed, label %bb.n, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i426

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc444 unwind label %bb.bn

.noexc444:                                        ; preds = %bb.n
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i426: ; preds = %bb.m
  %i.ee = ashr exact i64 %i.ec, 3                 ; 3 uses
  %.sroa.speculated.i.i427 = call i64 @llvm.umax.i64(i64 %i.ee, i64 1)
  %i.ef = add nsw i64 %.sroa.speculated.i.i427, %i.ee ; 2 uses
  %i.eg = icmp ult i64 %i.ef, %i.ee
  %i.eh = call i64 @llvm.umin.i64(i64 %i.ef, i64 1152921504606846975)
  %i.ei = select i1 %i.eg, i64 1152921504606846975, i64 %i.eh ; 3 uses
  %.not.i.i428 = icmp ne i64 %i.ei, 0
  call void @llvm.assume(i1 %.not.i.i428)
  %i.ej = shl nuw nsw i64 %i.ei, 3
  %i.ek = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ej) #24
          to label %.noexc445 unwind label %bb.bn ; 10 uses

.noexc445:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i426
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ec
  %i.em = load i64, ptr %16, align 8, !tbaa !210
  store i64 %i.em, ptr %i.el, align 8, !tbaa !210
  store ptr null, ptr %16, align 8, !tbaa !210
  %.not10.i.i.i.i429 = icmp eq ptr %i.dz, %i.du
  br i1 %.not10.i.i.i.i429, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i441, label %.lr.ph.i.i.i.i430.preheader

.lr.ph.i.i.i.i430.preheader:                      ; preds = %.noexc445
  %i.en = add i64 %i.ea, -8
  %i.eo = sub i64 %i.en, %i.eb                    ; 3 uses
  %i.ep = lshr i64 %i.eo, 3
  %i.eq = add nuw nsw i64 %i.ep, 1                ; 2 uses
  %min.iters.check695 = icmp ult i64 %i.eo, 136
  br i1 %min.iters.check695, label %.lr.ph.i.i.i.i430.preheader738, label %vector.memcheck696

vector.memcheck696:                               ; preds = %.lr.ph.i.i.i.i430.preheader
  %i.er = and i64 %i.eo, -8
  %i.es = add i64 %i.er, 8                        ; 2 uses
  %i.et = getelementptr i8, ptr %i.ek, i64 %i.es
  %i.eu = getelementptr i8, ptr %i.dz, i64 %i.es
  %bound0697 = icmp ult ptr %i.ek, %i.eu
  %bound1698 = icmp ult ptr %i.dz, %i.et
  %found.conflict699 = and i1 %bound0697, %bound1698
  br i1 %found.conflict699, label %.lr.ph.i.i.i.i430.preheader738, label %vector.ph700

vector.ph700:                                     ; preds = %vector.memcheck696
  %n.vec701 = and i64 %i.eq, 4611686018427387900  ; 3 uses
  %i.ev = shl i64 %n.vec701, 3                    ; 2 uses
  %i.ew = getelementptr i8, ptr %i.ek, i64 %i.ev  ; 2 uses
  %i.ex = getelementptr i8, ptr %i.dz, i64 %i.ev
  br label %vector.body702

vector.body702:                                   ; preds = %vector.body702, %vector.ph700
  %index703 = phi i64 [ 0, %vector.ph700 ], [ %index.next708, %vector.body702 ] ; 2 uses
  %i.ey = shl i64 %index703, 3                    ; 2 uses
  %next.gep704 = getelementptr i8, ptr %i.ek, i64 %i.ey ; 2 uses
  %next.gep705 = getelementptr i8, ptr %i.dz, i64 %i.ey ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !961)
  call void @llvm.experimental.noalias.scope.decl(metadata !962)
  %i.ez = getelementptr i8, ptr %next.gep705, i64 16
  %wide.load706 = load <2 x i64>, ptr %next.gep705, align 8, !tbaa !210, !alias.scope !963
  %wide.load707 = load <2 x i64>, ptr %i.ez, align 8, !tbaa !210, !alias.scope !963
  %i.fa = getelementptr i8, ptr %next.gep704, i64 16
  store <2 x i64> %wide.load706, ptr %next.gep704, align 8, !tbaa !210, !alias.scope !964, !noalias !965
  store <2 x i64> %wide.load707, ptr %i.fa, align 8, !tbaa !210, !alias.scope !964, !noalias !965
  %70 = getelementptr i8, ptr %next.gep705, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep705, align 8, !tbaa !210, !alias.scope !963
  store <2 x ptr> splat (ptr null), ptr %70, align 8, !tbaa !210, !alias.scope !963
  %index.next708 = add nuw i64 %index703, 4       ; 2 uses
  %i.fb = icmp eq i64 %index.next708, %n.vec701
  br i1 %i.fb, label %middle.block709, label %vector.body702, !llvm.loop !936

middle.block709:                                  ; preds = %vector.body702
  %cmp.n710 = icmp eq i64 %i.eq, %n.vec701
  br i1 %cmp.n710, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i441, label %.lr.ph.i.i.i.i430.preheader738

.lr.ph.i.i.i.i430.preheader738:                   ; preds = %vector.memcheck696, %.lr.ph.i.i.i.i430.preheader, %middle.block709
  %.012.i.i.i.i431.ph = phi ptr [ %i.ek, %vector.memcheck696 ], [ %i.ek, %.lr.ph.i.i.i.i430.preheader ], [ %i.ew, %middle.block709 ]
  %.0911.i.i.i.i432.ph = phi ptr [ %i.dz, %vector.memcheck696 ], [ %i.dz, %.lr.ph.i.i.i.i430.preheader ], [ %i.ex, %middle.block709 ]
  br label %.lr.ph.i.i.i.i430

.lr.ph.i.i.i.i430:                                ; preds = %.lr.ph.i.i.i.i430.preheader738, %.lr.ph.i.i.i.i430
  %.012.i.i.i.i431 = phi ptr [ %i.fe, %.lr.ph.i.i.i.i430 ], [ %.012.i.i.i.i431.ph, %.lr.ph.i.i.i.i430.preheader738 ] ; 2 uses
  %.0911.i.i.i.i432 = phi ptr [ %i.fd, %.lr.ph.i.i.i.i430 ], [ %.0911.i.i.i.i432.ph, %.lr.ph.i.i.i.i430.preheader738 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !961)
  call void @llvm.experimental.noalias.scope.decl(metadata !962)
  %i.fc = load i64, ptr %.0911.i.i.i.i432, align 8, !tbaa !210, !alias.scope !962
  store i64 %i.fc, ptr %.012.i.i.i.i431, align 8, !tbaa !210, !alias.scope !961
  store ptr null, ptr %.0911.i.i.i.i432, align 8, !tbaa !210, !alias.scope !962
  %i.fd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i432, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i431, i64 8 ; 2 uses
  %.not.i.i.i.i433 = icmp eq ptr %i.fd, %i.du
  br i1 %.not.i.i.i.i433, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i441, label %.lr.ph.i.i.i.i430, !llvm.loop !937

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i441: ; preds = %.lr.ph.i.i.i.i430, %middle.block709, %.noexc445
  %.0.lcssa.i.i.i.i435 = phi ptr [ %i.ek, %.noexc445 ], [ %i.ew, %middle.block709 ], [ %i.fe, %.lr.ph.i.i.i.i430 ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i435, i64 8
  %.not.i23.i443 = icmp eq ptr %i.dz, null
  br i1 %.not.i23.i443, label %.noexc194, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i441
  %i.fg = load ptr, ptr %i.dv, align 8, !tbaa !214
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = sub i64 %i.fh, %i.eb
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.fi) #23
  br label %.noexc194

.noexc194:                                        ; preds = %bb.o, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i441
  store ptr %i.ek, ptr %i.ds, align 8, !tbaa !215
  store ptr %i.ff, ptr %i.dt, align 8, !tbaa !213
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ei
  store ptr %i.fj, ptr %i.dv, align 8, !tbaa !214
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit195

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit195: ; preds = %.noexc194, %bb.l
  %i.fk = load ptr, ptr %19, align 8, !tbaa !51   ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZN5vcpkg7VersionD2Ev.exit198, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i196: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit195
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !48
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fo) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit198

_ZN5vcpkg7VersionD2Ev.exit198:                    ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit195, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i196
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.fp = load ptr, ptr %18, align 8, !tbaa !51   ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.dn
  br i1 %i.fq, label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199: ; preds = %_ZN5vcpkg7VersionD2Ev.exit198
  %i.fr = load i64, ptr %i.dn, align 8, !tbaa !48
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fs) #23
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN5vcpkg7VersionD2Ev.exit198, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.ft = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  store ptr %i.ft, ptr %21, align 8, !tbaa !47
  store i8 121, ptr %i.ft, align 8, !tbaa !48
  %i.fu = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 1, ptr %i.fu, align 8, !tbaa !50
  %i.fv = getelementptr inbounds nuw i8, ptr %21, i64 17
  store i8 0, ptr %i.fv, align 1, !tbaa !48
  invoke fastcc void @_ZL9make_fpghNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %20, ptr noundef align 8 %21)
          to label %bb.p unwind label %bb.bo

bb.p:                                             ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit
  %i.fw = load ptr, ptr %21, align 8, !tbaa !51   ; 2 uses
  %i.fx = icmp eq ptr %i.fw, %i.ft
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206: ; preds = %bb.p
  %i.fy = load i64, ptr %i.ft, align 8, !tbaa !48
  %i.fz = add i64 %i.fy, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.fz) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i206
  %i.ga = load ptr, ptr %20, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  %i.gb = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  store ptr %i.gb, ptr %22, align 8, !tbaa !47
  store i8 99, ptr %i.gb, align 8, !tbaa !48
  %i.gc = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 1, ptr %i.gc, align 8, !tbaa !50
  %i.gd = getelementptr inbounds nuw i8, ptr %22, i64 17
  store i8 0, ptr %i.gd, align 1, !tbaa !48
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 56
  %i.gf = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.gg = getelementptr inbounds nuw i8, ptr %22, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gf, i8 0, i64 24, i1 false)
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.gg) #22
  %i.gh = getelementptr inbounds nuw i8, ptr %22, i64 64
  store i32 0, ptr %i.gh, align 8, !tbaa !72
  %i.gi = getelementptr inbounds nuw i8, ptr %22, i64 72
  call void @_ZN5vcpkg7VersionC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.gi) #22
  %i.gj = getelementptr inbounds nuw i8, ptr %22, i64 112
  store i8 0, ptr %i.gj, align 8, !tbaa !94
  %i.gk = getelementptr inbounds nuw i8, ptr %22, i64 113
  store i8 1, ptr %i.gk, align 1, !tbaa !95
  %i.gl = getelementptr inbounds nuw i8, ptr %22, i64 120
  %i.gm = ptrtoint ptr %i.ga to i64               ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gl, i8 0, i64 24, i1 false)
  %i.gn = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ge, ptr noundef nonnull align 8 dereferenceable(144) %22)
          to label %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit214 unwind label %bb.bp ; 0 uses

_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit214: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208
  call void @_ZN5vcpkg10DependencyD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %22) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  %i.go = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  store ptr %i.go, ptr %23, align 8, !tbaa !47
  store i8 98, ptr %i.go, align 8, !tbaa !48
  %i.gp = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 1, ptr %i.gp, align 8, !tbaa !50
  %i.gq = getelementptr inbounds nuw i8, ptr %23, i64 17
  store i8 0, ptr %i.gq, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %24, ptr nonnull @.str.178, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit220 unwind label %bb.bq

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit220:       ; preds = %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit214
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr @.str.123, ptr %6, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i221 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i221, align 8, !tbaa !56
  %i.gr = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(36) %24, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %6)
          to label %bb.q unwind label %bb.br

bb.q:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit220
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !150 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 16 ; 3 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !213 ; 6 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 24 ; 3 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !214
  %.not.i.i224 = icmp eq ptr %i.gv, %i.gx
  br i1 %.not.i.i224, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i64 %i.gm, ptr %i.gv, align 8, !tbaa !210
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  store ptr %i.gy, ptr %i.gu, align 8, !tbaa !213
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit226

bb.s:                                             ; preds = %bb.q
  %i.gz = load ptr, ptr %i.gt, align 8, !tbaa !215 ; 10 uses
  %i.ha = ptrtoint ptr %i.gv to i64               ; 2 uses
  %i.hb = ptrtoint ptr %i.gz to i64               ; 3 uses
  %i.hc = sub i64 %i.ha, %i.hb                    ; 3 uses
  %i.hd = icmp eq i64 %i.hc, 9223372036854775800
  br i1 %i.hd, label %bb.t, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i447

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc465 unwind label %bb.br

.noexc465:                                        ; preds = %bb.t
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i447: ; preds = %bb.s
  %i.he = ashr exact i64 %i.hc, 3                 ; 3 uses
  %.sroa.speculated.i.i448 = call i64 @llvm.umax.i64(i64 %i.he, i64 1)
  %i.hf = add nsw i64 %.sroa.speculated.i.i448, %i.he ; 2 uses
  %i.hg = icmp ult i64 %i.hf, %i.he
  %i.hh = call i64 @llvm.umin.i64(i64 %i.hf, i64 1152921504606846975)
  %i.hi = select i1 %i.hg, i64 1152921504606846975, i64 %i.hh ; 3 uses
  %.not.i.i449 = icmp ne i64 %i.hi, 0
  call void @llvm.assume(i1 %.not.i.i449)
  %i.hj = shl nuw nsw i64 %i.hi, 3
  %i.hk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hj) #24
          to label %.noexc466 unwind label %bb.br ; 10 uses

.noexc466:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i447
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.hc
  store i64 %i.gm, ptr %i.hl, align 8, !tbaa !210
  store ptr null, ptr %20, align 8, !tbaa !210
  %.not10.i.i.i.i450 = icmp eq ptr %i.gz, %i.gv
  br i1 %.not10.i.i.i.i450, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i462, label %.lr.ph.i.i.i.i451.preheader

.lr.ph.i.i.i.i451.preheader:                      ; preds = %.noexc466
  %i.hm = add i64 %i.ha, -8
  %i.hn = sub i64 %i.hm, %i.hb                    ; 3 uses
  %i.ho = lshr i64 %i.hn, 3
  %i.hp = add nuw nsw i64 %i.ho, 1                ; 2 uses
  %min.iters.check719 = icmp ult i64 %i.hn, 136
  br i1 %min.iters.check719, label %.lr.ph.i.i.i.i451.preheader737, label %vector.memcheck720

vector.memcheck720:                               ; preds = %.lr.ph.i.i.i.i451.preheader
  %i.hq = and i64 %i.hn, -8
  %i.hr = add i64 %i.hq, 8                        ; 2 uses
  %i.hs = getelementptr i8, ptr %i.hk, i64 %i.hr
  %i.ht = getelementptr i8, ptr %i.gz, i64 %i.hr
  %bound0721 = icmp ult ptr %i.hk, %i.ht
  %bound1722 = icmp ult ptr %i.gz, %i.hs
  %found.conflict723 = and i1 %bound0721, %bound1722
  br i1 %found.conflict723, label %.lr.ph.i.i.i.i451.preheader737, label %vector.ph724

vector.ph724:                                     ; preds = %vector.memcheck720
  %n.vec725 = and i64 %i.hp, 4611686018427387900  ; 3 uses
  %i.hu = shl i64 %n.vec725, 3                    ; 2 uses
  %i.hv = getelementptr i8, ptr %i.hk, i64 %i.hu  ; 2 uses
  %i.hw = getelementptr i8, ptr %i.gz, i64 %i.hu
  br label %vector.body726

vector.body726:                                   ; preds = %vector.body726, %vector.ph724
  %index727 = phi i64 [ 0, %vector.ph724 ], [ %index.next732, %vector.body726 ] ; 2 uses
  %i.hx = shl i64 %index727, 3                    ; 2 uses
  %next.gep728 = getelementptr i8, ptr %i.hk, i64 %i.hx ; 2 uses
  %next.gep729 = getelementptr i8, ptr %i.gz, i64 %i.hx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !966)
  call void @llvm.experimental.noalias.scope.decl(metadata !967)
  %i.hy = getelementptr i8, ptr %next.gep729, i64 16
  %wide.load730 = load <2 x i64>, ptr %next.gep729, align 8, !tbaa !210, !alias.scope !968
  %wide.load731 = load <2 x i64>, ptr %i.hy, align 8, !tbaa !210, !alias.scope !968
  %i.hz = getelementptr i8, ptr %next.gep728, i64 16
  store <2 x i64> %wide.load730, ptr %next.gep728, align 8, !tbaa !210, !alias.scope !969, !noalias !970
  store <2 x i64> %wide.load731, ptr %i.hz, align 8, !tbaa !210, !alias.scope !969, !noalias !970
  %71 = getelementptr i8, ptr %next.gep729, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep729, align 8, !tbaa !210, !alias.scope !968
  store <2 x ptr> splat (ptr null), ptr %71, align 8, !tbaa !210, !alias.scope !968
  %index.next732 = add nuw i64 %index727, 4       ; 2 uses
  %i.ia = icmp eq i64 %index.next732, %n.vec725
  br i1 %i.ia, label %middle.block733, label %vector.body726, !llvm.loop !944

middle.block733:                                  ; preds = %vector.body726
  %cmp.n734 = icmp eq i64 %i.hp, %n.vec725
  br i1 %cmp.n734, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i462, label %.lr.ph.i.i.i.i451.preheader737

.lr.ph.i.i.i.i451.preheader737:                   ; preds = %vector.memcheck720, %.lr.ph.i.i.i.i451.preheader, %middle.block733
  %.012.i.i.i.i452.ph = phi ptr [ %i.hk, %vector.memcheck720 ], [ %i.hk, %.lr.ph.i.i.i.i451.preheader ], [ %i.hv, %middle.block733 ]
  %.0911.i.i.i.i453.ph = phi ptr [ %i.gz, %vector.memcheck720 ], [ %i.gz, %.lr.ph.i.i.i.i451.preheader ], [ %i.hw, %middle.block733 ]
  br label %.lr.ph.i.i.i.i451

.lr.ph.i.i.i.i451:                                ; preds = %.lr.ph.i.i.i.i451.preheader737, %.lr.ph.i.i.i.i451
  %.012.i.i.i.i452 = phi ptr [ %i.id, %.lr.ph.i.i.i.i451 ], [ %.012.i.i.i.i452.ph, %.lr.ph.i.i.i.i451.preheader737 ] ; 2 uses
  %.0911.i.i.i.i453 = phi ptr [ %i.ic, %.lr.ph.i.i.i.i451 ], [ %.0911.i.i.i.i453.ph, %.lr.ph.i.i.i.i451.preheader737 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !966)
  call void @llvm.experimental.noalias.scope.decl(metadata !967)
  %i.ib = load i64, ptr %.0911.i.i.i.i453, align 8, !tbaa !210, !alias.scope !967
  store i64 %i.ib, ptr %.012.i.i.i.i452, align 8, !tbaa !210, !alias.scope !966
  store ptr null, ptr %.0911.i.i.i.i453, align 8, !tbaa !210, !alias.scope !967
  %i.ic = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i453, i64 8 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i452, i64 8 ; 2 uses
  %.not.i.i.i.i454 = icmp eq ptr %i.ic, %i.gv
  br i1 %.not.i.i.i.i454, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i462, label %.lr.ph.i.i.i.i451, !llvm.loop !945

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i462: ; preds = %.lr.ph.i.i.i.i451, %middle.block733, %.noexc466
  %.0.lcssa.i.i.i.i456 = phi ptr [ %i.hk, %.noexc466 ], [ %i.hv, %middle.block733 ], [ %i.id, %.lr.ph.i.i.i.i451 ]
  %i.ie = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i456, i64 8
  %.not.i23.i464 = icmp eq ptr %i.gz, null
  br i1 %.not.i23.i464, label %.noexc225, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i462
  %i.if = load ptr, ptr %i.gw, align 8, !tbaa !214
  %i.ig = ptrtoint ptr %i.if to i64
  %i.ih = sub i64 %i.ig, %i.hb
  call void @_ZdlPvm(ptr noundef nonnull %i.gz, i64 noundef %i.ih) #23
  br label %.noexc225

.noexc225:                                        ; preds = %bb.u, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i462
  store ptr %i.hk, ptr %i.gt, align 8, !tbaa !215
  store ptr %i.ie, ptr %i.gu, align 8, !tbaa !213
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.hi
  store ptr %i.ii, ptr %i.gw, align 8, !tbaa !214
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit226

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit226: ; preds = %.noexc225, %bb.r
  %i.ij = load ptr, ptr %24, align 8, !tbaa !51   ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.il = icmp eq ptr %i.ij, %i.ik
  br i1 %i.il, label %_ZN5vcpkg7VersionD2Ev.exit229, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i227

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i227: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit226
  %i.im = load i64, ptr %i.ik, align 8, !tbaa !48
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.in) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit229

_ZN5vcpkg7VersionD2Ev.exit229:                    ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit226, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i227
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  %i.io = load ptr, ptr %23, align 8, !tbaa !51   ; 2 uses
  %i.ip = icmp eq ptr %i.io, %i.go
  br i1 %i.ip, label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230: ; preds = %_ZN5vcpkg7VersionD2Ev.exit229
  %i.iq = load i64, ptr %i.go, align 8, !tbaa !48
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.ir) #23
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit235

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit235: ; preds = %_ZN5vcpkg7VersionD2Ev.exit229, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i230
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  %i.is = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  store ptr %i.is, ptr %25, align 8, !tbaa !47
  store i8 99, ptr %i.is, align 8, !tbaa !48
  %i.it = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 1, ptr %i.it, align 8, !tbaa !50
  %i.iu = getelementptr inbounds nuw i8, ptr %25, i64 17
  store i8 0, ptr %i.iu, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %26, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit241 unwind label %bb.bt

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit241:       ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit235
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr @.str.123, ptr %5, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i242 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i242, align 8, !tbaa !56
  %i.iv = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(36) %26, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %5)
          to label %bb.v unwind label %bb.bu      ; 0 uses

bb.v:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit241
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.iw = load ptr, ptr %26, align 8, !tbaa !51   ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.iy = icmp eq ptr %i.iw, %i.ix
  br i1 %i.iy, label %_ZN5vcpkg7VersionD2Ev.exit247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i245: ; preds = %bb.v
  %i.iz = load i64, ptr %i.ix, align 8, !tbaa !48
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.ja) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit247

_ZN5vcpkg7VersionD2Ev.exit247:                    ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i245
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  %i.jb = load ptr, ptr %25, align 8, !tbaa !51   ; 2 uses
  %i.jc = icmp eq ptr %i.jb, %i.is
  br i1 %i.jc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248: ; preds = %_ZN5vcpkg7VersionD2Ev.exit247
  %i.jd = load i64, ptr %i.is, align 8, !tbaa !48
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.je) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250: ; preds = %_ZN5vcpkg7VersionD2Ev.exit247, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5vcpkg4Test20MockCMakeVarProviderE, i64 16), ptr %27, align 8, !tbaa !33
  %i.jf = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.jg = getelementptr inbounds nuw i8, ptr %27, i64 56
  store ptr %i.jg, ptr %i.jf, align 8, !tbaa !64
  %i.jh = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i64 1, ptr %i.jh, align 8, !tbaa !65
  %i.ji = getelementptr inbounds nuw i8, ptr %27, i64 24
  %i.jj = getelementptr inbounds nuw i8, ptr %27, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ji, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.jj, align 8, !tbaa !66
  %i.jk = getelementptr inbounds nuw i8, ptr %27, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jk, i8 0, i64 16, i1 false)
  %i.jl = getelementptr inbounds nuw i8, ptr %27, i64 64
  %i.jm = getelementptr inbounds nuw i8, ptr %27, i64 112
  store ptr %i.jm, ptr %i.jl, align 8, !tbaa !64
  %i.jn = getelementptr inbounds nuw i8, ptr %27, i64 72
  store i64 1, ptr %i.jn, align 8, !tbaa !65
  %i.jo = getelementptr inbounds nuw i8, ptr %27, i64 80
  %i.jp = getelementptr inbounds nuw i8, ptr %27, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jo, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.jp, align 8, !tbaa !66
  %i.jq = getelementptr inbounds nuw i8, ptr %27, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jq, i8 0, i64 16, i1 false)
  %i.jr = getelementptr inbounds nuw i8, ptr %27, i64 120
  %i.js = getelementptr inbounds nuw i8, ptr %27, i64 168
  store ptr %i.js, ptr %i.jr, align 8, !tbaa !68
  %i.jt = getelementptr inbounds nuw i8, ptr %27, i64 128
  store i64 1, ptr %i.jt, align 8, !tbaa !69
  %i.ju = getelementptr inbounds nuw i8, ptr %27, i64 136
  %i.jv = getelementptr inbounds nuw i8, ptr %27, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ju, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.jv, align 8, !tbaa !66
  %i.jw = getelementptr inbounds nuw i8, ptr %27, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jw, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV20MockBaselineProvider, i64 16), ptr %28, align 8, !tbaa !33
  %i.jx = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 3 uses
  store i32 0, ptr %i.jx, align 8, !tbaa !41
  %i.jy = getelementptr inbounds nuw i8, ptr %28, i64 24 ; 2 uses
  store ptr null, ptr %i.jy, align 8, !tbaa !40
  %i.jz = getelementptr inbounds nuw i8, ptr %28, i64 32
  store ptr %i.jx, ptr %i.jz, align 8, !tbaa !42
  %i.ka = getelementptr inbounds nuw i8, ptr %28, i64 40
  store ptr %i.jx, ptr %i.ka, align 8, !tbaa !43
  %i.kb = getelementptr inbounds nuw i8, ptr %28, i64 48
  store i64 0, ptr %i.kb, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %29, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit252 unwind label %bb.bv

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit252:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250
  %i.kc = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  %i.kd = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  store ptr %i.kd, ptr %30, align 8, !tbaa !47
  store i8 97, ptr %i.kd, align 8, !tbaa !48
  %i.ke = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 1, ptr %i.ke, align 8, !tbaa !50
  %i.kf = getelementptr inbounds nuw i8, ptr %30, i64 17
  store i8 0, ptr %i.kf, align 1, !tbaa !48
  %i.kg = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg7VersionESt4lessIvESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.kc, ptr noundef nonnull align 8 dereferenceable(32) %30)
          to label %bb.w unwind label %bb.bw      ; 10 uses

bb.w:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit252
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !51 ; 6 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 4 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  %i.kk = load ptr, ptr %29, align 8, !tbaa !51   ; 6 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 6 uses
  %i.km = icmp eq ptr %i.kk, %i.kl                ; 2 uses
  br i1 %i.kj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i257

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259: ; preds = %bb.w
  br i1 %i.km, label %bb.x, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i257: ; preds = %bb.w
  br i1 %i.km, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i257, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i259
end_hunk_2
begin_hunk_3_@_ZL20C_A_T_C_H_T_E_S_T_95v:._crit_edge.i.i
  store i8 97, ptr %i.o, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.p, align 8, !tbaa !50
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 0, ptr %i.q, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit unwind label %bb.ad

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr @.str.123, ptr %2, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !56
  %i.r = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %2)
          to label %bb.b unwind label %bb.ae      ; 2 uses

bb.b:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.s = load ptr, ptr %7, align 8, !tbaa !51     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN5vcpkg7VersionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.v = load i64, ptr %i.t, align 8, !tbaa !48
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit

_ZN5vcpkg7VersionD2Ev.exit:                       ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.x = load ptr, ptr %6, align 8, !tbaa !51     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.o
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %_ZN5vcpkg7VersionD2Ev.exit
  %i.z = load i64, ptr %i.o, align 8, !tbaa !48
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %_ZN5vcpkg7VersionD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !150
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !152 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  store ptr %i.ad, ptr %8, align 8, !tbaa !47
  store i8 120, ptr %i.ad, align 8, !tbaa !48
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i64 1, ptr %i.ae, align 8, !tbaa !50
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 0, ptr %i.af, align 1, !tbaa !48
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #22
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 272 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !220 ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 280
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !219
  %.not.i.i = icmp eq ptr %i.ai, %i.ak
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 3 uses
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !47
  %i.am = load ptr, ptr %8, align 8, !tbaa !51    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.ad
  br i1 %i.an, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ao = load i64, ptr %i.ae, align 8, !tbaa !50 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.aq, i1 false)
  br label %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !51
  %i.ar = load i64, ptr %i.ad, align 8, !tbaa !48
  store i64 %i.ar, ptr %i.al, align 8, !tbaa !48
  %.pre = load i64, ptr %i.ae, align 8, !tbaa !50
  br label %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i

_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.d
  %i.as = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ao, %bb.d ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !50
  store ptr %i.ad, ptr %8, align 8, !tbaa !51
  store i64 0, ptr %i.ae, align 8, !tbaa !50
  store i8 0, ptr %i.ad, align 8, !tbaa !48
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #22
  %i.av = load ptr, ptr %i.ah, align 8, !tbaa !220
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store ptr %i.aw, ptr %i.ah, align 8, !tbaa !220
  br label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 264
  invoke void @_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr %i.ai, ptr noundef nonnull align 8 dereferenceable(40) %8)
          to label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit unwind label %bb.af

_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i, %bb.e
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ag) #22
  %i.ay = load ptr, ptr %8, align 8, !tbaa !51    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ad
  br i1 %i.az, label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71: ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit
  %i.ba = load i64, ptr %i.ad, align 8, !tbaa !48
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #23
  br label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit

_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit:   ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.bc = load ptr, ptr %i.r, align 8, !tbaa !150 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !213 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !214
  %.not.i.i73 = icmp eq ptr %i.bf, %i.bh
  br i1 %.not.i.i73, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit
  %i.bi = load i64, ptr %4, align 8, !tbaa !210
  store i64 %i.bi, ptr %i.bf, align 8, !tbaa !210
  store ptr null, ptr %4, align 8, !tbaa !210
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bj, ptr %i.be, align 8, !tbaa !213
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

bb.g:                                             ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit
  %i.bk = load ptr, ptr %i.bd, align 8, !tbaa !215 ; 10 uses
  %i.bl = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64               ; 3 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %bb.h, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc125 unwind label %bb.ag

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
          to label %.noexc126 unwind label %bb.ag ; 10 uses

.noexc126:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  %i.bx = load i64, ptr %4, align 8, !tbaa !210
  store i64 %i.bx, ptr %i.bw, align 8, !tbaa !210
  store ptr null, ptr %4, align 8, !tbaa !210
  %.not10.i.i.i.i = icmp eq ptr %i.bk, %i.bf
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc126
  %i.by = add i64 %i.bl, -8
  %i.bz = sub i64 %i.by, %i.bm                    ; 3 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bz, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader212, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.cc = and i64 %i.bz, -8
  %i.cd = add i64 %i.cc, 8                        ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bv, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.bk, i64 %i.cd
  %bound0 = icmp ult ptr %i.bv, %i.cf
  %bound1 = icmp ult ptr %i.bk, %i.ce
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader212, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cb, 4611686018427387900     ; 3 uses
  %i.cg = shl i64 %n.vec, 3                       ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bv, i64 %i.cg  ; 2 uses
  %i.ci = getelementptr i8, ptr %i.bk, i64 %i.cg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bv, i64 %i.cj ; 2 uses
  %next.gep209 = getelementptr i8, ptr %i.bk, i64 %i.cj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  %i.ck = getelementptr i8, ptr %next.gep209, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep209, align 8, !tbaa !210, !alias.scope !1011
  %wide.load210 = load <2 x i64>, ptr %i.ck, align 8, !tbaa !210, !alias.scope !1011
  %i.cl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !210, !alias.scope !1012, !noalias !1013
  store <2 x i64> %wide.load210, ptr %i.cl, align 8, !tbaa !210, !alias.scope !1012, !noalias !1013
  %28 = getelementptr i8, ptr %next.gep209, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep209, align 8, !tbaa !210, !alias.scope !1011
  store <2 x ptr> splat (ptr null), ptr %28, align 8, !tbaa !210, !alias.scope !1011
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !1003

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader212

.lr.ph.i.i.i.i.preheader212:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bv, %vector.memcheck ], [ %i.bv, %.lr.ph.i.i.i.i.preheader ], [ %i.ch, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bk, %vector.memcheck ], [ %i.bk, %.lr.ph.i.i.i.i.preheader ], [ %i.ci, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader212, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader212 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader212 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  %i.cn = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !210, !alias.scope !1010
  store i64 %i.cn, ptr %.012.i.i.i.i, align 8, !tbaa !210, !alias.scope !1009
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !210, !alias.scope !1010
  %i.co = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.co, %i.bf
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1004

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc126
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bv, %.noexc126 ], [ %i.ch, %middle.block ], [ %i.cp, %.lr.ph.i.i.i.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.bk, null
  br i1 %.not.i23.i, label %.noexc74, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.cr = load ptr, ptr %i.bg, align 8, !tbaa !214
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = sub i64 %i.cs, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.ct) #23
  br label %.noexc74

.noexc74:                                         ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.bv, ptr %i.bd, align 8, !tbaa !215
  store ptr %i.cq, ptr %i.be, align 8, !tbaa !213
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.cu, ptr %i.bg, align 8, !tbaa !214
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %.noexc74, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5vcpkg4Test20MockCMakeVarProviderE, i64 16), ptr %9, align 8, !tbaa !33
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 56
  store ptr %i.cw, ptr %i.cv, align 8, !tbaa !64
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 1, ptr %i.cx, align 8, !tbaa !65
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cz, align 8, !tbaa !66
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, i8 0, i64 16, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 112
  store ptr %i.dc, ptr %i.db, align 8, !tbaa !64
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 72
  store i64 1, ptr %i.dd, align 8, !tbaa !65
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.df = getelementptr inbounds nuw i8, ptr %9, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.df, align 8, !tbaa !66
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, i8 0, i64 16, i1 false)
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 120
  %i.di = getelementptr inbounds nuw i8, ptr %9, i64 168
  store ptr %i.di, ptr %i.dh, align 8, !tbaa !68
  %i.dj = getelementptr inbounds nuw i8, ptr %9, i64 128
  store i64 1, ptr %i.dj, align 8, !tbaa !69
  %i.dk = getelementptr inbounds nuw i8, ptr %9, i64 136
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.dl, align 8, !tbaa !66
  %i.dm = getelementptr inbounds nuw i8, ptr %9, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV20MockBaselineProvider, i64 16), ptr %10, align 8, !tbaa !33
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store i32 0, ptr %i.dn, align 8, !tbaa !41
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store ptr null, ptr %i.do, align 8, !tbaa !40
  %i.dp = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.dn, ptr %i.dp, align 8, !tbaa !42
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %i.dn, ptr %i.dq, align 8, !tbaa !43
  %i.dr = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i64 0, ptr %i.dr, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit76 unwind label %bb.ah

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit76:        ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.ds = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.ds, ptr %12, align 8, !tbaa !47
  store i8 97, ptr %i.ds, align 8, !tbaa !48
  %i.dt = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 1, ptr %i.dt, align 8, !tbaa !50
  %i.du = getelementptr inbounds nuw i8, ptr %12, i64 17
  store i8 0, ptr %i.du, align 1, !tbaa !48
  %i.dv = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.dw = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg7VersionESt4lessIvESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.j unwind label %bb.ai      ; 10 uses

bb.j:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit76
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !51 ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 4 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  %i.ea = load ptr, ptr %11, align 8, !tbaa !51   ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb                ; 2 uses
  br i1 %i.dz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %bb.j
  br i1 %i.ec, label %bb.k, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i81: ; preds = %bb.j
  br i1 %i.ec, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i81, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  %i.ed = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !50 ; 3 uses
  %i.ef = icmp ult i64 %i.ee, 16
  call void @llvm.assume(i1 %i.ef)
  %.not21.i.i = icmp eq ptr %11, %i.dw
  br i1 %.not21.i.i, label %_ZN5vcpkg7VersionaSEOS0_.exit, label %bb.l, !prof !52

bb.l:                                             ; preds = %bb.k
  switch i64 %i.ee, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.eg = load i8, ptr %i.ea, align 1, !tbaa !48
  store i8 %i.eg, ptr %i.dx, align 1, !tbaa !48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dx, ptr align 1 %i.ea, i64 %i.ee, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.eh = load i64, ptr %i.ed, align 8, !tbaa !50 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !50
  %i.ej = load ptr, ptr %i.dw, align 8, !tbaa !51
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eh
  store i8 0, ptr %i.ek, align 1, !tbaa !48
  %.pre.i.i = load ptr, ptr %11, align 8, !tbaa !51
  br label %_ZN5vcpkg7VersionaSEOS0_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  %i.el = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store ptr %i.ea, ptr %i.dw, align 8, !tbaa !51
  %i.em = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !50
  store i64 %i.en, ptr %i.el, align 8, !tbaa !50
  %i.eo = load i64, ptr %i.eb, align 8, !tbaa !48
  store i64 %i.eo, ptr %i.dy, align 8, !tbaa !48
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i81
  %i.ep = load i64, ptr %i.dy, align 8, !tbaa !48
  store ptr %i.ea, ptr %i.dw, align 8, !tbaa !51
  %i.eq = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !50
  %i.es = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i64 %i.er, ptr %i.es, align 8, !tbaa !50
  %i.et = load i64, ptr %i.eb, align 8, !tbaa !48
  store i64 %i.et, ptr %i.dy, align 8, !tbaa !48
  %.not.i.i82 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i82, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.dx, ptr %11, align 8, !tbaa !51
  store i64 %i.ep, ptr %i.eb, align 8, !tbaa !48
  br label %_ZN5vcpkg7VersionaSEOS0_.exit

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.eb, ptr %11, align 8, !tbaa !51
  br label %_ZN5vcpkg7VersionaSEOS0_.exit

_ZN5vcpkg7VersionaSEOS0_.exit:                    ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.o, %bb.p
  %i.eu = phi ptr [ %i.dx, %bb.o ], [ %i.eb, %bb.p ], [ %i.ea, %bb.k ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.ev = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.ev, align 8, !tbaa !50
  store i8 0, ptr %i.eu, align 1, !tbaa !48
  %i.ew = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !54
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  store i32 %i.ex, ptr %i.ey, align 8, !tbaa !54
  %i.ez = load ptr, ptr %12, align 8, !tbaa !51   ; 2 uses
end_hunk_3
begin_hunk_4_@_ZL20C_A_T_C_H_T_E_S_T_97v:._crit_edge.i.i
  store i8 97, ptr %i.o, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.p, align 8, !tbaa !50
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 0, ptr %i.q, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit unwind label %bb.al

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr @.str.123, ptr %1, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !56
  %i.r = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(36) %6, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %1)
          to label %bb.b unwind label %bb.am      ; 2 uses

bb.b:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.s = load ptr, ptr %6, align 8, !tbaa !51     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN5vcpkg7VersionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.v = load i64, ptr %i.t, align 8, !tbaa !48
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit

_ZN5vcpkg7VersionD2Ev.exit:                       ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.x = load ptr, ptr %5, align 8, !tbaa !51     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.o
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %_ZN5vcpkg7VersionD2Ev.exit
  %i.z = load i64, ptr %i.o, align 8, !tbaa !48
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %_ZN5vcpkg7VersionD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !150
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !152 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  store ptr %i.ad, ptr %7, align 8, !tbaa !47
  store i8 120, ptr %i.ad, align 8, !tbaa !48
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i64 1, ptr %i.ae, align 8, !tbaa !50
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 17
  store i8 0, ptr %i.af, align 1, !tbaa !48
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #22
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 272 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !220 ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 280
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !219
  %.not.i.i = icmp eq ptr %i.ai, %i.ak
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 3 uses
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !47
  %i.am = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.ad
  br i1 %i.an, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ao = load i64, ptr %i.ae, align 8, !tbaa !50 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.aq, i1 false)
  br label %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  store ptr %i.am, ptr %i.ai, align 8, !tbaa !51
  %i.ar = load i64, ptr %i.ad, align 8, !tbaa !48
  store i64 %i.ar, ptr %i.al, align 8, !tbaa !48
  %.pre = load i64, ptr %i.ae, align 8, !tbaa !50
  br label %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i

_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.d
  %i.as = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ao, %bb.d ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !50
  store ptr %i.ad, ptr %7, align 8, !tbaa !51
  store i64 0, ptr %i.ae, align 8, !tbaa !50
  store i8 0, ptr %i.ad, align 8, !tbaa !48
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #22
  %i.av = load ptr, ptr %i.ah, align 8, !tbaa !220
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store ptr %i.aw, ptr %i.ah, align 8, !tbaa !220
  br label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 264
  invoke void @_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr %i.ai, ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit unwind label %bb.an

_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i, %bb.e
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ag) #22
  %i.ay = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ad
  br i1 %i.az, label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59: ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit
  %i.ba = load i64, ptr %i.ad, align 8, !tbaa !48
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #23
  br label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit

_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit:   ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.bc = load ptr, ptr %i.r, align 8, !tbaa !150 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !213 ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !214
  %.not.i.i61 = icmp eq ptr %i.bf, %i.bh
  br i1 %.not.i.i61, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit
  %i.bi = load i64, ptr %3, align 8, !tbaa !210
  store i64 %i.bi, ptr %i.bf, align 8, !tbaa !210
  store ptr null, ptr %3, align 8, !tbaa !210
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bj, ptr %i.be, align 8, !tbaa !213
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

bb.g:                                             ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit
  %i.bk = load ptr, ptr %i.bd, align 8, !tbaa !215 ; 10 uses
  %i.bl = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64               ; 3 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %bb.h, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc125 unwind label %bb.ao

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
          to label %.noexc126 unwind label %bb.ao ; 10 uses

.noexc126:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn
  %i.bx = load i64, ptr %3, align 8, !tbaa !210
  store i64 %i.bx, ptr %i.bw, align 8, !tbaa !210
  store ptr null, ptr %3, align 8, !tbaa !210
  %.not10.i.i.i.i = icmp eq ptr %i.bk, %i.bf
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc126
  %i.by = add i64 %i.bl, -8
  %i.bz = sub i64 %i.by, %i.bm                    ; 3 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bz, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader221, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.cc = and i64 %i.bz, -8
  %i.cd = add i64 %i.cc, 8                        ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bv, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.bk, i64 %i.cd
  %bound0 = icmp ult ptr %i.bv, %i.cf
  %bound1 = icmp ult ptr %i.bk, %i.ce
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader221, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cb, 4611686018427387900     ; 3 uses
  %i.cg = shl i64 %n.vec, 3                       ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bv, i64 %i.cg  ; 2 uses
  %i.ci = getelementptr i8, ptr %i.bk, i64 %i.cg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bv, i64 %i.cj ; 2 uses
  %next.gep218 = getelementptr i8, ptr %i.bk, i64 %i.cj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  %i.ck = getelementptr i8, ptr %next.gep218, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep218, align 8, !tbaa !210, !alias.scope !1028
  %wide.load219 = load <2 x i64>, ptr %i.ck, align 8, !tbaa !210, !alias.scope !1028
  %i.cl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !210, !alias.scope !1029, !noalias !1030
  store <2 x i64> %wide.load219, ptr %i.cl, align 8, !tbaa !210, !alias.scope !1029, !noalias !1030
  %28 = getelementptr i8, ptr %next.gep218, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep218, align 8, !tbaa !210, !alias.scope !1028
  store <2 x ptr> splat (ptr null), ptr %28, align 8, !tbaa !210, !alias.scope !1028
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !1022

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader221

.lr.ph.i.i.i.i.preheader221:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bv, %vector.memcheck ], [ %i.bv, %.lr.ph.i.i.i.i.preheader ], [ %i.ch, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bk, %vector.memcheck ], [ %i.bk, %.lr.ph.i.i.i.i.preheader ], [ %i.ci, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader221, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader221 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader221 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  %i.cn = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !210, !alias.scope !1027
  store i64 %i.cn, ptr %.012.i.i.i.i, align 8, !tbaa !210, !alias.scope !1026
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !210, !alias.scope !1027
  %i.co = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.co, %i.bf
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1023

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc126
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bv, %.noexc126 ], [ %i.ch, %middle.block ], [ %i.cp, %.lr.ph.i.i.i.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.bk, null
  br i1 %.not.i23.i, label %.noexc62, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.cr = load ptr, ptr %i.bg, align 8, !tbaa !214
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = sub i64 %i.cs, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.ct) #23
  br label %.noexc62

.noexc62:                                         ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.bv, ptr %i.bd, align 8, !tbaa !215
  store ptr %i.cq, ptr %i.be, align 8, !tbaa !213
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.cu, ptr %i.bg, align 8, !tbaa !214
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %.noexc62, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5vcpkg4Test20MockCMakeVarProviderE, i64 16), ptr %8, align 8, !tbaa !33
  %i.cv = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %8, i64 56
  store ptr %i.cw, ptr %i.cv, align 8, !tbaa !64
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 1, ptr %i.cx, align 8, !tbaa !65
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.cz, align 8, !tbaa !66
  %i.da = getelementptr inbounds nuw i8, ptr %8, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, i8 0, i64 16, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 112
  store ptr %i.dc, ptr %i.db, align 8, !tbaa !64
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i64 1, ptr %i.dd, align 8, !tbaa !65
  %i.de = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.df, align 8, !tbaa !66
  %i.dg = getelementptr inbounds nuw i8, ptr %8, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, i8 0, i64 16, i1 false)
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 168
  store ptr %i.di, ptr %i.dh, align 8, !tbaa !68
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 128
  store i64 1, ptr %i.dj, align 8, !tbaa !69
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 136
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dk, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.dl, align 8, !tbaa !66
  %i.dm = getelementptr inbounds nuw i8, ptr %8, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV20MockBaselineProvider, i64 16), ptr %9, align 8, !tbaa !33
  %i.dn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store i32 0, ptr %i.dn, align 8, !tbaa !41
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store ptr null, ptr %i.do, align 8, !tbaa !40
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.dn, ptr %i.dp, align 8, !tbaa !42
  %i.dq = getelementptr inbounds nuw i8, ptr %9, i64 40
  store ptr %i.dn, ptr %i.dq, align 8, !tbaa !43
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i64 0, ptr %i.dr, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit64 unwind label %bb.ap

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit64:        ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.ds = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.ds, ptr %11, align 8, !tbaa !47
  store i8 97, ptr %i.ds, align 8, !tbaa !48
  %i.dt = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 1, ptr %i.dt, align 8, !tbaa !50
  %i.du = getelementptr inbounds nuw i8, ptr %11, i64 17
  store i8 0, ptr %i.du, align 1, !tbaa !48
  %i.dv = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.dw = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg7VersionESt4lessIvESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.dv, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.j unwind label %bb.aq      ; 10 uses

bb.j:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit64
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !51 ; 6 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 4 uses
  %i.dz = icmp eq ptr %i.dx, %i.dy
  %i.ea = load ptr, ptr %10, align 8, !tbaa !51   ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb                ; 2 uses
  br i1 %i.dz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.j
  br i1 %i.ec, label %bb.k, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i69: ; preds = %bb.j
  br i1 %i.ec, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i69, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  %i.ed = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !50 ; 3 uses
  %i.ef = icmp ult i64 %i.ee, 16
  call void @llvm.assume(i1 %i.ef)
  %.not21.i.i = icmp eq ptr %10, %i.dw
  br i1 %.not21.i.i, label %_ZN5vcpkg7VersionaSEOS0_.exit, label %bb.l, !prof !52

bb.l:                                             ; preds = %bb.k
  switch i64 %i.ee, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.eg = load i8, ptr %i.ea, align 1, !tbaa !48
  store i8 %i.eg, ptr %i.dx, align 1, !tbaa !48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dx, ptr align 1 %i.ea, i64 %i.ee, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.eh = load i64, ptr %i.ed, align 8, !tbaa !50 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i64 %i.eh, ptr %i.ei, align 8, !tbaa !50
  %i.ej = load ptr, ptr %i.dw, align 8, !tbaa !51
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.eh
  store i8 0, ptr %i.ek, align 1, !tbaa !48
  %.pre.i.i = load ptr, ptr %10, align 8, !tbaa !51
  br label %_ZN5vcpkg7VersionaSEOS0_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  %i.el = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store ptr %i.ea, ptr %i.dw, align 8, !tbaa !51
  %i.em = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !50
  store i64 %i.en, ptr %i.el, align 8, !tbaa !50
  %i.eo = load i64, ptr %i.eb, align 8, !tbaa !48
  store i64 %i.eo, ptr %i.dy, align 8, !tbaa !48
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i69
  %i.ep = load i64, ptr %i.dy, align 8, !tbaa !48
  store ptr %i.ea, ptr %i.dw, align 8, !tbaa !51
  %i.eq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !50
  %i.es = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i64 %i.er, ptr %i.es, align 8, !tbaa !50
  %i.et = load i64, ptr %i.eb, align 8, !tbaa !48
  store i64 %i.et, ptr %i.dy, align 8, !tbaa !48
  %.not.i.i70 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i70, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.dx, ptr %10, align 8, !tbaa !51
  store i64 %i.ep, ptr %i.eb, align 8, !tbaa !48
  br label %_ZN5vcpkg7VersionaSEOS0_.exit

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.eb, ptr %10, align 8, !tbaa !51
  br label %_ZN5vcpkg7VersionaSEOS0_.exit

_ZN5vcpkg7VersionaSEOS0_.exit:                    ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.o, %bb.p
  %i.eu = phi ptr [ %i.dx, %bb.o ], [ %i.eb, %bb.p ], [ %i.ea, %bb.k ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.ev = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.ev, align 8, !tbaa !50
  store i8 0, ptr %i.eu, align 1, !tbaa !48
  %i.ew = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !54
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  store i32 %i.ex, ptr %i.ey, align 8, !tbaa !54
  %i.ez = load ptr, ptr %11, align 8, !tbaa !51   ; 2 uses
end_hunk_4
begin_hunk_5_@_ZL20C_A_T_C_H_T_E_S_T_99v:._crit_edge.i.i
  store i8 97, ptr %i.q, align 8, !tbaa !48
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 1, ptr %i.r, align 8, !tbaa !50
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 0, ptr %i.s, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit unwind label %bb.az

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr @.str.123, ptr %4, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !56
  %i.t = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(36) %9, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %4)
          to label %bb.b unwind label %bb.ba      ; 2 uses

bb.b:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.u = load ptr, ptr %9, align 8, !tbaa !51     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN5vcpkg7VersionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.x = load i64, ptr %i.v, align 8, !tbaa !48
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit

_ZN5vcpkg7VersionD2Ev.exit:                       ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.z = load ptr, ptr %8, align 8, !tbaa !51     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.q
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %_ZN5vcpkg7VersionD2Ev.exit
  %i.ab = load i64, ptr %i.q, align 8, !tbaa !48
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %_ZN5vcpkg7VersionD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.ad = load ptr, ptr %i.t, align 8, !tbaa !150
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !152 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 9 uses
  store ptr %i.af, ptr %10, align 8, !tbaa !47
  store i8 120, ptr %i.af, align 8, !tbaa !48
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i64 1, ptr %i.ag, align 8, !tbaa !50
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 17
  store i8 0, ptr %i.ah, align 1, !tbaa !48
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ai) #22
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 272 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !220 ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 280
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !219
  %.not.i.i = icmp eq ptr %i.ak, %i.am
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 3 uses
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !47
  %i.ao = load ptr, ptr %10, align 8, !tbaa !51   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.af
  br i1 %i.ap, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.aq = load i64, ptr %i.ag, align 8, !tbaa !50 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.as, i1 false)
  br label %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !51
  %i.at = load i64, ptr %i.af, align 8, !tbaa !48
  store i64 %i.at, ptr %i.an, align 8, !tbaa !48
  %.pre = load i64, ptr %i.ag, align 8, !tbaa !50
  br label %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i

_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.d
  %i.au = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.aq, %bb.d ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %i.au, ptr %i.av, align 8, !tbaa !50
  store ptr %i.af, ptr %10, align 8, !tbaa !51
  store i64 0, ptr %i.ag, align 8, !tbaa !50
  store i8 0, ptr %i.af, align 8, !tbaa !48
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.ai) #22
  %i.ax = load ptr, ptr %i.aj, align 8, !tbaa !220
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  store ptr %i.ay, ptr %i.aj, align 8, !tbaa !220
  br label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %i.az = getelementptr inbounds nuw i8, ptr %i.ae, i64 264
  invoke void @_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr %i.ak, ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit unwind label %bb.bb

_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i, %bb.e
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ai) #22
  %i.ba = load ptr, ptr %10, align 8, !tbaa !51   ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.af
  br i1 %i.bb, label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i119: ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit
  %i.bc = load i64, ptr %i.af, align 8, !tbaa !48
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #23
  br label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit

_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit:   ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.be = load ptr, ptr %i.t, align 8, !tbaa !150 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !213 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !214
  %.not.i.i121 = icmp eq ptr %i.bh, %i.bj
  br i1 %.not.i.i121, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit
  %i.bk = load i64, ptr %6, align 8, !tbaa !210
  store i64 %i.bk, ptr %i.bh, align 8, !tbaa !210
  store ptr null, ptr %6, align 8, !tbaa !210
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bl, ptr %i.bg, align 8, !tbaa !213
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

bb.g:                                             ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit
  %i.bm = load ptr, ptr %i.bf, align 8, !tbaa !215 ; 10 uses
  %i.bn = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bo = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bp = sub i64 %i.bn, %i.bo                    ; 3 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775800
  br i1 %i.bq, label %bb.h, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc368 unwind label %bb.bc

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
          to label %.noexc369 unwind label %bb.bc ; 10 uses

.noexc369:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp
  %i.bz = load i64, ptr %6, align 8, !tbaa !210
  store i64 %i.bz, ptr %i.by, align 8, !tbaa !210
  store ptr null, ptr %6, align 8, !tbaa !210
  %.not10.i.i.i.i = icmp eq ptr %i.bm, %i.bh
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc369
  %i.ca = add i64 %i.bn, -8
  %i.cb = sub i64 %i.ca, %i.bo                    ; 3 uses
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cb, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader594, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ce = and i64 %i.cb, -8
  %i.cf = add i64 %i.ce, 8                        ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bx, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.bm, i64 %i.cf
  %bound0 = icmp ult ptr %i.bx, %i.ch
  %bound1 = icmp ult ptr %i.bm, %i.cg
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader594, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cd, 4611686018427387900     ; 3 uses
  %i.ci = shl i64 %n.vec, 3                       ; 2 uses
  %i.cj = getelementptr i8, ptr %i.bx, i64 %i.ci  ; 2 uses
  %i.ck = getelementptr i8, ptr %i.bm, i64 %i.ci
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bx, i64 %i.cl ; 2 uses
  %next.gep591 = getelementptr i8, ptr %i.bm, i64 %i.cl ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  %i.cm = getelementptr i8, ptr %next.gep591, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep591, align 8, !tbaa !210, !alias.scope !1046
  %wide.load592 = load <2 x i64>, ptr %i.cm, align 8, !tbaa !210, !alias.scope !1046
  %i.cn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !210, !alias.scope !1047, !noalias !1048
  store <2 x i64> %wide.load592, ptr %i.cn, align 8, !tbaa !210, !alias.scope !1047, !noalias !1048
  %59 = getelementptr i8, ptr %next.gep591, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep591, align 8, !tbaa !210, !alias.scope !1046
  store <2 x ptr> splat (ptr null), ptr %59, align 8, !tbaa !210, !alias.scope !1046
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !1038

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cd, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader594

.lr.ph.i.i.i.i.preheader594:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.bx, %vector.memcheck ], [ %i.bx, %.lr.ph.i.i.i.i.preheader ], [ %i.cj, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bm, %vector.memcheck ], [ %i.bm, %.lr.ph.i.i.i.i.preheader ], [ %i.ck, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader594, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cr, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader594 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader594 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1044)
  call void @llvm.experimental.noalias.scope.decl(metadata !1045)
  %i.cp = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !210, !alias.scope !1045
  store i64 %i.cp, ptr %.012.i.i.i.i, align 8, !tbaa !210, !alias.scope !1044
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !210, !alias.scope !1045
  %i.cq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cq, %i.bh
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1039

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc369
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bx, %.noexc369 ], [ %i.cj, %middle.block ], [ %i.cr, %.lr.ph.i.i.i.i ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.bm, null
  br i1 %.not.i23.i, label %.noexc122, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.ct = load ptr, ptr %i.bi, align 8, !tbaa !214
  %i.cu = ptrtoint ptr %i.ct to i64
  %i.cv = sub i64 %i.cu, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.cv) #23
  br label %.noexc122

.noexc122:                                        ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.bx, ptr %i.bf, align 8, !tbaa !215
  store ptr %i.cs, ptr %i.bg, align 8, !tbaa !213
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bv
  store ptr %i.cw, ptr %i.bi, align 8, !tbaa !214
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %.noexc122, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.cx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.cx, ptr %11, align 8, !tbaa !47
  store i8 98, ptr %i.cx, align 8, !tbaa !48
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 1, ptr %i.cy, align 8, !tbaa !50
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 17
  store i8 0, ptr %i.cz, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %12, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit128 unwind label %bb.bd

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit128:       ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr @.str.123, ptr %3, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i129 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i129, align 8, !tbaa !56
  %i.da = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(36) %12, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %3)
          to label %bb.j unwind label %bb.be

bb.j:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit128
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.db = load ptr, ptr %12, align 8, !tbaa !51   ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZN5vcpkg7VersionD2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132: ; preds = %bb.j
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !48
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit134

_ZN5vcpkg7VersionD2Ev.exit134:                    ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.dg = load ptr, ptr %11, align 8, !tbaa !51   ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.cx
  br i1 %i.dh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %_ZN5vcpkg7VersionD2Ev.exit134
  %i.di = load i64, ptr %i.cx, align 8, !tbaa !48
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %_ZN5vcpkg7VersionD2Ev.exit134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.dk = load ptr, ptr %i.da, align 8, !tbaa !150
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.dm = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 11 uses
  store ptr %i.dm, ptr %14, align 8, !tbaa !47
  store i8 97, ptr %i.dm, align 8, !tbaa !48
  %i.dn = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store i64 1, ptr %i.dn, align 8, !tbaa !50
  %i.do = getelementptr inbounds nuw i8, ptr %14, i64 17
  store i8 0, ptr %i.do, align 1, !tbaa !48
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 216
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #22
  %i.dq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store ptr %i.dq, ptr %13, align 8, !tbaa !47
  %i.dr = load ptr, ptr %14, align 8, !tbaa !51   ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.dm
  br i1 %i.ds, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  %i.dt = load i64, ptr %i.dn, align 8, !tbaa !50 ; 3 uses
  %i.du = icmp ult i64 %i.dt, 16
  call void @llvm.assume(i1 %i.du)
  %i.dv = add nuw nsw i64 %i.dt, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dq, ptr noundef nonnull align 8 dereferenceable(1) %i.dm, i64 %i.dv, i1 false)
  br label %_ZN14CoreDependencyC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS8_EENS7_18PlatformExpression4ExprE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137
  store ptr %i.dr, ptr %13, align 8, !tbaa !51
  %i.dw = load i64, ptr %i.dm, align 8, !tbaa !48
  store i64 %i.dw, ptr %i.dq, align 8, !tbaa !48
  %.pre430 = load i64, ptr %i.dn, align 8, !tbaa !50
  br label %_ZN14CoreDependencyC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS8_EENS7_18PlatformExpression4ExprE.exit

_ZN14CoreDependencyC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS8_EENS7_18PlatformExpression4ExprE.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142
  %i.dx = phi i64 [ %i.dt, %bb.k ], [ %.pre430, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142 ]
  %i.dy = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !50
  store ptr %i.dm, ptr %14, align 8, !tbaa !51
  store i64 0, ptr %i.dn, align 8, !tbaa !50
  store i8 0, ptr %i.dm, align 8, !tbaa !48
  %i.dz = getelementptr inbounds nuw i8, ptr %13, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dz, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  %i.ea = getelementptr inbounds nuw i8, ptr %13, i64 56
  call void @_ZN5vcpkg18PlatformExpression4ExprC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef nonnull align 8 dereferenceable(8) %16) #22
  %i.eb = getelementptr inbounds nuw i8, ptr %13, i64 64
  store i32 0, ptr %i.eb, align 8, !tbaa !72
  %i.ec = getelementptr inbounds nuw i8, ptr %13, i64 72
  call void @_ZN5vcpkg7VersionC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.ec) #22
  %i.ed = getelementptr inbounds nuw i8, ptr %13, i64 112
  store i8 0, ptr %i.ed, align 8, !tbaa !94
  %i.ee = getelementptr inbounds nuw i8, ptr %13, i64 113
  %i.ef = getelementptr inbounds nuw i8, ptr %13, i64 120
  store i8 0, ptr %i.ee, align 1, !tbaa !95
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ef, i8 0, i64 24, i1 false)
  %i.eg = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef nonnull align 8 dereferenceable(144) %13)
          to label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EED2Ev.exit unwind label %bb.bf ; 0 uses

_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EED2Ev.exit: ; preds = %_ZN14CoreDependencyC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS8_EENS7_18PlatformExpression4ExprE.exit
  call void @_ZN5vcpkg10DependencyD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %13) #22
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #22
  %.pre431 = load ptr, ptr %14, align 8, !tbaa !51 ; 2 uses
  %i.eh = icmp eq ptr %.pre431, %i.dm
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EED2Ev.exit
  %i.ei = load i64, ptr %i.dm, align 8, !tbaa !48
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %.pre431, i64 noundef %i.ej) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.ek = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.ek, ptr %17, align 8, !tbaa !47
  store i8 99, ptr %i.ek, align 8, !tbaa !48
  %i.el = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 1, ptr %i.el, align 8, !tbaa !50
  %i.em = getelementptr inbounds nuw i8, ptr %17, i64 17
  store i8 0, ptr %i.em, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %18, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit152 unwind label %bb.bg

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit152:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr @.str.123, ptr %2, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i153 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i153, align 8, !tbaa !56
  %i.en = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(36) %18, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %2)
          to label %bb.l unwind label %bb.bh

bb.l:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit152
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.eo = load ptr, ptr %18, align 8, !tbaa !51   ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZN5vcpkg7VersionD2Ev.exit158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i156: ; preds = %bb.l
  %i.er = load i64, ptr %i.ep, align 8, !tbaa !48
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.es) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit158

end_hunk_5
begin_hunk_6_@_ZL21C_A_T_C_H_T_E_S_T_101v:.noexc.i
  %i.ib = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.ib, ptr %16, align 8, !tbaa !47
  %i.ic = load ptr, ptr %17, align 8, !tbaa !51   ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.hj
  br i1 %i.id, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357

bb.t:                                             ; preds = %_ZN14CoreDependencyC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS8_EENS7_18PlatformExpression4ExprE.exit
  %i.ie = load i64, ptr %i.hr, align 8, !tbaa !50 ; 3 uses
  %i.if = icmp ult i64 %i.ie, 16
  call void @llvm.assume(i1 %i.if)
  %i.ig = add nuw nsw i64 %i.ie, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ib, ptr noundef nonnull align 8 dereferenceable(1) %i.hj, i64 %i.ig, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357: ; preds = %_ZN14CoreDependencyC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS8_EENS7_18PlatformExpression4ExprE.exit
  store ptr %i.ic, ptr %16, align 8, !tbaa !51
  %i.ih = load i64, ptr %i.hj, align 8, !tbaa !48
  store i64 %i.ih, ptr %i.ib, align 8, !tbaa !48
  %.pre747 = load i64, ptr %i.hr, align 8, !tbaa !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357, %bb.t
  %i.ii = phi i64 [ %.pre747, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i357 ], [ %i.ie, %bb.t ]
  %i.ij = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.ii, ptr %i.ij, align 8, !tbaa !50
  store ptr %i.hj, ptr %17, align 8, !tbaa !51
  store i64 0, ptr %i.hr, align 8, !tbaa !50
  store i8 0, ptr %i.hj, align 8, !tbaa !48
  %i.ik = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.il = load <2 x ptr>, ptr %i.hs, align 8, !tbaa !227
  store <2 x ptr> %i.il, ptr %i.ik, align 8, !tbaa !227
  %i.im = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.in = load ptr, ptr %i.hu, align 8, !tbaa !219
  store ptr %i.in, ptr %i.im, align 8, !tbaa !219
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hs, i8 0, i64 24, i1 false)
  %i.io = getelementptr inbounds nuw i8, ptr %16, i64 56
  call void @_ZN5vcpkg18PlatformExpression4ExprC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.io, ptr noundef nonnull align 8 dereferenceable(8) %i.hv) #22
  %i.ip = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.iq = load i32, ptr %i.hw, align 8, !tbaa !72
  store i32 %i.iq, ptr %i.ip, align 8, !tbaa !72
  %i.ir = getelementptr inbounds nuw i8, ptr %16, i64 72 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %16, i64 88 ; 3 uses
  store ptr %i.is, ptr %i.ir, align 8, !tbaa !47
  %i.it = load ptr, ptr %i.hx, align 8, !tbaa !51 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %17, i64 88 ; 5 uses
  %i.iv = icmp eq ptr %i.it, %i.iu
  br i1 %i.iv, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.iw = getelementptr inbounds nuw i8, ptr %17, i64 80
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !50 ; 3 uses
  %i.iy = icmp ult i64 %i.ix, 16
  call void @llvm.assume(i1 %i.iy)
  %i.iz = add nuw nsw i64 %i.ix, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.is, ptr noundef nonnull align 8 dereferenceable(1) %i.iu, i64 %i.iz, i1 false)
  br label %_ZN5vcpkg10DependencyC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.it, ptr %i.ir, align 8, !tbaa !51
  %i.ja = load i64, ptr %i.iu, align 8, !tbaa !48
  store i64 %i.ja, ptr %i.is, align 8, !tbaa !48
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %17, i64 80
  %.pre748 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !50
  br label %_ZN5vcpkg10DependencyC2EOS0_.exit

_ZN5vcpkg10DependencyC2EOS0_.exit:                ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.jb = phi i64 [ %i.ix, %bb.u ], [ %.pre748, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  %i.jc = getelementptr inbounds nuw i8, ptr %17, i64 80
  %i.jd = getelementptr inbounds nuw i8, ptr %16, i64 80
  store i64 %i.jb, ptr %i.jd, align 8, !tbaa !50
  store ptr %i.iu, ptr %i.hx, align 8, !tbaa !51
  store i64 0, ptr %i.jc, align 8, !tbaa !50
  store i8 0, ptr %i.iu, align 8, !tbaa !48
  %i.je = getelementptr inbounds nuw i8, ptr %16, i64 104
  %i.jf = getelementptr inbounds nuw i8, ptr %17, i64 104
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !54
  store i32 %i.jg, ptr %i.je, align 8, !tbaa !54
  %i.jh = getelementptr inbounds nuw i8, ptr %16, i64 112
  %i.ji = load i16, ptr %i.hy, align 8
  store i16 %i.ji, ptr %i.jh, align 8
  %i.jj = getelementptr inbounds nuw i8, ptr %16, i64 120
  %i.jk = load <2 x ptr>, ptr %i.ia, align 8, !tbaa !228
  store <2 x ptr> %i.jk, ptr %i.jj, align 8, !tbaa !228
  %i.jl = getelementptr inbounds nuw i8, ptr %16, i64 136
  %i.jm = getelementptr inbounds nuw i8, ptr %17, i64 136
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !226
  store ptr %i.jn, ptr %i.jl, align 8, !tbaa !226
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ia, i8 0, i64 24, i1 false)
  %i.jo = load ptr, ptr %i.ev, align 8, !tbaa !152
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 216
  %i.jq = getelementptr inbounds nuw i8, ptr %16, i64 144
  invoke void @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE13_M_assign_auxIPKS1_EEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.jp, ptr noundef nonnull %16, ptr noundef nonnull %i.jq)
          to label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EED2Ev.exit unwind label %bb.bw

_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EED2Ev.exit: ; preds = %_ZN5vcpkg10DependencyC2EOS0_.exit
  call void @_ZN5vcpkg10DependencyD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %16) #22
  call void @_ZN5vcpkg10DependencyD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %17) #22
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #22
  %i.jr = getelementptr inbounds nuw i8, ptr %20, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.jr) #22
  %i.js = load ptr, ptr %20, align 8, !tbaa !51   ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ju = icmp eq ptr %i.js, %i.jt
  br i1 %i.ju, label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit363, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i361

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i361: ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EED2Ev.exit
  %i.jv = load i64, ptr %i.jt, align 8, !tbaa !48
  %i.jw = add i64 %i.jv, 1
  call void @_ZdlPvm(ptr noundef %i.js, i64 noundef %i.jw) #23
  br label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit363

_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit363: ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i361
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %i.jx = load ptr, ptr %18, align 8, !tbaa !51   ; 2 uses
  %i.jy = icmp eq ptr %i.jx, %i.gm
  br i1 %i.jy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364: ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit363
  %i.jz = load i64, ptr %i.gm, align 8, !tbaa !48
  %i.ka = add i64 %i.jz, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.ka) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366: ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit363, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 6 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 7 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !213 ; 6 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ev, i64 24 ; 7 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !214 ; 2 uses
  %.not.i.i = icmp eq ptr %i.kd, %i.kf
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366
  %i.kg = load i64, ptr %4, align 8, !tbaa !210
  store i64 %i.kg, ptr %i.kd, align 8, !tbaa !210
  store ptr null, ptr %4, align 8, !tbaa !210
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kd, i64 8 ; 2 uses
  store ptr %i.kh, ptr %i.kc, align 8, !tbaa !213
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366
  %i.ki = load ptr, ptr %i.kb, align 8, !tbaa !215 ; 10 uses
  %i.kj = ptrtoint ptr %i.kd to i64               ; 2 uses
  %i.kk = ptrtoint ptr %i.ki to i64               ; 3 uses
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
          to label %.noexc572 unwind label %bb.bx ; 10 uses

.noexc572:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.kl
  %i.kv = load i64, ptr %4, align 8, !tbaa !210
  store i64 %i.kv, ptr %i.ku, align 8, !tbaa !210
  store ptr null, ptr %4, align 8, !tbaa !210
  %.not10.i.i.i.i = icmp eq ptr %i.ki, %i.kd
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc572
  %i.kw = add i64 %i.kj, -8
  %i.kx = sub i64 %i.kw, %i.kk                    ; 3 uses
  %i.ky = lshr i64 %i.kx, 3
  %i.kz = add nuw nsw i64 %i.ky, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.kx, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader966, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.la = and i64 %i.kx, -8
  %i.lb = add i64 %i.la, 8                        ; 2 uses
  %i.lc = getelementptr i8, ptr %i.kt, i64 %i.lb
  %i.ld = getelementptr i8, ptr %i.ki, i64 %i.lb
  %bound0 = icmp ult ptr %i.kt, %i.ld
  %bound1 = icmp ult ptr %i.ki, %i.lc
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader966, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.kz, 4611686018427387900     ; 3 uses
  %i.le = shl i64 %n.vec, 3                       ; 2 uses
  %i.lf = getelementptr i8, ptr %i.kt, i64 %i.le  ; 2 uses
  %i.lg = getelementptr i8, ptr %i.ki, i64 %i.le
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lh = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.kt, i64 %i.lh ; 2 uses
  %next.gep912 = getelementptr i8, ptr %i.ki, i64 %i.lh ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  call void @llvm.experimental.noalias.scope.decl(metadata !1080)
  %i.li = getelementptr i8, ptr %next.gep912, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep912, align 8, !tbaa !210, !alias.scope !1081
  %wide.load913 = load <2 x i64>, ptr %i.li, align 8, !tbaa !210, !alias.scope !1081
  %i.lj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !210, !alias.scope !1082, !noalias !1083
  store <2 x i64> %wide.load913, ptr %i.lj, align 8, !tbaa !210, !alias.scope !1082, !noalias !1083
  %63 = getelementptr i8, ptr %next.gep912, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep912, align 8, !tbaa !210, !alias.scope !1081
  store <2 x ptr> splat (ptr null), ptr %63, align 8, !tbaa !210, !alias.scope !1081
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lk = icmp eq i64 %index.next, %n.vec
  br i1 %i.lk, label %middle.block, label %vector.body, !llvm.loop !1057

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kz, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader966

.lr.ph.i.i.i.i.preheader966:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.kt, %vector.memcheck ], [ %i.kt, %.lr.ph.i.i.i.i.preheader ], [ %i.lf, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ki, %vector.memcheck ], [ %i.ki, %.lr.ph.i.i.i.i.preheader ], [ %i.lg, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader966, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ln, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader966 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.lm, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader966 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  call void @llvm.experimental.noalias.scope.decl(metadata !1080)
  %i.ll = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !210, !alias.scope !1080
  store i64 %i.ll, ptr %.012.i.i.i.i, align 8, !tbaa !210, !alias.scope !1079
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !210, !alias.scope !1080
  %i.lm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.lm, %i.kd
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1058

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc572
  %.0.lcssa.i.i.i.i = phi ptr [ %i.kt, %.noexc572 ], [ %i.lf, %middle.block ], [ %i.ln, %.lr.ph.i.i.i.i ]
  %i.lo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.ki, null
  br i1 %.not.i23.i, label %.noexc367, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.lp = load ptr, ptr %i.ke, align 8, !tbaa !214
  %i.lq = ptrtoint ptr %i.lp to i64
  %i.lr = sub i64 %i.lq, %i.kk
  call void @_ZdlPvm(ptr noundef nonnull %i.ki, i64 noundef %i.lr) #23
  br label %.noexc367

.noexc367:                                        ; preds = %bb.x, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.kt, ptr %i.kb, align 8, !tbaa !215
  store ptr %i.lo, ptr %i.kc, align 8, !tbaa !213
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %i.kr ; 2 uses
  store ptr %i.ls, ptr %i.ke, align 8, !tbaa !214
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %.noexc367, %bb.v
  %i.lt = phi ptr [ %i.ls, %.noexc367 ], [ %i.kf, %bb.v ] ; 5 uses
  %i.lu = phi ptr [ %i.lo, %.noexc367 ], [ %i.kh, %bb.v ] ; 3 uses
  %.not.i.i368 = icmp eq ptr %i.lu, %i.lt
  br i1 %.not.i.i368, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  store i64 %i.ca, ptr %i.lu, align 8, !tbaa !210
  store ptr null, ptr %6, align 8, !tbaa !210
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 8 ; 2 uses
  store ptr %i.lv, ptr %i.kc, align 8, !tbaa !213
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit370

bb.z:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %i.lw = load ptr, ptr %i.kb, align 8, !tbaa !215 ; 10 uses
  %i.lx = ptrtoint ptr %i.lt to i64               ; 2 uses
  %i.ly = ptrtoint ptr %i.lw to i64               ; 3 uses
  %i.lz = sub i64 %i.lx, %i.ly                    ; 3 uses
  %i.ma = icmp eq i64 %i.lz, 9223372036854775800
  br i1 %i.ma, label %.invoke, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i573

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i573: ; preds = %bb.z
  %i.mb = ashr exact i64 %i.lz, 3                 ; 3 uses
  %.sroa.speculated.i.i574 = call i64 @llvm.umax.i64(i64 %i.mb, i64 1)
  %i.mc = add nsw i64 %.sroa.speculated.i.i574, %i.mb ; 2 uses
  %i.md = icmp ult i64 %i.mc, %i.mb
  %i.me = call i64 @llvm.umin.i64(i64 %i.mc, i64 1152921504606846975)
  %i.mf = select i1 %i.md, i64 1152921504606846975, i64 %i.me ; 3 uses
  %.not.i.i575 = icmp ne i64 %i.mf, 0
  call void @llvm.assume(i1 %.not.i.i575)
  %i.mg = shl nuw nsw i64 %i.mf, 3
  %i.mh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mg) #24
          to label %.noexc592 unwind label %bb.bx ; 10 uses

.noexc592:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i573
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.lz
  store i64 %i.ca, ptr %i.mi, align 8, !tbaa !210
  store ptr null, ptr %6, align 8, !tbaa !210
  %.not10.i.i.i.i576 = icmp eq ptr %i.lw, %i.lt
  br i1 %.not10.i.i.i.i576, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i588, label %.lr.ph.i.i.i.i577.preheader

.lr.ph.i.i.i.i577.preheader:                      ; preds = %.noexc592
  %i.mj = add i64 %i.lx, -8
  %i.mk = sub i64 %i.mj, %i.ly                    ; 3 uses
  %i.ml = lshr i64 %i.mk, 3
  %i.mm = add nuw nsw i64 %i.ml, 1                ; 2 uses
  %min.iters.check921 = icmp ult i64 %i.mk, 136
  br i1 %min.iters.check921, label %.lr.ph.i.i.i.i577.preheader964, label %vector.memcheck922

vector.memcheck922:                               ; preds = %.lr.ph.i.i.i.i577.preheader
  %i.mn = and i64 %i.mk, -8
  %i.mo = add i64 %i.mn, 8                        ; 2 uses
  %i.mp = getelementptr i8, ptr %i.mh, i64 %i.mo
  %i.mq = getelementptr i8, ptr %i.lw, i64 %i.mo
  %bound0923 = icmp ult ptr %i.mh, %i.mq
  %bound1924 = icmp ult ptr %i.lw, %i.mp
  %found.conflict925 = and i1 %bound0923, %bound1924
  br i1 %found.conflict925, label %.lr.ph.i.i.i.i577.preheader964, label %vector.ph926

vector.ph926:                                     ; preds = %vector.memcheck922
  %n.vec927 = and i64 %i.mm, 4611686018427387900  ; 3 uses
  %i.mr = shl i64 %n.vec927, 3                    ; 2 uses
  %i.ms = getelementptr i8, ptr %i.mh, i64 %i.mr  ; 2 uses
  %i.mt = getelementptr i8, ptr %i.lw, i64 %i.mr
  br label %vector.body928

vector.body928:                                   ; preds = %vector.body928, %vector.ph926
  %index929 = phi i64 [ 0, %vector.ph926 ], [ %index.next934, %vector.body928 ] ; 2 uses
  %i.mu = shl i64 %index929, 3                    ; 2 uses
  %next.gep930 = getelementptr i8, ptr %i.mh, i64 %i.mu ; 2 uses
  %next.gep931 = getelementptr i8, ptr %i.lw, i64 %i.mu ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  %i.mv = getelementptr i8, ptr %next.gep931, i64 16
  %wide.load932 = load <2 x i64>, ptr %next.gep931, align 8, !tbaa !210, !alias.scope !1086
  %wide.load933 = load <2 x i64>, ptr %i.mv, align 8, !tbaa !210, !alias.scope !1086
  %i.mw = getelementptr i8, ptr %next.gep930, i64 16
  store <2 x i64> %wide.load932, ptr %next.gep930, align 8, !tbaa !210, !alias.scope !1087, !noalias !1088
  store <2 x i64> %wide.load933, ptr %i.mw, align 8, !tbaa !210, !alias.scope !1087, !noalias !1088
  %64 = getelementptr i8, ptr %next.gep931, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep931, align 8, !tbaa !210, !alias.scope !1086
  store <2 x ptr> splat (ptr null), ptr %64, align 8, !tbaa !210, !alias.scope !1086
  %index.next934 = add nuw i64 %index929, 4       ; 2 uses
  %i.mx = icmp eq i64 %index.next934, %n.vec927
  br i1 %i.mx, label %middle.block935, label %vector.body928, !llvm.loop !1065

middle.block935:                                  ; preds = %vector.body928
  %cmp.n936 = icmp eq i64 %i.mm, %n.vec927
  br i1 %cmp.n936, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i588, label %.lr.ph.i.i.i.i577.preheader964

.lr.ph.i.i.i.i577.preheader964:                   ; preds = %vector.memcheck922, %.lr.ph.i.i.i.i577.preheader, %middle.block935
  %.012.i.i.i.i578.ph = phi ptr [ %i.mh, %vector.memcheck922 ], [ %i.mh, %.lr.ph.i.i.i.i577.preheader ], [ %i.ms, %middle.block935 ]
  %.0911.i.i.i.i579.ph = phi ptr [ %i.lw, %vector.memcheck922 ], [ %i.lw, %.lr.ph.i.i.i.i577.preheader ], [ %i.mt, %middle.block935 ]
  br label %.lr.ph.i.i.i.i577

.lr.ph.i.i.i.i577:                                ; preds = %.lr.ph.i.i.i.i577.preheader964, %.lr.ph.i.i.i.i577
  %.012.i.i.i.i578 = phi ptr [ %i.na, %.lr.ph.i.i.i.i577 ], [ %.012.i.i.i.i578.ph, %.lr.ph.i.i.i.i577.preheader964 ] ; 2 uses
  %.0911.i.i.i.i579 = phi ptr [ %i.mz, %.lr.ph.i.i.i.i577 ], [ %.0911.i.i.i.i579.ph, %.lr.ph.i.i.i.i577.preheader964 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  %i.my = load i64, ptr %.0911.i.i.i.i579, align 8, !tbaa !210, !alias.scope !1085
  store i64 %i.my, ptr %.012.i.i.i.i578, align 8, !tbaa !210, !alias.scope !1084
  store ptr null, ptr %.0911.i.i.i.i579, align 8, !tbaa !210, !alias.scope !1085
  %i.mz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i579, i64 8 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i578, i64 8 ; 2 uses
  %.not.i.i.i.i580 = icmp eq ptr %i.mz, %i.lt
  br i1 %.not.i.i.i.i580, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i588, label %.lr.ph.i.i.i.i577, !llvm.loop !1066

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i588: ; preds = %.lr.ph.i.i.i.i577, %middle.block935, %.noexc592
  %.0.lcssa.i.i.i.i582 = phi ptr [ %i.mh, %.noexc592 ], [ %i.ms, %middle.block935 ], [ %i.na, %.lr.ph.i.i.i.i577 ]
  %i.nb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i582, i64 8 ; 2 uses
  %.not.i23.i590 = icmp eq ptr %i.lw, null
  br i1 %.not.i23.i590, label %.noexc369, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i588
  %i.nc = load ptr, ptr %i.ke, align 8, !tbaa !214
  %i.nd = ptrtoint ptr %i.nc to i64
  %i.ne = sub i64 %i.nd, %i.ly
  call void @_ZdlPvm(ptr noundef nonnull %i.lw, i64 noundef %i.ne) #23
  br label %.noexc369

.noexc369:                                        ; preds = %bb.aa, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i588
  store ptr %i.mh, ptr %i.kb, align 8, !tbaa !215
  store ptr %i.nb, ptr %i.kc, align 8, !tbaa !213
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %i.mf ; 2 uses
  store ptr %i.nf, ptr %i.ke, align 8, !tbaa !214
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit370

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit370: ; preds = %.noexc369, %bb.y
  %i.ng = phi ptr [ %i.nf, %.noexc369 ], [ %i.lt, %bb.y ] ; 4 uses
  %i.nh = phi ptr [ %i.nb, %.noexc369 ], [ %i.lv, %bb.y ] ; 3 uses
  %.not.i.i371 = icmp eq ptr %i.nh, %i.ng
  br i1 %.not.i.i371, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit370
  store i64 %i.eg, ptr %i.nh, align 8, !tbaa !210
  store ptr null, ptr %10, align 8, !tbaa !210
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  store ptr %i.ni, ptr %i.kc, align 8, !tbaa !213
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit373

bb.ac:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit370
  %i.nj = load ptr, ptr %i.kb, align 8, !tbaa !215 ; 10 uses
  %i.nk = ptrtoint ptr %i.ng to i64               ; 2 uses
  %i.nl = ptrtoint ptr %i.nj to i64               ; 3 uses
  %i.nm = sub i64 %i.nk, %i.nl                    ; 3 uses
  %i.nn = icmp eq i64 %i.nm, 9223372036854775800
  br i1 %i.nn, label %.invoke, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i594

.invoke:                                          ; preds = %bb.ac, %bb.z, %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.cont unwind label %bb.bx

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i594: ; preds = %bb.ac
  %i.no = ashr exact i64 %i.nm, 3                 ; 3 uses
  %.sroa.speculated.i.i595 = call i64 @llvm.umax.i64(i64 %i.no, i64 1)
  %i.np = add nsw i64 %.sroa.speculated.i.i595, %i.no ; 2 uses
  %i.nq = icmp ult i64 %i.np, %i.no
  %i.nr = call i64 @llvm.umin.i64(i64 %i.np, i64 1152921504606846975)
  %i.ns = select i1 %i.nq, i64 1152921504606846975, i64 %i.nr ; 3 uses
  %.not.i.i596 = icmp ne i64 %i.ns, 0
  call void @llvm.assume(i1 %.not.i.i596)
  %i.nt = shl nuw nsw i64 %i.ns, 3
  %i.nu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nt) #24
          to label %.noexc613 unwind label %bb.bx ; 10 uses

.noexc613:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i594
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 %i.nm
  store i64 %i.eg, ptr %i.nv, align 8, !tbaa !210
  store ptr null, ptr %10, align 8, !tbaa !210
  %.not10.i.i.i.i597 = icmp eq ptr %i.nj, %i.ng
  br i1 %.not10.i.i.i.i597, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i609, label %.lr.ph.i.i.i.i598.preheader

.lr.ph.i.i.i.i598.preheader:                      ; preds = %.noexc613
  %i.nw = add i64 %i.nk, -8
  %i.nx = sub i64 %i.nw, %i.nl                    ; 3 uses
  %i.ny = lshr i64 %i.nx, 3
  %i.nz = add nuw nsw i64 %i.ny, 1                ; 2 uses
  %min.iters.check945 = icmp ult i64 %i.nx, 136
  br i1 %min.iters.check945, label %.lr.ph.i.i.i.i598.preheader963, label %vector.memcheck946

vector.memcheck946:                               ; preds = %.lr.ph.i.i.i.i598.preheader
  %i.oa = and i64 %i.nx, -8
  %i.ob = add i64 %i.oa, 8                        ; 2 uses
  %i.oc = getelementptr i8, ptr %i.nu, i64 %i.ob
  %i.od = getelementptr i8, ptr %i.nj, i64 %i.ob
  %bound0947 = icmp ult ptr %i.nu, %i.od
  %bound1948 = icmp ult ptr %i.nj, %i.oc
  %found.conflict949 = and i1 %bound0947, %bound1948
  br i1 %found.conflict949, label %.lr.ph.i.i.i.i598.preheader963, label %vector.ph950

vector.ph950:                                     ; preds = %vector.memcheck946
  %n.vec951 = and i64 %i.nz, 4611686018427387900  ; 3 uses
  %i.oe = shl i64 %n.vec951, 3                    ; 2 uses
  %i.of = getelementptr i8, ptr %i.nu, i64 %i.oe  ; 2 uses
  %i.og = getelementptr i8, ptr %i.nj, i64 %i.oe
  br label %vector.body952

vector.body952:                                   ; preds = %vector.body952, %vector.ph950
  %index953 = phi i64 [ 0, %vector.ph950 ], [ %index.next958, %vector.body952 ] ; 2 uses
  %i.oh = shl i64 %index953, 3                    ; 2 uses
  %next.gep954 = getelementptr i8, ptr %i.nu, i64 %i.oh ; 2 uses
  %next.gep955 = getelementptr i8, ptr %i.nj, i64 %i.oh ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  %i.oi = getelementptr i8, ptr %next.gep955, i64 16
  %wide.load956 = load <2 x i64>, ptr %next.gep955, align 8, !tbaa !210, !alias.scope !1091
  %wide.load957 = load <2 x i64>, ptr %i.oi, align 8, !tbaa !210, !alias.scope !1091
  %i.oj = getelementptr i8, ptr %next.gep954, i64 16
  store <2 x i64> %wide.load956, ptr %next.gep954, align 8, !tbaa !210, !alias.scope !1092, !noalias !1093
  store <2 x i64> %wide.load957, ptr %i.oj, align 8, !tbaa !210, !alias.scope !1092, !noalias !1093
  %65 = getelementptr i8, ptr %next.gep955, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep955, align 8, !tbaa !210, !alias.scope !1091
  store <2 x ptr> splat (ptr null), ptr %65, align 8, !tbaa !210, !alias.scope !1091
  %index.next958 = add nuw i64 %index953, 4       ; 2 uses
  %i.ok = icmp eq i64 %index.next958, %n.vec951
  br i1 %i.ok, label %middle.block959, label %vector.body952, !llvm.loop !1073

middle.block959:                                  ; preds = %vector.body952
  %cmp.n960 = icmp eq i64 %i.nz, %n.vec951
  br i1 %cmp.n960, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i609, label %.lr.ph.i.i.i.i598.preheader963

.lr.ph.i.i.i.i598.preheader963:                   ; preds = %vector.memcheck946, %.lr.ph.i.i.i.i598.preheader, %middle.block959
  %.012.i.i.i.i599.ph = phi ptr [ %i.nu, %vector.memcheck946 ], [ %i.nu, %.lr.ph.i.i.i.i598.preheader ], [ %i.of, %middle.block959 ]
  %.0911.i.i.i.i600.ph = phi ptr [ %i.nj, %vector.memcheck946 ], [ %i.nj, %.lr.ph.i.i.i.i598.preheader ], [ %i.og, %middle.block959 ]
  br label %.lr.ph.i.i.i.i598

.lr.ph.i.i.i.i598:                                ; preds = %.lr.ph.i.i.i.i598.preheader963, %.lr.ph.i.i.i.i598
  %.012.i.i.i.i599 = phi ptr [ %i.on, %.lr.ph.i.i.i.i598 ], [ %.012.i.i.i.i599.ph, %.lr.ph.i.i.i.i598.preheader963 ] ; 2 uses
  %.0911.i.i.i.i600 = phi ptr [ %i.om, %.lr.ph.i.i.i.i598 ], [ %.0911.i.i.i.i600.ph, %.lr.ph.i.i.i.i598.preheader963 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  %i.ol = load i64, ptr %.0911.i.i.i.i600, align 8, !tbaa !210, !alias.scope !1090
  store i64 %i.ol, ptr %.012.i.i.i.i599, align 8, !tbaa !210, !alias.scope !1089
  store ptr null, ptr %.0911.i.i.i.i600, align 8, !tbaa !210, !alias.scope !1090
  %i.om = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i600, i64 8 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i599, i64 8 ; 2 uses
  %.not.i.i.i.i601 = icmp eq ptr %i.om, %i.ng
  br i1 %.not.i.i.i.i601, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i609, label %.lr.ph.i.i.i.i598, !llvm.loop !1074

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i609: ; preds = %.lr.ph.i.i.i.i598, %middle.block959, %.noexc613
  %.0.lcssa.i.i.i.i603 = phi ptr [ %i.nu, %.noexc613 ], [ %i.of, %middle.block959 ], [ %i.on, %.lr.ph.i.i.i.i598 ]
  %i.oo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i603, i64 8
  %.not.i23.i611 = icmp eq ptr %i.nj, null
  br i1 %.not.i23.i611, label %.noexc372, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i609
  %i.op = load ptr, ptr %i.ke, align 8, !tbaa !214
  %i.oq = ptrtoint ptr %i.op to i64
  %i.or = sub i64 %i.oq, %i.nl
  call void @_ZdlPvm(ptr noundef nonnull %i.nj, i64 noundef %i.or) #23
  br label %.noexc372

.noexc372:                                        ; preds = %bb.ad, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i609
  store ptr %i.nu, ptr %i.kb, align 8, !tbaa !215
  store ptr %i.oo, ptr %i.kc, align 8, !tbaa !213
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %i.ns
  store ptr %i.os, ptr %i.ke, align 8, !tbaa !214
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit373

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit373: ; preds = %.noexc372, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV29MockVersionedPortfileProvider, i64 16), ptr %22, align 8, !tbaa !33
  %i.ot = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  store i32 0, ptr %i.ot, align 8, !tbaa !41
  %i.ou = getelementptr inbounds nuw i8, ptr %22, i64 24 ; 2 uses
  store ptr null, ptr %i.ou, align 8, !tbaa !40
  %i.ov = getelementptr inbounds nuw i8, ptr %22, i64 32
  store ptr %i.ot, ptr %i.ov, align 8, !tbaa !42
  %i.ow = getelementptr inbounds nuw i8, ptr %22, i64 40
  store ptr %i.ot, ptr %i.ow, align 8, !tbaa !43
  %i.ox = getelementptr inbounds nuw i8, ptr %22, i64 48
  store i64 0, ptr %i.ox, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5vcpkg4Test20MockCMakeVarProviderE, i64 16), ptr %23, align 8, !tbaa !33
  %i.oy = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.oz = getelementptr inbounds nuw i8, ptr %23, i64 56
  store ptr %i.oz, ptr %i.oy, align 8, !tbaa !64
  %i.pa = getelementptr inbounds nuw i8, ptr %23, i64 16
  store i64 1, ptr %i.pa, align 8, !tbaa !65
  %i.pb = getelementptr inbounds nuw i8, ptr %23, i64 24
  %i.pc = getelementptr inbounds nuw i8, ptr %23, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pb, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.pc, align 8, !tbaa !66
  %i.pd = getelementptr inbounds nuw i8, ptr %23, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pd, i8 0, i64 16, i1 false)
  %i.pe = getelementptr inbounds nuw i8, ptr %23, i64 64
  %i.pf = getelementptr inbounds nuw i8, ptr %23, i64 112
  store ptr %i.pf, ptr %i.pe, align 8, !tbaa !64
  %i.pg = getelementptr inbounds nuw i8, ptr %23, i64 72
  store i64 1, ptr %i.pg, align 8, !tbaa !65
  %i.ph = getelementptr inbounds nuw i8, ptr %23, i64 80
  %i.pi = getelementptr inbounds nuw i8, ptr %23, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ph, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.pi, align 8, !tbaa !66
  %i.pj = getelementptr inbounds nuw i8, ptr %23, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pj, i8 0, i64 16, i1 false)
  %i.pk = getelementptr inbounds nuw i8, ptr %23, i64 120
  %i.pl = getelementptr inbounds nuw i8, ptr %23, i64 168
  store ptr %i.pl, ptr %i.pk, align 8, !tbaa !68
  %i.pm = getelementptr inbounds nuw i8, ptr %23, i64 128
  store i64 1, ptr %i.pm, align 8, !tbaa !69
  %i.pn = getelementptr inbounds nuw i8, ptr %23, i64 136
  %i.po = getelementptr inbounds nuw i8, ptr %23, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pn, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.po, align 8, !tbaa !66
  %i.pp = getelementptr inbounds nuw i8, ptr %23, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pp, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV20MockBaselineProvider, i64 16), ptr %24, align 8, !tbaa !33
  %i.pq = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 3 uses
  store i32 0, ptr %i.pq, align 8, !tbaa !41
  %i.pr = getelementptr inbounds nuw i8, ptr %24, i64 24 ; 2 uses
  store ptr null, ptr %i.pr, align 8, !tbaa !40
  %i.ps = getelementptr inbounds nuw i8, ptr %24, i64 32
  store ptr %i.pq, ptr %i.ps, align 8, !tbaa !42
  %i.pt = getelementptr inbounds nuw i8, ptr %24, i64 40
  store ptr %i.pq, ptr %i.pt, align 8, !tbaa !43
  %i.pu = getelementptr inbounds nuw i8, ptr %24, i64 48
  store i64 0, ptr %i.pu, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  invoke fastcc void @_ZL13toplevel_specv()
          to label %bb.ae unwind label %bb.by

bb.ae:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit373
  %i.pv = invoke ptr @_ZNK5vcpkg11PackageSpec7tripletEv(ptr noundef nonnull align 8 dereferenceable(40) @_ZZL13toplevel_specvE3ret)
          to label %bb.af unwind label %bb.by

bb.af:                                            ; preds = %bb.ae
  %i.pw = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 7 uses
  store ptr %i.pw, ptr %25, align 8, !tbaa !47
  %i.px = load ptr, ptr %2, align 8, !tbaa !51    ; 2 uses
  %i.py = load i64, ptr %i.r, align 8, !tbaa !50  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store i64 %i.py, ptr %i.f, align 8, !tbaa !56
  %i.pz = icmp ugt i64 %i.py, 15
  br i1 %i.pz, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.af
  %i.qa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc374 unwind label %bb.by ; 2 uses

.noexc374:                                        ; preds = %.noexc.i.i
  store ptr %i.qa, ptr %25, align 8, !tbaa !51
  %i.qb = load i64, ptr %i.f, align 8, !tbaa !56
  store i64 %i.qb, ptr %i.pw, align 8, !tbaa !48
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc374, %bb.af
  %i.qc = phi ptr [ %i.qa, %.noexc374 ], [ %i.pw, %bb.af ] ; 2 uses
  switch i64 %i.py, label %bb.ah [
    i64 1, label %bb.ag
    i64 0, label %.noexc.i376
  ]

bb.ag:                                            ; preds = %._crit_edge.i.i.i
  %i.qd = load i8, ptr %i.px, align 1, !tbaa !48
  store i8 %i.qd, ptr %i.qc, align 1, !tbaa !48
  br label %.noexc.i376

bb.ah:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qc, ptr align 1 %i.px, i64 %i.py, i1 false)
  br label %.noexc.i376

.noexc.i376:                                      ; preds = %bb.ah, %bb.ag, %._crit_edge.i.i.i
  %i.qe = load i64, ptr %i.f, align 8, !tbaa !56  ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 %i.qe, ptr %i.qf, align 8, !tbaa !50
  %i.qg = load ptr, ptr %25, align 8, !tbaa !51
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 %i.qe
  store i8 0, ptr %i.qh, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  %i.qi = getelementptr inbounds nuw i8, ptr %25, i64 32
  store ptr %i.pv, ptr %i.qi, align 8, !tbaa !230
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  store ptr @.str, ptr %28, align 8, !tbaa !108
  %i.qj = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 1763, ptr %i.qj, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  %i.qk = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 6 uses
  store ptr %i.qk, ptr %29, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store i64 54, ptr %i.e, align 8, !tbaa !56
  %i.ql = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc377 unwind label %bb.bz ; 3 uses

.noexc377:                                        ; preds = %.noexc.i376
  store ptr %i.ql, ptr %29, align 8, !tbaa !51
  %i.qm = load i64, ptr %i.e, align 8, !tbaa !56  ; 3 uses
  store i64 %i.qm, ptr %i.qk, align 8, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(54) %i.ql, ptr noundef nonnull align 1 dereferenceable(54) @.str.409, i64 54, i1 false)
  %i.qn = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 %i.qm, ptr %i.qn, align 8, !tbaa !50
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ql, i64 %i.qm
  store i8 0, ptr %i.qo, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  invoke void @_ZN5Catch11SectionInfoC1ERKNS_14SourceLineInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %27, ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(32) %29)
          to label %bb.ai unwind label %bb.ca

bb.ai:                                            ; preds = %.noexc377
  invoke void @_ZN5Catch7SectionC1ERKNS_11SectionInfoE(ptr noundef nonnull align 8 dereferenceable(160) %26, ptr noundef nonnull align 8 dereferenceable(80) %27)
          to label %bb.aj unwind label %bb.cb

bb.aj:                                            ; preds = %bb.ai
  %i.qp = getelementptr inbounds nuw i8, ptr %27, i64 32
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !51 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %27, i64 48 ; 2 uses
  %i.qs = icmp eq ptr %i.qq, %i.qr
  br i1 %i.qs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i379

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i379: ; preds = %bb.aj
  %i.qt = load i64, ptr %i.qr, align 8, !tbaa !48
end_hunk_6
begin_hunk_7_@_ZL21C_A_T_C_H_T_E_S_T_109v:._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr @.str.123, ptr %2, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !56
  %i.k = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %2)
          to label %bb.a unwind label %bb.at      ; 2 uses

bb.a:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.l = load ptr, ptr %5, align 8, !tbaa !51     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN5vcpkg7VersionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.o = load i64, ptr %i.m, align 8, !tbaa !48
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit

_ZN5vcpkg7VersionD2Ev.exit:                       ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.q = load ptr, ptr %4, align 8, !tbaa !51     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.h
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5vcpkg7VersionD2Ev.exit
  %i.s = load i64, ptr %i.h, align 8, !tbaa !48
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5vcpkg7VersionD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !150
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !152  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  store ptr %i.w, ptr %6, align 8, !tbaa !47
  store i8 120, ptr %i.w, align 8, !tbaa !48
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 1, ptr %i.x, align 8, !tbaa !50
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 0, ptr %i.y, align 1, !tbaa !48
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #22
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 272 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !220 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 280
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !219
  %.not.i.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 3 uses
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !47
  %i.af = load ptr, ptr %6, align 8, !tbaa !51    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.w
  br i1 %i.ag, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.ah = load i64, ptr %i.x, align 8, !tbaa !50  ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.aj, i1 false)
  br label %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !51
  %i.ak = load i64, ptr %i.w, align 8, !tbaa !48
  store i64 %i.ak, ptr %i.ae, align 8, !tbaa !48
  %.pre = load i64, ptr %i.x, align 8, !tbaa !50
  br label %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i

_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.c
  %i.al = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ah, %bb.c ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !50
  store ptr %i.w, ptr %6, align 8, !tbaa !51
  store i64 0, ptr %i.x, align 8, !tbaa !50
  store i8 0, ptr %i.w, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.z) #22
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !220
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store ptr %i.ap, ptr %i.aa, align 8, !tbaa !220
  br label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 264
  invoke void @_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr %i.ab, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit unwind label %bb.au

_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i, %bb.d
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.z) #22
  %i.ar = load ptr, ptr %6, align 8, !tbaa !51    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.w
  br i1 %i.as, label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75: ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit
  %i.at = load i64, ptr %i.w, align 8, !tbaa !48
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #23
  br label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit

_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit:   ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.av = load ptr, ptr %i.k, align 8, !tbaa !150 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.ax, ptr %8, align 8, !tbaa !47
  store i8 120, ptr %i.ax, align 8, !tbaa !48
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 1, ptr %i.ay, align 8, !tbaa !50
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 0, ptr %i.az, align 1, !tbaa !48
  invoke fastcc void @_ZL9make_fpghNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef align 8 %8)
          to label %bb.e unwind label %bb.av

bb.e:                                             ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !213 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !214
  %.not.i.i81 = icmp eq ptr %i.bb, %i.bd
  br i1 %.not.i.i81, label %bb.f, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.e
  %i.be = load i64, ptr %7, align 8, !tbaa !210
  store i64 %i.be, ptr %i.bb, align 8, !tbaa !210
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.bf, ptr %i.ba, align 8, !tbaa !213
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.bg = load ptr, ptr %i.aw, align 8, !tbaa !215 ; 10 uses
  %i.bh = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bi = ptrtoint ptr %i.bg to i64               ; 3 uses
  %i.bj = sub i64 %i.bh, %i.bi                    ; 3 uses
  %i.bk = icmp eq i64 %i.bj, 9223372036854775800
  br i1 %i.bk, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc236 unwind label %bb.aw

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
          to label %.noexc237 unwind label %bb.aw ; 10 uses

.noexc237:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bj
  %i.bt = load i64, ptr %7, align 8, !tbaa !210
  store i64 %i.bt, ptr %i.bs, align 8, !tbaa !210
  %.not10.i.i.i.i = icmp eq ptr %i.bg, %i.bb
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc237
  %i.bu = add i64 %i.bh, -8
  %i.bv = sub i64 %i.bu, %i.bi                    ; 3 uses
  %i.bw = lshr i64 %i.bv, 3
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bv, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader394, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.by = and i64 %i.bv, -8
  %i.bz = add i64 %i.by, 8                        ; 2 uses
  %i.ca = getelementptr i8, ptr %i.br, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.bg, i64 %i.bz
  %bound0 = icmp ult ptr %i.br, %i.cb
  %bound1 = icmp ult ptr %i.bg, %i.ca
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader394, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bx, 4611686018427387900     ; 3 uses
  %i.cc = shl i64 %n.vec, 3                       ; 2 uses
  %i.cd = getelementptr i8, ptr %i.br, i64 %i.cc  ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bg, i64 %i.cc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.br, i64 %i.cf ; 2 uses
  %next.gep391 = getelementptr i8, ptr %i.bg, i64 %i.cf ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  call void @llvm.experimental.noalias.scope.decl(metadata !1114)
  %i.cg = getelementptr i8, ptr %next.gep391, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep391, align 8, !tbaa !210, !alias.scope !1115
  %wide.load392 = load <2 x i64>, ptr %i.cg, align 8, !tbaa !210, !alias.scope !1115
  %i.ch = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !210, !alias.scope !1116, !noalias !1117
  store <2 x i64> %wide.load392, ptr %i.ch, align 8, !tbaa !210, !alias.scope !1116, !noalias !1117
  %39 = getelementptr i8, ptr %next.gep391, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep391, align 8, !tbaa !210, !alias.scope !1115
  store <2 x ptr> splat (ptr null), ptr %39, align 8, !tbaa !210, !alias.scope !1115
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !1109

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader394

.lr.ph.i.i.i.i.preheader394:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.br, %vector.memcheck ], [ %i.br, %.lr.ph.i.i.i.i.preheader ], [ %i.cd, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph.i.i.i.i.preheader ], [ %i.ce, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader394, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader394 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader394 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  call void @llvm.experimental.noalias.scope.decl(metadata !1114)
  %i.cj = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !210, !alias.scope !1114
  store i64 %i.cj, ptr %.012.i.i.i.i, align 8, !tbaa !210, !alias.scope !1113
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !210, !alias.scope !1114
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ck, %i.bb
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1110

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc237
  %.0.lcssa.i.i.i.i = phi ptr [ %i.br, %.noexc237 ], [ %i.cd, %middle.block ], [ %i.cl, %.lr.ph.i.i.i.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.bg, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.cn = load ptr, ptr %i.bc, align 8, !tbaa !214
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = sub i64 %i.co, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.cp) #23
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.h
  store ptr %i.br, ptr %i.aw, align 8, !tbaa !215
  store ptr %i.cm, ptr %i.ba, align 8, !tbaa !213
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bp
  store ptr %i.cq, ptr %i.bc, align 8, !tbaa !214
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread
  %i.cr = load ptr, ptr %8, align 8, !tbaa !51    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.ax
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit
  %i.ct = load i64, ptr %i.ax, align 8, !tbaa !48
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i83
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.cv, ptr %9, align 8, !tbaa !47
  store i8 98, ptr %i.cv, align 8, !tbaa !48
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 1, ptr %i.cw, align 8, !tbaa !50
  %i.cx = getelementptr inbounds nuw i8, ptr %9, i64 17
  store i8 0, ptr %i.cx, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit91 unwind label %bb.ay

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit91:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit85
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr @.str.123, ptr %1, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i92 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i92, align 8, !tbaa !56
  %i.cy = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(36) %10, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %1)
          to label %._crit_edge.i.i95 unwind label %bb.az

._crit_edge.i.i95:                                ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit91
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !150
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.db = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 11 uses
  store ptr %i.db, ptr %12, align 8, !tbaa !47
  store i8 97, ptr %i.db, align 8, !tbaa !48
  %i.dc = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  store i64 1, ptr %i.dc, align 8, !tbaa !50
  %i.dd = getelementptr inbounds nuw i8, ptr %12, i64 17
  store i8 0, ptr %i.dd, align 1, !tbaa !48
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 216
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #22
  %i.df = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.df, ptr %11, align 8, !tbaa !47
  %i.dg = load ptr, ptr %12, align 8, !tbaa !51   ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.db
  br i1 %i.dh, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

bb.i:                                             ; preds = %._crit_edge.i.i95
  %i.di = load i64, ptr %i.dc, align 8, !tbaa !50 ; 3 uses
  %i.dj = icmp ult i64 %i.di, 16
  call void @llvm.assume(i1 %i.dj)
  %i.dk = add nuw nsw i64 %i.di, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.df, ptr noundef nonnull align 8 dereferenceable(1) %i.db, i64 %i.dk, i1 false)
  br label %_ZN14CoreDependencyC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS8_EENS7_18PlatformExpression4ExprE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %._crit_edge.i.i95
  store ptr %i.dg, ptr %11, align 8, !tbaa !51
  %i.dl = load i64, ptr %i.db, align 8, !tbaa !48
  store i64 %i.dl, ptr %i.df, align 8, !tbaa !48
  %.pre272 = load i64, ptr %i.dc, align 8, !tbaa !50
  br label %_ZN14CoreDependencyC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS8_EENS7_18PlatformExpression4ExprE.exit

_ZN14CoreDependencyC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS8_EENS7_18PlatformExpression4ExprE.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
  %i.dm = phi i64 [ %i.di, %bb.i ], [ %.pre272, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99 ]
  %i.dn = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !50
  store ptr %i.db, ptr %12, align 8, !tbaa !51
  store i64 0, ptr %i.dc, align 8, !tbaa !50
  store i8 0, ptr %i.db, align 8, !tbaa !48
  %i.do = getelementptr inbounds nuw i8, ptr %11, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.do, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %11, i64 56
  call void @_ZN5vcpkg18PlatformExpression4ExprC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, ptr noundef nonnull align 8 dereferenceable(8) %14) #22
  %i.dq = getelementptr inbounds nuw i8, ptr %11, i64 64
  store i32 0, ptr %i.dq, align 8, !tbaa !72
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 72
  call void @_ZN5vcpkg7VersionC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.dr) #22
  %i.ds = getelementptr inbounds nuw i8, ptr %11, i64 112
  store i8 0, ptr %i.ds, align 8, !tbaa !94
  %i.dt = getelementptr inbounds nuw i8, ptr %11, i64 113
  %i.du = getelementptr inbounds nuw i8, ptr %11, i64 120
  store i8 0, ptr %i.dt, align 1, !tbaa !95
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.du, i8 0, i64 24, i1 false)
  %i.dv = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.de, ptr noundef nonnull align 8 dereferenceable(144) %11)
          to label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EED2Ev.exit unwind label %bb.ba ; 0 uses

_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EED2Ev.exit: ; preds = %_ZN14CoreDependencyC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS8_EENS7_18PlatformExpression4ExprE.exit
  call void @_ZN5vcpkg10DependencyD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %11) #22
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #22
  %.pre273 = load ptr, ptr %12, align 8, !tbaa !51 ; 2 uses
  %i.dw = icmp eq ptr %.pre273, %i.db
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EED2Ev.exit
  %i.dx = load i64, ptr %i.db, align 8, !tbaa !48
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %.pre273, i64 noundef %i.dy) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.dz = load ptr, ptr %10, align 8, !tbaa !51   ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZN5vcpkg7VersionD2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i104: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !48
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit106

_ZN5vcpkg7VersionD2Ev.exit106:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.ee = load ptr, ptr %9, align 8, !tbaa !51    ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.cv
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %_ZN5vcpkg7VersionD2Ev.exit106
  %i.eg = load i64, ptr %i.cv, align 8, !tbaa !48
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109: ; preds = %_ZN5vcpkg7VersionD2Ev.exit106, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5vcpkg4Test20MockCMakeVarProviderE, i64 16), ptr %15, align 8, !tbaa !33
  %i.ei = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %15, i64 56
  store ptr %i.ej, ptr %i.ei, align 8, !tbaa !64
  %i.ek = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i64 1, ptr %i.ek, align 8, !tbaa !65
  %i.el = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.em = getelementptr inbounds nuw i8, ptr %15, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.el, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.em, align 8, !tbaa !66
  %i.en = getelementptr inbounds nuw i8, ptr %15, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.en, i8 0, i64 16, i1 false)
  %i.eo = getelementptr inbounds nuw i8, ptr %15, i64 64
  %i.ep = getelementptr inbounds nuw i8, ptr %15, i64 112
  store ptr %i.ep, ptr %i.eo, align 8, !tbaa !64
  %i.eq = getelementptr inbounds nuw i8, ptr %15, i64 72
  store i64 1, ptr %i.eq, align 8, !tbaa !65
  %i.er = getelementptr inbounds nuw i8, ptr %15, i64 80
  %i.es = getelementptr inbounds nuw i8, ptr %15, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.er, i8 0, i64 16, i1 false)
end_hunk_7
begin_hunk_8_@_ZL21C_A_T_C_H_T_E_S_T_115v:._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr @.str.123, ptr %4, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !56
  %i.k = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %4)
          to label %bb.a unwind label %bb.bw      ; 3 uses

bb.a:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.l = load ptr, ptr %7, align 8, !tbaa !51     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN5vcpkg7VersionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.o = load i64, ptr %i.m, align 8, !tbaa !48
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit

_ZN5vcpkg7VersionD2Ev.exit:                       ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.q = load ptr, ptr %6, align 8, !tbaa !51     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.h
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5vcpkg7VersionD2Ev.exit
  %i.s = load i64, ptr %i.h, align 8, !tbaa !48
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5vcpkg7VersionD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !150
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !152  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  store ptr %i.w, ptr %8, align 8, !tbaa !47
  store i8 120, ptr %i.w, align 8, !tbaa !48
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i64 1, ptr %i.x, align 8, !tbaa !50
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 0, ptr %i.y, align 1, !tbaa !48
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #22
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 272 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !220 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 280
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !219
  %.not.i.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 3 uses
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !47
  %i.af = load ptr, ptr %8, align 8, !tbaa !51    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.w
  br i1 %i.ag, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.ah = load i64, ptr %i.x, align 8, !tbaa !50  ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.aj, i1 false)
  br label %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !51
  %i.ak = load i64, ptr %i.w, align 8, !tbaa !48
  store i64 %i.ak, ptr %i.ae, align 8, !tbaa !48
  %.pre = load i64, ptr %i.x, align 8, !tbaa !50
  br label %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i

_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.c
  %i.al = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ah, %bb.c ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !50
  store ptr %i.w, ptr %8, align 8, !tbaa !51
  store i64 0, ptr %i.x, align 8, !tbaa !50
  store i8 0, ptr %i.w, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.z) #22
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !220
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store ptr %i.ap, ptr %i.aa, align 8, !tbaa !220
  br label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 264
  invoke void @_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr %i.ab, ptr noundef nonnull align 8 dereferenceable(40) %8)
          to label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit unwind label %bb.bx

_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i, %bb.d
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.z) #22
  %i.ar = load ptr, ptr %8, align 8, !tbaa !51    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.w
  br i1 %i.as, label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i135: ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit
  %i.at = load i64, ptr %i.w, align 8, !tbaa !48
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #23
  br label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit

_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit:   ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.av = load ptr, ptr %i.k, align 8, !tbaa !150 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.ax, ptr %10, align 8, !tbaa !47
  store i8 120, ptr %i.ax, align 8, !tbaa !48
  %i.ay = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 1, ptr %i.ay, align 8, !tbaa !50
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 17
  store i8 0, ptr %i.az, align 1, !tbaa !48
  invoke fastcc void @_ZL9make_fpghNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef align 8 %10)
          to label %bb.e unwind label %bb.by

bb.e:                                             ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !213 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !214
  %.not.i.i141 = icmp eq ptr %i.bb, %i.bd
  br i1 %.not.i.i141, label %bb.f, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.e
  %i.be = load i64, ptr %9, align 8, !tbaa !210
  store i64 %i.be, ptr %i.bb, align 8, !tbaa !210
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.bf, ptr %i.ba, align 8, !tbaa !213
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.bg = load ptr, ptr %i.aw, align 8, !tbaa !215 ; 10 uses
  %i.bh = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bi = ptrtoint ptr %i.bg to i64               ; 3 uses
  %i.bj = sub i64 %i.bh, %i.bi                    ; 3 uses
  %i.bk = icmp eq i64 %i.bj, 9223372036854775800
  br i1 %i.bk, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc474 unwind label %bb.bz

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
          to label %.noexc475 unwind label %bb.bz ; 10 uses

.noexc475:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bj
  %i.bt = load i64, ptr %9, align 8, !tbaa !210
  store i64 %i.bt, ptr %i.bs, align 8, !tbaa !210
  %.not10.i.i.i.i = icmp eq ptr %i.bg, %i.bb
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc475
  %i.bu = add i64 %i.bh, -8
  %i.bv = sub i64 %i.bu, %i.bi                    ; 3 uses
  %i.bw = lshr i64 %i.bv, 3
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bv, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader820, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.by = and i64 %i.bv, -8
  %i.bz = add i64 %i.by, 8                        ; 2 uses
  %i.ca = getelementptr i8, ptr %i.br, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.bg, i64 %i.bz
  %bound0 = icmp ult ptr %i.br, %i.cb
  %bound1 = icmp ult ptr %i.bg, %i.ca
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader820, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bx, 4611686018427387900     ; 3 uses
  %i.cc = shl i64 %n.vec, 3                       ; 2 uses
  %i.cd = getelementptr i8, ptr %i.br, i64 %i.cc  ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bg, i64 %i.cc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.br, i64 %i.cf ; 2 uses
  %next.gep766 = getelementptr i8, ptr %i.bg, i64 %i.cf ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  %i.cg = getelementptr i8, ptr %next.gep766, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep766, align 8, !tbaa !210, !alias.scope !1156
  %wide.load767 = load <2 x i64>, ptr %i.cg, align 8, !tbaa !210, !alias.scope !1156
  %i.ch = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !210, !alias.scope !1157, !noalias !1158
  store <2 x i64> %wide.load767, ptr %i.ch, align 8, !tbaa !210, !alias.scope !1157, !noalias !1158
  %56 = getelementptr i8, ptr %next.gep766, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep766, align 8, !tbaa !210, !alias.scope !1156
  store <2 x ptr> splat (ptr null), ptr %56, align 8, !tbaa !210, !alias.scope !1156
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !1134

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader820

.lr.ph.i.i.i.i.preheader820:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.br, %vector.memcheck ], [ %i.br, %.lr.ph.i.i.i.i.preheader ], [ %i.cd, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph.i.i.i.i.preheader ], [ %i.ce, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader820, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cl, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader820 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader820 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1154)
  call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  %i.cj = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !210, !alias.scope !1155
  store i64 %i.cj, ptr %.012.i.i.i.i, align 8, !tbaa !210, !alias.scope !1154
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !210, !alias.scope !1155
  %i.ck = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ck, %i.bb
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1135

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc475
  %.0.lcssa.i.i.i.i = phi ptr [ %i.br, %.noexc475 ], [ %i.cd, %middle.block ], [ %i.cl, %.lr.ph.i.i.i.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.bg, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.cn = load ptr, ptr %i.bc, align 8, !tbaa !214
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = sub i64 %i.co, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.cp) #23
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.h
  store ptr %i.br, ptr %i.aw, align 8, !tbaa !215
  store ptr %i.cm, ptr %i.ba, align 8, !tbaa !213
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bp
  store ptr %i.cq, ptr %i.bc, align 8, !tbaa !214
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread
  %i.cr = load ptr, ptr %10, align 8, !tbaa !51   ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.ax
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit
  %i.ct = load i64, ptr %i.ax, align 8, !tbaa !48
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.cv = load ptr, ptr %i.k, align 8, !tbaa !150
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !232
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 -8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !210
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.da, ptr %11, align 8, !tbaa !47
  store i8 97, ptr %i.da, align 8, !tbaa !48
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 1, ptr %i.db, align 8, !tbaa !50
  %i.dc = getelementptr inbounds nuw i8, ptr %11, i64 17
  store i8 0, ptr %i.dc, align 1, !tbaa !48
  %i.dd = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %11, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZL14parse_platformN5vcpkg10StringViewE(ptr dead_on_unwind noalias writable align 8 %i.de, ptr nonnull @.str.416, i64 6)
          to label %bb.i unwind label %bb.cb

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 56
  %i.dg = getelementptr inbounds nuw i8, ptr %11, i64 64
  store i32 0, ptr %i.dg, align 8, !tbaa !72
  %i.dh = getelementptr inbounds nuw i8, ptr %11, i64 72
  call void @_ZN5vcpkg7VersionC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.dh) #22
  %i.di = getelementptr inbounds nuw i8, ptr %11, i64 112
  store i8 0, ptr %i.di, align 8, !tbaa !94
  %i.dj = getelementptr inbounds nuw i8, ptr %11, i64 113
  store i8 1, ptr %i.dj, align 1, !tbaa !95
  %i.dk = getelementptr inbounds nuw i8, ptr %11, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i8 0, i64 24, i1 false)
  %i.dl = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.df, ptr noundef nonnull align 8 dereferenceable(144) %11)
          to label %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit unwind label %bb.cc ; 0 uses

_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.i
  call void @_ZN5vcpkg10DependencyD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.dm = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.dm, ptr %12, align 8, !tbaa !47
  store i8 97, ptr %i.dm, align 8, !tbaa !48
  %i.dn = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 1, ptr %i.dn, align 8, !tbaa !50
  %i.do = getelementptr inbounds nuw i8, ptr %12, i64 17
  store i8 0, ptr %i.do, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %13, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit156 unwind label %bb.cd

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit156:       ; preds = %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr @.str.123, ptr %3, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i157 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i157, align 8, !tbaa !56
  %i.dp = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(36) %13, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %3)
          to label %bb.j unwind label %bb.ce      ; 3 uses

bb.j:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit156
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.dq = load ptr, ptr %13, align 8, !tbaa !51   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZN5vcpkg7VersionD2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i160: ; preds = %bb.j
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !48
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit162

_ZN5vcpkg7VersionD2Ev.exit162:                    ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.dv = load ptr, ptr %12, align 8, !tbaa !51   ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.dm
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163: ; preds = %_ZN5vcpkg7VersionD2Ev.exit162
  %i.dx = load i64, ptr %i.dm, align 8, !tbaa !48
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165: ; preds = %_ZN5vcpkg7VersionD2Ev.exit162, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  %i.dz = load ptr, ptr %i.dp, align 8, !tbaa !150
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !152 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.eb = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 9 uses
  store ptr %i.eb, ptr %14, align 8, !tbaa !47
  store i8 121, ptr %i.eb, align 8, !tbaa !48
  %i.ec = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store i64 1, ptr %i.ec, align 8, !tbaa !50
  %i.ed = getelementptr inbounds nuw i8, ptr %14, i64 17
  store i8 0, ptr %i.ed, align 1, !tbaa !48
  %i.ee = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ee) #22
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 272 ; 3 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !220 ; 7 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 280
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !219
  %.not.i.i170 = icmp eq ptr %i.eg, %i.ei
  br i1 %.not.i.i170, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 3 uses
  store ptr %i.ej, ptr %i.eg, align 8, !tbaa !47
  %i.ek = load ptr, ptr %14, align 8, !tbaa !51   ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.eb
  br i1 %i.el, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i171

bb.l:                                             ; preds = %bb.k
  %i.em = load i64, ptr %i.ec, align 8, !tbaa !50 ; 3 uses
  %i.en = icmp ult i64 %i.em, 16
  call void @llvm.assume(i1 %i.en)
  %i.eo = add nuw nsw i64 %i.em, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ej, ptr noundef nonnull align 8 dereferenceable(1) %i.eb, i64 %i.eo, i1 false)
  br label %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i171: ; preds = %bb.k
  store ptr %i.ek, ptr %i.eg, align 8, !tbaa !51
  %i.ep = load i64, ptr %i.eb, align 8, !tbaa !48
  store i64 %i.ep, ptr %i.ej, align 8, !tbaa !48
  %.pre569 = load i64, ptr %i.ec, align 8, !tbaa !50
  br label %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i172

_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i172: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i171, %bb.l
  %i.eq = phi i64 [ %.pre569, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i171 ], [ %i.em, %bb.l ]
  %i.er = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !50
  store ptr %i.eb, ptr %14, align 8, !tbaa !51
  store i64 0, ptr %i.ec, align 8, !tbaa !50
  store i8 0, ptr %i.eb, align 8, !tbaa !48
  %i.es = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.es, ptr noundef nonnull align 8 dereferenceable(8) %i.ee) #22
  %i.et = load ptr, ptr %i.ef, align 8, !tbaa !220
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 40
  store ptr %i.eu, ptr %i.ef, align 8, !tbaa !220
  br label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit174

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ea, i64 264
  invoke void @_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ev, ptr %i.eg, ptr noundef nonnull align 8 dereferenceable(40) %14)
          to label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit174 unwind label %bb.cf

_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit174: ; preds = %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i172, %bb.m
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ee) #22
  %i.ew = load ptr, ptr %14, align 8, !tbaa !51   ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.eb
  br i1 %i.ex, label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i175: ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit174
  %i.ey = load i64, ptr %i.eb, align 8, !tbaa !48
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #23
  br label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit177

_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit177: ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit174, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.fa = load ptr, ptr %i.dp, align 8, !tbaa !150 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.fc = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.fc, ptr %16, align 8, !tbaa !47
  store i8 121, ptr %i.fc, align 8, !tbaa !48
  %i.fd = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 1, ptr %i.fd, align 8, !tbaa !50
  %i.fe = getelementptr inbounds nuw i8, ptr %16, i64 17
  store i8 0, ptr %i.fe, align 1, !tbaa !48
  invoke fastcc void @_ZL9make_fpghNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %15, ptr noundef align 8 %16)
          to label %bb.n unwind label %bb.cg

bb.n:                                             ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit177
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 3 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !213 ; 6 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fa, i64 24 ; 3 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !214
  %.not.i.i182 = icmp eq ptr %i.fg, %i.fi
  br i1 %.not.i.i182, label %bb.o, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit184.thread

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit184.thread: ; preds = %bb.n
  %i.fj = load i64, ptr %15, align 8, !tbaa !210
  store i64 %i.fj, ptr %i.fg, align 8, !tbaa !210
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store ptr %i.fk, ptr %i.ff, align 8, !tbaa !213
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit187

bb.o:                                             ; preds = %bb.n
  %i.fl = load ptr, ptr %i.fb, align 8, !tbaa !215 ; 10 uses
  %i.fm = ptrtoint ptr %i.fg to i64               ; 2 uses
  %i.fn = ptrtoint ptr %i.fl to i64               ; 3 uses
  %i.fo = sub i64 %i.fm, %i.fn                    ; 3 uses
  %i.fp = icmp eq i64 %i.fo, 9223372036854775800
  br i1 %i.fp, label %bb.p, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i476

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc494 unwind label %bb.ch

.noexc494:                                        ; preds = %bb.p
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i476: ; preds = %bb.o
  %i.fq = ashr exact i64 %i.fo, 3                 ; 3 uses
  %.sroa.speculated.i.i477 = call i64 @llvm.umax.i64(i64 %i.fq, i64 1)
  %i.fr = add nsw i64 %.sroa.speculated.i.i477, %i.fq ; 2 uses
  %i.fs = icmp ult i64 %i.fr, %i.fq
  %i.ft = call i64 @llvm.umin.i64(i64 %i.fr, i64 1152921504606846975)
  %i.fu = select i1 %i.fs, i64 1152921504606846975, i64 %i.ft ; 3 uses
  %.not.i.i478 = icmp ne i64 %i.fu, 0
  call void @llvm.assume(i1 %.not.i.i478)
  %i.fv = shl nuw nsw i64 %i.fu, 3
  %i.fw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fv) #24
          to label %.noexc495 unwind label %bb.ch ; 10 uses

.noexc495:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i476
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fo
  %i.fy = load i64, ptr %15, align 8, !tbaa !210
  store i64 %i.fy, ptr %i.fx, align 8, !tbaa !210
  %.not10.i.i.i.i479 = icmp eq ptr %i.fl, %i.fg
  br i1 %.not10.i.i.i.i479, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i491, label %.lr.ph.i.i.i.i480.preheader

.lr.ph.i.i.i.i480.preheader:                      ; preds = %.noexc495
  %i.fz = add i64 %i.fm, -8
  %i.ga = sub i64 %i.fz, %i.fn                    ; 3 uses
  %i.gb = lshr i64 %i.ga, 3
  %i.gc = add nuw nsw i64 %i.gb, 1                ; 2 uses
  %min.iters.check775 = icmp ult i64 %i.ga, 136
  br i1 %min.iters.check775, label %.lr.ph.i.i.i.i480.preheader818, label %vector.memcheck776

vector.memcheck776:                               ; preds = %.lr.ph.i.i.i.i480.preheader
  %i.gd = and i64 %i.ga, -8
  %i.ge = add i64 %i.gd, 8                        ; 2 uses
  %i.gf = getelementptr i8, ptr %i.fw, i64 %i.ge
  %i.gg = getelementptr i8, ptr %i.fl, i64 %i.ge
  %bound0777 = icmp ult ptr %i.fw, %i.gg
  %bound1778 = icmp ult ptr %i.fl, %i.gf
  %found.conflict779 = and i1 %bound0777, %bound1778
  br i1 %found.conflict779, label %.lr.ph.i.i.i.i480.preheader818, label %vector.ph780

vector.ph780:                                     ; preds = %vector.memcheck776
  %n.vec781 = and i64 %i.gc, 4611686018427387900  ; 3 uses
  %i.gh = shl i64 %n.vec781, 3                    ; 2 uses
  %i.gi = getelementptr i8, ptr %i.fw, i64 %i.gh  ; 2 uses
  %i.gj = getelementptr i8, ptr %i.fl, i64 %i.gh
  br label %vector.body782

vector.body782:                                   ; preds = %vector.body782, %vector.ph780
  %index783 = phi i64 [ 0, %vector.ph780 ], [ %index.next788, %vector.body782 ] ; 2 uses
  %i.gk = shl i64 %index783, 3                    ; 2 uses
  %next.gep784 = getelementptr i8, ptr %i.fw, i64 %i.gk ; 2 uses
  %next.gep785 = getelementptr i8, ptr %i.fl, i64 %i.gk ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  %i.gl = getelementptr i8, ptr %next.gep785, i64 16
  %wide.load786 = load <2 x i64>, ptr %next.gep785, align 8, !tbaa !210, !alias.scope !1161
  %wide.load787 = load <2 x i64>, ptr %i.gl, align 8, !tbaa !210, !alias.scope !1161
  %i.gm = getelementptr i8, ptr %next.gep784, i64 16
  store <2 x i64> %wide.load786, ptr %next.gep784, align 8, !tbaa !210, !alias.scope !1162, !noalias !1163
  store <2 x i64> %wide.load787, ptr %i.gm, align 8, !tbaa !210, !alias.scope !1162, !noalias !1163
  %57 = getelementptr i8, ptr %next.gep785, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep785, align 8, !tbaa !210, !alias.scope !1161
  store <2 x ptr> splat (ptr null), ptr %57, align 8, !tbaa !210, !alias.scope !1161
  %index.next788 = add nuw i64 %index783, 4       ; 2 uses
  %i.gn = icmp eq i64 %index.next788, %n.vec781
  br i1 %i.gn, label %middle.block789, label %vector.body782, !llvm.loop !1142

middle.block789:                                  ; preds = %vector.body782
  %cmp.n790 = icmp eq i64 %i.gc, %n.vec781
  br i1 %cmp.n790, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i491, label %.lr.ph.i.i.i.i480.preheader818

.lr.ph.i.i.i.i480.preheader818:                   ; preds = %vector.memcheck776, %.lr.ph.i.i.i.i480.preheader, %middle.block789
  %.012.i.i.i.i481.ph = phi ptr [ %i.fw, %vector.memcheck776 ], [ %i.fw, %.lr.ph.i.i.i.i480.preheader ], [ %i.gi, %middle.block789 ]
  %.0911.i.i.i.i482.ph = phi ptr [ %i.fl, %vector.memcheck776 ], [ %i.fl, %.lr.ph.i.i.i.i480.preheader ], [ %i.gj, %middle.block789 ]
  br label %.lr.ph.i.i.i.i480

.lr.ph.i.i.i.i480:                                ; preds = %.lr.ph.i.i.i.i480.preheader818, %.lr.ph.i.i.i.i480
  %.012.i.i.i.i481 = phi ptr [ %i.gq, %.lr.ph.i.i.i.i480 ], [ %.012.i.i.i.i481.ph, %.lr.ph.i.i.i.i480.preheader818 ] ; 2 uses
  %.0911.i.i.i.i482 = phi ptr [ %i.gp, %.lr.ph.i.i.i.i480 ], [ %.0911.i.i.i.i482.ph, %.lr.ph.i.i.i.i480.preheader818 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  %i.go = load i64, ptr %.0911.i.i.i.i482, align 8, !tbaa !210, !alias.scope !1160
  store i64 %i.go, ptr %.012.i.i.i.i481, align 8, !tbaa !210, !alias.scope !1159
  store ptr null, ptr %.0911.i.i.i.i482, align 8, !tbaa !210, !alias.scope !1160
  %i.gp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i482, i64 8 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i481, i64 8 ; 2 uses
  %.not.i.i.i.i483 = icmp eq ptr %i.gp, %i.fg
  br i1 %.not.i.i.i.i483, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i491, label %.lr.ph.i.i.i.i480, !llvm.loop !1143

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i491: ; preds = %.lr.ph.i.i.i.i480, %middle.block789, %.noexc495
  %.0.lcssa.i.i.i.i485 = phi ptr [ %i.fw, %.noexc495 ], [ %i.gi, %middle.block789 ], [ %i.gq, %.lr.ph.i.i.i.i480 ]
  %i.gr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i485, i64 8
  %.not.i23.i493 = icmp eq ptr %i.fl, null
  br i1 %.not.i23.i493, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit184, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i491
  %i.gs = load ptr, ptr %i.fh, align 8, !tbaa !214
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = sub i64 %i.gt, %i.fn
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.gu) #23
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit184

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit184: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i491, %bb.q
  store ptr %i.fw, ptr %i.fb, align 8, !tbaa !215
  store ptr %i.gr, ptr %i.ff, align 8, !tbaa !213
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.fu
  store ptr %i.gv, ptr %i.fh, align 8, !tbaa !214
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit187

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit187: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit184, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit184.thread
  %i.gw = load ptr, ptr %16, align 8, !tbaa !51   ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %i.fc
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit187
  %i.gy = load i64, ptr %i.fc, align 8, !tbaa !48
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.gz) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit187, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i188
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.ha = load ptr, ptr %i.dp, align 8, !tbaa !150
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !232
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 -8
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !210
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.hf = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  store ptr %i.hf, ptr %17, align 8, !tbaa !47
  store i8 99, ptr %i.hf, align 8, !tbaa !48
  %i.hg = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 1, ptr %i.hg, align 8, !tbaa !50
  %i.hh = getelementptr inbounds nuw i8, ptr %17, i64 17
  store i8 0, ptr %i.hh, align 1, !tbaa !48
  %i.hi = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %17, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hi, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZL14parse_platformN5vcpkg10StringViewE(ptr dead_on_unwind noalias writable align 8 %i.hj, ptr nonnull @.str.417, i64 5)
          to label %bb.r unwind label %bb.cj

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit190
  %i.hk = getelementptr inbounds nuw i8, ptr %i.he, i64 56
  %i.hl = getelementptr inbounds nuw i8, ptr %17, i64 64
  store i32 0, ptr %i.hl, align 8, !tbaa !72
  %i.hm = getelementptr inbounds nuw i8, ptr %17, i64 72
  call void @_ZN5vcpkg7VersionC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.hm) #22
  %i.hn = getelementptr inbounds nuw i8, ptr %17, i64 112
  store i8 0, ptr %i.hn, align 8, !tbaa !94
  %i.ho = getelementptr inbounds nuw i8, ptr %17, i64 113
  store i8 1, ptr %i.ho, align 1, !tbaa !95
  %i.hp = getelementptr inbounds nuw i8, ptr %17, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hp, i8 0, i64 24, i1 false)
  %i.hq = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.hk, ptr noundef nonnull align 8 dereferenceable(144) %17)
          to label %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit196 unwind label %bb.ck ; 0 uses

_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit196: ; preds = %bb.r
  call void @_ZN5vcpkg10DependencyD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.hr = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.hr, ptr %18, align 8, !tbaa !47
  store i8 99, ptr %i.hr, align 8, !tbaa !48
  %i.hs = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 1, ptr %i.hs, align 8, !tbaa !50
  %i.ht = getelementptr inbounds nuw i8, ptr %18, i64 17
  store i8 0, ptr %i.ht, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %19, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit202 unwind label %bb.cl

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit202:       ; preds = %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit196
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr @.str.123, ptr %2, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i203 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i203, align 8, !tbaa !56
  %i.hu = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(36) %19, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %2)
          to label %bb.s unwind label %bb.cm      ; 3 uses

bb.s:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit202
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.hv = load ptr, ptr %19, align 8, !tbaa !51   ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %_ZN5vcpkg7VersionD2Ev.exit208, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i206: ; preds = %bb.s
  %i.hy = load i64, ptr %i.hw, align 8, !tbaa !48
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hz) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit208

_ZN5vcpkg7VersionD2Ev.exit208:                    ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i206
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.ia = load ptr, ptr %18, align 8, !tbaa !51   ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.hr
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209: ; preds = %_ZN5vcpkg7VersionD2Ev.exit208
  %i.ic = load i64, ptr %i.hr, align 8, !tbaa !48
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.id) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211: ; preds = %_ZN5vcpkg7VersionD2Ev.exit208, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i209
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.ie = load ptr, ptr %i.hu, align 8, !tbaa !150
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !152 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.ig = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 9 uses
  store ptr %i.ig, ptr %20, align 8, !tbaa !47
  store i8 122, ptr %i.ig, align 8, !tbaa !48
  %i.ih = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 4 uses
  store i64 1, ptr %i.ih, align 8, !tbaa !50
  %i.ii = getelementptr inbounds nuw i8, ptr %20, i64 17
  store i8 0, ptr %i.ii, align 1, !tbaa !48
  %i.ij = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 3 uses
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ij) #22
  %i.ik = getelementptr inbounds nuw i8, ptr %i.if, i64 272 ; 3 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !220 ; 7 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.if, i64 280
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !219
  %.not.i.i216 = icmp eq ptr %i.il, %i.in
  br i1 %.not.i.i216, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 16 ; 3 uses
  store ptr %i.io, ptr %i.il, align 8, !tbaa !47
  %i.ip = load ptr, ptr %20, align 8, !tbaa !51   ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.ig
  br i1 %i.iq, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i217

bb.u:                                             ; preds = %bb.t
  %i.ir = load i64, ptr %i.ih, align 8, !tbaa !50 ; 3 uses
  %i.is = icmp ult i64 %i.ir, 16
  call void @llvm.assume(i1 %i.is)
  %i.it = add nuw nsw i64 %i.ir, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.io, ptr noundef nonnull align 8 dereferenceable(1) %i.ig, i64 %i.it, i1 false)
  br label %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i218

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i217: ; preds = %bb.t
  store ptr %i.ip, ptr %i.il, align 8, !tbaa !51
  %i.iu = load i64, ptr %i.ig, align 8, !tbaa !48
  store i64 %i.iu, ptr %i.io, align 8, !tbaa !48
  %.pre570 = load i64, ptr %i.ih, align 8, !tbaa !50
  br label %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i218

_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i218: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i217, %bb.u
  %i.iv = phi i64 [ %.pre570, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i217 ], [ %i.ir, %bb.u ]
  %i.iw = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store i64 %i.iv, ptr %i.iw, align 8, !tbaa !50
  store ptr %i.ig, ptr %20, align 8, !tbaa !51
  store i64 0, ptr %i.ih, align 8, !tbaa !50
  store i8 0, ptr %i.ig, align 8, !tbaa !48
  %i.ix = getelementptr inbounds nuw i8, ptr %i.il, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.ix, ptr noundef nonnull align 8 dereferenceable(8) %i.ij) #22
  %i.iy = load ptr, ptr %i.ik, align 8, !tbaa !220
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 40
  store ptr %i.iz, ptr %i.ik, align 8, !tbaa !220
  br label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit220

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit211
  %i.ja = getelementptr inbounds nuw i8, ptr %i.if, i64 264
  invoke void @_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ja, ptr %i.il, ptr noundef nonnull align 8 dereferenceable(40) %20)
          to label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit220 unwind label %bb.cn

_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit220: ; preds = %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i218, %bb.v
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ij) #22
  %i.jb = load ptr, ptr %20, align 8, !tbaa !51   ; 2 uses
  %i.jc = icmp eq ptr %i.jb, %i.ig
  br i1 %i.jc, label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i221

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i221: ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit220
  %i.jd = load i64, ptr %i.ig, align 8, !tbaa !48
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.je) #23
  br label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit223

_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit223: ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit220, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i221
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %i.jf = load ptr, ptr %i.hu, align 8, !tbaa !150 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  %i.jh = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  store ptr %i.jh, ptr %22, align 8, !tbaa !47
  store i8 122, ptr %i.jh, align 8, !tbaa !48
  %i.ji = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 1, ptr %i.ji, align 8, !tbaa !50
  %i.jj = getelementptr inbounds nuw i8, ptr %22, i64 17
  store i8 0, ptr %i.jj, align 1, !tbaa !48
  invoke fastcc void @_ZL9make_fpghNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %21, ptr noundef align 8 %22)
          to label %bb.w unwind label %bb.co

bb.w:                                             ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit223
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 16 ; 3 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !213 ; 6 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jf, i64 24 ; 3 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !214
  %.not.i.i228 = icmp eq ptr %i.jl, %i.jn
  br i1 %.not.i.i228, label %bb.x, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit230.thread

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit230.thread: ; preds = %bb.w
  %i.jo = load i64, ptr %21, align 8, !tbaa !210
  store i64 %i.jo, ptr %i.jl, align 8, !tbaa !210
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  store ptr %i.jp, ptr %i.jk, align 8, !tbaa !213
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit233

bb.x:                                             ; preds = %bb.w
  %i.jq = load ptr, ptr %i.jg, align 8, !tbaa !215 ; 10 uses
  %i.jr = ptrtoint ptr %i.jl to i64               ; 2 uses
  %i.js = ptrtoint ptr %i.jq to i64               ; 3 uses
  %i.jt = sub i64 %i.jr, %i.js                    ; 3 uses
  %i.ju = icmp eq i64 %i.jt, 9223372036854775800
  br i1 %i.ju, label %bb.y, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i497

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc515 unwind label %bb.cp

.noexc515:                                        ; preds = %bb.y
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i497: ; preds = %bb.x
  %i.jv = ashr exact i64 %i.jt, 3                 ; 3 uses
  %.sroa.speculated.i.i498 = call i64 @llvm.umax.i64(i64 %i.jv, i64 1)
  %i.jw = add nsw i64 %.sroa.speculated.i.i498, %i.jv ; 2 uses
  %i.jx = icmp ult i64 %i.jw, %i.jv
  %i.jy = call i64 @llvm.umin.i64(i64 %i.jw, i64 1152921504606846975)
  %i.jz = select i1 %i.jx, i64 1152921504606846975, i64 %i.jy ; 3 uses
  %.not.i.i499 = icmp ne i64 %i.jz, 0
  call void @llvm.assume(i1 %.not.i.i499)
  %i.ka = shl nuw nsw i64 %i.jz, 3
  %i.kb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ka) #24
          to label %.noexc516 unwind label %bb.cp ; 10 uses

.noexc516:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i497
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.jt
  %i.kd = load i64, ptr %21, align 8, !tbaa !210
  store i64 %i.kd, ptr %i.kc, align 8, !tbaa !210
  %.not10.i.i.i.i500 = icmp eq ptr %i.jq, %i.jl
  br i1 %.not10.i.i.i.i500, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i512, label %.lr.ph.i.i.i.i501.preheader

.lr.ph.i.i.i.i501.preheader:                      ; preds = %.noexc516
  %i.ke = add i64 %i.jr, -8
  %i.kf = sub i64 %i.ke, %i.js                    ; 3 uses
  %i.kg = lshr i64 %i.kf, 3
  %i.kh = add nuw nsw i64 %i.kg, 1                ; 2 uses
  %min.iters.check799 = icmp ult i64 %i.kf, 136
  br i1 %min.iters.check799, label %.lr.ph.i.i.i.i501.preheader817, label %vector.memcheck800

vector.memcheck800:                               ; preds = %.lr.ph.i.i.i.i501.preheader
  %i.ki = and i64 %i.kf, -8
  %i.kj = add i64 %i.ki, 8                        ; 2 uses
  %i.kk = getelementptr i8, ptr %i.kb, i64 %i.kj
  %i.kl = getelementptr i8, ptr %i.jq, i64 %i.kj
  %bound0801 = icmp ult ptr %i.kb, %i.kl
  %bound1802 = icmp ult ptr %i.jq, %i.kk
  %found.conflict803 = and i1 %bound0801, %bound1802
  br i1 %found.conflict803, label %.lr.ph.i.i.i.i501.preheader817, label %vector.ph804

vector.ph804:                                     ; preds = %vector.memcheck800
  %n.vec805 = and i64 %i.kh, 4611686018427387900  ; 3 uses
  %i.km = shl i64 %n.vec805, 3                    ; 2 uses
  %i.kn = getelementptr i8, ptr %i.kb, i64 %i.km  ; 2 uses
  %i.ko = getelementptr i8, ptr %i.jq, i64 %i.km
  br label %vector.body806

vector.body806:                                   ; preds = %vector.body806, %vector.ph804
  %index807 = phi i64 [ 0, %vector.ph804 ], [ %index.next812, %vector.body806 ] ; 2 uses
  %i.kp = shl i64 %index807, 3                    ; 2 uses
  %next.gep808 = getelementptr i8, ptr %i.kb, i64 %i.kp ; 2 uses
  %next.gep809 = getelementptr i8, ptr %i.jq, i64 %i.kp ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  call void @llvm.experimental.noalias.scope.decl(metadata !1165)
  %i.kq = getelementptr i8, ptr %next.gep809, i64 16
  %wide.load810 = load <2 x i64>, ptr %next.gep809, align 8, !tbaa !210, !alias.scope !1166
  %wide.load811 = load <2 x i64>, ptr %i.kq, align 8, !tbaa !210, !alias.scope !1166
  %i.kr = getelementptr i8, ptr %next.gep808, i64 16
  store <2 x i64> %wide.load810, ptr %next.gep808, align 8, !tbaa !210, !alias.scope !1167, !noalias !1168
  store <2 x i64> %wide.load811, ptr %i.kr, align 8, !tbaa !210, !alias.scope !1167, !noalias !1168
  %58 = getelementptr i8, ptr %next.gep809, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep809, align 8, !tbaa !210, !alias.scope !1166
  store <2 x ptr> splat (ptr null), ptr %58, align 8, !tbaa !210, !alias.scope !1166
  %index.next812 = add nuw i64 %index807, 4       ; 2 uses
  %i.ks = icmp eq i64 %index.next812, %n.vec805
  br i1 %i.ks, label %middle.block813, label %vector.body806, !llvm.loop !1150

middle.block813:                                  ; preds = %vector.body806
  %cmp.n814 = icmp eq i64 %i.kh, %n.vec805
  br i1 %cmp.n814, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i512, label %.lr.ph.i.i.i.i501.preheader817

.lr.ph.i.i.i.i501.preheader817:                   ; preds = %vector.memcheck800, %.lr.ph.i.i.i.i501.preheader, %middle.block813
  %.012.i.i.i.i502.ph = phi ptr [ %i.kb, %vector.memcheck800 ], [ %i.kb, %.lr.ph.i.i.i.i501.preheader ], [ %i.kn, %middle.block813 ]
  %.0911.i.i.i.i503.ph = phi ptr [ %i.jq, %vector.memcheck800 ], [ %i.jq, %.lr.ph.i.i.i.i501.preheader ], [ %i.ko, %middle.block813 ]
  br label %.lr.ph.i.i.i.i501

.lr.ph.i.i.i.i501:                                ; preds = %.lr.ph.i.i.i.i501.preheader817, %.lr.ph.i.i.i.i501
  %.012.i.i.i.i502 = phi ptr [ %i.kv, %.lr.ph.i.i.i.i501 ], [ %.012.i.i.i.i502.ph, %.lr.ph.i.i.i.i501.preheader817 ] ; 2 uses
  %.0911.i.i.i.i503 = phi ptr [ %i.ku, %.lr.ph.i.i.i.i501 ], [ %.0911.i.i.i.i503.ph, %.lr.ph.i.i.i.i501.preheader817 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  call void @llvm.experimental.noalias.scope.decl(metadata !1165)
  %i.kt = load i64, ptr %.0911.i.i.i.i503, align 8, !tbaa !210, !alias.scope !1165
  store i64 %i.kt, ptr %.012.i.i.i.i502, align 8, !tbaa !210, !alias.scope !1164
  store ptr null, ptr %.0911.i.i.i.i503, align 8, !tbaa !210, !alias.scope !1165
  %i.ku = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i503, i64 8 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i502, i64 8 ; 2 uses
  %.not.i.i.i.i504 = icmp eq ptr %i.ku, %i.jl
  br i1 %.not.i.i.i.i504, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i512, label %.lr.ph.i.i.i.i501, !llvm.loop !1151

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i512: ; preds = %.lr.ph.i.i.i.i501, %middle.block813, %.noexc516
  %.0.lcssa.i.i.i.i506 = phi ptr [ %i.kb, %.noexc516 ], [ %i.kn, %middle.block813 ], [ %i.kv, %.lr.ph.i.i.i.i501 ]
  %i.kw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i506, i64 8
  %.not.i23.i514 = icmp eq ptr %i.jq, null
  br i1 %.not.i23.i514, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit230, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i512
  %i.kx = load ptr, ptr %i.jm, align 8, !tbaa !214
  %i.ky = ptrtoint ptr %i.kx to i64
  %i.kz = sub i64 %i.ky, %i.js
  call void @_ZdlPvm(ptr noundef nonnull %i.jq, i64 noundef %i.kz) #23
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit230

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit230: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i512, %bb.z
  store ptr %i.kb, ptr %i.jg, align 8, !tbaa !215
  store ptr %i.kw, ptr %i.jk, align 8, !tbaa !213
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %i.jz
  store ptr %i.la, ptr %i.jm, align 8, !tbaa !214
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit233

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit233: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit230, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit230.thread
  %i.lb = load ptr, ptr %22, align 8, !tbaa !51   ; 2 uses
  %i.lc = icmp eq ptr %i.lb, %i.jh
  br i1 %i.lc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit233
  %i.ld = load i64, ptr %i.jh, align 8, !tbaa !48
  %i.le = add i64 %i.ld, 1
  call void @_ZdlPvm(ptr noundef %i.lb, i64 noundef %i.le) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit233, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  %i.lf = load ptr, ptr %i.hu, align 8, !tbaa !150
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !232
  %i.li = getelementptr inbounds i8, ptr %i.lh, i64 -8
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !210
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  %i.lk = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  store ptr %i.lk, ptr %23, align 8, !tbaa !47
  store i8 100, ptr %i.lk, align 8, !tbaa !48
  %i.ll = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 1, ptr %i.ll, align 8, !tbaa !50
  %i.lm = getelementptr inbounds nuw i8, ptr %23, i64 17
  store i8 0, ptr %i.lm, align 1, !tbaa !48
  %i.ln = getelementptr inbounds nuw i8, ptr %23, i64 32 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %23, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ln, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZL14parse_platformN5vcpkg10StringViewE(ptr dead_on_unwind noalias writable align 8 %i.lo, ptr nonnull @.str.417, i64 5)
          to label %bb.aa unwind label %bb.cr

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lj, i64 56
  %i.lq = getelementptr inbounds nuw i8, ptr %23, i64 64
  store i32 0, ptr %i.lq, align 8, !tbaa !72
  %i.lr = getelementptr inbounds nuw i8, ptr %23, i64 72
  call void @_ZN5vcpkg7VersionC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.lr) #22
  %i.ls = getelementptr inbounds nuw i8, ptr %23, i64 112
  store i8 0, ptr %i.ls, align 8, !tbaa !94
  %i.lt = getelementptr inbounds nuw i8, ptr %23, i64 113
  store i8 1, ptr %i.lt, align 1, !tbaa !95
  %i.lu = getelementptr inbounds nuw i8, ptr %23, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lu, i8 0, i64 24, i1 false)
  %i.lv = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.lp, ptr noundef nonnull align 8 dereferenceable(144) %23)
          to label %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit242 unwind label %bb.cs ; 0 uses

_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit242: ; preds = %bb.aa
  call void @_ZN5vcpkg10DependencyD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  %i.lw = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.lw, ptr %24, align 8, !tbaa !47
  store i8 100, ptr %i.lw, align 8, !tbaa !48
  %i.lx = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 1, ptr %i.lx, align 8, !tbaa !50
  %i.ly = getelementptr inbounds nuw i8, ptr %24, i64 17
  store i8 0, ptr %i.ly, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %25, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit248 unwind label %bb.ct

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit248:       ; preds = %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit242
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr @.str.123, ptr %1, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i249 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i249, align 8, !tbaa !56
  %i.lz = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(36) %25, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %1)
          to label %bb.ab unwind label %bb.cu     ; 0 uses

bb.ab:                                            ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit248
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.ma = load ptr, ptr %25, align 8, !tbaa !51   ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.mc = icmp eq ptr %i.ma, %i.mb
  br i1 %i.mc, label %_ZN5vcpkg7VersionD2Ev.exit254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i252: ; preds = %bb.ab
  %i.md = load i64, ptr %i.mb, align 8, !tbaa !48
  %i.me = add i64 %i.md, 1
  call void @_ZdlPvm(ptr noundef %i.ma, i64 noundef %i.me) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit254

_ZN5vcpkg7VersionD2Ev.exit254:                    ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i252
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  %i.mf = load ptr, ptr %24, align 8, !tbaa !51   ; 2 uses
  %i.mg = icmp eq ptr %i.mf, %i.lw
  br i1 %i.mg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255: ; preds = %_ZN5vcpkg7VersionD2Ev.exit254
  %i.mh = load i64, ptr %i.lw, align 8, !tbaa !48
  %i.mi = add i64 %i.mh, 1
  call void @_ZdlPvm(ptr noundef %i.mf, i64 noundef %i.mi) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257: ; preds = %_ZN5vcpkg7VersionD2Ev.exit254, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5vcpkg4Test20MockCMakeVarProviderE, i64 16), ptr %26, align 8, !tbaa !33
  %i.mj = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %26, i64 56
  store ptr %i.mk, ptr %i.mj, align 8, !tbaa !64
  %i.ml = getelementptr inbounds nuw i8, ptr %26, i64 16
  store i64 1, ptr %i.ml, align 8, !tbaa !65
  %i.mm = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.mn = getelementptr inbounds nuw i8, ptr %26, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mm, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.mn, align 8, !tbaa !66
  %i.mo = getelementptr inbounds nuw i8, ptr %26, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mo, i8 0, i64 16, i1 false)
  %i.mp = getelementptr inbounds nuw i8, ptr %26, i64 64
  %i.mq = getelementptr inbounds nuw i8, ptr %26, i64 112
  store ptr %i.mq, ptr %i.mp, align 8, !tbaa !64
  %i.mr = getelementptr inbounds nuw i8, ptr %26, i64 72
  store i64 1, ptr %i.mr, align 8, !tbaa !65
  %i.ms = getelementptr inbounds nuw i8, ptr %26, i64 80
  %i.mt = getelementptr inbounds nuw i8, ptr %26, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ms, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.mt, align 8, !tbaa !66
  %i.mu = getelementptr inbounds nuw i8, ptr %26, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mu, i8 0, i64 16, i1 false)
  %i.mv = getelementptr inbounds nuw i8, ptr %26, i64 120
  %i.mw = getelementptr inbounds nuw i8, ptr %26, i64 168
  store ptr %i.mw, ptr %i.mv, align 8, !tbaa !68
  %i.mx = getelementptr inbounds nuw i8, ptr %26, i64 128
  store i64 1, ptr %i.mx, align 8, !tbaa !69
  %i.my = getelementptr inbounds nuw i8, ptr %26, i64 136
  %i.mz = getelementptr inbounds nuw i8, ptr %26, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.my, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.mz, align 8, !tbaa !66
  %i.na = getelementptr inbounds nuw i8, ptr %26, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.na, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  invoke void @_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA24_KcRA6_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISF_SG_EEEbE4typeELb1EEEOSF_OSG_(ptr noundef nonnull align 8 dereferenceable(64) %27, ptr noundef nonnull align 1 dereferenceable(24) @.str.414, ptr noundef nonnull align 1 dereferenceable(6) @.str.418)
          to label %_ZN5vcpkg11PackageSpecC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7TripletE.exit unwind label %bb.cv

_ZN5vcpkg11PackageSpecC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7TripletE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  %i.nb = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 8 uses
  store i8 97, ptr %i.nb, align 8, !tbaa !48
  %i.nc = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.nd = getelementptr inbounds nuw i8, ptr %29, i64 17
  store i8 0, ptr %i.nd, align 1, !tbaa !48
  %.sroa.09.0.copyload = load ptr, ptr @_ZN5vcpkg4Test11X86_WINDOWSE, align 8, !tbaa !230
  %i.ne = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  store ptr %i.ne, ptr %28, align 8, !tbaa !47
  %i.nf = load i16, ptr %i.nb, align 8
  store i16 %i.nf, ptr %i.ne, align 8
  %i.ng = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 1, ptr %i.ng, align 8, !tbaa !50
  store ptr %i.nb, ptr %29, align 8, !tbaa !51
  store i64 0, ptr %i.nc, align 8, !tbaa !50
  store i8 0, ptr %i.nb, align 8, !tbaa !48
end_hunk_8
begin_hunk_9_@_ZL21C_A_T_C_H_T_E_S_T_117v:bb.a
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !50
  %i.ai = load i64, ptr %i.q, align 8, !tbaa !48
  store i64 %i.ai, ptr %i.n, align 8, !tbaa !48
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.m, ptr %3, align 8, !tbaa !51
  store i64 %i.ae, ptr %i.q, align 8, !tbaa !48
  br label %_ZN5vcpkg7VersionaSEOS0_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.q, ptr %3, align 8, !tbaa !51
  br label %_ZN5vcpkg7VersionaSEOS0_.exit

_ZN5vcpkg7VersionaSEOS0_.exit:                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.g, %bb.h
  %i.aj = phi ptr [ %i.m, %bb.g ], [ %i.q, %bb.h ], [ %i.p, %bb.c ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ak, align 8, !tbaa !50
  store i8 0, ptr %i.aj, align 1, !tbaa !48
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.am = load i32, ptr %i.al, align 8, !tbaa !54
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i32 %i.am, ptr %i.an, align 8, !tbaa !54
  %i.ao = load ptr, ptr %4, align 8, !tbaa !51    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.h
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZN5vcpkg7VersionaSEOS0_.exit
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !48
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5vcpkg7VersionaSEOS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.as = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZN5vcpkg7VersionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = load i64, ptr %i.at, align 8, !tbaa !48
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit

_ZN5vcpkg7VersionD2Ev.exit:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV29MockVersionedPortfileProvider, i64 16), ptr %5, align 8, !tbaa !33
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store i32 0, ptr %i.ax, align 8, !tbaa !41
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr null, ptr %i.ay, align 8, !tbaa !40
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.ax, ptr %i.az, align 8, !tbaa !42
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.ax, ptr %i.ba, align 8, !tbaa !43
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 0, ptr %i.bb, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.bc, ptr %6, align 8, !tbaa !47
  store i8 97, ptr %i.bc, align 8, !tbaa !48
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.bd, align 8, !tbaa !50
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 0, ptr %i.be, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit95 unwind label %bb.au

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit95:        ; preds = %_ZN5vcpkg7VersionD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr @.str.123, ptr %1, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !56
  %i.bf = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef 4, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %1)
          to label %bb.i unwind label %bb.av      ; 4 uses

bb.i:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit95
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.bg = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZN5vcpkg7VersionD2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i97: ; preds = %bb.i
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !48
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit99

_ZN5vcpkg7VersionD2Ev.exit99:                     ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.bl = load ptr, ptr %6, align 8, !tbaa !51    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.bc
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %_ZN5vcpkg7VersionD2Ev.exit99
  %i.bn = load i64, ptr %i.bc, align 8, !tbaa !48
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %_ZN5vcpkg7VersionD2Ev.exit99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.bp = load ptr, ptr %i.bf, align 8, !tbaa !150 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.br, ptr %9, align 8, !tbaa !47
  store i8 120, ptr %i.br, align 8, !tbaa !48
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 1, ptr %i.bs, align 8, !tbaa !50
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 17
  store i8 0, ptr %i.bt, align 1, !tbaa !48
  invoke fastcc void @_ZL9make_fpghNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef align 8 %9)
          to label %bb.j unwind label %bb.aw

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !213 ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 24 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !214
  %.not.i.i107 = icmp eq ptr %i.bv, %i.bx
  br i1 %.not.i.i107, label %bb.k, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.j
  %i.by = load i64, ptr %8, align 8, !tbaa !210
  store i64 %i.by, ptr %i.bv, align 8, !tbaa !210
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.bz, ptr %i.bu, align 8, !tbaa !213
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.ca = load ptr, ptr %i.bq, align 8, !tbaa !215 ; 10 uses
  %i.cb = ptrtoint ptr %i.bv to i64               ; 2 uses
  %i.cc = ptrtoint ptr %i.ca to i64               ; 3 uses
  %i.cd = sub i64 %i.cb, %i.cc                    ; 3 uses
  %i.ce = icmp eq i64 %i.cd, 9223372036854775800
  br i1 %i.ce, label %bb.l, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc218 unwind label %bb.ax

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
          to label %.noexc219 unwind label %bb.ax ; 10 uses

.noexc219:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cd
  %i.cn = load i64, ptr %8, align 8, !tbaa !210
  store i64 %i.cn, ptr %i.cm, align 8, !tbaa !210
  %.not10.i.i.i.i = icmp eq ptr %i.ca, %i.bv
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc219
  %i.co = add i64 %i.cb, -8
  %i.cp = sub i64 %i.co, %i.cc                    ; 3 uses
  %i.cq = lshr i64 %i.cp, 3
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cp, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader442, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.cs = and i64 %i.cp, -8
  %i.ct = add i64 %i.cs, 8                        ; 2 uses
  %i.cu = getelementptr i8, ptr %i.cl, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.ca, i64 %i.ct
  %bound0 = icmp ult ptr %i.cl, %i.cv
  %bound1 = icmp ult ptr %i.ca, %i.cu
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader442, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cr, 4611686018427387900     ; 3 uses
  %i.cw = shl i64 %n.vec, 3                       ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cl, i64 %i.cw  ; 2 uses
  %i.cy = getelementptr i8, ptr %i.ca, i64 %i.cw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cz = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cl, i64 %i.cz ; 2 uses
  %next.gep388 = getelementptr i8, ptr %i.ca, i64 %i.cz ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  %i.da = getelementptr i8, ptr %next.gep388, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep388, align 8, !tbaa !210, !alias.scope !1198
  %wide.load389 = load <2 x i64>, ptr %i.da, align 8, !tbaa !210, !alias.scope !1198
  %i.db = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !210, !alias.scope !1199, !noalias !1200
  store <2 x i64> %wide.load389, ptr %i.db, align 8, !tbaa !210, !alias.scope !1199, !noalias !1200
  %34 = getelementptr i8, ptr %next.gep388, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep388, align 8, !tbaa !210, !alias.scope !1198
  store <2 x ptr> splat (ptr null), ptr %34, align 8, !tbaa !210, !alias.scope !1198
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !1176

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader442

.lr.ph.i.i.i.i.preheader442:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.cl, %vector.memcheck ], [ %i.cl, %.lr.ph.i.i.i.i.preheader ], [ %i.cx, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ca, %vector.memcheck ], [ %i.ca, %.lr.ph.i.i.i.i.preheader ], [ %i.cy, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader442, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.df, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader442 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader442 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  call void @llvm.experimental.noalias.scope.decl(metadata !1197)
  %i.dd = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !210, !alias.scope !1197
  store i64 %i.dd, ptr %.012.i.i.i.i, align 8, !tbaa !210, !alias.scope !1196
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !210, !alias.scope !1197
  %i.de = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.de, %i.bv
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1177

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc219
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cl, %.noexc219 ], [ %i.cx, %middle.block ], [ %i.df, %.lr.ph.i.i.i.i ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ca, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.dh = load ptr, ptr %i.bw, align 8, !tbaa !214
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = sub i64 %i.di, %i.cc
  call void @_ZdlPvm(ptr noundef nonnull %i.ca, i64 noundef %i.dj) #23
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.m
  store ptr %i.cl, ptr %i.bq, align 8, !tbaa !215
  store ptr %i.dg, ptr %i.bu, align 8, !tbaa !213
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cj
  store ptr %i.dk, ptr %i.bw, align 8, !tbaa !214
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread
  %i.dl = load ptr, ptr %9, align 8, !tbaa !51    ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.br
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit
  %i.dn = load i64, ptr %i.br, align 8, !tbaa !48
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.dp = load ptr, ptr %i.bf, align 8, !tbaa !150
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !232
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !210
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.dv = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 11 uses
  store ptr %i.dv, ptr %11, align 8, !tbaa !47
  store i8 97, ptr %i.dv, align 8, !tbaa !48
  %i.dw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i64 1, ptr %i.dw, align 8, !tbaa !50
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 17
  store i8 0, ptr %i.dx, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.dy = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.dy, ptr %13, align 8, !tbaa !47
  store i8 121, ptr %i.dy, align 8, !tbaa !48
  %i.dz = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 1, ptr %i.dz, align 8, !tbaa !50
  %i.ea = getelementptr inbounds nuw i8, ptr %13, i64 17
  store i8 0, ptr %i.ea, align 1, !tbaa !48
  %i.eb = getelementptr inbounds nuw i8, ptr %13, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.eb) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.ec = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24
          to label %_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i unwind label %.thread ; 5 uses

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  %i.ee = getelementptr inbounds nuw i8, ptr %13, i64 40
  store ptr %i.ec, ptr %12, align 8, !tbaa !218
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 40 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !219
  %i.eh = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN5vcpkg26DependencyRequestedFeatureEPS1_ET0_T_S6_S5_(ptr noundef nonnull %13, ptr noundef nonnull %i.ee, ptr noundef nonnull %i.ec)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef 40) #23
  br label %.body

bb.o:                                             ; preds = %_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #22
  %i.ej = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.ej, ptr %10, align 8, !tbaa !47
  %i.ek = load ptr, ptr %11, align 8, !tbaa !51   ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.dv
  br i1 %i.el, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120

bb.p:                                             ; preds = %bb.o
  %i.em = load i64, ptr %i.dw, align 8, !tbaa !50 ; 3 uses
  %i.en = icmp ult i64 %i.em, 16
  call void @llvm.assume(i1 %i.en)
  %i.eo = add nuw nsw i64 %i.em, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ej, ptr noundef nonnull align 8 dereferenceable(1) %i.dv, i64 %i.eo, i1 false)
  br label %_ZN14CoreDependencyC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS8_EENS7_18PlatformExpression4ExprE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120: ; preds = %bb.o
  store ptr %i.ek, ptr %10, align 8, !tbaa !51
  %i.ep = load i64, ptr %i.dv, align 8, !tbaa !48
  store i64 %i.ep, ptr %i.ej, align 8, !tbaa !48
  %.pre = load i64, ptr %i.dw, align 8, !tbaa !50
  br label %_ZN14CoreDependencyC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS8_EENS7_18PlatformExpression4ExprE.exit

_ZN14CoreDependencyC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS8_EENS7_18PlatformExpression4ExprE.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120
  %i.eq = phi i64 [ %i.em, %bb.p ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i120 ]
  %i.er = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !50
  store ptr %i.dv, ptr %11, align 8, !tbaa !51
  store i64 0, ptr %i.dw, align 8, !tbaa !50
  store i8 0, ptr %i.dv, align 8, !tbaa !48
  %i.es = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.ec, ptr %i.es, align 8, !tbaa !218
  %i.et = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr %i.eh, ptr %i.et, align 8, !tbaa !220
  %i.eu = getelementptr inbounds nuw i8, ptr %10, i64 48
  store ptr %i.ef, ptr %i.eu, align 8, !tbaa !219
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.ev = getelementptr inbounds nuw i8, ptr %10, i64 56
  call void @_ZN5vcpkg18PlatformExpression4ExprC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.ev, ptr noundef nonnull align 8 dereferenceable(8) %14) #22
  %i.ew = getelementptr inbounds nuw i8, ptr %10, i64 64
  store i32 0, ptr %i.ew, align 8, !tbaa !72
  %i.ex = getelementptr inbounds nuw i8, ptr %10, i64 72
  call void @_ZN5vcpkg7VersionC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.ex) #22
  %i.ey = getelementptr inbounds nuw i8, ptr %10, i64 112
  store i8 0, ptr %i.ey, align 8, !tbaa !94
  %i.ez = getelementptr inbounds nuw i8, ptr %10, i64 113
  %i.fa = getelementptr inbounds nuw i8, ptr %10, i64 120
  store i8 0, ptr %i.ez, align 1, !tbaa !95
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, i8 0, i64 24, i1 false)
  %i.fb = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.du, ptr noundef nonnull align 8 dereferenceable(144) %10)
          to label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EED2Ev.exit unwind label %bb.az ; 0 uses

_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EED2Ev.exit: ; preds = %_ZN14CoreDependencyC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS8_EENS7_18PlatformExpression4ExprE.exit
  call void @_ZN5vcpkg10DependencyD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %10) #22
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #22
  %i.fc = getelementptr inbounds nuw i8, ptr %13, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.fc) #22
  %i.fd = load ptr, ptr %13, align 8, !tbaa !51   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i123: ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EED2Ev.exit
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !48
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #23
  br label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit

_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit:   ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.fi = load ptr, ptr %11, align 8, !tbaa !51   ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.dv
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125: ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit
  %i.fk = load i64, ptr %i.dv, align 8, !tbaa !48
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fl) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127: ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  %i.fm = load ptr, ptr %i.bf, align 8, !tbaa !150 ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.fo = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.fo, ptr %16, align 8, !tbaa !47
  store i8 121, ptr %i.fo, align 8, !tbaa !48
  %i.fp = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 1, ptr %i.fp, align 8, !tbaa !50
  %i.fq = getelementptr inbounds nuw i8, ptr %16, i64 17
  store i8 0, ptr %i.fq, align 1, !tbaa !48
  invoke fastcc void @_ZL9make_fpghNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %15, ptr noundef align 8 %16)
          to label %bb.q unwind label %bb.ba

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit127
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fm, i64 16 ; 3 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !213 ; 6 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fm, i64 24 ; 3 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !214
  %.not.i.i132 = icmp eq ptr %i.fs, %i.fu
  br i1 %.not.i.i132, label %bb.r, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit134.thread

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit134.thread: ; preds = %bb.q
  %i.fv = load i64, ptr %15, align 8, !tbaa !210
  store i64 %i.fv, ptr %i.fs, align 8, !tbaa !210
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store ptr %i.fw, ptr %i.fr, align 8, !tbaa !213
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit137

bb.r:                                             ; preds = %bb.q
  %i.fx = load ptr, ptr %i.fn, align 8, !tbaa !215 ; 10 uses
  %i.fy = ptrtoint ptr %i.fs to i64               ; 2 uses
  %i.fz = ptrtoint ptr %i.fx to i64               ; 3 uses
  %i.ga = sub i64 %i.fy, %i.fz                    ; 3 uses
  %i.gb = icmp eq i64 %i.ga, 9223372036854775800
  br i1 %i.gb, label %bb.s, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i220

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc238 unwind label %bb.bb

.noexc238:                                        ; preds = %bb.s
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i220: ; preds = %bb.r
  %i.gc = ashr exact i64 %i.ga, 3                 ; 3 uses
  %.sroa.speculated.i.i221 = call i64 @llvm.umax.i64(i64 %i.gc, i64 1)
  %i.gd = add nsw i64 %.sroa.speculated.i.i221, %i.gc ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.gc
  %i.gf = call i64 @llvm.umin.i64(i64 %i.gd, i64 1152921504606846975)
  %i.gg = select i1 %i.ge, i64 1152921504606846975, i64 %i.gf ; 3 uses
  %.not.i.i222 = icmp ne i64 %i.gg, 0
  call void @llvm.assume(i1 %.not.i.i222)
  %i.gh = shl nuw nsw i64 %i.gg, 3
  %i.gi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gh) #24
          to label %.noexc239 unwind label %bb.bb ; 10 uses

.noexc239:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i220
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.ga
  %i.gk = load i64, ptr %15, align 8, !tbaa !210
  store i64 %i.gk, ptr %i.gj, align 8, !tbaa !210
  %.not10.i.i.i.i223 = icmp eq ptr %i.fx, %i.fs
  br i1 %.not10.i.i.i.i223, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i235, label %.lr.ph.i.i.i.i224.preheader

.lr.ph.i.i.i.i224.preheader:                      ; preds = %.noexc239
  %i.gl = add i64 %i.fy, -8
  %i.gm = sub i64 %i.gl, %i.fz                    ; 3 uses
  %i.gn = lshr i64 %i.gm, 3
  %i.go = add nuw nsw i64 %i.gn, 1                ; 2 uses
  %min.iters.check397 = icmp ult i64 %i.gm, 136
  br i1 %min.iters.check397, label %.lr.ph.i.i.i.i224.preheader440, label %vector.memcheck398

vector.memcheck398:                               ; preds = %.lr.ph.i.i.i.i224.preheader
  %i.gp = and i64 %i.gm, -8
  %i.gq = add i64 %i.gp, 8                        ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gi, i64 %i.gq
  %i.gs = getelementptr i8, ptr %i.fx, i64 %i.gq
  %bound0399 = icmp ult ptr %i.gi, %i.gs
  %bound1400 = icmp ult ptr %i.fx, %i.gr
  %found.conflict401 = and i1 %bound0399, %bound1400
  br i1 %found.conflict401, label %.lr.ph.i.i.i.i224.preheader440, label %vector.ph402

vector.ph402:                                     ; preds = %vector.memcheck398
  %n.vec403 = and i64 %i.go, 4611686018427387900  ; 3 uses
  %i.gt = shl i64 %n.vec403, 3                    ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gi, i64 %i.gt  ; 2 uses
  %i.gv = getelementptr i8, ptr %i.fx, i64 %i.gt
  br label %vector.body404

vector.body404:                                   ; preds = %vector.body404, %vector.ph402
  %index405 = phi i64 [ 0, %vector.ph402 ], [ %index.next410, %vector.body404 ] ; 2 uses
  %i.gw = shl i64 %index405, 3                    ; 2 uses
  %next.gep406 = getelementptr i8, ptr %i.gi, i64 %i.gw ; 2 uses
  %next.gep407 = getelementptr i8, ptr %i.fx, i64 %i.gw ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  %i.gx = getelementptr i8, ptr %next.gep407, i64 16
  %wide.load408 = load <2 x i64>, ptr %next.gep407, align 8, !tbaa !210, !alias.scope !1203
  %wide.load409 = load <2 x i64>, ptr %i.gx, align 8, !tbaa !210, !alias.scope !1203
  %i.gy = getelementptr i8, ptr %next.gep406, i64 16
  store <2 x i64> %wide.load408, ptr %next.gep406, align 8, !tbaa !210, !alias.scope !1204, !noalias !1205
  store <2 x i64> %wide.load409, ptr %i.gy, align 8, !tbaa !210, !alias.scope !1204, !noalias !1205
  %35 = getelementptr i8, ptr %next.gep407, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep407, align 8, !tbaa !210, !alias.scope !1203
  store <2 x ptr> splat (ptr null), ptr %35, align 8, !tbaa !210, !alias.scope !1203
  %index.next410 = add nuw i64 %index405, 4       ; 2 uses
  %i.gz = icmp eq i64 %index.next410, %n.vec403
  br i1 %i.gz, label %middle.block411, label %vector.body404, !llvm.loop !1184

middle.block411:                                  ; preds = %vector.body404
  %cmp.n412 = icmp eq i64 %i.go, %n.vec403
  br i1 %cmp.n412, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i235, label %.lr.ph.i.i.i.i224.preheader440

.lr.ph.i.i.i.i224.preheader440:                   ; preds = %vector.memcheck398, %.lr.ph.i.i.i.i224.preheader, %middle.block411
  %.012.i.i.i.i225.ph = phi ptr [ %i.gi, %vector.memcheck398 ], [ %i.gi, %.lr.ph.i.i.i.i224.preheader ], [ %i.gu, %middle.block411 ]
  %.0911.i.i.i.i226.ph = phi ptr [ %i.fx, %vector.memcheck398 ], [ %i.fx, %.lr.ph.i.i.i.i224.preheader ], [ %i.gv, %middle.block411 ]
  br label %.lr.ph.i.i.i.i224

.lr.ph.i.i.i.i224:                                ; preds = %.lr.ph.i.i.i.i224.preheader440, %.lr.ph.i.i.i.i224
  %.012.i.i.i.i225 = phi ptr [ %i.hc, %.lr.ph.i.i.i.i224 ], [ %.012.i.i.i.i225.ph, %.lr.ph.i.i.i.i224.preheader440 ] ; 2 uses
  %.0911.i.i.i.i226 = phi ptr [ %i.hb, %.lr.ph.i.i.i.i224 ], [ %.0911.i.i.i.i226.ph, %.lr.ph.i.i.i.i224.preheader440 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  %i.ha = load i64, ptr %.0911.i.i.i.i226, align 8, !tbaa !210, !alias.scope !1202
  store i64 %i.ha, ptr %.012.i.i.i.i225, align 8, !tbaa !210, !alias.scope !1201
  store ptr null, ptr %.0911.i.i.i.i226, align 8, !tbaa !210, !alias.scope !1202
  %i.hb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i226, i64 8 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i225, i64 8 ; 2 uses
  %.not.i.i.i.i227 = icmp eq ptr %i.hb, %i.fs
  br i1 %.not.i.i.i.i227, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i235, label %.lr.ph.i.i.i.i224, !llvm.loop !1185

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i235: ; preds = %.lr.ph.i.i.i.i224, %middle.block411, %.noexc239
  %.0.lcssa.i.i.i.i229 = phi ptr [ %i.gi, %.noexc239 ], [ %i.gu, %middle.block411 ], [ %i.hc, %.lr.ph.i.i.i.i224 ]
  %i.hd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i229, i64 8
  %.not.i23.i237 = icmp eq ptr %i.fx, null
  br i1 %.not.i23.i237, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit134, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i235
  %i.he = load ptr, ptr %i.ft, align 8, !tbaa !214
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = sub i64 %i.hf, %i.fz
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.hg) #23
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit134

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit134: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i235, %bb.t
  store ptr %i.gi, ptr %i.fn, align 8, !tbaa !215
  store ptr %i.hd, ptr %i.fr, align 8, !tbaa !213
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.gg
  store ptr %i.hh, ptr %i.ft, align 8, !tbaa !214
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit137

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit137: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit134, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit134.thread
  %i.hi = load ptr, ptr %16, align 8, !tbaa !51   ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.fo
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit137
  %i.hk = load i64, ptr %i.fo, align 8, !tbaa !48
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hl) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.hm = load ptr, ptr %i.bf, align 8, !tbaa !150 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.ho = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.ho, ptr %18, align 8, !tbaa !47
  store i8 122, ptr %i.ho, align 8, !tbaa !48
  %i.hp = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 1, ptr %i.hp, align 8, !tbaa !50
  %i.hq = getelementptr inbounds nuw i8, ptr %18, i64 17
  store i8 0, ptr %i.hq, align 1, !tbaa !48
  invoke fastcc void @_ZL9make_fpghNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %17, ptr noundef align 8 %18)
          to label %bb.u unwind label %bb.bd

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hm, i64 16 ; 3 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !213 ; 6 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hm, i64 24 ; 3 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !214
  %.not.i.i145 = icmp eq ptr %i.hs, %i.hu
  br i1 %.not.i.i145, label %bb.v, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit147.thread

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit147.thread: ; preds = %bb.u
  %i.hv = load i64, ptr %17, align 8, !tbaa !210
  store i64 %i.hv, ptr %i.hs, align 8, !tbaa !210
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store ptr %i.hw, ptr %i.hr, align 8, !tbaa !213
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit150

bb.v:                                             ; preds = %bb.u
  %i.hx = load ptr, ptr %i.hn, align 8, !tbaa !215 ; 10 uses
  %i.hy = ptrtoint ptr %i.hs to i64               ; 2 uses
  %i.hz = ptrtoint ptr %i.hx to i64               ; 3 uses
  %i.ia = sub i64 %i.hy, %i.hz                    ; 3 uses
  %i.ib = icmp eq i64 %i.ia, 9223372036854775800
  br i1 %i.ib, label %bb.w, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i241

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc259 unwind label %bb.be

.noexc259:                                        ; preds = %bb.w
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i241: ; preds = %bb.v
  %i.ic = ashr exact i64 %i.ia, 3                 ; 3 uses
  %.sroa.speculated.i.i242 = call i64 @llvm.umax.i64(i64 %i.ic, i64 1)
  %i.id = add nsw i64 %.sroa.speculated.i.i242, %i.ic ; 2 uses
  %i.ie = icmp ult i64 %i.id, %i.ic
  %i.if = call i64 @llvm.umin.i64(i64 %i.id, i64 1152921504606846975)
  %i.ig = select i1 %i.ie, i64 1152921504606846975, i64 %i.if ; 3 uses
  %.not.i.i243 = icmp ne i64 %i.ig, 0
  call void @llvm.assume(i1 %.not.i.i243)
  %i.ih = shl nuw nsw i64 %i.ig, 3
  %i.ii = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ih) #24
          to label %.noexc260 unwind label %bb.be ; 10 uses

.noexc260:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i241
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.ia
  %i.ik = load i64, ptr %17, align 8, !tbaa !210
  store i64 %i.ik, ptr %i.ij, align 8, !tbaa !210
  %.not10.i.i.i.i244 = icmp eq ptr %i.hx, %i.hs
  br i1 %.not10.i.i.i.i244, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i256, label %.lr.ph.i.i.i.i245.preheader

.lr.ph.i.i.i.i245.preheader:                      ; preds = %.noexc260
  %i.il = add i64 %i.hy, -8
  %i.im = sub i64 %i.il, %i.hz                    ; 3 uses
  %i.in = lshr i64 %i.im, 3
  %i.io = add nuw nsw i64 %i.in, 1                ; 2 uses
  %min.iters.check421 = icmp ult i64 %i.im, 136
  br i1 %min.iters.check421, label %.lr.ph.i.i.i.i245.preheader439, label %vector.memcheck422

vector.memcheck422:                               ; preds = %.lr.ph.i.i.i.i245.preheader
  %i.ip = and i64 %i.im, -8
  %i.iq = add i64 %i.ip, 8                        ; 2 uses
  %i.ir = getelementptr i8, ptr %i.ii, i64 %i.iq
  %i.is = getelementptr i8, ptr %i.hx, i64 %i.iq
  %bound0423 = icmp ult ptr %i.ii, %i.is
  %bound1424 = icmp ult ptr %i.hx, %i.ir
  %found.conflict425 = and i1 %bound0423, %bound1424
  br i1 %found.conflict425, label %.lr.ph.i.i.i.i245.preheader439, label %vector.ph426

vector.ph426:                                     ; preds = %vector.memcheck422
  %n.vec427 = and i64 %i.io, 4611686018427387900  ; 3 uses
  %i.it = shl i64 %n.vec427, 3                    ; 2 uses
  %i.iu = getelementptr i8, ptr %i.ii, i64 %i.it  ; 2 uses
  %i.iv = getelementptr i8, ptr %i.hx, i64 %i.it
  br label %vector.body428

vector.body428:                                   ; preds = %vector.body428, %vector.ph426
  %index429 = phi i64 [ 0, %vector.ph426 ], [ %index.next434, %vector.body428 ] ; 2 uses
  %i.iw = shl i64 %index429, 3                    ; 2 uses
  %next.gep430 = getelementptr i8, ptr %i.ii, i64 %i.iw ; 2 uses
  %next.gep431 = getelementptr i8, ptr %i.hx, i64 %i.iw ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  %i.ix = getelementptr i8, ptr %next.gep431, i64 16
  %wide.load432 = load <2 x i64>, ptr %next.gep431, align 8, !tbaa !210, !alias.scope !1208
  %wide.load433 = load <2 x i64>, ptr %i.ix, align 8, !tbaa !210, !alias.scope !1208
  %i.iy = getelementptr i8, ptr %next.gep430, i64 16
  store <2 x i64> %wide.load432, ptr %next.gep430, align 8, !tbaa !210, !alias.scope !1209, !noalias !1210
  store <2 x i64> %wide.load433, ptr %i.iy, align 8, !tbaa !210, !alias.scope !1209, !noalias !1210
  %36 = getelementptr i8, ptr %next.gep431, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep431, align 8, !tbaa !210, !alias.scope !1208
  store <2 x ptr> splat (ptr null), ptr %36, align 8, !tbaa !210, !alias.scope !1208
  %index.next434 = add nuw i64 %index429, 4       ; 2 uses
  %i.iz = icmp eq i64 %index.next434, %n.vec427
  br i1 %i.iz, label %middle.block435, label %vector.body428, !llvm.loop !1192

middle.block435:                                  ; preds = %vector.body428
  %cmp.n436 = icmp eq i64 %i.io, %n.vec427
  br i1 %cmp.n436, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i256, label %.lr.ph.i.i.i.i245.preheader439

.lr.ph.i.i.i.i245.preheader439:                   ; preds = %vector.memcheck422, %.lr.ph.i.i.i.i245.preheader, %middle.block435
  %.012.i.i.i.i246.ph = phi ptr [ %i.ii, %vector.memcheck422 ], [ %i.ii, %.lr.ph.i.i.i.i245.preheader ], [ %i.iu, %middle.block435 ]
  %.0911.i.i.i.i247.ph = phi ptr [ %i.hx, %vector.memcheck422 ], [ %i.hx, %.lr.ph.i.i.i.i245.preheader ], [ %i.iv, %middle.block435 ]
  br label %.lr.ph.i.i.i.i245

.lr.ph.i.i.i.i245:                                ; preds = %.lr.ph.i.i.i.i245.preheader439, %.lr.ph.i.i.i.i245
  %.012.i.i.i.i246 = phi ptr [ %i.jc, %.lr.ph.i.i.i.i245 ], [ %.012.i.i.i.i246.ph, %.lr.ph.i.i.i.i245.preheader439 ] ; 2 uses
  %.0911.i.i.i.i247 = phi ptr [ %i.jb, %.lr.ph.i.i.i.i245 ], [ %.0911.i.i.i.i247.ph, %.lr.ph.i.i.i.i245.preheader439 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  %i.ja = load i64, ptr %.0911.i.i.i.i247, align 8, !tbaa !210, !alias.scope !1207
  store i64 %i.ja, ptr %.012.i.i.i.i246, align 8, !tbaa !210, !alias.scope !1206
  store ptr null, ptr %.0911.i.i.i.i247, align 8, !tbaa !210, !alias.scope !1207
  %i.jb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i247, i64 8 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i246, i64 8 ; 2 uses
  %.not.i.i.i.i248 = icmp eq ptr %i.jb, %i.hs
  br i1 %.not.i.i.i.i248, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i256, label %.lr.ph.i.i.i.i245, !llvm.loop !1193

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i256: ; preds = %.lr.ph.i.i.i.i245, %middle.block435, %.noexc260
  %.0.lcssa.i.i.i.i250 = phi ptr [ %i.ii, %.noexc260 ], [ %i.iu, %middle.block435 ], [ %i.jc, %.lr.ph.i.i.i.i245 ]
  %i.jd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i250, i64 8
  %.not.i23.i258 = icmp eq ptr %i.hx, null
  br i1 %.not.i23.i258, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit147, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i256
  %i.je = load ptr, ptr %i.ht, align 8, !tbaa !214
  %i.jf = ptrtoint ptr %i.je to i64
  %i.jg = sub i64 %i.jf, %i.hz
  call void @_ZdlPvm(ptr noundef nonnull %i.hx, i64 noundef %i.jg) #23
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit147

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit147: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i256, %bb.x
  store ptr %i.ii, ptr %i.hn, align 8, !tbaa !215
  store ptr %i.jd, ptr %i.hr, align 8, !tbaa !213
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.ig
  store ptr %i.jh, ptr %i.ht, align 8, !tbaa !214
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit150

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit150: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit147, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit147.thread
  %i.ji = load ptr, ptr %18, align 8, !tbaa !51   ; 2 uses
  %i.jj = icmp eq ptr %i.ji, %i.ho
  br i1 %i.jj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit150
  %i.jk = load i64, ptr %i.ho, align 8, !tbaa !48
  %i.jl = add i64 %i.jk, 1
  call void @_ZdlPvm(ptr noundef %i.ji, i64 noundef %i.jl) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5vcpkg4Test20MockCMakeVarProviderE, i64 16), ptr %19, align 8, !tbaa !33
  %i.jm = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.jn = getelementptr inbounds nuw i8, ptr %19, i64 56
  store ptr %i.jn, ptr %i.jm, align 8, !tbaa !64
  %i.jo = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 1, ptr %i.jo, align 8, !tbaa !65
  %i.jp = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.jq = getelementptr inbounds nuw i8, ptr %19, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jp, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.jq, align 8, !tbaa !66
  %i.jr = getelementptr inbounds nuw i8, ptr %19, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jr, i8 0, i64 16, i1 false)
  %i.js = getelementptr inbounds nuw i8, ptr %19, i64 64
  %i.jt = getelementptr inbounds nuw i8, ptr %19, i64 112
  store ptr %i.jt, ptr %i.js, align 8, !tbaa !64
  %i.ju = getelementptr inbounds nuw i8, ptr %19, i64 72
  store i64 1, ptr %i.ju, align 8, !tbaa !65
  %i.jv = getelementptr inbounds nuw i8, ptr %19, i64 80
  %i.jw = getelementptr inbounds nuw i8, ptr %19, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jv, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.jw, align 8, !tbaa !66
  %i.jx = getelementptr inbounds nuw i8, ptr %19, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jx, i8 0, i64 16, i1 false)
  %i.jy = getelementptr inbounds nuw i8, ptr %19, i64 120
  %i.jz = getelementptr inbounds nuw i8, ptr %19, i64 168
  store ptr %i.jz, ptr %i.jy, align 8, !tbaa !68
  %i.ka = getelementptr inbounds nuw i8, ptr %19, i64 128
  store i64 1, ptr %i.ka, align 8, !tbaa !69
  %i.kb = getelementptr inbounds nuw i8, ptr %19, i64 136
  %i.kc = getelementptr inbounds nuw i8, ptr %19, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kb, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.kc, align 8, !tbaa !66
  %i.kd = getelementptr inbounds nuw i8, ptr %19, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kd, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  %i.ke = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  store ptr %i.ke, ptr %23, align 8, !tbaa !47
  store i8 97, ptr %i.ke, align 8, !tbaa !48
  %i.kf = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 1, ptr %i.kf, align 8, !tbaa !50
  %i.kg = getelementptr inbounds nuw i8, ptr %23, i64 17
  store i8 0, ptr %i.kg, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  %i.kh = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  store ptr %i.kh, ptr %24, align 8, !tbaa !47
  store i8 120, ptr %i.kh, align 8, !tbaa !48
  %i.ki = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 1, ptr %i.ki, align 8, !tbaa !50
  %i.kj = getelementptr inbounds nuw i8, ptr %24, i64 17
  store i8 0, ptr %i.kj, align 1, !tbaa !48
  %i.kk = getelementptr inbounds nuw i8, ptr %23, i64 32 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %24, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.kl) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kk, i8 0, i64 24, i1 false)
  %i.km = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24
          to label %_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i164 unwind label %bb.y ; 3 uses

_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i164: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  %i.kn = getelementptr inbounds nuw i8, ptr %24, i64 40
  store ptr %i.km, ptr %i.kk, align 8, !tbaa !218
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 40
  %i.kp = getelementptr inbounds nuw i8, ptr %23, i64 48
  store ptr %i.ko, ptr %i.kp, align 8, !tbaa !219
  %i.kq = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN5vcpkg26DependencyRequestedFeatureEPS1_ET0_T_S6_S5_(ptr noundef nonnull %24, ptr noundef nonnull %i.kn, ptr noundef nonnull %i.km)
          to label %bb.aa unwind label %bb.y

bb.y:                                             ; preds = %_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i164, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  %i.kr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ks = load ptr, ptr %i.kk, align 8, !tbaa !218 ; 3 uses
  %.not.i.i5.i162 = icmp eq ptr %i.ks, null
  br i1 %.not.i.i5.i162, label %bb.bh, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.kt = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !219
  %i.kv = ptrtoint ptr %i.ku to i64
  %i.kw = ptrtoint ptr %i.ks to i64
  %i.kx = sub i64 %i.kv, %i.kw
  call void @_ZdlPvm(ptr noundef nonnull %i.ks, i64 noundef %i.kx) #23
  br label %bb.bh

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i164
  %i.ky = getelementptr inbounds nuw i8, ptr %23, i64 40
  store ptr %i.kq, ptr %i.ky, align 8, !tbaa !220
  %i.kz = getelementptr inbounds nuw i8, ptr %23, i64 56
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.kz) #22
  %i.la = getelementptr inbounds nuw i8, ptr %23, i64 64
  store i32 0, ptr %i.la, align 8, !tbaa !72
  %i.lb = getelementptr inbounds nuw i8, ptr %23, i64 72
  call void @_ZN5vcpkg7VersionC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.lb) #22
  %i.lc = getelementptr inbounds nuw i8, ptr %23, i64 112
  store i8 0, ptr %i.lc, align 8, !tbaa !94
  %i.ld = getelementptr inbounds nuw i8, ptr %23, i64 113
  store i8 1, ptr %i.ld, align 1, !tbaa !95
  %i.le = getelementptr inbounds nuw i8, ptr %23, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.le, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  %i.lf = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #24
          to label %.noexc264 unwind label %bb.ae ; 3 uses

.noexc264:                                        ; preds = %bb.aa
  store ptr %i.lf, ptr %22, align 8, !tbaa !98
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 144 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  store ptr %i.lg, ptr %i.lh, align 8, !tbaa !99
  invoke void @_ZN5vcpkg10DependencyC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(144) %i.lf, ptr noundef nonnull align 8 dereferenceable(144) %23)
          to label %_ZSt10_ConstructIN5vcpkg10DependencyEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %_ZSt8_DestroyIPN5vcpkg10DependencyEEvT_S3_.exit.i.i.i.i.i

_ZSt10_ConstructIN5vcpkg10DependencyEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc264
  %i.li = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  store ptr %i.lg, ptr %i.li, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZL13toplevel_specv()
          to label %bb.ag unwind label %bb.bg

_ZSt8_DestroyIPN5vcpkg10DependencyEEvT_S3_.exit.i.i.i.i.i: ; preds = %.noexc264
  %i.lj = landingpad { ptr, i32 }
          catch ptr null
  %i.lk = extractvalue { ptr, i32 } %i.lj, 0
  %i.ll = call ptr @__cxa_begin_catch(ptr %i.lk) #22 ; 0 uses
  invoke void @__cxa_rethrow() #25
          to label %bb.ad unwind label %bb.ab

bb.ab:                                            ; preds = %_ZSt8_DestroyIPN5vcpkg10DependencyEEvT_S3_.exit.i.i.i.i.i
  %i.lm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body265 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ln = landingpad { ptr, i32 }
          catch ptr null
  %i.lo = extractvalue { ptr, i32 } %i.ln, 0
  call void @__clang_call_terminate(ptr %i.lo) #21
  unreachable
end_hunk_9
begin_hunk_10_@_ZL21C_A_T_C_H_T_E_S_T_119v:bb.a
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !50
  %i.ag = load i64, ptr %i.o, align 8, !tbaa !48
  store i64 %i.ag, ptr %i.l, align 8, !tbaa !48
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.k, ptr %5, align 8, !tbaa !51
  store i64 %i.ac, ptr %i.o, align 8, !tbaa !48
  br label %_ZN5vcpkg7VersionaSEOS0_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.o, ptr %5, align 8, !tbaa !51
  br label %_ZN5vcpkg7VersionaSEOS0_.exit

_ZN5vcpkg7VersionaSEOS0_.exit:                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.g, %bb.h
  %i.ah = phi ptr [ %i.k, %bb.g ], [ %i.o, %bb.h ], [ %i.n, %bb.c ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.ai, align 8, !tbaa !50
  store i8 0, ptr %i.ah, align 1, !tbaa !48
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !54
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !54
  %i.am = load ptr, ptr %6, align 8, !tbaa !51    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.f
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %_ZN5vcpkg7VersionaSEOS0_.exit
  %i.ao = load i64, ptr %i.f, align 8, !tbaa !48
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5vcpkg7VersionaSEOS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.aq = load ptr, ptr %5, align 8, !tbaa !51    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZN5vcpkg7VersionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !48
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit

_ZN5vcpkg7VersionD2Ev.exit:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV29MockVersionedPortfileProvider, i64 16), ptr %7, align 8, !tbaa !33
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store i32 0, ptr %i.av, align 8, !tbaa !41
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr null, ptr %i.aw, align 8, !tbaa !40
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !42
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %i.av, ptr %i.ay, align 8, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i64 0, ptr %i.az, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.ba, ptr %8, align 8, !tbaa !47
  store i8 97, ptr %i.ba, align 8, !tbaa !48
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 1, ptr %i.bb, align 8, !tbaa !50
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 0, ptr %i.bc, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit70 unwind label %bb.ac

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit70:        ; preds = %_ZN5vcpkg7VersionD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr @.str.123, ptr %3, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !56
  %i.bd = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(36) %9, i32 noundef 4, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %3)
          to label %bb.i unwind label %bb.ad

bb.i:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.be = load ptr, ptr %9, align 8, !tbaa !51    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZN5vcpkg7VersionD2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72: ; preds = %bb.i
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !48
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit74

_ZN5vcpkg7VersionD2Ev.exit74:                     ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.bj = load ptr, ptr %8, align 8, !tbaa !51    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.ba
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %_ZN5vcpkg7VersionD2Ev.exit74
  %i.bl = load i64, ptr %i.ba, align 8, !tbaa !48
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %_ZN5vcpkg7VersionD2Ev.exit74, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.bn = load ptr, ptr %i.bd, align 8, !tbaa !150 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  store ptr %i.bp, ptr %11, align 8, !tbaa !47
  store i8 120, ptr %i.bp, align 8, !tbaa !48
  %i.bq = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 1, ptr %i.bq, align 8, !tbaa !50
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 17
  store i8 0, ptr %i.br, align 1, !tbaa !48
  invoke fastcc void @_ZL9make_fpghNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %10, ptr noundef align 8 %11)
          to label %bb.j unwind label %bb.ae

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !213 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !214
  %.not.i.i82 = icmp eq ptr %i.bt, %i.bv
  br i1 %.not.i.i82, label %bb.k, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.j
  %i.bw = load i64, ptr %10, align 8, !tbaa !210
  store i64 %i.bw, ptr %i.bt, align 8, !tbaa !210
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.bx, ptr %i.bs, align 8, !tbaa !213
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.by = load ptr, ptr %i.bo, align 8, !tbaa !215 ; 10 uses
  %i.bz = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.ca = ptrtoint ptr %i.by to i64               ; 3 uses
  %i.cb = sub i64 %i.bz, %i.ca                    ; 3 uses
  %i.cc = icmp eq i64 %i.cb, 9223372036854775800
  br i1 %i.cc, label %bb.l, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc123 unwind label %bb.af

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
          to label %.noexc124 unwind label %bb.af ; 10 uses

.noexc124:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cb
  %i.cl = load i64, ptr %10, align 8, !tbaa !210
  store i64 %i.cl, ptr %i.ck, align 8, !tbaa !210
  %.not10.i.i.i.i = icmp eq ptr %i.by, %i.bt
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc124
  %i.cm = add i64 %i.bz, -8
  %i.cn = sub i64 %i.cm, %i.ca                    ; 3 uses
  %i.co = lshr i64 %i.cn, 3
  %i.cp = add nuw nsw i64 %i.co, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cn, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader201, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.cq = and i64 %i.cn, -8
  %i.cr = add i64 %i.cq, 8                        ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cj, i64 %i.cr
  %i.ct = getelementptr i8, ptr %i.by, i64 %i.cr
  %bound0 = icmp ult ptr %i.cj, %i.ct
  %bound1 = icmp ult ptr %i.by, %i.cs
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader201, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cp, 4611686018427387900     ; 3 uses
  %i.cu = shl i64 %n.vec, 3                       ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cj, i64 %i.cu  ; 2 uses
  %i.cw = getelementptr i8, ptr %i.by, i64 %i.cu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cx = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.cj, i64 %i.cx ; 2 uses
  %next.gep198 = getelementptr i8, ptr %i.by, i64 %i.cx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  %i.cy = getelementptr i8, ptr %next.gep198, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep198, align 8, !tbaa !210, !alias.scope !1227
  %wide.load199 = load <2 x i64>, ptr %i.cy, align 8, !tbaa !210, !alias.scope !1227
  %i.cz = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !210, !alias.scope !1228, !noalias !1229
  store <2 x i64> %wide.load199, ptr %i.cz, align 8, !tbaa !210, !alias.scope !1228, !noalias !1229
  %25 = getelementptr i8, ptr %next.gep198, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep198, align 8, !tbaa !210, !alias.scope !1227
  store <2 x ptr> splat (ptr null), ptr %25, align 8, !tbaa !210, !alias.scope !1227
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !1219

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cp, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader201

.lr.ph.i.i.i.i.preheader201:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.cj, %vector.memcheck ], [ %i.cj, %.lr.ph.i.i.i.i.preheader ], [ %i.cv, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.by, %vector.memcheck ], [ %i.by, %.lr.ph.i.i.i.i.preheader ], [ %i.cw, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader201, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader201 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader201 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  %i.db = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !210, !alias.scope !1226
  store i64 %i.db, ptr %.012.i.i.i.i, align 8, !tbaa !210, !alias.scope !1225
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !210, !alias.scope !1226
  %i.dc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dc, %i.bt
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1220

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc124
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cj, %.noexc124 ], [ %i.cv, %middle.block ], [ %i.dd, %.lr.ph.i.i.i.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.by, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.df = load ptr, ptr %i.bu, align 8, !tbaa !214
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = sub i64 %i.dg, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.dh) #23
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.m
  store ptr %i.cj, ptr %i.bo, align 8, !tbaa !215
  store ptr %i.de, ptr %i.bs, align 8, !tbaa !213
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ch
  store ptr %i.di, ptr %i.bu, align 8, !tbaa !214
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread
  %i.dj = load ptr, ptr %11, align 8, !tbaa !51   ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.bp
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit
  %i.dl = load i64, ptr %i.bp, align 8, !tbaa !48
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.dn = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  store ptr %i.dn, ptr %14, align 8, !tbaa !47
  store i8 97, ptr %i.dn, align 8, !tbaa !48
  %i.do = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 1, ptr %i.do, align 8, !tbaa !50
  %i.dp = getelementptr inbounds nuw i8, ptr %14, i64 17
  store i8 0, ptr %i.dp, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.dq = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  store ptr %i.dq, ptr %15, align 8, !tbaa !47
  store i8 121, ptr %i.dq, align 8, !tbaa !48
  %i.dr = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 1, ptr %i.dr, align 8, !tbaa !50
  %i.ds = getelementptr inbounds nuw i8, ptr %15, i64 17
  store i8 0, ptr %i.ds, align 1, !tbaa !48
  %i.dt = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %15, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.du) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, i8 0, i64 24, i1 false)
  %i.dv = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24
          to label %_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i unwind label %bb.n ; 3 uses

_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %i.dw = getelementptr inbounds nuw i8, ptr %15, i64 40
  store ptr %i.dv, ptr %i.dt, align 8, !tbaa !218
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  %i.dy = getelementptr inbounds nuw i8, ptr %14, i64 48
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !219
  %i.dz = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN5vcpkg26DependencyRequestedFeatureEPS1_ET0_T_S6_S5_(ptr noundef nonnull %15, ptr noundef nonnull %i.dw, ptr noundef nonnull %i.dv)
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %i.ea = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eb = load ptr, ptr %i.dt, align 8, !tbaa !218 ; 3 uses
  %.not.i.i5.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i5.i, label %bb.ai, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ec = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !219
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.eb to i64
  %i.eg = sub i64 %i.ee, %i.ef
  call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.eg) #23
  br label %bb.ai

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %14, i64 40
  store ptr %i.dz, ptr %i.eh, align 8, !tbaa !220
  %i.ei = getelementptr inbounds nuw i8, ptr %14, i64 56
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ei) #22
  %i.ej = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i32 0, ptr %i.ej, align 8, !tbaa !72
  %i.ek = getelementptr inbounds nuw i8, ptr %14, i64 72
  call void @_ZN5vcpkg7VersionC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.ek) #22
  %i.el = getelementptr inbounds nuw i8, ptr %14, i64 112
  store i8 0, ptr %i.el, align 8, !tbaa !94
  %i.em = getelementptr inbounds nuw i8, ptr %14, i64 113
  store i8 1, ptr %i.em, align 1, !tbaa !95
  %i.en = getelementptr inbounds nuw i8, ptr %14, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.en, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.eo = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #24
          to label %.noexc126 unwind label %bb.t  ; 3 uses

.noexc126:                                        ; preds = %bb.p
  store ptr %i.eo, ptr %13, align 8, !tbaa !98
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 144 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.ep, ptr %i.eq, align 8, !tbaa !99
  invoke void @_ZN5vcpkg10DependencyC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(144) %i.eo, ptr noundef nonnull align 8 dereferenceable(144) %14)
          to label %_ZSt10_ConstructIN5vcpkg10DependencyEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %_ZSt8_DestroyIPN5vcpkg10DependencyEEvT_S3_.exit.i.i.i.i.i

_ZSt10_ConstructIN5vcpkg10DependencyEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.noexc126
  %i.er = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr %i.ep, ptr %i.er, align 8, !tbaa !100
  invoke fastcc void @_ZL29create_versioned_install_planR29MockVersionedPortfileProviderR20MockBaselineProviderSt6vectorIN5vcpkg10DependencyESaIS5_EE(ptr dead_on_unwind noalias writable align 8 %12, ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef align 8 %13)
          to label %bb.v unwind label %bb.ah

_ZSt8_DestroyIPN5vcpkg10DependencyEEvT_S3_.exit.i.i.i.i.i: ; preds = %.noexc126
  %i.es = landingpad { ptr, i32 }
          catch ptr null
  %i.et = extractvalue { ptr, i32 } %i.es, 0
  %i.eu = call ptr @__cxa_begin_catch(ptr %i.et) #22 ; 0 uses
  invoke void @__cxa_rethrow() #25
          to label %bb.s unwind label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPN5vcpkg10DependencyEEvT_S3_.exit.i.i.i.i.i
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body127 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ew = landingpad { ptr, i32 }
          catch ptr null
  %i.ex = extractvalue { ptr, i32 } %i.ew, 0
  call void @__clang_call_terminate(ptr %i.ex) #21
  unreachable

bb.s:                                             ; preds = %_ZSt8_DestroyIPN5vcpkg10DependencyEEvT_S3_.exit.i.i.i.i.i
  unreachable

bb.t:                                             ; preds = %bb.p
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.body127

.body127:                                         ; preds = %bb.q, %bb.t
  %eh.lpad-body128 = phi { ptr, i32 } [ %i.ey, %bb.t ], [ %i.ev, %bb.q ] ; 2 uses
  %i.ez = load ptr, ptr %13, align 8, !tbaa !98   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i, label %.body, label %bb.u

bb.u:                                             ; preds = %.body127
  %i.fa = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !99
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %i.ez to i64
  %i.fe = sub i64 %i.fc, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef %i.fe) #23
  br label %.body

bb.v:                                             ; preds = %_ZSt10_ConstructIN5vcpkg10DependencyEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %i.ff = load ptr, ptr %13, align 8, !tbaa !98   ; 3 uses
  %i.fg = load ptr, ptr %i.er, align 8, !tbaa !100 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ff, %i.fg
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.v, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.fh, %.lr.ph.i.i.i ], [ %i.ff, %bb.v ] ; 2 uses
  call void @_ZN5vcpkg10DependencyD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %.05.i.i.i) #22
  %i.fh = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 144 ; 2 uses
  %.not.i.i.i97 = icmp eq ptr %i.fh, %i.fg
  br i1 %.not.i.i.i97, label %_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN5vcpkg10DependencyES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %13, align 8, !tbaa !98
end_hunk_10
begin_hunk_11_@_ZL21C_A_T_C_H_T_E_S_T_123v:bb.a
  %i.gv = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %14, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(36) %21, i32 noundef 4, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %5)
          to label %bb.aa unwind label %bb.bk

bb.aa:                                            ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit206
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.gw = load ptr, ptr %21, align 8, !tbaa !51   ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %_ZN5vcpkg7VersionD2Ev.exit212, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i210: ; preds = %bb.aa
  %i.gz = load i64, ptr %i.gx, align 8, !tbaa !48
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.ha) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit212

_ZN5vcpkg7VersionD2Ev.exit212:                    ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i210
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  %i.hb = load ptr, ptr %20, align 8, !tbaa !51   ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.gs
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213: ; preds = %_ZN5vcpkg7VersionD2Ev.exit212
  %i.hd = load i64, ptr %i.gs, align 8, !tbaa !48
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.he) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215: ; preds = %_ZN5vcpkg7VersionD2Ev.exit212, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %i.hf = load ptr, ptr %i.gv, align 8, !tbaa !150
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  %i.hh = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  store ptr %i.hh, ptr %22, align 8, !tbaa !47
  store i8 98, ptr %i.hh, align 8, !tbaa !48
  %i.hi = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 1, ptr %i.hi, align 8, !tbaa !50
  %i.hj = getelementptr inbounds nuw i8, ptr %22, i64 17
  store i8 0, ptr %i.hj, align 1, !tbaa !48
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 216
  %i.hl = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.hm = getelementptr inbounds nuw i8, ptr %22, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hl, i8 0, i64 24, i1 false)
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.hm) #22
  %i.hn = getelementptr inbounds nuw i8, ptr %22, i64 64
  store i32 0, ptr %i.hn, align 8, !tbaa !72
  %i.ho = getelementptr inbounds nuw i8, ptr %22, i64 72
  call void @_ZN5vcpkg7VersionC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.ho) #22
  %i.hp = getelementptr inbounds nuw i8, ptr %22, i64 112
  store i8 0, ptr %i.hp, align 8, !tbaa !94
  %i.hq = getelementptr inbounds nuw i8, ptr %22, i64 113
  store i8 1, ptr %i.hq, align 1, !tbaa !95
  %i.hr = getelementptr inbounds nuw i8, ptr %22, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hr, i8 0, i64 24, i1 false)
  %i.hs = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.hk, ptr noundef nonnull align 8 dereferenceable(144) %22)
          to label %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit221 unwind label %bb.bl ; 0 uses

_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit221: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215
  call void @_ZN5vcpkg10DependencyD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %22) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  %i.ht = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  store ptr %i.ht, ptr %23, align 8, !tbaa !47
  store i8 98, ptr %i.ht, align 8, !tbaa !48
  %i.hu = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 1, ptr %i.hu, align 8, !tbaa !50
  %i.hv = getelementptr inbounds nuw i8, ptr %23, i64 17
  store i8 0, ptr %i.hv, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %24, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit227 unwind label %bb.bm

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit227:       ; preds = %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit221
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr @.str.123, ptr %4, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i228 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i228, align 8, !tbaa !56
  %i.hw = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %14, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(36) %24, i32 noundef 4, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %4)
          to label %bb.ab unwind label %bb.bn

bb.ab:                                            ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit227
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.hx = load ptr, ptr %24, align 8, !tbaa !51   ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.hz = icmp eq ptr %i.hx, %i.hy
  br i1 %i.hz, label %_ZN5vcpkg7VersionD2Ev.exit233, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i231: ; preds = %bb.ab
  %i.ia = load i64, ptr %i.hy, align 8, !tbaa !48
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ib) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit233

_ZN5vcpkg7VersionD2Ev.exit233:                    ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i231
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  %i.ic = load ptr, ptr %23, align 8, !tbaa !51   ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.ht
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234: ; preds = %_ZN5vcpkg7VersionD2Ev.exit233
  %i.ie = load i64, ptr %i.ht, align 8, !tbaa !48
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.if) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236: ; preds = %_ZN5vcpkg7VersionD2Ev.exit233, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  %i.ig = load ptr, ptr %i.hw, align 8, !tbaa !150 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  %i.ii = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 6 uses
  store ptr %i.ii, ptr %26, align 8, !tbaa !47
  store i8 120, ptr %i.ii, align 8, !tbaa !48
  %i.ij = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 1, ptr %i.ij, align 8, !tbaa !50
  %i.ik = getelementptr inbounds nuw i8, ptr %26, i64 17
  store i8 0, ptr %i.ik, align 1, !tbaa !48
  invoke fastcc void @_ZL9make_fpghNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %25, ptr noundef align 8 %26)
          to label %bb.ac unwind label %bb.bo

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 16 ; 3 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !213 ; 6 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ig, i64 24 ; 3 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !214
  %.not.i.i241 = icmp eq ptr %i.im, %i.io
  br i1 %.not.i.i241, label %bb.ad, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.ac
  %i.ip = load i64, ptr %25, align 8, !tbaa !210
  store i64 %i.ip, ptr %i.im, align 8, !tbaa !210
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store ptr %i.iq, ptr %i.il, align 8, !tbaa !213
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ir = load ptr, ptr %i.ih, align 8, !tbaa !215 ; 10 uses
  %i.is = ptrtoint ptr %i.im to i64               ; 2 uses
  %i.it = ptrtoint ptr %i.ir to i64               ; 3 uses
  %i.iu = sub i64 %i.is, %i.it                    ; 3 uses
  %i.iv = icmp eq i64 %i.iu, 9223372036854775800
  br i1 %i.iv, label %bb.ae, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc420 unwind label %bb.bp

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
          to label %.noexc421 unwind label %bb.bp ; 10 uses

.noexc421:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.iu
  %i.je = load i64, ptr %25, align 8, !tbaa !210
  store i64 %i.je, ptr %i.jd, align 8, !tbaa !210
  %.not10.i.i.i.i = icmp eq ptr %i.ir, %i.im
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc421
  %i.jf = add i64 %i.is, -8
  %i.jg = sub i64 %i.jf, %i.it                    ; 3 uses
  %i.jh = lshr i64 %i.jg, 3
  %i.ji = add nuw nsw i64 %i.jh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.jg, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader629, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.jj = and i64 %i.jg, -8
  %i.jk = add i64 %i.jj, 8                        ; 2 uses
  %i.jl = getelementptr i8, ptr %i.jc, i64 %i.jk
  %i.jm = getelementptr i8, ptr %i.ir, i64 %i.jk
  %bound0 = icmp ult ptr %i.jc, %i.jm
  %bound1 = icmp ult ptr %i.ir, %i.jl
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader629, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ji, 4611686018427387900     ; 3 uses
  %i.jn = shl i64 %n.vec, 3                       ; 2 uses
  %i.jo = getelementptr i8, ptr %i.jc, i64 %i.jn  ; 2 uses
  %i.jp = getelementptr i8, ptr %i.ir, i64 %i.jn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.jq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.jc, i64 %i.jq ; 2 uses
  %next.gep623 = getelementptr i8, ptr %i.ir, i64 %i.jq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  call void @llvm.experimental.noalias.scope.decl(metadata !1249)
  %i.jr = getelementptr i8, ptr %next.gep623, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep623, align 8, !tbaa !210, !alias.scope !1250
  %wide.load624 = load <2 x i64>, ptr %i.jr, align 8, !tbaa !210, !alias.scope !1250
  %i.js = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !210, !alias.scope !1251, !noalias !1252
  store <2 x i64> %wide.load624, ptr %i.js, align 8, !tbaa !210, !alias.scope !1251, !noalias !1252
  %47 = getelementptr i8, ptr %next.gep623, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep623, align 8, !tbaa !210, !alias.scope !1250
  store <2 x ptr> splat (ptr null), ptr %47, align 8, !tbaa !210, !alias.scope !1250
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.jt = icmp eq i64 %index.next, %n.vec
  br i1 %i.jt, label %middle.block, label %vector.body, !llvm.loop !1244

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ji, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader629

.lr.ph.i.i.i.i.preheader629:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.jc, %vector.memcheck ], [ %i.jc, %.lr.ph.i.i.i.i.preheader ], [ %i.jo, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ir, %vector.memcheck ], [ %i.ir, %.lr.ph.i.i.i.i.preheader ], [ %i.jp, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader629, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.jw, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader629 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.jv, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader629 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1248)
  call void @llvm.experimental.noalias.scope.decl(metadata !1249)
  %i.ju = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !210, !alias.scope !1249
  store i64 %i.ju, ptr %.012.i.i.i.i, align 8, !tbaa !210, !alias.scope !1248
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !210, !alias.scope !1249
  %i.jv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.jv, %i.im
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1245

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc421
  %.0.lcssa.i.i.i.i = phi ptr [ %i.jc, %.noexc421 ], [ %i.jo, %middle.block ], [ %i.jw, %.lr.ph.i.i.i.i ]
  %i.jx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ir, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.jy = load ptr, ptr %i.in, align 8, !tbaa !214
  %i.jz = ptrtoint ptr %i.jy to i64
  %i.ka = sub i64 %i.jz, %i.it
  call void @_ZdlPvm(ptr noundef nonnull %i.ir, i64 noundef %i.ka) #23
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.af
  store ptr %i.jc, ptr %i.ih, align 8, !tbaa !215
  store ptr %i.jx, ptr %i.il, align 8, !tbaa !213
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.ja
  store ptr %i.kb, ptr %i.in, align 8, !tbaa !214
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread
  %i.kc = load ptr, ptr %26, align 8, !tbaa !51   ; 2 uses
  %i.kd = icmp eq ptr %i.kc, %i.ii
  br i1 %i.kd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit
  %i.ke = load i64, ptr %i.ii, align 8, !tbaa !48
  %i.kf = add i64 %i.ke, 1
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kf) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  %i.kg = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 6 uses
  store ptr %i.kg, ptr %27, align 8, !tbaa !47
  store i8 98, ptr %i.kg, align 8, !tbaa !48
  %i.kh = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 1, ptr %i.kh, align 8, !tbaa !50
  %i.ki = getelementptr inbounds nuw i8, ptr %27, i64 17
  store i8 0, ptr %i.ki, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %28, ptr nonnull @.str.124, i64 1, i32 noundef 1)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit251 unwind label %bb.br

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit251:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr @.str.123, ptr %3, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i252 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i252, align 8, !tbaa !56
  %i.kj = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %14, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(36) %28, i32 noundef 4, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %3)
          to label %bb.ag unwind label %bb.bs

bb.ag:                                            ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit251
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.kk = load ptr, ptr %28, align 8, !tbaa !51   ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.km = icmp eq ptr %i.kk, %i.kl
  br i1 %i.km, label %_ZN5vcpkg7VersionD2Ev.exit257, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i255

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i255: ; preds = %bb.ag
  %i.kn = load i64, ptr %i.kl, align 8, !tbaa !48
  %i.ko = add i64 %i.kn, 1
  call void @_ZdlPvm(ptr noundef %i.kk, i64 noundef %i.ko) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit257

_ZN5vcpkg7VersionD2Ev.exit257:                    ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i255
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  %i.kp = load ptr, ptr %27, align 8, !tbaa !51   ; 2 uses
  %i.kq = icmp eq ptr %i.kp, %i.kg
  br i1 %i.kq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258: ; preds = %_ZN5vcpkg7VersionD2Ev.exit257
  %i.kr = load i64, ptr %i.kg, align 8, !tbaa !48
  %i.ks = add i64 %i.kr, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.ks) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260: ; preds = %_ZN5vcpkg7VersionD2Ev.exit257, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  %i.kt = load ptr, ptr %i.kj, align 8, !tbaa !150
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  %i.kv = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  store ptr %i.kv, ptr %29, align 8, !tbaa !47
  store i8 99, ptr %i.kv, align 8, !tbaa !48
  %i.kw = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 1, ptr %i.kw, align 8, !tbaa !50
  %i.kx = getelementptr inbounds nuw i8, ptr %29, i64 17
  store i8 0, ptr %i.kx, align 1, !tbaa !48
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ku, i64 216
  %i.kz = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.la = getelementptr inbounds nuw i8, ptr %29, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kz, i8 0, i64 24, i1 false)
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.la) #22
  %i.lb = getelementptr inbounds nuw i8, ptr %29, i64 64
  store i32 0, ptr %i.lb, align 8, !tbaa !72
  %i.lc = getelementptr inbounds nuw i8, ptr %29, i64 72
  call void @_ZN5vcpkg7VersionC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.lc) #22
  %i.ld = getelementptr inbounds nuw i8, ptr %29, i64 112
  store i8 0, ptr %i.ld, align 8, !tbaa !94
  %i.le = getelementptr inbounds nuw i8, ptr %29, i64 113
  store i8 1, ptr %i.le, align 1, !tbaa !95
  %i.lf = getelementptr inbounds nuw i8, ptr %29, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lf, i8 0, i64 24, i1 false)
  %i.lg = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ky, ptr noundef nonnull align 8 dereferenceable(144) %29)
          to label %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit266 unwind label %bb.bt ; 0 uses

_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit266: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260
  call void @_ZN5vcpkg10DependencyD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %29) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  %i.lh = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  store ptr %i.lh, ptr %30, align 8, !tbaa !47
  store i8 99, ptr %i.lh, align 8, !tbaa !48
  %i.li = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 1, ptr %i.li, align 8, !tbaa !50
  %i.lj = getelementptr inbounds nuw i8, ptr %30, i64 17
  store i8 0, ptr %i.lj, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %31, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit272 unwind label %bb.bu

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit272:       ; preds = %_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EE9push_backEOS1_.exit266
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr @.str.123, ptr %2, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i273 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i273, align 8, !tbaa !56
  %i.lk = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %14, ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(36) %31, i32 noundef 4, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %2)
          to label %bb.ah unwind label %bb.bv     ; 0 uses

bb.ah:                                            ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit272
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ll = load ptr, ptr %31, align 8, !tbaa !51   ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.ln = icmp eq ptr %i.ll, %i.lm
  br i1 %i.ln, label %_ZN5vcpkg7VersionD2Ev.exit278, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i276

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i276: ; preds = %bb.ah
  %i.lo = load i64, ptr %i.lm, align 8, !tbaa !48
  %i.lp = add i64 %i.lo, 1
  call void @_ZdlPvm(ptr noundef %i.ll, i64 noundef %i.lp) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit278

_ZN5vcpkg7VersionD2Ev.exit278:                    ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i276
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  %i.lq = load ptr, ptr %30, align 8, !tbaa !51   ; 2 uses
  %i.lr = icmp eq ptr %i.lq, %i.lh
  br i1 %i.lr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279: ; preds = %_ZN5vcpkg7VersionD2Ev.exit278
  %i.ls = load i64, ptr %i.lh, align 8, !tbaa !48
  %i.lt = add i64 %i.ls, 1
  call void @_ZdlPvm(ptr noundef %i.lq, i64 noundef %i.lt) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281: ; preds = %_ZN5vcpkg7VersionD2Ev.exit278, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  %i.lu = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 6 uses
  store ptr %i.lu, ptr %32, align 8, !tbaa !47
  store i8 99, ptr %i.lu, align 8, !tbaa !48
  %i.lv = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 1, ptr %i.lv, align 8, !tbaa !50
  %i.lw = getelementptr inbounds nuw i8, ptr %32, i64 17
  store i8 0, ptr %i.lw, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %33, ptr nonnull @.str.124, i64 1, i32 noundef 1)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit287 unwind label %bb.bw

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit287:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr @.str.123, ptr %1, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i288 = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_11
begin_hunk_12_@_ZL21C_A_T_C_H_T_E_S_T_144v:bb.a
  store ptr %i.bd, ptr %i.bc, align 16, !tbaa !47, !noalias !1398
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  store i64 0, ptr %i.be, align 8, !tbaa !50, !noalias !1398
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 80 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.bf, i8 0, i64 48, i1 false), !noalias !1398
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.bg) #22, !noalias !1398
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 88
  invoke void @_ZN5vcpkg28ParsedSpdxLicenseDeclarationC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.bh)
          to label %bb.j unwind label %bb.i, !noalias !1398

bb.i:                                             ; preds = %.noexc230
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 56
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bg) #22, !noalias !1398
  call void @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bj) #22, !noalias !1398
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bf) #22, !noalias !1398
  %i.bk = load ptr, ptr %i.bc, align 16, !tbaa !51, !noalias !1398 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.bd
  br i1 %i.bl, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.bm = load i64, ptr %i.bd, align 16, !tbaa !48, !noalias !1398
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #23, !noalias !1398
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef 176) #23, !noalias !1398
  br label %.body

bb.j:                                             ; preds = %.noexc230
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false), !noalias !1398
  store ptr %i.bc, ptr %12, align 8, !tbaa !210, !alias.scope !1398
  %i.bp = load i64, ptr %i.be, align 8, !tbaa !50
  %i.bq = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.br = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, i64 noundef 0, i64 noundef %i.bp, ptr noundef nonnull @.str.216, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.ba ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  invoke void @_ZN5vcpkg18PlatformExpression25parse_platform_expressionENS_10StringViewENS0_23MultipleBinaryOperatorsE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT.400") align 8 %13, ptr nonnull @.str.413, i64 7, i32 noundef 0)
          to label %bb.k unwind label %bb.ax

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  store i32 2333, ptr %14, align 8, !tbaa !154
  %i.bs = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr @.str, ptr %i.bs, align 8, !tbaa !155
  %i.bt = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr @__func__._ZL21C_A_T_C_H_T_E_S_T_144v, ptr %i.bt, align 8, !tbaa !156
  %i.bu = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !235, !range !112, !noundef !113
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
  %i.cb = load i8, ptr %i.bu, align 8, !tbaa !235, !range !112, !noundef !113
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNO5vcpkg9ExpectedTINS_18PlatformExpression4ExprENS_15LocalizedStringEE13value_or_exitERKNS_8LineInfoE.exit
  %i.cd = load ptr, ptr %13, align 8, !tbaa !51   ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZN5vcpkg9ExpectedTINS_18PlatformExpression4ExprENS_15LocalizedStringEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i232: ; preds = %bb.o
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !48
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
  store ptr %i.ci, ptr %15, align 8, !tbaa !47
  store i8 97, ptr %i.ci, align 8, !tbaa !48
  %i.cj = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 1, ptr %i.cj, align 8, !tbaa !50
  %i.ck = getelementptr inbounds nuw i8, ptr %15, i64 17
  store i8 0, ptr %i.ck, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %16, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit239 unwind label %bb.ay

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit239:       ; preds = %_ZN5vcpkg9ExpectedTINS_18PlatformExpression4ExprENS_15LocalizedStringEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr @.str.123, ptr %7, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !56
  %i.cl = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(36) %16, i32 noundef 4, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %7)
          to label %bb.q unwind label %bb.az

bb.q:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit239
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !150 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !213 ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 24 ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !214
  %.not.i.i241 = icmp eq ptr %i.cp, %i.cr
  br i1 %.not.i.i241, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i64 %i.bq, ptr %i.cp, align 8, !tbaa !210
  store ptr null, ptr %12, align 8, !tbaa !210
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.cs, ptr %i.co, align 8, !tbaa !213
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

bb.s:                                             ; preds = %bb.q
  %i.ct = load ptr, ptr %i.cn, align 8, !tbaa !215 ; 10 uses
  %i.cu = ptrtoint ptr %i.cp to i64               ; 2 uses
  %i.cv = ptrtoint ptr %i.ct to i64               ; 3 uses
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
  store i64 %i.bq, ptr %i.df, align 8, !tbaa !210
  store ptr null, ptr %12, align 8, !tbaa !210
  %.not10.i.i.i.i = icmp eq ptr %i.ct, %i.cp
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc620
  %i.dg = add i64 %i.cu, -8
  %i.dh = sub i64 %i.dg, %i.cv                    ; 3 uses
  %i.di = lshr i64 %i.dh, 3
  %i.dj = add nuw nsw i64 %i.di, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.dh, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader1029, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.dk = and i64 %i.dh, -8
  %i.dl = add i64 %i.dk, 8                        ; 2 uses
  %i.dm = getelementptr i8, ptr %i.de, i64 %i.dl
  %i.dn = getelementptr i8, ptr %i.ct, i64 %i.dl
  %bound0 = icmp ult ptr %i.de, %i.dn
  %bound1 = icmp ult ptr %i.ct, %i.dm
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader1029, label %vector.ph

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
  %next.gep1001 = getelementptr i8, ptr %i.ct, i64 %i.dr ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1399)
  call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  %i.ds = getelementptr i8, ptr %next.gep1001, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1001, align 8, !tbaa !210, !alias.scope !1401
  %wide.load1002 = load <2 x i64>, ptr %i.ds, align 8, !tbaa !210, !alias.scope !1401
  %i.dt = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !210, !alias.scope !1402, !noalias !1403
  store <2 x i64> %wide.load1002, ptr %i.dt, align 8, !tbaa !210, !alias.scope !1402, !noalias !1403
  %69 = getelementptr i8, ptr %next.gep1001, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1001, align 8, !tbaa !210, !alias.scope !1401
  store <2 x ptr> splat (ptr null), ptr %69, align 8, !tbaa !210, !alias.scope !1401
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !1374

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader1029

.lr.ph.i.i.i.i.preheader1029:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.de, %vector.memcheck ], [ %i.de, %.lr.ph.i.i.i.i.preheader ], [ %i.dp, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ct, %vector.memcheck ], [ %i.ct, %.lr.ph.i.i.i.i.preheader ], [ %i.dq, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader1029, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader1029 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader1029 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1399)
  call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  %i.dv = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !210, !alias.scope !1400
  store i64 %i.dv, ptr %.012.i.i.i.i, align 8, !tbaa !210, !alias.scope !1399
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !210, !alias.scope !1400
  %i.dw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i618 = icmp eq ptr %i.dw, %i.cp
  br i1 %.not.i.i.i.i618, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1375

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc620
  %.0.lcssa.i.i.i.i = phi ptr [ %i.de, %.noexc620 ], [ %i.dp, %middle.block ], [ %i.dx, %.lr.ph.i.i.i.i ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ct, null
  br i1 %.not.i23.i, label %.noexc242, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.dz = load ptr, ptr %i.cq, align 8, !tbaa !214
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = sub i64 %i.ea, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.eb) #23
  br label %.noexc242

.noexc242:                                        ; preds = %bb.u, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.de, ptr %i.cn, align 8, !tbaa !215
  store ptr %i.dy, ptr %i.co, align 8, !tbaa !213
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dc
  store ptr %i.ec, ptr %i.cq, align 8, !tbaa !214
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %.noexc242, %bb.r
  %i.ed = load ptr, ptr %16, align 8, !tbaa !51   ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %_ZN5vcpkg7VersionD2Ev.exit245, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i243: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !48
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eh) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit245

_ZN5vcpkg7VersionD2Ev.exit245:                    ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i243
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  %i.ei = load ptr, ptr %15, align 8, !tbaa !51   ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.ci
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246: ; preds = %_ZN5vcpkg7VersionD2Ev.exit245
  %i.ek = load i64, ptr %i.ci, align 8, !tbaa !48
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248: ; preds = %_ZN5vcpkg7VersionD2Ev.exit245, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i246
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.em = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #24
          to label %.noexc252 unwind label %bb.ba ; 13 uses

.noexc252:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit248
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.en, i8 0, i64 160, i1 false), !noalias !1404
  store ptr %i.en, ptr %i.em, align 16, !tbaa !47, !noalias !1404
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 2 uses
  store i64 0, ptr %i.eo, align 8, !tbaa !50, !noalias !1404
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 32 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ep, i8 0, i64 48, i1 false), !noalias !1404
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.eq) #22, !noalias !1404
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 88
  invoke void @_ZN5vcpkg28ParsedSpdxLicenseDeclarationC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.er)
          to label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit unwind label %bb.v, !noalias !1404

bb.v:                                             ; preds = %.noexc252
  %i.es = landingpad { ptr, i32 }
          cleanup
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 56
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.eq) #22, !noalias !1404
  call void @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.et) #22, !noalias !1404
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ep) #22, !noalias !1404
  %i.eu = load ptr, ptr %i.em, align 16, !tbaa !51, !noalias !1404 ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.en
  br i1 %i.ev, label %.body.i250, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i249: ; preds = %bb.v
  %i.ew = load i64, ptr %i.en, align 16, !tbaa !48, !noalias !1404
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #23, !noalias !1404
  br label %.body.i250

.body.i250:                                       ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i249
  call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef 176) #23, !noalias !1404
  br label %.body253

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit: ; preds = %.noexc252
  %i.ey = getelementptr inbounds nuw i8, ptr %i.em, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ey, i8 0, i64 24, i1 false), !noalias !1404
  store ptr %i.em, ptr %12, align 8, !tbaa !210
  %i.ez = ptrtoint ptr %i.em to i64               ; 2 uses
  %.pre = load i64, ptr %i.eo, align 8, !tbaa !50
  %i.fa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.em, i64 noundef 0, i64 noundef %.pre, ptr noundef nonnull @.str.216, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit257 unwind label %bb.ba ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit257: ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.fb = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.fb, ptr %17, align 8, !tbaa !47
  store i8 97, ptr %i.fb, align 8, !tbaa !48
  %i.fc = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 1, ptr %i.fc, align 8, !tbaa !50
  %i.fd = getelementptr inbounds nuw i8, ptr %17, i64 17
  store i8 0, ptr %i.fd, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %18, ptr nonnull @.str.124, i64 1, i32 noundef 1)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit263 unwind label %bb.bb

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit263:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit257
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr @.str.123, ptr %6, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i264 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i264, align 8, !tbaa !56
  %i.fe = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(36) %18, i32 noundef 4, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %6)
          to label %bb.w unwind label %bb.bc

bb.w:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit263
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !150 ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 16 ; 3 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !213 ; 6 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 24 ; 3 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !214
  %.not.i.i267 = icmp eq ptr %i.fi, %i.fk
  br i1 %.not.i.i267, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i64 %i.ez, ptr %i.fi, align 8, !tbaa !210
  store ptr null, ptr %12, align 8, !tbaa !210
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store ptr %i.fl, ptr %i.fh, align 8, !tbaa !213
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit269

bb.y:                                             ; preds = %bb.w
  %i.fm = load ptr, ptr %i.fg, align 8, !tbaa !215 ; 10 uses
  %i.fn = ptrtoint ptr %i.fi to i64               ; 2 uses
  %i.fo = ptrtoint ptr %i.fm to i64               ; 3 uses
  %i.fp = sub i64 %i.fn, %i.fo                    ; 3 uses
  %i.fq = icmp eq i64 %i.fp, 9223372036854775800
  br i1 %i.fq, label %bb.z, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i621

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc639 unwind label %bb.bc

.noexc639:                                        ; preds = %bb.z
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i621: ; preds = %bb.y
  %i.fr = ashr exact i64 %i.fp, 3                 ; 3 uses
  %.sroa.speculated.i.i622 = call i64 @llvm.umax.i64(i64 %i.fr, i64 1)
  %i.fs = add nsw i64 %.sroa.speculated.i.i622, %i.fr ; 2 uses
  %i.ft = icmp ult i64 %i.fs, %i.fr
  %i.fu = call i64 @llvm.umin.i64(i64 %i.fs, i64 1152921504606846975)
  %i.fv = select i1 %i.ft, i64 1152921504606846975, i64 %i.fu ; 3 uses
  %.not.i.i623 = icmp ne i64 %i.fv, 0
  call void @llvm.assume(i1 %.not.i.i623)
  %i.fw = shl nuw nsw i64 %i.fv, 3
  %i.fx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fw) #24
          to label %.noexc640 unwind label %bb.bc ; 10 uses

.noexc640:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i621
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.fp
  store i64 %i.ez, ptr %i.fy, align 8, !tbaa !210
  store ptr null, ptr %12, align 8, !tbaa !210
  %.not10.i.i.i.i624 = icmp eq ptr %i.fm, %i.fi
  br i1 %.not10.i.i.i.i624, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i636, label %.lr.ph.i.i.i.i625.preheader

.lr.ph.i.i.i.i625.preheader:                      ; preds = %.noexc640
  %i.fz = add i64 %i.fn, -8
  %i.ga = sub i64 %i.fz, %i.fo                    ; 3 uses
  %i.gb = lshr i64 %i.ga, 3
  %i.gc = add nuw nsw i64 %i.gb, 1                ; 2 uses
  %min.iters.check1010 = icmp ult i64 %i.ga, 136
  br i1 %min.iters.check1010, label %.lr.ph.i.i.i.i625.preheader1028, label %vector.memcheck1011

vector.memcheck1011:                              ; preds = %.lr.ph.i.i.i.i625.preheader
  %i.gd = and i64 %i.ga, -8
  %i.ge = add i64 %i.gd, 8                        ; 2 uses
  %i.gf = getelementptr i8, ptr %i.fx, i64 %i.ge
  %i.gg = getelementptr i8, ptr %i.fm, i64 %i.ge
  %bound01012 = icmp ult ptr %i.fx, %i.gg
  %bound11013 = icmp ult ptr %i.fm, %i.gf
  %found.conflict1014 = and i1 %bound01012, %bound11013
  br i1 %found.conflict1014, label %.lr.ph.i.i.i.i625.preheader1028, label %vector.ph1015

vector.ph1015:                                    ; preds = %vector.memcheck1011
  %n.vec1016 = and i64 %i.gc, 4611686018427387900 ; 3 uses
  %i.gh = shl i64 %n.vec1016, 3                   ; 2 uses
  %i.gi = getelementptr i8, ptr %i.fx, i64 %i.gh  ; 2 uses
  %i.gj = getelementptr i8, ptr %i.fm, i64 %i.gh
  br label %vector.body1017

vector.body1017:                                  ; preds = %vector.body1017, %vector.ph1015
  %index1018 = phi i64 [ 0, %vector.ph1015 ], [ %index.next1023, %vector.body1017 ] ; 2 uses
  %i.gk = shl i64 %index1018, 3                   ; 2 uses
  %next.gep1019 = getelementptr i8, ptr %i.fx, i64 %i.gk ; 2 uses
  %next.gep1020 = getelementptr i8, ptr %i.fm, i64 %i.gk ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  %i.gl = getelementptr i8, ptr %next.gep1020, i64 16
  %wide.load1021 = load <2 x i64>, ptr %next.gep1020, align 8, !tbaa !210, !alias.scope !1407
  %wide.load1022 = load <2 x i64>, ptr %i.gl, align 8, !tbaa !210, !alias.scope !1407
  %i.gm = getelementptr i8, ptr %next.gep1019, i64 16
  store <2 x i64> %wide.load1021, ptr %next.gep1019, align 8, !tbaa !210, !alias.scope !1408, !noalias !1409
  store <2 x i64> %wide.load1022, ptr %i.gm, align 8, !tbaa !210, !alias.scope !1408, !noalias !1409
  %70 = getelementptr i8, ptr %next.gep1020, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1020, align 8, !tbaa !210, !alias.scope !1407
  store <2 x ptr> splat (ptr null), ptr %70, align 8, !tbaa !210, !alias.scope !1407
  %index.next1023 = add nuw i64 %index1018, 4     ; 2 uses
  %i.gn = icmp eq i64 %index.next1023, %n.vec1016
  br i1 %i.gn, label %middle.block1024, label %vector.body1017, !llvm.loop !1384

middle.block1024:                                 ; preds = %vector.body1017
  %cmp.n1025 = icmp eq i64 %i.gc, %n.vec1016
  br i1 %cmp.n1025, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i636, label %.lr.ph.i.i.i.i625.preheader1028

.lr.ph.i.i.i.i625.preheader1028:                  ; preds = %vector.memcheck1011, %.lr.ph.i.i.i.i625.preheader, %middle.block1024
  %.012.i.i.i.i626.ph = phi ptr [ %i.fx, %vector.memcheck1011 ], [ %i.fx, %.lr.ph.i.i.i.i625.preheader ], [ %i.gi, %middle.block1024 ]
  %.0911.i.i.i.i627.ph = phi ptr [ %i.fm, %vector.memcheck1011 ], [ %i.fm, %.lr.ph.i.i.i.i625.preheader ], [ %i.gj, %middle.block1024 ]
  br label %.lr.ph.i.i.i.i625

.lr.ph.i.i.i.i625:                                ; preds = %.lr.ph.i.i.i.i625.preheader1028, %.lr.ph.i.i.i.i625
  %.012.i.i.i.i626 = phi ptr [ %i.gq, %.lr.ph.i.i.i.i625 ], [ %.012.i.i.i.i626.ph, %.lr.ph.i.i.i.i625.preheader1028 ] ; 2 uses
  %.0911.i.i.i.i627 = phi ptr [ %i.gp, %.lr.ph.i.i.i.i625 ], [ %.0911.i.i.i.i627.ph, %.lr.ph.i.i.i.i625.preheader1028 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  %i.go = load i64, ptr %.0911.i.i.i.i627, align 8, !tbaa !210, !alias.scope !1406
  store i64 %i.go, ptr %.012.i.i.i.i626, align 8, !tbaa !210, !alias.scope !1405
  store ptr null, ptr %.0911.i.i.i.i627, align 8, !tbaa !210, !alias.scope !1406
  %i.gp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i627, i64 8 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i626, i64 8 ; 2 uses
  %.not.i.i.i.i628 = icmp eq ptr %i.gp, %i.fi
  br i1 %.not.i.i.i.i628, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i636, label %.lr.ph.i.i.i.i625, !llvm.loop !1385

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i636: ; preds = %.lr.ph.i.i.i.i625, %middle.block1024, %.noexc640
  %.0.lcssa.i.i.i.i630 = phi ptr [ %i.fx, %.noexc640 ], [ %i.gi, %middle.block1024 ], [ %i.gq, %.lr.ph.i.i.i.i625 ]
  %i.gr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i630, i64 8
  %.not.i23.i638 = icmp eq ptr %i.fm, null
  br i1 %.not.i23.i638, label %.noexc268, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i636
  %i.gs = load ptr, ptr %i.fj, align 8, !tbaa !214
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = sub i64 %i.gt, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef %i.gu) #23
  br label %.noexc268

.noexc268:                                        ; preds = %bb.aa, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i636
  store ptr %i.fx, ptr %i.fg, align 8, !tbaa !215
  store ptr %i.gr, ptr %i.fh, align 8, !tbaa !213
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fv
  store ptr %i.gv, ptr %i.fj, align 8, !tbaa !214
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit269

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit269: ; preds = %.noexc268, %bb.x
  %i.gw = load ptr, ptr %18, align 8, !tbaa !51   ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %_ZN5vcpkg7VersionD2Ev.exit272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i270

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i270: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit269
  %i.gz = load i64, ptr %i.gx, align 8, !tbaa !48
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.ha) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit272

_ZN5vcpkg7VersionD2Ev.exit272:                    ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit269, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i270
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.hb = load ptr, ptr %17, align 8, !tbaa !51   ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.fb
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273: ; preds = %_ZN5vcpkg7VersionD2Ev.exit272
  %i.hd = load i64, ptr %i.fb, align 8, !tbaa !48
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.he) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275: ; preds = %_ZN5vcpkg7VersionD2Ev.exit272, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5vcpkg4Test20MockCMakeVarProviderE, i64 16), ptr %19, align 8, !tbaa !33
  %i.hf = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %19, i64 56
  store ptr %i.hg, ptr %i.hf, align 8, !tbaa !64
  %i.hh = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 1, ptr %i.hh, align 8, !tbaa !65
  %i.hi = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.hj = getelementptr inbounds nuw i8, ptr %19, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hi, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.hj, align 8, !tbaa !66
  %i.hk = getelementptr inbounds nuw i8, ptr %19, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hk, i8 0, i64 16, i1 false)
  %i.hl = getelementptr inbounds nuw i8, ptr %19, i64 64
  %i.hm = getelementptr inbounds nuw i8, ptr %19, i64 112
  store ptr %i.hm, ptr %i.hl, align 8, !tbaa !64
  %i.hn = getelementptr inbounds nuw i8, ptr %19, i64 72
  store i64 1, ptr %i.hn, align 8, !tbaa !65
  %i.ho = getelementptr inbounds nuw i8, ptr %19, i64 80
  %i.hp = getelementptr inbounds nuw i8, ptr %19, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ho, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.hp, align 8, !tbaa !66
  %i.hq = getelementptr inbounds nuw i8, ptr %19, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hq, i8 0, i64 16, i1 false)
  %i.hr = getelementptr inbounds nuw i8, ptr %19, i64 120
  %i.hs = getelementptr inbounds nuw i8, ptr %19, i64 168
  store ptr %i.hs, ptr %i.hr, align 8, !tbaa !68
  %i.ht = getelementptr inbounds nuw i8, ptr %19, i64 128
  store i64 1, ptr %i.ht, align 8, !tbaa !69
  %i.hu = getelementptr inbounds nuw i8, ptr %19, i64 136
  %i.hv = getelementptr inbounds nuw i8, ptr %19, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hu, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.hv, align 8, !tbaa !66
  %i.hw = getelementptr inbounds nuw i8, ptr %19, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hw, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  %i.hx = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 11 uses
  store ptr %i.hx, ptr %21, align 8, !tbaa !47
  store i8 97, ptr %i.hx, align 8, !tbaa !48
  %i.hy = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 4 uses
  store i64 1, ptr %i.hy, align 8, !tbaa !50
  %i.hz = getelementptr inbounds nuw i8, ptr %21, i64 17
  store i8 0, ptr %i.hz, align 1, !tbaa !48
  invoke fastcc void @_ZL13toplevel_specv()
          to label %bb.ab unwind label %bb.bd

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275
  %i.ia = invoke ptr @_ZNK5vcpkg11PackageSpec7tripletEv(ptr noundef nonnull align 8 dereferenceable(40) @_ZZL13toplevel_specvE3ret)
          to label %bb.ac unwind label %bb.bd

bb.ac:                                            ; preds = %bb.ab
  %i.ib = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  store ptr %i.ib, ptr %20, align 8, !tbaa !47
  %i.ic = load ptr, ptr %21, align 8, !tbaa !51   ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.hx
  br i1 %i.id, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280

bb.ad:                                            ; preds = %bb.ac
  %i.ie = load i64, ptr %i.hy, align 8, !tbaa !50 ; 3 uses
  %i.if = icmp ult i64 %i.ie, 16
  call void @llvm.assume(i1 %i.if)
  %i.ig = add nuw nsw i64 %i.ie, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ib, ptr noundef nonnull align 8 dereferenceable(1) %i.hx, i64 %i.ig, i1 false)
  br label %_ZN5vcpkg11PackageSpecC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7TripletE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280: ; preds = %bb.ac
  store ptr %i.ic, ptr %20, align 8, !tbaa !51
  %i.ih = load i64, ptr %i.hx, align 8, !tbaa !48
  store i64 %i.ih, ptr %i.ib, align 8, !tbaa !48
  %.pre795 = load i64, ptr %i.hy, align 8, !tbaa !50
  br label %_ZN5vcpkg11PackageSpecC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7TripletE.exit

_ZN5vcpkg11PackageSpecC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7TripletE.exit: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280
  %i.ii = phi i64 [ %i.ie, %bb.ad ], [ %.pre795, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i280 ]
  %i.ij = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.ii, ptr %i.ij, align 8, !tbaa !50
  store ptr %i.hx, ptr %21, align 8, !tbaa !51
  store i64 0, ptr %i.hy, align 8, !tbaa !50
  store i8 0, ptr %i.hx, align 8, !tbaa !48
  %i.ik = getelementptr inbounds nuw i8, ptr %20, i64 32
  store ptr %i.ia, ptr %i.ik, align 8, !tbaa !230
  %i.il = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZNSt8__detail9_Map_baseIN5vcpkg11PackageSpecESt4pairIKS2_St13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_St4hashISB_ESt8equal_toISB_ESaIS3_IKSB_SB_EEEESaISK_ENS_10_Select1stESE_IS2_ESC_IS2_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS2_(ptr noundef nonnull align 8 dereferenceable(56) %i.hf, ptr noundef nonnull align 8 dereferenceable(40) %20)
          to label %_ZNSt13unordered_mapIN5vcpkg11PackageSpecES_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S7_EEES8_IS1_ESA_IS1_ESaISC_IKS1_SG_EEEixEOS1_.exit unwind label %bb.be

_ZNSt13unordered_mapIN5vcpkg11PackageSpecES_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S7_EEES8_IS1_ESA_IS1_ESaISC_IKS1_SG_EEEixEOS1_.exit: ; preds = %_ZN5vcpkg11PackageSpecC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7TripletE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  %i.im = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  store ptr %i.im, ptr %22, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 23, ptr %i.b, align 8, !tbaa !56
  %i.in = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc284 unwind label %bb.bf ; 2 uses

.noexc284:                                        ; preds = %_ZNSt13unordered_mapIN5vcpkg11PackageSpecES_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_St4hashIS7_ESt8equal_toIS7_ESaISt4pairIKS7_S7_EEES8_IS1_ESA_IS1_ESaISC_IKS1_SG_EEEixEOS1_.exit
  store ptr %i.in, ptr %22, align 8, !tbaa !51
  %i.io = load i64, ptr %i.b, align 8, !tbaa !56  ; 3 uses
  store i64 %i.io, ptr %i.im, align 8, !tbaa !48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.in, ptr noundef nonnull align 1 dereferenceable(23) @.str.414, i64 23, i1 false)
  %i.ip = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %i.io, ptr %i.ip, align 8, !tbaa !50
  %i.iq = load ptr, ptr %22, align 8, !tbaa !51
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.io
  store i8 0, ptr %i.ir, align 1, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.is = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.il, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixEOS5_.exit unwind label %bb.bg ; 2 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixEOS5_.exit: ; preds = %.noexc284
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !50
  %i.iv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.is, i64 noundef 0, i64 noundef %i.iu, ptr noundef nonnull @.str.123, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit288 unwind label %bb.bg ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit288: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S5_EEEixEOS5_.exit
  %i.iw = load ptr, ptr %22, align 8, !tbaa !51   ; 2 uses
  %i.ix = icmp eq ptr %i.iw, %i.im
  br i1 %i.ix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit288
  %i.iy = load i64, ptr %i.im, align 8, !tbaa !48
  %i.iz = add i64 %i.iy, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.iz) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit288, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  %i.ja = load ptr, ptr %20, align 8, !tbaa !51   ; 2 uses
end_hunk_12
begin_hunk_13_@_ZL21C_A_T_C_H_T_E_S_T_147v:bb.a
  store ptr %i.y, ptr %10, align 8, !tbaa !51
  br label %_ZN5vcpkg7VersionaSEOS0_.exit

_ZN5vcpkg7VersionaSEOS0_.exit:                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.g, %bb.h
  %i.ar = phi ptr [ %i.u, %bb.g ], [ %i.y, %bb.h ], [ %i.x, %bb.c ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.as, align 8, !tbaa !50
  store i8 0, ptr %i.ar, align 1, !tbaa !48
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !54
  %i.av = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store i32 %i.au, ptr %i.av, align 8, !tbaa !54
  %i.aw = load ptr, ptr %11, align 8, !tbaa !51   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.p
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %_ZN5vcpkg7VersionaSEOS0_.exit
  %i.ay = load i64, ptr %i.p, align 8, !tbaa !48
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5vcpkg7VersionaSEOS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.ba = load ptr, ptr %10, align 8, !tbaa !51   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZN5vcpkg7VersionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !48
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit

_ZN5vcpkg7VersionD2Ev.exit:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV29MockVersionedPortfileProvider, i64 16), ptr %12, align 8, !tbaa !33
  %i.bf = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store i32 0, ptr %i.bf, align 8, !tbaa !41
  %i.bg = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  store ptr null, ptr %i.bg, align 8, !tbaa !40
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !42
  %i.bi = getelementptr inbounds nuw i8, ptr %12, i64 40
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !43
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 48
  store i64 0, ptr %i.bj, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !1442)
  %i.bk = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #24
          to label %.noexc137 unwind label %bb.at ; 13 uses

.noexc137:                                        ; preds = %_ZN5vcpkg7VersionD2Ev.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.bl, i8 0, i64 160, i1 false), !noalias !1442
  store ptr %i.bl, ptr %i.bk, align 16, !tbaa !47, !noalias !1442
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  store i64 0, ptr %i.bm, align 8, !tbaa !50, !noalias !1442
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 32 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.bn, i8 0, i64 48, i1 false), !noalias !1442
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.bo) #22, !noalias !1442
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 88
  invoke void @_ZN5vcpkg28ParsedSpdxLicenseDeclarationC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.bp)
          to label %bb.j unwind label %bb.i, !noalias !1442

bb.i:                                             ; preds = %.noexc137
  %i.bq = landingpad { ptr, i32 }
          cleanup
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bo) #22, !noalias !1442
  call void @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.br) #22, !noalias !1442
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bn) #22, !noalias !1442
  %i.bs = load ptr, ptr %i.bk, align 16, !tbaa !51, !noalias !1442 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.bl
  br i1 %i.bt, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.bu = load i64, ptr %i.bl, align 16, !tbaa !48, !noalias !1442
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #23, !noalias !1442
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 176) #23, !noalias !1442
  br label %.body

bb.j:                                             ; preds = %.noexc137
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bk, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i8 0, i64 24, i1 false), !noalias !1442
  store ptr %i.bk, ptr %13, align 8, !tbaa !210, !alias.scope !1442
  %i.bx = load i64, ptr %i.bm, align 8, !tbaa !50
  %i.by = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i64 noundef 0, i64 noundef %i.bx, ptr noundef nonnull @.str.216, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.au ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.ca = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.ca, ptr %14, align 8, !tbaa !47
  store i8 97, ptr %i.ca, align 8, !tbaa !48
  %i.cb = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 1, ptr %i.cb, align 8, !tbaa !50
  %i.cc = getelementptr inbounds nuw i8, ptr %14, i64 17
  store i8 0, ptr %i.cc, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %15, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit144 unwind label %bb.av

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit144:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr @.str.123, ptr %8, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !56
  %i.cd = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(36) %15, i32 noundef 4, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %8)
          to label %bb.k unwind label %bb.aw

bb.k:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit144
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !150 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !213 ; 6 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 24 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !214
  %.not.i.i146 = icmp eq ptr %i.ch, %i.cj
  br i1 %.not.i.i146, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 %i.by, ptr %i.ch, align 8, !tbaa !210
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.ck, ptr %i.cg, align 8, !tbaa !213
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

bb.m:                                             ; preds = %bb.k
  %i.cl = load ptr, ptr %i.cf, align 8, !tbaa !215 ; 10 uses
  %i.cm = ptrtoint ptr %i.ch to i64               ; 2 uses
  %i.cn = ptrtoint ptr %i.cl to i64               ; 3 uses
  %i.co = sub i64 %i.cm, %i.cn                    ; 3 uses
  %i.cp = icmp eq i64 %i.co, 9223372036854775800
  br i1 %i.cp, label %bb.n, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc293 unwind label %bb.aw

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
          to label %.noexc294 unwind label %bb.aw ; 10 uses

.noexc294:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.co
  store i64 %i.by, ptr %i.cx, align 8, !tbaa !210
  store ptr null, ptr %13, align 8, !tbaa !210
  %.not10.i.i.i.i = icmp eq ptr %i.cl, %i.ch
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc294
  %i.cy = add i64 %i.cm, -8
  %i.cz = sub i64 %i.cy, %i.cn                    ; 3 uses
  %i.da = lshr i64 %i.cz, 3
  %i.db = add nuw nsw i64 %i.da, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cz, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader433, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.dc = and i64 %i.cz, -8
  %i.dd = add i64 %i.dc, 8                        ; 2 uses
  %i.de = getelementptr i8, ptr %i.cw, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.cl, i64 %i.dd
  %bound0 = icmp ult ptr %i.cw, %i.df
  %bound1 = icmp ult ptr %i.cl, %i.de
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader433, label %vector.ph

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
  %next.gep430 = getelementptr i8, ptr %i.cl, i64 %i.dj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1443)
  call void @llvm.experimental.noalias.scope.decl(metadata !1444)
  %i.dk = getelementptr i8, ptr %next.gep430, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep430, align 8, !tbaa !210, !alias.scope !1445
  %wide.load431 = load <2 x i64>, ptr %i.dk, align 8, !tbaa !210, !alias.scope !1445
  %i.dl = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !210, !alias.scope !1446, !noalias !1447
  store <2 x i64> %wide.load431, ptr %i.dl, align 8, !tbaa !210, !alias.scope !1446, !noalias !1447
  %67 = getelementptr i8, ptr %next.gep430, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep430, align 8, !tbaa !210, !alias.scope !1445
  store <2 x ptr> splat (ptr null), ptr %67, align 8, !tbaa !210, !alias.scope !1445
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !1424

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader433

.lr.ph.i.i.i.i.preheader433:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.cw, %vector.memcheck ], [ %i.cw, %.lr.ph.i.i.i.i.preheader ], [ %i.dh, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.cl, %vector.memcheck ], [ %i.cl, %.lr.ph.i.i.i.i.preheader ], [ %i.di, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader433, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader433 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader433 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1443)
  call void @llvm.experimental.noalias.scope.decl(metadata !1444)
  %i.dn = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !210, !alias.scope !1444
  store i64 %i.dn, ptr %.012.i.i.i.i, align 8, !tbaa !210, !alias.scope !1443
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !210, !alias.scope !1444
  %i.do = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i292 = icmp eq ptr %i.do, %i.ch
  br i1 %.not.i.i.i.i292, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1425

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc294
  %.0.lcssa.i.i.i.i = phi ptr [ %i.cw, %.noexc294 ], [ %i.dh, %middle.block ], [ %i.dp, %.lr.ph.i.i.i.i ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.cl, null
  br i1 %.not.i23.i, label %.noexc147, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.dr = load ptr, ptr %i.ci, align 8, !tbaa !214
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = sub i64 %i.ds, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.dt) #23
  br label %.noexc147

.noexc147:                                        ; preds = %bb.o, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.cw, ptr %i.cf, align 8, !tbaa !215
  store ptr %i.dq, ptr %i.cg, align 8, !tbaa !213
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.du, ptr %i.ci, align 8, !tbaa !214
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %.noexc147, %bb.l
  %i.dv = load ptr, ptr %15, align 8, !tbaa !51   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZN5vcpkg7VersionD2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i148: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !48
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit150

_ZN5vcpkg7VersionD2Ev.exit150:                    ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.ea = load ptr, ptr %14, align 8, !tbaa !51   ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.ca
  br i1 %i.eb, label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %_ZN5vcpkg7VersionD2Ev.exit150
  %i.ec = load i64, ptr %i.ca, align 8, !tbaa !48
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #23
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN5vcpkg7VersionD2Ev.exit150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5vcpkg4Test20MockCMakeVarProviderE, i64 16), ptr %16, align 8, !tbaa !33
  %i.ee = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %16, i64 56
  store ptr %i.ef, ptr %i.ee, align 8, !tbaa !64
  %i.eg = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 1, ptr %i.eg, align 8, !tbaa !65
  %i.eh = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.ei = getelementptr inbounds nuw i8, ptr %16, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eh, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ei, align 8, !tbaa !66
  %i.ej = getelementptr inbounds nuw i8, ptr %16, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ej, i8 0, i64 16, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.el = getelementptr inbounds nuw i8, ptr %16, i64 112
  store ptr %i.el, ptr %i.ek, align 8, !tbaa !64
  %i.em = getelementptr inbounds nuw i8, ptr %16, i64 72
  store i64 1, ptr %i.em, align 8, !tbaa !65
  %i.en = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.eo = getelementptr inbounds nuw i8, ptr %16, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.en, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.eo, align 8, !tbaa !66
  %i.ep = getelementptr inbounds nuw i8, ptr %16, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ep, i8 0, i64 16, i1 false)
  %i.eq = getelementptr inbounds nuw i8, ptr %16, i64 120
  %i.er = getelementptr inbounds nuw i8, ptr %16, i64 168
  store ptr %i.er, ptr %i.eq, align 8, !tbaa !68
  %i.es = getelementptr inbounds nuw i8, ptr %16, i64 128
  store i64 1, ptr %i.es, align 8, !tbaa !69
  %i.et = getelementptr inbounds nuw i8, ptr %16, i64 136
  %i.eu = getelementptr inbounds nuw i8, ptr %16, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.et, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.eu, align 8, !tbaa !66
  %i.ev = getelementptr inbounds nuw i8, ptr %16, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ev, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.ew = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  store ptr %i.ew, ptr %17, align 8, !tbaa !47
  store i8 97, ptr %i.ew, align 8, !tbaa !48
  %i.ex = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 1, ptr %i.ex, align 8, !tbaa !50
  %i.ey = getelementptr inbounds nuw i8, ptr %17, i64 17
  store i8 0, ptr %i.ey, align 1, !tbaa !48
  %i.ez = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.fa = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store ptr %i.fa, ptr %18, align 8, !tbaa !47
  store i8 120, ptr %i.fa, align 8, !tbaa !48
  %i.fb = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 1, ptr %i.fb, align 8, !tbaa !50
  %i.fc = getelementptr inbounds nuw i8, ptr %18, i64 17
  store i8 0, ptr %i.fc, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  invoke void @_ZN5vcpkg18PlatformExpression25parse_platform_expressionENS_10StringViewENS0_23MultipleBinaryOperatorsE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT.400") align 8 %19, ptr nonnull @.str.417, i64 5, i32 noundef 0)
          to label %bb.p unwind label %bb.ay

bb.p:                                             ; preds = %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  store i32 2386, ptr %20, align 8, !tbaa !154
  %i.fd = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr @.str, ptr %i.fd, align 8, !tbaa !155
  %i.fe = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr @__func__._ZL21C_A_T_C_H_T_E_S_T_147v, ptr %i.fe, align 8, !tbaa !156
  %i.ff = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 8, !tbaa !235, !range !112, !noundef !113
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.q, label %_ZNO5vcpkg9ExpectedTINS_18PlatformExpression4ExprENS_15LocalizedStringEE13value_or_exitERKNS_8LineInfoE.exit

bb.q:                                             ; preds = %bb.p
  %i.fi = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKR5vcpkg9ExpectedTINS_18PlatformExpression4ExprENS_15LocalizedStringEE5errorEv(ptr noundef nonnull align 8 dereferenceable(33) %19) #22
  invoke void @_ZN5vcpkg6Checks21msg_exit_with_messageERKNS_8LineInfoERKNS_15LocalizedStringE(ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(32) %i.fi) #25
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.fj = landingpad { ptr, i32 }
          catch ptr null
  %i.fk = extractvalue { ptr, i32 } %i.fj, 0
  call void @__clang_call_terminate(ptr %i.fk) #21
  unreachable

_ZNO5vcpkg9ExpectedTINS_18PlatformExpression4ExprENS_15LocalizedStringEE13value_or_exitERKNS_8LineInfoE.exit: ; preds = %bb.p
  %i.fl = getelementptr inbounds nuw i8, ptr %18, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.fl, ptr noundef nonnull align 8 dereferenceable(8) %19) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ez, i8 0, i64 24, i1 false)
  %i.fm = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24
          to label %_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i unwind label %bb.t ; 3 uses

_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNO5vcpkg9ExpectedTINS_18PlatformExpression4ExprENS_15LocalizedStringEE13value_or_exitERKNS_8LineInfoE.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %18, i64 40
  store ptr %i.fm, ptr %i.ez, align 8, !tbaa !218
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  %i.fp = getelementptr inbounds nuw i8, ptr %17, i64 48
  store ptr %i.fo, ptr %i.fp, align 8, !tbaa !219
  %i.fq = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN5vcpkg26DependencyRequestedFeatureEPS1_ET0_T_S6_S5_(ptr noundef nonnull %18, ptr noundef nonnull %i.fn, ptr noundef nonnull %i.fm)
          to label %bb.v unwind label %bb.t

bb.t:                                             ; preds = %_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i, %_ZNO5vcpkg9ExpectedTINS_18PlatformExpression4ExprENS_15LocalizedStringEE13value_or_exitERKNS_8LineInfoE.exit
  %i.fr = landingpad { ptr, i32 }
          cleanup
  %i.fs = load ptr, ptr %i.ez, align 8, !tbaa !218 ; 3 uses
  %.not.i.i5.i = icmp eq ptr %i.fs, null
  br i1 %.not.i.i5.i, label %.body162, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ft = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !219
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = ptrtoint ptr %i.fs to i64
  %i.fx = sub i64 %i.fv, %i.fw
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef %i.fx) #23
  br label %.body162

bb.v:                                             ; preds = %_ZNSt12_Vector_baseIN5vcpkg26DependencyRequestedFeatureESaIS1_EE11_M_allocateEm.exit.i.i
  %i.fy = getelementptr inbounds nuw i8, ptr %17, i64 40
  store ptr %i.fq, ptr %i.fy, align 8, !tbaa !220
  %i.fz = getelementptr inbounds nuw i8, ptr %17, i64 56
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.fz) #22
  %i.ga = getelementptr inbounds nuw i8, ptr %17, i64 64
  store i32 0, ptr %i.ga, align 8, !tbaa !72
  %i.gb = getelementptr inbounds nuw i8, ptr %17, i64 72
  call void @_ZN5vcpkg7VersionC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.gb) #22
  %i.gc = getelementptr inbounds nuw i8, ptr %17, i64 112
  store i8 0, ptr %i.gc, align 8, !tbaa !94
  %i.gd = getelementptr inbounds nuw i8, ptr %17, i64 113
end_hunk_13
begin_hunk_14_@_ZL21C_A_T_C_H_T_E_S_T_151v:bb.a
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZN5vcpkg7VersionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !48
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit

_ZN5vcpkg7VersionD2Ev.exit:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV29MockVersionedPortfileProvider, i64 16), ptr %12, align 8, !tbaa !33
  %i.bf = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store i32 0, ptr %i.bf, align 8, !tbaa !41
  %i.bg = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  store ptr null, ptr %i.bg, align 8, !tbaa !40
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !42
  %i.bi = getelementptr inbounds nuw i8, ptr %12, i64 40
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !43
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 48
  store i64 0, ptr %i.bj, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !1482)
  %i.bk = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #24
          to label %.noexc137 unwind label %bb.av ; 13 uses

.noexc137:                                        ; preds = %_ZN5vcpkg7VersionD2Ev.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.bl, i8 0, i64 160, i1 false), !noalias !1482
  store ptr %i.bl, ptr %i.bk, align 16, !tbaa !47, !noalias !1482
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  store i64 0, ptr %i.bm, align 8, !tbaa !50, !noalias !1482
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 32 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.bn, i8 0, i64 48, i1 false), !noalias !1482
  call void @_ZN5vcpkg18PlatformExpression4ExprC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.bo) #22, !noalias !1482
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 88
  invoke void @_ZN5vcpkg28ParsedSpdxLicenseDeclarationC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.bp)
          to label %bb.j unwind label %bb.i, !noalias !1482

bb.i:                                             ; preds = %.noexc137
  %i.bq = landingpad { ptr, i32 }
          cleanup
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bo) #22, !noalias !1482
  call void @_ZNSt6vectorIN5vcpkg10DependencyESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.br) #22, !noalias !1482
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bn) #22, !noalias !1482
  %i.bs = load ptr, ptr %i.bk, align 16, !tbaa !51, !noalias !1482 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.bl
  br i1 %i.bt, label %.body.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.bu = load i64, ptr %i.bl, align 16, !tbaa !48, !noalias !1482
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #23, !noalias !1482
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 176) #23, !noalias !1482
  br label %.body

bb.j:                                             ; preds = %.noexc137
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bk, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i8 0, i64 24, i1 false), !noalias !1482
  store ptr %i.bk, ptr %13, align 8, !tbaa !210, !alias.scope !1482
  %i.bx = load i64, ptr %i.bm, align 8, !tbaa !50
  %i.by = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i64 noundef 0, i64 noundef %i.bx, ptr noundef nonnull @.str.216, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.ay ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.ca = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.ca, ptr %14, align 8, !tbaa !47
  store i8 97, ptr %i.ca, align 8, !tbaa !48
  %i.cb = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 1, ptr %i.cb, align 8, !tbaa !50
  %i.cc = getelementptr inbounds nuw i8, ptr %14, i64 17
  store i8 0, ptr %i.cc, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %15, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit144 unwind label %bb.aw

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit144:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr @.str.123, ptr %8, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !56
  %i.cd = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(36) %15, i32 noundef 4, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %8)
          to label %bb.k unwind label %bb.ax      ; 2 uses

bb.k:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit144
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ce = load ptr, ptr %15, align 8, !tbaa !51   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZN5vcpkg7VersionD2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i146: ; preds = %bb.k
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !48
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit148

_ZN5vcpkg7VersionD2Ev.exit148:                    ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.cj = load ptr, ptr %14, align 8, !tbaa !51   ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.ca
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %_ZN5vcpkg7VersionD2Ev.exit148
  %i.cl = load i64, ptr %i.ca, align 8, !tbaa !48
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %_ZN5vcpkg7VersionD2Ev.exit148, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.cn = load ptr, ptr %i.cd, align 8, !tbaa !150 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 3 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !213 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 24 ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !214
  %.not.i.i152 = icmp eq ptr %i.cq, %i.cs
  br i1 %.not.i.i152, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151
  store i64 %i.by, ptr %i.cq, align 8, !tbaa !210
  store ptr null, ptr %13, align 8, !tbaa !210
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.ct, ptr %i.cp, align 8, !tbaa !213
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151
  %i.cu = load ptr, ptr %i.co, align 8, !tbaa !215 ; 10 uses
  %i.cv = ptrtoint ptr %i.cq to i64               ; 2 uses
  %i.cw = ptrtoint ptr %i.cu to i64               ; 3 uses
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
  store i64 %i.by, ptr %i.dg, align 8, !tbaa !210
  store ptr null, ptr %13, align 8, !tbaa !210
  %.not10.i.i.i.i = icmp eq ptr %i.cu, %i.cq
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc310
  %i.dh = add i64 %i.cv, -8
  %i.di = sub i64 %i.dh, %i.cw                    ; 3 uses
  %i.dj = lshr i64 %i.di, 3
  %i.dk = add nuw nsw i64 %i.dj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.di, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader461, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.dl = and i64 %i.di, -8
  %i.dm = add i64 %i.dl, 8                        ; 2 uses
  %i.dn = getelementptr i8, ptr %i.df, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.cu, i64 %i.dm
  %bound0 = icmp ult ptr %i.df, %i.do
  %bound1 = icmp ult ptr %i.cu, %i.dn
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader461, label %vector.ph

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
  %next.gep458 = getelementptr i8, ptr %i.cu, i64 %i.ds ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1483)
  call void @llvm.experimental.noalias.scope.decl(metadata !1484)
  %i.dt = getelementptr i8, ptr %next.gep458, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep458, align 8, !tbaa !210, !alias.scope !1485
  %wide.load459 = load <2 x i64>, ptr %i.dt, align 8, !tbaa !210, !alias.scope !1485
  %i.du = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !210, !alias.scope !1486, !noalias !1487
  store <2 x i64> %wide.load459, ptr %i.du, align 8, !tbaa !210, !alias.scope !1486, !noalias !1487
  %69 = getelementptr i8, ptr %next.gep458, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep458, align 8, !tbaa !210, !alias.scope !1485
  store <2 x ptr> splat (ptr null), ptr %69, align 8, !tbaa !210, !alias.scope !1485
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !1464

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dk, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i.preheader461

.lr.ph.i.i.i.i.preheader461:                      ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.df, %vector.memcheck ], [ %i.df, %.lr.ph.i.i.i.i.preheader ], [ %i.dq, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.cu, %vector.memcheck ], [ %i.cu, %.lr.ph.i.i.i.i.preheader ], [ %i.dr, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader461, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.dy, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader461 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader461 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1483)
  call void @llvm.experimental.noalias.scope.decl(metadata !1484)
  %i.dw = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !210, !alias.scope !1484
  store i64 %i.dw, ptr %.012.i.i.i.i, align 8, !tbaa !210, !alias.scope !1483
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !210, !alias.scope !1484
  %i.dx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i308 = icmp eq ptr %i.dx, %i.cq
  br i1 %.not.i.i.i.i308, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1465

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc310
  %.0.lcssa.i.i.i.i = phi ptr [ %i.df, %.noexc310 ], [ %i.dq, %middle.block ], [ %i.dy, %.lr.ph.i.i.i.i ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.cu, null
  br i1 %.not.i23.i, label %.noexc153, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.ea = load ptr, ptr %i.cr, align 8, !tbaa !214
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = sub i64 %i.eb, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.ec) #23
  br label %.noexc153

.noexc153:                                        ; preds = %bb.o, %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  store ptr %i.df, ptr %i.co, align 8, !tbaa !215
  store ptr %i.dz, ptr %i.cp, align 8, !tbaa !213
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dd
  store ptr %i.ed, ptr %i.cr, align 8, !tbaa !214
  %.pre = load ptr, ptr %i.cd, align 8, !tbaa !150
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %.noexc153, %bb.l
  %i.ee = phi ptr [ %.pre, %.noexc153 ], [ %i.cn, %bb.l ]
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !152 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 264
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.eh = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 11 uses
  store ptr %i.eh, ptr %16, align 8, !tbaa !47
  store i8 120, ptr %i.eh, align 8, !tbaa !48
  %i.ei = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 4 uses
  store i64 1, ptr %i.ei, align 8, !tbaa !50
  %i.ej = getelementptr inbounds nuw i8, ptr %16, i64 17
  store i8 0, ptr %i.ej, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  invoke void @_ZN5vcpkg18PlatformExpression25parse_platform_expressionENS_10StringViewENS0_23MultipleBinaryOperatorsE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT.400") align 8 %17, ptr nonnull @.str.417, i64 5, i32 noundef 0)
          to label %bb.p unwind label %bb.ba

bb.p:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  store i32 2423, ptr %18, align 8, !tbaa !154
  %i.el = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr @.str, ptr %i.el, align 8, !tbaa !155
  %i.em = getelementptr inbounds nuw i8, ptr %18, i64 16
  store ptr @__func__._ZL21C_A_T_C_H_T_E_S_T_151v, ptr %i.em, align 8, !tbaa !156
  %i.en = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  %i.eo = load i8, ptr %i.en, align 8, !tbaa !235, !range !112, !noundef !113
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.q, label %_ZNO5vcpkg9ExpectedTINS_18PlatformExpression4ExprENS_15LocalizedStringEE13value_or_exitERKNS_8LineInfoE.exit

bb.q:                                             ; preds = %bb.p
  %i.eq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNKR5vcpkg9ExpectedTINS_18PlatformExpression4ExprENS_15LocalizedStringEE5errorEv(ptr noundef nonnull align 8 dereferenceable(33) %17) #22
  invoke void @_ZN5vcpkg6Checks21msg_exit_with_messageERKNS_8LineInfoERKNS_15LocalizedStringE(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(32) %i.eq) #25
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #21
  unreachable

_ZNO5vcpkg9ExpectedTINS_18PlatformExpression4ExprENS_15LocalizedStringEE13value_or_exitERKNS_8LineInfoE.exit: ; preds = %bb.p
  call void @_ZN5vcpkg18PlatformExpression4ExprC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.ek, ptr noundef nonnull align 8 dereferenceable(8) %17) #22
  %i.et = getelementptr inbounds nuw i8, ptr %i.ef, i64 272 ; 3 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !220 ; 7 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ef, i64 280
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !219
  %.not.i.i158 = icmp eq ptr %i.eu, %i.ew
  br i1 %.not.i.i158, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_ZNO5vcpkg9ExpectedTINS_18PlatformExpression4ExprENS_15LocalizedStringEE13value_or_exitERKNS_8LineInfoE.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 16 ; 3 uses
  store ptr %i.ex, ptr %i.eu, align 8, !tbaa !47
  %i.ey = load ptr, ptr %16, align 8, !tbaa !51   ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.eh
  br i1 %i.ez, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i159

bb.u:                                             ; preds = %bb.t
  %i.fa = load i64, ptr %i.ei, align 8, !tbaa !50 ; 3 uses
  %i.fb = icmp ult i64 %i.fa, 16
  call void @llvm.assume(i1 %i.fb)
  %i.fc = add nuw nsw i64 %i.fa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ex, ptr noundef nonnull align 8 dereferenceable(1) %i.eh, i64 %i.fc, i1 false)
  br label %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i159: ; preds = %bb.t
  store ptr %i.ey, ptr %i.eu, align 8, !tbaa !51
  %i.fd = load i64, ptr %i.eh, align 8, !tbaa !48
  store i64 %i.fd, ptr %i.ex, align 8, !tbaa !48
  %.pre365 = load i64, ptr %i.ei, align 8, !tbaa !50
  br label %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i

_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i159, %bb.u
  %i.fe = phi i64 [ %.pre365, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i159 ], [ %i.fa, %bb.u ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !50
  store ptr %i.eh, ptr %16, align 8, !tbaa !51
  store i64 0, ptr %i.ei, align 8, !tbaa !50
  store i8 0, ptr %i.eh, align 8, !tbaa !48
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  call void @_ZN5vcpkg18PlatformExpression4ExprC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.fg, ptr noundef nonnull align 8 dereferenceable(8) %i.ek) #22
  %i.fh = load ptr, ptr %i.et, align 8, !tbaa !220
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 40
  store ptr %i.fi, ptr %i.et, align 8, !tbaa !220
  br label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit

bb.v:                                             ; preds = %_ZNO5vcpkg9ExpectedTINS_18PlatformExpression4ExprENS_15LocalizedStringEE13value_or_exitERKNS_8LineInfoE.exit
  invoke void @_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, ptr %i.eu, ptr noundef nonnull align 8 dereferenceable(40) %16)
          to label %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit unwind label %bb.az

_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZN5vcpkg26DependencyRequestedFeatureC2EOS0_.exit.i.i, %bb.v
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ek) #22
  %i.fj = load ptr, ptr %16, align 8, !tbaa !51   ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.eh
  br i1 %i.fk, label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i161: ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit
  %i.fl = load i64, ptr %i.eh, align 8, !tbaa !48
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #23
  br label %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit

_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit:   ; preds = %_ZNSt6vectorIN5vcpkg26DependencyRequestedFeatureESaIS1_EE9push_backEOS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.fn = load i8, ptr %i.en, align 8, !tbaa !235, !range !112, !noundef !113
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit
  %i.fp = load ptr, ptr %17, align 8, !tbaa !51   ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.fr = icmp eq ptr %i.fp, %i.fq
  br i1 %i.fr, label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i163: ; preds = %bb.w
  %i.fs = load i64, ptr %i.fq, align 8, !tbaa !48
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.ft) #23
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit

bb.x:                                             ; preds = %_ZN5vcpkg26DependencyRequestedFeatureD2Ev.exit
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(33) %17) #22
  br label %_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg16FeatureParagraphESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.w, %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5vcpkg4Test20MockCMakeVarProviderE, i64 16), ptr %19, align 8, !tbaa !33
  %i.fu = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %19, i64 56
  store ptr %i.fv, ptr %i.fu, align 8, !tbaa !64
  %i.fw = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 1, ptr %i.fw, align 8, !tbaa !65
  %i.fx = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.fy = getelementptr inbounds nuw i8, ptr %19, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.fy, align 8, !tbaa !66
  %i.fz = getelementptr inbounds nuw i8, ptr %19, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fz, i8 0, i64 16, i1 false)
  %i.ga = getelementptr inbounds nuw i8, ptr %19, i64 64
  %i.gb = getelementptr inbounds nuw i8, ptr %19, i64 112
  store ptr %i.gb, ptr %i.ga, align 8, !tbaa !64
  %i.gc = getelementptr inbounds nuw i8, ptr %19, i64 72
  store i64 1, ptr %i.gc, align 8, !tbaa !65
  %i.gd = getelementptr inbounds nuw i8, ptr %19, i64 80
  %i.ge = getelementptr inbounds nuw i8, ptr %19, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gd, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ge, align 8, !tbaa !66
end_hunk_14
begin_hunk_15_@_ZL21C_A_T_C_H_T_E_S_T_155v:bb.a
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
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !238  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !239
  %.not.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i.i, label %bb.c, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.b
  %i.h = load i64, ptr %13, align 8, !tbaa !241
  store i64 %i.h, ptr %i.e, align 8, !tbaa !241
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.i, ptr %i.d, align 8, !tbaa !238
  br label %_ZNSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS1_EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %12, align 8, !tbaa !242   ; 10 uses
  %i.k = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
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
  %i.w = load i64, ptr %13, align 8, !tbaa !241
  store i64 %i.w, ptr %i.v, align 8, !tbaa !241
  store ptr null, ptr %13, align 8, !tbaa !241
  %.not10.i.i.i.i = icmp eq ptr %i.j, %i.e
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i1004.preheader

.lr.ph.i.i.i.i1004.preheader:                     ; preds = %.noexc1007
  %i.x = add i64 %i.k, -8
  %i.y = sub i64 %i.x, %i.l                       ; 3 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i1004.preheader1532, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i1004.preheader
  %i.ab = and i64 %i.y, -8
  %i.ac = add i64 %i.ab, 8                        ; 2 uses
  %i.ad = getelementptr i8, ptr %i.u, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.j, i64 %i.ac
  %bound0 = icmp ult ptr %i.u, %i.ae
  %bound1 = icmp ult ptr %i.j, %i.ad
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i1004.preheader1532, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.u, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.j, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ai ; 2 uses
  %next.gep1504 = getelementptr i8, ptr %i.j, i64 %i.ai ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1526)
  call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  %i.aj = getelementptr i8, ptr %next.gep1504, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1504, align 8, !tbaa !241, !alias.scope !1528
  %wide.load1505 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !241, !alias.scope !1528
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !241, !alias.scope !1529, !noalias !1530
  store <2 x i64> %wide.load1505, ptr %i.ak, align 8, !tbaa !241, !alias.scope !1529, !noalias !1530
  %166 = getelementptr i8, ptr %next.gep1504, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1504, align 8, !tbaa !241, !alias.scope !1528
  store <2 x ptr> splat (ptr null), ptr %166, align 8, !tbaa !241, !alias.scope !1528
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !1502

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i1004.preheader1532

.lr.ph.i.i.i.i1004.preheader1532:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i1004.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %.lr.ph.i.i.i.i1004.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.i.i.i1004.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i1004

.lr.ph.i.i.i.i1004:                               ; preds = %.lr.ph.i.i.i.i1004.preheader1532, %.lr.ph.i.i.i.i1004
  %.012.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i1004 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i1004.preheader1532 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i1004 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i1004.preheader1532 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1526)
  call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  %i.am = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !241, !alias.scope !1527
  store i64 %i.am, ptr %.012.i.i.i.i, align 8, !tbaa !241, !alias.scope !1526
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !241, !alias.scope !1527
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i1005 = icmp eq ptr %i.an, %i.e
  br i1 %.not.i.i.i.i1005, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i1004, !llvm.loop !1503

_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i1004, %middle.block, %.noexc1007
  %.0.lcssa.i.i.i.i = phi ptr [ %i.u, %.noexc1007 ], [ %i.ag, %middle.block ], [ %i.ao, %.lr.ph.i.i.i.i1004 ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.j, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !239
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = sub i64 %i.ar, %i.l
  call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.as) #23
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.e
  store ptr %i.u, ptr %12, align 8, !tbaa !242
  store ptr %i.ap, ptr %i.d, align 8, !tbaa !238
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.at, ptr %i.f, align 8, !tbaa !239
  %.pr = load ptr, ptr %13, align 8, !tbaa !241   ; 3 uses
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
  %i.au = load ptr, ptr %i.d, align 8, !tbaa !238 ; 6 uses
  %i.av = load ptr, ptr %i.f, align 8, !tbaa !239
  %.not.i.i292 = icmp eq ptr %i.au, %i.av
  br i1 %.not.i.i292, label %bb.g, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit294.thread

_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit294.thread: ; preds = %bb.f
  %i.aw = load i64, ptr %14, align 8, !tbaa !241
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !241
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.ax, ptr %i.d, align 8, !tbaa !238
  br label %_ZNSt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS1_EED2Ev.exit297

bb.g:                                             ; preds = %bb.f
  %i.ay = load ptr, ptr %12, align 8, !tbaa !242  ; 10 uses
  %i.az = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = icmp eq i64 %i.bb, 9223372036854775800
  br i1 %i.bc, label %bb.h, label %_ZNKSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i1008

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.398) #25
          to label %.noexc1026 unwind label %bb.ag

.noexc1026:                                       ; preds = %bb.h
  unreachable

_ZNKSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i1008: ; preds = %bb.g
  %i.bd = ashr exact i64 %i.bb, 3                 ; 3 uses
  %.sroa.speculated.i.i1009 = call i64 @llvm.umax.i64(i64 %i.bd, i64 1)
  %i.be = add nsw i64 %.sroa.speculated.i.i1009, %i.bd ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bd
  %i.bg = call i64 @llvm.umin.i64(i64 %i.be, i64 1152921504606846975)
  %i.bh = select i1 %i.bf, i64 1152921504606846975, i64 %i.bg ; 3 uses
  %.not.i.i1010 = icmp ne i64 %i.bh, 0
  call void @llvm.assume(i1 %.not.i.i1010)
  %i.bi = shl nuw nsw i64 %i.bh, 3
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #24
          to label %.noexc1027 unwind label %bb.ag ; 10 uses

.noexc1027:                                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i1008
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bb
  %i.bl = load i64, ptr %14, align 8, !tbaa !241
  store i64 %i.bl, ptr %i.bk, align 8, !tbaa !241
  store ptr null, ptr %14, align 8, !tbaa !241
  %.not10.i.i.i.i1011 = icmp eq ptr %i.ay, %i.au
  br i1 %.not10.i.i.i.i1011, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i1023, label %.lr.ph.i.i.i.i1012.preheader

.lr.ph.i.i.i.i1012.preheader:                     ; preds = %.noexc1027
  %i.bm = add i64 %i.az, -8
  %i.bn = sub i64 %i.bm, %i.ba                    ; 3 uses
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %min.iters.check1513 = icmp ult i64 %i.bn, 136
  br i1 %min.iters.check1513, label %.lr.ph.i.i.i.i1012.preheader1531, label %vector.memcheck1514

vector.memcheck1514:                              ; preds = %.lr.ph.i.i.i.i1012.preheader
  %i.bq = and i64 %i.bn, -8
  %i.br = add i64 %i.bq, 8                        ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bj, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.ay, i64 %i.br
  %bound01515 = icmp ult ptr %i.bj, %i.bt
  %bound11516 = icmp ult ptr %i.ay, %i.bs
  %found.conflict1517 = and i1 %bound01515, %bound11516
  br i1 %found.conflict1517, label %.lr.ph.i.i.i.i1012.preheader1531, label %vector.ph1518

vector.ph1518:                                    ; preds = %vector.memcheck1514
  %n.vec1519 = and i64 %i.bp, 4611686018427387900 ; 3 uses
  %i.bu = shl i64 %n.vec1519, 3                   ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bj, i64 %i.bu  ; 2 uses
  %i.bw = getelementptr i8, ptr %i.ay, i64 %i.bu
  br label %vector.body1520

vector.body1520:                                  ; preds = %vector.body1520, %vector.ph1518
  %index1521 = phi i64 [ 0, %vector.ph1518 ], [ %index.next1526, %vector.body1520 ] ; 2 uses
  %i.bx = shl i64 %index1521, 3                   ; 2 uses
  %next.gep1522 = getelementptr i8, ptr %i.bj, i64 %i.bx ; 2 uses
  %next.gep1523 = getelementptr i8, ptr %i.ay, i64 %i.bx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1531)
  call void @llvm.experimental.noalias.scope.decl(metadata !1532)
  %i.by = getelementptr i8, ptr %next.gep1523, i64 16
  %wide.load1524 = load <2 x i64>, ptr %next.gep1523, align 8, !tbaa !241, !alias.scope !1533
  %wide.load1525 = load <2 x i64>, ptr %i.by, align 8, !tbaa !241, !alias.scope !1533
  %i.bz = getelementptr i8, ptr %next.gep1522, i64 16
  store <2 x i64> %wide.load1524, ptr %next.gep1522, align 8, !tbaa !241, !alias.scope !1534, !noalias !1535
  store <2 x i64> %wide.load1525, ptr %i.bz, align 8, !tbaa !241, !alias.scope !1534, !noalias !1535
  %167 = getelementptr i8, ptr %next.gep1523, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1523, align 8, !tbaa !241, !alias.scope !1533
  store <2 x ptr> splat (ptr null), ptr %167, align 8, !tbaa !241, !alias.scope !1533
  %index.next1526 = add nuw i64 %index1521, 4     ; 2 uses
  %i.ca = icmp eq i64 %index.next1526, %n.vec1519
  br i1 %i.ca, label %middle.block1527, label %vector.body1520, !llvm.loop !1510

middle.block1527:                                 ; preds = %vector.body1520
  %cmp.n1528 = icmp eq i64 %i.bp, %n.vec1519
  br i1 %cmp.n1528, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i1023, label %.lr.ph.i.i.i.i1012.preheader1531

.lr.ph.i.i.i.i1012.preheader1531:                 ; preds = %vector.memcheck1514, %.lr.ph.i.i.i.i1012.preheader, %middle.block1527
  %.012.i.i.i.i1013.ph = phi ptr [ %i.bj, %vector.memcheck1514 ], [ %i.bj, %.lr.ph.i.i.i.i1012.preheader ], [ %i.bv, %middle.block1527 ]
  %.0911.i.i.i.i1014.ph = phi ptr [ %i.ay, %vector.memcheck1514 ], [ %i.ay, %.lr.ph.i.i.i.i1012.preheader ], [ %i.bw, %middle.block1527 ]
  br label %.lr.ph.i.i.i.i1012

.lr.ph.i.i.i.i1012:                               ; preds = %.lr.ph.i.i.i.i1012.preheader1531, %.lr.ph.i.i.i.i1012
  %.012.i.i.i.i1013 = phi ptr [ %i.cd, %.lr.ph.i.i.i.i1012 ], [ %.012.i.i.i.i1013.ph, %.lr.ph.i.i.i.i1012.preheader1531 ] ; 2 uses
  %.0911.i.i.i.i1014 = phi ptr [ %i.cc, %.lr.ph.i.i.i.i1012 ], [ %.0911.i.i.i.i1014.ph, %.lr.ph.i.i.i.i1012.preheader1531 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1531)
  call void @llvm.experimental.noalias.scope.decl(metadata !1532)
  %i.cb = load i64, ptr %.0911.i.i.i.i1014, align 8, !tbaa !241, !alias.scope !1532
  store i64 %i.cb, ptr %.012.i.i.i.i1013, align 8, !tbaa !241, !alias.scope !1531
  store ptr null, ptr %.0911.i.i.i.i1014, align 8, !tbaa !241, !alias.scope !1532
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i1014, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i1013, i64 8 ; 2 uses
  %.not.i.i.i.i1015 = icmp eq ptr %i.cc, %i.au
  br i1 %.not.i.i.i.i1015, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i1023, label %.lr.ph.i.i.i.i1012, !llvm.loop !1511

_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i1023: ; preds = %.lr.ph.i.i.i.i1012, %middle.block1527, %.noexc1027
  %.0.lcssa.i.i.i.i1017 = phi ptr [ %i.bj, %.noexc1027 ], [ %i.bv, %middle.block1527 ], [ %i.cd, %.lr.ph.i.i.i.i1012 ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i1017, i64 8
  %.not.i23.i1025 = icmp eq ptr %i.ay, null
  br i1 %.not.i23.i1025, label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit294, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i1023
  %i.cf = load ptr, ptr %i.f, align 8, !tbaa !239
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = sub i64 %i.cg, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.ch) #23
  br label %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit294

_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE9push_backEOS5_.exit294: ; preds = %_ZNSt6vectorISt10unique_ptrIN5vcpkg15StatusParagraphESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i1023, %bb.i
  store ptr %i.bj, ptr %12, align 8, !tbaa !242
  store ptr %i.ce, ptr %i.d, align 8, !tbaa !238
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bh
  store ptr %i.ci, ptr %i.f, align 8, !tbaa !239
  %.pr1094 = load ptr, ptr %14, align 8, !tbaa !241 ; 3 uses
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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV29MockVersionedPortfileProvider, i64 16), ptr %16, align 8, !tbaa !33
  %i.cj = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store i32 0, ptr %i.cj, align 8, !tbaa !41
  %i.ck = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  store ptr null, ptr %i.ck, align 8, !tbaa !40
  %i.cl = getelementptr inbounds nuw i8, ptr %16, i64 32
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !42
  %i.cm = getelementptr inbounds nuw i8, ptr %16, i64 40
  store ptr %i.cj, ptr %i.cm, align 8, !tbaa !43
  %i.cn = getelementptr inbounds nuw i8, ptr %16, i64 48
  store i64 0, ptr %i.cn, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.co = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.co, ptr %17, align 8, !tbaa !47
  store i8 97, ptr %i.co, align 8, !tbaa !48
  %i.cp = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 1, ptr %i.cp, align 8, !tbaa !50
  %i.cq = getelementptr inbounds nuw i8, ptr %17, i64 17
  store i8 0, ptr %i.cq, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %18, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit unwind label %bb.aj

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit:          ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr @.str.123, ptr %11, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !56
  %i.cr = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(36) %18, i32 noundef 4, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %11)
          to label %bb.j unwind label %bb.ak

bb.j:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.cs = load ptr, ptr %18, align 8, !tbaa !51   ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZN5vcpkg7VersionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !48
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit

_ZN5vcpkg7VersionD2Ev.exit:                       ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.cx = load ptr, ptr %17, align 8, !tbaa !51   ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.co
  br i1 %i.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5vcpkg7VersionD2Ev.exit
  %i.cz = load i64, ptr %i.co, align 8, !tbaa !48
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.da) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5vcpkg7VersionD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.db = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.db, ptr %19, align 8, !tbaa !47
  store i8 98, ptr %i.db, align 8, !tbaa !48
  %i.dc = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 1, ptr %i.dc, align 8, !tbaa !50
  %i.dd = getelementptr inbounds nuw i8, ptr %19, i64 17
  store i8 0, ptr %i.dd, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %20, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit306 unwind label %bb.al

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit306:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr @.str.123, ptr %10, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i307 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i307, align 8, !tbaa !56
  %i.de = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(36) %20, i32 noundef 4, i32 noundef 0, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %10)
          to label %bb.k unwind label %bb.am

bb.k:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit306
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.df = load ptr, ptr %20, align 8, !tbaa !51   ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.dh = icmp eq ptr %i.df, %i.dg
  br i1 %i.dh, label %_ZN5vcpkg7VersionD2Ev.exit312, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i310

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i310: ; preds = %bb.k
  %i.di = load i64, ptr %i.dg, align 8, !tbaa !48
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dj) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit312

_ZN5vcpkg7VersionD2Ev.exit312:                    ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i310
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %i.dk = load ptr, ptr %19, align 8, !tbaa !51   ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.db
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313: ; preds = %_ZN5vcpkg7VersionD2Ev.exit312
  %i.dm = load i64, ptr %i.db, align 8, !tbaa !48
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315: ; preds = %_ZN5vcpkg7VersionD2Ev.exit312, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  %i.do = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  store ptr %i.do, ptr %21, align 8, !tbaa !47
  store i8 99, ptr %i.do, align 8, !tbaa !48
  %i.dp = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 1, ptr %i.dp, align 8, !tbaa !50
  %i.dq = getelementptr inbounds nuw i8, ptr %21, i64 17
  store i8 0, ptr %i.dq, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  invoke void @_ZN5vcpkg7VersionC2ENS_10StringViewEi(ptr noundef nonnull align 8 dereferenceable(36) %22, ptr nonnull @.str.124, i64 1, i32 noundef 0)
          to label %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit321 unwind label %bb.an

_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit321:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr @.str.123, ptr %9, align 8, !tbaa !55
  %.sroa.4.0..sroa_idx.i322 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i322, align 8, !tbaa !56
  %i.dr = invoke noundef nonnull align 8 dereferenceable(144) ptr @_ZN29MockVersionedPortfileProvider7emplaceEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEON5vcpkg7VersionENS7_13VersionSchemeENS7_14PortSourceKindENS7_10StringViewE(ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(36) %22, i32 noundef 4, i32 noundef 2, ptr noundef nonnull byval(%"struct.vcpkg::StringView") align 8 %9)
          to label %bb.l unwind label %bb.ao

bb.l:                                             ; preds = %_ZN5vcpkg7VersionC2ILi2EEERAT__Kci.exit321
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.ds = load ptr, ptr %22, align 8, !tbaa !51   ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZN5vcpkg7VersionD2Ev.exit326, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i324

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i324: ; preds = %bb.l
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !48
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dw) #23
  br label %_ZN5vcpkg7VersionD2Ev.exit326

_ZN5vcpkg7VersionD2Ev.exit326:                    ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i324
end_hunk_15
