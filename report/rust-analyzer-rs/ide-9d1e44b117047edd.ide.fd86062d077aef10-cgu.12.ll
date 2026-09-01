Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide-9d1e44b117047edd.ide.fd86062d077aef10-cgu.12?download=true
inline.NumInlined: 3012
inline.NumDeleted: 1056
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RNvNtCslLuZgPVt6hg_3ide15goto_definition32try_filter_trait_item_definition:bb.a

bb.l:                                             ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldRNtCs8Xq8PKFYOms_3hir9AssocItemuINtNtNtBa_3ops12control_flow11ControlFlowINtNtCslLuZgPVt6hg_3ide17navigation_target15UpmappingResultNtB2j_16NavigationTargetEENCNvNtB2l_15goto_definition32try_filter_trait_item_definition0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B2g_NCB3F_s_0E0E0B2l_.exit.thread.i, %.lr.ph.i
  %i.aa = phi ptr [ %i.v, %.lr.ph.i ], [ %i.ab, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldRNtCs8Xq8PKFYOms_3hir9AssocItemuINtNtNtBa_3ops12control_flow11ControlFlowINtNtCslLuZgPVt6hg_3ide17navigation_target15UpmappingResultNtB2j_16NavigationTargetEENCNvNtB2l_15goto_definition32try_filter_trait_item_definition0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B2g_NCB3F_s_0E0E0B2l_.exit.thread.i ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 12 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2464)
  %i.ac = load i8, ptr %i.aa, align 4, !range !1654, !alias.scope !2464, !noalias !2467, !noundef !4
  %i.ad = icmp eq i8 %i.ac, %i.n
  br i1 %i.ad, label %bb.m, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldRNtCs8Xq8PKFYOms_3hir9AssocItemuINtNtNtBa_3ops12control_flow11ControlFlowINtNtCslLuZgPVt6hg_3ide17navigation_target15UpmappingResultNtB2j_16NavigationTargetEENCNvNtB2l_15goto_definition32try_filter_trait_item_definition0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B2g_NCB3F_s_0E0E0B2l_.exit.thread.i

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  %i.ae = invoke noundef ptr @_RNvMs10_Cs8Xq8PKFYOms_3hirNtB6_9AssocItem4name(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.aa, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @28)
          to label %.noexc unwind label %.loopexit ; 5 uses

.noexc:                                           ; preds = %bb.m
  %.not.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldRNtCs8Xq8PKFYOms_3hir9AssocItemuINtNtNtBa_3ops12control_flow11ControlFlowINtNtCslLuZgPVt6hg_3ide17navigation_target15UpmappingResultNtB2j_16NavigationTargetEENCNvNtB2l_15goto_definition32try_filter_trait_item_definition0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B2g_NCB3F_s_0E0E0B2l_.exit.thread13.i, label %bb.n

bb.n:                                             ; preds = %.noexc
  %i.af = icmp eq ptr %i.ae, %i.s
  br i1 %i.af, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2474
  invoke void @_RNvXsm_NtCslLuZgPVt6hg_3ide17navigation_targetNtCs8Xq8PKFYOms_3hir9AssocItemNtB5_8TryToNav10try_to_nav(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.aa, ptr noundef nonnull align 8 %1)
          to label %bb.t unwind label %bb.s, !noalias !2483

bb.p:                                             ; preds = %bb.t, %bb.n
  %.sroa.0.0.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i, %bb.t ], [ -2, %bb.n ] ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = and i64 %i.ag, 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNCNvNtCslLuZgPVt6hg_3ide15goto_definition32try_filter_trait_item_definitions_0B5_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ai = getelementptr i8, ptr %i.ae, i64 -1     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.aj = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCslLuZgPVt6hg_3ide(ptr noundef nonnull %i.ai)
          to label %.noexc27 unwind label %.loopexit

.noexc27:                                         ; preds = %bb.q
  %i.ak = sub nsw i64 0, %i.aj
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 %i.ak ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2474
  store ptr %i.al, ptr %i.d, align 8, !noalias !2474
  %i.am = load atomic i64, ptr %i.al acquire, align 8, !noalias !2483
  %i.an = icmp eq i64 %i.am, 2
  br i1 %i.an, label %bb.r, label %.noexc28, !prof !12

bb.r:                                             ; preds = %.noexc27
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %.noexc28 unwind label %.loopexit

.noexc28:                                         ; preds = %bb.r, %.noexc27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2474
  store ptr %i.al, ptr %i.c, align 8, !noalias !2474
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc29 unwind label %.loopexit

.noexc29:                                         ; preds = %.noexc28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2474
  br label %_RNCNvNtCslLuZgPVt6hg_3ide15goto_definition32try_filter_trait_item_definitions_0B5_.exit.i.i.i

bb.s:                                             ; preds = %bb.o
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECslLuZgPVt6hg_3ide(ptr nonnull %i.ae) #46
          to label %.body unwind label %bb.u, !noalias !2483

bb.t:                                             ; preds = %bb.o
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.e, align 8, !noalias !2484
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.7.0..sroa_idx2.i.i.i, i64 152, i1 false), !noalias !2484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2474
  br label %bb.p

bb.u:                                             ; preds = %bb.s
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47, !noalias !2483
  unreachable

_RNCNvNtCslLuZgPVt6hg_3ide15goto_definition32try_filter_trait_item_definitions_0B5_.exit.i.i.i: ; preds = %.noexc29, %bb.p
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.i.i.i, -2
  br i1 %.not.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldRNtCs8Xq8PKFYOms_3hir9AssocItemuINtNtNtBa_3ops12control_flow11ControlFlowINtNtCslLuZgPVt6hg_3ide17navigation_target15UpmappingResultNtB2j_16NavigationTargetEENCNvNtB2l_15goto_definition32try_filter_trait_item_definition0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B2g_NCB3F_s_0E0E0B2l_.exit.thread13.i, label %bb.v

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldRNtCs8Xq8PKFYOms_3hir9AssocItemuINtNtNtBa_3ops12control_flow11ControlFlowINtNtCslLuZgPVt6hg_3ide17navigation_target15UpmappingResultNtB2j_16NavigationTargetEENCNvNtB2l_15goto_definition32try_filter_trait_item_definition0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B2g_NCB3F_s_0E0E0B2l_.exit.thread13.i: ; preds = %_RNCNvNtCslLuZgPVt6hg_3ide15goto_definition32try_filter_trait_item_definitions_0B5_.exit.i.i.i, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldRNtCs8Xq8PKFYOms_3hir9AssocItemuINtNtNtBa_3ops12control_flow11ControlFlowINtNtCslLuZgPVt6hg_3ide17navigation_target15UpmappingResultNtB2j_16NavigationTargetEENCNvNtB2l_15goto_definition32try_filter_trait_item_definition0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B2g_NCB3F_s_0E0E0B2l_.exit.thread.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldRNtCs8Xq8PKFYOms_3hir9AssocItemuINtNtNtBa_3ops12control_flow11ControlFlowINtNtCslLuZgPVt6hg_3ide17navigation_target15UpmappingResultNtB2j_16NavigationTargetEENCNvNtB2l_15goto_definition32try_filter_trait_item_definition0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B2g_NCB3F_s_0E0E0B2l_.exit.thread.i: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldRNtCs8Xq8PKFYOms_3hir9AssocItemuINtNtNtBa_3ops12control_flow11ControlFlowINtNtCslLuZgPVt6hg_3ide17navigation_target15UpmappingResultNtB2j_16NavigationTargetEENCNvNtB2l_15goto_definition32try_filter_trait_item_definition0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B2g_NCB3F_s_0E0E0B2l_.exit.thread13.i, %bb.l
  %i.aq = icmp eq ptr %i.ab, %i.y
  br i1 %i.aq, label %.loopexit49, label %bb.l

