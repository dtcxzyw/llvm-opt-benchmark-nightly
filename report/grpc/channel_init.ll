Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/channel_init?download=true
inline.NumInlined: 3974
inline.NumDeleted: 2248
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNSt6vectorIN9grpc_core11ChannelInit6FilterESaIS2_EE17_M_realloc_insertIJRKNS0_14UniqueTypeNameERKPK19grpc_channel_filterDnS_IN4absl12lts_2025051212AnyInvocableIKFbRKNS0_11ChannelArgsEEEESaISL_EERNS1_7VersionERNS1_8OrderingERNS0_14SourceLocationEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a

_ZNSt6vectorIN9grpc_core11ChannelInit6FilterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i33, %_ZNKSt6vectorIN9grpc_core11ChannelInit6FilterESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN9grpc_core11ChannelInit6FilterESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.an, %.lr.ph.i.i.i33 ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 80 ; 2 uses
  %.not10.i.i.i35 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i35, label %_ZNSt6vectorIN9grpc_core11ChannelInit6FilterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit41, label %.lr.ph.i.i.i36

.lr.ph.i.i.i36:                                   ; preds = %_ZNSt6vectorIN9grpc_core11ChannelInit6FilterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i36
  %.012.i.i.i37 = phi ptr [ %i.ay, %.lr.ph.i.i.i36 ], [ %i.ao, %_ZNSt6vectorIN9grpc_core11ChannelInit6FilterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 5 uses
  %.0911.i.i.i38 = phi ptr [ %i.ax, %.lr.ph.i.i.i36 ], [ %1, %_ZNSt6vectorIN9grpc_core11ChannelInit6FilterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !515)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(74) %.012.i.i.i37, ptr noundef nonnull align 8 dereferenceable(74) %.0911.i.i.i38, i64 32, i1 false), !alias.scope !516
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i37, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i38, i64 32 ; 2 uses
  %i.ar = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !132, !alias.scope !515
  store <2 x ptr> %i.ar, ptr %i.ap, align 8, !tbaa !132, !alias.scope !514
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i37, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i38, i64 48
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !44, !alias.scope !515
  store ptr %i.au, ptr %i.as, align 8, !tbaa !44, !alias.scope !514
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false), !alias.scope !515
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i37, i64 56
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i38, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.av, ptr noundef nonnull align 8 dereferenceable(18) %i.aw, i64 18, i1 false), !alias.scope !516
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i38, i64 80 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i37, i64 80 ; 2 uses
  %.not.i.i.i39 = icmp eq ptr %i.ax, %i.b
  br i1 %.not.i.i.i39, label %_ZNSt6vectorIN9grpc_core11ChannelInit6FilterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit41, label %.lr.ph.i.i.i36, !llvm.loop !20

_ZNSt6vectorIN9grpc_core11ChannelInit6FilterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit41: ; preds = %.lr.ph.i.i.i36, %_ZNSt6vectorIN9grpc_core11ChannelInit6FilterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i40 = phi ptr [ %i.ao, %_ZNSt6vectorIN9grpc_core11ChannelInit6FilterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.ay, %.lr.ph.i.i.i36 ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i42 = icmp eq ptr %i.c, null
  br i1 %.not.i42, label %_ZNSt12_Vector_baseIN9grpc_core11ChannelInit6FilterESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN9grpc_core11ChannelInit6FilterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit41
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !131
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bc) #34
  br label %_ZNSt12_Vector_baseIN9grpc_core11ChannelInit6FilterESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN9grpc_core11ChannelInit6FilterESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN9grpc_core11ChannelInit6FilterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit41, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !177
  store ptr %.0.lcssa.i.i.i40, ptr %i.a, align 8, !tbaa !130
  %i.bd = getelementptr inbounds nuw [80 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !131
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN9grpc_core11ChannelInit6FilterESaIS2_EE17_M_realloc_insertIJRKNS0_14UniqueTypeNameERKPK19grpc_channel_filterRKPFvRNS0_24InterceptionChainBuilderEES_IN4absl12lts_2025051212AnyInvocableIKFbRKNS0_11ChannelArgsEEEESaISR_EERNS1_7VersionERNS1_8OrderingERNS0_14SourceLocationEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(12) %8) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !177    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775760
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN9grpc_core11ChannelInit6FilterESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #32
  unreachable

