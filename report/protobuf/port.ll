inline.NumInlined: 602
inline.NumDeleted: 355
begin_hunk_0_@_ZN6google8protobuf8internalL16PrintAllCountersEv:bb.a
._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph98
  %.1.lcssa = phi i64 [ %.096, %.lr.ph98 ], [ %i.ai, %.lr.ph ] ; 5 uses
  %i.af = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.070.095) #29 ; 2 uses
  %.not87 = icmp eq ptr %i.af, %i.y
  br i1 %.not87, label %.lr.ph109, label %.lr.ph98

.lr.ph:                                           ; preds = %.lr.ph98, %.lr.ph
  %.193 = phi i64 [ %i.ai, %.lr.ph ], [ %.096, %.lr.ph98 ]
  %.sroa.066.092 = phi ptr [ %i.aj, %.lr.ph ], [ %i.ac, %.lr.ph98 ] ; 2 uses
  %i.ag = load ptr, ptr %.sroa.066.092, align 8, !tbaa !30
  %i.ah = load atomic i64, ptr %i.ag monotonic, align 8
  %i.ai = add i64 %i.ah, %.193                    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.066.092, i64 8 ; 2 uses
  %.not90 = icmp eq ptr %i.aj, %i.ae
  br i1 %.not90, label %._crit_edge, label %.lr.ph

._crit_edge110:                                   ; preds = %bb.i
  %.not = icmp eq i64 %.1.lcssa, 0
  br i1 %.not, label %._crit_edge110.thread, label %bb.j

bb.d:                                             ; preds = %.lr.ph109, %bb.i
  %.sroa.062.0108 = phi ptr [ %i.x, %.lr.ph109 ], [ %i.bo, %bb.i ] ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.062.0108, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.062.0108, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !58 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.062.0108, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !58 ; 2 uses
  %.not89100 = icmp eq ptr %i.am, %i.ao
  br i1 %.not89100, label %._crit_edge105, label %.lr.ph104

._crit_edge105:                                   ; preds = %.lr.ph104, %bb.d
  %.085.lcssa = phi i64 [ 0, %bb.d ], [ %i.at, %.lr.ph104 ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.062.0108, i64 48
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !23
  switch i8 %i.aq, label %bb.e [
    i8 0, label %_ZSt3getIlJlSt17basic_string_viewIcSt11char_traitsIcEEEERKT_RKSt7variantIJDpT0_EE.exit
    i8 1, label %_ZSt3getISt17basic_string_viewIcSt11char_traitsIcEEJlS3_EERKT_RKSt7variantIJDpT0_EE.exit
  ]

.lr.ph104:                                        ; preds = %bb.d, %.lr.ph104
  %.085102 = phi i64 [ %i.at, %.lr.ph104 ], [ 0, %bb.d ]
  %.sroa.057.0101 = phi ptr [ %i.au, %.lr.ph104 ], [ %i.am, %bb.d ] ; 2 uses
  %i.ar = load ptr, ptr %.sroa.057.0101, align 8, !tbaa !30
  %i.as = load atomic i64, ptr %i.ar monotonic, align 8
  %i.at = add i64 %i.as, %.085102                 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.057.0101, i64 8 ; 2 uses
  %.not89 = icmp eq ptr %i.au, %i.ao
  br i1 %.not89, label %._crit_edge105, label %.lr.ph104

_ZSt3getIlJlSt17basic_string_viewIcSt11char_traitsIcEEEERKT_RKSt7variantIJDpT0_EE.exit: ; preds = %._crit_edge105
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.ak, align 8
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %3, align 8, !tbaa !20
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIlEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.n, align 8, !tbaa !56
  %i.aw = inttoptr i64 %.085.lcssa to ptr
  store ptr %i.aw, ptr %i.o, align 8, !tbaa !20
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.p, align 8, !tbaa !56
  %i.ax = call noundef i32 @_ZN4absl12lts_2025051219str_format_internal7FprintFEP8_IO_FILENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr noundef %i.av, ptr nonnull @.str.3, i64 15, ptr nonnull %3, i64 2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge105
  %i.ay = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ay, align 8, !tbaa !59
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr @.str.10, ptr %i.az, align 8, !tbaa !61
  call void @__cxa_throw(ptr nonnull %i.ay, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #26
  unreachable

_ZSt3getISt17basic_string_viewIcSt11char_traitsIcEEJlS3_EERKT_RKSt7variantIJDpT0_EE.exit: ; preds = %._crit_edge105
  %i.ba = load ptr, ptr @stderr, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr %i.ak, ptr %2, align 8, !tbaa !20
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.k, align 8, !tbaa !56
  %i.bb = inttoptr i64 %.085.lcssa to ptr
  store ptr %i.bb, ptr %i.l, align 8, !tbaa !20
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.m, align 8, !tbaa !56
  %i.bc = call noundef i32 @_ZN4absl12lts_2025051219str_format_internal7FprintFEP8_IO_FILENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr noundef %i.ba, ptr nonnull @.str.4, i64 16, ptr nonnull %2, i64 2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.f

bb.f:                                             ; preds = %_ZSt3getISt17basic_string_viewIcSt11char_traitsIcEEJlS3_EERKT_RKSt7variantIJDpT0_EE.exit, %_ZSt3getIlJlSt17basic_string_viewIcSt11char_traitsIcEEEERKT_RKSt7variantIJDpT0_EE.exit
  br i1 %.not28, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = load i64, ptr %i.z, align 8, !tbaa !41
  %i.be = icmp ugt i64 %i.bd, 1
  br i1 %i.be, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bf = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.bg = uitofp i64 %.085.lcssa to double
  %i.bh = fmul nnan double %i.bg, 1.000000e+02
  %i.bi = fdiv double %i.bh, %i.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.bj = bitcast double %i.bi to i64
  %i.bk = inttoptr i64 %i.bj to ptr
  store ptr %i.bk, ptr %1, align 8, !tbaa !20
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIdEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.q, align 8, !tbaa !56
  %i.bl = call noundef i32 @_ZN4absl12lts_2025051219str_format_internal7FprintFEP8_IO_FILENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr noundef %i.bf, ptr nonnull @.str.5, i64 10, ptr nonnull %1, i64 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.bm = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.bn = call noundef i32 @_ZN4absl12lts_2025051219str_format_internal7FprintFEP8_IO_FILENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr noundef %i.bm, ptr nonnull @.str.6, i64 1, ptr null, i64 0) ; 0 uses
  %i.bo = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.062.0108) #29 ; 2 uses
  %.not88 = icmp eq ptr %i.bo, %i.y
  br i1 %.not88, label %._crit_edge110, label %bb.d

