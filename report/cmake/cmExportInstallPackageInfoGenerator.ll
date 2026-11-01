Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmExportInstallPackageInfoGenerator?download=true
inline.NumInlined: 1365
inline.NumDeleted: 641
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZThn408_NK35cmExportInstallPackageInfoGenerator23GetConfigImportFileGlobB5cxx11Ev:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24, !noalias !291
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !20, !noalias !291
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  %i.j = load i64, ptr %i.i, align 8, !tbaa !21, !noalias !291
  store i64 %i.j, ptr %2, align 8, !tbaa !62, !alias.scope !292, !noalias !291
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !63, !alias.scope !292, !noalias !291
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.k, align 8, !tbaa !66, !alias.scope !292, !noalias !291
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 2, ptr %i.l, align 8, !tbaa !62, !alias.scope !293, !noalias !291
  %.sroa.4.0..sroa_idx.i10.i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr @.str, ptr %.sroa.4.0..sroa_idx.i10.i.i, align 8, !tbaa !63, !alias.scope !293, !noalias !291
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr null, ptr %i.m, align 8, !tbaa !66, !alias.scope !293, !noalias !291
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !20, !noalias !291
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  %i.q = load i64, ptr %i.p, align 8, !tbaa !21, !noalias !291
  store i64 %i.q, ptr %i.n, align 8, !tbaa !62, !alias.scope !294, !noalias !291
  %.sroa.4.0..sroa_idx.i18.i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx.i18.i.i, align 8, !tbaa !63, !alias.scope !294, !noalias !291
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr null, ptr %i.r, align 8, !tbaa !66, !alias.scope !294, !noalias !291
  call void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull %2, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24, !noalias !291
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNK35cmExportInstallPackageInfoGenerator13GetExportNameB5cxx11Ev(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(569) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZThn408_NK35cmExportInstallPackageInfoGenerator13GetExportNameB5cxx11Ev(ptr nofree noundef readnone captures(ret: address, provenance) %0) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -400
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN35cmExportInstallPackageInfoGenerator16GenerateMainFileERSo(ptr noundef nonnull align 8 dereferenceable(569) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::vector.22", align 8    ; 11 uses
  %3 = alloca %"class.std::function", align 8     ; 12 uses
  %4 = alloca %"class.Json::Value", align 8       ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.Json::Value", align 8       ; 7 uses
  %7 = alloca %"class.std::map", align 8          ; 16 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %class.cmList, align 8              ; 15 uses
  %10 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 14 uses
  %11 = alloca %class.cmList, align 8             ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::optional", align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.e = ptrtoint ptr %2 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.h, align 8
  store i64 %i.e, ptr %3, align 8, !tbaa !68
  store ptr @"_ZNSt17_Function_handlerIFvPK14cmTargetExportEZN35cmExportInstallPackageInfoGenerator16GenerateMainFileERSoE3$_0E9_M_invokeERKSt9_Any_dataOS2_", ptr %i.g, align 8, !tbaa !304
  store ptr @"_ZNSt17_Function_handlerIFvPK14cmTargetExportEZN35cmExportInstallPackageInfoGenerator16GenerateMainFileERSoE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation", ptr %i.f, align 8, !tbaa !305
  %i.i = invoke noundef zeroext i1 @_ZN28cmExportInstallFileGenerator14CollectExportsERKSt8functionIFvPK14cmTargetExportEE(ptr noundef nonnull align 8 dereferenceable(160) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !305  ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %i.i, label %bb.h, label %_ZNK28cmExportPackageInfoGenerator12CheckPackageEv.exit.thread

bb.e:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !305  ; 2 uses
  %.not.i96 = icmp eq ptr %i.o, null
  br i1 %.not.i96, label %_ZNSt14_Function_baseD2Ev.exit97, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit97 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit97:                 ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.bu

bb.h:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.s = invoke noundef zeroext i1 @_ZNK28cmExportPackageInfoGenerator12CheckVersionEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.h
  br i1 %i.s, label %bb.i, label %_ZNK28cmExportPackageInfoGenerator12CheckPackageEv.exit.thread

bb.i:                                             ; preds = %.noexc
  %i.t = invoke noundef zeroext i1 @_ZNK28cmExportPackageInfoGenerator19CheckDefaultTargetsEv(ptr noundef nonnull align 8 dereferenceable(408) %0)
          to label %_ZNK28cmExportPackageInfoGenerator12CheckPackageEv.exit unwind label %bb.j

_ZNK28cmExportPackageInfoGenerator12CheckPackageEv.exit: ; preds = %bb.i
  br i1 %i.t, label %bb.k, label %_ZNK28cmExportPackageInfoGenerator12CheckPackageEv.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.k:                                             ; preds = %_ZNK28cmExportPackageInfoGenerator12CheckPackageEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZNK28cmExportPackageInfoGenerator19GeneratePackageInfoEv(ptr dead_on_unwind nonnull writable sret(%"class.Json::Value") align 8 %4, ptr noundef nonnull align 8 dereferenceable(408) %0)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.v = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull @.str.2)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNK35cmExportInstallPackageInfoGenerator20GenerateImportPrefixB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(569) %0)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !21
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.critedge, label %bb.q

bb.o:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.p:                                             ; preds = %bb.l, %bb.m
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZN4Json5ValueC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.ab = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueixEPKc(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull @.str.3)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.ac = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN4Json5ValueaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ab, ptr noundef nonnull align 8 dereferenceable(40) %6) #24 ; 0 uses
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.ad = load ptr, ptr %2, align 8, !tbaa !306   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !306 ; 2 uses
  %.not185219 = icmp eq ptr %i.ad, %i.af
  br i1 %.not185219, label %.critedge94, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 9 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 12 uses
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  br label %bb.x

