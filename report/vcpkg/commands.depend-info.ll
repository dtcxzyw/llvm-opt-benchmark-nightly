Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/commands.depend-info?download=true
inline.NumInlined: 3028
inline.NumDeleted: 1485
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNSt6vectorIN5vcpkg15FullPackageSpecESaIS1_EED2Ev:bb.a
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.g
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !155
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i
  %i.n = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.e, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !157
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.t = load ptr, ptr %.05.i.i, align 8, !tbaa !42 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyIN5vcpkg15FullPackageSpecEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !43
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #23
  br label %_ZSt8_DestroyIN5vcpkg15FullPackageSpecEEvPT_.exit.i.i

_ZSt8_DestroyIN5vcpkg15FullPackageSpecEEvPT_.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5vcpkg15FullPackageSpecES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !332

_ZSt8_DestroyIPN5vcpkg15FullPackageSpecES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5vcpkg15FullPackageSpecEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !103
  br label %_ZSt8_DestroyIPN5vcpkg15FullPackageSpecES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN5vcpkg15FullPackageSpecES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5vcpkg15FullPackageSpecES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.z = phi ptr [ %.pr, %_ZSt8_DestroyIPN5vcpkg15FullPackageSpecES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.z, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5vcpkg15FullPackageSpecESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN5vcpkg15FullPackageSpecES1_EvT_S3_RSaIT0_E.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !160
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #23
  br label %_ZNSt12_Vector_baseIN5vcpkg15FullPackageSpecESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN5vcpkg15FullPackageSpecESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5vcpkg15FullPackageSpecES1_EvT_S3_RSaIT0_E.exit, %bb.c
  ret void
}

declare void @_ZN5vcpkg10ActionPlan26print_unsupported_warningsEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZN5vcpkg6Checks11unreachableERKNS_8LineInfoENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(24), ptr, i64) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_119extract_depend_infoERKSt6vectorIN5vcpkg17InstallPlanActionESaIS2_EERKNS1_7TripletES9_i(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 5 uses
  %7 = alloca %"struct.vcpkg::LineInfo", align 8  ; 6 uses
  %8 = alloca %"struct.vcpkg::StringView", align 8 ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %class.anon.327, align 8           ; 8 uses
  %11 = alloca %"class.std::map.329", align 8     ; 11 uses
  %12 = alloca %"class.std::vector.8", align 8    ; 15 uses
  %13 = alloca %"class.std::unordered_set", align 8 ; 16 uses
  %14 = alloca %"struct.std::hash", align 1       ; 4 uses
  %15 = alloca %"struct.std::equal_to", align 1   ; 4 uses
  %16 = alloca %"class.std::allocator.10", align 1 ; 4 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %18 = alloca %"struct.vcpkg::PackageDependInfo", align 8 ; 19 uses
  %.sroa.011.0.copyload = load ptr, ptr %3, align 8, !tbaa !91
  %i.a = load ptr, ptr %2, align 8, !tbaa !352
  %i.b = icmp eq ptr %i.a, %.sroa.011.0.copyload
  %i.c = zext i1 %i.b to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr %2, ptr %10, align 8, !tbaa !353
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %3, ptr %i.d, align 8, !tbaa !353
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 %i.c, ptr %i.e, align 8, !tbaa !163
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !147  ; 3 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !146    ; 3 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 440                 ; 3 uses
  %i.m = icmp ugt i64 %i.l, 76861433640456465
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #24
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not237 = icmp eq ptr %i.g, %i.h
  br i1 %.not237, label %_ZNSt6vectorIN5vcpkg17PackageDependInfoESaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN5vcpkg17PackageDependInfoESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN5vcpkg17PackageDependInfoESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = mul nuw nsw i64 %i.l, 120
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #26
          to label %.noexc38 unwind label %bb.l   ; 5 uses

.noexc38:                                         ; preds = %_ZNSt12_Vector_baseIN5vcpkg17PackageDependInfoESaIS1_EE11_M_allocateEm.exit.i
  %i.r = load ptr, ptr %0, align 8, !tbaa !165
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !166
  %i.t = tail call noundef ptr @_ZNSt6vectorIN5vcpkg17PackageDependInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %i.r, ptr noundef %i.s, ptr noundef nonnull %i.q, ptr noundef nonnull align 8 dereferenceable(24) %0) #22 ; 0 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !165    ; 3 uses
  %.not.i8.i = icmp eq ptr %i.u, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN5vcpkg17PackageDependInfoESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.d