_ZNKSt6vectorIN9grpc_core11ChannelInit6FilterESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 80                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 115292150460684697)
  %i.l = select i1 %i.j, i64 115292150460684697, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 80
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #33 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 9 uses
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !35
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !37
  %i.r = load ptr, ptr %3, align 8, !tbaa !84
  %i.s = load ptr, ptr %4, align 8, !tbaa !47
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !44
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %.sroa.2.0..sroa_idx.i32 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.z = load <2 x ptr>, ptr %5, align 8, !tbaa !132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.aa = load i8, ptr %6, align 1, !tbaa !133
  %i.ab = load i8, ptr %7, align 1, !tbaa !128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false)
  store i64 %.sroa.0.0.copyload.i, ptr %i.q, align 8, !tbaa !35
  store ptr %.sroa.2.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i32, align 8, !tbaa !37
  store ptr %i.r, ptr %i.w, align 8, !tbaa !97
  store ptr %i.s, ptr %i.x, align 8, !tbaa !134
  store <2 x ptr> %i.z, ptr %i.y, align 8, !tbaa !132
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store ptr %i.u, ptr %i.ac, align 8, !tbaa !44
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  store i8 %i.aa, ptr %i.ad, align 8, !tbaa !136
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 73
  store i8 %i.ab, ptr %i.ae, align 1, !tbaa !137
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN9grpc_core11ChannelInit6FilterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i33

.lr.ph.i.i.i33:                                   ; preds = %_ZNKSt6vectorIN9grpc_core11ChannelInit6FilterESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i33
  %.012.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i33 ], [ %i.p, %_ZNKSt6vectorIN9grpc_core11ChannelInit6FilterESaIS2_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i33 ], [ %i.c, %_ZNKSt6vectorIN9grpc_core11ChannelInit6FilterESaIS2_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(74) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(74) %.0911.i.i.i, i64 32, i1 false), !alias.scope !525
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ah = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !132, !alias.scope !524
  store <2 x ptr> %i.ah, ptr %i.af, align 8, !tbaa !132, !alias.scope !523
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44, !alias.scope !524
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !44, !alias.scope !523
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false), !alias.scope !524
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.al, ptr noundef nonnull align 8 dereferenceable(18) %i.am, i64 18, i1 false), !alias.scope !525
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.an, %1
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIN9grpc_core11ChannelInit6FilterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i33, !llvm.loop !20

_ZNSt6vectorIN9grpc_core11ChannelInit6FilterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i33, %_ZNKSt6vectorIN9grpc_core11ChannelInit6FilterESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN9grpc_core11ChannelInit6FilterESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ao, %.lr.ph.i.i.i33 ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 80 ; 2 uses
  %.not10.i.i.i35 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i35, label %_ZNSt6vectorIN9grpc_core11ChannelInit6FilterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit41, label %.lr.ph.i.i.i36

.lr.ph.i.i.i36:                                   ; preds = %_ZNSt6vectorIN9grpc_core11ChannelInit6FilterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i36
  %.012.i.i.i37 = phi ptr [ %i.az, %.lr.ph.i.i.i36 ], [ %i.ap, %_ZNSt6vectorIN9grpc_core11ChannelInit6FilterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 5 uses
  %.0911.i.i.i38 = phi ptr [ %i.ay, %.lr.ph.i.i.i36 ], [ %1, %_ZNSt6vectorIN9grpc_core11ChannelInit6FilterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !527)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(74) %.012.i.i.i37, ptr noundef nonnull align 8 dereferenceable(74) %.0911.i.i.i38, i64 32, i1 false), !alias.scope !528
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i37, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i38, i64 32 ; 2 uses
  %i.as = load <2 x ptr>, ptr %i.ar, align 8, !tbaa !132, !alias.scope !527
  store <2 x ptr> %i.as, ptr %i.aq, align 8, !tbaa !132, !alias.scope !526
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i37, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i38, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !44, !alias.scope !527
  store ptr %i.av, ptr %i.at, align 8, !tbaa !44, !alias.scope !526
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false), !alias.scope !527
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i37, i64 56
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i38, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.aw, ptr noundef nonnull align 8 dereferenceable(18) %i.ax, i64 18, i1 false), !alias.scope !528
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i38, i64 80 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i37, i64 80 ; 2 uses
  %.not.i.i.i39 = icmp eq ptr %i.ay, %i.b
  br i1 %.not.i.i.i39, label %_ZNSt6vectorIN9grpc_core11ChannelInit6FilterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit41, label %.lr.ph.i.i.i36, !llvm.loop !20