.loopexit:                                        ; preds = %bb.m, %bb.q, %bb.r, %.noexc28
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.v, %bb.aa
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.s
  %eh.lpad-body = phi { ptr, i32 } [ %i.ao, %bb.s ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir9AssocItemEECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #46
          to label %.body34 unwind label %bb.af

bb.v:                                             ; preds = %_RNCNvNtCslLuZgPVt6hg_3ide15goto_definition32try_filter_trait_item_definitions_0B5_.exit.i.i.i
  %.sroa.69.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.69.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.7.i.i.i, i64 152, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  store i64 %.sroa.0.0.i.i.i, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvXsy_NtCslLuZgPVt6hg_3ide17navigation_targetINtB5_15UpmappingResultNtB5_16NavigationTargetENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterB7_(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %i.h)
          to label %bb.aa unwind label %.loopexit.split-lp

.loopexit49:                                      ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldRNtCs8Xq8PKFYOms_3hir9AssocItemuINtNtNtBa_3ops12control_flow11ControlFlowINtNtCslLuZgPVt6hg_3ide17navigation_target15UpmappingResultNtB2j_16NavigationTargetEENCNvNtB2l_15goto_definition32try_filter_trait_item_definition0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B2g_NCB3F_s_0E0E0B2l_.exit.thread.i, %bb.k
  store i64 -1, ptr %0, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.ab, %.loopexit49
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtCs8Xq8PKFYOms_3hir9AssocItemENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir9AssocItemENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body34 unwind label %bb.z

bb.y:                                             ; preds = %bb.w
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtCs8Xq8PKFYOms_3hir9AssocItemENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir9AssocItemEECslLuZgPVt6hg_3ide.exit unwind label %bb.j

bb.z:                                             ; preds = %bb.x
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.aa:                                            ; preds = %bb.v
  invoke void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEINtB2_18SpecFromIterNestedB11_INtNtCs474hSbRjvii_8arrayvec8arrayvec8IntoIterB11_Kj2_EE9from_iterB15_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(176) %i.f)
          to label %bb.ab unwind label %.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.w

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir9AssocItemEECslLuZgPVt6hg_3ide.exit: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.at = ptrtoint ptr %i.s to i64
  %i.au = and i64 %i.at, 1
  %.not.i.i.i.i36 = icmp eq i64 %i.au, 0
  br i1 %.not.i.i.i.i36, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECslLuZgPVt6hg_3ide.exit, label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs8Xq8PKFYOms_3hir9AssocItemEECslLuZgPVt6hg_3ide.exit
  %i.av = getelementptr i8, ptr %i.s, i64 -1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  %i.aw = call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCslLuZgPVt6hg_3ide(ptr noundef nonnull %i.av)
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = getelementptr inbounds i8, ptr %i.av, i64 %i.ax ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ay, ptr %i.b, align 8
  %i.az = load atomic i64, ptr %i.ay acquire, align 8
  %i.ba = icmp eq i64 %i.az, 2
  br i1 %i.ba, label %bb.ad, label %bb.ae, !prof !12

bb.ad:                                            ; preds = %bb.ac
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ay, ptr %i.a, align 8
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECslLuZgPVt6hg_3ide.exit

bb.af:                                            ; preds = %.body34, %.body
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.ag:                                            ; preds = %.body34
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCslLuZgPVt6hg_3ide20goto_type_definition20goto_type_definition(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.i.i.i = alloca ptr, align 8            ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 10 uses
  %i.f = alloca [88 x i8], align 8                ; 17 uses
  %i.g = alloca [1 x i8], align 1                 ; 3 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [40 x i8], align 8                ; 14 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 12 uses
  %i.m = alloca [160 x i8], align 8               ; 6 uses
  %i.n = alloca [40 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [32 x i8], align 8                ; 4 uses
  %i.q = alloca [48 x i8], align 8                ; 9 uses
  %.sroa.069 = alloca ptr, align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = alloca [80 x i8], align 8                ; 7 uses
  %i.t = alloca [16 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 10 uses
  %i.v = alloca [24 x i8], align 8                ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [272 x i8], align 8               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) @48, i64 32, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) @48, i64 32, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) @48, i64 32, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) @48, i64 32, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) @48, i64 32, i1 false)
  store ptr %1, ptr %i.x, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  store ptr %1, ptr %i.ac, align 8
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr @28, ptr %.sroa.482.0..sroa_idx, align 8
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 0, ptr %.sroa.583.0..sroa_idx, align 8
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.684.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(160) %i.m, i64 160, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 192
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @48, i64 32, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 232
  store i64 0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @48, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.ad = invoke noundef nonnull ptr @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl19parse_guess_edition(ptr noundef nonnull align 8 %i.ac, i32 noundef %2)
          to label %bb.c unwind label %bb.b       ; 6 uses

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileECslLuZgPVt6hg_3ide.exit: ; preds = %.body, %bb.d, %bb.b
  %.pn16 = phi { ptr, i32 } [ %i.ae, %bb.b ], [ %.pn14, %bb.d ], [ %.pn14, %.body ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8Xq8PKFYOms_3hir9semantics9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseEECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(272) %i.x) #46
          to label %bb.cp unwind label %bb.ax

bb.b:                                             ; preds = %.invoke, %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileECslLuZgPVt6hg_3ide.exit

bb.c:                                             ; preds = %bb.a
  store ptr %i.ad, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @_RNvMs4_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_10SyntaxNode15token_at_offset(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.w, i32 noundef %3)
          to label %bb.f unwind label %bb.e

.body:                                            ; preds = %bb.cn, %bb.co, %bb.t, %bb.u, %.body.thread.i.i, %bb.e, %bb.cm
  %.pn14 = phi { ptr, i32 } [ %.pn101, %bb.cm ], [ %eh.lpad-body13.i.i, %.body.thread.i.i ], [ %i.aj, %bb.e ], [ %i.bf, %bb.t ], [ %i.bf, %bb.u ], [ %.pn100118, %bb.co ], [ %.pn100118, %bb.cn ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !noundef !4
  %i.ah = add i32 %i.ag, -1                       ; 2 uses
  store i32 %i.ah, ptr %i.af, align 4
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileECslLuZgPVt6hg_3ide.exit

bb.d:                                             ; preds = %.body
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ad) #48
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileECslLuZgPVt6hg_3ide.exit unwind label %bb.ax

bb.e:                                             ; preds = %bb.aw, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4.sink.split.i.i, %bb.o, %bb.f, %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.f:                                             ; preds = %bb.c
  invoke void @_RINvMs2_NtCs9GitHPCrz2Q_5rowan13utility_typesINtB6_13TokenAtOffsetNtNtB8_6cursor11SyntaxTokenE3mapNvYINtNtB8_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtCshzWfHUSfYae_4core7convert4FromB12_E4fromB1B_ECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2485
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.v, i64 24, i1 false), !alias.scope !2488
  %i.ak = invoke noundef ptr @_RNvXs3_NtCs9GitHPCrz2Q_5rowan13utility_typesINtB5_13TokenAtOffsetINtNtB7_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.noexc.i.i unwind label %.body.thread14.i.i, !noalias !2485 ; 5 uses

.body.thread14.i.i:                               ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i

.noexc.i.i:                                       ; preds = %bb.g
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %bb.p, label %bb.h

bb.h:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2492
  store ptr %i.ak, ptr %i.j, align 8, !noalias !2492
  %i.am = invoke noundef i16 @_RNvMs5_NtCs9GitHPCrz2Q_5rowan3apiINtB5_11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageE4kindCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j)
          to label %.noexc.i.i.i.i unwind label %bb.l, !noalias !2485

.noexc.i.i.i.i:                                   ; preds = %bb.h
  switch i16 %i.am, label %bb.k [
    i16 86, label %bb.o
    i16 148, label %bb.o
    i16 153, label %bb.o
    i16 150, label %bb.i
    i16 157, label %bb.i
    i16 3, label %bb.j
  ]

bb.i:                                             ; preds = %.noexc.i.i.i.i, %.noexc.i.i.i.i
  br label %bb.o

bb.j:                                             ; preds = %.noexc.i.i.i.i
  br label %bb.o

bb.k:                                             ; preds = %.noexc.i.i.i.i
  br label %bb.o

bb.l:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !noalias !2485, !noundef !4
  %i.aq = add i32 %i.ap, -1                       ; 2 uses
  store i32 %i.aq, ptr %i.ao, align 4, !noalias !2485
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.m, label %.body.thread.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ak) #48
          to label %.body.thread.i.i unwind label %bb.n, !noalias !2485