bb.d:                                             ; preds = %.noexc38
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !167
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.y) #23
  br label %_ZNSt12_Vector_baseIN5vcpkg17PackageDependInfoESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN5vcpkg17PackageDependInfoESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.d, %.noexc38
  store ptr %i.q, ptr %0, align 8, !tbaa !165
  store ptr %i.q, ptr %i.o, align 8, !tbaa !166
  %i.z = getelementptr inbounds nuw [120 x i8], ptr %i.q, i64 %i.l
  store ptr %i.z, ptr %i.n, align 8, !tbaa !167
  %.pre = load ptr, ptr %1, align 8, !tbaa !149
  %.pre162 = load ptr, ptr %i.f, align 8, !tbaa !149
  br label %_ZNSt6vectorIN5vcpkg17PackageDependInfoESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN5vcpkg17PackageDependInfoESaIS1_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN5vcpkg17PackageDependInfoESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.c
  %.val169 = phi ptr [ %i.q, %_ZNSt12_Vector_baseIN5vcpkg17PackageDependInfoESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ null, %bb.c ] ; 2 uses
  %i.aa = phi ptr [ %.pre162, %_ZNSt12_Vector_baseIN5vcpkg17PackageDependInfoESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.ab = phi ptr [ %.pre, %_ZNSt12_Vector_baseIN5vcpkg17PackageDependInfoESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %i.h, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !86
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr null, ptr %i.ad, align 8, !tbaa !58
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !87
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !88
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i64 0, ptr %i.ag, align 8, !tbaa !89
  %.not145 = icmp eq ptr %i.ab, %i.aa
  br i1 %.not145, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %_ZNSt6vectorIN5vcpkg17PackageDependInfoESaIS1_EE7reserveEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  br label %.loopexit

.lr.ph:                                           ; preds = %_ZNSt6vectorIN5vcpkg17PackageDependInfoESaIS1_EE7reserveEm.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 12 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %18, i64 56 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %18, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %18, i64 72
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %18, i64 88 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %18, i64 96 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %18, i64 104 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %18, i64 112 ; 2 uses
  %i.bc = getelementptr i8, ptr %0, i64 8         ; 2 uses
  br label %bb.m

._crit_edge:                                      ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %.val.pre = load ptr, ptr %0, align 8, !tbaa !46, !noalias !354 ; 6 uses
  %.val36.pre = load ptr, ptr %i.bc, align 8, !tbaa !46, !noalias !355 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %.not1420.i = icmp eq ptr %.val36.pre, %.val.pre
  br i1 %.not1420.i, label %.loopexit, label %.lr.ph22.i

.lr.ph22.i:                                       ; preds = %._crit_edge
  %19 = load ptr, ptr %i.ad, align 8
  %.fr.i = freeze ptr %19                         ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %.fr.i, null
  br i1 %.not10.i.i.i.i, label %.lr.ph22.split.us.i, label %.lr.ph22.split.i

.lr.ph22.split.us.i:                              ; preds = %.lr.ph22.i, %.loopexit.us.i
  %.sroa.010.021.us.i = phi ptr [ %i.bh, %.loopexit.us.i ], [ %.val36.pre, %.lr.ph22.i ] ; 3 uses
  %i.bd = getelementptr inbounds i8, ptr %.sroa.010.021.us.i, i64 -24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !52 ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %.sroa.010.021.us.i, i64 -16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !52
  %.not1517.us.i = icmp eq ptr %i.be, %i.bg
  br i1 %.not1517.us.i, label %.loopexit.us.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5vcpkg17PackageDependInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread.i

.loopexit.us.i:                                   ; preds = %.lr.ph22.split.us.i
  %i.bh = getelementptr inbounds i8, ptr %.sroa.010.021.us.i, i64 -120 ; 2 uses
  %.not14.us.i = icmp eq ptr %i.bh, %.val.pre
  br i1 %.not14.us.i, label %.loopexit, label %.lr.ph22.split.us.i, !llvm.loop !337

.loopexit.i:                                      ; preds = %bb.k, %.lr.ph22.split.i
  %.not14.i = icmp eq ptr %i.bi, %.val.pre
  br i1 %.not14.i, label %.loopexit, label %.lr.ph22.split.i, !llvm.loop !337

.lr.ph22.split.i:                                 ; preds = %.lr.ph22.i, %.loopexit.i
  %.sroa.010.021.i = phi ptr [ %i.bi, %.loopexit.i ], [ %.val36.pre, %.lr.ph22.i ] ; 4 uses
  %i.bi = getelementptr inbounds i8, ptr %.sroa.010.021.i, i64 -120 ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %.sroa.010.021.i, i64 -88
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !122 ; 2 uses
  %i.bl = add nsw i32 %i.bk, 1
  %i.bm = getelementptr inbounds i8, ptr %.sroa.010.021.i, i64 -24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !52 ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %.sroa.010.021.i, i64 -16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !52 ; 2 uses
  %.not1517.i = icmp eq ptr %i.bn, %i.bp
  br i1 %.not1517.i, label %.loopexit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph22.split.i, %bb.k
  %.sroa.06.018.i = phi ptr [ %i.da, %bb.k ], [ %i.bn, %.lr.ph22.split.i ] ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.06.018.i, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !44 ; 4 uses
  %i.bs = load ptr, ptr %.sroa.06.018.i, align 8  ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.fr.i, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ] ; 7 uses
  %.0811.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ] ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !44 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.br, i64 %i.bu) ; 2 uses
  %i.bv = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.bv, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !42
  %i.by = call i32 @memcmp(ptr noundef %i.bx, ptr noundef %i.bs, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.by, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.e
  %i.bz = sub i64 %i.bu, %i.br
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bz, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.by, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.ca = icmp slt i32 %.0.i.i.i.i.i.i.i, 0       ; 5 uses
  %.19.i.i.i.i = select i1 %i.ca, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 2 uses
  %.1.in.v.i.i.i.i = select i1 %i.ca, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !60 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_RN5vcpkg17PackageDependInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %bb.e, !llvm.loop !338

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_RN5vcpkg17PackageDependInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.cb = icmp eq ptr %.19.i.i.i.i, %i.ac
  br i1 %i.cb, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5vcpkg17PackageDependInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_RN5vcpkg17PackageDependInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ca, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.cc = load i64, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !44 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.cc, i64 %i.br) ; 2 uses
  %i.cd = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.cd, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.f
  %.19.i.i.i.i.sroa.sel100.v.sroa.sel.v.sroa.sel.v = select i1 %i.ca, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel100.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel100.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.ce = load ptr, ptr %.19.i.i.i.i.sroa.sel100.v.sroa.sel.v.sroa.sel, align 8, !tbaa !42
  %i.cf = call i32 @memcmp(ptr noundef %i.bs, ptr noundef %i.ce, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5vcpkg17PackageDependInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.f
  %i.cg = sub i64 %i.br, %i.cc
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.cg, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5vcpkg17PackageDependInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5vcpkg17PackageDependInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.cf, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ch = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br i1 %i.ch, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5vcpkg17PackageDependInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread.i, label %bb.i

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5vcpkg17PackageDependInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread.i: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5vcpkg17PackageDependInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_RN5vcpkg17PackageDependInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, %.lr.ph22.split.us.i
  %.us-phi.i = phi ptr [ %i.be, %.lr.ph22.split.us.i ], [ %.sroa.06.018.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_RN5vcpkg17PackageDependInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i ], [ %.sroa.06.018.i, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5vcpkg17PackageDependInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store i32 111, ptr %7, align 8, !tbaa !79
  %i.ci = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.23, ptr %i.ci, align 8, !tbaa !80
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr @__func__._ZN12_GLOBAL__N_128assign_depth_to_dependenciesERKSt6vectorIN5vcpkg17PackageDependInfoESaIS2_EERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS2_St4lessISD_ESaISt4pairIKSD_SE_EEE, ptr %i.cj, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22, !noalias !356
  %i.ck = load ptr, ptr %.us-phi.i, align 8, !tbaa !42, !noalias !356
  %i.cl = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !44, !noalias !356
  store ptr %i.ck, ptr %6, align 16, !tbaa !43, !noalias !356
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !43, !noalias !356
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull @.str.71, i64 33, i64 13, ptr nonnull %6)
          to label %.noexc39 unwind label %bb.bg

.noexc39:                                         ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5vcpkg17PackageDependInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !356
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(32) %9) #22
  %i.co = load ptr, ptr %8, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cq = load i64, ptr %i.cp, align 8
  invoke void @_ZN5vcpkg6Checks11unreachableERKNS_8LineInfoENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr %i.co, i64 %i.cq) #24
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.noexc39
  unreachable