_ZNSt6vectorIN9grpc_core11ChannelInit6FilterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit41: ; preds = %.lr.ph.i.i.i36, %_ZNSt6vectorIN9grpc_core11ChannelInit6FilterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i40 = phi ptr [ %i.ap, %_ZNSt6vectorIN9grpc_core11ChannelInit6FilterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.az, %.lr.ph.i.i.i36 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i42 = icmp eq ptr %i.c, null
  br i1 %.not.i42, label %_ZNSt12_Vector_baseIN9grpc_core11ChannelInit6FilterESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN9grpc_core11ChannelInit6FilterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit41
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !131
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bd) #34
  br label %_ZNSt12_Vector_baseIN9grpc_core11ChannelInit6FilterESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN9grpc_core11ChannelInit6FilterESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN9grpc_core11ChannelInit6FilterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit41, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !177
  store ptr %.0.lcssa.i.i.i40, ptr %i.a, align 8, !tbaa !130
  %i.be = getelementptr inbounds nuw [80 x i8], ptr %i.p, i64 %i.l
  store ptr %i.be, ptr %i.ba, align 8, !tbaa !131
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2025051216strings_internal13JoinAlgorithmIPKN9grpc_core14UniqueTypeNameENS1_21AlphaNumFormatterImplEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_SE_St17basic_string_viewIcSB_EOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef %2, i64 %3, ptr %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 10 uses
  %7 = alloca %"class.absl::lts_20250512::strings_internal::StringifySink", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !92
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !95
  store i8 0, ptr %i.a, align 8, !tbaa !49
  %.not10 = icmp eq ptr %1, %2
  br i1 %.not10, label %._crit_edge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.peel: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.f = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.65, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store ptr %i.c, ptr %7, align 8, !tbaa !92
  store i64 0, ptr %i.d, align 8, !tbaa !95
  %.sroa.0.0.copyload.i.i.i.i.peel = load i64, ptr %1, align 8, !tbaa !35
  %.sroa.2.0..sroa_idx.i.i.i.i.peel = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i.i.i.i.peel = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.peel, align 8, !tbaa !37
  invoke void @_ZN4absl12lts_2025051216strings_internal13StringifySink6AppendESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 %.sroa.0.0.copyload.i.i.i.i.peel, ptr %.sroa.2.0.copyload.i.i.i.i.peel)
          to label %bb.b unwind label %.loopexit.split-lp19.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.peel
  %i.g = load ptr, ptr %7, align 8, !tbaa !94
  %i.h = load i64, ptr %i.d, align 8, !tbaa !95
  store i64 %i.h, ptr %6, align 8
  store ptr %i.g, ptr %i.e, align 8
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.c unwind label %.loopexit.split-lp19.loopexit.split-lp.loopexit.split-lp

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %7, align 8, !tbaa !94     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.c
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.peel: ; preds = %bb.c
  %i.k = load i64, ptr %i.c, align 8, !tbaa !49
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #34
  br label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.peel: ; preds = %bb.c
  %8 = load i64, ptr %i.d, align 8, !tbaa !95
  %9 = icmp ult i64 %8, 16
  call void @llvm.assume(i1 %9)
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.not.peel = icmp eq ptr %i.m, %2
  br i1 %.not.peel, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.d, %bb.a
  ret void

.peel.next:                                       ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %.013 = phi ptr [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ], [ %i.m, %bb.d ] ; 3 uses
  %i.n = load i64, ptr %i.b, align 8, !tbaa !95
  %i.o = sub i64 4611686018427387903, %i.n
  %i.p = icmp ult i64 %i.o, %3
  br i1 %i.p, label %.loopexit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

.loopexit:                                        ; preds = %.peel.next
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #32
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.loopexit
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %.peel.next
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %4, i64 noundef %3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store ptr %i.c, ptr %7, align 8, !tbaa !92
  store i64 0, ptr %i.d, align 8, !tbaa !95
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %.013, align 8, !tbaa !35
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.013, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !37
  invoke void @_ZN4absl12lts_2025051216strings_internal13StringifySink6AppendESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 %.sroa.0.0.copyload.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i)
          to label %bb.e unwind label %.loopexit.split-lp19.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  %i.r = load ptr, ptr %7, align 8, !tbaa !94
  %i.s = load i64, ptr %i.d, align 8, !tbaa !95
  store i64 %i.s, ptr %6, align 8
  store ptr %i.r, ptr %i.e, align 8
  invoke void @_ZN4absl12lts_202505129StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.f unwind label %.loopexit.split-lp19.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %7, align 8, !tbaa !94     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.c
  br i1 %i.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.v = load i64, ptr %i.c, align 8, !tbaa !49
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #34
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

.loopexit.split-lp19.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.peel, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %7, align 8, !tbaa !94     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.c
  br i1 %i.y, label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3.i: ; preds = %.loopexit.split-lp19.loopexit.split-lp.loopexit.split-lp
  %i.z = load i64, ptr %i.c, align 8, !tbaa !49
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #34
  br label %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit5.i

