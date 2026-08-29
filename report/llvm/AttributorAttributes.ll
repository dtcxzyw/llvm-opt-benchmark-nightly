Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AttributorAttributes?download=true
inline.NumInlined: 25342
inline.NumDeleted: 9928
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_ZN4llvm25array_pod_sort_comparatorINS_9StringRefEEEiPKvS3_:bb.a
  %.sroa.0.0.copyload.i10.pre = load ptr, ptr %0, align 8, !tbaa !33
  %.sroa.01.0.copyload.i11.pre = load ptr, ptr %1, align 8, !tbaa !33
  br label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i9

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i9: ; preds = %._ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i9_crit_edge, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit
  %.sroa.01.0.copyload.i11 = phi ptr [ %.sroa.01.0.copyload.i11.pre, %._ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i9_crit_edge ], [ %.sroa.0.0.copyload.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit ]
  %.sroa.0.0.copyload.i10 = phi ptr [ %.sroa.0.0.copyload.i10.pre, %._ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i9_crit_edge ], [ %.sroa.01.0.copyload.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit ]
  %i.f = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i11, ptr noundef %.sroa.0.0.copyload.i10, i64 noundef %.sroa.speculated.i.i.i) #40
  %.fr.i.i.i12 = freeze i32 %i.f                  ; 2 uses
  %.not.not.i.i.i13 = icmp eq i32 %.fr.i.i.i12, 0
  br i1 %.not.not.i.i.i13, label %.thread.i.i.i17, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit18

.thread.i.i.i17:                                  ; preds = %.thread.i.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i9
  %i.g = icmp ult i64 %.sroa.2.0.copyload.i, %.sroa.22.0.copyload.i
  br i1 %i.g, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit18.thread26, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread21

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit18: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i9
  %i.h = icmp slt i32 %.fr.i.i.i12, 0
  br i1 %i.h, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit18.thread26, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread21

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit18.thread26: ; preds = %.thread.i.i.i17, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit18
  br label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread21

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread21: ; preds = %.thread.i.i.i.thread, %.thread.i.i.i, %.thread.i.i.i17, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit18.thread26, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit18, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit
  %.0 = phi i32 [ -1, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit ], [ -1, %.thread.i.i.i ], [ 1, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit18.thread26 ], [ 0, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit18 ], [ 0, %.thread.i.i.i17 ], [ -1, %.thread.i.i.i.thread ]
  ret i32 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail9join_implIPNS_9StringRefEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_SA_S2_St20forward_iterator_tag(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef %2, ptr %3, i64 %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !368
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !370
  store i8 0, ptr %i.a, align 8, !tbaa !40
  %i.c = icmp eq ptr %1, %2
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 4
  %i.h = add nsw i64 %i.g, -1
  %i.i = mul i64 %i.h, %4
  br label %bb.e

bb.c:                                             ; preds = %bb.e
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.q) #39
  %i.j = load ptr, ptr %0, align 8, !tbaa !391
  %i.k = icmp eq ptr %i.j, %i.a
  %.pre = load i64, ptr %i.b, align 8, !tbaa !370 ; 2 uses
  br i1 %i.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.c
  %i.l = icmp ult i64 %.pre, 16
  tail call void @llvm.assume(i1 %i.l)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !35 ; 2 uses
  %i.m = sub i64 4611686018427387903, %.pre
  %i.n = icmp ult i64 %i.m, %.sroa.24.0.copyload
  br i1 %i.n, label %bb.d, label %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #41
  unreachable

_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8, !tbaa !33
  %i.o = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.sroa.03.0.copyload, i64 noundef %.sroa.24.0.copyload) #39 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.not2533 = icmp eq ptr %i.p, %2
  br i1 %.not2533, label %.loopexit, label %.lr.ph

bb.e:                                             ; preds = %bb.b, %bb.e
  %.02032 = phi i64 [ %i.i, %bb.b ], [ %i.q, %bb.e ]
  %.02131 = phi ptr [ %1, %bb.b ], [ %i.r, %bb.e ] ; 2 uses
  %.sroa.3.0..021.sroa_idx = getelementptr inbounds nuw i8, ptr %.02131, i64 8
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..021.sroa_idx, align 8, !tbaa !35
  %i.q = add i64 %.sroa.3.0.copyload, %.02032     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.02131, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.r, %2
  br i1 %.not, label %bb.c, label %bb.e, !llvm.loop !1512

.lr.ph:                                           ; preds = %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit, %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit27
  %i.s = phi ptr [ %i.ab, %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit27 ], [ %i.p, %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit ] ; 3 uses
  %.034 = phi ptr [ %i.s, %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit27 ], [ %1, %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit ]
  %i.t = load i64, ptr %i.b, align 8, !tbaa !370
  %i.u = sub i64 4611686018427387903, %i.t
  %i.v = icmp ult i64 %i.u, %4
  br i1 %i.v, label %bb.f, label %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit26

bb.f:                                             ; preds = %.lr.ph
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #41
  unreachable

_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit26: ; preds = %.lr.ph
  %i.w = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %3, i64 noundef %4) #39 ; 0 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.034, i64 24
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !35 ; 2 uses
  %i.x = load i64, ptr %i.b, align 8, !tbaa !370
  %i.y = sub i64 4611686018427387903, %i.x
  %i.z = icmp ult i64 %i.y, %.sroa.2.0.copyload
  br i1 %i.z, label %bb.g, label %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit27