bb.j:                                             ; preds = %._crit_edge110
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.080.0112, i64 88
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !41
  %i.br = icmp ugt i64 %i.bq, 1
  br i1 %i.br, label %bb.k, label %._crit_edge110.thread

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr @stderr, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  store <2 x ptr> <ptr @.str.8, ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIPKcEEbNS2_4DataENS1_24FormatConversionSpecImplEPv>, ptr %0, align 16, !tbaa !20
  %i.bt = inttoptr i64 %.1.lcssa to ptr
  store ptr %i.bt, ptr %i.r, align 16, !tbaa !20
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.s, align 8, !tbaa !56
  %i.bu = call noundef i32 @_ZN4absl12lts_2025051219str_format_internal7FprintFEP8_IO_FILENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr noundef %i.bs, ptr nonnull @.str.7, i64 17, ptr nonnull %0, i64 2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  br label %._crit_edge110.thread

._crit_edge110.thread:                            ; preds = %bb.c, %bb.k, %bb.j, %._crit_edge110
  %i.bv = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.080.0112) #29 ; 2 uses
  %.not86 = icmp eq ptr %i.bv, %i.i
  br i1 %.not86, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %._crit_edge110.thread, %bb.b, %bb.a
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

declare noundef i32 @_ZN4absl12lts_2025051219str_format_internal7FprintFEP8_IO_FILENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr noundef, ptr, i64, ptr, i64) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #5 align 2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIlEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #5 align 2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchImEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #5 align 2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #13

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #14

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt18bad_variant_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNKSt18bad_variant_access4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !61
  ret ptr %i.b
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIdEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #5 align 2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIPKcEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #5 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE13ConvertToPairIS8_S8_EESt4pairIT_T0_Ev(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 8 %0, ptr noundef nonnull align 8 dereferenceable(18) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.absl::lts_20250512::strings_internal::SplitIterator", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  store i64 0, ptr %4, align 8, !tbaa !67, !alias.scope !64
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i32 0, ptr %i.a, align 8, !tbaa !74, !alias.scope !64
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !alias.scope !64
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !75, !alias.scope !64
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !20, !noalias !64
  store i8 %i.f, ptr %i.d, align 8, !tbaa !20, !alias.scope !64
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %1, align 8, !tbaa !15, !noalias !64 ; 7 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !19, !noalias !64 ; 4 uses
  %i.g = icmp eq ptr %.sroa.2.0.copyload.i.i.i, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 2, ptr %i.a, align 8, !tbaa !74, !alias.scope !64
  br label %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit

bb.c:                                             ; preds = %bb.a
  %i.h = call { i64, ptr } @_ZNK4absl12lts_202505126ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1) %i.d, i64 %.sroa.0.0.copyload.i.i.i, ptr nonnull %.sroa.2.0.copyload.i.i.i, i64 noundef 0) ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 %.sroa.0.0.copyload.i.i.i
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.a, align 8, !tbaa !74, !alias.scope !64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = load i64, ptr %4, align 8, !tbaa !67, !alias.scope !64 ; 5 uses
  %i.n = icmp ugt i64 %i.m, %.sroa.0.0.copyload.i.i.i
  br i1 %i.n, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i64 noundef %i.m, i64 noundef %.sroa.0.0.copyload.i.i.i) #26
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i: ; preds = %bb.e
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 %i.m ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.o, %i.q
  %i.s = sub nuw i64 %.sroa.0.0.copyload.i.i.i, %i.m
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.s, i64 %i.r) ; 2 uses
  store i64 %.sroa.speculated.i.i.i.i, ptr %i.b, align 8, !tbaa !15, !alias.scope !64
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !19, !alias.scope !64
  %i.t = add i64 %i.m, %i.i
  %i.u = add i64 %i.t, %.sroa.speculated.i.i.i.i
  %.sroa.0.0.copyload.i.i.i1.pre = load i64, ptr %1, align 8, !tbaa !15, !noalias !76
  %.pre = load i32, ptr %i.a, align 8, !tbaa !74
  br label %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit, !llvm.loop !79

_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit: ; preds = %bb.b, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i
  %i.v = phi i32 [ %.pre, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i ], [ 2, %bb.b ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i1 = phi i64 [ %.sroa.0.0.copyload.i.i.i1.pre, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i ], [ %.sroa.0.0.copyload.i.i.i, %bb.b ] ; 2 uses
  %storemerge.i = phi i64 [ %i.u, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i ], [ %.sroa.0.0.copyload.i.i.i, %bb.b ] ; 4 uses
  store i64 %storemerge.i, ptr %4, align 8, !tbaa !67, !alias.scope !64
  %i.w = icmp ne i32 %i.v, 2
  %i.x = icmp ne i64 %storemerge.i, %.sroa.0.0.copyload.i.i.i1
  %.not3.i = select i1 %i.w, i1 true, i1 %i.x
  br i1 %.not3.i, label %bb.g, label %bb.m

bb.g:                                             ; preds = %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !33
  %i.y = icmp eq i32 %i.v, 1
  br i1 %i.y, label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !75   ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.z, align 8, !tbaa !15 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !19 ; 3 uses
  %i.aa = call { i64, ptr } @_ZNK4absl12lts_202505126ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1) %i.d, i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, i64 noundef %storemerge.i) ; 2 uses
  %i.ab = extractvalue { i64, ptr } %i.aa, 0
  %i.ac = extractvalue { i64, ptr } %i.aa, 1      ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %.sroa.0.0.copyload.i.i
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.a, align 8, !tbaa !74
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = load i64, ptr %4, align 8, !tbaa !67    ; 5 uses
  %i.ag = icmp ugt i64 %i.af, %.sroa.0.0.copyload.i.i
  br i1 %i.ag, label %bb.k, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i64 noundef %i.af, i64 noundef %.sroa.0.0.copyload.i.i) #26
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %bb.j
  %i.ah = ptrtoint ptr %i.ac to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 %i.af ; 2 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.ah, %i.aj
  %i.al = sub nuw i64 %.sroa.0.0.copyload.i.i, %i.af
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.al, i64 %i.ak) ; 2 uses
  store i64 %.sroa.speculated.i.i, ptr %i.b, align 8, !tbaa !15
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.ai, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !19
  %i.am = add i64 %i.af, %i.ab
  %i.an = add i64 %i.am, %.sroa.speculated.i.i
  %.sroa.0.0.copyload.i.i.i2.pre = load i64, ptr %1, align 8, !tbaa !15, !noalias !80
  %.pre12 = load i32, ptr %i.a, align 8, !tbaa !74
  %i.ao = icmp ne i32 %.pre12, 2
  br label %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit, !llvm.loop !79

