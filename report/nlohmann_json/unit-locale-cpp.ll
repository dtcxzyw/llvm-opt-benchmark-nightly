Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-locale-cpp?download=true
inline.NumInlined: 5075
inline.NumDeleted: 1292
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZL20DOCTEST_ANON_FUNC_10v:bb.a
  br label %bb.ce

bb.bo:                                            ; preds = %bb.bf
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %19) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  br label %bb.ce

bb.bp:                                            ; preds = %bb.bg
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bq:                                            ; preds = %bb.bi
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.br:                                            ; preds = %bb.bk, %bb.bj
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bl
  %i.dj = landingpad { ptr, i32 }
          cleanup
  %i.dk = getelementptr inbounds nuw i8, ptr %21, i64 8
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.dk) #29
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.pn51 = phi { ptr, i32 } [ %i.dj, %bb.bs ], [ %i.di, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bq
  %.pn51.pn = phi { ptr, i32 } [ %.pn51, %bb.bt ], [ %i.dh, %bb.bq ]
  %i.dl = load ptr, ptr %i.cv, align 8, !tbaa !37 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.cw
  br i1 %i.dm, label %_ZN10ParserImplD2Ev.exit87, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85: ; preds = %bb.bu
  call void @_ZdlPv(ptr noundef %i.dl) #28
  br label %_ZN10ParserImplD2Ev.exit87

_ZN10ParserImplD2Ev.exit87:                       ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #29
  br label %bb.bw

bb.bv:                                            ; preds = %_ZN10ParserImplD2Ev.exit, %bb.bh
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %18) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %bb.cd

bb.bw:                                            ; preds = %_ZN10ParserImplD2Ev.exit87, %bb.bp
  %.pn51.pn.pn.pn = phi { ptr, i32 } [ %.pn51.pn, %_ZN10ParserImplD2Ev.exit87 ], [ %i.dg, %bb.bp ]
  call void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %18) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  br label %bb.ce

bb.bx:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #29
  call void @_ZN7doctest6detail14MessageBuilderC1EPKciNS_10assertType4EnumE(ptr noundef nonnull align 8 dereferenceable(49) %24, ptr noundef nonnull @.str.2, i32 noundef 159, i32 noundef 1)
  %i.dn = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZN7doctest6detail14MessageBuildercmIA27_cEERS1_RKT_(ptr noundef nonnull align 8 dereferenceable(49) %24, ptr noundef nonnull align 1 dereferenceable(27) @.str.217)
          to label %_ZN7doctest6detail14MessageBuildermlIA27_cEERS1_RKT_.exit unwind label %bb.ca ; 0 uses

_ZN7doctest6detail14MessageBuildermlIA27_cEERS1_RKT_.exit: ; preds = %bb.bx
  %i.do = invoke noundef zeroext i1 @_ZN7doctest6detail14MessageBuilder3logEv(ptr noundef nonnull align 8 dereferenceable(49) %24)
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %_ZN7doctest6detail14MessageBuildermlIA27_cEERS1_RKT_.exit
  br i1 %i.do, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  call void asm sideeffect "int $$3\0A", "~{dirflag},~{fpsr},~{flags}"() #29, !srcloc !281
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bx, %bb.cb, %_ZN7doctest6detail14MessageBuildermlIA27_cEERS1_RKT_.exit
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6detail14MessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %24) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  br label %bb.ce

bb.cb:                                            ; preds = %bb.bz, %bb.by
  invoke void @_ZN7doctest6detail14MessageBuilder5reactEv(ptr noundef nonnull align 8 dereferenceable(49) %24)
          to label %bb.cc unwind label %bb.ca

bb.cc:                                            ; preds = %bb.cb
  call void @_ZN7doctest6detail14MessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %24) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #29
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.bv
  ret void

bb.ce:                                            ; preds = %bb.bo, %bb.bw, %bb.at, %bb.bn, %bb.q, %bb.as, %bb.ca
  %.pn51.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cd, %bb.at ], [ %i.ak, %bb.q ], [ %i.dp, %bb.ca ], [ %.pn35.pn.pn.pn.pn.pn, %bb.as ], [ %.pn43.pn.pn.pn.pn.pn, %bb.bn ], [ %.pn51.pn.pn.pn, %bb.bw ], [ %i.df, %bb.bo ]
  resume { ptr, i32 } %.pn51.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN10ParserImpl4nullEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN10ParserImpl7booleanEb(ptr noundef nonnull align 8 dereferenceable(40) %0, i1 noundef zeroext %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN10ParserImpl14number_integerEl(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN10ParserImpl15number_unsignedEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN10ParserImpl12number_floatEdRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %2)
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN10ParserImpl6stringERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN10ParserImpl6binaryERN8nlohmann16json_abi_v3_12_027byte_container_with_subtypeISt6vectorIhSaIhEEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN10ParserImpl12start_objectEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN10ParserImpl3keyERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN10ParserImpl10end_objectEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN10ParserImpl11start_arrayEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN10ParserImpl9end_arrayEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN10ParserImpl11parse_errorEmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKN8nlohmann16json_abi_v3_12_06detail9exceptionE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

declare noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

declare void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) unnamed_addr #0