bb.g:                                             ; preds = %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit26
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #41
  unreachable

_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit27: ; preds = %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit26
  %.sroa.0.0.copyload = load ptr, ptr %i.s, align 8, !tbaa !33
  %i.aa = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.sroa.0.0.copyload, i64 noundef %.sroa.2.0.copyload) #39 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.not25 = icmp eq ptr %i.ab, %2
  br i1 %.not25, label %.loopexit, label %.lr.ph, !llvm.loop !1513

.loopexit:                                        ; preds = %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit27, %_ZN4llvmpLERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9StringRefE.exit, %bb.a
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4

declare ptr @_ZN4llvm9Attribute3getERNS_11LLVMContextENS_9StringRefES3_(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, ptr, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN4llvm12function_refIFbNS_16AbstractCallSiteEEE11callback_fnIZN12_GLOBAL__N_124AAAssumptionInfoFunction10updateImplERNS_10AttributorEEUlS1_E_EEblS1_(i64 noundef %0, ptr nofree noundef align 8 dereferenceable(24) %1) #3 align 2 {
bb.a:
  %2 = alloca %"struct.llvm::IRPosition", align 8 ; 6 uses
  %3 = alloca %"class.llvm::AbstractCallSite", align 8 ; 6 uses
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !781    ; 2 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !781
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.e, align 8, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 0, ptr %i.f, align 4, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !62
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm16AbstractCallSiteC2EOS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIiEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.i) ; 0 uses
  %.val.pre = load ptr, ptr %3, align 8, !tbaa !781
  br label %_ZN4llvm16AbstractCallSiteC2EOS0_.exit

_ZN4llvm16AbstractCallSiteC2EOS0_.exit:           ; preds = %bb.a, %bb.b
  %.val = phi ptr [ %i.b, %bb.a ], [ %.val.pre, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1495 ; 7 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !1514, !nonnull !21, !align !258
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = ptrtoint ptr %.val to i64
  store i64 0, ptr %i.n, align 8
  store i64 %i.o, ptr %2, align 8, !tbaa !40
  call void @_ZN4llvm10IRPosition6verifyEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #39, !inline_history !1515
  %.fca.0.load.i.i = load i64, ptr %2, align 8
  %.fca.1.load.i.i = load ptr, ptr %i.n, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.p = call noundef ptr @_ZN4llvm10Attributor16getOrCreateAAForINS_16AAAssumptionInfoEEEPKT_NS_10IRPositionEPKNS_17AbstractAttributeENS_10DepClassTyEbb(ptr noundef nonnull align 8 dereferenceable(3312) %i.m, i64 %.fca.0.load.i.i, ptr %.fca.1.load.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.l, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true), !inline_history !1516 ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZZN12_GLOBAL__N_124AAAssumptionInfoFunction10updateImplERN4llvm10AttributorEENKUlNS1_16AbstractCallSiteEE_clES4_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm16AbstractCallSiteC2EOS0_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 120 ; 6 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !410, !range !20, !noundef !21
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 144 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !1447
  %i.v = call noundef zeroext i1 @_ZN4llvm8SetStateINS_9StringRefEE11SetContents15getIntersectionERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.q), !inline_history !1515 ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 88 ; 3 uses
  %i.x = load i8, ptr %i.r, align 8, !tbaa !410, !range !20, !noundef !21
  %i.y = load i8, ptr %i.w, align 8, !tbaa !410, !range !20, !noundef !21
  %i.z = or i8 %i.y, %i.x
  %or.cond.not.i.i.i = icmp eq i8 %i.z, 0
  br i1 %or.cond.not.i.i.i, label %bb.d, label %_ZN4llvm8SetStateINS_9StringRefEE15getIntersectionERKNS2_11SetContentsE.exit.i

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.ac = call noundef zeroext i1 @_ZN4llvm9set_unionINS_8DenseSetINS_9StringRefENS_12DenseMapInfoIS2_vEEEES5_EEbRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ab), !inline_history !1515 ; 0 uses
  %.pre.i.i.i = load i8, ptr %i.w, align 8, !tbaa !410, !range !20
  %.pre5.i.i.i = load i8, ptr %i.r, align 8, !tbaa !410, !range !20
  %.pre6.i.i.i = or i8 %.pre5.i.i.i, %.pre.i.i.i
  br label %_ZN4llvm8SetStateINS_9StringRefEE15getIntersectionERKNS2_11SetContentsE.exit.i

