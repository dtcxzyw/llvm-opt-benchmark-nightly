Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmXcFramework?download=true
inline.NumInlined: 1775
inline.NumDeleted: 718
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN19cmJSONHelperBuilder6ObjectI18cmXcFrameworkPlistEC2ERKS2_:bb.a
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #22
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN19cmJSONHelperBuilder6ObjectI18cmXcFrameworkPlistE6MemberEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorIN19cmJSONHelperBuilder6ObjectI18cmXcFrameworkPlistE6MemberEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !104
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !95
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !tbaa !96
  %i.n = load ptr, ptr %1, align 8, !tbaa !105
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !105
  %i.p = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN19cmJSONHelperBuilder6ObjectI18cmXcFrameworkPlistE6MemberESt6vectorIS6_SaIS6_EEEEPS6_ET0_T_SF_SE_(ptr %i.n, ptr %i.o, ptr noundef %i.j)
          to label %_ZNSt6vectorIN19cmJSONHelperBuilder6ObjectI18cmXcFrameworkPlistE6MemberESaIS4_EEC2ERKS6_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !104    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !96
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #24
  br label %common.resume

common.resume:                                    ; preds = %bb.d, %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %.body ], [ %i.q, %bb.e ], [ %i.q, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIN19cmJSONHelperBuilder6ObjectI18cmXcFrameworkPlistE6MemberESaIS4_EEC2ERKS6_.exit: ; preds = %bb.c
  store ptr %i.p, ptr %i.k, align 8, !tbaa !95
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load i8, ptr %i.x, align 8, !tbaa !103, !range !42, !noundef !43
  store i8 %i.y, ptr %i.w, align 8, !tbaa !103
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, i8 0, i64 32, i1 false)
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !18 ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFS_IFvPKN4Json5ValueEP11cmJSONStateEEN10JsonErrors11ObjectErrorERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEC2ERKSM_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN19cmJSONHelperBuilder6ObjectI18cmXcFrameworkPlistE6MemberESaIS4_EEC2ERKS6_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ae = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i32 noundef 2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.af = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !19
  store <2 x ptr> %i.af, ptr %i.aa, align 8, !tbaa !19
  br label %_ZNSt8functionIFS_IFvPKN4Json5ValueEP11cmJSONStateEEN10JsonErrors11ObjectErrorERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEC2ERKSM_.exit

bb.h:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !18 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = invoke noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.z, i32 noundef 3)
          to label %.body unwind label %bb.j      ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #21
  unreachable

_ZNSt8functionIFS_IFvPKN4Json5ValueEP11cmJSONStateEEN10JsonErrors11ObjectErrorERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISG_EEEEC2ERKSM_.exit: ; preds = %bb.g, %_ZNSt6vectorIN19cmJSONHelperBuilder6ObjectI18cmXcFrameworkPlistE6MemberESaIS4_EEC2ERKS6_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.an = load i8, ptr %i.am, align 8, !tbaa !106, !range !42, !noundef !43
  store i8 %i.an, ptr %i.al, align 8, !tbaa !106
  ret void