_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit: ; preds = %bb.g, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %i.ap = phi i64 [ %i.an, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ], [ %storemerge.i, %bb.g ]
  %i.aq = phi i1 [ %i.ao, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ], [ false, %bb.g ]
  %.sroa.0.0.copyload.i.i.i2 = phi i64 [ %.sroa.0.0.copyload.i.i.i2.pre, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ], [ %.sroa.0.0.copyload.i.i.i1, %bb.g ]
  %i.ar = icmp ne i64 %i.ap, %.sroa.0.0.copyload.i.i.i2
  %.not3.i3 = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %.not3.i3, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !33
  br label %bb.m

bb.m:                                             ; preds = %_ZN4absl12lts_2025051216strings_internal13SplitIteratorINS1_8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEEEEppEv.exit, %bb.l, %_ZNK4absl12lts_2025051216strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

declare { i64, ptr } @_ZNK4absl12lts_202505126ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1), i64, ptr, i64 noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #18

declare noundef zeroext i1 @_ZN4absl12lts_2025051216numbers_internal17safe_strto64_baseESt17basic_string_viewIcSt11char_traitsIcEEPli(i64, ptr, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3mapISt7variantIJlS3_EESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISF_EESt4lessIS8_ESaIS4_IKS8_SH_EEEESt10_Select1stISO_ESI_IS3_ESaISO_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESY_IJEEEEESt17_Rb_tree_iteratorISO_ESt23_Rb_tree_const_iteratorISO_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<std::basic_string_view<char>, std::pair<const std::basic_string_view<char>, std::map<std::variant<long, std::basic_string_view<char>>, std::vector<const google::protobuf::internal::RealDebugCounter *>>>, std::_Select1st<std::pair<const std::basic_string_view<char>, std::map<std::variant<long, std::basic_string_view<char>>, std::vector<const google::protobuf::internal::RealDebugCounter *>>>>, std::less<std::basic_string_view<char>>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %0, ptr %5, align 8, !tbaa !83
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #27 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.d = load i64, ptr %3, align 8, !tbaa !48
  %i.e = inttoptr i64 %i.d to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr %i.g, ptr %i.h, align 8, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.g, ptr %i.i, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 0, ptr %i.j, align 8, !tbaa !41
  store ptr %i.b, ptr %i.a, align 8, !tbaa !85
  %i.k = invoke { ptr, ptr } @_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3mapISt7variantIJlS3_EESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISF_EESt4lessIS8_ESaIS4_IKS8_SH_EEEESt10_Select1stISO_ESI_IS3_ESaISO_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISO_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.b unwind label %bb.e       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 2 uses
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 5 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.l, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.o
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %i.c, align 8, !tbaa !15 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.p, align 8, !tbaa !15 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload.i.i.i, i64 %.sroa.01.0.copyload.i.i.i) ; 2 uses
  %i.q = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.q, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.d
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !19
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.22.0.copyload.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !19
  %i.r = tail call i32 @memcmp(ptr noundef %.sroa.22.0.copyload.i.i.i, ptr noundef %.sroa.2.0.copyload.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i) #25 ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.d
  %i.t = sub i64 %.sroa.01.0.copyload.i.i.i, %.sroa.0.0.copyload.i.i.i
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.t, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit.i.i

_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ], [ %i.r, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ]
  %i.u = icmp slt i32 %.0.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %bb.c, %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit.i.i
  %i.v = phi i1 [ %i.u, %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit.i.i ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.v, ptr noundef nonnull %i.b, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n) #25
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !41
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !41
  br label %_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3mapISt7variantIJlS3_EESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISF_EESt4lessIS8_ESaIS4_IKS8_SH_EEEESt10_Select1stISO_ESI_IS3_ESaISO_EE10_Auto_nodeD2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3mapISt7variantIJlS3_EESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISF_EESt4lessIS8_ESaIS4_IKS8_SH_EEEESt10_Select1stISO_ESI_IS3_ESaISO_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  resume { ptr, i32 } %i.z

bb.f:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !44
  invoke void @_ZNSt8_Rb_treeISt7variantIJlSt17basic_string_viewIcSt11char_traitsIcEEEESt4pairIKS5_St6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISE_EEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE8_M_eraseEPSt13_Rb_tree_nodeISH_E(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.ab)
          to label %_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3mapISt7variantIJlS3_EESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISF_EESt4lessIS8_ESaIS4_IKS8_SH_EEEESt10_Select1stISO_ESI_IS3_ESaISO_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISO_E.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #24
  unreachable