bb.t:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0181.0220, i64 8 ; 2 uses
  %.not185 = icmp eq ptr %i.bb, %i.af
  br i1 %.not185, label %.critedge94, label %bb.x

bb.u:                                             ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.r
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #24
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.bd, %bb.v ], [ %i.bc, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %.lr.ph, %bb.t
  %.sroa.0181.0220 = phi ptr [ %i.ad, %.lr.ph ], [ %i.bb, %bb.t ] ; 2 uses
  %i.be = load ptr, ptr %.sroa.0181.0220, align 8, !tbaa !72 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !81 ; 4 uses
  %i.bh = invoke noundef i32 @_ZNK28cmExportInstallFileGenerator19GetExportTargetTypeEPK14cmTargetExport(ptr noundef nonnull align 8 dereferenceable(160) %i.d, ptr noundef nonnull %i.be)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.bi = invoke noundef ptr @_ZNK28cmExportPackageInfoGenerator20GenerateImportTargetERN4Json5ValueEPK17cmGeneratorTargetN12cmStateEnums10TargetTypeE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef %i.bg, i32 noundef %i.bh)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.z:                                             ; preds = %bb.y
  %.not = icmp eq ptr %i.bi, null
  br i1 %.not, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store i32 0, ptr %i.ag, align 8, !tbaa !82
  store ptr null, ptr %i.ah, align 8, !tbaa !61
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !83
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !84
  store i64 0, ptr %i.ak, align 8, !tbaa !85
  %i.bj = invoke noundef zeroext i1 @_ZN28cmExportInstallFileGenerator27PopulateInterfacePropertiesEPK14cmTargetExportRSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_St4lessIS9_ESaISt4pairIKS9_S9_EEE(ptr noundef nonnull align 8 dereferenceable(160) %i.d, ptr noundef nonnull %i.be, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %bb.ab unwind label %bb.bk

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.bj, label %bb.ac, label %.critedge.critedge

bb.ac:                                            ; preds = %bb.ab
  %i.bk = load ptr, ptr %0, align 8, !tbaa !13
  %i.bl = getelementptr i8, ptr %i.bk, i64 -24
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds i8, ptr %0, i64 %i.bm
  %i.bo = invoke noundef zeroext i1 @_ZN21cmExportFileGenerator38PopulateInterfaceLinkLibrariesPropertyEPK17cmGeneratorTargetN21cmGeneratorExpression17PreprocessContextERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_St4lessISB_ESaISt4pairIKSB_SB_EEE(ptr noundef nonnull align 8 dereferenceable(320) %i.bn, ptr noundef %i.bg, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %bb.ad unwind label %bb.bk     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %.not72 = icmp eq i32 %i.bh, 7
  br i1 %.not72, label %.noexc.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i8 1, ptr %i.al, align 8, !tbaa !58
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store ptr %i.am, ptr %8, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 29, ptr %i.c, align 8, !tbaa !62
  %i.bp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc99 unwind label %bb.ax  ; 2 uses

.noexc99:                                         ; preds = %.noexc.i
  store ptr %i.bp, ptr %8, align 8, !tbaa !20
  %i.bq = load i64, ptr %i.c, align 8, !tbaa !62  ; 3 uses
  store i64 %i.bq, ptr %i.am, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.bp, ptr noundef nonnull align 1 dereferenceable(29) @.str.4, i64 29, i1 false)
  store i64 %i.bq, ptr %i.an, align 8, !tbaa !21
  %i.br = load ptr, ptr %8, align 8, !tbaa !20
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bq
  store i8 0, ptr %i.bs, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.bt = load ptr, ptr %i.ah, align 8, !tbaa !61 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.bt, null
  %.pre = load ptr, ptr %8, align 8               ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc99
  %i.bu = load i64, ptr %i.an, align 8, !tbaa !21 ; 4 uses
  br label %bb.af

bb.af:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 6 uses
  %.0811.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !21 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bu, i64 %i.bw) ; 2 uses
  %i.bx = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.bx, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.af
  %i.by = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !20
  %i.ca = call i32 @memcmp(ptr noundef %i.bz, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.af
  %i.cb = sub i64 %i.bw, %i.bu
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.cb, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ca, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.cc = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 4 uses
  %.19.i.i.i = select i1 %i.cc, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.cc, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !86 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.af, !llvm.loop !1

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.cd = icmp eq ptr %.19.i.i.i, %i.ag
  br i1 %i.cd, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.cc, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.ce = load i64, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !21 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ce, i64 %i.bu) ; 2 uses
  %i.cf = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.cf, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.ag
  %.19.i.i.i.sroa.sel179.v.sroa.sel.v.sroa.sel.v = select i1 %i.cc, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel179.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel179.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.cg = load ptr, ptr %.19.i.i.i.sroa.sel179.v.sroa.sel.v.sroa.sel, align 8, !tbaa !20
  %i.ch = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.cg, i64 noundef %.sroa.speculated.i.i.i.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ch, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.ag
  %i.ci = sub i64 %i.bu, %i.ce
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ci, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ch, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.cj = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i = select i1 %i.cj, ptr %i.ag, ptr %.19.i.i.i
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %.noexc99
  %.sroa.0.0.i.i = phi ptr [ %i.ag, %.noexc99 ], [ %i.ag, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 3 uses
  %i.ck = icmp eq ptr %.pre, %i.am
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit
  %i.cl = load i64, ptr %i.am, align 8, !tbaa !22
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.cm) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %.not187 = icmp eq ptr %.sroa.0.0.i.i, %i.ag
  br i1 %.not187, label %bb.bf, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  store ptr %i.ao, ptr %10, align 8, !tbaa !17
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !20 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 72
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 %i.cq, ptr %i.b, align 8, !tbaa !62
  %i.cr = icmp ugt i64 %i.cq, 15
  br i1 %i.cr, label %.noexc.i101, label %._crit_edge.i.i100