_ZN4llvm8SetStateINS_9StringRefEE15getIntersectionERKNS2_11SetContentsE.exit.i: ; preds = %bb.d, %bb.c
  %.pre-phi.i.i.i = phi i8 [ %.pre6.i.i.i, %bb.d ], [ 1, %bb.c ] ; 2 uses
  store i8 %.pre-phi.i.i.i, ptr %i.r, align 8, !tbaa !410
  %i.ad = load i32, ptr %i.t, align 8, !tbaa !1447 ; 2 uses
  %.not.i.i = icmp ne i32 %i.u, %i.ad
  %i.ae = icmp ne i8 %.pre-phi.i.i.i, %i.s
  %i.af = or i1 %i.ae, %.not.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1517, !nonnull !21 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !289, !range !20, !noundef !21
  %i.aj = zext i1 %i.af to i8
  %i.ak = or i8 %i.ai, %i.aj
  store i8 %i.ak, ptr %i.ah, align 1, !tbaa !289
  %i.al = icmp ne i32 %i.ad, 0
  %i.am = load i8, ptr %i.r, align 8, !range !20
  %i.an = trunc nuw i8 %i.am to i1
  %.not2.i = select i1 %i.al, i1 true, i1 %i.an
  br i1 %.not2.i, label %_ZZN12_GLOBAL__N_124AAAssumptionInfoFunction10updateImplERN4llvm10AttributorEENKUlNS1_16AbstractCallSiteEE_clES4_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm8SetStateINS_9StringRefEE15getIntersectionERKNS2_11SetContentsE.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !1447
  %i.aq = icmp ne i32 %i.ap, 0
  %i.ar = load i8, ptr %i.w, align 8, !range !20
  %i.as = trunc nuw i8 %i.ar to i1
  %.not4.i = select i1 %i.aq, i1 true, i1 %i.as
  br label %_ZZN12_GLOBAL__N_124AAAssumptionInfoFunction10updateImplERN4llvm10AttributorEENKUlNS1_16AbstractCallSiteEE_clES4_.exit

_ZZN12_GLOBAL__N_124AAAssumptionInfoFunction10updateImplERN4llvm10AttributorEENKUlNS1_16AbstractCallSiteEE_clES4_.exit: ; preds = %_ZN4llvm16AbstractCallSiteC2EOS0_.exit, %_ZN4llvm8SetStateINS_9StringRefEE15getIntersectionERKNS2_11SetContentsE.exit.i, %bb.e
  %.0.i = phi i1 [ false, %_ZN4llvm16AbstractCallSiteC2EOS0_.exit ], [ true, %_ZN4llvm8SetStateINS_9StringRefEE15getIntersectionERKNS2_11SetContentsE.exit.i ], [ %.not4.i, %bb.e ]
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !8   ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.d
  br i1 %i.au, label %_ZN4llvm16AbstractCallSiteD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZZN12_GLOBAL__N_124AAAssumptionInfoFunction10updateImplERN4llvm10AttributorEENKUlNS1_16AbstractCallSiteEE_clES4_.exit
  call void @free(ptr noundef %i.at) #39
  br label %_ZN4llvm16AbstractCallSiteD2Ev.exit

_ZN4llvm16AbstractCallSiteD2Ev.exit:              ; preds = %_ZZN12_GLOBAL__N_124AAAssumptionInfoFunction10updateImplERN4llvm10AttributorEENKUlNS1_16AbstractCallSiteEE_clES4_.exit, %bb.f
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvm10Attributor16getOrCreateAAForINS_16AAAssumptionInfoEEEPKT_NS_10IRPositionEPKNS_17AbstractAttributeENS_10DepClassTyEbb(ptr noundef nonnull align 8 dereferenceable(3312) %0, i64 %1, ptr %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5, i1 noundef zeroext %6) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %7 = alloca %"struct.std::pair.570", align 8    ; 5 uses
  %8 = alloca %"class.llvm::PointerIntPair.563", align 8 ; 4 uses
  %9 = alloca %"struct.llvm::IRPosition", align 8 ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %10 = alloca %class.anon.918, align 8           ; 4 uses
  store i64 %1, ptr %9, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = call noundef zeroext i1 @_ZN4llvm10Attributor30shouldPropagateCallBaseContextERKNS_10IRPositionE(ptr noundef nonnull align 8 dereferenceable(3312) %0, ptr noundef nonnull align 8 dereferenceable(16) %9) #39
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !406
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = call noundef ptr @_ZN4llvm10Attributor11lookupAAForINS_16AAAssumptionInfoEEEPT_RKNS_10IRPositionEPKNS_17AbstractAttributeENS_10DepClassTyEb(ptr noundef nonnull align 8 dereferenceable(3312) %0, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %3, i32 noundef %4, i1 noundef zeroext true) ; 5 uses
  %.not = icmp ne ptr %i.d, null                  ; 2 uses
  %brmerge.demorgan = and i1 %5, %.not
  br i1 %brmerge.demorgan, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2456
  %i.f = load i32, ptr %i.e, align 8, !tbaa !608
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.h = call noundef i32 @_ZN4llvm10Attributor8updateAAERNS_17AbstractAttributeE(ptr noundef nonnull align 8 dereferenceable(3312) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.d) #39 ; 0 uses
  br label %.thread

