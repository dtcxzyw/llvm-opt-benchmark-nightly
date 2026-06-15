inline.NumInlined: 6120
inline.NumDeleted: 2467
begin_hunk_0_@_ZNK6duckdb9CSVSchema8GetTypesEv:bb.a

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit
  %.sroa.07.011 = phi ptr [ %i.a, %.lr.ph ], [ %i.k, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !291  ; 3 uses
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !290
  %.not.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !291
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.j, ptr %i.d, align 8, !tbaa !291
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit

bb.d:                                             ; preds = %bb.b
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.07.011, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.k, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #33
  resume { ptr, i32 } %i.l
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb9CSVSchema22ReplaceNullWithVarcharEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(121) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !330    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !330  ; 2 uses
  %.not8 = icmp eq ptr %i.a, %i.c
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.05.09 = phi ptr [ %i.a, %.lr.ph ], [ %i.o, %bb.c ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 32 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !298
  %i.h = icmp eq i8 %i.g, 1
  br i1 %i.h, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i, label %bb.c

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 noundef zeroext 25)
  %i.i = load i8, ptr %1, align 8, !tbaa !298
  store i8 %i.i, ptr %i.f, align 8, !tbaa !298
  %i.j = load i8, ptr %i.d, align 1, !tbaa !306
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 33
  store i8 %i.j, ptr %i.k, align 1, !tbaa !306
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 40 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.e, align 8, !tbaa !23
  %i.n = load <2 x ptr>, ptr %i.l, align 8, !tbaa !23
  store <2 x ptr> %i.m, ptr %i.l, align 8, !tbaa !23
  store <2 x ptr> %i.n, ptr %i.e, align 8, !tbaa !23
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.05.09, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.o, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6duckdb9CSVSchema5EmptyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(121) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !330
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !330
  %i.d = icmp eq ptr %i.a, %i.c
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK6duckdb9CSVSchema12MatchColumnsERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(121) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(121) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !292
  %i.c = load ptr, ptr %1, align 8, !tbaa !295
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !292
  %i.i = load ptr, ptr %0, align 8, !tbaa !295
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp eq i64 %i.f, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.o = load i8, ptr %i.n, align 8, !range !145
  %i.p = trunc nuw i8 %i.o to i1
  %or.cond = select i1 %i.m, i1 true, i1 %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.r = load i8, ptr %i.q, align 8, !range !145
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = select i1 %or.cond, i1 true, i1 %i.s
  ret i1 %i.t
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb9CSVSchema7GetPathB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(121) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !82
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !74   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.f = load i64, ptr %i.e, align 8, !tbaa !83   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 %i.f, ptr %i.a, align 8, !tbaa !55
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !74
  %i.i = load i64, ptr %i.a, align 8, !tbaa !55
  store i64 %i.i, ptr %i.c, align 8, !tbaa !62
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !62
  store i8 %i.k, ptr %i.j, align 1, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !83
  %i.n = load ptr, ptr %0, align 8, !tbaa !74
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i64 -164703072086692425, 164703072086692426) i64 @_ZNK6duckdb9CSVSchema14GetColumnCountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(121) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !292
  %i.c = load ptr, ptr %0, align 8, !tbaa !295
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 56
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK6duckdb9CSVSchema11GetRowsReadEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(121) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !322
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6duckdb9CSVSchema12SchemasMatchERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_13SnifferResultERKS6_b(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(121) %0, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, i1 noundef zeroext %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::unordered_map.182", align 8 ; 17 uses
  %6 = alloca %"struct.duckdb::TypeIdxPair", align 8 ; 11 uses
  %7 = alloca %"struct.duckdb::LogicalType", align 8 ; 4 uses
  %8 = alloca %"struct.duckdb::AdaptiveSnifferResult", align 8 ; 17 uses
  %9 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 34 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !342
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 1, ptr %i.b, align 8, !tbaa !344
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 8, !tbaa !321
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !331
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !334
  %.not255 = icmp eq ptr %i.h, %i.i
  br i1 %.not255, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6duckdb11LogicalTypeaSEOS0_.exit, %bb.a
  br i1 %4, label %bb.u, label %bb.aq

bb.b:                                             ; preds = %.lr.ph, %_ZN6duckdb11LogicalTypeaSEOS0_.exit
  %.051234 = phi i64 [ 0, %.lr.ph ], [ %i.bf, %_ZN6duckdb11LogicalTypeaSEOS0_.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.n = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.051234)
          to label %bb.c unwind label %bb.r

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.d unwind label %bb.r

bb.d:                                             ; preds = %bb.c
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(24) %7) #33
  store i64 %.051234, ptr %i.j, align 8, !tbaa !345
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %.051234)
          to label %bb.e unwind label %bb.s