.noexc.i101:                                      ; preds = %bb.ah
  %i.cs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc102 unwind label %bb.ay ; 2 uses

.noexc102:                                        ; preds = %.noexc.i101
  store ptr %i.cs, ptr %10, align 8, !tbaa !20
  %i.ct = load i64, ptr %i.b, align 8, !tbaa !62
  store i64 %i.ct, ptr %i.ao, align 8, !tbaa !22
  br label %._crit_edge.i.i100

._crit_edge.i.i100:                               ; preds = %.noexc102, %bb.ah
  %i.cu = phi ptr [ %i.cs, %.noexc102 ], [ %i.ao, %bb.ah ] ; 2 uses
  switch i64 %i.cq, label %bb.aj [
    i64 1, label %bb.ai
    i64 0, label %.lr.ph55.i.i.i.i.i.i
  ]

bb.ai:                                            ; preds = %._crit_edge.i.i100
  %i.cv = load i8, ptr %i.co, align 1, !tbaa !22
  store i8 %i.cv, ptr %i.cu, align 1, !tbaa !22
  br label %.lr.ph55.i.i.i.i.i.i

bb.aj:                                            ; preds = %._crit_edge.i.i100
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cu, ptr align 1 %i.co, i64 %i.cq, i1 false)
  br label %.lr.ph55.i.i.i.i.i.i