bb.f:                                             ; preds = %bb.c
  br i1 %.not, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  %i.i = call noundef zeroext i1 @_ZN4llvm10Attributor16shouldInitializeINS_16AAAssumptionInfoEEEbRKNS_10IRPositionERb(ptr noundef nonnull align 8 dereferenceable(3312) %0, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  br i1 %i.i, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.j = load i8, ptr @_ZN4llvmL21NumAbstractAttributesE, align 8, !tbaa !609, !range !20, !noundef !21
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN4llvm12DebugCounter13shouldExecuteERNS0_11CounterInfoE.exit, label %_ZN4llvm12DebugCounter13shouldExecuteERNS0_11CounterInfoE.exit.thread

_ZN4llvm12DebugCounter13shouldExecuteERNS0_11CounterInfoE.exit: ; preds = %bb.h
  %i.l = call noundef zeroext i1 @_ZN4llvm12DebugCounter17shouldExecuteImplERNS0_11CounterInfoE(ptr noundef nonnull align 8 dereferenceable(200) @_ZN4llvmL21NumAbstractAttributesE) #39
  br i1 %i.l, label %_ZN4llvm12DebugCounter13shouldExecuteERNS0_11CounterInfoE.exit.thread, label %bb.r

_ZN4llvm12DebugCounter13shouldExecuteERNS0_11CounterInfoE.exit.thread: ; preds = %bb.h, %_ZN4llvm12DebugCounter13shouldExecuteERNS0_11CounterInfoE.exit
  %i.m = call noundef nonnull align 8 dereferenceable(153) ptr @_ZN4llvm16AAAssumptionInfo17createForPositionERKNS_10IRPositionERNS_10AttributorE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(3312) %0) ; 20 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  store ptr @_ZN4llvm16AAAssumptionInfo2IDE, ptr %7, align 8, !tbaa !616
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !405
  %i.q = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPKcNS_10IRPositionEEPNS_17AbstractAttributeENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E24lookupOrInsertIntoBucketIS6_JEEES2_IPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %7)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  store ptr %i.m, ptr %i.r, align 8, !tbaa !618
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2456 ; 5 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !608
  %switch.i = icmp ult i32 %i.t, 2
  br i1 %switch.i, label %_ZN4llvm10Attributor10registerAAINS_16AAAssumptionInfoEEERT_S4_.exit, label %_ZN4llvm10Attributor10registerAAINS_16AAAssumptionInfoEEERT_S4_.exit.thread

_ZN4llvm10Attributor10registerAAINS_16AAAssumptionInfoEEERT_S4_.exit: ; preds = %_ZN4llvm12DebugCounter13shouldExecuteERNS0_11CounterInfoE.exit.thread
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  %i.v = ptrtoint ptr %i.m to i64
  store i64 %i.v, ptr %8, align 8
  %i.w = call noundef zeroext i1 @_ZN4llvm9SetVectorINS_14PointerIntPairIPNS_14AADepGraphNodeELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEENS_11SmallVectorIS8_Lj2EEENS_8DenseSetIS8_NS_12DenseMapInfoIS8_vEEEELj2EE6insertERKS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %8) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  %.pr = load i32, ptr %i.s, align 8, !tbaa !608
  %i.x = icmp eq i32 %.pr, 0
  br i1 %i.x, label %bb.i, label %_ZN4llvm10Attributor10registerAAINS_16AAAssumptionInfoEEERT_S4_.exit.thread

bb.i:                                             ; preds = %_ZN4llvm10Attributor10registerAAINS_16AAAssumptionInfoEEERT_S4_.exit
  %i.y = call noundef zeroext i1 @_ZN4llvm10Attributor19shouldSeedAttributeERNS_17AbstractAttributeE(ptr noundef nonnull align 8 dereferenceable(3312) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.m) #39
  br i1 %i.y, label %_ZN4llvm10Attributor10registerAAINS_16AAAssumptionInfoEEERT_S4_.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call noundef nonnull align 8 dereferenceable(73) ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(153) %i.m) #39 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call noundef i32 %i.af(ptr noundef nonnull align 8 dereferenceable(73) %i.ac) #39 ; 0 uses
  br label %bb.r

_ZN4llvm10Attributor10registerAAINS_16AAAssumptionInfoEEERT_S4_.exit.thread: ; preds = %_ZN4llvm12DebugCounter13shouldExecuteERNS0_11CounterInfoE.exit.thread, %bb.i, %_ZN4llvm10Attributor10registerAAINS_16AAAssumptionInfoEEERT_S4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  store ptr %i.m, ptr %10, align 8, !tbaa !1518
  %i.ah = ptrtoint ptr %10 to i64
  %i.ai = call noundef ptr @_ZN4llvm22timeTraceProfilerBeginENS_9StringRefENS_12function_refIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEE(ptr nonnull @.str.31, i64 10, ptr nonnull @_ZN4llvm12function_refIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEE11callback_fnIZNS_10Attributor16getOrCreateAAForINS_16AAAssumptionInfoEEEPKT_NS_10IRPositionEPKNS_17AbstractAttributeENS_10DepClassTyEbbEUlvE_EES6_l, i64 %i.ah) #39 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2460 ; 4 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !622
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !622
  %i.am = load ptr, ptr %i.m, align 8, !tbaa !11
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(80) %i.m, ptr noundef nonnull align 8 dereferenceable(3312) %0) #39
  %i.ap = load i32, ptr %i.aj, align 4, !tbaa !622
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr %i.aj, align 4, !tbaa !622
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %_ZN4llvm14TimeTraceScopeD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm10Attributor10registerAAINS_16AAAssumptionInfoEEERT_S4_.exit.thread
  call void @_ZN4llvm20timeTraceProfilerEndEPNS_22TimeTraceProfilerEntryE(ptr noundef nonnull %i.ai) #39
  br label %_ZN4llvm14TimeTraceScopeD2Ev.exit