bb.e:                                             ; preds = %bb.d
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11TypeIdxPairEESaISB_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11TypeIdxPairESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEEixERSD_.exit unwind label %bb.s ; 5 uses

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11TypeIdxPairESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEEixERSD_.exit: ; preds = %bb.e
  %i.q = load i8, ptr %6, align 8, !tbaa !298
  store i8 %i.q, ptr %i.p, align 8, !tbaa !298
  %i.r = load i8, ptr %i.k, align 1, !tbaa !306
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 %i.r, ptr %i.s, align 1, !tbaa !306
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.v = load <2 x ptr>, ptr %i.t, align 8, !tbaa !23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.w = load <2 x ptr>, ptr %i.l, align 8, !tbaa !23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !20   ; 8 uses
  store <2 x ptr> %i.w, ptr %i.t, align 8, !tbaa !23
  %.not.i.i.i.i.i.i187 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i187, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11TypeIdxPairESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEEixERSD_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.y, align 8, !tbaa !58
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !60
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #33, !inline_history !347
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !18
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #33, !inline_history !347
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i.i.i.i188 = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i.i188, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ab, %bb.i ], [ %i.al, %bb.j ]
  %i.am = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.am, label %bb.k, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i, !prof !63

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #33
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.g, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11TypeIdxPairESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEEixERSD_.exit
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !20  ; 8 uses
  store <2 x ptr> %i.v, ptr %i.l, align 8, !tbaa !23
  %.not.i.i.i.i4.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i4.i.i, label %_ZN6duckdb11LogicalTypeaSEOS0_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 4294967297
  %i.ar = trunc i64 %i.ap to i32                  ; 2 uses
  br i1 %i.aq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ao, align 8, !tbaa !58
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 0, ptr %i.as, align 4, !tbaa !60
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #33, !inline_history !347
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #33, !inline_history !347
  br label %_ZN6duckdb11LogicalTypeaSEOS0_.exit

bb.n:                                             ; preds = %bb.l
  %i.az = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i.i5.i.i = icmp eq i8 %i.az, 0
  br i1 %.not.i.i.i.i.i5.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = add nsw i32 %i.ar, -1
  store i32 %i.ba, ptr %i.ao, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i.i

bb.p:                                             ; preds = %bb.n
  %i.bb = atomicrmw volatile add ptr %i.ao, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i7.i.i = phi i32 [ %i.ar, %bb.o ], [ %i.bb, %bb.p ]
  %i.bc = icmp eq i32 %.0.i.i.i.i.i.i7.i.i, 1
  br i1 %i.bc, label %bb.q, label %_ZN6duckdb11LogicalTypeaSEOS0_.exit, !prof !63

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #33
  br label %_ZN6duckdb11LogicalTypeaSEOS0_.exit

_ZN6duckdb11LogicalTypeaSEOS0_.exit:              ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i6.i.i, %bb.q
  %i.bd = load i64, ptr %i.j, align 8, !tbaa !345
  %i.be = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !345
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(32) %6) #33
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.bf = add nuw i64 %.051234, 1                 ; 2 uses
  %i.bg = load ptr, ptr %i.g, align 8, !tbaa !331
  %i.bh = load ptr, ptr %i.f, align 8, !tbaa !334
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = ashr exact i64 %i.bk, 5
  %i.bm = icmp ult i64 %i.bf, %i.bl
  br i1 %i.bm, label %bb.b, label %._crit_edge, !llvm.loop !348

bb.r:                                             ; preds = %bb.c, %bb.b
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.e, %bb.d
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(32) %6) #33
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #33
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn88 = phi { ptr, i32 } [ %i.bo, %bb.s ], [ %i.bn, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.by

bb.u:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(49) %8, ptr noundef nonnull align 8 dereferenceable(49) %2)
          to label %.noexc unwind label %bb.ac

.noexc:                                           ; preds = %bb.u
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 7 uses
end_hunk_0
begin_hunk_1_@_ZNK6duckdb9CSVSchema12SchemasMatchERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_13SnifferResultERKS6_b:bb.a
  %i.gf = icmp eq i8 %i.gc, 23
  br i1 %i.gf, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142, label %_ZN6duckdb9CSVSchema11CanWeCastItENS_13LogicalTypeIdES1_.exit.thread209

_ZN6duckdb9CSVSchema11CanWeCastItENS_13LogicalTypeIdES1_.exit: ; preds = %bb.az
  %i.gg = add i8 %i.gc, -21
  %spec.select.i = icmp ult i8 %i.gg, 3
  br i1 %spec.select.i, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142, label %_ZN6duckdb9CSVSchema11CanWeCastItENS_13LogicalTypeIdES1_.exit.thread209

_ZN6duckdb9CSVSchema11CanWeCastItENS_13LogicalTypeIdES1_.exit.thread209: ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.bd, %_ZN6duckdb9CSVSchema11CanWeCastItENS_13LogicalTypeIdES1_.exit
  %i.gh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.9, i64 noundef 19)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146 unwind label %bb.ax ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146: ; preds = %_ZN6duckdb9CSVSchema11CanWeCastItENS_13LogicalTypeIdES1_.exit.thread209
  %i.gi = load ptr, ptr %.sroa.0191.0250, align 8, !tbaa !74
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0191.0250, i64 8
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !83
  %i.gl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %i.gi, i64 noundef %i.gk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit148 unwind label %bb.ax ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit148: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit146
  %i.gm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gl, ptr noundef nonnull @.str.11, i64 noundef 28)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit150 unwind label %bb.ax ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit150: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit148
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  invoke void @_ZNK6duckdb11LogicalType8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %i.gb)
          to label %bb.be unwind label %bb.bg

bb.be:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit150
  %i.gn = load ptr, ptr %10, align 8, !tbaa !74
  %i.go = load i64, ptr %i.fh, align 8, !tbaa !83
  %i.gp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gl, ptr noundef %i.gn, i64 noundef %i.go)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit152 unwind label %bb.bh ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit152: ; preds = %bb.be
  %i.gq = load ptr, ptr %10, align 8, !tbaa !74   ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.fi
  br i1 %i.gr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit152
  call void @_ZdlPv(ptr noundef %i.gq) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit152, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  %i.gs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.12, i64 noundef 15)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit154 unwind label %bb.ax ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit154: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  %i.gt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_N6duckdb11TypeIdxPairEESaISB_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0191.0250)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11TypeIdxPairESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEEixERSD_.exit156 unwind label %bb.bi

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11TypeIdxPairESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEEixERSD_.exit156: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit154
  invoke void @_ZNK6duckdb11LogicalType8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %i.gt)
          to label %bb.bf unwind label %bb.bi