; Function Attrs: nounwind
declare ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN7doctest6detail14Expression_lhsIPcEneIDnEEDTcmcvvneclL_ZNS0_7declvalIS2_EEOT_vEEclsr7doctest6detailE7declvalIS6_EEtlNS0_6ResultEEES7_(ptr dead_on_unwind noalias writable sret(%"struct.doctest::detail::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.doctest::String", align 8   ; 7 uses
  %4 = alloca %"class.doctest::String", align 8   ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !65
  %5 = icmp ne ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !283
  %i.d = and i32 %i.c, 256
  %6 = icmp ne i32 %i.d, 0
  %spec.select = xor i1 %5, %6                    ; 2 uses
  br i1 %spec.select, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_ZN7doctest17getContextOptionsEv()
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 108
  %i.g = load i8, ptr %i.f, align 4, !tbaa !70, !range !49, !noundef !50
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZN7doctest6detail19stringifyBinaryExprIPcDnEENS_6StringERKT_PKcRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.doctest::String") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.18, ptr noundef nonnull align 8 dereferenceable(8) %2)
  invoke void @_ZN7doctest6detail6ResultC1EbRKNS_6StringE(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %spec.select, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.j

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @_ZN7doctest6StringC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #29
  invoke void @_ZN7doctest6detail6ResultC1EbRKNS_6StringE(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.d
  ret void

bb.j:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.j, %bb.h ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_2vE3$_0ED2Ev"(ptr noundef nonnull align 8 dead_on_return(10) dereferenceable(10) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @"_ZTVN7doctest6detail12ContextScopeIZL19DOCTEST_ANON_FUNC_2vE3$_0EE", i64 16), ptr %0, align 8, !tbaa !39
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !48, !range !49, !noundef !50
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN7doctest6detail16ContextScopeBase7destroyEv(ptr noundef nonnull align 8 dereferenceable(9) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN7doctest13IContextScopeD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %0) #29
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #30
  unreachable
}

declare void @_ZN7doctest6StringC1EPKc(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #0

declare void @_ZN7doctest6detail7SubcaseC1ERKNS_6StringEPKci(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) unnamed_addr #0

declare noundef zeroext i1 @_ZNK7doctest6detail7SubcasecvbEv(ptr noundef nonnull align 8 dereferenceable(41)) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN7doctest6detail14Expression_lhsIiEeqIiEEDTcmcvveqclL_ZNS0_7declvalIiEEOT_vEEclsr7doctest6detailE7declvalIS5_EEtlNS0_6ResultEEES6_(ptr dead_on_unwind noalias writable sret(%"struct.doctest::detail::Result") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.doctest::String", align 8   ; 7 uses
  %4 = alloca %"class.doctest::String", align 8   ; 7 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !52
  %i.b = load i32, ptr %2, align 4, !tbaa !52
  %5 = icmp eq i32 %i.a, %i.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !285
  %i.e = and i32 %i.d, 256
  %i.f = icmp ne i32 %i.e, 0
  %spec.select = xor i1 %5, %i.f                  ; 2 uses
  br i1 %spec.select, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZN7doctest17getContextOptionsEv()
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 108
  %i.i = load i8, ptr %i.h, align 4, !tbaa !70, !range !49, !noundef !50
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZN7doctest6detail19stringifyBinaryExprIiiEENS_6StringERKT_PKcRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.doctest::String") align 8 %3, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull @.str.19, ptr noundef nonnull align 4 dereferenceable(4) %2)
  invoke void @_ZN7doctest6detail6ResultC1EbRKNS_6StringE(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %spec.select, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.j

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @_ZN7doctest6StringC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #29
  invoke void @_ZN7doctest6detail6ResultC1EbRKNS_6StringE(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.d
  ret void

bb.j:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.l, %bb.h ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN7doctest6detail14Expression_lhsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEeqIRA6_KcEEDTcmcvveqclL_ZNS0_7declvalIS7_EEOT_vEEclsr7doctest6detailE7declvalISE_EEtlNS0_6ResultEEESF_(ptr dead_on_unwind noalias writable sret(%"struct.doctest::detail::Result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 1 dereferenceable(6) %2) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.doctest::String", align 8   ; 7 uses
  %4 = alloca %"class.doctest::String", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !56   ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #29
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit_crit_edge

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit_crit_edge: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !58
  %i.g = and i32 %i.f, 256
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit_crit_edge14, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit_crit_edge14: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !58
  %i.k = and i32 %i.j, 256
  %.not17 = icmp eq i32 %i.k, 0
  br i1 %.not17, label %bb.c, label %bb.d

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.l = load ptr, ptr %1, align 8, !tbaa !37
  %bcmp.i = tail call i32 @bcmp(ptr %i.l, ptr nonnull %2, i64 %i.b)
  %i.m = icmp eq i32 %bcmp.i, 0
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !58
  %i.p = and i32 %i.o, 256
  %i.q = icmp ne i32 %i.p, 0
  %spec.select = xor i1 %i.m, %i.q
  br i1 %spec.select, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit_crit_edge14, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit_crit_edge, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.r = tail call noundef ptr @_ZN7doctest17getContextOptionsEv()
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 108
  %i.t = load i8, ptr %i.s, align 4, !tbaa !70, !range !49, !noundef !50
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.d, label %bb.g

bb.d:                                             ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit_crit_edge14, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit_crit_edge, %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %spec.select12 = phi i1 [ false, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit_crit_edge ], [ true, %bb.c ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ false, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit_crit_edge14 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZN7doctest6detail19stringifyBinaryExprINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA6_cEENS_6StringERKT_PKcRKT0_(ptr dead_on_unwind nonnull writable sret(%"class.doctest::String") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(6) %2)
  invoke void @_ZN7doctest6detail6ResultC1EbRKNS_6StringE(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %spec.select12, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.k

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @_ZN7doctest6StringC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #29
  invoke void @_ZN7doctest6detail6ResultC1EbRKNS_6StringE(ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.e
  ret void

bb.k:                                             ; preds = %bb.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.v, %bb.f ], [ %i.w, %bb.i ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nounwind
declare void @_ZN7doctest6detail7SubcaseD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5parseIRA6_KcEESD_OT_St8functionIFbiNS0_6detail13parse_event_tERSD_EEbb(ptr dead_on_unwind noalias writable sret(%"class.nlohmann::json_abi_v3_12_0::basic_json") align 8 %0, ptr noundef nonnull align 1 dereferenceable(6) %1, ptr nofreeobj noundef align 8 dereferenceable(32) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iterator_input_adapter", align 8 ; 8 uses
  %6 = alloca %"class.std::function", align 8     ; 15 uses
  %7 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::parser", align 8 ; 12 uses
  %8 = alloca %"class.std::function", align 8     ; 9 uses
  store i8 0, ptr %0, align 8, !tbaa !61
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 24, i1 false)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !72   ; 3 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !72
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64   ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFbiN8nlohmann16json_abi_v3_12_06detail13parse_event_tERNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEC2EOSJ_.exit.thread, label %bb.b

_ZNSt8functionIFbiN8nlohmann16json_abi_v3_12_06detail13parse_event_tERNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEC2EOSJ_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %1, ptr %5, align 8, !noalias !288
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.b, ptr %i.h, align 8, !noalias !288
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 24, i1 false), !noalias !288
  store ptr %i.e, ptr %i.i, align 8, !tbaa !72, !noalias !288
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %_ZNSt8functionIFbiN8nlohmann16json_abi_v3_12_06detail13parse_event_tERNS1_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES6_IhSaIhEEvEEEEC2EOSJ_.exit.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !73
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %1, ptr %5, align 8, !noalias !288
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.b, ptr %i.k, align 8, !noalias !288
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.e, ptr %i.l, align 8, !tbaa !72, !noalias !288
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  store ptr %i.g, ptr %i.n, align 8, !tbaa !64, !noalias !288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !288
end_hunk_0
begin_hunk_1_@_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE16get_ubjson_arrayEv:bb.a
    i32 78, label %.critedge75
  ]

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %10, i8 0, i64 33, i1 false)
  %i.cp = invoke noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE10get_binaryImEEbNS1_14input_format_tET_RNS0_27byte_container_with_subtypeISE_EE(ptr noundef nonnull align 8 dereferenceable(560) %0, i32 noundef 5, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(33) %10)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.cq = load ptr, ptr %10, align 8, !tbaa !211  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_ZdlPv(ptr noundef nonnull %i.cq) #28
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %.critedge75

bb.ag:                                            ; preds = %bb.ad
  %i.cr = landingpad { ptr, i32 }
          cleanup
  %i.cs = load ptr, ptr %10, align 8, !tbaa !211  ; 2 uses
  %.not.i.i.i115 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i115, label %_ZNSt6vectorIhSaIhEED2Ev.exit116, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdlPv(ptr noundef nonnull %i.cs) #28
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit116

_ZNSt6vectorIhSaIhEED2Ev.exit116:                 ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.aq

bb.ai:                                            ; preds = %bb.b
  br i1 %i.h, label %.thread119, label %.preheader124

.preheader124:                                    ; preds = %bb.ai
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !231 ; 2 uses
  %.not52128 = icmp eq i32 %i.cu, 93
  br i1 %.not52128, label %.critedge75, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader124
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.an

.thread119:                                       ; preds = %bb.ai
  switch i32 %i.i, label %.preheader [
    i32 0, label %.preheader121
    i32 78, label %.critedge75
  ]

.preheader121:                                    ; preds = %bb.ac, %.thread119
  %.not54137.not = icmp eq i64 %i.g, 0
  br i1 %.not54137.not, label %.critedge75, label %.lr.ph139

.lr.ph139:                                        ; preds = %.preheader121
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.al

.preheader:                                       ; preds = %bb.ac, %.thread119
  %.not56142.not = icmp eq i64 %i.g, 0
  br i1 %.not56142.not, label %.critedge75, label %.lr.ph144

bb.aj:                                            ; preds = %.lr.ph144
  %i.da = add nuw i64 %.028143, 1                 ; 2 uses
  %i.db = load i64, ptr %1, align 8, !tbaa !257
  %.not56 = icmp ult i64 %i.da, %i.db
  br i1 %.not56, label %.lr.ph144, label %.critedge75, !llvm.loop !579

.lr.ph144:                                        ; preds = %.preheader, %bb.aj
  %.028143 = phi i64 [ %i.da, %bb.aj ], [ 0, %.preheader ]
  %i.dc = load i32, ptr %i.b, align 8, !tbaa !258
  %i.dd = call noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE16get_ubjson_valueEi(ptr noundef nonnull align 8 dereferenceable(560) %0, i32 noundef %i.dc) ; 3 uses
  br i1 %i.dd, label %bb.aj, label %.critedge75, !prof !166

bb.ak:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE21parse_ubjson_internalEb.exit
  %i.de = add nuw i64 %.0138, 1                   ; 2 uses
  %i.df = load i64, ptr %1, align 8, !tbaa !257
  %.not54 = icmp ult i64 %i.de, %i.df
  br i1 %.not54, label %bb.al, label %.critedge75, !llvm.loop !580

bb.al:                                            ; preds = %.lr.ph139, %bb.ak
  %.0138 = phi i64 [ 0, %.lr.ph139 ], [ %i.de, %bb.ak ]
  %i.dg = load ptr, ptr %i.cy, align 8, !tbaa !168 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.cx, align 8, !tbaa !232
  %.promoted3.i.i = load ptr, ptr %0, align 8, !tbaa !65 ; 2 uses
  %i.dh = add i64 %.promoted.i.i, 1               ; 2 uses
  store i64 %i.dh, ptr %i.cx, align 8, !tbaa !232
  %.not.i.i.i.i185 = icmp eq ptr %.promoted3.i.i, %i.dg
  br i1 %.not.i.i.i.i185, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.thread.i.i, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.i.i, !prof !238

bb.am:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.i.i
  %i.di = add i64 %i.dj, 1                        ; 2 uses
  store i64 %i.di, ptr %i.cx, align 8, !tbaa !232
  %.not.i.i.i.i = icmp eq ptr %i.dn, %i.dg
  br i1 %.not.i.i.i.i, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.thread.i.i, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.i.i, !prof !239, !llvm.loop !15

_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.thread.i.i: ; preds = %bb.am, %bb.al
  store i32 -1, ptr %i.cz, align 8, !tbaa !231
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE21parse_ubjson_internalEb.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.i.i: ; preds = %bb.al, %bb.am
  %i.dj = phi i64 [ %i.di, %bb.am ], [ %i.dh, %bb.al ]
  %i.dk = phi ptr [ %i.dn, %bb.am ], [ %.promoted3.i.i, %bb.al ] ; 2 uses
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !55  ; 2 uses
  %i.dm = zext i8 %i.dl to i32                    ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 1 ; 3 uses
  store ptr %i.dn, ptr %0, align 8, !tbaa !65
  store i32 %i.dm, ptr %i.cz, align 8, !tbaa !231
  %i.do = icmp eq i8 %i.dl, 78
  br i1 %i.do, label %bb.am, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE21parse_ubjson_internalEb.exit, !llvm.loop !15

_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE21parse_ubjson_internalEb.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.i.i, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.thread.i.i
  %.0.i.i2.i.i = phi i32 [ -1, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.thread.i.i ], [ %i.dm, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.i.i ]
  %i.dp = call noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE16get_ubjson_valueEi(ptr noundef nonnull align 8 dereferenceable(560) %0, i32 noundef %.0.i.i2.i.i), !inline_history !16 ; 3 uses
  br i1 %i.dp, label %bb.ak, label %.critedge75, !prof !166

bb.an:                                            ; preds = %.lr.ph, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE15get_ignore_noopEv.exit
  %i.dq = phi i32 [ %i.cu, %.lr.ph ], [ %i.eb, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE15get_ignore_noopEv.exit ]
  %i.dr = call noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE16get_ubjson_valueEi(ptr noundef nonnull align 8 dereferenceable(560) %0, i32 noundef %i.dq), !inline_history !16 ; 3 uses
  br i1 %i.dr, label %bb.ao, label %.critedge75, !prof !166

bb.ao:                                            ; preds = %bb.an
  %i.ds = load ptr, ptr %i.cw, align 8, !tbaa !168 ; 2 uses
  %.promoted.i = load i64, ptr %i.cv, align 8, !tbaa !232
  %.promoted3.i = load ptr, ptr %0, align 8, !tbaa !65 ; 2 uses
  %i.dt = add i64 %.promoted.i, 1                 ; 2 uses
  store i64 %i.dt, ptr %i.cv, align 8, !tbaa !232
  %.not.i.i.i117184 = icmp eq ptr %.promoted3.i, %i.ds
  br i1 %.not.i.i.i117184, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.thread.i, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.i, !prof !238

bb.ap:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.i
  %i.du = add i64 %i.dv, 1                        ; 2 uses
  store i64 %i.du, ptr %i.cv, align 8, !tbaa !232
  %.not.i.i.i117 = icmp eq ptr %i.dz, %i.ds
  br i1 %.not.i.i.i117, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.thread.i, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.i, !prof !239, !llvm.loop !15

_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.thread.i: ; preds = %bb.ap, %bb.ao
  store i32 -1, ptr %i.ct, align 8, !tbaa !231
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE15get_ignore_noopEv.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.i: ; preds = %bb.ao, %bb.ap
  %i.dv = phi i64 [ %i.du, %bb.ap ], [ %i.dt, %bb.ao ]
  %i.dw = phi ptr [ %i.dz, %bb.ap ], [ %.promoted3.i, %bb.ao ] ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !55  ; 2 uses
  %i.dy = zext i8 %i.dx to i32                    ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 1 ; 3 uses
  store ptr %i.dz, ptr %0, align 8, !tbaa !65
  store i32 %i.dy, ptr %i.ct, align 8, !tbaa !231
  %i.ea = icmp eq i8 %i.dx, 78
  br i1 %i.ea, label %bb.ap, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE15get_ignore_noopEv.exit, !llvm.loop !15

_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE15get_ignore_noopEv.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.i, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.thread.i
  %i.eb = phi i32 [ -1, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.thread.i ], [ %i.dy, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.i ] ; 2 uses
  %.not52 = icmp eq i32 %i.eb, 93
  br i1 %.not52, label %.critedge75, label %bb.an, !llvm.loop !581

.critedge75:                                      ; preds = %bb.an, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE15get_ignore_noopEv.exit, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE21parse_ubjson_internalEb.exit, %bb.ak, %.lr.ph144, %bb.aj, %bb.ac, %.preheader124, %.preheader121, %.preheader, %.thread119, %bb.a, %_ZNSt6vectorIhSaIhEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  %.548 = phi i1 [ true, %.preheader124 ], [ %.245, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111 ], [ %i.cp, %_ZNSt6vectorIhSaIhEED2Ev.exit ], [ false, %bb.a ], [ true, %.thread119 ], [ true, %.preheader121 ], [ %i.dd, %.lr.ph144 ], [ true, %.preheader ], [ true, %bb.ac ], [ %i.dp, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE21parse_ubjson_internalEb.exit ], [ %i.dd, %bb.aj ], [ %i.dp, %bb.ak ], [ %i.dr, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE15get_ignore_noopEv.exit ], [ %i.dr, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  ret i1 %.548

bb.aq:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit116, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114
  %.pn60.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn60.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ], [ %i.cr, %_ZNSt6vectorIhSaIhEED2Ev.exit116 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  resume { ptr, i32 } %.pn60.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE17get_ubjson_objectEv(ptr noundef nonnull align 8 dereferenceable(560) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"struct.std::array.143", align 1   ; 7 uses
  %2 = alloca %"struct.std::pair.152", align 8    ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::parse_error", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store i64 0, ptr %2, align 8, !tbaa !257
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i32 0, ptr %i.c, align 8, !tbaa !258
  %i.d = call noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE20get_ubjson_size_typeERSt4pairImiEb(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef nonnull align 8 dereferenceable(12) %2, i1 noundef zeroext false)
  br i1 %i.d, label %bb.b, label %bb.ag, !prof !166

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !234
  %i.g = icmp eq i32 %i.f, 5
  %i.h = load i64, ptr %2, align 8                ; 2 uses
  %i.i = icmp ne i64 %i.h, -1                     ; 2 uses
  %or.cond = select i1 %i.g, i1 %i.i, i1 false
  br i1 %or.cond, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.c, align 8, !tbaa !258  ; 2 uses
  %i.k = and i32 %i.j, 256
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.l, ptr %8, align 8, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.m, align 8, !tbaa !56
  store i8 0, ptr %i.l, align 8, !tbaa !55
  br label %bb.n

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !587)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29, !noalias !587
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %1, i8 0, i64 3, i1 false), !noalias !587
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !231, !noalias !587
  %i.p = and i32 %i.o, 255
  %i.q = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %1, i64 noundef 3, ptr noundef nonnull @.str.172, i32 noundef %i.p) #29, !noalias !587 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.r, ptr %3, align 8, !tbaa !53, !alias.scope !587
  %i.s = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29, !noalias !587 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29, !noalias !587
  store i64 %i.s, ptr %i.b, align 8, !tbaa !54, !noalias !587
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.d
  %i.u = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !37, !alias.scope !587
  %i.v = load i64, ptr %i.b, align 8, !tbaa !54, !noalias !587
  store i64 %i.v, ptr %i.r, align 8, !tbaa !55, !alias.scope !587
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.d
  %i.w = phi ptr [ %i.u, %.noexc.i.i ], [ %i.r, %bb.d ] ; 2 uses
  switch i64 %i.s, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNK8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE16get_token_stringEv.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.x = load i8, ptr %1, align 1, !tbaa !55, !noalias !587
  store i8 %i.x, ptr %i.w, align 1, !tbaa !55
  br label %_ZNK8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE16get_token_stringEv.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr nonnull align 1 %1, i64 %i.s, i1 false)
  br label %_ZNK8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE16get_token_stringEv.exit

_ZNK8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE16get_token_stringEv.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %i.y = load i64, ptr %i.b, align 8, !tbaa !54, !noalias !587 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !56, !alias.scope !587
  %i.aa = load ptr, ptr %3, align 8, !tbaa !37, !alias.scope !587
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29, !noalias !587
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29, !noalias !587
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !232
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.ae = load i32, ptr %i.e, align 4, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.af, ptr %6, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 64, ptr %i.a, align 8, !tbaa !54
  %i.ag = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.i     ; 3 uses

.noexc:                                           ; preds = %_ZNK8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE16get_token_stringEv.exit
  store ptr %i.ag, ptr %6, align 8, !tbaa !37
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !54  ; 3 uses
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.ag, ptr noundef nonnull align 1 dereferenceable(64) @.str.206, i64 64, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !56
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  store i8 0, ptr %i.aj, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.ak, ptr %7, align 8, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.ak, ptr noundef nonnull align 1 dereferenceable(6) @.str.82, i64 6, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 6, ptr %i.al, align 8, !tbaa !56
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i8 0, ptr %i.am, align 2, !tbaa !55
  invoke void @_ZNK8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE17exception_messageENS1_14input_format_tERKSB_SO_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(560) %0, i32 noundef %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %.noexc
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail11parse_error6createIDnTnNSt9enable_ifIXsr21is_basic_json_contextIT_EE5valueEiE4typeELi0EEES2_imRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.nlohmann::json_abi_v3_12_0::detail::parse_error") align 8 %4, i32 noundef 112, i64 noundef %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr null)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8nlohmann16json_abi_v3_12_06detail9exceptionE, i64 16), ptr %4, align 8, !tbaa !39
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.an) #29, !inline_history !139
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %4) #29, !inline_history !139
  %i.ao = load ptr, ptr %5, align 8, !tbaa !37    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.ao) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ar = load ptr, ptr %7, align 8, !tbaa !37    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ak
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.ar) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.at = load ptr, ptr %6, align 8, !tbaa !37    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.af
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  call void @_ZdlPv(ptr noundef %i.at) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.av = load ptr, ptr %3, align 8, !tbaa !37    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.r
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
  call void @_ZdlPv(ptr noundef %i.av) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.ag

bb.i:                                             ; preds = %_ZNK8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE16get_token_stringEv.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

bb.j:                                             ; preds = %.noexc
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

bb.k:                                             ; preds = %bb.g
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = load ptr, ptr %5, align 8, !tbaa !37    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.ba) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58, %bb.j
  %.pn32 = phi { ptr, i32 } [ %i.ay, %bb.j ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ], [ %i.az, %bb.k ] ; 2 uses
  %i.bd = load ptr, ptr %7, align 8, !tbaa !37    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.ak
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  call void @_ZdlPv(ptr noundef %i.bd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.bf = load ptr, ptr %6, align 8, !tbaa !37    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.af
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  call void @_ZdlPv(ptr noundef %i.bf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64, %bb.i
  %.pn32.pn.pn = phi { ptr, i32 } [ %i.ax, %bb.i ], [ %.pn32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64 ], [ %.pn32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.bh = load ptr, ptr %3, align 8, !tbaa !37    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.r
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  call void @_ZdlPv(ptr noundef %i.bh) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.ah

bb.l:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  store ptr %i.bj, ptr %8, align 8, !tbaa !53
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 0, ptr %i.bk, align 8, !tbaa !56
  store i8 0, ptr %i.bj, align 8, !tbaa !55
  br i1 %i.i, label %._crit_edge, label %.preheader91

._crit_edge:                                      ; preds = %bb.l
  %.pre = load i32, ptr %i.c, align 8, !tbaa !258
  br label %bb.n

.preheader91:                                     ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !231
  %.not2795 = icmp eq i32 %i.bm, 125
  br i1 %.not2795, label %.critedge44, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader91
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.z

bb.m:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE15get_ignore_noopEv.exit.i75, %bb.z
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.n:                                             ; preds = %._crit_edge, %.thread
  %i.bq = phi i32 [ %i.j, %.thread ], [ %.pre, %._crit_edge ]
  %i.br = phi ptr [ %i.m, %.thread ], [ %i.bk, %._crit_edge ] ; 2 uses
  %i.bs = phi ptr [ %i.l, %.thread ], [ %i.bj, %._crit_edge ] ; 10 uses
  %.not28 = icmp eq i32 %i.bq, 0
  %.not29107.not = icmp eq i64 %i.h, 0            ; 2 uses
  br i1 %.not28, label %.preheader, label %.preheader88

.preheader88:                                     ; preds = %bb.n
  br i1 %.not29107.not, label %.critedge44, label %.lr.ph101

.preheader:                                       ; preds = %bb.n
  br i1 %.not29107.not, label %.critedge44, label %.lr.ph109

.lr.ph109:                                        ; preds = %.preheader
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.t

.lr.ph101:                                        ; preds = %.preheader88, %bb.s
  %.012100 = phi i64 [ %i.cb, %bb.s ], [ 0, %.preheader88 ]
  %i.bw = invoke noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE17get_ubjson_stringERSB_b(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef nonnull align 8 dereferenceable(32) %8, i1 noundef zeroext true)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.lr.ph101
  br i1 %i.bw, label %bb.q, label %.critedge44, !prof !166

bb.p:                                             ; preds = %bb.q, %.lr.ph101
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.q:                                             ; preds = %bb.o
  %i.by = load i32, ptr %i.c, align 8, !tbaa !258
  %i.bz = invoke noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE16get_ubjson_valueEi(ptr noundef nonnull align 8 dereferenceable(560) %0, i32 noundef %i.by)
          to label %bb.r unwind label %bb.p

bb.r:                                             ; preds = %bb.q
  br i1 %i.bz, label %bb.s, label %.critedge44, !prof !166

bb.s:                                             ; preds = %bb.r
  store i64 0, ptr %i.br, align 8, !tbaa !56
  %i.ca = load ptr, ptr %8, align 8, !tbaa !37
  store i8 0, ptr %i.ca, align 1, !tbaa !55
  %i.cb = add nuw i64 %.012100, 1                 ; 2 uses
  %i.cc = load i64, ptr %2, align 8, !tbaa !257
  %.not31 = icmp ult i64 %i.cb, %i.cc
  br i1 %.not31, label %.lr.ph101, label %.critedge44, !llvm.loop !584

bb.t:                                             ; preds = %.lr.ph109, %bb.y
  %.0108 = phi i64 [ 0, %.lr.ph109 ], [ %i.cq, %bb.y ]
  %i.cd = invoke noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE17get_ubjson_stringERSB_b(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef nonnull align 8 dereferenceable(32) %8, i1 noundef zeroext true)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  br i1 %i.cd, label %bb.w, label %.critedge44, !prof !166

bb.v:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE15get_ignore_noopEv.exit.i, %bb.t
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.w:                                             ; preds = %bb.u
  %i.cf = load ptr, ptr %i.bu, align 8, !tbaa !168 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.bt, align 8, !tbaa !232
  %.promoted3.i.i = load ptr, ptr %0, align 8, !tbaa !65 ; 2 uses
  %i.cg = add i64 %.promoted.i.i, 1               ; 2 uses
  store i64 %i.cg, ptr %i.bt, align 8, !tbaa !232
  %.not.i.i.i.i146 = icmp eq ptr %.promoted3.i.i, %i.cf
  br i1 %.not.i.i.i.i146, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.thread.i.i, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.i.i, !prof !238

bb.x:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.i.i
  %i.ch = add i64 %i.ci, 1                        ; 2 uses
  store i64 %i.ch, ptr %i.bt, align 8, !tbaa !232
  %.not.i.i.i.i = icmp eq ptr %i.cm, %i.cf
  br i1 %.not.i.i.i.i, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.thread.i.i, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.i.i, !prof !239, !llvm.loop !15

_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.thread.i.i: ; preds = %bb.x, %bb.w
  store i32 -1, ptr %i.bv, align 8, !tbaa !231
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE15get_ignore_noopEv.exit.i

_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.i.i: ; preds = %bb.w, %bb.x
  %i.ci = phi i64 [ %i.ch, %bb.x ], [ %i.cg, %bb.w ]
  %i.cj = phi ptr [ %i.cm, %bb.x ], [ %.promoted3.i.i, %bb.w ] ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !55  ; 2 uses
  %i.cl = zext i8 %i.ck to i32                    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 1 ; 3 uses
  store ptr %i.cm, ptr %0, align 8, !tbaa !65
  store i32 %i.cl, ptr %i.bv, align 8, !tbaa !231
  %i.cn = icmp eq i8 %i.ck, 78
  br i1 %i.cn, label %bb.x, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE15get_ignore_noopEv.exit.i, !llvm.loop !15

_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE15get_ignore_noopEv.exit.i: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.i.i, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.thread.i.i
  %.0.i.i2.i.i = phi i32 [ -1, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.thread.i.i ], [ %i.cl, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.i.i ]
  %i.co = invoke noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE16get_ubjson_valueEi(ptr noundef nonnull align 8 dereferenceable(560) %0, i32 noundef %.0.i.i2.i.i)
          to label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE21parse_ubjson_internalEb.exit unwind label %bb.v, !inline_history !16

_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE21parse_ubjson_internalEb.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE15get_ignore_noopEv.exit.i
  br i1 %i.co, label %bb.y, label %.critedge44, !prof !166

bb.y:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE21parse_ubjson_internalEb.exit
  store i64 0, ptr %i.br, align 8, !tbaa !56
  %i.cp = load ptr, ptr %8, align 8, !tbaa !37
  store i8 0, ptr %i.cp, align 1, !tbaa !55
  %i.cq = add nuw i64 %.0108, 1                   ; 2 uses
  %i.cr = load i64, ptr %2, align 8, !tbaa !257
  %.not29 = icmp ult i64 %i.cq, %i.cr
  br i1 %.not29, label %bb.t, label %.critedge44, !llvm.loop !585

bb.z:                                             ; preds = %.lr.ph, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE15get_ignore_noopEv.exit
  %i.cs = invoke noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE17get_ubjson_stringERSB_b(ptr noundef nonnull align 8 dereferenceable(560) %0, ptr noundef nonnull align 8 dereferenceable(32) %8, i1 noundef zeroext false)
          to label %bb.aa unwind label %bb.m

bb.aa:                                            ; preds = %bb.z
  br i1 %i.cs, label %bb.ab, label %.critedge44, !prof !166

bb.ab:                                            ; preds = %bb.aa
  %i.ct = load ptr, ptr %i.bo, align 8, !tbaa !168 ; 2 uses
  %.promoted.i.i71 = load i64, ptr %i.bn, align 8, !tbaa !232
  %.promoted3.i.i72 = load ptr, ptr %0, align 8, !tbaa !65 ; 2 uses
  %i.cu = add i64 %.promoted.i.i71, 1             ; 2 uses
  store i64 %i.cu, ptr %i.bn, align 8, !tbaa !232
  %.not.i.i.i.i73144 = icmp eq ptr %.promoted3.i.i72, %i.ct
  br i1 %.not.i.i.i.i73144, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.thread.i.i77, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.i.i74, !prof !238

bb.ac:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.i.i74
  %i.cv = add i64 %i.cw, 1                        ; 2 uses
  store i64 %i.cv, ptr %i.bn, align 8, !tbaa !232
  %.not.i.i.i.i73 = icmp eq ptr %i.da, %i.ct
  br i1 %.not.i.i.i.i73, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.thread.i.i77, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.i.i74, !prof !239, !llvm.loop !15

_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.thread.i.i77: ; preds = %bb.ac, %bb.ab
  store i32 -1, ptr %i.bl, align 8, !tbaa !231
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE15get_ignore_noopEv.exit.i75

_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.i.i74: ; preds = %bb.ab, %bb.ac
  %i.cw = phi i64 [ %i.cv, %bb.ac ], [ %i.cu, %bb.ab ]
  %i.cx = phi ptr [ %i.da, %bb.ac ], [ %.promoted3.i.i72, %bb.ab ] ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !55  ; 2 uses
  %i.cz = zext i8 %i.cy to i32                    ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 1 ; 3 uses
  store ptr %i.da, ptr %0, align 8, !tbaa !65
  store i32 %i.cz, ptr %i.bl, align 8, !tbaa !231
  %i.db = icmp eq i8 %i.cy, 78
  br i1 %i.db, label %bb.ac, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE15get_ignore_noopEv.exit.i75, !llvm.loop !15

_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE15get_ignore_noopEv.exit.i75: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.i.i74, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.thread.i.i77
  %.0.i.i2.i.i76 = phi i32 [ -1, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.thread.i.i77 ], [ %i.cz, %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.i.i74 ]
  %i.dc = invoke noundef zeroext i1 @_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE16get_ubjson_valueEi(ptr noundef nonnull align 8 dereferenceable(560) %0, i32 noundef %.0.i.i2.i.i76)
          to label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE21parse_ubjson_internalEb.exit79 unwind label %bb.m, !inline_history !16

_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE21parse_ubjson_internalEb.exit79: ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE15get_ignore_noopEv.exit.i75
  br i1 %i.dc, label %bb.ad, label %.critedge44, !prof !166

bb.ad:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE21parse_ubjson_internalEb.exit79
  %i.dd = load ptr, ptr %i.bo, align 8, !tbaa !168 ; 2 uses
  %.promoted.i = load i64, ptr %i.bn, align 8, !tbaa !232
  %.promoted3.i = load ptr, ptr %0, align 8, !tbaa !65 ; 2 uses
  %i.de = add i64 %.promoted.i, 1                 ; 2 uses
  store i64 %i.de, ptr %i.bn, align 8, !tbaa !232
  %.not.i.i.i145 = icmp eq ptr %.promoted3.i, %i.dd
  br i1 %.not.i.i.i145, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.thread.i, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.i, !prof !238

bb.ae:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.i
  %i.df = add i64 %i.dg, 1                        ; 2 uses
  store i64 %i.df, ptr %i.bn, align 8, !tbaa !232
  %.not.i.i.i = icmp eq ptr %i.dk, %i.dd
  br i1 %.not.i.i.i, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.thread.i, label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.i, !prof !239, !llvm.loop !15

_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.thread.i: ; preds = %bb.ae, %bb.ad
  store i32 -1, ptr %i.bl, align 8, !tbaa !231
  br label %_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE15get_ignore_noopEv.exit

_ZN8nlohmann16json_abi_v3_12_06detail13binary_readerINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEE10ParserImplE3getEv.exit.i: ; preds = %bb.ad, %bb.ae
  %i.dg = phi i64 [ %i.df, %bb.ae ], [ %i.de, %bb.ad ]
  %i.dh = phi ptr [ %i.dk, %bb.ae ], [ %.promoted3.i, %bb.ad ] ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !55  ; 2 uses
  %i.dj = zext i8 %i.di to i32
end_hunk_1
