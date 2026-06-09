inline.NumInlined: 395
inline.NumDeleted: 173
begin_hunk_0_@_ZN6google8protobuf8compiler6python27NamePrefixedWithNestedTypesINS0_14EnumDescriptorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_St17basic_string_viewIcS8_E:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i48: ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit42.thread
  store ptr %i.cn, ptr %0, align 8, !tbaa !15
  %i.cs = load i64, ptr %i.g, align 8, !tbaa !17
  store i64 %i.cs, ptr %i.cm, align 8, !tbaa !17
  %.pre = load i64, ptr %i.n, align 8, !tbaa !18
  br label %.thread

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i48, %bb.y
  %i.ct = phi i64 [ %i.cp, %bb.y ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i48 ]
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !18
  store i64 0, ptr %i.n, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %.pre74 = load ptr, ptr %6, align 8, !tbaa !15  ; 2 uses
  %i.cv = icmp eq ptr %.pre74, %i.g
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.cw = load i64, ptr %i.g, align 8, !tbaa !17
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %.pre74, i64 noundef %i.cx) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  ret void

bb.z:                                             ; preds = %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %i.cl, %bb.x ]
  %i.cy = load ptr, ptr %6, align 8, !tbaa !15    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.g
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.z
  %i.da = load i64, ptr %i.g, align 8, !tbaa !17
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8compiler6python10ModuleNameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca [2 x %"struct.std::pair"], align 8  ; 12 uses
  %5 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZN6google8protobuf8compiler10StripProtoB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, i64 %1, ptr %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store i64 1, ptr %4, align 8, !tbaa !49
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.4, ptr %i.a, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 1, ptr %i.b, align 8, !tbaa !49
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @.str.5, ptr %i.c, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 1, ptr %i.d, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr @.str.6, ptr %i.e, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 1, ptr %i.f, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr @.str, ptr %i.g, align 8, !tbaa !51
  %i.h = invoke noundef i32 @_ZN4absl12lts_2025051213StrReplaceAllESt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES6_EEPNSt7__cxx1112basic_stringIcS5_SaIcEEE(ptr nonnull %4, i64 2, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.i = load ptr, ptr %3, align 8, !tbaa !15
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !18
  store i64 %i.k, ptr %5, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.i, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  store i64 4, ptr %6, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.7, ptr %i.m, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.n = load ptr, ptr %3, align 8, !tbaa !15     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.q = load i64, ptr %i.o, align 8, !tbaa !17
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void

bb.d:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.t, %bb.e ], [ %i.s, %bb.d ]
  %i.u = load ptr, ptr %3, align 8, !tbaa !15     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.f
  %i.x = load i64, ptr %i.v, align 8, !tbaa !17
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %.pn
}

declare void @_ZN6google8protobuf8compiler10StripProtoB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, ptr) local_unnamed_addr #2

declare noundef i32 @_ZN4absl12lts_2025051213StrReplaceAllESt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES6_EEPNSt7__cxx1112basic_stringIcS5_SaIcEEE(ptr, i64, ptr noundef) local_unnamed_addr #2

declare void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8compiler6python18StrippedModuleNameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN6google8protobuf8compiler6python10ModuleNameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6google8protobuf8compiler6python21ContainsPythonKeywordESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.absl::lts_20250512::strings_internal::Splitter<absl::lts_20250512::ByChar, absl::lts_20250512::AllowEmpty, std::basic_string_view<char>>::ConvertToContainer", align 1 ; 3 uses
  %3 = alloca %"class.std::vector", align 8       ; 10 uses
  %4 = alloca %"class.absl::lts_20250512::strings_internal::Splitter", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store i64 %0, ptr %4, align 8, !tbaa !13, !alias.scope !52
  %.sroa.2.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %.sroa.2.0..sroa_idx.i1.i, align 8, !tbaa !40, !alias.scope !52
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 46, ptr %i.a, align 8, !tbaa !17, !alias.scope !52
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13, !noalias !55
  call void @_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS8_SaIS8_EES8_Lb0EEclERKS9_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %3, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(18) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13, !noalias !55
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.d = load ptr, ptr %3, align 8, !tbaa !61     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 4
  %i.i = trunc i64 %i.h to i32
  %.not1014 = icmp sgt i32 %i.i, 0
  br i1 %.not1014, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load ptr, ptr @_ZN6google8protobuf8compiler6python12kKeywordsEndE, align 8, !tbaa !35
  br label %.lr.ph