bb.n:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47, !noalias !2485
  unreachable

bb.o:                                             ; preds = %bb.k, %bb.j, %bb.i, %.noexc.i.i.i.i, %.noexc.i.i.i.i, %.noexc.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ 2, %bb.k ], [ 1, %bb.j ], [ 0, %bb.i ], [ 3, %.noexc.i.i.i.i ], [ 3, %.noexc.i.i.i.i ], [ 3, %.noexc.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2497
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !2485
  %i.at = invoke { i64, ptr } @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtCs9GitHPCrz2Q_5rowan13utility_types13TokenAtOffsetINtNtB12_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyB1Q_jNCINvNtCs6oosyzwIepl_6ide_db7helpers15pick_best_tokenNCNvNtCslLuZgPVt6hg_3ide20goto_type_definition20goto_type_definition0E0E0EB3f_4foldTjB1Q_ENCINvNvB3f_6max_by4foldB6k_INvB3d_7compareB1Q_jEE0EB55_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.k, i64 noundef %.sroa.0.0.i.i.i.i.i.i, ptr noundef nonnull %i.ak)
          to label %bb.x unwind label %bb.e

bb.p:                                             ; preds = %.noexc.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2498)
  %i.au = load i64, ptr %i.l, align 8, !range !56, !alias.scope !2498, !noalias !2485, !noundef !4
  switch i64 %i.au, label %bb.q [
    i64 0, label %.thread
    i64 1, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val3.i.i = load ptr, ptr %i.av, align 8, !alias.scope !2498, !noalias !2485, !nonnull !4, !noundef !4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 48 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !noalias !2501, !noundef !4
  %i.ay = add i32 %i.ax, -1                       ; 2 uses
  store i32 %i.ay, ptr %i.aw, align 4, !noalias !2501
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.r, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3.i.i) #48
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i.i unwind label %bb.t, !noalias !2501

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4.sink.split.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i.i, %bb.s
  %.val.sink.i.i = phi ptr [ %.val2.i.i, %bb.s ], [ %.val.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i.i ]
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.sink.i.i) #48
          to label %.thread unwind label %bb.e

bb.s:                                             ; preds = %bb.p
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val2.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !2498, !noalias !2485, !nonnull !4, !noundef !4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 48 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !noalias !2501, !noundef !4
  %i.bd = add i32 %i.bc, -1                       ; 2 uses
  store i32 %i.bd, ptr %i.bb, align 4, !noalias !2501
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4.sink.split.i.i, label %.thread

bb.t:                                             ; preds = %bb.r
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.val1.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !2498, !noalias !2485, !nonnull !4, !noundef !4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !noalias !2501, !noundef !4
  %i.bj = add i32 %i.bi, -1                       ; 2 uses
  store i32 %i.bj, ptr %i.bh, align 4, !noalias !2501
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.u, label %.body

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val1.i.i) #48
          to label %.body unwind label %bb.v, !noalias !2501

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i.i: ; preds = %bb.r, %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.val.i.i = load ptr, ptr %i.bl, align 8, !alias.scope !2498, !noalias !2485, !nonnull !4, !noundef !4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 48 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !noalias !2501, !noundef !4
  %i.bo = add i32 %i.bn, -1                       ; 2 uses
  store i32 %i.bo, ptr %i.bm, align 4, !noalias !2501
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4.sink.split.i.i, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47, !noalias !2501
  unreachable

.body.thread.i.i:                                 ; preds = %bb.m, %bb.l, %.body.thread14.i.i
  %eh.lpad-body13.i.i = phi { ptr, i32 } [ %i.al, %.body.thread14.i.i ], [ %i.an, %bb.m ], [ %i.an, %bb.l ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types13TokenAtOffsetINtNtBG_3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.l)
          to label %.body unwind label %bb.w, !noalias !2485

bb.w:                                             ; preds = %.body.thread.i.i
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47, !noalias !2485
  unreachable

.thread:                                          ; preds = %bb.p, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit.i.i, %bb.s, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit4.sink.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.aa

bb.x:                                             ; preds = %bb.o
  %i.bs = extractvalue { i64, ptr } %i.at, 1      ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %.not = icmp eq ptr %i.bs, null
  br i1 %.not, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 0, ptr %i.u, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 0, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.x, ptr %i.t, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.u, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 48 ; 6 uses
  %i.bx = load i32, ptr %i.bw, align 4, !noundef !4 ; 2 uses
  %i.by = icmp eq i32 %i.bx, -1
  br i1 %i.by, label %bb.z, label %bb.ab, !prof !12

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #44
          to label %.noexc33 unwind label %.thread110

.noexc33:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %.thread, %bb.x
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtB1K_9HirFileIdENtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringIBC_INtCs83ee1IJTiSq_6either6EitherNtNtCs8Xq8PKFYOms_3hir9semantics14PathResolutionNtB4n_16InlineAsmOperandEEEEECslLuZgPVt6hg_3ide.exit47, %bb.aw, %bb.aa
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !noundef !4
  %i.cb = add i32 %i.ca, -1                       ; 2 uses
  store i32 %i.cb, ptr %i.bz, align 4
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %.invoke, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileECslLuZgPVt6hg_3ide.exit64

.thread110:                                       ; preds = %bb.bc, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1g_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEj1_EECslLuZgPVt6hg_3ide.exit.i, %bb.bh, %bb.bg, %bb.bf, %bb.ab, %bb.z, %bb.ba
  %.sroa.07.1.ph = phi i1 [ true, %bb.ba ], [ true, %bb.z ], [ true, %bb.ab ], [ true, %bb.bc ], [ true, %bb.bf ], [ false, %bb.bg ], [ false, %bb.bh ], [ false, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1g_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEj1_EECslLuZgPVt6hg_3ide.exit.i ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread93

.thread114:                                       ; preds = %bb.av
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.ab:                                            ; preds = %bb.y
  %i.cd = add nuw i32 %i.bx, 1
  store i32 %i.cd, ptr %i.bw, align 4
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl30check_for_format_args_template(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.s, ptr noundef nonnull align 8 %i.ac, ptr noundef nonnull %i.bs, i32 noundef %3)
          to label %bb.ac unwind label %.thread110

bb.ac:                                            ; preds = %bb.ab
  %i.ce = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.cf = load i32, ptr %i.ce, align 8, !range !143, !noundef !4
  %.not10 = icmp eq i32 %i.cf, 2
  br i1 %.not10, label %bb.ay, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cg = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ch = load <2 x i32>, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %.sroa.03.0.copyload = load i32, ptr %i.ci, align 8 ; 2 uses
  %.not11 = icmp eq i32 %.sroa.03.0.copyload, 2
  br i1 %.not11, label %bb.au, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 44
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.5.0..sroa_idx, i64 36, i1 false)
  store i32 %.sroa.03.0.copyload, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvXs4_NtCs6oosyzwIepl_6ide_db4defsNtB5_10DefinitionINtNtCshzWfHUSfYae_4core7convert4FromINtCs83ee1IJTiSq_6either6EitherNtNtCs8Xq8PKFYOms_3hir9semantics14PathResolutionNtB1Y_16InlineAsmOperandEE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.n)
          to label %.noexc37 unwind label %bb.an

.noexc37:                                         ; preds = %bb.ae
  %i.cj = load i8, ptr %i.i, align 8, !range !1438, !noalias !2502, !noundef !4
  switch i8 %i.cj, label %bb.af [
    i8 6, label %bb.ag
    i8 8, label %bb.ah
    i8 9, label %bb.ai
    i8 13, label %bb.aj
    i8 14, label %bb.ak
  ]

bb.af:                                            ; preds = %bb.aj, %bb.ag, %.noexc37
  %i.ck = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 -1, ptr %i.ck, align 8
  br label %bb.ap

bb.ag:                                            ; preds = %.noexc37
  %i.cl = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !range !143, !noalias !2502, !noundef !4
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.al, label %bb.af