.body:                                            ; preds = %bb.h, %bb.i
  tail call void @_ZNSt6vectorIN19cmJSONHelperBuilder6ObjectI18cmXcFrameworkPlistE6MemberESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #20
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN19cmJSONHelperBuilder6ObjectI18cmXcFrameworkPlistED2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #21
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !104    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !95   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectI18cmXcFrameworkPlistE6MemberES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectI18cmXcFrameworkPlistE6MemberEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.p, %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectI18cmXcFrameworkPlistE6MemberEEvPT_.exit.i.i.i ], [ %i.g, %_ZNSt14_Function_baseD2Ev.exit ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectI18cmXcFrameworkPlistE6MemberEEvPT_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.m = invoke noundef zeroext i1 %i.k(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i32 noundef 3)
          to label %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectI18cmXcFrameworkPlistE6MemberEEvPT_.exit.i.i.i unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #21
  unreachable

_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectI18cmXcFrameworkPlistE6MemberEEvPT_.exit.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.i
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectI18cmXcFrameworkPlistE6MemberES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectI18cmXcFrameworkPlistE6MemberES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN19cmJSONHelperBuilder6ObjectI18cmXcFrameworkPlistE6MemberEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !104
  br label %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectI18cmXcFrameworkPlistE6MemberES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectI18cmXcFrameworkPlistE6MemberES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectI18cmXcFrameworkPlistE6MemberES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %_ZNSt14_Function_baseD2Ev.exit
  %i.q = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectI18cmXcFrameworkPlistE6MemberES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.g, %_ZNSt14_Function_baseD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN19cmJSONHelperBuilder6ObjectI18cmXcFrameworkPlistE6MemberESaIS4_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectI18cmXcFrameworkPlistE6MemberES4_EvT_S6_RSaIT0_E.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !96
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #24
  br label %_ZNSt6vectorIN19cmJSONHelperBuilder6ObjectI18cmXcFrameworkPlistE6MemberESaIS4_EED2Ev.exit

_ZNSt6vectorIN19cmJSONHelperBuilder6ObjectI18cmXcFrameworkPlistE6MemberESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN19cmJSONHelperBuilder6ObjectI18cmXcFrameworkPlistE6MemberES4_EvT_S6_RSaIT0_E.exit.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z23cmParseXcFrameworkPlistRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK10cmMakefileRK19cmListFileBacktrace(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(2952) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca [3 x %"struct.std::pair.608"], align 8 ; 12 uses
  %5 = alloca [2 x %"struct.std::pair.608"], align 8 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
  %i.m = alloca ptr, align 8                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.std::vector.94", align 16   ; 23 uses
  %7 = alloca %"class.std::function.0", align 8   ; 11 uses
  %8 = alloca %"class.std::vector.94", align 16   ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %10 = alloca %"class.std::function.0", align 8  ; 11 uses
  %11 = alloca %"class.std::function.0", align 8  ; 11 uses
  %12 = alloca [2 x %"struct.std::pair.608"], align 8 ; 9 uses
  %13 = alloca [2 x %"struct.std::pair.608"], align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %15 = alloca %"class.std::optional.396", align 8 ; 16 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %class.cmJSONState, align 8        ; 21 uses
  %18 = alloca %"struct.(anonymous namespace)::PlistMetadata", align 8 ; 14 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %struct.cmXcFrameworkPlist, align 8 ; 15 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.o = tail call noundef ptr @_ZNK10cmMakefile18GetGlobalGeneratorEv(ptr noundef nonnull align 8 dereferenceable(2952) %2) ; 2 uses
  tail call void @_ZNK17cmGlobalGenerator26GetXcFrameworkPListContentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::optional") align 8 %0, ptr noundef nonnull align 8 dereferenceable(2202) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !108, !range !42, !noundef !43
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %.critedge52, label %_ZNSt14_Optional_baseI18cmXcFrameworkPlistLb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseI18cmXcFrameworkPlistLb0ELb0EED2Ev.exit: ; preds = %bb.a
  store i8 0, ptr %i.p, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20, !noalias !195
  %i.s = load ptr, ptr %1, align 8, !tbaa !54, !noalias !195
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !55, !noalias !195
  store i64 %i.u, ptr %13, align 8, !tbaa !33, !alias.scope !196, !noalias !195
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !35, !alias.scope !196, !noalias !195
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr null, ptr %i.v, align 8, !tbaa !111, !alias.scope !196, !noalias !195
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i64 11, ptr %i.w, align 8, !tbaa !33, !alias.scope !197, !noalias !195
  %.sroa.4.0..sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr @.str.15, ptr %.sroa.4.0..sroa_idx.i9.i, align 8, !tbaa !35, !alias.scope !197, !noalias !195
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 40
  store ptr null, ptr %i.x, align 8, !tbaa !111, !alias.scope !197, !noalias !195
  call void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr nonnull %13, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20, !noalias !195
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  invoke void @_Z12cmParsePlistRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.396") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %_ZNSt14_Optional_baseI18cmXcFrameworkPlistLb0ELb0EED2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 5 uses
  %i.z = load i8, ptr %i.y, align 8, !tbaa !199, !range !42, !noundef !43
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = invoke noundef ptr @_ZNK10cmMakefile16GetCMakeInstanceEv(ptr noundef nonnull align 8 dereferenceable(2952) %2)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20, !noalias !200
  store i64 30, ptr %12, align 8, !tbaa !33, !alias.scope !201, !noalias !200
  %.sroa.4.0..sroa_idx.i.i53 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr @.str.16, ptr %.sroa.4.0..sroa_idx.i.i53, align 8, !tbaa !35, !alias.scope !201, !noalias !200
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr null, ptr %i.ac, align 8, !tbaa !111, !alias.scope !201, !noalias !200
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ae = load ptr, ptr %14, align 8, !tbaa !54, !noalias !200
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !55, !noalias !200
  store i64 %i.ag, ptr %i.ad, align 8, !tbaa !33, !alias.scope !202, !noalias !200
  %.sroa.4.0..sroa_idx.i9.i54 = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %i.ae, ptr %.sroa.4.0..sroa_idx.i9.i54, align 8, !tbaa !35, !alias.scope !202, !noalias !200
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 40
  store ptr null, ptr %i.ah, align 8, !tbaa !111, !alias.scope !202, !noalias !200
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr nonnull %12, i64 2)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20, !noalias !200
  invoke void @_ZNK5cmake12IssueMessageE11MessageTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK19cmListFileBacktrace(ptr noundef nonnull align 8 dereferenceable(2456) %i.ab, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %16, align 8, !tbaa !54   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !24
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  store i8 0, ptr %i.p, align 8, !tbaa !108
  br label %bb.dc

bb.g:                                             ; preds = %_ZNSt14_Optional_baseI18cmXcFrameworkPlistLb0ELb0EED2Ev.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseIN4Json5ValueELb0ELb0EED2Ev.exit97

bb.h:                                             ; preds = %bb.c
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.i:                                             ; preds = %bb.d
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

bb.j:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %16, align 8, !tbaa !54   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.j
  %i.au = load i64, ptr %i.as, align 8, !tbaa !24
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.i ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55 ], [ %i.aq, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  br label %bb.de

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.aw = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.ax = getelementptr inbounds nuw i8, ptr %17, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %17, i8 0, i64 48, i1 false)
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !52
  %i.ay = getelementptr inbounds nuw i8, ptr %17, i64 56
  store i64 0, ptr %i.ay, align 8, !tbaa !55
  store i8 0, ptr %i.ax, align 8, !tbaa !24
  %i.az = getelementptr inbounds nuw i8, ptr %17, i64 80 ; 2 uses
  store i8 0, ptr %i.az, align 8, !tbaa !123
  %i.ba = getelementptr inbounds nuw i8, ptr %17, i64 88
  %i.bb = getelementptr inbounds nuw i8, ptr %17, i64 104 ; 2 uses
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !52
  %i.bc = getelementptr inbounds nuw i8, ptr %17, i64 96
  store i64 0, ptr %i.bc, align 8, !tbaa !55
  store i8 0, ptr %i.bb, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.bd = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store ptr %i.bd, ptr %18, align 8, !tbaa !52
  %i.be = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  store i64 0, ptr %i.be, align 8, !tbaa !55
  store i8 0, ptr %i.bd, align 8, !tbaa !24
  %i.bf = getelementptr inbounds nuw i8, ptr %18, i64 32 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %18, i64 48 ; 4 uses
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !52
  %i.bh = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 2 uses
  store i64 0, ptr %i.bh, align 8, !tbaa !55
  store i8 0, ptr %i.bg, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.bi = invoke noundef zeroext i1 @_ZNK4Json5Value8isObjectEv(ptr noundef nonnull align 8 dereferenceable(40) %15)
          to label %bb.l unwind label %bb.af

bb.l:                                             ; preds = %bb.k
  br i1 %i.bi, label %bb.z, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i32 1, ptr %i.n, align 4, !tbaa !125, !noalias !203
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119PlistMetadataHelperE, i64 48), align 8, !tbaa !18, !noalias !203
  %.not.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt25__throw_bad_function_callv() #23
          to label %.noexc.i unwind label %bb.v

