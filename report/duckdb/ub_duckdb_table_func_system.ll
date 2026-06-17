inline.NumInlined: 14721
inline.NumDeleted: 5969
begin_hunk_0_@_ZN6duckdbL22DuckDBDependenciesBindERNS_13ClientContextERNS_22TableFunctionBindInputERNS_6vectorINS_11LogicalTypeELb1ESaIS5_EEERNS4_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISE_EEE:bb.a
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit29

bb.m:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA11_KcEEEvDpOT_.exit
  tail call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKNS0_13LogicalTypeIdEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.as, ptr noundef nonnull align 1 dereferenceable(1) @_ZN6duckdb11LogicalType6BIGINTE)
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit29

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit29: ; preds = %bb.l, %bb.m
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !69  ; 6 uses
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !72
  %.not.i30 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not.i30, label %bb.n, label %._crit_edge.i.i.i31

._crit_edge.i.i.i31:                              ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit29
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !53
  store i64 7235431247355733362, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 8, ptr %i.az, align 8, !tbaa !56
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  store i8 0, ptr %i.ba, align 8, !tbaa !55
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store ptr %i.bc, ptr %i.a, align 8, !tbaa !69
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA9_KcEEEvDpOT_.exit34

bb.n:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit29
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA9_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.aw, ptr noundef nonnull align 1 dereferenceable(9) @.str.230)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA9_KcEEEvDpOT_.exit34

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA9_KcEEEvDpOT_.exit34: ; preds = %._crit_edge.i.i.i31, %bb.n
  %i.bd = load ptr, ptr %i.j, align 8, !tbaa !66  ; 3 uses
  %i.be = load ptr, ptr %i.l, align 8, !tbaa !73
  %.not.i35 = icmp eq ptr %i.bd, %i.be
  br i1 %.not.i35, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA9_KcEEEvDpOT_.exit34
  tail call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 noundef zeroext 14)
  %i.bf = load ptr, ptr %i.j, align 8, !tbaa !66
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store ptr %i.bg, ptr %i.j, align 8, !tbaa !66
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit36

bb.p:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA9_KcEEEvDpOT_.exit34
  tail call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKNS0_13LogicalTypeIdEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.bd, ptr noundef nonnull align 1 dereferenceable(1) @_ZN6duckdb11LogicalType6BIGINTE)
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit36

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit36: ; preds = %bb.o, %bb.p
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !69  ; 6 uses
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !72
  %.not.i37 = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i37, label %bb.q, label %._crit_edge.i.i.i38

._crit_edge.i.i.i38:                              ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit36
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !53
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.bj, ptr noundef nonnull align 1 dereferenceable(12) @.str.231, i64 11, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 11, ptr %i.bk, align 8, !tbaa !56
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 27
  store i8 0, ptr %i.bl, align 1, !tbaa !55
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store ptr %i.bn, ptr %i.a, align 8, !tbaa !69
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEEvDpOT_.exit

bb.q:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit36
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA12_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.bh, ptr noundef nonnull align 1 dereferenceable(12) @.str.231)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEEvDpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEEvDpOT_.exit: ; preds = %._crit_edge.i.i.i38, %bb.q
  %i.bo = load ptr, ptr %i.j, align 8, !tbaa !66  ; 3 uses
  %i.bp = load ptr, ptr %i.l, align 8, !tbaa !73
  %.not.i40 = icmp eq ptr %i.bo, %i.bp
  br i1 %.not.i40, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEEvDpOT_.exit
  tail call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 noundef zeroext 13)
  %i.bq = load ptr, ptr %i.j, align 8, !tbaa !66
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store ptr %i.br, ptr %i.j, align 8, !tbaa !66
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit41

bb.s:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA12_KcEEEvDpOT_.exit
  tail call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKNS0_13LogicalTypeIdEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.bo, ptr noundef nonnull align 1 dereferenceable(1) @_ZN6duckdb11LogicalType7INTEGERE)
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit41

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit41: ; preds = %bb.r, %bb.s
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !69  ; 6 uses
  %i.bt = load ptr, ptr %i.c, align 8, !tbaa !72
  %.not.i42 = icmp eq ptr %i.bs, %i.bt
  br i1 %.not.i42, label %bb.t, label %._crit_edge.i.i.i43

._crit_edge.i.i.i43:                              ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit41
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !53
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.bu, ptr noundef nonnull align 1 dereferenceable(8) @.str.232, i64 7, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 7, ptr %i.bv, align 8, !tbaa !56
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 23
  store i8 0, ptr %i.bw, align 1, !tbaa !55
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store ptr %i.by, ptr %i.a, align 8, !tbaa !69
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEEvDpOT_.exit46