bb.h:                                             ; preds = %.noexc39
  %i.cr = landingpad { ptr, i32 }
          cleanup
  %i.cs = load ptr, ptr %9, align 8, !tbaa !42    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !43
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.body

bb.i:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN5vcpkg17PackageDependInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEE4findERSC_.exit.i
  %.19.i.i.i.i.sroa.sel103.v.sroa.sel.v.sroa.sel.v = select i1 %i.ca, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel103.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel103.v.sroa.sel.v.sroa.sel.v, i64 64
  %i.cx = load ptr, ptr %.19.i.i.i.i.sroa.sel103.v.sroa.sel.v.sroa.sel, align 8, !tbaa !358, !nonnull !65, !align !168
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 32 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !122
  %.not.i = icmp sgt i32 %i.cz, %i.bk
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.bl, ptr %i.cy, align 8, !tbaa !122
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.06.018.i, i64 32 ; 2 uses
  %.not15.i = icmp eq ptr %i.da, %i.bp
  br i1 %.not15.i, label %.loopexit.i, label %.lr.ph.i.i.i.i

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIN5vcpkg17PackageDependInfoESaIS1_EE11_M_allocateEm.exit.i, %bb.b
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.m:                                             ; preds = %.lr.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %.sroa.095.0146 = phi ptr [ %i.ab, %.lr.ph ], [ %i.jm, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.095.0146, i64 112 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !359)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false), !alias.scope !359
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.095.0146, i64 120 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !171, !noalias !359 ; 3 uses
  %i.df = load ptr, ptr %i.dc, align 8, !tbaa !172, !noalias !359 ; 3 uses
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dg, %i.dh
  %i.dj = sdiv exact i64 %i.di, 40                ; 3 uses
  %i.dk = icmp ugt i64 %i.dj, 288230376151711743
  br i1 %i.dk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #24
          to label %.noexc92 unwind label %.loopexit.split-lp108