bb.b:                                             ; preds = %_ZSt4findIPKPKcSt17basic_string_viewIcSt11char_traitsIcEEET_S8_S8_RKT0_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %.pre19.pre to i64
  %i.m = sub i64 %i.k, %i.l
  %sext = shl i64 %i.m, 28
  %i.n = ashr i64 %sext, 32
  %.not10 = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %.not10, label %.lr.ph, label %.critedge, !llvm.loop !62

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %i.o = phi ptr [ %.pre, %.lr.ph.preheader ], [ %i.s, %bb.b ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.p = phi ptr [ %i.d, %.lr.ph.preheader ], [ %.pre19.pre, %bb.b ] ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %i.r = invoke noundef ptr @_ZSt9__find_ifIPKPKcN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEEET_SD_SD_T0_St26random_access_iterator_tag(ptr noundef nonnull @_ZN6google8protobuf8compiler6pythonL9kKeywordsE, ptr noundef %i.o, ptr nonnull align 8 dereferenceable(16) %i.q)
          to label %_ZSt4findIPKPKcSt17basic_string_viewIcSt11char_traitsIcEEET_S8_S8_RKT0_.exit unwind label %bb.c

_ZSt4findIPKPKcSt17basic_string_viewIcSt11char_traitsIcEEET_S8_S8_RKT0_.exit: ; preds = %.lr.ph
  %i.s = load ptr, ptr @_ZN6google8protobuf8compiler6python12kKeywordsEndE, align 8, !tbaa !35 ; 2 uses
  %.not.not.not = icmp ne ptr %i.r, %i.s          ; 3 uses
  %.pre19.pre = load ptr, ptr %3, align 8, !tbaa !61 ; 4 uses
  br i1 %.not.not.not, label %.critedge, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %3, align 8, !tbaa !61     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !64
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #14
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  resume { ptr, i32 } %i.t

.critedge:                                        ; preds = %_ZSt4findIPKPKcSt17basic_string_viewIcSt11char_traitsIcEEET_S8_S8_RKT0_.exit, %bb.b, %bb.a
  %i.aa = phi ptr [ %i.d, %bb.a ], [ %.pre19.pre, %bb.b ], [ %.pre19.pre, %_ZSt4findIPKPKcSt17basic_string_viewIcSt11char_traitsIcEEET_S8_S8_RKT0_.exit ] ; 3 uses
  %.not10.lcssa = phi i1 [ false, %bb.a ], [ %.not.not.not, %bb.b ], [ %.not.not.not, %_ZSt4findIPKPKcSt17basic_string_viewIcSt11char_traitsIcEEET_S8_S8_RKT0_.exit ]
  %.not.i.i.i11 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit12, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !64
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #14
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit12

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit12: ; preds = %.critedge, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i1 %.not10.lcssa
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8compiler6python11GetFileNameB5cxx11EPKNS0_14FileDescriptorESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef readonly captures(none) %1, i64 %2, ptr %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca [1 x %"struct.std::pair"], align 8  ; 8 uses
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !65   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !18
  call void @_ZN6google8protobuf8compiler6python10ModuleNameB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 %i.f, ptr %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !11
  %i.h = load ptr, ptr %4, align 8, !tbaa !15     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !18   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %i.j, ptr %i.a, align 8, !tbaa !13
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.l = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.l, ptr %0, align 8, !tbaa !15
  %i.m = load i64, ptr %i.a, align 8, !tbaa !13
  store i64 %i.m, ptr %i.g, align 8, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.n = phi ptr [ %i.l, %.noexc ], [ %i.g, %bb.a ] ; 2 uses
  switch i64 %i.j, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %i.h, align 1, !tbaa !17
  store i8 %i.o, ptr %i.n, align 1, !tbaa !17
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.h, i64 %i.j, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.p = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !18
  %i.r = load ptr, ptr %0, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store i64 1, ptr %5, align 8, !tbaa !49
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str, ptr %i.t, align 8, !tbaa !51
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 1, ptr %i.u, align 8, !tbaa !49
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr @.str.6, ptr %i.v, align 8, !tbaa !51
  %i.w = invoke noundef i32 @_ZN4absl12lts_2025051213StrReplaceAllESt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEES6_EEPNSt7__cxx1112basic_stringIcS5_SaIcEEE(ptr nonnull %5, i64 1, ptr noundef nonnull %0)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  store i64 %2, ptr %6, align 8, !tbaa !13
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !40
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.x = load ptr, ptr %4, align 8, !tbaa !15     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !17
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void

bb.g:                                             ; preds = %.noexc.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

bb.h:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.i ], [ %i.ad, %bb.h ] ; 2 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.g
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.j
  %i.ah = load i64, ptr %i.g, align 8, !tbaa !17
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.ac, %bb.g ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %.pn, %bb.j ]
  %i.aj = load ptr, ptr %4, align 8, !tbaa !15    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !17
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN6google8protobuf8compiler6python18HasGenericServicesEPKNS0_14FileDescriptorE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !77
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !78, !nonnull !79, !noundef !79
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 131
  %i.g = load i8, ptr %i.f, align 1, !tbaa !17, !range !80, !noundef !79
  %i.h = trunc nuw i8 %i.g to i1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i1 [ false, %bb.a ], [ %i.h, %bb.b ]
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8compiler6python21GeneratedCodeToBase64B5cxx11ERKNS0_17GeneratedCodeInfoE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !18
  store i8 0, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  invoke void @_ZNK6google8protobuf11MessageLite17SerializeAsStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !18
  invoke void @_ZN4absl12lts_2025051212Base64EscapeESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEE(i64 %i.e, ptr %i.c, ptr noundef nonnull %0)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.i = load i64, ptr %i.g, align 8, !tbaa !17
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void

bb.d:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

bb.e:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.e
  %i.p = load i64, ptr %i.n, align 8, !tbaa !17
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5, %bb.d
  %.pn = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5 ], [ %i.l, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %i.r = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.a
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7
  %i.t = load i64, ptr %i.a, align 8, !tbaa !17
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  resume { ptr, i32 } %.pn
}

declare void @_ZN4absl12lts_2025051212Base64EscapeESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEE(i64, ptr, ptr noundef) local_unnamed_addr #2

declare void @_ZNK6google8protobuf11MessageLite17SerializeAsStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS8_SaIS8_EES8_Lb0EEclERKS9_(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(18) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::array", align 8       ; 6 uses
  %4 = alloca %"class.absl::lts_20250512::strings_internal::SplitIterator", align 8 ; 15 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  store i64 0, ptr %4, align 8, !tbaa !84, !alias.scope !81
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  store i32 0, ptr %i.a, align 8, !tbaa !90, !alias.scope !81
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !alias.scope !81
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %2, ptr %i.c, align 8, !tbaa !91, !alias.scope !81
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !17, !noalias !81
  store i8 %i.f, ptr %i.d, align 8, !tbaa !17, !alias.scope !81
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %2, align 8, !tbaa !13, !noalias !81 ; 6 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !40, !noalias !81 ; 4 uses
  %i.g = icmp eq ptr %.sroa.2.0.copyload.i.i.i, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 2, ptr %i.a, align 8, !tbaa !90, !alias.scope !81
  br label %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit

bb.c:                                             ; preds = %bb.a
  %i.h = invoke { i64, ptr } @_ZNK4absl12lts_202505126ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1) %i.d, i64 %.sroa.0.0.copyload.i.i.i, ptr nonnull %.sroa.2.0.copyload.i.i.i, i64 noundef 0)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.i = extractvalue { i64, ptr } %i.h, 0
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 %.sroa.0.0.copyload.i.i.i
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  store i32 1, ptr %i.a, align 8, !tbaa !90, !alias.scope !81
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc
  %i.m = load i64, ptr %4, align 8, !tbaa !84, !alias.scope !81 ; 5 uses
  %i.n = icmp ugt i64 %i.m, %.sroa.0.0.copyload.i.i.i
  br i1 %i.n, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i64 noundef %i.m, i64 noundef %.sroa.0.0.copyload.i.i.i) #15
          to label %.noexc13 unwind label %bb.i

.noexc13:                                         ; preds = %bb.f
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i: ; preds = %bb.e
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 %i.m ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.o, %i.q
  %i.s = sub nuw i64 %.sroa.0.0.copyload.i.i.i, %i.m
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.s, i64 %i.r) ; 2 uses
  store i64 %.sroa.speculated.i.i.i.i, ptr %i.b, align 8, !tbaa !13, !alias.scope !81
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !40, !alias.scope !81
  %i.t = add i64 %i.m, %i.i
  %i.u = add i64 %i.t, %.sroa.speculated.i.i.i.i
  br label %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit, !llvm.loop !92

_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit: ; preds = %bb.b, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i
  %storemerge.i = phi i64 [ %i.u, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i ], [ %.sroa.0.0.copyload.i.i.i, %bb.b ]
  store i64 %storemerge.i, ptr %4, align 8, !tbaa !84, !alias.scope !81
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit
  %i.x = load i32, ptr %i.a, align 8, !tbaa !90   ; 2 uses
  %i.y = icmp eq i32 %i.x, 2
  br i1 %i.y, label %bb.h, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.g
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !51
  %.pre23 = load i64, ptr %i.b, align 8, !tbaa !49
  br label %.preheader

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void