bb.t:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit41
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA8_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.bs, ptr noundef nonnull align 1 dereferenceable(8) @.str.232)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEEvDpOT_.exit46

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEEvDpOT_.exit46: ; preds = %._crit_edge.i.i.i43, %bb.t
  %i.bz = load ptr, ptr %i.j, align 8, !tbaa !66  ; 3 uses
  %i.ca = load ptr, ptr %i.l, align 8, !tbaa !73
  %.not.i47 = icmp eq ptr %i.bz, %i.ca
  br i1 %.not.i47, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEEvDpOT_.exit46
  tail call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i8 noundef zeroext 25)
  %i.cb = load ptr, ptr %i.j, align 8, !tbaa !66
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store ptr %i.cc, ptr %i.j, align 8, !tbaa !66
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit48

bb.v:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRA8_KcEEEvDpOT_.exit46
  tail call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKNS0_13LogicalTypeIdEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.bz, ptr noundef nonnull align 1 dereferenceable(1) @_ZN6duckdb11LogicalType7VARCHARE)
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit48

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRKNS0_13LogicalTypeIdEEEEvDpOT_.exit48: ; preds = %bb.u, %bb.v
  store ptr null, ptr %0, align 8, !tbaa !74
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20DuckDBExtensionsInitERNS_13ClientContextERNS_22TableFunctionInitInputE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr nofree nonnull readnone align 8 captures(none) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::unique_ptr.796", align 8 ; 10 uses
  %4 = alloca %"class.std::map.805", align 8      ; 13 uses
  %5 = alloca %"struct.duckdb::DefaultExtension", align 8 ; 7 uses
  %6 = alloca %"struct.duckdb::ExtensionInformation", align 8 ; 30 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"struct.duckdb::ExtensionAlias", align 8 ; 6 uses
  %9 = alloca %"class.duckdb::vector.133", align 8 ; 9 uses
  %10 = alloca %"class.std::function.810", align 8 ; 11 uses
  %11 = alloca %"class.duckdb::vector.133", align 8 ; 9 uses
  %12 = alloca %"class.duckdb::optional_ptr.828", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %i.a = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #27, !noalias !498 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb20DuckDBExtensionsDataE, i64 16), ptr %i.a, align 8, !tbaa !10, !noalias !498
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false), !noalias !498
  store ptr %i.a, ptr %3, align 8, !tbaa !501, !alias.scope !498
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb10FileSystem13GetFileSystemERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %1)
          to label %bb.b unwind label %bb.e       ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef nonnull align 8 dereferenceable(1560) ptr @_ZN6duckdb16DatabaseInstance11GetDatabaseERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %1)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store i32 0, ptr %i.e, align 8, !tbaa !503
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr null, ptr %i.f, align 8, !tbaa !508
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.e, ptr %i.g, align 8, !tbaa !509
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.e, ptr %i.h, align 8, !tbaa !510
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  store i64 0, ptr %i.i, align 8, !tbaa !511
  %i.j = invoke noundef i64 @_ZN6duckdb15ExtensionHelper21DefaultExtensionCountEv()
          to label %bb.d unwind label %bb.g       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.k = invoke noundef i64 @_ZN6duckdb15ExtensionHelper19ExtensionAliasCountEv()
          to label %.preheader unwind label %bb.h ; 2 uses

.preheader:                                       ; preds = %bb.d
  %.not248 = icmp eq i64 %i.j, 0
  br i1 %.not248, label %._crit_edge, label %.lr.ph230

.lr.ph230:                                        ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 33 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 128 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 120 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 184 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 176
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.not249 = icmp eq i64 %i.k, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 152 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 160
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 26
  br label %bb.i

._crit_edge:                                      ; preds = %_ZN6duckdb20ExtensionInformationD2Ev.exit, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  invoke void @_ZN6duckdb15ExtensionHelper25GetExtensionDirectoryPathB5cxx11ERNS_13ClientContextE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.133") align 8 %9, ptr noundef nonnull align 8 dereferenceable(512) %1)
          to label %bb.x unwind label %bb.y