_ZN4llvm14TimeTraceScopeD2Ev.exit:                ; preds = %_ZN4llvm10Attributor10registerAAINS_16AAAssumptionInfoEEERT_S4_.exit.thread, %bb.k
  %i.ar = load i8, ptr %i.a, align 1, !tbaa !289, !range !20, !noundef !21
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm14TimeTraceScopeD2Ev.exit
  %i.at = load ptr, ptr %i.m, align 8, !tbaa !11
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = call noundef nonnull align 8 dereferenceable(73) ptr %i.av(ptr noundef nonnull align 8 dereferenceable(153) %i.m) #39 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call noundef i32 %i.az(ptr noundef nonnull align 8 dereferenceable(73) %i.aw) #39 ; 0 uses
  br label %bb.r

bb.m:                                             ; preds = %_ZN4llvm14TimeTraceScopeD2Ev.exit
  br i1 %6, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bb = load i32, ptr %i.s, align 8, !tbaa !608
  store i32 1, ptr %i.s, align 8, !tbaa !608
  %i.bc = call noundef i32 @_ZN4llvm10Attributor8updateAAERNS_17AbstractAttributeE(ptr noundef nonnull align 8 dereferenceable(3312) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.m) #39 ; 0 uses
  store i32 %i.bb, ptr %i.s, align 8, !tbaa !608
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not27 = icmp eq ptr %3, null
  br i1 %.not27, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = load ptr, ptr %i.m, align 8, !tbaa !11
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = call noundef nonnull align 8 dereferenceable(73) ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(153) %i.m) #39 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !11
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call noundef zeroext i1 %i.bj(ptr noundef nonnull align 8 dereferenceable(73) %i.bg) #39
  br i1 %i.bk, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @_ZN4llvm10Attributor16recordDependenceERKNS_17AbstractAttributeES3_NS_10DepClassTyE(ptr noundef nonnull align 8 dereferenceable(3312) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.m, ptr noundef nonnull align 8 dereferenceable(80) %3, i32 noundef %4) #39
  br label %bb.r

end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_124AAAssumptionInfoCallSiteD0Ev:bb.a

bb.c:                                             ; preds = %_ZN4llvm8SetStateINS_9StringRefEE11SetContentsD2Ev.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !417
  %i.r = zext i32 %i.n to i64                     ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820
  %i.w = add nuw nsw i64 %i.v, %i.s
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.q, i64 noundef %i.w, i64 noundef 8) #39, !inline_history !1440
  br label %_ZN4llvm8SetStateINS_9StringRefEED2Ev.exit.i

_ZN4llvm8SetStateINS_9StringRefEED2Ev.exit.i:     ; preds = %bb.c, %_ZN4llvm8SetStateINS_9StringRefEE11SetContentsD2Ev.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm14AADepGraphNodeE, i64 16), ptr %0, align 8, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !8    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN4llvm11SmallVectorINS_14PointerIntPairIPNS_14AADepGraphNodeELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEELj2EED2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8SetStateINS_9StringRefEED2Ev.exit.i
  tail call void @free(ptr noundef %i.z) #39, !inline_history !593
  br label %_ZN4llvm11SmallVectorINS_14PointerIntPairIPNS_14AADepGraphNodeELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEELj2EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorINS_14PointerIntPairIPNS_14AADepGraphNodeELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEELj2EED2Ev.exit.i.i.i: ; preds = %bb.d, %_ZN4llvm8SetStateINS_9StringRefEED2Ev.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !594 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZN4llvm12StateWrapperINS_8SetStateINS_9StringRefEEENS_17AbstractAttributeEJNS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorINS_14PointerIntPairIPNS_14AADepGraphNodeELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEELj2EED2Ev.exit.i.i.i
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !595
  %i.ag = zext i32 %i.ad to i64                   ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = add nuw nsw i64 %i.ag, 31
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = and i64 %i.aj, 1073741820
  %i.al = add nuw nsw i64 %i.ak, %i.ah
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.af, i64 noundef %i.al, i64 noundef 8) #39, !inline_history !593
  br label %_ZN4llvm12StateWrapperINS_8SetStateINS_9StringRefEEENS_17AbstractAttributeEJNS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEEEED2Ev.exit

_ZN4llvm12StateWrapperINS_8SetStateINS_9StringRefEEENS_17AbstractAttributeEJNS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEEEED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_14PointerIntPairIPNS_14AADepGraphNodeELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEELj2EED2Ev.exit.i.i.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #42
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_124AAAssumptionInfoCallSite10initializeERN4llvm10AttributorE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(3312) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.llvm::IRPosition", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.a, align 8 ; 2 uses
  %i.b = and i64 %.0.copyload.i.i.i.i.i.i, 3
  %i.c = icmp eq i64 %i.b, 3
  %i.d = and i64 %.0.copyload.i.i.i.i.i.i, -4
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNK4llvm10IRPosition14getAnchorValueEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !126
  br label %_ZNK4llvm10IRPosition14getAnchorValueEv.exit.i

_ZNK4llvm10IRPosition14getAnchorValueEv.exit.i:   ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.g, %bb.b ], [ %i.e, %bb.a ] ; 4 uses
  %i.h = load i8, ptr %.0.i.i, align 8, !tbaa !106 ; 2 uses
  switch i8 %i.h, label %bb.d [
    i8 14, label %_ZNK4llvm10IRPosition14getAnchorScopeEv.exit
    i8 23, label %bb.c
  ]