bb.i:                                             ; preds = %bb.f, %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.preheader:                                       ; preds = %.preheader.preheader, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit
  %i.aa = phi i32 [ %.pre24, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ], [ %i.x, %.preheader.preheader ]
  %i.ab = phi i64 [ %.sroa.speculated.i.i, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ], [ %.pre23, %.preheader.preheader ]
  %i.ac = phi ptr [ %i.ar, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ], [ %.pre, %.preheader.preheader ]
  %.0 = phi i64 [ %i.ax, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %.0 ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !93
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.ab, ptr %i.ae, align 8, !tbaa !95
  %i.af = icmp eq i32 %i.aa, 1
  br i1 %i.af, label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit.thread, label %bb.j

_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit.thread: ; preds = %.preheader
  store i32 2, ptr %i.a, align 8, !tbaa !90
  %i.ag = add nuw nsw i64 %.0, 1
  br label %.critedge

bb.j:                                             ; preds = %.preheader
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !91  ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ah, align 8, !tbaa !13 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !40 ; 3 uses
  %i.ai = load i64, ptr %4, align 8, !tbaa !84
  %i.aj = invoke { i64, ptr } @_ZNK4absl12lts_202505126ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1) %i.d, i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, i64 noundef %i.ai)
          to label %.noexc14 unwind label %.loopexit ; 2 uses

.noexc14:                                         ; preds = %bb.j
  %i.ak = extractvalue { i64, ptr } %i.aj, 0
  %i.al = extractvalue { i64, ptr } %i.aj, 1      ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %.sroa.0.0.copyload.i.i
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc14
  store i32 1, ptr %i.a, align 8, !tbaa !90
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.noexc14
  %i.ao = load i64, ptr %4, align 8, !tbaa !84    ; 5 uses
  %i.ap = icmp ugt i64 %i.ao, %.sroa.0.0.copyload.i.i
  br i1 %i.ap, label %bb.m, label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit

bb.m:                                             ; preds = %bb.l
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i64 noundef %i.ao, i64 noundef %.sroa.0.0.copyload.i.i) #15
          to label %.noexc15 unwind label %.loopexit.split-lp

.noexc15:                                         ; preds = %bb.m
  unreachable

_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit: ; preds = %bb.l
  %i.aq = ptrtoint ptr %i.al to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %i.ao ; 3 uses
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.aq, %i.as
  %i.au = sub nuw i64 %.sroa.0.0.copyload.i.i, %i.ao
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.au, i64 %i.at) ; 3 uses
  store i64 %.sroa.speculated.i.i, ptr %i.b, align 8, !tbaa !13
  store ptr %i.ar, ptr %i.v, align 8, !tbaa !40
  %i.av = add i64 %i.ao, %i.ak
  %i.aw = add i64 %i.av, %.sroa.speculated.i.i
  store i64 %i.aw, ptr %4, align 8, !tbaa !84
  %.pre24 = load i32, ptr %i.a, align 8           ; 2 uses
  %i.ax = add nuw nsw i64 %.0, 1                  ; 3 uses
  %.not = icmp eq i64 %i.ax, 16
  %i.ay = icmp eq i32 %.pre24, 2
  %or.cond = select i1 %.not, i1 true, i1 %i.ay
  br i1 %or.cond, label %.critedge, label %.preheader, !llvm.loop !96

.critedge:                                        ; preds = %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit.thread
  %i.az = phi i64 [ %i.ag, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit.thread ], [ %i.ax, %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit ]
  %i.ba = load ptr, ptr %i.w, align 8, !tbaa !97
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.az
  %i.bc = load ptr, ptr %0, align 8, !tbaa !97    ; 2 uses
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.bc, i64 %i.bf
  invoke void @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE15_M_range_insertIPZNK4absl12lts_2025051216strings_internal8SplitterINS8_6ByCharENS8_10AllowEmptyES3_E18ConvertToContainerIS5_S3_Lb0EEclERKSD_E8raw_viewEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SO_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.bg, ptr noundef nonnull %3, ptr noundef nonnull %i.bb)
          to label %bb.g unwind label %bb.n, !llvm.loop !98

.loopexit:                                        ; preds = %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %.critedge
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.n, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.z, %bb.i ], [ %i.bh, %bb.n ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.bi = load ptr, ptr %0, align 8, !tbaa !61    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !64
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bn) #14
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %bb.o, %bb.p
  resume { ptr, i32 } %.pn.pn
}

declare { i64, ptr } @_ZNK4absl12lts_202505126ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1), i64, ptr, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE15_M_range_insertIPZNK4absl12lts_2025051216strings_internal8SplitterINS8_6ByCharENS8_10AllowEmptyES3_E18ConvertToContainerIS5_S3_Lb0EEclERKSD_E8raw_viewEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SO_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !58   ; 12 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j
  %.not54 = icmp ult i64 %i.k, %i.c
  br i1 %.not54, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 4 uses
  %i.n = ashr exact i64 %i.m, 4                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.c
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %.idx ; 2 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.p, %bb.d ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.012.i.i.i.i.i) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.012.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !99
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.q, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !58
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.c
  store ptr %i.t, ptr %i.g, align 8, !tbaa !58
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = sub i64 %i.u, %i.l                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 4                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.e, label %bb.f, !prof !101

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPSt17basic_string_viewIcSt11char_traitsIcEES4_ET0_T_S6_S5_.exit

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 16
  br i1 %i.aa, label %bb.g, label %_ZSt13move_backwardIPSt17basic_string_viewIcSt11char_traitsIcEES4_ET0_T_S6_S5_.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds i8, ptr %i.h, i64 -16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !99
  br label %_ZSt13move_backwardIPSt17basic_string_viewIcSt11char_traitsIcEES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPSt17basic_string_viewIcSt11char_traitsIcEES4_ET0_T_S6_S5_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.ac = icmp sgt i64 %i.d, 0
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i55.preheader, label %_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit

.lr.ph.i.i.i.i.i55.preheader:                     ; preds = %_ZSt13move_backwardIPSt17basic_string_viewIcSt11char_traitsIcEES4_ET0_T_S6_S5_.exit
  %xtraiter131 = and i64 %i.d, 3                  ; 2 uses
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %.lr.ph.i.i.i.i.i55.prol.loopexit, label %.lr.ph.i.i.i.i.i55.prol