bb.ah:                                            ; preds = %.noexc37
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !range !1966, !noalias !2502, !noundef !4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.cr = load i32, ptr %i.cq, align 8, !noalias !2502, !noundef !4
  invoke void @_RNvMsy_Cs8Xq8PKFYOms_3hirNtB5_5Const2ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, i32 noundef %i.cp, i32 noundef %i.cr, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @28)
          to label %bb.ap unwind label %bb.an

bb.ai:                                            ; preds = %.noexc37
  %i.cs = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !range !1966, !noalias !2502, !noundef !4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.cv = load i32, ptr %i.cu, align 8, !noalias !2502, !noundef !4
  invoke void @_RNvMsB_Cs8Xq8PKFYOms_3hirNtB5_6Static2ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, i32 noundef %i.ct, i32 noundef %i.cv, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @28)
          to label %bb.ap unwind label %bb.an

bb.aj:                                            ; preds = %.noexc37
  %i.cw = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !range !143, !noalias !2502, !noundef !4
  %i.cy = icmp eq i32 %i.cx, 1
  br i1 %i.cy, label %bb.am, label %bb.af

bb.ak:                                            ; preds = %.noexc37
  %i.cz = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  invoke void @_RNvMs15_Cs8Xq8PKFYOms_3hirNtB6_5Local2ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %i.cz, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @28)
          to label %bb.ap unwind label %bb.an

bb.al:                                            ; preds = %bb.ag
  %i.da = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.db = load i32, ptr %i.da, align 8, !range !1966, !noalias !2502, !noundef !4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.dd = load i32, ptr %i.dc, align 4, !noalias !2502, !noundef !4
  invoke void @_RNvMsa_Cs8Xq8PKFYOms_3hirNtB5_6Struct2ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, i32 noundef %i.db, i32 noundef %i.dd, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @28)
          to label %bb.ap unwind label %bb.an

bb.am:                                            ; preds = %bb.aj
  %i.de = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  invoke void @_RNvMs1h_Cs8Xq8PKFYOms_3hirNtB6_10ConstParam2ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.de, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @28)
          to label %bb.ap unwind label %bb.an

bb.an:                                            ; preds = %bb.ae, %bb.ah, %bb.ai, %bb.ak, %bb.al, %bb.am, %bb.as
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val25 = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.val25, i64 48 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !noundef !4
  %i.di = add i32 %i.dh, -1                       ; 2 uses
  store i32 %i.di, ptr %i.dg, align 4
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.ao, label %.thread93

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val25) #48
          to label %.thread93 unwind label %bb.ax

bb.ap:                                            ; preds = %bb.af, %bb.ah, %bb.ai, %bb.ak, %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 8, !range !2391, !noundef !4
  %.not12 = icmp eq i32 %i.dl, -1
  br i1 %.not12, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.sroa.072.0.copyload = load ptr, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.069)
  store ptr %.sroa.072.0.copyload, ptr %.sroa.069, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2506
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %bb.aq
  %.sroa.02.0.in.i = phi ptr [ %.sroa.069, %bb.aq ], [ %.sroa.51.0..sroa_idx.i, %bb.ar ]
  %.sroa.02.0.i = load ptr, ptr %.sroa.02.0.in.i, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.0.0.copyload.i = load i32, ptr %.sroa.02.0.i, align 8, !noalias !2506 ; 2 uses
  %i.dm = icmp ne i32 %.sroa.0.0.copyload.i, 27
  call void @llvm.assume(i1 %i.dm)
  %i.dn = icmp eq i32 %.sroa.0.0.copyload.i, 14
  %.sroa.51.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i, i64 16
  br i1 %i.dn, label %bb.ar, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.do = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.do, ptr noundef nonnull align 8 dereferenceable(12) %i.dk, i64 12, i1 false)
  store ptr %.sroa.02.0.i, ptr %i.h, align 8, !noalias !2506
  invoke void @_RINvMs1x_Cs8Xq8PKFYOms_3hirNtB7_4Type4walkNCNCNvNtCslLuZgPVt6hg_3ide20goto_type_definition20goto_type_definitions0_00EBM_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @28, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 %1)
          to label %bb.at unwind label %bb.an

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2506
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.069)
  br label %bb.au

bb.au:                                            ; preds = %bb.ap, %bb.ad, %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i32> %i.ch, ptr %.sroa.476.0..sroa_idx, align 8
  %.val23 = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.val23, i64 48 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !noundef !4
  %i.dr = add i32 %i.dq, -1                       ; 2 uses
  store i32 %i.dr, ptr %i.dp, align 4
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.av, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtB1K_9HirFileIdENtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringIBC_INtCs83ee1IJTiSq_6either6EitherNtNtCs8Xq8PKFYOms_3hir9semantics14PathResolutionNtB4n_16InlineAsmOperandEEEEECslLuZgPVt6hg_3ide.exit47

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val23) #48
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtB1K_9HirFileIdENtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringIBC_INtCs83ee1IJTiSq_6either6EitherNtNtCs8Xq8PKFYOms_3hir9semantics14PathResolutionNtB4n_16InlineAsmOperandEEEEECslLuZgPVt6hg_3ide.exit47 unwind label %.thread114

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtB1K_9HirFileIdENtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringIBC_INtCs83ee1IJTiSq_6either6EitherNtNtCs8Xq8PKFYOms_3hir9semantics14PathResolutionNtB4n_16InlineAsmOperandEEEEECslLuZgPVt6hg_3ide.exit47: ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.dt = load i32, ptr %i.bw, align 4, !noundef !4
  %i.du = add i32 %i.dt, -1                       ; 2 uses
  store i32 %i.du, ptr %i.bw, align 4
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.aw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit

bb.aw:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsuAhG64lL82_9text_size5range9TextRangeINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtB1K_9HirFileIdENtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated6tokens6StringIBC_INtCs83ee1IJTiSq_6either6EitherNtNtCs8Xq8PKFYOms_3hir9semantics14PathResolutionNtB4n_16InlineAsmOperandEEEEECslLuZgPVt6hg_3ide.exit47
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bs) #48
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit unwind label %bb.e

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileECslLuZgPVt6hg_3ide.exit64: ; preds = %.invoke, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs8Xq8PKFYOms_3hir9semantics9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseEECslLuZgPVt6hg_3ide(ptr noalias nofree noundef align 8 dereferenceable(272) %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  ret void

bb.ax:                                            ; preds = %bb.co, %bb.ao, %bb.d, %.thread93, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileECslLuZgPVt6hg_3ide.exit
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.ay:                                            ; preds = %bb.ac
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bs, i64 60
  %i.dy = load i8, ptr %i.dx, align 4, !range !55, !noundef !4
  %i.dz = trunc nuw i8 %i.dy to i1
  br i1 %i.dz, label %bb.ba, label %bb.az, !prof !12

bb.az:                                            ; preds = %bb.ay
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  %i.eb = load i32, ptr %i.ea, align 8, !noundef !4
  br label %.noexc50

bb.ba:                                            ; preds = %bb.ay
  %i.ec = invoke noundef i32 @_RNvMs3_NtCs9GitHPCrz2Q_5rowan6cursorNtB5_8NodeData10offset_mut(ptr noundef nonnull align 8 %i.bs)
          to label %.noexc50 unwind label %.thread110

.noexc50:                                         ; preds = %bb.ba, %bb.az
  %.sroa.0.0.i = phi i32 [ %i.eb, %bb.az ], [ %i.ec, %bb.ba ] ; 3 uses
  %i.ed = load i64, ptr %i.bs, align 8, !range !16, !noundef !4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.ef = trunc nuw i64 %i.ed to i1
  %i.eg = load ptr, ptr %i.ee, align 8, !nonnull !4, !noundef !4 ; 2 uses
  br i1 %i.ef, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %.noexc50
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !noundef !4 ; 2 uses
  %i.ej = icmp ugt i64 %i.ei, 4294967295
  %i.ek = shl nuw i64 %i.ei, 32
  %.sroa.09.0.insert.insert.i.i = select i1 %i.ej, i64 513, i64 %i.ek ; 2 uses
  %i.el = trunc i64 %.sroa.09.0.insert.insert.i.i to i1
  br i1 %i.el, label %bb.bc, label %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i, !prof !12

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 2, ptr %i.g, align 1
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @41, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #45
          to label %.noexc51 unwind label %.thread110

.noexc51:                                         ; preds = %bb.bc
  unreachable

_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i: ; preds = %bb.bb
  %.sroa.6.0.extract.shift.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i to i32
  br label %bb.be

bb.bd:                                            ; preds = %.noexc50
  %i.em = load i32, ptr %i.eg, align 8, !noundef !4
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i
  %.sroa.02.0.i49 = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i, %_RNvXs_NtCsuAhG64lL82_9text_size6traitsReNtB4_7TextLen8text_len.exit.i ], [ %i.em, %bb.bd ]
  %i.en = add i32 %.sroa.02.0.i49, %.sroa.0.0.i   ; 2 uses
  %.not.i = icmp ugt i32 %.sroa.0.0.i, %i.en
  br i1 %.not.i, label %bb.bf, label %bb.bg, !prof !12

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #45
          to label %.noexc52 unwind label %.thread110

