Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmExportInstallPackageInfoGenerator?download=true
inline.NumInlined: 1365
inline.NumDeleted: 641
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN28cmExportInstallFileGenerator27PopulateInterfacePropertiesEPK14cmTargetExportRSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EEE
declare noundef zeroext i1 @_ZN28cmExportInstallFileGenerator27PopulateInterfacePropertiesEPK14cmTargetExportRSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EEE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN21cmExportFileGenerator38PopulateInterfaceLinkLibrariesPropertyEPK17cmGeneratorTargetN21cmGeneratorExpression17PreprocessContextERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_St4lessISB_ESaISt4pairIKSB_SB_EEE(ptr noundef nonnull align 8 dereferenceable(320), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6cmListD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !27     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !22
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !27
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !26
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple.579", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.582", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !21   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !86 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11lower_boundERS9_.exit, label %bb.b, !llvm.loop !1

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11lower_boundERS9_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11lower_boundERS9_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !21   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #24 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11lower_boundERS9_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE11lower_boundERS9_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %1, ptr %2, align 8, !tbaa !24, !alias.scope !371
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

declare noundef zeroext i1 @_ZNK28cmExportPackageInfoGenerator27GenerateInterfacePropertiesERN4Json5ValueEPK17cmGeneratorTargetRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_St4lessISC_ESaISt4pairIKSC_SC_EEE(ptr noundef nonnull align 8 dereferenceable(408), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN35cmExportInstallPackageInfoGenerator25GenerateFileSetPropertiesERN4Json5ValueEP17cmGeneratorTargetPK14cmTargetExportRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8optionalISD_E(ptr noundef nonnull align 8 dereferenceable(569) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef align 8 %5) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca [3 x %"struct.std::pair.550"], align 8 ; 12 uses
  %7 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  %8 = alloca [5 x %"struct.std::pair.550"], align 8 ; 18 uses
  %9 = alloca %"class.std::set.62", align 8       ; 11 uses
  %10 = alloca %"class.std::vector", align 8      ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::optional", align 8    ; 12 uses
  %13 = alloca %"class.Json::Value", align 8      ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  store i32 0, ptr %i.a, align 8, !tbaa !82
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.a, ptr %i.c, align 8, !tbaa !83
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !84
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.f = load ptr, ptr %2, align 8, !tbaa !249
  invoke void @_ZNK8cmTarget23GetAllInterfaceFileSetsB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %10, align 8, !tbaa !24    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24   ; 2 uses
  %.not104124 = icmp eq ptr %i.g, %i.i
  br i1 %.not104124, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.d:                                             ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %.037126 = phi i1 [ false, %.lr.ph ], [ %.138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i ] ; 6 uses
  %.sroa.096.0125 = phi ptr [ %i.g, %.lr.ph ], [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i ] ; 4 uses
  %i.o = invoke noundef ptr @_ZNK17cmGeneratorTarget10GetFileSetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(3187) %2, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.096.0125)
          to label %bb.e unwind label %bb.v       ; 4 uses

bb.e:                                             ; preds = %bb.d
  %.not.not = icmp eq ptr %i.o, null
  br i1 %.not.not, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK17cmGeneratorTarget7GetNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(3187) %2)
          to label %bb.g unwind label %bb.j       ; 2 uses

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24, !noalias !393
  store i64 10, ptr %8, align 8, !tbaa !62, !alias.scope !394, !noalias !393
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.16, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !63, !alias.scope !394, !noalias !393
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr null, ptr %i.r, align 8, !tbaa !66, !alias.scope !394, !noalias !393
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.t = load ptr, ptr %.sroa.096.0125, align 8, !tbaa !20, !noalias !393
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.096.0125, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !21, !noalias !393
  store i64 %i.v, ptr %i.s, align 8, !tbaa !62, !alias.scope !395, !noalias !393
  %.sroa.4.0..sroa_idx.i12.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.t, ptr %.sroa.4.0..sroa_idx.i12.i, align 8, !tbaa !63, !alias.scope !395, !noalias !393
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr null, ptr %i.w, align 8, !tbaa !66, !alias.scope !395, !noalias !393
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 38, ptr %i.x, align 8, !tbaa !62, !alias.scope !396, !noalias !393
  %.sroa.4.0..sroa_idx.i20.i = getelementptr inbounds nuw i8, ptr %8, i64 56
  store ptr @.str.17, ptr %.sroa.4.0..sroa_idx.i20.i, align 8, !tbaa !63, !alias.scope !396, !noalias !393
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 64
  store ptr null, ptr %i.y, align 8, !tbaa !66, !alias.scope !396, !noalias !393
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !20, !noalias !393
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !21, !noalias !393
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !62, !alias.scope !397, !noalias !393
  %.sroa.4.0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %8, i64 80
  store ptr %i.aa, ptr %.sroa.4.0..sroa_idx.i28.i, align 8, !tbaa !63, !alias.scope !397, !noalias !393
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 88
  store ptr null, ptr %i.ad, align 8, !tbaa !66, !alias.scope !397, !noalias !393
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 96
  store i64 25, ptr %i.ae, align 8, !tbaa !62, !alias.scope !398, !noalias !393
  %.sroa.4.0..sroa_idx.i36.i = getelementptr inbounds nuw i8, ptr %8, i64 104
  store ptr @.str.18, ptr %.sroa.4.0..sroa_idx.i36.i, align 8, !tbaa !63, !alias.scope !398, !noalias !393
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 112
  store ptr null, ptr %i.af, align 8, !tbaa !66, !alias.scope !398, !noalias !393
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull %8, i64 5)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !393
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(160) %i.p, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr %11, align 8, !tbaa !20   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !22
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #25
  br label %.thread