bb.bf:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11TypeIdxPairESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEEixERSD_.exit156
  %i.gu = load ptr, ptr %11, align 8, !tbaa !74
  %i.gv = load i64, ptr %i.fj, align 8, !tbaa !83
  %i.gw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %i.gu, i64 noundef %i.gv)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit158 unwind label %bb.bj

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit158: ; preds = %bb.bf
  %i.gx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gw, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160 unwind label %bb.bj ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit158
  %i.gy = load ptr, ptr %11, align 8, !tbaa !74   ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.fk
  br i1 %i.gz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160
  call void @_ZdlPv(ptr noundef %i.gy) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142

bb.bg:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit150
  %i.ha = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

bb.bh:                                            ; preds = %bb.be
  %i.hb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hc = load ptr, ptr %10, align 8, !tbaa !74   ; 2 uses
  %i.hd = icmp eq ptr %i.hc, %i.fi
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %bb.bh
  call void @_ZdlPv(ptr noundef %i.hc) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164, %bb.bg
  %.pn80 = phi { ptr, i32 } [ %i.ha, %bb.bg ], [ %i.hb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164 ], [ %i.hb, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.bu

bb.bi:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit154, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11TypeIdxPairESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEEixERSD_.exit156
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

bb.bj:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit158, %bb.bf
  %i.hf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hg = load ptr, ptr %11, align 8, !tbaa !74   ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.fk
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %bb.bj
  call void @_ZdlPv(ptr noundef %i.hg) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167, %bb.bi
  %.pn82 = phi { ptr, i32 } [ %i.he, %bb.bi ], [ %i.hf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167 ], [ %i.hf, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %bb.bu

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit142: ; preds = %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.ba, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.bb, %bb.az, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11TypeIdxPairESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEEixERSD_.exit144, %bb.bc, %bb.bc, %bb.bc, %bb.bc, %bb.bd, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit140, %_ZN6duckdb9CSVSchema11CanWeCastItENS_13LogicalTypeIdES1_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163
  %.150 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163 ], [ %.049251, %_ZN6duckdb9CSVSchema11CanWeCastItENS_13LogicalTypeIdES1_.exit ], [ false, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit140 ], [ %.049251, %bb.bd ], [ %.049251, %bb.bc ], [ %.049251, %bb.bc ], [ %.049251, %bb.bc ], [ %.049251, %bb.bc ], [ %.049251, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11TypeIdxPairESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEEixERSD_.exit144 ], [ %.049251, %bb.az ], [ %.049251, %bb.bb ], [ %.049251, %bb.bb ], [ %.049251, %bb.bb ], [ %.049251, %bb.bb ], [ %.049251, %bb.bb ], [ %.049251, %bb.ba ], [ %.049251, %bb.ba ], [ %.049251, %bb.ba ], [ %.049251, %bb.ba ], [ %.049251, %bb.ba ], [ %.049251, %bb.ba ] ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0191.0250, i64 56 ; 2 uses
  %.not213 = icmp eq ptr %i.hi, %i.fg
  br i1 %.not213, label %._crit_edge253, label %bb.au

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit132: ; preds = %._crit_edge253
  %i.hj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit171 unwind label %bb.at ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit171: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit132
  %i.hk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.14, i64 noundef 38)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit173 unwind label %bb.at ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit173: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit171
  %i.hl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit175 unwind label %bb.at ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit175: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit173
  %i.hm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.15, i64 noundef 79)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit177 unwind label %bb.at ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit177: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit175
  %i.hn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit179 unwind label %bb.at ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit179: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit177
  br i1 %.049.lcssa, label %bb.bt, label %bb.bk

bb.bk:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit179
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #33
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %i.ho = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  store ptr %i.ho, ptr %12, align 8, !tbaa !82, !alias.scope !366
  %i.hp = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 6 uses
  store i64 0, ptr %i.hp, align 8, !tbaa !83, !alias.scope !366
  store i8 0, ptr %i.ho, align 8, !tbaa !62, !alias.scope !366
  %i.hq = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !367, !noalias !366 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.hr, null
  %i.hs = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ht = load ptr, ptr %i.hs, align 8, !noalias !366 ; 2 uses
  %i.hu = icmp ugt ptr %i.hr, %i.ht
  %.08.i.i.i = select i1 %i.hu, ptr %i.hr, ptr %i.ht ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hv = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !371, !noalias !366 ; 2 uses
  %i.hx = ptrtoint ptr %.08.i.i.i to i64
  %i.hy = ptrtoint ptr %i.hw to i64
  %i.hz = sub i64 %i.hx, %i.hy
  %i.ia = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0, i64 noundef 0, ptr noundef %i.hw, i64 noundef %i.hz)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.bm ; 0 uses

bb.bm:                                            ; preds = %bb.bn, %bb.bl
  %i.ib = landingpad { ptr, i32 }
          cleanup
  %i.ic = load ptr, ptr %12, align 8, !tbaa !74, !alias.scope !366 ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.ho
  br i1 %i.id, label %.body180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bm
  call void @_ZdlPv(ptr noundef %i.ic) #35
  br label %.body180