.lr.ph.i.i.i.i.i55.prol:                          ; preds = %.lr.ph.i.i.i.i.i55.preheader, %.lr.ph.i.i.i.i.i55.prol
  %.012.i.i.i.i.i.prol = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i55.prol ], [ %2, %.lr.ph.i.i.i.i.i55.preheader ] ; 3 uses
  %.0811.i.i.i.i.i.prol = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i55.prol ], [ %1, %.lr.ph.i.i.i.i.i55.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.prol = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i55.prol ], [ %i.d, %.lr.ph.i.i.i.i.i55.preheader ]
  %prol.iter133 = phi i64 [ %prol.iter133.next, %.lr.ph.i.i.i.i.i55.prol ], [ 0, %.lr.ph.i.i.i.i.i55.preheader ]
  %i.ad = load ptr, ptr %.012.i.i.i.i.i.prol, align 8, !tbaa !93
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.prol, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !95
  store i64 %i.af, ptr %.0811.i.i.i.i.i.prol, align 8, !tbaa !13
  %.sroa.4.0..sroa_idx.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.prol, i64 8
  store ptr %i.ad, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.prol, align 8, !tbaa !40
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ai = add nsw i64 %.0910.i.i.i.i.i.prol, -1   ; 2 uses
  %prol.iter133.next = add i64 %prol.iter133, 1   ; 2 uses
  %prol.iter133.cmp.not = icmp eq i64 %prol.iter133.next, %xtraiter131
  br i1 %prol.iter133.cmp.not, label %.lr.ph.i.i.i.i.i55.prol.loopexit, label %.lr.ph.i.i.i.i.i55.prol, !llvm.loop !102

.lr.ph.i.i.i.i.i55.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i55.prol, %.lr.ph.i.i.i.i.i55.preheader
  %.012.i.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.ag, %.lr.ph.i.i.i.i.i55.prol ]
  %.0811.i.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.ah, %.lr.ph.i.i.i.i.i55.prol ]
  %.0910.i.i.i.i.i.unr = phi i64 [ %i.d, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.ai, %.lr.ph.i.i.i.i.i55.prol ]
  %i.aj = icmp ult i64 %i.d, 4
  br i1 %i.aj, label %_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit, label %.lr.ph.i.i.i.i.i55

.lr.ph.i.i.i.i.i55:                               ; preds = %.lr.ph.i.i.i.i.i55.prol.loopexit, %.lr.ph.i.i.i.i.i55
  %.012.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i55 ], [ %.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i55.prol.loopexit ] ; 9 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i55 ], [ %.0811.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i55.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i55 ], [ %.0910.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i55.prol.loopexit ] ; 2 uses
  %i.ak = load ptr, ptr %.012.i.i.i.i.i, align 8, !tbaa !93
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !95
  store i64 %i.am, ptr %.0811.i.i.i.i.i, align 8, !tbaa !13
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store ptr %i.ak, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !40
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !93
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !95
  store i64 %i.ar, ptr %i.ao, align 8, !tbaa !13
  %.sroa.4.0..sroa_idx.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  store ptr %i.ap, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.1, align 8, !tbaa !40
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !93
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 40
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !95
  store i64 %i.aw, ptr %i.at, align 8, !tbaa !13
  %.sroa.4.0..sroa_idx.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40
  store ptr %i.au, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.2, align 8, !tbaa !40
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !93
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 56
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !95
  store i64 %i.bb, ptr %i.ay, align 8, !tbaa !13
  %.sroa.4.0..sroa_idx.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 56
  store ptr %i.az, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.3, align 8, !tbaa !40
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 64
  %i.be = add nsw i64 %.0910.i.i.i.i.i, -4
  %i.bf = icmp sgt i64 %.0910.i.i.i.i.i, 4
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i55, label %_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit, !llvm.loop !104

_ZSt9__advanceIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.bg = getelementptr inbounds i8, ptr %2, i64 %i.m ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.bg, %3
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt9__advanceIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i ], [ %i.h, %_ZSt9__advanceIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit ] ; 3 uses
  %.0810.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %i.bg, %_ZSt9__advanceIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit ] ; 3 uses
  %i.bh = load ptr, ptr %.0810.i.i.i.i, align 8, !tbaa !93
  %i.bi = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !95
  store i64 %i.bj, ptr %.011.i.i.i.i, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  store ptr %i.bh, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.bl, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !105

_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !58
  br label %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit
  %i.bn = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit.loopexit ], [ %i.h, %_ZSt9__advanceIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.bo = sub nuw nsw i64 %i.d, %i.n
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.bo ; 3 uses
  store ptr %i.bp, ptr %i.g, align 8, !tbaa !58
  %.not11.i.i.i.i.i56 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i56, label %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62, label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit, %.lr.ph.i.i.i.i.i57
  %.013.i.i.i.i.i58 = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i57 ], [ %i.bp, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i59 = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i57 ], [ %1, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.012.i.i.i.i.i59) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i58, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.012.i.i.i.i.i59, i64 16, i1 false), !tbaa.struct !99
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i59, i64 16 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i58, i64 16
  %.not.i.i.i.i.i60 = icmp eq ptr %i.bq, %i.h
  br i1 %.not.i.i.i.i.i60, label %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62.loopexit, label %.lr.ph.i.i.i.i.i57, !llvm.loop !100

_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62.loopexit: ; preds = %.lr.ph.i.i.i.i.i57
  %.pre107 = load ptr, ptr %i.g, align 8, !tbaa !58
  br label %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62

_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62: ; preds = %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62.loopexit, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit
  %i.bs = phi ptr [ %.pre107, %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62.loopexit ], [ %i.bp, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.m
  store ptr %i.bt, ptr %i.g, align 8, !tbaa !58
  %i.bu = ashr exact i64 %i.m, 4                  ; 5 uses
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i64.preheader, label %_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit

.lr.ph.i.i.i.i.i64.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62
  %xtraiter = and i64 %i.bu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i64.prol.loopexit, label %.lr.ph.i.i.i.i.i64.prol

.lr.ph.i.i.i.i.i64.prol:                          ; preds = %.lr.ph.i.i.i.i.i64.preheader, %.lr.ph.i.i.i.i.i64.prol
  %.012.i.i.i.i.i65.prol = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i64.prol ], [ %2, %.lr.ph.i.i.i.i.i64.preheader ] ; 3 uses
  %.0811.i.i.i.i.i66.prol = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i64.prol ], [ %1, %.lr.ph.i.i.i.i.i64.preheader ] ; 3 uses
  %.0910.i.i.i.i.i67.prol = phi i64 [ %i.cb, %.lr.ph.i.i.i.i.i64.prol ], [ %i.bu, %.lr.ph.i.i.i.i.i64.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i64.prol ], [ 0, %.lr.ph.i.i.i.i.i64.preheader ]
  %i.bw = load ptr, ptr %.012.i.i.i.i.i65.prol, align 8, !tbaa !93
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65.prol, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !95
  store i64 %i.by, ptr %.0811.i.i.i.i.i66.prol, align 8, !tbaa !13
  %.sroa.4.0..sroa_idx.i.i.i.i.i68.prol = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66.prol, i64 8
  store ptr %i.bw, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i68.prol, align 8, !tbaa !40
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65.prol, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66.prol, i64 16 ; 2 uses
  %i.cb = add nsw i64 %.0910.i.i.i.i.i67.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i64.prol.loopexit, label %.lr.ph.i.i.i.i.i64.prol, !llvm.loop !106