bb.c:                                             ; preds = %_ZNK4llvm10IRPosition14getAnchorValueEv.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !131
  br label %_ZNK4llvm10IRPosition14getAnchorScopeEv.exit

bb.d:                                             ; preds = %_ZNK4llvm10IRPosition14getAnchorValueEv.exit.i
  %i.k = icmp ugt i8 %i.h, 29
  br i1 %i.k, label %bb.e, label %_ZNK4llvm10IRPosition14getAnchorScopeEv.exit

bb.e:                                             ; preds = %bb.d
  %i.l = tail call noundef ptr @_ZNK4llvm11Instruction11getFunctionEv(ptr noundef nonnull align 8 dereferenceable(72) %.0.i.i) #39
  br label %_ZNK4llvm10IRPosition14getAnchorScopeEv.exit

_ZNK4llvm10IRPosition14getAnchorScopeEv.exit:     ; preds = %_ZNK4llvm10IRPosition14getAnchorValueEv.exit.i, %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ null, %bb.d ], [ %i.j, %bb.c ], [ %i.l, %bb.e ], [ %.0.i.i, %_ZNK4llvm10IRPosition14getAnchorValueEv.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !323
  %i.n = ptrtoint ptr %.0.i to i64
  store i64 %i.n, ptr %2, align 8, !tbaa !40
  call void @_ZN4llvm10IRPosition6verifyEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #39
  %.fca.0.load.i = load i64, ptr %2, align 8
  %.fca.1.load.i = load ptr, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.o = call noundef ptr @_ZN4llvm10Attributor16getOrCreateAAForINS_16AAAssumptionInfoEEEPKT_NS_10IRPositionEPKNS_17AbstractAttributeENS_10DepClassTyEbb(ptr noundef nonnull align 8 dereferenceable(3312) %1, i64 %.fca.0.load.i, ptr %.fca.1.load.i, ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true), !inline_history !1581 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZNK12_GLOBAL__N_124AAAssumptionInfoCallSite15trackStatisticsEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #16 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i32 0, 2) i32 @_ZN12_GLOBAL__N_124AAAssumptionInfoCallSite10updateImplERN4llvm10AttributorE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(3312) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"struct.llvm::IRPosition", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.a, align 8 ; 2 uses
  %i.b = and i64 %.0.copyload.i.i.i.i.i.i, 3
  %i.c = icmp eq i64 %i.b, 3
  %i.d = and i64 %.0.copyload.i.i.i.i.i.i, -4
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZNK4llvm10IRPosition14getAnchorValueEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !126
  br label %_ZNK4llvm10IRPosition14getAnchorValueEv.exit.i

_ZNK4llvm10IRPosition14getAnchorValueEv.exit.i:   ; preds = %bb.b, %bb.a
  %.0.i.i = phi ptr [ %i.g, %bb.b ], [ %i.e, %bb.a ] ; 4 uses
  %i.h = load i8, ptr %.0.i.i, align 8, !tbaa !106 ; 2 uses
  switch i8 %i.h, label %bb.d [
    i8 14, label %_ZNK4llvm10IRPosition14getAnchorScopeEv.exit
    i8 23, label %bb.c
  ]

bb.c:                                             ; preds = %_ZNK4llvm10IRPosition14getAnchorValueEv.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !131
  br label %_ZNK4llvm10IRPosition14getAnchorScopeEv.exit

bb.d:                                             ; preds = %_ZNK4llvm10IRPosition14getAnchorValueEv.exit.i
  %i.k = icmp ugt i8 %i.h, 29
  br i1 %i.k, label %bb.e, label %_ZNK4llvm10IRPosition14getAnchorScopeEv.exit

bb.e:                                             ; preds = %bb.d
  %i.l = tail call noundef ptr @_ZNK4llvm11Instruction11getFunctionEv(ptr noundef nonnull align 8 dereferenceable(72) %.0.i.i) #39
  br label %_ZNK4llvm10IRPosition14getAnchorScopeEv.exit

_ZNK4llvm10IRPosition14getAnchorScopeEv.exit:     ; preds = %_ZNK4llvm10IRPosition14getAnchorValueEv.exit.i, %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ null, %bb.d ], [ %i.j, %bb.c ], [ %i.l, %bb.e ], [ %.0.i.i, %_ZNK4llvm10IRPosition14getAnchorValueEv.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !323
  %i.n = ptrtoint ptr %.0.i to i64
  store i64 %i.n, ptr %2, align 8, !tbaa !40
  call void @_ZN4llvm10IRPosition6verifyEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #39
  %.fca.0.load.i = load i64, ptr %2, align 8
  %.fca.1.load.i = load ptr, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.o = call noundef ptr @_ZN4llvm10Attributor16getOrCreateAAForINS_16AAAssumptionInfoEEEPKT_NS_10IRPositionEPKNS_17AbstractAttributeENS_10DepClassTyEbb(ptr noundef nonnull align 8 dereferenceable(3312) %1, i64 %.fca.0.load.i, ptr %.fca.1.load.i, ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true), !inline_history !1581 ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK4llvm10IRPosition14getAnchorScopeEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 1, ptr %i.p, align 8, !tbaa !1498
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.s = load i8, ptr %i.q, align 8, !tbaa !410, !range !20, !noundef !21
  store i8 %i.s, ptr %i.r, align 8, !tbaa !410
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8copyFromERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.u)
  br label %bb.i