bb.bn:                                            ; preds = %bb.bk
  %i.ie = getelementptr inbounds nuw i8, ptr %9, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.ie)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.bm

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.bn, %bb.bl
  %i.if = load ptr, ptr %1, align 8, !tbaa !74    ; 6 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ih = icmp eq ptr %i.if, %i.ig
  %i.ii = load ptr, ptr %12, align 8, !tbaa !74   ; 5 uses
  %i.ij = icmp eq ptr %i.ii, %i.ho                ; 2 uses
  br i1 %i.ih, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.ij, label %bb.bo, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  br i1 %i.ij, label %bb.bo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ik = load i64, ptr %i.hp, align 8, !tbaa !83 ; 3 uses
  %i.il = icmp ult i64 %i.ik, 16
  call void @llvm.assume(i1 %i.il)
  switch i64 %i.ik, label %bb.bq [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.bp
  ]

bb.bp:                                            ; preds = %bb.bo
  %i.im = load i8, ptr %i.ii, align 1, !tbaa !62
  store i8 %i.im, ptr %i.if, align 1, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.if, ptr align 1 %i.ii, i64 %i.ik, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.bq, %bb.bp, %bb.bo
  %i.in = load i64, ptr %i.hp, align 8, !tbaa !83 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.in, ptr %i.io, align 8, !tbaa !83
  %i.ip = load ptr, ptr %1, align 8, !tbaa !74
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.in
  store i8 0, ptr %i.iq, align 1, !tbaa !62
  %.pre.i = load ptr, ptr %12, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.ii, ptr %1, align 8, !tbaa !74
  %i.is = load <2 x i64>, ptr %i.hp, align 8, !tbaa !62
  store <2 x i64> %i.is, ptr %i.ir, align 8, !tbaa !62
  br label %bb.bs

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.it = load i64, ptr %i.ig, align 8, !tbaa !62
  store ptr %i.ii, ptr %1, align 8, !tbaa !74
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.iv = load <2 x i64>, ptr %i.hp, align 8, !tbaa !62
  store <2 x i64> %i.iv, ptr %i.iu, align 8, !tbaa !62
  %.not.i = icmp eq ptr %i.if, null
  br i1 %.not.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.if, ptr %12, align 8, !tbaa !74
  store i64 %i.it, ptr %i.ho, align 8, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.bs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ho, ptr %12, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.br, %bb.bs
  %13 = phi ptr [ %i.if, %bb.br ], [ %i.ho, %bb.bs ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.hp, align 8, !tbaa !83
  store i8 0, ptr %13, align 1, !tbaa !62
  %i.iw = load ptr, ptr %12, align 8, !tbaa !74   ; 2 uses
  %i.ix = icmp eq ptr %i.iw, %i.ho
  br i1 %i.ix, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.iw) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %bb.bt

.body180:                                         ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %bb.bu

bb.bt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit179
  %i.iy = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.iy, ptr %9, align 8, !tbaa !18
  %i.iz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ja = getelementptr i8, ptr %i.iy, i64 -24
  %i.jb = load i64, ptr %i.ja, align 8
  %i.jc = getelementptr inbounds i8, ptr %9, i64 %i.jb
  store ptr %i.iz, ptr %i.jc, align 8, !tbaa !18
  %i.jd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.jd, align 8, !tbaa !18
  %i.je = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !74 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.jh = icmp eq ptr %i.jf, %i.jg
  br i1 %i.jh, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.bt
  call void @_ZdlPv(ptr noundef %i.jf) #35
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.jd, align 8, !tbaa !18
  %i.ji = getelementptr inbounds nuw i8, ptr %9, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ji) #33
  %i.jj = getelementptr inbounds nuw i8, ptr %9, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.jj) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.bw

bb.bu:                                            ; preds = %bb.aw, %bb.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, %.body180, %bb.at
  %.pn84.pn = phi { ptr, i32 } [ %i.fn, %bb.at ], [ %i.ib, %.body180 ], [ %i.fy, %bb.ax ], [ %.pn82, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169 ], [ %.pn80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166 ], [ %i.fx, %bb.aw ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #33
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.as
  %.pn84.pn.pn = phi { ptr, i32 } [ %.pn84.pn, %bb.bu ], [ %i.fm, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.by

bb.bw:                                            ; preds = %_ZN6duckdb13SnifferResultD2Ev.exit, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %.3 = phi i1 [ %.049.lcssa, %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ true, %_ZN6duckdb13SnifferResultD2Ev.exit ]
  %i.jk = load ptr, ptr %i.c, align 8, !tbaa !372 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.jk, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11TypeIdxPairEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i185

.lr.ph.i.i.i.i185:                                ; preds = %bb.bw, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11TypeIdxPairEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.jl, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11TypeIdxPairEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i ], [ %i.jk, %bb.bw ] ; 5 uses
  %i.jl = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !337 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.jn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 40
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(32) %i.jn) #33
  %i.jo = load ptr, ptr %i.jm, align 8, !tbaa !74 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11TypeIdxPairEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i185
  call void @_ZdlPv(ptr noundef %i.jo) #35
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11TypeIdxPairEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11TypeIdxPairEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i185, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #35
  %.not.i.i.i.i186 = icmp eq ptr %i.jl, null
  br i1 %.not.i.i.i.i186, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11TypeIdxPairEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i185, !llvm.loop !373

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11TypeIdxPairEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11TypeIdxPairEELb1EEEEE18_M_deallocate_nodeEPSD_.exit.i.i.i.i, %bb.bw
  %i.jr = load ptr, ptr %5, align 8, !tbaa !342
  %i.js = load i64, ptr %i.b, align 8, !tbaa !344
  %i.jt = shl i64 %i.js, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.jr, i8 0, i64 %i.jt, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.ju = load ptr, ptr %5, align 8, !tbaa !342   ; 2 uses
  %i.jv = icmp eq ptr %i.ju, %i.a
  br i1 %i.jv, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11TypeIdxPairESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11TypeIdxPairEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.ju) #35
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11TypeIdxPairESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11TypeIdxPairESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb11TypeIdxPairEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret i1 %.3