.lr.ph.i.i.i.i.i64.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i64.prol, %.lr.ph.i.i.i.i.i64.preheader
  %.012.i.i.i.i.i65.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.bz, %.lr.ph.i.i.i.i.i64.prol ]
  %.0811.i.i.i.i.i66.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.ca, %.lr.ph.i.i.i.i.i64.prol ]
  %.0910.i.i.i.i.i67.unr = phi i64 [ %i.bu, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.cb, %.lr.ph.i.i.i.i.i64.prol ]
  %i.cc = icmp ult i64 %i.bu, 4
  br i1 %i.cc, label %_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit, label %.lr.ph.i.i.i.i.i64

.lr.ph.i.i.i.i.i64:                               ; preds = %.lr.ph.i.i.i.i.i64.prol.loopexit, %.lr.ph.i.i.i.i.i64
  %.012.i.i.i.i.i65 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i64 ], [ %.012.i.i.i.i.i65.unr, %.lr.ph.i.i.i.i.i64.prol.loopexit ] ; 9 uses
  %.0811.i.i.i.i.i66 = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i64 ], [ %.0811.i.i.i.i.i66.unr, %.lr.ph.i.i.i.i.i64.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i67 = phi i64 [ %i.cx, %.lr.ph.i.i.i.i.i64 ], [ %.0910.i.i.i.i.i67.unr, %.lr.ph.i.i.i.i.i64.prol.loopexit ] ; 2 uses
  %i.cd = load ptr, ptr %.012.i.i.i.i.i65, align 8, !tbaa !93
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !95
  store i64 %i.cf, ptr %.0811.i.i.i.i.i66, align 8, !tbaa !13
  %.sroa.4.0..sroa_idx.i.i.i.i.i68 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 8
  store ptr %i.cd, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i68, align 8, !tbaa !40
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 16
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !93
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 24
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !95
  store i64 %i.ck, ptr %i.ch, align 8, !tbaa !13
  %.sroa.4.0..sroa_idx.i.i.i.i.i68.1 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 24
  store ptr %i.ci, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i68.1, align 8, !tbaa !40
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 32
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !93
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 40
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !95
  store i64 %i.cp, ptr %i.cm, align 8, !tbaa !13
  %.sroa.4.0..sroa_idx.i.i.i.i.i68.2 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 40
  store ptr %i.cn, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i68.2, align 8, !tbaa !40
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 48
  %i.cr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 48
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !93
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 56
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !95
  store i64 %i.cu, ptr %i.cr, align 8, !tbaa !13
  %.sroa.4.0..sroa_idx.i.i.i.i.i68.3 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 56
  store ptr %i.cs, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i68.3, align 8, !tbaa !40
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 64
  %i.cw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 64
  %i.cx = add nsw i64 %.0910.i.i.i.i.i67, -4
  %i.cy = icmp sgt i64 %.0910.i.i.i.i.i67, 4
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i64, label %_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit, !llvm.loop !104

bb.h:                                             ; preds = %bb.b
  %i.cz = load ptr, ptr %0, align 8, !tbaa !61    ; 5 uses
  %i.da = ptrtoint ptr %i.cz to i64               ; 2 uses
  %i.db = sub i64 %i.j, %i.da
  %i.dc = ashr exact i64 %i.db, 4                 ; 4 uses
  %i.dd = sub nsw i64 576460752303423487, %i.dc
  %i.de = icmp ult i64 %i.dd, %i.d
  br i1 %i.de, label %bb.i, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #15
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.h
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.dc, i64 %i.d)
  %i.df = add nsw i64 %.sroa.speculated.i, %i.dc  ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.dc
  %i.dh = tail call i64 @llvm.umin.i64(i64 %i.df, i64 576460752303423487)
  %i.di = select i1 %i.dg, i64 576460752303423487, i64 %i.dh ; 3 uses
  %.not.i = icmp eq i64 %i.di, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit, label %bb.j

bb.j:                                             ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.dj = shl nuw nsw i64 %i.di, 4
  %i.dk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #16
  br label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit, %bb.j
  %i.dl = phi ptr [ %i.dk, %bb.j ], [ null, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  %.not11.i.i.i.i.i70 = icmp eq ptr %i.cz, %1
  br i1 %.not11.i.i.i.i.i70, label %.lr.ph.i.i.i.i77.preheader, label %.lr.ph.i.i.i.i.i71

.lr.ph.i.i.i.i.i71:                               ; preds = %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit, %.lr.ph.i.i.i.i.i71
  %.013.i.i.i.i.i72 = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i71 ], [ %i.dl, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i73 = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i71 ], [ %i.cz, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.012.i.i.i.i.i73) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i72, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.012.i.i.i.i.i73, i64 16, i1 false), !tbaa.struct !99
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i73, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i72, i64 16 ; 2 uses
  %.not.i.i.i.i.i74 = icmp eq ptr %i.dm, %1
  br i1 %.not.i.i.i.i.i74, label %.lr.ph.i.i.i.i77.preheader, label %.lr.ph.i.i.i.i.i71, !llvm.loop !100

.lr.ph.i.i.i.i77.preheader:                       ; preds = %.lr.ph.i.i.i.i.i71, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit
  %.011.i.i.i.i78.ph = phi ptr [ %i.dl, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE11_M_allocateEm.exit ], [ %i.dn, %.lr.ph.i.i.i.i.i71 ]
  br label %.lr.ph.i.i.i.i77

.lr.ph.i.i.i.i77:                                 ; preds = %.lr.ph.i.i.i.i77.preheader, %.lr.ph.i.i.i.i77
  %.011.i.i.i.i78 = phi ptr [ %i.dt, %.lr.ph.i.i.i.i77 ], [ %.011.i.i.i.i78.ph, %.lr.ph.i.i.i.i77.preheader ] ; 3 uses
  %.0810.i.i.i.i79 = phi ptr [ %i.ds, %.lr.ph.i.i.i.i77 ], [ %2, %.lr.ph.i.i.i.i77.preheader ] ; 3 uses
  %i.do = load ptr, ptr %.0810.i.i.i.i79, align 8, !tbaa !93
  %i.dp = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i79, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !95
  store i64 %i.dq, ptr %.011.i.i.i.i78, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i78, i64 8
  store ptr %i.do, ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i79, i64 16 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i78, i64 16 ; 3 uses
  %.not.i.i.i.i80 = icmp eq ptr %i.ds, %3
  br i1 %.not.i.i.i.i80, label %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82, label %.lr.ph.i.i.i.i77, !llvm.loop !105

_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82: ; preds = %.lr.ph.i.i.i.i77
  %.not11.i.i.i.i.i83 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i83, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit89, label %.lr.ph.i.i.i.i.i84