.lr.ph55.i.i.i.i.i.i:                             ; preds = %bb.aj, %bb.ai, %._crit_edge.i.i100
  %i.cw = load i64, ptr %i.b, align 8, !tbaa !62  ; 2 uses
  store i64 %i.cw, ptr %i.ap, align 8, !tbaa !21
  %i.cx = load ptr, ptr %10, align 8, !tbaa !20
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cw
  store i8 0, ptr %i.cy, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.cz = invoke ptr @_ZN6cmList6InsertERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EERSC_NS_14ExpandElementsENS_13EmptyElementsE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr null, ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef 1, i32 noundef 0)
          to label %.noexc.i103 unwind label %.body ; 0 uses

.noexc.i103:                                      ; preds = %.lr.ph55.i.i.i.i.i.i
  %i.da = load ptr, ptr %10, align 8, !tbaa !20   ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.ba
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

.body:                                            ; preds = %.lr.ph55.i.i.i.i.i.i
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #24
  %i.dd = load ptr, ptr %10, align 8, !tbaa !20   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %.loopexit189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %.noexc.i103
  %i.dg = load i64, ptr %i.ba, align 8, !tbaa !22
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dh) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %.noexc.i103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.di = load ptr, ptr %9, align 8, !tbaa !24    ; 3 uses
  %i.dj = load ptr, ptr %i.aq, align 8, !tbaa !24
  %i.dk = invoke ptr @_Z18cmRemoveDuplicatesIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEET_SD_SD_(ptr %i.di, ptr %i.dj)
          to label %_Z18cmRemoveDuplicatesB5cxx11I6cmListENT_8iteratorERS1_.exit unwind label %bb.az ; 2 uses

_Z18cmRemoveDuplicatesB5cxx11I6cmListENT_8iteratorERS1_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.dl = icmp eq ptr %i.di, %i.dk
  br i1 %i.dl, label %_ZN6cmListC2IN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEET_SE_NS_14ExpandElementsENS_13EmptyElementsE.exit, label %.lr.ph53.i.i.i.i