bb.e:                                             ; preds = %bb.a
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.f:                                             ; preds = %bb.b
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.g:                                             ; preds = %bb.c
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.h:                                             ; preds = %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.i:                                             ; preds = %.lr.ph230, %_ZN6duckdb20ExtensionInformationD2Ev.exit
  %.070229 = phi i64 [ 0, %.lr.ph230 ], [ %i.cn, %_ZN6duckdb20ExtensionInformationD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZN6duckdb15ExtensionHelper19GetDefaultExtensionEm(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::DefaultExtension") align 8 %5, i64 noundef %.070229)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr %i.l, ptr %6, align 8, !tbaa !53
  store i64 0, ptr %i.m, align 8, !tbaa !56
  store i8 0, ptr %i.l, align 8, !tbaa !55
  store i8 0, ptr %i.n, align 8, !tbaa !512
  store i8 0, ptr %i.o, align 1, !tbaa !519
  store ptr %i.q, ptr %i.p, align 8, !tbaa !53
  store i64 0, ptr %i.r, align 8, !tbaa !56
  store i8 0, ptr %i.q, align 8, !tbaa !55
  store ptr %i.t, ptr %i.s, align 8, !tbaa !53
  store i64 0, ptr %i.u, align 8, !tbaa !56
  store i8 0, ptr %i.t, align 8, !tbaa !55
  store ptr %i.w, ptr %i.v, align 8, !tbaa !53
  store i64 0, ptr %i.x, align 8, !tbaa !56
  store i8 0, ptr %i.w, align 8, !tbaa !55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !53
  store i64 0, ptr %i.ab, align 8, !tbaa !56
  store i8 0, ptr %i.aa, align 8, !tbaa !55
  %i.ap = load ptr, ptr %5, align 8, !tbaa !520   ; 2 uses
  %i.aq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ap) #26
  %i.ar = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %i.ap, i64 noundef %i.aq)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.n ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.j
  %i.as = load i8, ptr %i.ac, align 8, !tbaa !522, !range !37, !noundef !38 ; 2 uses
  store i8 %i.as, ptr %i.o, align 1, !tbaa !519
  store i8 0, ptr %i.n, align 8, !tbaa !512
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.at = trunc nuw i8 %i.as to i1                ; 2 uses
  store ptr %i.ad, ptr %7, align 8, !tbaa !53
  br i1 %i.at, label %._crit_edge.i.i, label %bb.k

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.ad, ptr noundef nonnull align 1 dereferenceable(10) @.str.25, i64 10, i1 false)
  store i64 10, ptr %i.ae, align 8, !tbaa !56
  store i8 0, ptr %i.ak, align 2, !tbaa !55
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  store i64 0, ptr %i.ae, align 8, !tbaa !56
  store i8 0, ptr %i.ad, align 8, !tbaa !55
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %._crit_edge.i.i, %bb.k
  %13 = phi i64 [ 10, %._crit_edge.i.i ], [ 0, %bb.k ]
  br i1 %i.at, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.au = load ptr, ptr %i.p, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr nonnull align 8 %i.ad, i64 %13, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %bb.l
  %i.av = load i64, ptr %i.ae, align 8, !tbaa !56 ; 2 uses
  store i64 %i.av, ptr %i.r, align 8, !tbaa !56
  %i.aw = load ptr, ptr %i.p, align 8, !tbaa !31
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  store i8 0, ptr %i.ax, align 1, !tbaa !55
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !31
  store i64 0, ptr %i.ae, align 8, !tbaa !56
  store i8 0, ptr %.pre.i, align 1, !tbaa !55
  %i.ay = load ptr, ptr %7, align 8, !tbaa !31    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ad
  br i1 %i.az, label %.critedge97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.ay) #29
  br label %.critedge97

.critedge97:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.ba = load i8, ptr %i.ac, align 8, !tbaa !522, !range !37, !noundef !38
  %i.bb = sub nuw nsw i8 4, %i.ba
  store i8 %i.bb, ptr %i.af, align 8, !tbaa !523
  %i.bc = load ptr, ptr %i.ag, align 8, !tbaa !524 ; 2 uses
  %i.bd = load i64, ptr %i.x, align 8, !tbaa !56
  %i.be = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bc) #26
  %i.bf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 noundef 0, i64 noundef %i.bd, ptr noundef nonnull %i.bc, i64 noundef %i.be)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit99.preheader unwind label %bb.n ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit99.preheader: ; preds = %.critedge97
  br i1 %.not249, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit99._crit_edge, label %.lr.ph

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit99._crit_edge: ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE12emplace_backIJRPKcEEEvDpOT_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit99.preheader
  %i.bg = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb20ExtensionInformationESt4lessIS5_ESaISt4pairIKS5_S7_EEEixERSB_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.t unwind label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.n:                                             ; preds = %.critedge97, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit99._crit_edge
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit99.preheader, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE12emplace_backIJRPKcEEEvDpOT_.exit
  %.075228 = phi i64 [ %i.bx, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE12emplace_backIJRPKcEEEvDpOT_.exit ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit99.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.bj = invoke { ptr, ptr } @_ZN6duckdb15ExtensionHelper17GetExtensionAliasEm(i64 noundef %.075228)
          to label %bb.o unwind label %bb.s       ; 2 uses

bb.o:                                             ; preds = %.lr.ph
  %i.bk = extractvalue { ptr, ptr } %i.bj, 0      ; 2 uses
  store ptr %i.bk, ptr %8, align 8
  %i.bl = extractvalue { ptr, ptr } %i.bj, 1      ; 3 uses
  store ptr %i.bl, ptr %i.ah, align 8
  %i.bm = load i64, ptr %i.m, align 8, !tbaa !56  ; 3 uses
  %i.bn = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bl) #26
  %i.bo = icmp eq i64 %i.bm, %i.bn
  br i1 %i.bo, label %bb.p, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE12emplace_backIJRPKcEEEvDpOT_.exit