.lr.ph.i.i.i.i.i84:                               ; preds = %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82, %.lr.ph.i.i.i.i.i84
  %.013.i.i.i.i.i85 = phi ptr [ %i.dv, %.lr.ph.i.i.i.i.i84 ], [ %i.dt, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i86 = phi ptr [ %i.du, %.lr.ph.i.i.i.i.i84 ], [ %1, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82 ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.08.012.i.i.i.i.i86) ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i85, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.012.i.i.i.i.i86, i64 16, i1 false), !tbaa.struct !99
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i86, i64 16 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i85, i64 16 ; 2 uses
  %.not.i.i.i.i.i87 = icmp eq ptr %i.du, %i.h
  br i1 %.not.i.i.i.i.i87, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit89, label %.lr.ph.i.i.i.i.i84, !llvm.loop !100

_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit89: ; preds = %.lr.ph.i.i.i.i.i84, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82
  %.0.lcssa.i.i.i.i.i88 = phi ptr [ %i.dt, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82 ], [ %i.dv, %.lr.ph.i.i.i.i.i84 ]
  %.not.i90 = icmp eq ptr %i.cz, null
  br i1 %.not.i90, label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit89
  %i.dw = load ptr, ptr %i.e, align 8, !tbaa !64
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = sub i64 %i.dx, %i.da
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dy) #14
  br label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit89, %bb.k
  store ptr %i.dl, ptr %0, align 8, !tbaa !61
  store ptr %.0.lcssa.i.i.i.i.i88, ptr %i.g, align 8, !tbaa !58
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.dl, i64 %i.di
  store ptr %i.dz, ptr %i.e, align 8, !tbaa !64
  br label %_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit

_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit: ; preds = %.lr.ph.i.i.i.i.i64.prol.loopexit, %.lr.ph.i.i.i.i.i64, %.lr.ph.i.i.i.i.i55.prol.loopexit, %.lr.ph.i.i.i.i.i55, %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62, %_ZSt13move_backwardIPSt17basic_string_viewIcSt11char_traitsIcEES4_ET0_T_S6_S5_.exit, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt9__find_ifIPKPKcN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEEET_SD_SD_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr i64 %i.c, 5                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !13 ; 12 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !40 ; 4 uses
  %i.f = and i64 %i.c, -32
  %scevgep = getelementptr i8, ptr %0, i64 %i.f   ; 2 uses
  %i.g = icmp eq i64 %.sroa.0.0.copyload.i, 0
  %i.h = icmp eq i64 %.sroa.0.0.copyload.i, 0
  %i.i = icmp eq i64 %.sroa.0.0.copyload.i, 0
  %i.j = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.0100 = phi i64 [ %i.d, %.lr.ph ], [ %i.ae, %bb.j ] ; 2 uses
  %.02999 = phi ptr [ %0, %.lr.ph ], [ %i.ad, %bb.j ] ; 13 uses
  %i.k = load ptr, ptr %.02999, align 8, !tbaa !40 ; 2 uses
  %i.l = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #13
  %i.m = icmp eq i64 %i.l, %.sroa.0.0.copyload.i
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.k, ptr %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i)
  %i.n = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.n, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.b, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.02999, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !40   ; 2 uses
  %i.q = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #13
  %i.r = icmp eq i64 %i.q, %.sroa.0.0.copyload.i
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %i.h, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit.loopexit.split.loop.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i33

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i33: ; preds = %bb.e
  %bcmp.i.i34 = tail call i32 @bcmp(ptr nonnull %i.p, ptr %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i)
  %i.s = icmp eq i32 %bcmp.i.i34, 0
  br i1 %i.s, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit.loopexit.split.loop.exit116, label %bb.f

bb.f:                                             ; preds = %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i33
  %i.t = getelementptr inbounds nuw i8, ptr %.02999, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !40   ; 2 uses
  %i.v = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #13
  %i.w = icmp eq i64 %i.v, %.sroa.0.0.copyload.i
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %i.i, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit.loopexit.split.loop.exit118, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i40

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i40: ; preds = %bb.g
  %bcmp.i.i41 = tail call i32 @bcmp(ptr nonnull %i.u, ptr %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i)
  %i.x = icmp eq i32 %bcmp.i.i41, 0
  br i1 %i.x, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit.loopexit.split.loop.exit120, label %bb.h

bb.h:                                             ; preds = %bb.f, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i40
  %i.y = getelementptr inbounds nuw i8, ptr %.02999, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !40   ; 2 uses
  %i.aa = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #13
  %i.ab = icmp eq i64 %i.aa, %.sroa.0.0.copyload.i
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %i.j, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit.loopexit.split.loop.exit122, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i47

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i47: ; preds = %bb.i
  %bcmp.i.i48 = tail call i32 @bcmp(ptr nonnull %i.z, ptr %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i)
  %i.ac = icmp eq i32 %bcmp.i.i48, 0
  br i1 %i.ac, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit.loopexit.split.loop.exit124, label %bb.j

bb.j:                                             ; preds = %bb.h, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i47
  %i.ad = getelementptr inbounds nuw i8, ptr %.02999, i64 32
  %i.ae = add nsw i64 %.0100, -1
  %i.af = icmp sgt i64 %.0100, 1
  br i1 %i.af, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !107

._crit_edge.loopexit:                             ; preds = %bb.j
  %.pre = ptrtoint ptr %scevgep to i64
  %.pre113 = sub i64 %i.a, %.pre
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi114 = phi i64 [ %.pre113, %._crit_edge.loopexit ], [ %i.c, %bb.a ]
  %.029.lcssa = phi ptr [ %scevgep, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 6 uses
  %i.ag = ashr exact i64 %.pre-phi114, 3
  switch i64 %i.ag, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit [
    i64 3, label %bb.k
    i64 2, label %._crit_edge._crit_edge
    i64 1, label %._crit_edge._crit_edge110
  ]

._crit_edge._crit_edge110:                        ; preds = %._crit_edge
  %.sroa.0.0.copyload.i65.pre = load i64, ptr %2, align 8, !tbaa !13
  %.sroa.2.0..sroa_idx.i66.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i67.pre = load ptr, ptr %.sroa.2.0..sroa_idx.i66.phi.trans.insert, align 8, !tbaa !40
  br label %bb.q

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.sroa.0.0.copyload.i58.pre = load i64, ptr %2, align 8, !tbaa !13
  %.sroa.2.0..sroa_idx.i59.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i60.pre = load ptr, ptr %.sroa.2.0..sroa_idx.i59.phi.trans.insert, align 8, !tbaa !40
  br label %bb.n

bb.k:                                             ; preds = %._crit_edge
  %i.ah = load ptr, ptr %.029.lcssa, align 8, !tbaa !40 ; 2 uses
  %i.ai = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ah) #13 ; 3 uses
  %.sroa.0.0.copyload.i51 = load i64, ptr %2, align 8, !tbaa !13 ; 2 uses
  %.sroa.2.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i53 = load ptr, ptr %.sroa.2.0..sroa_idx.i52, align 8, !tbaa !40 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, %.sroa.0.0.copyload.i51
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ak = icmp eq i64 %i.ai, 0
  br i1 %i.ak, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i54

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i54: ; preds = %bb.l
  %bcmp.i.i55 = tail call i32 @bcmp(ptr nonnull %i.ah, ptr %.sroa.2.0.copyload.i53, i64 %i.ai)
  %i.al = icmp eq i32 %bcmp.i.i55, 0
  br i1 %i.al, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit, label %bb.m