.lr.ph53.i.i.i.i:                                 ; preds = %_Z18cmRemoveDuplicatesB5cxx11I6cmListENT_8iteratorERS1_.exit, %.noexc168
  %i.dm = phi ptr [ %i.du, %.noexc168 ], [ null, %_Z18cmRemoveDuplicatesB5cxx11I6cmListENT_8iteratorERS1_.exit ]
  %i.dn = phi ptr [ %i.dt, %.noexc168 ], [ null, %_Z18cmRemoveDuplicatesB5cxx11I6cmListENT_8iteratorERS1_.exit ]
  %.sroa.033.052.i.i.i.i = phi ptr [ %i.eb, %.noexc168 ], [ %i.di, %_Z18cmRemoveDuplicatesB5cxx11I6cmListENT_8iteratorERS1_.exit ] ; 2 uses
  %.sroa.025.051.i.i.i.i = phi ptr [ %i.ea, %.noexc168 ], [ null, %_Z18cmRemoveDuplicatesB5cxx11I6cmListENT_8iteratorERS1_.exit ]
  %i.do = invoke ptr @_ZN6cmList6InsertERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EERSC_NS_14ExpandElementsENS_13EmptyElementsE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %.sroa.025.051.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.033.052.i.i.i.i, i32 noundef 1, i32 noundef 0)
          to label %.noexc168 unwind label %bb.ak

.noexc168:                                        ; preds = %.lr.ph53.i.i.i.i
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = ashr exact i64 %i.dr, 5
  %i.dt = load ptr, ptr %i.ar, align 8, !tbaa !59 ; 3 uses
  %i.du = load ptr, ptr %11, align 8, !tbaa !27   ; 3 uses
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = ashr exact i64 %i.dx, 5
  %i.dz = sub nsw i64 %i.dy, %i.ds
  %i.ea = getelementptr inbounds [32 x i8], ptr %i.do, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.033.052.i.i.i.i, i64 32 ; 2 uses
  %.not44.i.i.i.i = icmp eq ptr %i.eb, %i.dk
  br i1 %.not44.i.i.i.i, label %_ZN6cmListC2IN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEET_SE_NS_14ExpandElementsENS_13EmptyElementsE.exit.loopexit, label %.lr.ph53.i.i.i.i, !llvm.loop !295

bb.ak:                                            ; preds = %.lr.ph53.i.i.i.i
  %i.ec = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #24
  br label %.body108

_ZN6cmListC2IN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEET_SE_NS_14ExpandElementsENS_13EmptyElementsE.exit.loopexit: ; preds = %.noexc168
  %.pre230 = load ptr, ptr %i.at, align 8, !tbaa !26
  br label %_ZN6cmListC2IN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEET_SE_NS_14ExpandElementsENS_13EmptyElementsE.exit

_ZN6cmListC2IN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEET_SE_NS_14ExpandElementsENS_13EmptyElementsE.exit: ; preds = %_ZN6cmListC2IN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEET_SE_NS_14ExpandElementsENS_13EmptyElementsE.exit.loopexit, %_Z18cmRemoveDuplicatesB5cxx11I6cmListENT_8iteratorERS1_.exit
  %15 = phi ptr [ %.pre230, %_ZN6cmListC2IN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEET_SE_NS_14ExpandElementsENS_13EmptyElementsE.exit.loopexit ], [ null, %_Z18cmRemoveDuplicatesB5cxx11I6cmListENT_8iteratorERS1_.exit ]
  %i.ed = phi ptr [ %i.dt, %_ZN6cmListC2IN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEET_SE_NS_14ExpandElementsENS_13EmptyElementsE.exit.loopexit ], [ null, %_Z18cmRemoveDuplicatesB5cxx11I6cmListENT_8iteratorERS1_.exit ]
  %16 = phi ptr [ %i.du, %_ZN6cmListC2IN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEET_SE_NS_14ExpandElementsENS_13EmptyElementsE.exit.loopexit ], [ null, %_Z18cmRemoveDuplicatesB5cxx11I6cmListENT_8iteratorERS1_.exit ]
  %i.ee = load ptr, ptr %9, align 8, !tbaa !27    ; 5 uses
  %i.ef = load ptr, ptr %i.aq, align 8, !tbaa !59 ; 2 uses
  %i.eg = load ptr, ptr %i.as, align 8, !tbaa !26
  store ptr %16, ptr %9, align 8, !tbaa !27
  store ptr %i.ed, ptr %i.aq, align 8, !tbaa !59
  store ptr %15, ptr %i.as, align 8, !tbaa !26
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ee, %i.ef
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN6cmListC2IN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEET_SE_NS_14ExpandElementsENS_13EmptyElementsE.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.em, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.ee, %_ZN6cmListC2IN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEET_SE_NS_14ExpandElementsENS_13EmptyElementsE.exit ] ; 3 uses
  %i.eh = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ek = load i64, ptr %i.ei, align 8, !tbaa !22
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.el) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i110 = icmp eq ptr %i.em, %i.ef
  br i1 %.not.i.i.i.i.i.i110, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, %_ZN6cmListC2IN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEET_SE_NS_14ExpandElementsENS_13EmptyElementsE.exit
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN6cmListaSEOS_.exit, label %bb.al