bb.g:                                             ; preds = %_ZNK4llvm10IRPosition14getAnchorScopeEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !410, !range !20, !noundef !21
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !1447
  %i.aa = call noundef zeroext i1 @_ZN4llvm8SetStateINS_9StringRefEE11SetContents15getIntersectionERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.v) ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ac = load i8, ptr %i.w, align 8, !tbaa !410, !range !20, !noundef !21
  %i.ad = load i8, ptr %i.ab, align 8, !tbaa !410, !range !20, !noundef !21
  %i.ae = or i8 %i.ad, %i.ac
  %or.cond.not.i.i = icmp eq i8 %i.ae, 0
  br i1 %or.cond.not.i.i, label %bb.h, label %_ZN4llvm8SetStateINS_9StringRefEE15getIntersectionERKNS2_11SetContentsE.exit

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ah = call noundef zeroext i1 @_ZN4llvm9set_unionINS_8DenseSetINS_9StringRefENS_12DenseMapInfoIS2_vEEEES5_EEbRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ag) ; 0 uses
  %.pre.i.i = load i8, ptr %i.ab, align 8, !tbaa !410, !range !20
  %.pre5.i.i = load i8, ptr %i.w, align 8, !tbaa !410, !range !20
  %.pre6.i.i = or i8 %.pre5.i.i, %.pre.i.i
  br label %_ZN4llvm8SetStateINS_9StringRefEE15getIntersectionERKNS2_11SetContentsE.exit

_ZN4llvm8SetStateINS_9StringRefEE15getIntersectionERKNS2_11SetContentsE.exit: ; preds = %bb.g, %bb.h
  %.pre-phi.i.i = phi i8 [ %.pre6.i.i, %bb.h ], [ 1, %bb.g ] ; 2 uses
  store i8 %.pre-phi.i.i, ptr %i.w, align 8, !tbaa !410
  %i.ai = load i32, ptr %i.y, align 8, !tbaa !1447
  %.not.i = icmp eq i32 %i.z, %i.ai
  %i.aj = icmp eq i8 %.pre-phi.i.i, %i.x
  %.not8 = and i1 %i.aj, %.not.i
  %i.ak = zext i1 %.not8 to i32
  br label %bb.i

bb.i:                                             ; preds = %_ZN4llvm8SetStateINS_9StringRefEE15getIntersectionERKNS2_11SetContentsE.exit, %bb.f
  %.0 = phi i32 [ %i.ak, %_ZN4llvm8SetStateINS_9StringRefEE15getIntersectionERKNS2_11SetContentsE.exit ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZThn80_N12_GLOBAL__N_124AAAssumptionInfoCallSiteD1Ev(ptr nofree noundef captures(address) initializes((-80, -72), (0, 8)) %0) unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -80
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4llvm8SetStateINS_9StringRefEEE, i64 16), ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.c = load i32, ptr %i.b, align 4, !tbaa !416  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN4llvm8SetStateINS_9StringRefEE11SetContentsD2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !417
  %i.g = zext i32 %i.c to i64                     ; 2 uses
  %i.h = shl nuw nsw i64 %i.g, 4
  %i.i = add nuw nsw i64 %i.g, 31
  %i.j = lshr i64 %i.i, 3
  %i.k = and i64 %i.j, 1073741820
  %i.l = add nuw nsw i64 %i.k, %i.h
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.f, i64 noundef %i.l, i64 noundef 8) #39, !inline_history !1440
  br label %_ZN4llvm8SetStateINS_9StringRefEE11SetContentsD2Ev.exit.i.i

_ZN4llvm8SetStateINS_9StringRefEE11SetContentsD2Ev.exit.i.i: ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = load i32, ptr %i.m, align 4, !tbaa !416  ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN4llvm8SetStateINS_9StringRefEED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8SetStateINS_9StringRefEE11SetContentsD2Ev.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !417
  %i.r = zext i32 %i.n to i64                     ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820
  %i.w = add nuw nsw i64 %i.v, %i.s
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.q, i64 noundef %i.w, i64 noundef 8) #39, !inline_history !1440
  br label %_ZN4llvm8SetStateINS_9StringRefEED2Ev.exit.i

_ZN4llvm8SetStateINS_9StringRefEED2Ev.exit.i:     ; preds = %bb.c, %_ZN4llvm8SetStateINS_9StringRefEE11SetContentsD2Ev.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm14AADepGraphNodeE, i64 16), ptr %i.a, align 8, !tbaa !11
  %i.x = getelementptr inbounds i8, ptr %0, i64 -72
  %i.y = getelementptr inbounds i8, ptr %0, i64 -48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !8    ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %0, i64 -32
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZN4llvm11SmallVectorINS_14PointerIntPairIPNS_14AADepGraphNodeELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEELj2EED2Ev.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8SetStateINS_9StringRefEED2Ev.exit.i
  tail call void @free(ptr noundef %i.z) #39, !inline_history !593
  br label %_ZN4llvm11SmallVectorINS_14PointerIntPairIPNS_14AADepGraphNodeELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEELj2EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorINS_14PointerIntPairIPNS_14AADepGraphNodeELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEELj2EED2Ev.exit.i.i.i: ; preds = %bb.d, %_ZN4llvm8SetStateINS_9StringRefEED2Ev.exit.i
  %i.ac = getelementptr inbounds i8, ptr %0, i64 -52
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !594 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZN4llvm12StateWrapperINS_8SetStateINS_9StringRefEEENS_17AbstractAttributeEJNS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm11SmallVectorINS_14PointerIntPairIPNS_14AADepGraphNodeELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEELj2EED2Ev.exit.i.i.i
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !595
  %i.ag = zext i32 %i.ad to i64                   ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = add nuw nsw i64 %i.ag, 31
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = and i64 %i.aj, 1073741820
  %i.al = add nuw nsw i64 %i.ak, %i.ah
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.af, i64 noundef %i.al, i64 noundef 8) #39, !inline_history !593
  br label %_ZN4llvm12StateWrapperINS_8SetStateINS_9StringRefEEENS_17AbstractAttributeEJNS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEEEED2Ev.exit