bb.m:                                             ; preds = %bb.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i54
  %i.am = getelementptr inbounds nuw i8, ptr %.029.lcssa, i64 8
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge._crit_edge, %bb.m
  %.sroa.2.0.copyload.i60 = phi ptr [ %.sroa.2.0.copyload.i53, %bb.m ], [ %.sroa.2.0.copyload.i60.pre, %._crit_edge._crit_edge ] ; 2 uses
  %.sroa.0.0.copyload.i58 = phi i64 [ %.sroa.0.0.copyload.i51, %bb.m ], [ %.sroa.0.0.copyload.i58.pre, %._crit_edge._crit_edge ] ; 4 uses
  %.1 = phi ptr [ %i.am, %bb.m ], [ %.029.lcssa, %._crit_edge._crit_edge ] ; 4 uses
  %i.an = load ptr, ptr %.1, align 8, !tbaa !40   ; 2 uses
  %i.ao = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.an) #13
  %i.ap = icmp eq i64 %i.ao, %.sroa.0.0.copyload.i58
  br i1 %i.ap, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aq = icmp eq i64 %.sroa.0.0.copyload.i58, 0
  br i1 %i.aq, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i61

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i61: ; preds = %bb.o
  %bcmp.i.i62 = tail call i32 @bcmp(ptr nonnull %i.an, ptr %.sroa.2.0.copyload.i60, i64 %.sroa.0.0.copyload.i58)
  %i.ar = icmp eq i32 %bcmp.i.i62, 0
  br i1 %i.ar, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit, label %bb.p

bb.p:                                             ; preds = %bb.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i61
  %i.as = getelementptr inbounds nuw i8, ptr %.1, i64 8
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge._crit_edge110, %bb.p
  %.sroa.2.0.copyload.i67 = phi ptr [ %.sroa.2.0.copyload.i60, %bb.p ], [ %.sroa.2.0.copyload.i67.pre, %._crit_edge._crit_edge110 ]
  %.sroa.0.0.copyload.i65 = phi i64 [ %.sroa.0.0.copyload.i58, %bb.p ], [ %.sroa.0.0.copyload.i65.pre, %._crit_edge._crit_edge110 ] ; 3 uses
  %.2 = phi ptr [ %i.as, %bb.p ], [ %.029.lcssa, %._crit_edge._crit_edge110 ] ; 3 uses
  %i.at = load ptr, ptr %.2, align 8, !tbaa !40   ; 2 uses
  %i.au = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.at) #13
  %i.av = icmp eq i64 %i.au, %.sroa.0.0.copyload.i65
  br i1 %i.av, label %bb.r, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit71.thread

bb.r:                                             ; preds = %bb.q
  %i.aw = icmp eq i64 %.sroa.0.0.copyload.i65, 0
  br i1 %i.aw, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i68

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i68: ; preds = %bb.r
  %bcmp.i.i69 = tail call i32 @bcmp(ptr nonnull %i.at, ptr %.sroa.2.0.copyload.i67, i64 %.sroa.0.0.copyload.i65)
  %i.ax = icmp eq i32 %bcmp.i.i69, 0
  br i1 %i.ax, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit, label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit71.thread

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit71.thread: ; preds = %bb.q, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i68
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit.loopexit.split.loop.exit: ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %.02999, i64 8
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit.loopexit.split.loop.exit116: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i33
  %i.az = getelementptr inbounds nuw i8, ptr %.02999, i64 8
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit.loopexit.split.loop.exit118: ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %.02999, i64 16
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit.loopexit.split.loop.exit120: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i40
  %i.bb = getelementptr inbounds nuw i8, ptr %.02999, i64 16
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit.loopexit.split.loop.exit122: ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.02999, i64 24
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit.loopexit.split.loop.exit124: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i47
  %i.bd = getelementptr inbounds nuw i8, ptr %.02999, i64 24
  br label %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit

_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit.loopexit.split.loop.exit, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit.loopexit.split.loop.exit116, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit.loopexit.split.loop.exit118, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit.loopexit.split.loop.exit120, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit.loopexit.split.loop.exit122, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit.loopexit.split.loop.exit124, %._crit_edge, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit71.thread, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i68, %bb.r, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i61, %bb.o, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i54, %bb.l
  %.028 = phi ptr [ %.029.lcssa, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i54 ], [ %.1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i61 ], [ %.2, %bb.r ], [ %1, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit71.thread ], [ %.2, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i68 ], [ %1, %._crit_edge ], [ %.029.lcssa, %bb.l ], [ %.1, %bb.o ], [ %i.az, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit.loopexit.split.loop.exit116 ], [ %i.bd, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit.loopexit.split.loop.exit124 ], [ %i.ay, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit.loopexit.split.loop.exit ], [ %i.ba, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit.loopexit.split.loop.exit118 ], [ %i.bb, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit.loopexit.split.loop.exit120 ], [ %i.bc, %_ZN9__gnu_cxx5__ops16_Iter_equals_valIKSt17basic_string_viewIcSt11char_traitsIcEEEclIPKPKcEEbT_.exit.loopexit.split.loop.exit122 ], [ %.02999, %bb.c ], [ %.02999, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ]
  ret ptr %.028
}