_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3mapISt7variantIJlS3_EESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISF_EESt4lessIS8_ESaIS4_IKS8_SH_EEEESt10_Select1stISO_ESI_IS3_ESaISO_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISO_E.exit.i: ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 96) #28
  br label %_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3mapISt7variantIJlS3_EESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISF_EESt4lessIS8_ESaIS4_IKS8_SH_EEEESt10_Select1stISO_ESI_IS3_ESaISO_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3mapISt7variantIJlS3_EESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISF_EESt4lessIS8_ESaIS4_IKS8_SH_EEEESt10_Select1stISO_ESI_IS3_ESaISO_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3mapISt7variantIJlS3_EESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISF_EESt4lessIS8_ESaIS4_IKS8_SH_EEEESt10_Select1stISO_ESI_IS3_ESaISO_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISO_E.exit.i
  %.sroa.0.010 = phi ptr [ %i.b, %.thread ], [ %i.l, %_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3mapISt7variantIJlS3_EESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISF_EESt4lessIS8_ESaIS4_IKS8_SH_EEEESt10_Select1stISO_ESI_IS3_ESaISO_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISO_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret ptr %.sroa.0.010
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3mapISt7variantIJlS3_EESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISF_EESt4lessIS8_ESaIS4_IKS8_SH_EEEESt10_Select1stISO_ESI_IS3_ESaISO_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISO_ERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !41
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.01.0.copyload.i = load i64, ptr %i.g, align 8, !tbaa !15 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !15 ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload.i, i64 %.sroa.01.0.copyload.i) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !19
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.22.0.copyload.i = load ptr, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !19
  %i.i = tail call i32 @memcmp(ptr noundef %.sroa.22.0.copyload.i, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.speculated.i.i.i) #25 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.k = sub i64 %.sroa.01.0.copyload.i, %.sroa.0.0.copyload.i
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.k, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit

_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %.0.i4.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ], [ %i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ]
  %i.l = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.l, label %bb.n, label %bb.d

bb.d:                                             ; preds = %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit, %bb.b
  %i.m = tail call { ptr, ptr } @_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3mapISt7variantIJlS3_EESt6vectorIPKN6google8protobuf8internal16RealDebugCounterESaISF_EESt4lessIS8_ESaIS4_IKS8_SH_EEEESt10_Select1stISO_ESI_IS3_ESaISO_EE24_M_get_insert_unique_posERS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 2 uses
  %i.n = extractvalue { ptr, ptr } %i.m, 0
  %i.o = extractvalue { ptr, ptr } %i.m, 1
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.01.0.copyload.i10 = load i64, ptr %2, align 8, !tbaa !15 ; 8 uses
  %.sroa.0.0.copyload.i11 = load i64, ptr %i.p, align 8, !tbaa !15 ; 4 uses
  %.sroa.speculated.i.i.i12 = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload.i11, i64 %.sroa.01.0.copyload.i10) ; 3 uses
  %i.q = icmp eq i64 %.sroa.speculated.i.i.i12, 0
  br i1 %i.q, label %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit23, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i13: ; preds = %bb.e
  %.sroa.2.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.2.0.copyload.i15 = load ptr, ptr %.sroa.2.0..sroa_idx.i14, align 8, !tbaa !19 ; 2 uses
  %.sroa.22.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.22.0.copyload.i17 = load ptr, ptr %.sroa.22.0..sroa_idx.i16, align 8, !tbaa !19 ; 2 uses
  %i.r = tail call i32 @memcmp(ptr noundef %.sroa.22.0.copyload.i17, ptr noundef %.sroa.2.0.copyload.i15, i64 noundef %.sroa.speculated.i.i.i12) #25 ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit23.thread88, label %_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit23.thread

_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit23: ; preds = %bb.e
  %i.t = sub i64 %.sroa.01.0.copyload.i10, %.sroa.0.0.copyload.i11
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.f, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i47

_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit23.thread88: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i13
  %i.v = sub i64 %.sroa.01.0.copyload.i10, %.sroa.0.0.copyload.i11
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %bb.f, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i41

_ZNKSt4lessISt17basic_string_viewIcSt11char_traitsIcEEEclERKS3_S6_.exit23.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i13
  %i.x = icmp slt i32 %i.r, 0
  br i1 %i.x, label %bb.f, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i41

end_hunk_0