_ZN4llvm12StateWrapperINS_8SetStateINS_9StringRefEEENS_17AbstractAttributeEJNS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEEEED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_14PointerIntPairIPNS_14AADepGraphNodeELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEELj2EED2Ev.exit.i.i.i, %bb.e
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZThn80_N12_GLOBAL__N_124AAAssumptionInfoCallSiteD0Ev(ptr noundef initializes((-80, -72), (0, 8)) %0) unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -80
  tail call void @_ZN12_GLOBAL__N_124AAAssumptionInfoCallSiteD0Ev(ptr noundef nonnull align 8 dereferenceable(160) %i.a) #39
  ret void
}

declare void @_ZN4llvm14getAssumptionsERKNS_8CallBaseE(ptr dead_on_unwind writable sret(%"class.llvm::DenseSet.115") align 8, ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_122AAMustProgressFunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(96) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm14AADepGraphNodeE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN4llvm11SmallVectorINS_14PointerIntPairIPNS_14AADepGraphNodeELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEELj2EED2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.c) #39, !inline_history !593
  br label %_ZN4llvm11SmallVectorINS_14PointerIntPairIPNS_14AADepGraphNodeELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEELj2EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorINS_14PointerIntPairIPNS_14AADepGraphNodeELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEELj2EED2Ev.exit.i.i.i: ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !594  ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZN4llvm12StateWrapperINS_12BooleanStateENS_17AbstractAttributeEJEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_14PointerIntPairIPNS_14AADepGraphNodeELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEELj2EED2Ev.exit.i.i.i
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !595
  %i.j = zext i32 %i.g to i64                     ; 2 uses
  %i.k = shl nuw nsw i64 %i.j, 3
  %i.l = add nuw nsw i64 %i.j, 31
  %i.m = lshr i64 %i.l, 3
  %i.n = and i64 %i.m, 1073741820
  %i.o = add nuw nsw i64 %i.n, %i.k
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.i, i64 noundef %i.o, i64 noundef 8) #39, !inline_history !593
  br label %_ZN4llvm12StateWrapperINS_12BooleanStateENS_17AbstractAttributeEJEED2Ev.exit

_ZN4llvm12StateWrapperINS_12BooleanStateENS_17AbstractAttributeEJEED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_14PointerIntPairIPNS_14AADepGraphNodeELj1EjNS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES5_EEEELj2EED2Ev.exit.i.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #42
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN12_GLOBAL__N_118AAMustProgressImpl10initializeERN4llvm10AttributorE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #16 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_118AAMustProgressImpl8getAsStrB5cxx11EPN4llvm10AttributorE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(90) %1, ptr nofree readnone captures(none) %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.c = load i8, ptr %i.b, align 1, !tbaa !53, !range !20, !noundef !21
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !368
  %i.f = select i1 %i.d, i64 12, i64 16           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  store i64 %i.f, ptr %i.a, align 8, !tbaa !35
  br i1 %i.d, label %._crit_edge.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #39 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !391
  %i.h = load i64, ptr %i.a, align 8, !tbaa !35
  store i64 %i.h, ptr %i.e, align 8, !tbaa !40
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ @.str.60, %bb.a ], [ @.str.61, %bb.b ]
  %i.j = phi ptr [ %i.e, %bb.a ], [ %i.g, %bb.b ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.j, ptr noundef nonnull align 1 dereferenceable(12) %i.i, i64 %i.f, i1 false)
  %i.k = load i64, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !370
  %i.m = load ptr, ptr %0, align 8, !tbaa !391
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK4llvm14AAMustProgress7getNameEv(ptr noundef nonnull align 8 dereferenceable(90) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.62, i64 14 }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm14AAMustProgress9getIdAddrEv(ptr noundef nonnull align 8 dereferenceable(90) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr @_ZN4llvm14AAMustProgress2IDE
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm11IRAttributeILNS_9Attribute8AttrKindE20ENS_12StateWrapperINS_12BooleanStateENS_17AbstractAttributeEJEEENS_14AAMustProgressEE8manifestERNS_10AttributorE(ptr noundef nonnull align 8 dereferenceable(90) %0, ptr noundef nonnull align 8 dereferenceable(3312) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.565", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK4llvm10IRPosition18getAssociatedValueEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = load i8, ptr %i.b, align 8, !tbaa !106
  %spec.select.i.i.i.i.i.i = icmp ult i8 %i.c, 2
  br i1 %spec.select.i.i.i.i.i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.e, align 8, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12
end_hunk_1