.thread:                                          ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %.loopexit

bb.j:                                             ; preds = %bb.g, %bb.f
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

bb.k:                                             ; preds = %bb.h
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %11, align 8, !tbaa !20   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %bb.k
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !22
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.j ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69 ], [ %i.ap, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.ag

bb.l:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  invoke void @_ZN35cmExportInstallPackageInfoGenerator19GetFileSetDirectoryEP17cmGeneratorTargetPK14cmTargetExportPK18cmGeneratorFileSetRKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %12, ptr noundef nonnull align 8 dereferenceable(569) %0, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %i.o, ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %bb.m unwind label %bb.v

bb.m:                                             ; preds = %bb.l
  %i.av = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK18cmGeneratorFileSet7GetTypeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(496) %i.o)
          to label %bb.n unwind label %bb.w       ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !20
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !21 ; 3 uses
  %.sroa.06.0.copyload = load i64, ptr @_ZN2cm15FileSetMetadata7HEADERSE, align 8, !tbaa !62
  %.sroa.27.0.copyload = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm15FileSetMetadata7HEADERSE, i64 8), align 8, !tbaa !63
  %i.az = icmp eq i64 %i.ay, %.sroa.06.0.copyload
  br i1 %i.az, label %bb.o, label %bb.aa

bb.o:                                             ; preds = %bb.n
  %i.ba = icmp eq i64 %i.ay, 0
  br i1 %i.ba, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.o
  %bcmp.i = call i32 @bcmp(ptr %i.aw, ptr %.sroa.27.0.copyload, i64 %i.ay)
  %i.bb = icmp eq i32 %bcmp.i, 0
  br i1 %i.bb, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %bb.aa

_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.o
  %i.bc = load i8, ptr %i.k, align 8, !tbaa !89, !range !37, !noundef !38
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %bb.p, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit

bb.p:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !61  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not10.i.i.i.i, label %_ZN2cm8containsISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS7_ESaIS7_EES7_TnNSt9enable_ifIXoosr2cm24is_associative_containerIT_EE5valuesr2cm34is_unordered_associative_containerISD_EE5valueEiE4typeELi0EEEbRKSD_RKT0_.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.p
  %i.bf = load i64, ptr %i.l, align 8, !tbaa !21  ; 4 uses
  %i.bg = load ptr, ptr %12, align 8              ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ] ; 6 uses
  %.0811.i.i.i.i = phi ptr [ %i.a, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !21 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bf, i64 %i.bi) ; 2 uses
  %i.bj = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.bj, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !20
  %i.bm = call i32 @memcmp(ptr noundef %i.bl, ptr noundef %i.bg, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.q
  %i.bn = sub i64 %i.bi, %i.bf
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bn, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bm, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.bo = icmp slt i32 %.0.i.i.i.i.i.i.i, 0       ; 4 uses
  %.19.i.i.i.i = select i1 %i.bo, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 2 uses
  %.1.in.v.i.i.i.i = select i1 %i.bo, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !86 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i.i, label %bb.q, !llvm.loop !384

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.bp = icmp eq ptr %.19.i.i.i.i, %i.a
  br i1 %i.bp, label %_ZN2cm8containsISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS7_ESaIS7_EES7_TnNSt9enable_ifIXoosr2cm24is_associative_containerIT_EE5valuesr2cm34is_unordered_associative_containerISD_EE5valueEiE4typeELi0EEEbRKSD_RKT0_.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.bo, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.bq = load i64, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !21 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bq, i64 %i.bf) ; 2 uses
  %i.br = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.br, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.r
  %.19.i.i.i.i.sroa.sel101.v.sroa.sel.v.sroa.sel.v = select i1 %i.bo, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel101.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel101.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.bs = load ptr, ptr %.19.i.i.i.i.sroa.sel101.v.sroa.sel.v.sroa.sel, align 8, !tbaa !20
  %i.bt = call i32 @memcmp(ptr noundef %i.bg, ptr noundef %i.bs, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZN2cm8containsISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS7_ESaIS7_EES7_TnNSt9enable_ifIXoosr2cm24is_associative_containerIT_EE5valuesr2cm34is_unordered_associative_containerISD_EE5valueEiE4typeELi0EEEbRKSD_RKT0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.r
  %i.bu = sub i64 %i.bf, %i.bq
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bu, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZN2cm8containsISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS7_ESaIS7_EES7_TnNSt9enable_ifIXoosr2cm24is_associative_containerIT_EE5valuesr2cm34is_unordered_associative_containerISD_EE5valueEiE4typeELi0EEEbRKSD_RKT0_.exit

_ZN2cm8containsISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS7_ESaIS7_EES7_TnNSt9enable_ifIXoosr2cm24is_associative_containerIT_EE5valuesr2cm34is_unordered_associative_containerISD_EE5valueEiE4typeELi0EEEbRKSD_RKT0_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.bt, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.bv = icmp sgt i32 %.0.i.i.i.i.i.i, -1
  br i1 %i.bv, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit, label %_ZN2cm8containsISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS7_ESaIS7_EES7_TnNSt9enable_ifIXoosr2cm24is_associative_containerIT_EE5valuesr2cm34is_unordered_associative_containerISD_EE5valueEiE4typeELi0EEEbRKSD_RKT0_.exit.thread

_ZN2cm8containsISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS7_ESaIS7_EES7_TnNSt9enable_ifIXoosr2cm24is_associative_containerIT_EE5valuesr2cm34is_unordered_associative_containerISD_EE5valueEiE4typeELi0EEEbRKSD_RKT0_.exit.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS5_EPKSt18_Rb_tree_node_baseRKS5_.exit.i.i.i, %bb.p, %_ZN2cm8containsISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS7_ESaIS7_EES7_TnNSt9enable_ifIXoosr2cm24is_associative_containerIT_EE5valuesr2cm34is_unordered_associative_containerISD_EE5valueEiE4typeELi0EEEbRKSD_RKT0_.exit
  %i.bw = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @.str.19)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %_ZN2cm8containsISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS7_ESaIS7_EES7_TnNSt9enable_ifIXoosr2cm24is_associative_containerIT_EE5valuesr2cm34is_unordered_associative_containerISD_EE5valueEiE4typeELi0EEEbRKSD_RKT0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  invoke void @_ZN4Json5ValueC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bx = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5Value6appendEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.bw, ptr noundef nonnull align 8 dereferenceable(40) %13)
          to label %bb.u unwind label %bb.y       ; 0 uses

bb.u:                                             ; preds = %bb.t
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.by = invoke { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIRKS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit unwind label %bb.w ; 0 uses

bb.v:                                             ; preds = %bb.d, %bb.l
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.w:                                             ; preds = %bb.u, %bb.aa, %_ZN2cm8containsISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS7_ESaIS7_EES7_TnNSt9enable_ifIXoosr2cm24is_associative_containerIT_EE5valuesr2cm34is_unordered_associative_containerISD_EE5valueEiE4typeELi0EEEbRKSD_RKT0_.exit.thread, %bb.m
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.x:                                             ; preds = %bb.s
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.y:                                             ; preds = %bb.t
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %13) #24
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.pn58 = phi { ptr, i32 } [ %i.cc, %bb.y ], [ %i.cb, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.ae

bb.aa:                                            ; preds = %bb.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.cd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK18cmGeneratorFileSet7GetTypeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(496) %i.o)
          to label %bb.ab unwind label %bb.w      ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !20
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !21 ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr @_ZN2cm15FileSetMetadata11CXX_MODULESE, align 8, !tbaa !62
  %.sroa.2.0.copyload = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2cm15FileSetMetadata11CXX_MODULESE, i64 8), align 8, !tbaa !63
  %i.ch = icmp eq i64 %i.cg, %.sroa.0.0.copyload
  br i1 %i.ch, label %bb.ac, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ci = icmp eq i64 %i.cg, 0
  br i1 %i.ci, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit77, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i74

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i74: ; preds = %bb.ac
  %bcmp.i75 = call i32 @bcmp(ptr %i.ce, ptr %.sroa.2.0.copyload, i64 %i.cg)
  %i.cj = icmp eq i32 %bcmp.i75, 0
  br i1 %i.cj, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit77, label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit

_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit77: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i74, %bb.ac
  store i8 1, ptr %i.j, align 8, !tbaa !58
  br label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i74, %bb.ab, %bb.u, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit77, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, %_ZN2cm8containsISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS7_ESaIS7_EES7_TnNSt9enable_ifIXoosr2cm24is_associative_containerIT_EE5valuesr2cm34is_unordered_associative_containerISD_EE5valueEiE4typeELi0EEEbRKSD_RKT0_.exit
  %.138 = phi i1 [ %.037126, %_ZN2cm8containsISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS7_ESaIS7_EES7_TnNSt9enable_ifIXoosr2cm24is_associative_containerIT_EE5valuesr2cm34is_unordered_associative_containerISD_EE5valueEiE4typeELi0EEEbRKSD_RKT0_.exit ], [ %.037126, %bb.u ], [ %.037126, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit ], [ true, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit77 ], [ %.037126, %bb.ab ], [ %.037126, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i74 ] ; 2 uses
  %i.ck = load i8, ptr %i.k, align 8, !tbaa !89, !range !37, !noundef !38
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.ad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

bb.ad:                                            ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit
  store i8 0, ptr %i.k, align 8, !tbaa !89
  %i.cm = load ptr, ptr %12, align 8, !tbaa !20   ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.m
  br i1 %i.cn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.ad
  %i.co = load i64, ptr %i.m, align 8, !tbaa !22
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cp) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE6insertERKS5_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.096.0125, i64 32 ; 2 uses
  %.not104 = icmp eq ptr %i.cq, %i.i
  br i1 %.not104, label %.loopexit, label %bb.d

bb.ae:                                            ; preds = %bb.z, %bb.w
  %.pn60 = phi { ptr, i32 } [ %i.ca, %bb.w ], [ %.pn58, %bb.z ]
  %i.cr = load i8, ptr %i.k, align 8, !tbaa !89, !range !37, !noundef !38
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.af, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit80

bb.af:                                            ; preds = %bb.ae
  store i8 0, ptr %i.k, align 8, !tbaa !89
  %i.ct = load ptr, ptr %12, align 8, !tbaa !20   ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.m
  br i1 %i.cu, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i78: ; preds = %bb.af
  %i.cv = load i64, ptr %i.m, align 8, !tbaa !22
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #25
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit80

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit80: ; preds = %bb.af, %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.ag

bb.ag:                                            ; preds = %bb.v, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71
  %.pn60.pn.pn = phi { ptr, i32 } [ %i.bz, %bb.v ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ], [ %.pn60, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit80 ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.ba

.loopexit:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, %bb.b, %.thread
  %.037117 = phi i1 [ %.037126, %.thread ], [ false, %bb.b ], [ %.138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i ]
  %.not104111 = phi i1 [ false, %.thread ], [ true, %bb.b ], [ true, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i ] ; 2 uses
  %i.cx = load ptr, ptr %10, align 8, !tbaa !27   ; 3 uses
  %i.cy = load ptr, ptr %i.h, align 8, !tbaa !59  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.cx, %i.cy
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.de, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.cx, %.loopexit ] ; 3 uses
  %i.cz = load ptr, ptr %.05.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i81: ; preds = %.lr.ph.i.i.i
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !22
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i81
  %i.de = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.de, %i.cy
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %10, align 8, !tbaa !27
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %.loopexit
  %i.df = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.cx, %.loopexit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !26
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %i.df to i64
  %i.dk = sub i64 %i.di, %i.dj
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.dk) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %or.cond = select i1 %.not104111, i1 %.037117, i1 false
  br i1 %or.cond, label %bb.ai, label %bb.ay

bb.ai:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !89, !range !37, !noundef !38
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.aj, label %bb.ay

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  invoke void @_ZN28cmExportPackageInfoGenerator18GenerateCxxModulesERN4Json5ValueEP17cmGeneratorTargetRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ak unwind label %bb.au