bb.al:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.en = ptrtoint ptr %i.eg to i64
  %i.eo = ptrtoint ptr %i.ee to i64
  %i.ep = sub i64 %i.en, %i.eo
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.ep) #25
  br label %_ZN6cmListaSEOS_.exit

_ZN6cmListaSEOS_.exit:                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, %bb.al
  %i.eq = load ptr, ptr %11, align 8, !tbaa !27   ; 3 uses
  %i.er = load ptr, ptr %i.ar, align 8, !tbaa !59 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.eq, %i.er
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6cmListaSEOS_.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ex, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.eq, %_ZN6cmListaSEOS_.exit ] ; 3 uses
  %i.es = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.eu = icmp eq ptr %i.es, %i.et
  br i1 %i.eu, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ev = load i64, ptr %i.et, align 8, !tbaa !22
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ew) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ex, %i.er
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %11, align 8, !tbaa !27
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZN6cmListaSEOS_.exit
  %i.ey = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.eq, %_ZN6cmListaSEOS_.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ey, null
  br i1 %.not.i.i1.i.i, label %_ZN6cmListD2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ez = load ptr, ptr %i.at, align 8, !tbaa !26
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = ptrtoint ptr %i.ey to i64
  %i.fc = sub i64 %i.fa, %i.fb
  call void @_ZdlPvm(ptr noundef nonnull %i.ey, i64 noundef %i.fc) #25
  br label %_ZN6cmListD2Ev.exit

_ZN6cmListD2Ev.exit:                              ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %.sroa.0.0.copyload.i = load i64, ptr @_ZN6cmList17element_separatorE, align 8, !tbaa !62, !noalias !307
  %.sroa.2.0.copyload.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6cmList17element_separatorE, i64 8), align 8, !tbaa !63, !noalias !307
  call void @llvm.experimental.noalias.scope.decl(metadata !308)
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %i.fd = load ptr, ptr %i.aq, align 8, !tbaa !59, !noalias !310 ; 2 uses
  %i.fe = load ptr, ptr %9, align 8, !tbaa !27, !noalias !310 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN6cmListD2Ev.exit
  store ptr %i.au, ptr %12, align 8, !tbaa !17, !alias.scope !310
  store i64 0, ptr %i.av, align 8, !tbaa !21, !alias.scope !310
  store i8 0, ptr %i.au, align 8, !tbaa !22, !alias.scope !310
  br label %_ZNK6cmList9to_stringB5cxx11Ev.exit

bb.ao:                                            ; preds = %_ZN6cmListD2Ev.exit
  invoke void @_ZN6cmList4JoinIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEES8_T_SF_St17basic_string_viewIcS6_E(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr %i.fe, ptr %i.fd, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i)
          to label %_ZNK6cmList9to_stringB5cxx11Ev.exit unwind label %bb.ba

_ZNK6cmList9to_stringB5cxx11Ev.exit:              ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  store ptr %i.aw, ptr %13, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 29, ptr %i.a, align 8, !tbaa !62
  %i.fg = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc114 unwind label %bb.bb ; 2 uses