bb.p:                                             ; preds = %bb.o
  %i.bp = icmp eq i64 %i.bm, 0
  br i1 %i.bp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.p
  %i.bq = load ptr, ptr %6, align 8, !tbaa !31
  %bcmp.i = call i32 @bcmp(ptr %i.bq, ptr nonnull %i.bl, i64 %i.bm)
  %i.br = icmp eq i32 %bcmp.i, 0
  br i1 %i.br, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE12emplace_backIJRPKcEEEvDpOT_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.p, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bs = load ptr, ptr %i.ai, align 8, !tbaa !344 ; 3 uses
  %i.bt = load ptr, ptr %i.aj, align 8, !tbaa !345
  %.not.i100 = icmp eq ptr %i.bs, %i.bt
  br i1 %.not.i100, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  invoke void @_ZN6duckdb5ValueC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %i.bs, ptr noundef %i.bk)
          to label %.noexc101 unwind label %bb.s

.noexc101:                                        ; preds = %bb.q
  %i.bu = load ptr, ptr %i.ai, align 8, !tbaa !344
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  store ptr %i.bv, ptr %i.ai, align 8, !tbaa !344
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE12emplace_backIJRPKcEEEvDpOT_.exit

bb.r:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  invoke void @_ZNSt6vectorIN6duckdb5ValueESaIS1_EE17_M_realloc_insertIJRPKcEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr %i.bs, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE12emplace_backIJRPKcEEEvDpOT_.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.lr.ph
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.v

_ZNSt6vectorIN6duckdb5ValueESaIS1_EE12emplace_backIJRPKcEEEvDpOT_.exit: ; preds = %bb.o, %.noexc101, %bb.r, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.bx = add nuw i64 %.075228, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit99._crit_edge, label %.lr.ph, !llvm.loop !525

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit99._crit_edge
  %i.by = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6duckdb20ExtensionInformationaSEOS0_(ptr noundef nonnull align 8 dereferenceable(200) %i.bg, ptr noundef nonnull align 8 dereferenceable(200) %6) #26 ; 0 uses
  %i.bz = load ptr, ptr %i.z, align 8, !tbaa !31  ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.aa
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.bz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.cb = load ptr, ptr %i.y, align 8, !tbaa !341 ; 3 uses
  %i.cc = load ptr, ptr %i.ai, align 8, !tbaa !344 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cb, %i.cc
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i ], [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 2 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.05.i.i.i.i) #26
  %i.cd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cd, %i.cc
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !346

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.y, align 8, !tbaa !341
  br label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ce = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ce) #29
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit.i:  ; preds = %bb.u, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.cf = load ptr, ptr %i.v, align 8, !tbaa !31  ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.w
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.cf) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.ch = load ptr, ptr %i.s, align 8, !tbaa !31  ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.t
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  call void @_ZdlPv(ptr noundef %i.ch) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.cj = load ptr, ptr %i.p, align 8, !tbaa !31  ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.q
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i
  call void @_ZdlPv(ptr noundef %i.cj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  %i.cl = load ptr, ptr %6, align 8, !tbaa !31    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.l
  br i1 %i.cm, label %_ZN6duckdb20ExtensionInformationD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i
  call void @_ZdlPv(ptr noundef %i.cl) #29
  br label %_ZN6duckdb20ExtensionInformationD2Ev.exit

_ZN6duckdb20ExtensionInformationD2Ev.exit:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.cn = add nuw i64 %.070229, 1                 ; 2 uses
  %exitcond263.not = icmp eq i64 %i.cn, %i.j
  br i1 %exitcond263.not, label %._crit_edge, label %bb.i, !llvm.loop !526

bb.v:                                             ; preds = %bb.s, %bb.n
  %.pn89 = phi { ptr, i32 } [ %i.bw, %bb.s ], [ %i.bi, %bb.n ]
  call void @_ZN6duckdb20ExtensionInformationD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.m
  %.pn89.pn = phi { ptr, i32 } [ %.pn89, %bb.v ], [ %i.bh, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.ci

bb.x:                                             ; preds = %._crit_edge
  %i.co = load ptr, ptr %9, align 8, !tbaa !250   ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !250 ; 2 uses
  %.not231 = icmp eq ptr %i.co, %i.cq
  br i1 %.not231, label %._crit_edge235, label %.lr.ph234

.lr.ph234:                                        ; preds = %bb.x
end_hunk_0