bb.by:                                            ; preds = %bb.bv, %.body, %bb.t
  %.pn88.pn = phi { ptr, i32 } [ %.pn88, %bb.t ], [ %.pn84.pn.pn, %bb.bv ], [ %.pn.pn, %.body ]
  call void @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11TypeIdxPairESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  resume { ptr, i32 } %.pn88.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !291
  %i.e = load ptr, ptr %0, align 8, !tbaa !287    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !55
  store i64 %i.i, ptr %i.b, align 8, !tbaa !55
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EE3getILb1EEERS1_m.exit, label %bb.b, !prof !311

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.44, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !74     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #33
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EE3getILb1EEERS1_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !331
  %i.e = load ptr, ptr %0, align 8, !tbaa !334    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
end_hunk_1
begin_hunk_2_@_ZN6duckdb17StringValueResult25HandleTooManyColumnsErrorEPKcm:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 273
  %i.r = load i8, ptr %i.q, align 1, !tbaa !658, !range !145, !noundef !146
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.u = load i64, ptr %i.t, align 8, !tbaa !607  ; 3 uses
  %.not17 = icmp eq i64 %i.u, 0
  br i1 %.not17, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = icmp eq i64 %2, 0
  br i1 %i.x, label %.critedge16, label %.lr.ph.split

._crit_edge:                                      ; preds = %_ZN6duckdb11IsValueNullEPKcS1_m.exit
  br i1 %.not.i, label %.critedge16, label %.critedge

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split.backedge
  %.015 = phi i64 [ %.015.be, %.lr.ph.split.backedge ], [ 0, %.lr.ph ] ; 3 uses
  %.0914 = phi i1 [ %.0914.be, %.lr.ph.split.backedge ], [ false, %.lr.ph ]
  br i1 %.0914, label %_ZN6duckdb11IsValueNullEPKcS1_m.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.split
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.015
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !631
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.0810.i = phi i64 [ %i.ae, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.0810.i
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !62
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %.0810.i
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !62
  %.not.i = icmp eq i8 %i.ab, %i.ad               ; 3 uses
  %i.ae = add nuw i64 %.0810.i, 1                 ; 2 uses
  %exitcond.not.i = icmp ne i64 %i.ae, %2
  %or.cond.not = select i1 %.not.i, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZN6duckdb11IsValueNullEPKcS1_m.exit, !llvm.loop !659

_ZN6duckdb11IsValueNullEPKcS1_m.exit:             ; preds = %.lr.ph.i
  %i.af = add nuw i64 %.015, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.af, %i.u
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.backedge

.lr.ph.split.backedge:                            ; preds = %_ZN6duckdb11IsValueNullEPKcS1_m.exit, %_ZN6duckdb11IsValueNullEPKcS1_m.exit.thread
  %.015.be = phi i64 [ %i.ag, %_ZN6duckdb11IsValueNullEPKcS1_m.exit.thread ], [ %i.af, %_ZN6duckdb11IsValueNullEPKcS1_m.exit ]
  %.0914.be = phi i1 [ true, %_ZN6duckdb11IsValueNullEPKcS1_m.exit.thread ], [ %.not.i, %_ZN6duckdb11IsValueNullEPKcS1_m.exit ]
  br label %.lr.ph.split, !llvm.loop !660

_ZN6duckdb11IsValueNullEPKcS1_m.exit.thread:      ; preds = %.lr.ph.split
  %i.ag = add nuw i64 %.015, 1                    ; 2 uses
  %exitcond.not23 = icmp eq i64 %i.ag, %i.u
  br i1 %exitcond.not23, label %.critedge16, label %.lr.ph.split.backedge

.critedge:                                        ; preds = %bb.f, %bb.c, %bb.e, %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 568
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i8 3, ptr %i.a, align 1, !tbaa !661
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZN6duckdb9LineError6InsertERKNS_12CSVErrorTypeERKmS5_RKNS_12LinePositionEm(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !657
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.b, align 8, !tbaa !657
  br label %.critedge16

bb.g:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !663, !nonnull !146
  store i8 1, ptr %i.an, align 1, !tbaa !56
  br label %.critedge16

.critedge16:                                      ; preds = %_ZN6duckdb11IsValueNullEPKcS1_m.exit.thread, %.lr.ph, %bb.a, %bb.g, %._crit_edge, %.critedge
  %.011 = phi i1 [ true, %._crit_edge ], [ true, %.critedge ], [ false, %bb.g ], [ false, %bb.a ], [ true, %.lr.ph ], [ true, %_ZN6duckdb11IsValueNullEPKcS1_m.exit.thread ]
  ret i1 %.011
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9LineError6InsertERKNS_12CSVErrorTypeERKmS5_RKNS_12LinePositionEm(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %5) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.duckdb::CurrentError", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.a, align 8, !tbaa !664
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.c = load i8, ptr %i.b, align 1, !tbaa !529, !range !145, !noundef !146
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.e = load i8, ptr %1, align 1, !tbaa !661
  %i.f = load i64, ptr %2, align 8, !tbaa !55
  %i.g = load i64, ptr %3, align 8, !tbaa !55
  store i8 %i.e, ptr %6, align 8, !tbaa !665
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.f, ptr %i.h, align 8, !tbaa !667
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.g, ptr %i.i, align 8, !tbaa !668
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %5, ptr %i.j, align 8, !tbaa !669
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 9 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !82
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  store i64 0, ptr %i.m, align 8, !tbaa !83
  store i8 0, ptr %i.l, align 8, !tbaa !62
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !232
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !652  ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !670
  %.not.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.p, ptr noundef nonnull align 8 dereferenceable(88) %6, i64 32, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 3 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !82
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !74   ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.l
  br i1 %i.v, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.w = load i64, ptr %i.m, align 8, !tbaa !83   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.l, i64 %i.y, i1 false)
  br label %_ZNSt6vectorIN6duckdb12CurrentErrorESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  store ptr %i.u, ptr %i.s, align 8, !tbaa !74
  %i.z = load i64, ptr %i.l, align 8, !tbaa !62
  store i64 %i.z, ptr %i.t, align 8, !tbaa !62
  %.pre = load i64, ptr %i.m, align 8, !tbaa !83
  br label %_ZNSt6vectorIN6duckdb12CurrentErrorESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb12CurrentErrorESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.aa = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.w, %bb.d ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !83
  store ptr %i.l, ptr %i.k, align 8, !tbaa !74
  store i64 0, ptr %i.m, align 8, !tbaa !83
  store i8 0, ptr %i.l, align 8, !tbaa !62
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !tbaa.struct !232
  %i.ad = load ptr, ptr %i.o, align 8, !tbaa !652
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  store ptr %i.ae, ptr %i.o, align 8, !tbaa !652
  br label %_ZN6duckdb12CurrentErrorD2Ev.exit

bb.e:                                             ; preds = %bb.b
  invoke void @_ZNSt6vectorIN6duckdb12CurrentErrorESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.p, ptr noundef nonnull align 8 dereferenceable(88) %6)
          to label %_ZNSt6vectorIN6duckdb12CurrentErrorESaIS1_EE9push_backEOS1_.exit unwind label %bb.f