.noexc114:                                        ; preds = %_ZNK6cmList9to_stringB5cxx11Ev.exit
  store ptr %i.fg, ptr %13, align 8, !tbaa !20
  %i.fh = load i64, ptr %i.a, align 8, !tbaa !62  ; 3 uses
  store i64 %i.fh, ptr %i.aw, align 8, !tbaa !22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.fg, ptr noundef nonnull align 1 dereferenceable(29) @.str.4, i64 29, i1 false)
  store i64 %i.fh, ptr %i.ax, align 8, !tbaa !21
  %i.fi = load ptr, ptr %13, align 8, !tbaa !20
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fh
  store i8 0, ptr %i.fj, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.fk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.ap unwind label %bb.bc     ; 9 uses

bb.ap:                                            ; preds = %.noexc114
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !20 ; 6 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 16 ; 4 uses
  %i.fn = icmp eq ptr %i.fl, %i.fm
  %i.fo = load ptr, ptr %12, align 8, !tbaa !20   ; 6 uses
  %i.fp = icmp eq ptr %i.fo, %i.au                ; 2 uses
  br i1 %i.fn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.ap
  br i1 %i.fp, label %bb.aq, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.ap
  br i1 %i.fp, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.fq = load i64, ptr %i.av, align 8, !tbaa !21 ; 3 uses
  %i.fr = icmp ult i64 %i.fq, 16
  call void @llvm.assume(i1 %i.fr)
  %.not21.i = icmp eq ptr %12, %i.fk
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.ar, !prof !87

bb.ar:                                            ; preds = %bb.aq
  switch i64 %i.fq, label %bb.at [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.as
  ]

bb.as:                                            ; preds = %bb.ar
  %i.fs = load i8, ptr %i.fo, align 1, !tbaa !22
  store i8 %i.fs, ptr %i.fl, align 1, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.at:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fl, ptr align 1 %i.fo, i64 %i.fq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.at, %bb.as, %bb.ar
  %i.ft = load i64, ptr %i.av, align 8, !tbaa !21 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store i64 %i.ft, ptr %i.fu, align 8, !tbaa !21
  %i.fv = load ptr, ptr %i.fk, align 8, !tbaa !20
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.ft
  store i8 0, ptr %i.fw, align 1, !tbaa !22
  %.pre.i = load ptr, ptr %12, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr %i.fo, ptr %i.fk, align 8, !tbaa !20
  %i.fy = load i64, ptr %i.av, align 8, !tbaa !21
  store i64 %i.fy, ptr %i.fx, align 8, !tbaa !21
  %i.fz = load i64, ptr %i.au, align 8, !tbaa !22
  store i64 %i.fz, ptr %i.fm, align 8, !tbaa !22
  br label %bb.av

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ga = load i64, ptr %i.fm, align 8, !tbaa !22
  store ptr %i.fo, ptr %i.fk, align 8, !tbaa !20
  %i.gb = load i64, ptr %i.av, align 8, !tbaa !21
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store i64 %i.gb, ptr %i.gc, align 8, !tbaa !21
  %i.gd = load i64, ptr %i.au, align 8, !tbaa !22
  store i64 %i.gd, ptr %i.fm, align 8, !tbaa !22
  %.not.i116 = icmp eq ptr %i.fl, null
  br i1 %.not.i116, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.fl, ptr %12, align 8, !tbaa !20
  store i64 %i.ga, ptr %i.au, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.av:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.au, ptr %12, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.au, %bb.av
  %i.ge = phi ptr [ %i.fl, %bb.au ], [ %i.au, %bb.av ], [ %i.fo, %bb.aq ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.av, align 8, !tbaa !21
  store i8 0, ptr %i.ge, align 1, !tbaa !22
  %i.gf = load ptr, ptr %13, align 8, !tbaa !20   ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.aw
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i117
end_hunk_0