declare void @_ZN4absl12lts_2025051216strings_internal9CatPiecesB5cxx11ESt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn }
attributes #16 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN6google8protobuf8internal15DescriptorNamesE", !9, i64 0}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !9, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!16, !9, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0, !14, i64 8, !5, i64 16}
!17 = !{!5, !5, i64 0}
!18 = !{!16, !14, i64 8}
!19 = !{!20, !25, i64 32}
!20 = !{!"_ZTSN6google8protobuf10DescriptorE", !21, i64 0, !22, i64 1, !22, i64 1, !5, i64 1, !5, i64 2, !23, i64 4, !4, i64 8, !8, i64 16, !24, i64 24, !25, i64 32, !26, i64 40, !27, i64 48, !27, i64 56, !28, i64 64, !29, i64 72, !25, i64 80, !30, i64 88, !31, i64 96, !28, i64 104, !32, i64 112, !33, i64 120, !4, i64 128, !4, i64 132, !4, i64 136, !4, i64 140, !4, i64 144, !4, i64 148, !4, i64 152, !4, i64 156}
!21 = !{!"_ZTSN6google8protobuf8internal10SymbolBaseE", !5, i64 0}
!22 = !{!"bool", !5, i64 0}
!23 = !{!"short", !5, i64 0}
!24 = !{!"p1 _ZTSN6google8protobuf14FileDescriptorE", !10, i64 0}
!25 = !{!"p1 _ZTSN6google8protobuf10DescriptorE", !10, i64 0}
!26 = !{!"p1 _ZTSN6google8protobuf14MessageOptionsE", !10, i64 0}
!27 = !{!"p1 _ZTSN6google8protobuf10FeatureSetE", !10, i64 0}
!28 = !{!"p1 _ZTSN6google8protobuf15FieldDescriptorE", !10, i64 0}
!29 = !{!"p1 _ZTSN6google8protobuf15OneofDescriptorE", !10, i64 0}
!30 = !{!"p1 _ZTSN6google8protobuf14EnumDescriptorE", !10, i64 0}
!31 = !{!"p1 _ZTSN6google8protobuf10Descriptor14ExtensionRangeE", !10, i64 0}
!32 = !{!"p1 _ZTSN6google8protobuf10Descriptor13ReservedRangeE", !10, i64 0}
!33 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !34, i64 0}
!34 = !{!"any p2 pointer", !10, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"p2 omnipotent char", !34, i64 0}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZN4absl12lts_202505126StrCatIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_SA_SA_DpRKT_: argument 0"}
!39 = distinct !{!39, !"_ZN4absl12lts_202505126StrCatIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_SA_SA_DpRKT_"}
!40 = !{!9, !9, i64 0}
!41 = !{!42, !25, i64 24}
!42 = !{!"_ZTSN6google8protobuf14EnumDescriptorE", !21, i64 0, !22, i64 1, !22, i64 1, !5, i64 1, !23, i64 2, !4, i64 4, !8, i64 8, !24, i64 16, !25, i64 24, !43, i64 32, !27, i64 40, !27, i64 48, !44, i64 56, !4, i64 64, !4, i64 68, !45, i64 72, !33, i64 80}
!43 = !{!"p1 _ZTSN6google8protobuf11EnumOptionsE", !10, i64 0}
!44 = !{!"p1 _ZTSN6google8protobuf19EnumValueDescriptorE", !10, i64 0}
!45 = !{!"p1 _ZTSN6google8protobuf14EnumDescriptor13ReservedRangeE", !10, i64 0}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZN4absl12lts_202505126StrCatIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_SA_SA_DpRKT_: argument 0"}
!48 = distinct !{!48, !"_ZN4absl12lts_202505126StrCatIJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumESA_SA_SA_SA_DpRKT_"}
!49 = !{!50, !14, i64 0}
!50 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !14, i64 0, !9, i64 8}
!51 = !{!50, !9, i64 8}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZN4absl12lts_202505128StrSplitIcEENS0_16strings_internal8SplitterINS2_15SelectDelimiterIT_E4typeENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEENS2_23ConvertibleToStringViewES5_: argument 0"}
!54 = distinct !{!54, !"_ZN4absl12lts_202505128StrSplitIcEENS0_16strings_internal8SplitterINS2_15SelectDelimiterIT_E4typeENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEENS2_23ConvertibleToStringViewES5_"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEcvT_ISt6vectorIS8_SaIS8_EETnNSt9enable_ifIXaantsr22ShouldUseLifetimeBoundIS8_SA_EE5valuesr23SplitterIsConvertibleToISA_EE5valueEDnE4typeELDn0EEEv: argument 0"}
!57 = distinct !{!57, !"_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEcvT_ISt6vectorIS8_SaIS8_EETnNSt9enable_ifIXaantsr22ShouldUseLifetimeBoundIS8_SA_EE5valuesr23SplitterIsConvertibleToISA_EE5valueEDnE4typeELDn0EEEv"}
!58 = !{!59, !60, i64 8}
!59 = !{!"_ZTSNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!60 = !{!"p1 _ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !10, i64 0}
!61 = !{!59, !60, i64 0}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!59, !60, i64 16}
!65 = !{!66, !67, i64 8}
!66 = !{!"_ZTSN6google8protobuf14FileDescriptorE", !21, i64 0, !22, i64 1, !22, i64 2, !4, i64 4, !67, i64 8, !67, i64 16, !68, i64 24, !69, i64 32, !70, i64 40, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !71, i64 80, !72, i64 88, !72, i64 96, !60, i64 104, !25, i64 112, !30, i64 120, !73, i64 128, !28, i64 136, !74, i64 144, !27, i64 152, !27, i64 160, !75, i64 168, !76, i64 176}
!67 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!68 = !{!"p1 _ZTSN6google8protobuf14DescriptorPoolE", !10, i64 0}
!69 = !{!"_ZTSN6google8protobuf7EditionE", !5, i64 0}
!70 = !{!"p1 _ZTSN4absl12lts_202505129once_flagE", !10, i64 0}
!71 = !{!"p2 _ZTSN6google8protobuf14FileDescriptorE", !34, i64 0}
!72 = !{!"p1 int", !10, i64 0}
!73 = !{!"p1 _ZTSN6google8protobuf17ServiceDescriptorE", !10, i64 0}
!74 = !{!"p1 _ZTSN6google8protobuf11FileOptionsE", !10, i64 0}
!75 = !{!"p1 _ZTSN6google8protobuf20FileDescriptorTablesE", !10, i64 0}
!76 = !{!"p1 _ZTSN6google8protobuf14SourceCodeInfoE", !10, i64 0}
!77 = !{!66, !4, i64 72}
!78 = !{!66, !74, i64 144}
!79 = !{}
!80 = !{i8 0, i8 2}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv: argument 0"}
!83 = distinct !{!83, !"_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv"}
!84 = !{!85, !14, i64 0}
!85 = !{!"_ZTSN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEE", !14, i64 0, !86, i64 8, !50, i64 16, !87, i64 32, !88, i64 40, !89, i64 41}
!86 = !{!"_ZTSN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEE5StateE", !5, i64 0}
!87 = !{!"p1 _ZTSN4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEE", !10, i64 0}
!88 = !{!"_ZTSN4absl12lts_202505126ByCharE", !5, i64 0}
!89 = !{!"_ZTSN4absl12lts_2025051210AllowEmptyE"}
!90 = !{!85, !86, i64 8}
!91 = !{!85, !87, i64 32}
!92 = distinct !{!92, !63}
!93 = !{!94, !9, i64 0}
!94 = !{!"_ZTSZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS8_SaIS8_EES8_Lb0EEclERKS9_E8raw_view", !9, i64 0, !14, i64 8}
!95 = !{!94, !14, i64 8}
!96 = distinct !{!96, !63}
!97 = !{!60, !60, i64 0}
!98 = distinct !{!98, !63}
!99 = !{i64 0, i64 8, !13, i64 8, i64 8, !40}
!100 = distinct !{!100, !63}
!101 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!102 = distinct !{!102, !103}
!103 = !{!"llvm.loop.unroll.disable"}
!104 = distinct !{!104, !63}
!105 = distinct !{!105, !63}
!106 = distinct !{!106, !103}
!107 = distinct !{!107, !63}
end_hunk_0