_ZNSt6vectorIN6duckdb12CurrentErrorESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.e
  %.pre11 = load ptr, ptr %i.k, align 8, !tbaa !74 ; 2 uses
  %i.af = icmp eq ptr %.pre11, %i.l
  br i1 %i.af, label %_ZN6duckdb12CurrentErrorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb12CurrentErrorESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre11) #35
  br label %_ZN6duckdb12CurrentErrorD2Ev.exit

_ZN6duckdb12CurrentErrorD2Ev.exit:                ; preds = %_ZNSt6vectorIN6duckdb12CurrentErrorESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb12CurrentErrorESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  %i.ag = call noundef nonnull align 8 dereferenceable(88) ptr @_ZN6duckdb6vectorINS_12CurrentErrorELb1ESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i64 %5, ptr %i.ah, align 8, !tbaa !669
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %i.k, align 8, !tbaa !74  ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.l
  br i1 %i.ak, label %_ZN6duckdb12CurrentErrorD2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.aj) #35
  br label %_ZN6duckdb12CurrentErrorD2Ev.exit10

_ZN6duckdb12CurrentErrorD2Ev.exit10:              ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  resume { ptr, i32 } %i.ai

bb.g:                                             ; preds = %_ZN6duckdb12CurrentErrorD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb16FullLinePosition13SanitizeErrorERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(32) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !74     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !83   ; 6 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %.noexc.i, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.46) #34
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp samesign eq i64 %i.d, 0
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEEC2IN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEEvEET_SC_RKS0_.exit, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #36 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d ; 2 uses
  %.not = icmp eq i64 %i.d, 1
  br i1 %.not, label %bb.c, label %bb.b, !prof !671

bb.b:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2IN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEEvEET_SC_RKS0_.exit

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i
  %i.h = load i8, ptr %i.b, align 1, !tbaa !62
  store i8 %i.h, ptr %i.f, align 1, !tbaa !62
  br label %_ZNSt6vectorIcSaIcEEC2IN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEEvEET_SC_RKS0_.exit

_ZNSt6vectorIcSaIcEEC2IN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEEvEET_SC_RKS0_.exit: ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i, %bb.b, %bb.c
  %.sroa.023.1 = phi ptr [ %i.f, %bb.c ], [ %i.f, %bb.b ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 6 uses
  %i.i = phi ptr [ %i.g, %bb.c ], [ %i.g, %bb.b ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %.sroa.023.1 to i64
  %i.l = sub i64 %i.j, %i.k                       ; 19 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775807
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2IN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEEvEET_SC_RKS0_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #34
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %_ZNSt6vectorIcSaIcEEC2IN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcES0_EEEEvEET_SC_RKS0_.exit
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.n = add i64 %.sroa.speculated.i.i.i.i, %i.l  ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.l
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 9223372036854775807)
  %i.q = select i1 %i.o, i64 9223372036854775807, i64 %i.p ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #36
          to label %.noexc11 unwind label %bb.p   ; 12 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.l ; 2 uses
  store i8 0, ptr %i.t, align 1, !tbaa !62
  %i.u = icmp sgt i64 %i.l, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

bb.e:                                             ; preds = %.noexc11
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %.sroa.023.1, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.e, %.noexc11
  %.not.i17.i.i.i = icmp eq ptr %.sroa.023.1, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.023.1) #35
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