.noexc.i:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119PlistMetadataHelperE, i64 56), align 8, !tbaa !126, !noalias !203
  invoke void %i.bk(ptr dead_on_unwind nonnull writable sret(%"class.std::function.0") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN12_GLOBAL__N_119PlistMetadataHelperE, i64 32), ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.p unwind label %bb.v, !inline_history !3

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %15, ptr %i.l, align 8, !tbaa !128
  store ptr %17, ptr %i.m, align 8, !tbaa !130
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !18
  %.not.i.i75.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i75.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt25__throw_bad_function_callv() #23
          to label %.noexc76.i unwind label %bb.w

.noexc76.i:                                       ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !132
  invoke void %i.bo(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.s unwind label %bb.w, !inline_history !4

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.bp = load ptr, ptr %i.bl, align 8, !tbaa !18 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = invoke noundef zeroext i1 %i.bp(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.u ; 0 uses

end_hunk_0
begin_hunk_1_@_Z23cmParseXcFrameworkPlistRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK10cmMakefileRK19cmListFileBacktrace:bb.a
  br label %.body

bb.cl:                                            ; preds = %bb.ch
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

bb.cm:                                            ; preds = %bb.ci
  %i.ju = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jv = load ptr, ptr %20, align 8, !tbaa !54   ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.jx = icmp eq ptr %i.jv, %i.jw
  br i1 %i.jx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.cm
  %i.jy = load i64, ptr %i.jw, align 8, !tbaa !24
  %i.jz = add i64 %i.jy, 1
  call void @_ZdlPvm(ptr noundef %i.jv, i64 noundef %i.jz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78, %bb.cl
  %.pn46 = phi { ptr, i32 } [ %i.jt, %bb.cl ], [ %i.ju, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78 ], [ %i.ju, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  br label %.body

_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit73: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i70
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #20
  %i.ka = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  store ptr %i.ka, ptr %21, align 8, !tbaa !52
  %i.kb = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 0, ptr %i.kb, align 8, !tbaa !55
  store i8 0, ptr %i.ka, align 8, !tbaa !24
  %i.kc = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kc, i8 0, i64 24, i1 false)
  %i.kd = invoke noundef zeroext i1 @_ZNK19cmJSONHelperBuilder6ObjectI18cmXcFrameworkPlistEclERS1_PKN4Json5ValueEP11cmJSONState(ptr noundef nonnull align 8 dereferenceable(65) @_ZN12_GLOBAL__N_111PlistHelperE, ptr noundef nonnull align 8 dereferenceable(56) %21, ptr noundef nonnull %15, ptr noundef nonnull %17)
          to label %bb.cn unwind label %bb.cs

bb.cn:                                            ; preds = %_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit73
  br i1 %i.kd, label %bb.cv, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ke = invoke noundef ptr @_ZNK10cmMakefile16GetCMakeInstanceEv(ptr noundef nonnull align 8 dereferenceable(2952) %2)
          to label %bb.cp unwind label %bb.cs

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  invoke void @_Z8cmStrCatIRA36_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEES8_OT_OT0_DpOT1_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 1 dereferenceable(36) @.str.17, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.cq unwind label %bb.ct

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZNK5cmake12IssueMessageE11MessageTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK19cmListFileBacktrace(ptr noundef nonnull align 8 dereferenceable(2456) %i.ke, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.cr unwind label %bb.cu

bb.cr:                                            ; preds = %bb.cq
  %i.kf = load ptr, ptr %22, align 8, !tbaa !54   ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.kh = icmp eq ptr %i.kf, %i.kg
  br i1 %i.kh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %bb.cr
  %i.ki = load i64, ptr %i.kg, align 8, !tbaa !24
  %i.kj = add i64 %i.ki, 1
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.kj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  store i8 0, ptr %i.p, align 8, !tbaa !108
  br label %bb.cx

bb.cs:                                            ; preds = %bb.cv, %bb.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.co, %_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit73
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.ct:                                            ; preds = %bb.cp
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

bb.cu:                                            ; preds = %bb.cq
  %i.km = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kn = load ptr, ptr %22, align 8, !tbaa !54   ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.kp = icmp eq ptr %i.kn, %i.ko
  br i1 %i.kp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %bb.cu
  %i.kq = load i64, ptr %i.ko, align 8, !tbaa !24
  %i.kr = add i64 %i.kq, 1
  call void @_ZdlPvm(ptr noundef %i.kn, i64 noundef %i.kr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84, %bb.ct
  %.pn42 = phi { ptr, i32 } [ %i.kl, %bb.ct ], [ %i.km, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84 ], [ %i.km, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20
  br label %bb.da

bb.cv:                                            ; preds = %bb.cn
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.cs

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.cv
  invoke void @_ZN17cmGlobalGenerator26SetXcFrameworkPListContentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK18cmXcFrameworkPlist(ptr noundef nonnull align 8 dereferenceable(2202) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(56) %21)
          to label %bb.cw unwind label %bb.cs

bb.cw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  invoke void @_ZNSt8optionalI18cmXcFrameworkPlistEC2IRS0_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS1_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS0_JS9_EESt14is_convertibleIS9_S0_EEEbE4typeELb1EEEOS9_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(56) %21)
          to label %bb.cx unwind label %bb.cs

bb.cx:                                            ; preds = %bb.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %i.ks = load ptr, ptr %i.kc, align 8, !tbaa !144
  %i.kt = getelementptr inbounds nuw i8, ptr %21, i64 40
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !145
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIP25cmXcFrameworkPlistLibraryEEvT_S4_(ptr noundef %i.ks, ptr noundef %i.ku)
          to label %_ZSt8_DestroyIP25cmXcFrameworkPlistLibraryS0_EvT_S2_RSaIT0_E.exit.i.i unwind label %bb.cz

_ZSt8_DestroyIP25cmXcFrameworkPlistLibraryS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %bb.cx
  %i.kv = load ptr, ptr %i.kc, align 8, !tbaa !144 ; 3 uses
  %.not.i.i.i.i87 = icmp eq ptr %i.kv, null
  br i1 %.not.i.i.i.i87, label %_ZNSt6vectorI25cmXcFrameworkPlistLibrarySaIS0_EED2Ev.exit.i, label %bb.cy

bb.cy:                                            ; preds = %_ZSt8_DestroyIP25cmXcFrameworkPlistLibraryS0_EvT_S2_RSaIT0_E.exit.i.i
  %i.kw = getelementptr inbounds nuw i8, ptr %21, i64 48
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !146
  %i.ky = ptrtoint ptr %i.kx to i64
  %i.kz = ptrtoint ptr %i.kv to i64
  %i.la = sub i64 %i.ky, %i.kz
  call void @_ZdlPvm(ptr noundef nonnull %i.kv, i64 noundef %i.la) #24
  br label %_ZNSt6vectorI25cmXcFrameworkPlistLibrarySaIS0_EED2Ev.exit.i

bb.cz:                                            ; preds = %bb.cx
  %i.lb = landingpad { ptr, i32 }
          catch ptr null
  %i.lc = extractvalue { ptr, i32 } %i.lb, 0
  call void @__clang_call_terminate(ptr %i.lc) #21
  unreachable

_ZNSt6vectorI25cmXcFrameworkPlistLibrarySaIS0_EED2Ev.exit.i: ; preds = %bb.cy, %_ZSt8_DestroyIP25cmXcFrameworkPlistLibraryS0_EvT_S2_RSaIT0_E.exit.i.i
  %i.ld = load ptr, ptr %21, align 8, !tbaa !54   ; 2 uses
  %i.le = icmp eq ptr %i.ld, %i.ka
  br i1 %i.le, label %_ZN18cmXcFrameworkPlistD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88: ; preds = %_ZNSt6vectorI25cmXcFrameworkPlistLibrarySaIS0_EED2Ev.exit.i
  %i.lf = load i64, ptr %i.ka, align 8, !tbaa !24
  %i.lg = add i64 %i.lf, 1
  call void @_ZdlPvm(ptr noundef %i.ld, i64 noundef %i.lg) #24
  br label %_ZN18cmXcFrameworkPlistD2Ev.exit

_ZN18cmXcFrameworkPlistD2Ev.exit:                 ; preds = %_ZNSt6vectorI25cmXcFrameworkPlistLibrarySaIS0_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %bb.db

bb.da:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %bb.cs
  %.pn44 = phi { ptr, i32 } [ %i.kk, %bb.cs ], [ %.pn42, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ]
  call void @_ZN18cmXcFrameworkPlistD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %21) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20
  br label %.body

bb.db:                                            ; preds = %_ZN18cmXcFrameworkPlistD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64
  %i.lh = load ptr, ptr %i.bf, align 8, !tbaa !54 ; 2 uses
  %i.li = icmp eq ptr %i.lh, %i.bg
  br i1 %i.li, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91: ; preds = %bb.db
  %i.lj = load i64, ptr %i.bg, align 8, !tbaa !24
  %i.lk = add i64 %i.lj, 1
  call void @_ZdlPvm(ptr noundef %i.lh, i64 noundef %i.lk) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i92: ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91
  %i.ll = load ptr, ptr %18, align 8, !tbaa !54   ; 2 uses
  %i.lm = icmp eq ptr %i.ll, %i.bd
  br i1 %i.lm, label %_ZN12_GLOBAL__N_113PlistMetadataD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i92
  %i.ln = load i64, ptr %i.bd, align 8, !tbaa !24
  %i.lo = add i64 %i.ln, 1
  call void @_ZdlPvm(ptr noundef %i.ll, i64 noundef %i.lo) #24
  br label %_ZN12_GLOBAL__N_113PlistMetadataD2Ev.exit

_ZN12_GLOBAL__N_113PlistMetadataD2Ev.exit:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @_ZN11cmJSONStateD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.dc

.body:                                            ; preds = %bb.ck, %bb.by, %bb.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %.pn46.pn = phi { ptr, i32 } [ %.pn46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ], [ %.pn38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ %.pn44, %bb.da ], [ %i.js, %bb.ck ], [ %.pn65.pn.pn.pn.i, %bb.by ]
  call fastcc void @_ZN12_GLOBAL__N_113PlistMetadataD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %18) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @_ZN11cmJSONStateD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.de

bb.dc:                                            ; preds = %_ZN12_GLOBAL__N_113PlistMetadataD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.lp = load i8, ptr %i.y, align 8, !tbaa !199, !range !42, !noundef !43
  %i.lq = trunc nuw i8 %i.lp to i1
  store i8 0, ptr %i.y, align 8, !tbaa !199
  br i1 %i.lq, label %bb.dd, label %_ZNSt14_Optional_baseIN4Json5ValueELb0ELb0EED2Ev.exit

bb.dd:                                            ; preds = %bb.dc
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(48) %15) #20
  br label %_ZNSt14_Optional_baseIN4Json5ValueELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4Json5ValueELb0ELb0EED2Ev.exit: ; preds = %bb.dc, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.lr = load ptr, ptr %14, align 8, !tbaa !54   ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.lt = icmp eq ptr %i.lr, %i.ls
  br i1 %i.lt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94: ; preds = %_ZNSt14_Optional_baseIN4Json5ValueELb0ELb0EED2Ev.exit
  %i.lu = load i64, ptr %i.ls, align 8, !tbaa !24
  %i.lv = add i64 %i.lu, 1
  call void @_ZdlPvm(ptr noundef %i.lr, i64 noundef %i.lv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96: ; preds = %_ZNSt14_Optional_baseIN4Json5ValueELb0ELb0EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %.critedge52

bb.de:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %bb.h
  %.pn46.pn.pn = phi { ptr, i32 } [ %.pn46.pn, %.body ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ], [ %i.ao, %bb.h ] ; 2 uses
  %i.lw = load i8, ptr %i.y, align 8, !tbaa !199, !range !42, !noundef !43
  %i.lx = trunc nuw i8 %i.lw to i1
  store i8 0, ptr %i.y, align 8, !tbaa !199
  br i1 %i.lx, label %bb.df, label %_ZNSt14_Optional_baseIN4Json5ValueELb0ELb0EED2Ev.exit97

bb.df:                                            ; preds = %bb.de
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(48) %15) #20
  br label %_ZNSt14_Optional_baseIN4Json5ValueELb0ELb0EED2Ev.exit97

_ZNSt14_Optional_baseIN4Json5ValueELb0ELb0EED2Ev.exit97: ; preds = %bb.df, %bb.de, %bb.g
  %.pn46.pn.pn.pn = phi { ptr, i32 } [ %i.an, %bb.g ], [ %.pn46.pn.pn, %bb.de ], [ %.pn46.pn.pn, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.ly = load ptr, ptr %14, align 8, !tbaa !54   ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ma = icmp eq ptr %i.ly, %i.lz
  br i1 %i.ma, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98: ; preds = %_ZNSt14_Optional_baseIN4Json5ValueELb0ELb0EED2Ev.exit97
  %i.mb = load i64, ptr %i.lz, align 8, !tbaa !24
  %i.mc = add i64 %i.mb, 1
  call void @_ZdlPvm(ptr noundef %i.ly, i64 noundef %i.mc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100: ; preds = %_ZNSt14_Optional_baseIN4Json5ValueELb0ELb0EED2Ev.exit97, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  resume { ptr, i32 } %.pn46.pn.pn.pn

.critedge52:                                      ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96
  ret void
}

declare noundef ptr @_ZNK10cmMakefile18GetGlobalGeneratorEv(ptr noundef nonnull align 8 dereferenceable(2952)) local_unnamed_addr #0

declare void @_ZNK17cmGlobalGenerator26GetXcFrameworkPListContentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::optional") align 8, ptr noundef nonnull align 8 dereferenceable(2202), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

declare void @_Z12cmParsePlistRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::optional.396") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

declare noundef ptr @_ZNK10cmMakefile16GetCMakeInstanceEv(ptr noundef nonnull align 8 dereferenceable(2952)) local_unnamed_addr #0

declare void @_ZNK5cmake12IssueMessageE11MessageTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERK19cmListFileBacktrace(ptr noundef nonnull align 8 dereferenceable(2456), i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_Z8cmStrCatIRA36_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEES8_OT_OT0_DpOT1_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat {
.cont.cont:
  %3 = alloca [2 x %"struct.std::pair.608"], align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20
  store i64 %i.a, ptr %3, align 8, !tbaa !33, !alias.scope !217
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !35, !alias.scope !217
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !111, !alias.scope !217
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load ptr, ptr %2, align 8, !tbaa !54
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !55
  store i64 %i.f, ptr %i.c, align 8, !tbaa !33, !alias.scope !218
  %.sroa.4.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx.i9, align 8, !tbaa !35, !alias.scope !218
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.g, align 8, !tbaa !111, !alias.scope !218
  call void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull %3, i64 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK19cmJSONHelperBuilder6ObjectI18cmXcFrameworkPlistEclERS1_PKN4Json5ValueEP11cmJSONState(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
  %i.m = alloca ptr, align 8                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %i.p = alloca ptr, align 8                      ; 4 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.std::vector.94", align 16   ; 27 uses
  %5 = alloca %"class.std::function.0", align 8   ; 11 uses
  %6 = alloca %"class.std::function.0", align 8   ; 11 uses
  %7 = alloca %"class.std::vector.94", align 16   ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %9 = alloca %"class.std::function.0", align 8   ; 11 uses
  %10 = alloca %"class.std::function.0", align 8  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i8, ptr %i.r, align 8, !tbaa !103, !range !42, !noundef !43
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %.critedge73

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i32 0, ptr %i.q, align 4, !tbaa !125, !noalias !228
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !18, !noalias !228
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt25__throw_bad_function_callv() #23
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !126, !noalias !228
  invoke void %i.y(ptr dead_on_unwind nonnull writable sret(%"class.std::function.0") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 4 dereferenceable(4) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.f unwind label %bb.l, !inline_history !3

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr null, ptr %i.o, align 8, !tbaa !128
  store ptr %3, ptr %i.p, align 8, !tbaa !130
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18
  %.not.i.i76 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i76, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt25__throw_bad_function_callv() #23
          to label %.noexc77 unwind label %bb.m

.noexc77:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !132
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.i unwind label %bb.m, !inline_history !4

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !18  ; 2 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = invoke noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  call void @__clang_call_terminate(ptr %i.ag) #21
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.cc

bb.l:                                             ; preds = %bb.e, %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit80

bb.m:                                             ; preds = %bb.h, %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !18  ; 2 uses
  %.not.i79 = icmp eq ptr %i.aj, null
  br i1 %.not.i79, label %_ZNSt14_Function_baseD2Ev.exit80, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = invoke noundef zeroext i1 %i.aj(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit80 unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #21
  unreachable

_ZNSt14_Function_baseD2Ev.exit80:                 ; preds = %bb.n, %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.l ], [ %i.ai, %bb.m ], [ %i.ai, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ce

.critedge:                                        ; preds = %bb.a
  %i.an = invoke noundef zeroext i1 @_ZNK4Json5Value8isObjectEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.p unwind label %bb.aj

bb.p:                                             ; preds = %.critedge
end_hunk_1