bb.ak:                                            ; preds = %bb.aj
  %i.do = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !21 ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %bb.ax, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  %i.dr = load ptr, ptr %0, align 8, !tbaa !13
  %i.ds = getelementptr i8, ptr %i.dr, i64 -24
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = getelementptr inbounds i8, ptr %0, i64 %i.dt ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !399
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !20, !noalias !399
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 104
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !21, !noalias !399
  store i64 %i.dy, ptr %6, align 8, !tbaa !62, !alias.scope !400, !noalias !399
  %.sroa.4.0..sroa_idx.i.i83 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.dw, ptr %.sroa.4.0..sroa_idx.i.i83, align 8, !tbaa !63, !alias.scope !400, !noalias !399
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.dz, align 8, !tbaa !66, !alias.scope !400, !noalias !399
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !399
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store i64 0, ptr %7, align 8, !noalias !399
  store i8 47, ptr %i.ec, align 8, !tbaa !22, !noalias !399
  store i64 1, ptr %i.eb, align 8, !tbaa !62, !noalias !399
  %.sroa.4.0..sroa_idx.i3.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.ec, ptr %.sroa.4.0..sroa_idx.i3.i, align 8, !tbaa !63, !noalias !399
  store i64 1, ptr %i.ea, align 8, !tbaa !62, !alias.scope !401, !noalias !399
  %.sroa.4.0..sroa_idx.i11.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.ec, ptr %.sroa.4.0..sroa_idx.i11.i, align 8, !tbaa !63, !alias.scope !401, !noalias !399
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr null, ptr %i.ed, align 8, !tbaa !66, !alias.scope !401, !noalias !399
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ef = load ptr, ptr %14, align 8, !tbaa !20, !noalias !399
  store i64 %i.dp, ptr %i.ee, align 8, !tbaa !62, !alias.scope !402, !noalias !399
  %.sroa.4.0..sroa_idx.i19.i = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %i.ef, ptr %.sroa.4.0..sroa_idx.i19.i, align 8, !tbaa !63, !alias.scope !402, !noalias !399
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 64
  store ptr null, ptr %i.eg, align 8, !tbaa !66, !alias.scope !402, !noalias !399
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr nonnull %6, i64 3)
          to label %bb.am unwind label %bb.av

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24, !noalias !399
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24, !noalias !399
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ei = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %i.eh, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.an unwind label %bb.aw     ; 9 uses

bb.an:                                            ; preds = %bb.am
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !20 ; 6 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 4 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  %i.em = load ptr, ptr %15, align 8, !tbaa !20   ; 6 uses
  %i.en = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  %i.eo = icmp eq ptr %i.em, %i.en                ; 2 uses
  br i1 %i.el, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.an
  br i1 %i.eo, label %bb.ao, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.an
  br i1 %i.eo, label %bb.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ep = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !21 ; 3 uses
  %i.er = icmp ult i64 %i.eq, 16
  call void @llvm.assume(i1 %i.er)
  %.not21.i = icmp eq ptr %15, %i.ei
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.ap, !prof !87

bb.ap:                                            ; preds = %bb.ao
  switch i64 %i.eq, label %bb.ar [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.aq
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.es = load i8, ptr %i.em, align 1, !tbaa !22
  store i8 %i.es, ptr %i.ej, align 1, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ej, ptr align 1 %i.em, i64 %i.eq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.et = load i64, ptr %i.ep, align 8, !tbaa !21 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store i64 %i.et, ptr %i.eu, align 8, !tbaa !21
  %i.ev = load ptr, ptr %i.ei, align 8, !tbaa !20
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.et
  store i8 0, ptr %i.ew, align 1, !tbaa !22
  %.pre.i = load ptr, ptr %15, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %i.em, ptr %i.ei, align 8, !tbaa !20
  %i.ey = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !21
  store i64 %i.ez, ptr %i.ex, align 8, !tbaa !21
  %i.fa = load i64, ptr %i.en, align 8, !tbaa !22
  store i64 %i.fa, ptr %i.ek, align 8, !tbaa !22
  br label %bb.at

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.fb = load i64, ptr %i.ek, align 8, !tbaa !22
  store ptr %i.em, ptr %i.ei, align 8, !tbaa !20
  %i.fc = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !21
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store i64 %i.fd, ptr %i.fe, align 8, !tbaa !21
  %i.ff = load i64, ptr %i.en, align 8, !tbaa !22
  store i64 %i.ff, ptr %i.ek, align 8, !tbaa !22
  %.not.i = icmp eq ptr %i.ej, null
  br i1 %.not.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ej, ptr %15, align 8, !tbaa !20
  store i64 %i.fb, ptr %i.en, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.en, ptr %15, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.as, %bb.at
  %i.fg = phi ptr [ %i.ej, %bb.as ], [ %i.en, %bb.at ], [ %i.em, %bb.ao ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.fh = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.fh, align 8, !tbaa !21
  store i8 0, ptr %i.fg, align 1, !tbaa !22
  %i.fi = load ptr, ptr %15, align 8, !tbaa !20   ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.fk = icmp eq ptr %i.fi, %i.fj
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

end_hunk_0