.noexc52:                                         ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5_13SemanticsImpl29descend_into_macros_no_opaque(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.p, ptr noundef nonnull align 8 %i.ac, ptr noundef nonnull %i.bs, i1 noundef zeroext false)
          to label %bb.bh unwind label %.thread110

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvXsM_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBN_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.p)
          to label %bb.bi unwind label %.thread110

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !2509)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.eq = load i64, ptr %i.eo, align 8, !alias.scope !2512, !noalias !2515, !noundef !4 ; 2 uses
  %i.er = load i64, ptr %i.ep, align 8, !alias.scope !2512, !noalias !2515, !noundef !4 ; 2 uses
  %i.es = icmp eq i64 %i.eq, %i.er
  br i1 %i.es, label %_RNvXsH_Csjpcu9PwIgok_8smallvecINtB5_8IntoIterAINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBN_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit.thread.i, label %_RNvXsH_Csjpcu9PwIgok_8smallvecINtB5_8IntoIterAINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBN_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit.lr.ph.i

_RNvXsH_Csjpcu9PwIgok_8smallvecINtB5_8IntoIterAINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBN_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit.lr.ph.i: ; preds = %bb.bi
  %i.et = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.f, i64 81
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.62.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ew = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 7 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.7.0..sroa_idx45.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.ey = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.0..sroa_idx5.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.fa = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.766.0..sroa_idx67.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.pre = load i64, ptr %i.q, align 8, !alias.scope !2518, !noalias !2521
  %.pre120 = load ptr, ptr %i.et, align 8, !alias.scope !2518, !noalias !2521
  %i.fe = icmp ugt i64 %.pre, 1
  %.sink11.i.i.i = select i1 %i.fe, ptr %.pre120, ptr %i.et
  br label %_RNvXsH_Csjpcu9PwIgok_8smallvecINtB5_8IntoIterAINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBN_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit.i

bb.bj:                                            ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callNtCs8Xq8PKFYOms_3hir4TypeNCNvNtCslLuZgPVt6hg_3ide20goto_type_definition20goto_type_definitions0_0E0B1K_.exit.i.i, %bb.cg, %_RNCNvNtCslLuZgPVt6hg_3ide20goto_type_definition20goto_type_definitions2_0B5_.exit.thread.i.i, %bb.bk
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.body.i.i.i, %bb.bj
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ff, %bb.bj ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1g_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEj1_EECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.q) #46
          to label %.thread93 unwind label %bb.ck, !noalias !2523

_RNvXsH_Csjpcu9PwIgok_8smallvecINtB5_8IntoIterAINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBN_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit.i: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1f_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtCs8Xq8PKFYOms_3hir4TypeuNCNvNtCslLuZgPVt6hg_3ide20goto_type_definition20goto_type_definitions2_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3O_NCB4g_s0_0E0E0B4k_.exit.i, %_RNvXsH_Csjpcu9PwIgok_8smallvecINtB5_8IntoIterAINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBN_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit.lr.ph.i
  %i.fg = phi i64 [ %i.eq, %_RNvXsH_Csjpcu9PwIgok_8smallvecINtB5_8IntoIterAINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBN_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit.lr.ph.i ], [ %i.fh, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1f_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtCs8Xq8PKFYOms_3hir4TypeuNCNvNtCslLuZgPVt6hg_3ide20goto_type_definition20goto_type_definitions2_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3O_NCB4g_s0_0E0E0B4k_.exit.i ] ; 2 uses
  %i.fh = add i64 %i.fg, 1                        ; 3 uses
  store i64 %i.fh, ptr %i.eo, align 8, !alias.scope !2512, !noalias !2515
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %.sink11.i.i.i, i64 %i.fg ; 2 uses
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %.sroa.5.0.copyload7.i = load i32, ptr %.sroa.5.0..sroa_idx6.i, align 8, !noalias !2523
  %.not.i56 = icmp eq i32 %.sroa.5.0.copyload7.i, 2
  br i1 %.not.i56, label %_RNvXsH_Csjpcu9PwIgok_8smallvecINtB5_8IntoIterAINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBN_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit.thread.i, label %bb.bk

bb.bk:                                            ; preds = %_RNvXsH_Csjpcu9PwIgok_8smallvecINtB5_8IntoIterAINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBN_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit.i
  %.sroa.0.0.copyload5.i = load i64, ptr %i.fi, align 8, !noalias !2523
  %i.fj = inttoptr i64 %.sroa.0.0.copyload5.i to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2524
  invoke void @_RNvMs5_NtCs8Xq8PKFYOms_3hir9semanticsINtB5_9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseE27token_ancestors_with_macrosCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.f, ptr noundef nonnull align 8 %i.x, ptr noundef nonnull %i.fj)
          to label %.noexc.i unwind label %bb.bj, !noalias !2530

end_hunk_0
begin_hunk_1_@_RNvNtCslLuZgPVt6hg_3ide20goto_type_definition20goto_type_definition:bb.a
  store ptr %i.x, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !2546
  store ptr %1, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !2546
  store ptr %i.eu, ptr %.sroa.62.0..sroa_idx.i.i.i.i, align 8, !noalias !2546
  call void @llvm.experimental.noalias.scope.decl(metadata !2547)
  %i.fk = load i32, ptr %i.ew, align 8, !range !331, !alias.scope !2550, !noalias !2551, !noundef !4
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.fk, -1
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB2h_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4X_13SemanticsImpl26ancestors_with_macros_file0ENCNvB4T_21ancestors_with_macros0EEECslLuZgPVt6hg_3ide.exit.i.i.i.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2554
  invoke void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBa_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1I_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4o_13SemanticsImpl26ancestors_with_macros_file0ENCNvB4k_21ancestors_with_macros0ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvXs0_NtB8_10take_whileINtB78_9TakeWhileppEB6e_8try_fold5checkB2J_uINtNtNtBc_3ops12control_flow11ControlFlowNtB4q_4TypeENCNCNvNtCslLuZgPVt6hg_3ide20goto_type_definition20goto_type_definitions2_00NCINvNvB6e_8find_map5checkB2J_B8M_NCB90_s_0E0E0IB88_B87_EEB96_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %.noexc.i.i.i unwind label %bb.cd, !noalias !2524

.noexc.i.i.i:                                     ; preds = %bb.bl
  call void @llvm.experimental.noalias.scope.decl(metadata !2555)
  %i.fl = load i32, ptr %i.ex, align 8, !range !2558, !alias.scope !2559, !noalias !2561, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.fl, -2
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bm, label %bb.bp