.noexc92:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %.not238 = icmp eq ptr %i.de, %i.df
  br i1 %.not238, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm.exit, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.o
  %i.dl = shl nuw nsw i64 %i.dj, 5
  %i.dm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #26
          to label %.noexc93 unwind label %.loopexit107 ; 4 uses

.noexc93:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i
  %i.dn = load ptr, ptr %12, align 8, !tbaa !155  ; 5 uses
  %i.do = load ptr, ptr %i.ai, align 8, !tbaa !156 ; 2 uses
  %.not10.i.i.i.i80 = icmp eq ptr %i.dn, %i.do
  br i1 %.not10.i.i.i.i80, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i90, label %.lr.ph.i.i.i.i81

.lr.ph.i.i.i.i81:                                 ; preds = %.noexc93, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i87
  %.012.i.i.i.i82 = phi ptr [ %i.ec, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i87 ], [ %i.dm, %.noexc93 ] ; 5 uses
  %.0911.i.i.i.i83 = phi ptr [ %i.eb, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i87 ], [ %i.dn, %.noexc93 ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %i.dp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i82, i64 16 ; 3 uses
  store ptr %i.dp, ptr %.012.i.i.i.i82, align 8, !tbaa !38, !alias.scope !360, !noalias !361
  %i.dq = load ptr, ptr %.0911.i.i.i.i83, align 8, !tbaa !42, !alias.scope !361, !noalias !360 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i83, i64 16 ; 5 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i84

bb.p:                                             ; preds = %.lr.ph.i.i.i.i81
  %i.dt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i83, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !44, !alias.scope !361, !noalias !360 ; 3 uses
  %i.dv = icmp ult i64 %i.du, 16
  call void @llvm.assume(i1 %i.dv)
  %i.dw = add nuw nsw i64 %i.du, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dp, ptr noundef nonnull align 8 dereferenceable(1) %i.dr, i64 %i.dw, i1 false), !alias.scope !362
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i84: ; preds = %.lr.ph.i.i.i.i81
  store ptr %i.dq, ptr %.012.i.i.i.i82, align 8, !tbaa !42, !alias.scope !360, !noalias !361
  %i.dx = load i64, ptr %i.dr, align 8, !tbaa !43, !alias.scope !361, !noalias !360
  store i64 %i.dx, ptr %i.dp, align 8, !tbaa !43, !alias.scope !360, !noalias !361
  %.phi.trans.insert.i.i.i.i.i85 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i83, i64 8
end_hunk_0