_ZNSt6vectorIcSaIcEE9push_backEOc.exit:           ; preds = %bb.f, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  %i.v = add nuw nsw i64 %i.l, 1
  invoke void @_ZN6duckdb8Utf8Proc9MakeValidEPcmc(ptr noundef nonnull %i.r, i64 noundef %i.v, i8 noundef signext 63)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !82
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  store i64 0, ptr %i.x, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 %i.l, ptr %i.a, align 8, !tbaa !55
  %i.y = icmp ugt i64 %i.l, 15
  br i1 %i.y, label %.noexc.i13, label %._crit_edge.i.i

.noexc.i13:                                       ; preds = %bb.g
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %._crit_edge.i.i.thread unwind label %bb.o ; 2 uses

._crit_edge.i.i.thread:                           ; preds = %.noexc.i13
  store ptr %i.z, ptr %1, align 8, !tbaa !74
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !55
  store i64 %i.aa, ptr %i.w, align 8, !tbaa !62
  br label %iter.check

._crit_edge.i.i:                                  ; preds = %bb.g
  %.not5.i.i.i = icmp samesign eq i64 %i.l, 0
  br i1 %.not5.i.i.i, label %bb.h, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i
  %i.ab = phi ptr [ %i.z, %._crit_edge.i.i.thread ], [ %i.w, %._crit_edge.i.i ] ; 6 uses
  %min.iters.check = icmp ult i64 %i.l, 4
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %i.ad = sub i64 %i.ac, %i.s
  %diff.check = icmp ult i64 %i.ad, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check52 = icmp ult i64 %i.l, 32
  br i1 %min.iters.check52, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.l, 28
  %n.vec = and i64 %i.l, -32                      ; 5 uses
  %i.ae = getelementptr i8, ptr %i.ab, i64 %n.vec
  %i.af = getelementptr i8, ptr %i.r, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ab, i64 %index ; 2 uses
  %next.gep53 = getelementptr i8, ptr %i.r, i64 %index ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep53, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep53, align 1, !tbaa !62
  %wide.load54 = load <16 x i8>, ptr %i.ag, align 1, !tbaa !62
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !62
  store <16 x i8> %wide.load54, ptr %i.ah, align 1, !tbaa !62
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !672

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !675

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec57 = and i64 %i.l, -4                     ; 4 uses
  %i.aj = getelementptr i8, ptr %i.ab, i64 %n.vec57
  %i.ak = getelementptr i8, ptr %i.r, i64 %n.vec57
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index58 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next62, %vec.epilog.vector.body ] ; 3 uses
  %next.gep59 = getelementptr i8, ptr %i.ab, i64 %index58
  %next.gep60 = getelementptr i8, ptr %i.r, i64 %index58
  %wide.load61 = load <4 x i8>, ptr %next.gep60, align 1, !tbaa !62
  store <4 x i8> %wide.load61, ptr %next.gep59, align 1, !tbaa !62
  %index.next62 = add nuw i64 %index58, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next62, %n.vec57
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !676

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n63 = icmp eq i64 %i.l, %n.vec57
  br i1 %cmp.n63, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.07.i.i.i.ph = phi ptr [ %i.ab, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  %.sroa.02.06.i.i.i.ph = phi ptr [ %i.r, %iter.check ], [ %i.af, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.02.06.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %.sroa.02.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.am = load i8, ptr %.sroa.02.06.i.i.i, align 1, !tbaa !62
  store i8 %i.am, ptr %.07.i.i.i, align 1, !tbaa !62
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i.i, i64 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 1
  %.not.i.i.i12 = icmp eq ptr %i.an, %i.t
  br i1 %.not.i.i.i12, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !677

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre10.i.i = load i64, ptr %i.a, align 8, !tbaa !55
  %.pre11.i.i = load ptr, ptr %1, align 8, !tbaa !74
  br label %bb.h

bb.h:                                             ; preds = %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i, %._crit_edge.i.i
  %i.ap = phi ptr [ %.pre11.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %i.w, %._crit_edge.i.i ]
  %i.aq = phi i64 [ %.pre10.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcS3_EEEEEvT_SC_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i ], [ %i.l, %._crit_edge.i.i ] ; 2 uses
  store i64 %i.aq, ptr %i.x, align 8, !tbaa !83
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aq
  store i8 0, ptr %i.ar, align 1, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.as = load ptr, ptr %0, align 8, !tbaa !74    ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  %i.av = load ptr, ptr %1, align 8, !tbaa !74    ; 5 uses
  %i.aw = icmp eq ptr %i.av, %i.w                 ; 2 uses
  br i1 %i.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.h
  br i1 %i.aw, label %bb.i, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.h
  br i1 %i.aw, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ax = load i64, ptr %i.x, align 8, !tbaa !83  ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  call void @llvm.assume(i1 %i.ay)
  switch i64 %i.ax, label %bb.k [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.az = load i8, ptr %i.av, align 1, !tbaa !62
  store i8 %i.az, ptr %i.as, align 1, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.av, i64 %i.ax, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.k, %bb.j, %bb.i
  %i.ba = load i64, ptr %i.x, align 8, !tbaa !83  ; 2 uses
  store i64 %i.ba, ptr %i.c, align 8, !tbaa !83
  %i.bb = load ptr, ptr %0, align 8, !tbaa !74
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  store i8 0, ptr %i.bc, align 1, !tbaa !62
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.av, ptr %0, align 8, !tbaa !74
  %i.bd = load <2 x i64>, ptr %i.x, align 8, !tbaa !62
  store <2 x i64> %i.bd, ptr %i.c, align 8, !tbaa !62
  br label %bb.m

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.be = load i64, ptr %i.at, align 8, !tbaa !62
  store ptr %i.av, ptr %0, align 8, !tbaa !74
  %i.bf = load <2 x i64>, ptr %i.x, align 8, !tbaa !62
  store <2 x i64> %i.bf, ptr %i.c, align 8, !tbaa !62
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.as, ptr %1, align 8, !tbaa !74
  store i64 %i.be, ptr %i.w, align 8, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.w, ptr %1, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.l, %bb.m
  %2 = phi ptr [ %i.as, %bb.l ], [ %i.w, %bb.m ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.x, align 8, !tbaa !83
  store i8 0, ptr %2, align 1, !tbaa !62
  %i.bg = load ptr, ptr %1, align 8, !tbaa !74    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.w
  br i1 %i.bh, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.bg) #35
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  call void @_ZdlPv(ptr noundef nonnull %i.r) #35
  ret void

bb.n:                                             ; preds = %_ZNSt6vectorIcSaIcEE9push_backEOc.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.o:                                             ; preds = %.noexc.i13
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %.thread

bb.p:                                             ; preds = %bb.d, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i17 = icmp eq ptr %.sroa.023.1, null
  br i1 %.not.i.i.i17, label %.body, label %.thread

.thread:                                          ; preds = %bb.n, %bb.o, %bb.p
  %.pn37 = phi { ptr, i32 } [ %i.bk, %bb.p ], [ %i.bi, %bb.n ], [ %i.bj, %bb.o ]
  %.sroa.023.036 = phi ptr [ %.sroa.023.1, %bb.p ], [ %i.r, %bb.n ], [ %i.r, %bb.o ]
  call void @_ZdlPv(ptr noundef nonnull %.sroa.023.036) #35
  br label %.body

.body:                                            ; preds = %.thread, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.p ], [ %.pn37, %.thread ]
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN6duckdb8Utf8Proc9MakeValidEPcmc(ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(72) ptr @_ZN6duckdb17StringValueResult7ToChunkEv(ptr nofree noundef nonnull align 8 captures(ret: address, provenance) dereferenceable(930) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load i64, ptr %i.a, align 8, !tbaa !678  ; 2 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !74     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.g) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #33
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 %i.b, ptr %i.k, align 8, !tbaa !679
  ret ptr %i.j

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb17StringValueResult5ResetEv(ptr noundef nonnull align 8 dereferenceable(930) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::_Hashtable<unsigned long, std::pair<const unsigned long, duckdb::shared_ptr<duckdb::CSVBufferHandle>>, std::allocator<std::pair<const unsigned long, duckdb::shared_ptr<duckdb::CSVBufferHandle>>>, std::__detail::_Select1st, std::equal_to<unsigned long>, std::hash<unsigned long>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  %2 = alloca %"class.duckdb::shared_ptr.19", align 16 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !678
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.ba, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i64 0, ptr %i.d, align 8, !tbaa !525
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !680  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !680  ; 2 uses
  %.not50 = icmp eq ptr %i.f, %i.h
  br i1 %.not50, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.j

._crit_edge:                                      ; preds = %_ZN6duckdb21TemplatedValidityMaskImE11SetAllValidEm.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !550, !nonnull !146, !align !214
  %i.m = load i64, ptr %i.l, align 8, !tbaa !57   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.o = load i64, ptr %i.n, align 8, !tbaa !681
  %.not.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.not.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 520
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.06.0.in.i.i = phi ptr [ %i.p, %bb.c ], [ %.sroa.06.0.i.i, %bb.e ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !337 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EEaSERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !55
  %i.s = icmp eq i64 %i.m, %i.r
  br i1 %i.s, label %_ZNSt13unordered_mapImN6duckdb10shared_ptrINS0_15CSVBufferHandleELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS3_EEE4findERS9_.exit, label %bb.d, !llvm.loop !682

bb.f:                                             ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.u = load i64, ptr %i.t, align 8, !tbaa !528  ; 2 uses
  %i.v = urem i64 %i.m, %i.u                      ; 2 uses
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !527
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !536  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EEaSERKS2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !337  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !55
  %i.ac = icmp eq i64 %i.m, %i.ab
  br i1 %i.ac, label %_ZNSt13unordered_mapImN6duckdb10shared_ptrINS0_15CSVBufferHandleELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS3_EEE4findERS9_.exit, label %.lr.ph.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.ad = icmp eq i64 %i.m, %i.ag
  br i1 %i.ad, label %_ZNSt13unordered_mapImN6duckdb10shared_ptrINS0_15CSVBufferHandleELb1EEESt4hashImESt8equal_toImESaISt4pairIKmS3_EEE4findERS9_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !537

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %bb.h
  %.020.i.i.i.i = phi ptr [ %i.ae, %bb.h ], [ %i.z, %bb.g ]
  %i.ae = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !337 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not18.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_15CSVBufferHandleELb1EEaSERKS2_.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !55 ; 2 uses
  %i.ah = urem i64 %i.ag, %i.u
  %.not19.i.i.i.i = icmp eq i64 %i.ah, %i.v
  br i1 %.not19.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !537
end_hunk_2