bb.bm:                                            ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2554
  %.val32.pr.i.i.i.i.i.i.i = load i32, ptr %i.ew, align 8, !alias.scope !2550, !noalias !2551
  %.val31.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !2550, !noalias !2551 ; 3 uses
  switch i32 %.val32.pr.i.i.i.i.i.i.i, label %bb.bn [
    i32 -1, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB2h_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4X_13SemanticsImpl26ancestors_with_macros_file0ENCNvB4T_21ancestors_with_macros0EEECslLuZgPVt6hg_3ide.exit.i.i.i.i.i.i.i
    i32 2, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB2h_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4X_13SemanticsImpl26ancestors_with_macros_file0ENCNvB4T_21ancestors_with_macros0EEECslLuZgPVt6hg_3ide.exit.i.i.i.i.i.i.i
  ]

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val31.i.i.i.i.i.i.i) ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.val31.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !noalias !2562, !noundef !4
  %i.fo = add i32 %i.fn, -1                       ; 2 uses
  store i32 %i.fo, ptr %i.fm, align 4, !noalias !2562
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.bo, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB2h_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4X_13SemanticsImpl26ancestors_with_macros_file0ENCNvB4T_21ancestors_with_macros0EEECslLuZgPVt6hg_3ide.exit.i.i.i.i.i.i.i

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val31.i.i.i.i.i.i.i) #48
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB2h_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4X_13SemanticsImpl26ancestors_with_macros_file0ENCNvB4T_21ancestors_with_macros0EEECslLuZgPVt6hg_3ide.exit.i.i.i.i.i.i.i unwind label %bb.bq, !noalias !2562

bb.bp:                                            ; preds = %.noexc.i.i.i
  %.sroa.0.0.copyload42.i.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !2563, !noalias !2554
  %.sroa.8.i.i.sroa.0.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx45.i.i.i.i.i.i.i, align 4, !noalias !2524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2554
  br label %bb.ce

bb.bq:                                            ; preds = %bb.bo
  %i.fq = landingpad { ptr, i32 }
          cleanup
  store i32 -1, ptr %i.ew, align 8, !alias.scope !2550, !noalias !2551
  br label %.body.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB2h_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4X_13SemanticsImpl26ancestors_with_macros_file0ENCNvB4T_21ancestors_with_macros0EEECslLuZgPVt6hg_3ide.exit.i.i.i.i.i.i.i: ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bm, %.noexc.i
  store i32 -1, ptr %i.ew, align 8, !alias.scope !2550, !noalias !2551
  call void @llvm.experimental.noalias.scope.decl(metadata !2564)
  %i.fr = load ptr, ptr %i.ey, align 8, !alias.scope !2567, !noalias !2568, !align !68, !noundef !4
  %.not.i33.i.i.i.i.i.i.i = icmp eq ptr %i.fr, null
  br i1 %.not.i33.i.i.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB2h_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4X_13SemanticsImpl26ancestors_with_macros_file0ENCNvB4T_21ancestors_with_macros0EEECslLuZgPVt6hg_3ide.exit37.i.i.i.i.i.i.i, label %bb.br

bb.br:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB2h_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4X_13SemanticsImpl26ancestors_with_macros_file0ENCNvB4T_21ancestors_with_macros0EEECslLuZgPVt6hg_3ide.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2572
  invoke void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtBc_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs5_NtCs8Xq8PKFYOms_3hir9semanticsINtB30_9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseE27token_ancestors_with_macros0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvMsg_NtB8_7flattenINtB5L_13FlattenCompatppE13iter_try_fold7flattenIBO_INtNtNtBa_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB7z_9HirFileIdB1l_ENCNvMs6_B30_NtB30_13SemanticsImpl26ancestors_with_macros_file0ENCNvB8J_21ancestors_with_macros0EuINtNtNtBc_3ops12control_flow11ControlFlowIBaf_NtB32_4TypeEENCINvNvXsi_B5L_B5Y_B4S_8try_fold7flattenB6K_uBae_NCINvNvXs0_NtB8_10take_whileINtBc9_9TakeWhileppEB4S_8try_fold5checkB1l_uBaT_NCNCNvNtCslLuZgPVt6hg_3ide20goto_type_definition20goto_type_definitions2_00NCINvNvB4S_8find_map5checkB1l_BaY_NCBde_s_0E0E0E0E0Bae_EBdk_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ey, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.f)
          to label %.noexc1.i.i.i unwind label %bb.cd, !noalias !2524

.noexc1.i.i.i:                                    ; preds = %bb.br
  call void @llvm.experimental.noalias.scope.decl(metadata !2573)
  %i.fs = load i32, ptr %i.ez, align 8, !range !2558, !alias.scope !2576, !noalias !2578, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.fs, -2
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.noexc1.i.i.i
  %.sroa.0.0.copyload2.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !2579, !noalias !2572
  %.sroa.8.i.i.sroa.0.0.copyload14.i.i = load i64, ptr %.sroa.7.0..sroa_idx5.i.i.i.i.i.i.i.i, align 4, !noalias !2524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2572
  br label %bb.ce

bb.bt:                                            ; preds = %.noexc1.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2572
  %.val30.pre.i.i.i.i.i.i.i = load i32, ptr %i.ew, align 8, !range !331, !alias.scope !2550, !noalias !2551
  %.val29.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !2550, !noalias !2551 ; 3 uses
  switch i32 %.val30.pre.i.i.i.i.i.i.i, label %bb.bu [
    i32 -1, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB2h_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4X_13SemanticsImpl26ancestors_with_macros_file0ENCNvB4T_21ancestors_with_macros0EEECslLuZgPVt6hg_3ide.exit37.i.i.i.i.i.i.i
    i32 2, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB2h_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4X_13SemanticsImpl26ancestors_with_macros_file0ENCNvB4T_21ancestors_with_macros0EEECslLuZgPVt6hg_3ide.exit37.i.i.i.i.i.i.i
  ]

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val29.i.i.i.i.i.i.i) ]
  %i.ft = getelementptr inbounds nuw i8, ptr %.val29.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !noalias !2562, !noundef !4
  %i.fv = add i32 %i.fu, -1                       ; 2 uses
  store i32 %i.fv, ptr %i.ft, align 4, !noalias !2562
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %bb.bv, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB2h_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4X_13SemanticsImpl26ancestors_with_macros_file0ENCNvB4T_21ancestors_with_macros0EEECslLuZgPVt6hg_3ide.exit37.i.i.i.i.i.i.i

bb.bv:                                            ; preds = %bb.bu
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val29.i.i.i.i.i.i.i) #48
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB2h_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4X_13SemanticsImpl26ancestors_with_macros_file0ENCNvB4T_21ancestors_with_macros0EEECslLuZgPVt6hg_3ide.exit37.i.i.i.i.i.i.i unwind label %bb.bw, !noalias !2562

bb.bw:                                            ; preds = %bb.bv
  %i.fx = landingpad { ptr, i32 }
          cleanup
  store i32 -1, ptr %i.ew, align 8, !alias.scope !2550, !noalias !2551
  br label %.body.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB2h_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4X_13SemanticsImpl26ancestors_with_macros_file0ENCNvB4T_21ancestors_with_macros0EEECslLuZgPVt6hg_3ide.exit37.i.i.i.i.i.i.i: ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bt, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB2h_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4X_13SemanticsImpl26ancestors_with_macros_file0ENCNvB4T_21ancestors_with_macros0EEECslLuZgPVt6hg_3ide.exit.i.i.i.i.i.i.i
  store i32 -1, ptr %i.ew, align 8, !alias.scope !2550, !noalias !2551
  %i.fy = load i32, ptr %i.fb, align 8, !range !331, !alias.scope !2550, !noalias !2551, !noundef !4
  %.not25.i.i.i.i.i.i.i = icmp eq i32 %i.fy, -1
  br i1 %.not25.i.i.i.i.i.i.i, label %.thread.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB2h_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4X_13SemanticsImpl26ancestors_with_macros_file0ENCNvB4T_21ancestors_with_macros0EEECslLuZgPVt6hg_3ide.exit37.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2554
  invoke void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBa_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1I_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4o_13SemanticsImpl26ancestors_with_macros_file0ENCNvB4k_21ancestors_with_macros0ENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvXs0_NtB8_10take_whileINtB78_9TakeWhileppEB6e_8try_fold5checkB2J_uINtNtNtBc_3ops12control_flow11ControlFlowNtB4q_4TypeENCNCNvNtCslLuZgPVt6hg_3ide20goto_type_definition20goto_type_definitions2_00NCINvNvB6e_8find_map5checkB2J_B8M_NCB90_s_0E0E0IB88_B87_EEB96_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.fa, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %.noexc2.i.i.i unwind label %bb.cd, !noalias !2524