_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit5.i: ; preds = %.loopexit.split-lp19.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  %i.ab = getelementptr inbounds nuw i8, ptr %.013, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ab, %2
  br i1 %.not, label %._crit_edge, label %.peel.next, !llvm.loop !529

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.peel, %.loopexit
  %lpad.loopexit.split-lp35 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit5.i
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_ZN4absl12lts_2025051216strings_internal13StringifySinkD2Ev.exit5.i ], [ %lpad.loopexit.split-lp35, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.ac = load ptr, ptr %0, align 8, !tbaa !94    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.a
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !49
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %eh.lpad-body
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZN4absl12lts_2025051216strings_internal12AppendPiecesEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt16initializer_listISt17basic_string_viewIcS5_EE(ptr noundef, ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPN9grpc_core11ChannelInit18FilterRegistrationESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterINS2_12_GLOBAL__N_132CompareFusedChannelFiltersByNameEEEEvT_SG_T0_T1_(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #28 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN9grpc_core11ChannelInit18FilterRegistrationESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_12_GLOBAL__N_132CompareFusedChannelFiltersByNameEEEEvT_SG_SG_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph51

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPN9grpc_core11ChannelInit18FilterRegistrationESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_12_GLOBAL__N_132CompareFusedChannelFiltersByNameEEEET_SG_SG_T0_.exit
  %i.h = icmp eq i64 %i.v, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph51, !llvm.loop !531

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa47 = phi i64 [ %i.d, %.lr.ph ], [ %i.ku, %bb.b ] ; 2 uses
  %storemerge24.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.041.1.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa47, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !71
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN9grpc_core11ChannelInit18FilterRegistrationESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterINS2_12_GLOBAL__N_132CompareFusedChannelFiltersByNameEEEEvT_T0_SH_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa47, ptr noundef %i.l)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i9.i, label %bb.c, !llvm.loop !532

.lr.ph.i9.i:                                      ; preds = %bb.c, %.lr.ph.i9.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i9.i ], [ %storemerge24.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !71
  %i.p = load ptr, ptr %0, align 8, !tbaa !71
  store ptr %i.p, ptr %i.n, align 8, !tbaa !71
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPN9grpc_core11ChannelInit18FilterRegistrationESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterINS2_12_GLOBAL__N_132CompareFusedChannelFiltersByNameEEEEvT_T0_SH_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, ptr noundef %i.o)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPN9grpc_core11ChannelInit18FilterRegistrationESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS2_12_GLOBAL__N_132CompareFusedChannelFiltersByNameEEEEvT_SG_SG_T0_.exit, !llvm.loop !533

.lr.ph51:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2450 = phi ptr [ %.sroa.041.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02549 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.ku, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.02549, -1                  ; 3 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %storemerge2450, i64 -8 ; 6 uses
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !71   ; 5 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !71  ; 5 uses
  %.val.i.i.i = load i64, ptr %i.z, align 8, !tbaa !35 ; 17 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 8
  %.val1.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !37 ; 13 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %.val.i.i.i ; 3 uses
  %.not6.i.i.i.i.i.i = icmp samesign eq i64 %.val.i.i.i, 0 ; 3 uses
  br i1 %.not6.i.i.i.i.i.i, label %_ZSt5countIPKccENSt15iterator_traitsIT_E15difference_typeES3_S3_RKT0_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.lr.ph51
  %min.iters.check260 = icmp ult i64 %.val.i.i.i, 8
  br i1 %min.iters.check260, label %.lr.ph.i.i.i.i.i.i.preheader289, label %vector.ph261

vector.ph261:                                     ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec262 = and i64 %.val.i.i.i, -8             ; 3 uses
  %i.ad = getelementptr i8, ptr %.val1.i.i.i, i64 %n.vec262
  br label %vector.body263

vector.body263:                                   ; preds = %vector.body263, %vector.ph261
  %index264 = phi i64 [ 0, %vector.ph261 ], [ %index.next270, %vector.body263 ] ; 2 uses
  %vec.phi265 = phi <4 x i32> [ zeroinitializer, %vector.ph261 ], [ %i.aj, %vector.body263 ]
  %vec.phi266 = phi <4 x i32> [ zeroinitializer, %vector.ph261 ], [ %i.ak, %vector.body263 ]
  %next.gep267 = getelementptr i8, ptr %.val1.i.i.i, i64 %index264 ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep267, i64 4
  %wide.load268 = load <4 x i8>, ptr %next.gep267, align 1, !tbaa !49
  %wide.load269 = load <4 x i8>, ptr %i.ae, align 1, !tbaa !49
  %i.af = icmp eq <4 x i8> %wide.load268, splat (i8 43)
  %i.ag = icmp eq <4 x i8> %wide.load269, splat (i8 43)
  %i.ah = zext <4 x i1> %i.af to <4 x i32>
  %i.ai = zext <4 x i1> %i.ag to <4 x i32>
  %i.aj = add <4 x i32> %vec.phi265, %i.ah        ; 2 uses
  %i.ak = add <4 x i32> %vec.phi266, %i.ai        ; 2 uses
  %index.next270 = add nuw i64 %index264, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next270, %n.vec262
  br i1 %i.al, label %middle.block271, label %vector.body263, !llvm.loop !534

end_hunk_0