.noexc2.i.i.i:                                    ; preds = %bb.bx
  call void @llvm.experimental.noalias.scope.decl(metadata !2580)
  %i.fz = load i32, ptr %i.fc, align 8, !range !2558, !alias.scope !2583, !noalias !2585, !noundef !4 ; 2 uses
  %.not.i38.i.i.i.i.i.i.i = icmp eq i32 %i.fz, -2
  br i1 %.not.i38.i.i.i.i.i.i.i, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %.noexc2.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2554
  %.val28.pre.i.i.i.i.i.i.i = load i32, ptr %i.fb, align 8, !range !331, !alias.scope !2550, !noalias !2551
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.fa, align 8, !alias.scope !2550, !noalias !2551 ; 3 uses
  switch i32 %.val28.pre.i.i.i.i.i.i.i, label %bb.bz [
    i32 -1, label %.thread.i.i.i
    i32 2, label %.thread.i.i.i
  ]

bb.bz:                                            ; preds = %bb.by
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i) ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !noalias !2562, !noundef !4
  %i.gc = add i32 %i.gb, -1                       ; 2 uses
  store i32 %i.gc, ptr %i.ga, align 4, !noalias !2562
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.ca, label %.thread.i.i.i

bb.ca:                                            ; preds = %bb.bz
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i.i.i.i.i.i.i) #48
          to label %.thread.i.i.i unwind label %bb.cc, !noalias !2562

bb.cb:                                            ; preds = %.noexc2.i.i.i
  %.sroa.061.0.copyload62.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !2586, !noalias !2554
  %.sroa.8.i.i.sroa.0.0.copyload15.i.i = load i64, ptr %.sroa.766.0..sroa_idx67.i.i.i.i.i.i.i, align 4, !noalias !2524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2554
  br label %bb.ce

bb.cc:                                            ; preds = %bb.ca
  %i.ge = landingpad { ptr, i32 }
          cleanup
  store i32 -1, ptr %i.fb, align 8, !alias.scope !2550, !noalias !2551
  br label %.body.i.i.i

.thread.i.i.i:                                    ; preds = %bb.ca, %bb.bz, %bb.by, %bb.by, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtB14_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB2h_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB4X_13SemanticsImpl26ancestors_with_macros_file0ENCNvB4T_21ancestors_with_macros0EEECslLuZgPVt6hg_3ide.exit37.i.i.i.i.i.i.i
  store i32 -1, ptr %i.fb, align 8, !alias.scope !2550, !noalias !2551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2540
  br label %_RNCNvNtCslLuZgPVt6hg_3ide20goto_type_definition20goto_type_definitions2_0B5_.exit.thread.i.i

bb.cd:                                            ; preds = %bb.bx, %bb.br, %bb.bl
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.cd, %bb.cc, %bb.bw, %bb.bq
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.gf, %bb.cd ], [ %i.ge, %bb.cc ], [ %i.fx, %bb.bw ], [ %i.fq, %bb.bq ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtBG_3map3MapINtNtNtBI_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB4d_9HirFileIdB1F_ENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5r_13SemanticsImpl26ancestors_with_macros_file0ENCNvB5n_21ancestors_with_macros0ENCNvMs5_B5r_INtB5r_9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseE27token_ancestors_with_macros0EECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.f)
          to label %.body.i unwind label %bb.cf, !noalias !2524

bb.ce:                                            ; preds = %bb.cb, %bb.bs, %bb.bp
  %.sroa.8.i.i.sroa.0.0.i.i = phi i64 [ %.sroa.8.i.i.sroa.0.0.copyload15.i.i, %bb.cb ], [ %.sroa.8.i.i.sroa.0.0.copyload14.i.i, %bb.bs ], [ %.sroa.8.i.i.sroa.0.0.copyload.i.i, %bb.bp ]
  %.sroa.0.0.ph.i.i.i.i = phi i64 [ %.sroa.061.0.copyload62.i.i.i.i.i.i.i, %bb.cb ], [ %.sroa.0.0.copyload2.i.i.i.i.i.i.i.i, %bb.bs ], [ %.sroa.0.0.copyload42.i.i.i.i.i.i.i, %bb.bp ]
  %.sink.i.i.ph.i.i.i.i = phi i32 [ %i.fz, %bb.cb ], [ %i.fs, %bb.bs ], [ %i.fl, %bb.bp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2540
  %.not.i.i.i59 = icmp eq i32 %.sink.i.i.ph.i.i.i.i, -1
  br i1 %.not.i.i.i59, label %_RNCNvNtCslLuZgPVt6hg_3ide20goto_type_definition20goto_type_definitions2_0B5_.exit.thread.i.i, label %bb.cg

bb.cf:                                            ; preds = %.body.i.i.i
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47, !noalias !2524
  unreachable

_RNCNvNtCslLuZgPVt6hg_3ide20goto_type_definition20goto_type_definitions2_0B5_.exit.thread.i.i: ; preds = %bb.ce, %.thread.i.i.i
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtBG_3map3MapINtNtNtBI_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB4d_9HirFileIdB1F_ENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5r_13SemanticsImpl26ancestors_with_macros_file0ENCNvB5n_21ancestors_with_macros0ENCNvMs5_B5r_INtB5r_9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseE27token_ancestors_with_macros0EECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.f)
          to label %.noexc2.i unwind label %bb.bj, !noalias !2530

.noexc2.i:                                        ; preds = %_RNCNvNtCslLuZgPVt6hg_3ide20goto_type_definition20goto_type_definitions2_0B5_.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2524
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1f_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtCs8Xq8PKFYOms_3hir4TypeuNCNvNtCslLuZgPVt6hg_3ide20goto_type_definition20goto_type_definitions2_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3O_NCB4g_s0_0E0E0B4k_.exit.i

bb.cg:                                            ; preds = %bb.ce
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtB4_6option8IntoIterINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEINtNtBG_3map3MapINtNtNtBI_7sources10successors10SuccessorsINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB4d_9HirFileIdB1F_ENCNvMs6_NtCs8Xq8PKFYOms_3hir9semanticsNtB5r_13SemanticsImpl26ancestors_with_macros_file0ENCNvB5n_21ancestors_with_macros0ENCNvMs5_B5r_INtB5r_9SemanticsNtCs6oosyzwIepl_6ide_db12RootDatabaseE27token_ancestors_with_macros0EECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(88) %i.f)
          to label %.noexc3.i unwind label %bb.bj, !noalias !2530

.noexc3.i:                                        ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2524
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %4 = inttoptr i64 %.sroa.0.0.ph.i.i.i.i to ptr
  store ptr %4, ptr %.sroa.0.i.i.i, align 8, !noalias !2587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2590
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ch, %.noexc3.i
  %.sroa.02.0.in.i.i.i.i = phi ptr [ %.sroa.0.i.i.i, %.noexc3.i ], [ %.sroa.51.0..sroa_idx.i.i.i.i, %bb.ch ]
  %.sroa.02.0.i.i.i.i = load ptr, ptr %.sroa.02.0.in.i.i.i.i, align 8, !noalias !2587, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.sroa.02.0.i.i.i.i, align 8, !noalias !2590 ; 2 uses
  %i.gh = icmp ne i32 %.sroa.0.0.copyload.i.i.i.i, 27
  call void @llvm.assume(i1 %i.gh)
  %i.gi = icmp eq i32 %.sroa.0.0.copyload.i.i.i.i, 14
  %.sroa.51.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i.i, i64 16
  br i1 %i.gi, label %bb.ch, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callNtCs8Xq8PKFYOms_3hir4TypeNCNvNtCslLuZgPVt6hg_3ide20goto_type_definition20goto_type_definitions0_0E0B1K_.exit.i.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callNtCs8Xq8PKFYOms_3hir4TypeNCNvNtCslLuZgPVt6hg_3ide20goto_type_definition20goto_type_definitions0_0E0B1K_.exit.i.i: ; preds = %bb.ch
  store i32 %.sink.i.i.ph.i.i.i.i, ptr %i.fd, align 8, !noalias !2593
  store i64 %.sroa.8.i.i.sroa.0.0.i.i, ptr %.sroa.6.8..sroa_idx.i.i, align 4, !noalias !2593
  store ptr %.sroa.02.0.i.i.i.i, ptr %i.a, align 8, !noalias !2590
  invoke void @_RINvMs1x_Cs8Xq8PKFYOms_3hirNtB7_4Type4walkNCNCNvNtCslLuZgPVt6hg_3ide20goto_type_definition20goto_type_definitions0_00EBM_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @28, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 %1)
          to label %.noexc4.i unwind label %bb.bj, !noalias !2530

.noexc4.i:                                        ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8for_each4callNtCs8Xq8PKFYOms_3hir4TypeNCNvNtCslLuZgPVt6hg_3ide20goto_type_definition20goto_type_definitions0_0E0B1K_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2590
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1f_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtCs8Xq8PKFYOms_3hir4TypeuNCNvNtCslLuZgPVt6hg_3ide20goto_type_definition20goto_type_definitions2_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3O_NCB4g_s0_0E0E0B4k_.exit.i

_RNvXsH_Csjpcu9PwIgok_8smallvecINtB5_8IntoIterAINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBN_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit.thread.i: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1f_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtCs8Xq8PKFYOms_3hir4TypeuNCNvNtCslLuZgPVt6hg_3ide20goto_type_definition20goto_type_definitions2_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3O_NCB4g_s0_0E0E0B4k_.exit.i, %_RNvXsH_Csjpcu9PwIgok_8smallvecINtB5_8IntoIterAINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBN_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit.i, %bb.bi
  invoke void @_RNvXsG_Csjpcu9PwIgok_8smallvecINtB5_8IntoIterAINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBN_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.q)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1g_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEj1_EECslLuZgPVt6hg_3ide.exit.i unwind label %bb.ci, !noalias !2523

bb.ci:                                            ; preds = %_RNvXsH_Csjpcu9PwIgok_8smallvecINtB5_8IntoIterAINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBN_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit.thread.i
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBN_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.q)
          to label %.thread93 unwind label %bb.cj, !noalias !2523

bb.cj:                                            ; preds = %bb.ci
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47, !noalias !2523
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1g_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEj1_EECslLuZgPVt6hg_3ide.exit.i: ; preds = %_RNvXsH_Csjpcu9PwIgok_8smallvecINtB5_8IntoIterAINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBN_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit.thread.i
  invoke void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecAINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBN_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEj1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.q)
          to label %bb.cl unwind label %.thread110

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map15filter_map_foldINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1f_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEENtCs8Xq8PKFYOms_3hir4TypeuNCNvNtCslLuZgPVt6hg_3ide20goto_type_definition20goto_type_definitions2_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3O_NCB4g_s0_0E0E0B4k_.exit.i: ; preds = %.noexc4.i, %.noexc2.i
  %i.gl = icmp eq i64 %i.fh, %i.er
  br i1 %i.gl, label %_RNvXsH_Csjpcu9PwIgok_8smallvecINtB5_8IntoIterAINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBN_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit.thread.i, label %_RNvXsH_Csjpcu9PwIgok_8smallvecINtB5_8IntoIterAINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtBN_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEj1_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCslLuZgPVt6hg_3ide.exit.i

bb.ck:                                            ; preds = %.body.i
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #47, !noalias !2523
  unreachable

bb.cl:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtCsjpcu9PwIgok_8smallvec8IntoIterAINtNtCs33K2ylI4knu_10hir_expand5files13InFileWrapperNtB1g_9HirFileIdINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEj1_EECslLuZgPVt6hg_3ide.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.0.0.i, ptr %.sroa.479.0..sroa_idx, align 8
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.en, ptr %.sroa.580.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !noundef !4
  %i.gp = add i32 %i.go, -1                       ; 2 uses
  store i32 %i.gp, ptr %i.gn, align 4
  %i.gq = icmp eq i32 %i.gp, 0
  br i1 %i.gq, label %.invoke, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileECslLuZgPVt6hg_3ide.exit64

.invoke:                                          ; preds = %bb.cl, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api11SyntaxTokenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECslLuZgPVt6hg_3ide.exit
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ad) #48
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileECslLuZgPVt6hg_3ide.exit64 unwind label %bb.b

bb.cm:                                            ; preds = %.thread93
  br i1 %.sroa.07.0103, label %bb.cn, label %.body

.thread93:                                        ; preds = %bb.ci, %.body.i, %bb.ao, %bb.an, %.thread110
  %.sroa.07.0103 = phi i1 [ true, %bb.ao ], [ %.sroa.07.1.ph, %.thread110 ], [ true, %bb.an ], [ false, %.body.i ], [ false, %bb.ci ]
  %.pn101 = phi { ptr, i32 } [ %i.df, %bb.ao ], [ %lpad.thr_comm, %.thread110 ], [ %i.df, %bb.an ], [ %eh.lpad-body.i, %.body.i ], [ %i.gj, %bb.ci ] ; 2 uses
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCslLuZgPVt6hg_3ide17navigation_target16NavigationTargetEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #46
          to label %bb.cm unwind label %bb.ax

bb.cn:                                            ; preds = %.thread114, %bb.cm
  %.pn100118 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.thread114 ], [ %.pn101, %bb.cm ] ; 2 uses
  %i.gr = load i32, ptr %i.bw, align 4, !noundef !4
  %i.gs = add i32 %i.gr, -1                       ; 2 uses
  store i32 %i.gs, ptr %i.bw, align 4
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %bb.co, label %.body

bb.co:                                            ; preds = %bb.cn
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.bs) #48
          to label %.body unwind label %bb.ax

bb.cp:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes10SourceFileECslLuZgPVt6hg_3ide.exit
  resume { ptr, i32 } %.pn16
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCslLuZgPVt6hg_3ide6status6status(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, i32 noundef range(i32 0, 2) %2, i32 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [4 x i8], align 4                 ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [32 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 9 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [8 x i8], align 4                ; 9 uses
  %i.af = alloca [32 x i8], align 8               ; 8 uses
  %i.ag = alloca [24 x i8], align 8               ; 7 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [4 x i8], align 4                ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i64 0, ptr %i.aj, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.512.0..sroa_idx, align 8
  %i.ak = trunc nuw i32 %2 to i1
  br i1 %i.ak, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store i32 %3, ptr %i.ai, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store ptr %i.ai, ptr %i.ah, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @_RNvXs8_NtNtNtCshzWfHUSfYae_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.416.0..sroa_idx, align 8
  %i.al = invoke noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @67, ptr noundef nonnull @66, ptr noundef nonnull %i.ah)
          to label %bb.e unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsgIpRO4v45SJ_7base_db5input5CrateEECslLuZgPVt6hg_3ide.exit261, %bb.a
  %i.am = phi i64 [ %.pre276, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsgIpRO4v45SJ_7base_db5input5CrateEECslLuZgPVt6hg_3ide.exit261 ], [ 0, %bb.a ]
  %i.an = phi ptr [ %.pre, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCsgIpRO4v45SJ_7base_db5input5CrateEECslLuZgPVt6hg_3ide.exit261 ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.ao = invoke { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef %i.am)
          to label %bb.al unwind label %bb.d      ; 2 uses

.thread:                                          ; preds = %.body, %bb.i, %bb.ak, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dn, %bb.ak ], [ %i.bj, %bb.i ], [ %i.ap, %bb.d ], [ %.pn, %.body ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECslLuZgPVt6hg_3ide(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj) #46
          to label %common.resume unwind label %bb.aj

bb.d:                                             ; preds = %bb.an, %bb.al, %bb.b, %bb.e, %bb.c
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  invoke void @_RNvNtCslLuZgPVt6hg_3ide13parent_module10crates_for(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ag, ptr noundef nonnull align 8 %1, i32 noundef %3)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !4 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 1152921504606846976
  call void @llvm.assume(i1 %i.as)
  %i.at = icmp eq i64 %i.ar, 0                    ; 2 uses
  br i1 %i.at, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE15append_elementsCslLuZgPVt6hg_3ide.exit, %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.aw = load i64, ptr %i.ag, align 8, !range !54, !noundef !4
  %.idx = shl nuw nsw i64 %i.ar, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store ptr %i.av, ptr %i.af, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  store ptr %i.av, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i64 %i.aw, ptr %.sroa.5.0..sroa_idx, align 8
end_hunk_1
