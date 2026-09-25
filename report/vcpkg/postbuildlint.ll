Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/postbuildlint?download=true
inline.NumInlined: 4847
inline.NumDeleted: 1797
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN5vcpkgL31check_crt_group_linkage_of_libsENS_19LinkageAndBuildTypeERKNS_4PathERKSt6vectorIS1_SaIS1_EENS_4SpanIKNS_8OptionalINS_14LibInformationEEEEERSt3mapIS0_S4_INS_15FileAndLinkagesESaISG_EESt4lessIS0_ESaISt4pairIKS0_SI_EEE:bb.a
bb.a:
  %5 = alloca %"class.std::tuple.304", align 8    ; 4 uses
  %6 = alloca %"class.std::tuple.307", align 1    ; 3 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"struct.vcpkg::LinkageAndBuildType", align 2 ; 5 uses
  %8 = alloca %"struct.vcpkg::LineInfo", align 8  ; 5 uses
  %9 = alloca %"struct.vcpkg::Path", align 8      ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"struct.vcpkg::FileAndLinkages", align 8 ; 17 uses
  %12 = alloca %"struct.vcpkg::StringView", align 8 ; 3 uses
  %13 = alloca %"struct.vcpkg::StringView", align 8 ; 3 uses
  %14 = alloca %"struct.vcpkg::StringView", align 8 ; 3 uses
  %15 = alloca %"struct.vcpkg::StringView", align 8 ; 3 uses
  store i16 %0, ptr %7, align 2
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109  ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !108    ; 2 uses
  %.not182 = icmp eq ptr %i.c, %i.d
  br i1 %.not182, label %._crit_edge181, label %.lr.ph180

.lr.ph180:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 15 uses
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 20 uses
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 14 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 1 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  br label %bb.b

._crit_edge181:                                   ; preds = %bb.bb, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph180, %bb.bb
  %i.u = phi ptr [ %i.d, %.lr.ph180 ], [ %i.ju, %bb.bb ] ; 2 uses
  %i.v = phi ptr [ %i.c, %.lr.ph180 ], [ %i.jv, %bb.bb ]
  %.0178 = phi i64 [ 0, %.lr.ph180 ], [ %i.jw, %bb.bb ] ; 3 uses
  %i.w = getelementptr inbounds nuw [80 x i8], ptr %3, i64 %.0178 ; 3 uses
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %.0178 ; 3 uses
  %i.y = load i8, ptr %i.w, align 8, !tbaa !152, !range !84, !noundef !85
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.c, label %bb.bb

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store i32 1254, ptr %8, align 8, !tbaa !121
  store <2 x ptr> <ptr @.str.23, ptr @__func__._ZN5vcpkgL31check_crt_group_linkage_of_libsENS_19LinkageAndBuildTypeERKNS_4PathERKSt6vectorIS1_SaIS1_EENS_4SpanIKNS_8OptionalINS_14LibInformationEEEEERSt3mapIS0_S4_INS_15FileAndLinkagesESaISG_EESt4lessIS0_ESaISt4pairIKS0_SI_EEE>, ptr %i.e, align 8, !tbaa !65
  invoke void @_ZN5vcpkg6Checks10check_exitERKNS_8LineInfoEbNS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(24) %8, i1 noundef zeroext true, ptr nonnull @.str.271, i64 14)
          to label %_ZNKR5vcpkg8OptionalINS_14LibInformationEE13value_or_exitERKNS_8LineInfoE.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #28
  unreachable

_ZNKR5vcpkg8OptionalINS_14LibInformationEE13value_or_exitERKNS_8LineInfoE.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.ac = call { ptr, i64 } @_ZNK5vcpkg4PathcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %i.x) #23 ; 2 uses
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0
  %i.ae = extractvalue { ptr, i64 } %i.ac, 1
  call void @_ZNKR5vcpkg4PathdvENS_10StringViewE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Path") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %i.ad, i64 %i.ae)
  %i.af = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNO5vcpkg4Path6nativeB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !668)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 56 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !91, !noalias !668 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 4 uses
  store ptr %i.f, ptr %10, align 8, !tbaa !97, !alias.scope !669
  store i64 0, ptr %i.g, align 8, !tbaa !98, !alias.scope !669
  store i8 0, ptr %i.f, align 8, !tbaa !45, !alias.scope !669
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZN5vcpkg7Strings4joinISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaIS8_EEEES8_NS_13StringLiteralERKT_.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKR5vcpkg8OptionalINS_14LibInformationEE13value_or_exitERKNS_8LineInfoE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %.sroa.04.0.i.i = phi ptr [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i ], [ %i.ah, %_ZNKR5vcpkg8OptionalINS_14LibInformationEE13value_or_exitERKNS_8LineInfoE.exit ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i.i, i64 32
  invoke void @_ZN5vcpkg7Strings7details15append_internalERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.ak)
          to label %_ZN5vcpkg7Strings6appendIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS7_S8_DpRKT_.exit.i.i unwind label %.loopexit.i.i

_ZN5vcpkg7Strings6appendIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS7_S8_DpRKT_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.al = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.04.0.i.i) #29 ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.ai
  br i1 %i.am, label %_ZN5vcpkg7Strings4joinISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaIS8_EEEES8_NS_13StringLiteralERKT_.exit, label %bb.f

.loopexit.i.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp.i.i:                           ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ] ; 2 uses
  %i.an = load ptr, ptr %10, align 8, !tbaa !44, !alias.scope !669 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.f
  br i1 %i.ao, label %.body, label %.body.sink.split

bb.f:                                             ; preds = %_ZN5vcpkg7Strings6appendIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS7_S8_DpRKT_.exit.i.i
  %i.ap = load i64, ptr %i.g, align 8, !tbaa !98, !alias.scope !669
  %i.aq = icmp eq i64 %i.ap, 4611686018427387903
  br i1 %i.aq, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.304) #26
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.g
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.f
  %i.ar = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.247, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit.i.i ; 0 uses

_ZN5vcpkg7Strings4joinISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaIS8_EEEES8_NS_13StringLiteralERKT_.exit: ; preds = %_ZN5vcpkg7Strings6appendIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS7_S8_DpRKT_.exit.i.i, %_ZNKR5vcpkg8OptionalINS_14LibInformationEE13value_or_exitERKNS_8LineInfoE.exit
  invoke void @_ZN5vcpkg5Debug7printlnIJA9_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA18_cS8_EEEvDpRKT_(ptr noundef nonnull align 1 dereferenceable(9) @.str.332, ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 1 dereferenceable(18) @.str.333, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %_ZN5vcpkg7Strings4joinISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaIS8_EEEES8_NS_13StringLiteralERKT_.exit
  %i.as = load ptr, ptr %10, align 8, !tbaa !44   ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.f
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.au = load i64, ptr %i.f, align 8, !tbaa !45
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.aw = load ptr, ptr %9, align 8, !tbaa !44    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.h
  br i1 %i.ax, label %_ZN5vcpkg4PathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ay = load i64, ptr %i.h, align 8, !tbaa !45
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #24
  br label %_ZN5vcpkg4PathD2Ev.exit

_ZN5vcpkg4PathD2Ev.exit:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store ptr %i.i, ptr %11, align 8, !tbaa !97
  %i.ba = load ptr, ptr %i.x, align 8, !tbaa !44  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !98 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.bc, ptr %i.a, align 8, !tbaa !37
  %i.bd = icmp ugt i64 %i.bc, 15
  br i1 %i.bd, label %.noexc.i.i39, label %._crit_edge.i.i.i

.noexc.i.i39:                                     ; preds = %_ZN5vcpkg4PathD2Ev.exit
  %i.be = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.be, ptr %11, align 8, !tbaa !44
  %i.bf = load i64, ptr %i.a, align 8, !tbaa !37
  store i64 %i.bf, ptr %i.i, align 8, !tbaa !45
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i39, %_ZN5vcpkg4PathD2Ev.exit
  %i.bg = phi ptr [ %i.be, %.noexc.i.i39 ], [ %i.i, %_ZN5vcpkg4PathD2Ev.exit ] ; 2 uses
  switch i64 %i.bc, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZN5vcpkg4PathC2ERKS0_.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.bh = load i8, ptr %i.ba, align 1, !tbaa !45
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !45
  br label %_ZN5vcpkg4PathC2ERKS0_.exit

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %i.ba, i64 %i.bc, i1 false)
  br label %_ZN5vcpkg4PathC2ERKS0_.exit

_ZN5vcpkg4PathC2ERKS0_.exit:                      ; preds = %._crit_edge.i.i.i, %bb.i, %bb.j
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !37  ; 2 uses
  store i64 %i.bi, ptr %i.j, align 8, !tbaa !98
  %i.bj = load ptr, ptr %11, align 8, !tbaa !44
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi
  store i8 0, ptr %i.bk, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.bl = load ptr, ptr %i.ag, align 8, !tbaa !91 ; 2 uses
  %.not176 = icmp eq ptr %i.bl, %i.ai
  br i1 %.not176, label %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EED2Ev.exit.i, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE9push_backEOS1_.exit
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !149 ; 5 uses
  %.pre186 = load ptr, ptr %i.p, align 8, !tbaa !149 ; 5 uses
  %.not.i.i.i = icmp eq ptr %.pre, %.pre186
  br i1 %.not.i.i.i, label %_ZN5vcpkg4Util17sort_unique_eraseIRSt6vectorINS_19LinkageAndBuildTypeESaIS3_EESt4lessIvEEEOT_SA_T0_.exit, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEESt4lessIvEEvT_SB_T0_.exit.i

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEESt4lessIvEEvT_SB_T0_.exit.i: ; preds = %._crit_edge
  %i.bm = ptrtoint ptr %.pre186 to i64
  %i.bn = ptrtoint ptr %.pre to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 1
  %i.bq = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bp, i1 true)
  %i.br = shl nuw nsw i64 %i.bq, 1
  %i.bs = xor i64 %i.br, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_T0_T1_(ptr %.pre, ptr %.pre186, i64 noundef %i.bs)
          to label %.noexc unwind label %bb.ba

.noexc:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEESt4lessIvEEvT_SB_T0_.exit.i
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_T0_(ptr %.pre, ptr %.pre186)
          to label %.noexc40 unwind label %bb.ba

.noexc40:                                         ; preds = %.noexc
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !149 ; 6 uses
  %.pre23.i = load ptr, ptr %i.p, align 8, !tbaa !149 ; 6 uses
  %i.bt = icmp eq ptr %.pre.i, %.pre23.i
  br i1 %i.bt, label %_ZN5vcpkg4Util17sort_unique_eraseIRSt6vectorINS_19LinkageAndBuildTypeESaIS3_EESt4lessIvEEEOT_SA_T0_.exit, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.noexc40, %bb.k
  %.sroa.09.0.i.i.i.i = phi ptr [ %i.bu, %bb.k ], [ %.pre.i, %.noexc40 ] ; 7 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i, i64 2 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.bu, %.pre23.i
  br i1 %.not.i.i.i.i, label %_ZN5vcpkg4Util17sort_unique_eraseIRSt6vectorINS_19LinkageAndBuildTypeESaIS3_EESt4lessIvEEEOT_SA_T0_.exit, label %bb.k

bb.k:                                             ; preds = %.preheader.i.i.i.i
  %i.bv = load i8, ptr %.sroa.09.0.i.i.i.i, align 1, !tbaa !146 ; 2 uses
  %i.bw = load i8, ptr %i.bu, align 1, !tbaa !146
  %i.bx = icmp eq i8 %i.bv, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !range !84
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i, i64 3
  %i.cb = load i8, ptr %i.ca, align 1, !range !84
  %i.cc = icmp eq i8 %i.bz, %i.cb
  %i.cd = select i1 %i.bx, i1 %i.cc, i1 false
  br i1 %i.cd, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i, label %.preheader.i.i.i.i, !llvm.loop !664

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i: ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i, i64 4 ; 2 uses
  %.not18.i.i.i = icmp eq ptr %i.ce, %.pre23.i
  br i1 %.not18.i.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEEET_S9_S9_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i, %bb.m
  %i.cf = phi i8 [ %i.cs, %bb.m ], [ %i.bv, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i ] ; 2 uses
  %i.cg = phi ptr [ %i.ct, %bb.m ], [ %i.ce, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i ] ; 4 uses
  %.sroa.0.020.i.i.i = phi ptr [ %.sroa.0.1.i.i.i, %bb.m ], [ %.sroa.09.0.i.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i ] ; 3 uses
  %.sroa.011.019.i.i.i = phi ptr [ %i.cg, %bb.m ], [ %i.bu, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i ]
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !146
  %i.ci = icmp eq i8 %i.cf, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i.i, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !range !84
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.011.019.i.i.i, i64 3
  %i.cm = load i8, ptr %i.cl, align 1, !range !84
  %i.cn = icmp eq i8 %i.ck, %i.cm
  %i.co = select i1 %i.ci, i1 %i.cn, i1 false
  br i1 %i.co, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i.i, i64 2 ; 2 uses
  %i.cq = load i16, ptr %i.cg, align 1            ; 2 uses
  store i16 %i.cq, ptr %i.cp, align 1
  %i.cr = trunc i16 %i.cq to i8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i.i.i
  %i.cs = phi i8 [ %i.cf, %.lr.ph.i.i.i ], [ %i.cr, %bb.l ]
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.0.020.i.i.i, %.lr.ph.i.i.i ], [ %i.cp, %bb.l ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cg, i64 2 ; 2 uses
  %.not.i.i11.i = icmp eq ptr %i.ct, %.pre23.i
  br i1 %.not.i.i11.i, label %._crit_edge.i.i.loopexit.i, label %.lr.ph.i.i.i, !llvm.loop !665

._crit_edge.i.i.loopexit.i:                       ; preds = %bb.m
  %.pre24.pre.i = load ptr, ptr %i.p, align 8, !tbaa !149
  %.pre187.pre = load ptr, ptr %i.k, align 8, !tbaa !149
  br label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEEET_S9_S9_.exit.i

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEEET_S9_S9_.exit.i: ; preds = %._crit_edge.i.i.loopexit.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i
  %.pre187 = phi ptr [ %.pre.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i ], [ %.pre187.pre, %._crit_edge.i.i.loopexit.i ] ; 4 uses
  %.pre24.i = phi ptr [ %.pre23.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i ], [ %.pre24.pre.i, %._crit_edge.i.i.loopexit.i ] ; 2 uses
  %.sroa.0.0.lcssa.i.i.i = phi ptr [ %.sroa.09.0.i.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops19_Iter_equal_to_iterEET_SB_SB_T0_.exit.i.i.i ], [ %.sroa.0.1.i.i.i, %._crit_edge.i.i.loopexit.i ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i, i64 2 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %.pre24.i
  br i1 %i.cv, label %_ZN5vcpkg4Util17sort_unique_eraseIRSt6vectorINS_19LinkageAndBuildTypeESaIS3_EESt4lessIvEEEOT_SA_T0_.exit, label %_ZSt8_DestroyIPN5vcpkg19LinkageAndBuildTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN5vcpkg19LinkageAndBuildTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEEET_S9_S9_.exit.i
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %.pre187 to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = getelementptr inbounds i8, ptr %.pre187, i64 %i.cy ; 2 uses
  store ptr %i.cz, ptr %i.p, align 8, !tbaa !670
  br label %_ZN5vcpkg4Util17sort_unique_eraseIRSt6vectorINS_19LinkageAndBuildTypeESaIS3_EESt4lessIvEEEOT_SA_T0_.exit

bb.n:                                             ; preds = %_ZN5vcpkg7Strings4joinISt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaIS8_EEEES8_NS_13StringLiteralERKT_.exit
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = load ptr, ptr %10, align 8, !tbaa !44   ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.f
  br i1 %i.dc, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.n, %bb.e
  %.sink = phi ptr [ %i.an, %bb.e ], [ %i.db, %bb.n ]
  %.pn.ph = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.e ], [ %i.da, %bb.n ]
  %i.dd = load i64, ptr %i.f, align 8, !tbaa !45
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.de) #24
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.n, %bb.e
  %.pn = phi { ptr, i32 } [ %lpad.phi.i.i, %bb.e ], [ %i.da, %bb.n ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.df = load ptr, ptr %9, align 8, !tbaa !44    ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.h
  br i1 %i.dg, label %_ZN5vcpkg4PathD2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44: ; preds = %.body
  %i.dh = load i64, ptr %i.h, align 8, !tbaa !45
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #24
  br label %_ZN5vcpkg4PathD2Ev.exit46

_ZN5vcpkg4PathD2Ev.exit46:                        ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.bd

.lr.ph:                                           ; preds = %_ZN5vcpkg4PathC2ERKS0_.exit, %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE9push_backEOS1_.exit
  %.sroa.0130.0177 = phi ptr [ %i.hk, %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE9push_backEOS1_.exit ], [ %i.bl, %_ZN5vcpkg4PathC2ERKS0_.exit ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0130.0177, i64 32 ; 4 uses
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.dj) #23
  %i.dk = load ptr, ptr %12, align 8
  %i.dl = load i64, ptr %i.l, align 8
  %i.dm = call noundef zeroext i1 @_ZNK5vcpkg7Strings34case_insensitive_ascii_equals_implclENS_10StringViewES2_(ptr noundef nonnull align 1 dereferenceable(1) @_ZN5vcpkg7Strings29case_insensitive_ascii_equalsE, ptr %i.dk, i64 %i.dl, ptr nonnull @.str.334, i64 19) #23
  br i1 %i.dm, label %bb.o, label %bb.u

bb.o:                                             ; preds = %.lr.ph
  %i.dn = load ptr, ptr %i.p, align 8, !tbaa !670 ; 3 uses
  %i.do = load ptr, ptr %i.q, align 8, !tbaa !248
  %.not.i.i = icmp eq ptr %i.dn, %i.do
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i16 0, ptr %i.dn, align 1
  %i.dp = load ptr, ptr %i.p, align 8, !tbaa !670
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  store ptr %i.dq, ptr %i.p, align 8, !tbaa !670
  br label %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE9push_backEOS1_.exit

bb.q:                                             ; preds = %bb.o
  %i.dr = load ptr, ptr %i.k, align 8, !tbaa !249 ; 4 uses
  %i.ds = ptrtoint ptr %i.dn to i64
  %i.dt = ptrtoint ptr %i.dr to i64               ; 2 uses
  %i.du = sub i64 %i.ds, %i.dt                    ; 5 uses
  %i.dv = icmp eq i64 %i.du, 9223372036854775806
  br i1 %i.dv, label %bb.r, label %_ZNKSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.226) #26
          to label %.noexc48 unwind label %.loopexit.split-lp146

.noexc48:                                         ; preds = %bb.r
  unreachable

_ZNKSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.dw = ashr exact i64 %i.du, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dw, i64 1)
  %i.dx = add i64 %.sroa.speculated.i.i.i.i, %i.dw ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.dw
  %i.dz = call i64 @llvm.umin.i64(i64 %i.dx, i64 4611686018427387903)
  %i.ea = select i1 %i.dy, i64 4611686018427387903, i64 %i.dz ; 3 uses
  %.not.i.i.i.i47 = icmp ne i64 %i.ea, 0
  call void @llvm.assume(i1 %.not.i.i.i.i47)
  %i.eb = shl nuw nsw i64 %i.ea, 1
  %i.ec = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #27
          to label %.noexc49 unwind label %.loopexit145 ; 4 uses

.noexc49:                                         ; preds = %_ZNKSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 %i.du ; 2 uses
  store i16 0, ptr %i.ed, align 1
  %i.ee = icmp sgt i64 %i.du, 0
  br i1 %i.ee, label %bb.s, label %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.s:                                             ; preds = %.noexc49
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ec, ptr align 1 %i.dr, i64 %i.du, i1 false)
  br label %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.s, %.noexc49
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  %.not.i17.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  %i.eg = load ptr, ptr %i.q, align 8, !tbaa !248
end_hunk_0
begin_hunk_1_@_ZN5vcpkgL31check_crt_group_linkage_of_libsENS_19LinkageAndBuildTypeERKNS_4PathERKSt6vectorIS1_SaIS1_EENS_4SpanIKNS_8OptionalINS_14LibInformationEEEEERSt3mapIS0_S4_INS_15FileAndLinkagesESaISG_EESt4lessIS0_ESaISt4pairIKS0_SI_EEE:bb.a
  %i.fi = sub i64 %i.fh, %i.et
  call void @_ZdlPvm(ptr noundef nonnull %i.er, i64 noundef %i.fi) #24
  br label %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i56

_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i56: ; preds = %bb.aa, %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i54
  store ptr %i.fc, ptr %i.k, align 8, !tbaa !249
  store ptr %i.ff, ptr %i.p, align 8, !tbaa !670
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.fc, i64 %i.fa
  store ptr %i.fj, ptr %i.q, align 8, !tbaa !248
  br label %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE9push_backEOS1_.exit

.loopexit140:                                     ; preds = %_ZNKSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i51
  %lpad.loopexit142 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit.split-lp141:                            ; preds = %bb.y
  %lpad.loopexit.split-lp143 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ab:                                            ; preds = %bb.u
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.dj) #23
  %i.fk = load ptr, ptr %14, align 8
  %i.fl = load i64, ptr %i.n, align 8
  %i.fm = call noundef zeroext i1 @_ZNK5vcpkg7Strings34case_insensitive_ascii_equals_implclENS_10StringViewES2_(ptr noundef nonnull align 1 dereferenceable(1) @_ZN5vcpkg7Strings29case_insensitive_ascii_equalsE, ptr %i.fk, i64 %i.fl, ptr nonnull @.str.336, i64 19) #23
  br i1 %i.fm, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  %i.fn = load ptr, ptr %i.p, align 8, !tbaa !670 ; 3 uses
  %i.fo = load ptr, ptr %i.q, align 8, !tbaa !248
  %.not.i.i60 = icmp eq ptr %i.fn, %i.fo
  br i1 %.not.i.i60, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i16 1, ptr %i.fn, align 1
  %i.fp = load ptr, ptr %i.p, align 8, !tbaa !670
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 2
  store ptr %i.fq, ptr %i.p, align 8, !tbaa !670
  br label %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE9push_backEOS1_.exit

bb.ae:                                            ; preds = %bb.ac
  %i.fr = load ptr, ptr %i.k, align 8, !tbaa !249 ; 4 uses
  %i.fs = ptrtoint ptr %i.fn to i64
  %i.ft = ptrtoint ptr %i.fr to i64               ; 2 uses
  %i.fu = sub i64 %i.fs, %i.ft                    ; 5 uses
  %i.fv = icmp eq i64 %i.fu, 9223372036854775806
  br i1 %i.fv, label %bb.af, label %_ZNKSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i61

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.226) #26
          to label %.noexc67 unwind label %.loopexit.split-lp136

.noexc67:                                         ; preds = %bb.af
  unreachable

_ZNKSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i61: ; preds = %bb.ae
  %i.fw = ashr exact i64 %i.fu, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i62 = call i64 @llvm.umax.i64(i64 %i.fw, i64 1)
  %i.fx = add i64 %.sroa.speculated.i.i.i.i62, %i.fw ; 2 uses
  %i.fy = icmp ult i64 %i.fx, %i.fw
  %i.fz = call i64 @llvm.umin.i64(i64 %i.fx, i64 4611686018427387903)
  %i.ga = select i1 %i.fy, i64 4611686018427387903, i64 %i.fz ; 3 uses
  %.not.i.i.i.i63 = icmp ne i64 %i.ga, 0
  call void @llvm.assume(i1 %.not.i.i.i.i63)
  %i.gb = shl nuw nsw i64 %i.ga, 1
  %i.gc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gb) #27
          to label %.noexc68 unwind label %.loopexit135 ; 4 uses

.noexc68:                                         ; preds = %_ZNKSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i61
  %i.gd = getelementptr inbounds i8, ptr %i.gc, i64 %i.fu ; 2 uses
  store i16 1, ptr %i.gd, align 1
  %i.ge = icmp sgt i64 %i.fu, 0
  br i1 %i.ge, label %bb.ag, label %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i64

bb.ag:                                            ; preds = %.noexc68
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.gc, ptr align 1 %i.fr, i64 %i.fu, i1 false)
  br label %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i64

_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i64: ; preds = %bb.ag, %.noexc68
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 2
  %.not.i17.i.i.i65 = icmp eq ptr %i.fr, null
  br i1 %.not.i17.i.i.i65, label %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i66, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i64
  %i.gg = load ptr, ptr %i.q, align 8, !tbaa !248
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = sub i64 %i.gh, %i.ft
  call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef %i.gi) #24
  br label %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i66

_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i66: ; preds = %bb.ah, %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i64
  store ptr %i.gc, ptr %i.k, align 8, !tbaa !249
  store ptr %i.gf, ptr %i.p, align 8, !tbaa !670
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.gc, i64 %i.ga
  store ptr %i.gj, ptr %i.q, align 8, !tbaa !248
  br label %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE9push_backEOS1_.exit

.loopexit135:                                     ; preds = %_ZNKSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i61
  %lpad.loopexit137 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit.split-lp136:                            ; preds = %bb.af
  %lpad.loopexit.split-lp138 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ai:                                            ; preds = %bb.ab
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(32) %i.dj) #23
  %i.gk = load ptr, ptr %15, align 8
  %i.gl = load i64, ptr %i.o, align 8
  %i.gm = call noundef zeroext i1 @_ZNK5vcpkg7Strings34case_insensitive_ascii_equals_implclENS_10StringViewES2_(ptr noundef nonnull align 1 dereferenceable(1) @_ZN5vcpkg7Strings29case_insensitive_ascii_equalsE, ptr %i.gk, i64 %i.gl, ptr nonnull @.str.337, i64 18) #23
  br i1 %i.gm, label %bb.aj, label %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE9push_backEOS1_.exit

bb.aj:                                            ; preds = %bb.ai
  %i.gn = load ptr, ptr %i.p, align 8, !tbaa !670 ; 3 uses
  %i.go = load ptr, ptr %i.q, align 8, !tbaa !248
  %.not.i.i70 = icmp eq ptr %i.gn, %i.go
  br i1 %.not.i.i70, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i16 257, ptr %i.gn, align 1
  %i.gp = load ptr, ptr %i.p, align 8, !tbaa !670
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 2
  store ptr %i.gq, ptr %i.p, align 8, !tbaa !670
  br label %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE9push_backEOS1_.exit

bb.al:                                            ; preds = %bb.aj
  %i.gr = load ptr, ptr %i.k, align 8, !tbaa !249 ; 4 uses
  %i.gs = ptrtoint ptr %i.gn to i64
  %i.gt = ptrtoint ptr %i.gr to i64               ; 2 uses
  %i.gu = sub i64 %i.gs, %i.gt                    ; 5 uses
  %i.gv = icmp eq i64 %i.gu, 9223372036854775806
  br i1 %i.gv, label %bb.am, label %_ZNKSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i71

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.226) #26
          to label %.noexc77 unwind label %.loopexit.split-lp

.noexc77:                                         ; preds = %bb.am
  unreachable

_ZNKSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i71: ; preds = %bb.al
  %i.gw = ashr exact i64 %i.gu, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i72 = call i64 @llvm.umax.i64(i64 %i.gw, i64 1)
  %i.gx = add i64 %.sroa.speculated.i.i.i.i72, %i.gw ; 2 uses
  %i.gy = icmp ult i64 %i.gx, %i.gw
  %i.gz = call i64 @llvm.umin.i64(i64 %i.gx, i64 4611686018427387903)
  %i.ha = select i1 %i.gy, i64 4611686018427387903, i64 %i.gz ; 3 uses
  %.not.i.i.i.i73 = icmp ne i64 %i.ha, 0
  call void @llvm.assume(i1 %.not.i.i.i.i73)
  %i.hb = shl nuw nsw i64 %i.ha, 1
  %i.hc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hb) #27
          to label %.noexc78 unwind label %.loopexit ; 4 uses

.noexc78:                                         ; preds = %_ZNKSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i71
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 %i.gu ; 2 uses
  store i16 257, ptr %i.hd, align 1
  %i.he = icmp sgt i64 %i.gu, 0
  br i1 %i.he, label %bb.an, label %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i74

bb.an:                                            ; preds = %.noexc78
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hc, ptr align 1 %i.gr, i64 %i.gu, i1 false)
  br label %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i74

_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i74: ; preds = %bb.an, %.noexc78
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 2
  %.not.i17.i.i.i75 = icmp eq ptr %i.gr, null
  br i1 %.not.i17.i.i.i75, label %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i76, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i74
  %i.hg = load ptr, ptr %i.q, align 8, !tbaa !248
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = sub i64 %i.hh, %i.gt
  call void @_ZdlPvm(ptr noundef nonnull %i.gr, i64 noundef %i.hi) #24
  br label %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i76

_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i76: ; preds = %bb.ao, %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i74
  store ptr %i.hc, ptr %i.k, align 8, !tbaa !249
  store ptr %i.hf, ptr %i.p, align 8, !tbaa !670
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %i.hc, i64 %i.ha
  store ptr %i.hj, ptr %i.q, align 8, !tbaa !248
  br label %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE9push_backEOS1_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i71
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit.split-lp:                               ; preds = %bb.am
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.ak, %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i76, %bb.ad, %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i66, %bb.w, %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i56, %bb.p, %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ai
  %i.hk = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0130.0177) #29 ; 2 uses
  %.not = icmp eq ptr %i.hk, %i.ai
  br i1 %.not, label %._crit_edge, label %.lr.ph

_ZN5vcpkg4Util17sort_unique_eraseIRSt6vectorINS_19LinkageAndBuildTypeESaIS3_EESt4lessIvEEEOT_SA_T0_.exit: ; preds = %.preheader.i.i.i.i, %_ZSt8_DestroyIPN5vcpkg19LinkageAndBuildTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEEET_S9_S9_.exit.i, %.noexc40, %._crit_edge
  %16 = phi ptr [ %.pre, %._crit_edge ], [ %.pre187, %_ZSt8_DestroyIPN5vcpkg19LinkageAndBuildTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i ], [ %.pre187, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEEET_S9_S9_.exit.i ], [ %.pre.i, %.noexc40 ], [ %.pre.i, %.preheader.i.i.i.i ] ; 6 uses
  %17 = phi ptr [ %.pre186, %._crit_edge ], [ %i.cz, %_ZSt8_DestroyIPN5vcpkg19LinkageAndBuildTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i ], [ %.pre24.i, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEEET_S9_S9_.exit.i ], [ %.pre.i, %.noexc40 ], [ %.pre23.i, %.preheader.i.i.i.i ] ; 2 uses
  %i.hl = ptrtoint ptr %17 to i64
  %i.hm = ptrtoint ptr %16 to i64
  %i.hn = sub i64 %i.hl, %i.hm
  %i.ho = icmp ugt i64 %i.hn, 2
  br i1 %i.ho, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %_ZN5vcpkg4Util17sort_unique_eraseIRSt6vectorINS_19LinkageAndBuildTypeESaIS3_EESt4lessIvEEEOT_SA_T0_.exit
  %i.hp = icmp eq ptr %17, %16
  br i1 %i.hp, label %_ZNSt6vectorIN5vcpkg15FileAndLinkagesESaIS1_EE9push_backEOS1_.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hq = load i8, ptr %16, align 1, !tbaa !146
  %i.hr = load i8, ptr %7, align 2, !tbaa !146
  %i.hs = icmp ne i8 %i.hq, %i.hr
  %i.ht = getelementptr inbounds nuw i8, ptr %16, i64 1
  %i.hu = load i8, ptr %i.ht, align 1, !range !84
  %i.hv = load i8, ptr %i.r, align 1, !range !84
  %i.hw = icmp ne i8 %i.hu, %i.hv
  %.not3.i = select i1 %i.hs, i1 true, i1 %i.hw
  br i1 %.not3.i, label %bb.ar, label %_ZNSt6vectorIN5vcpkg15FileAndLinkagesESaIS1_EE9push_backEOS1_.exit

bb.ar:                                            ; preds = %bb.aq, %_ZN5vcpkg4Util17sort_unique_eraseIRSt6vectorINS_19LinkageAndBuildTypeESaIS3_EESt4lessIvEEEOT_SA_T0_.exit
  %i.hx = load ptr, ptr %i.s, align 8, !tbaa !90  ; 2 uses
  %.not13.i.i.i.i = icmp eq ptr %i.hx, null
  br i1 %.not13.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ar
  %i.hy = load i8, ptr %7, align 2, !tbaa !146    ; 4 uses
  %i.hz = load i8, ptr %i.r, align 1, !range !84  ; 2 uses
  br label %bb.as

bb.as:                                            ; preds = %_ZNKSt4lessIN5vcpkg19LinkageAndBuildTypeEEclERKS1_S4_.exit.thread11.i.i.i.i, %.lr.ph.i.i.i.i
  %.015.i.i.i.i = phi ptr [ %i.hx, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZNKSt4lessIN5vcpkg19LinkageAndBuildTypeEEclERKS1_S4_.exit.thread11.i.i.i.i ] ; 5 uses
  %.0814.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessIN5vcpkg19LinkageAndBuildTypeEEclERKS1_S4_.exit.thread11.i.i.i.i ]
  %i.ia = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 32
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !146 ; 2 uses
  %i.ic = icmp slt i8 %i.ib, %i.hy
  br i1 %i.ic, label %_ZNKSt4lessIN5vcpkg19LinkageAndBuildTypeEEclERKS1_S4_.exit.thread.i.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.id = icmp sgt i8 %i.ib, %i.hy
  br i1 %i.id, label %_ZNKSt4lessIN5vcpkg19LinkageAndBuildTypeEEclERKS1_S4_.exit.thread11.i.i.i.i, label %_ZNKSt4lessIN5vcpkg19LinkageAndBuildTypeEEclERKS1_S4_.exit.i.i.i.i

_ZNKSt4lessIN5vcpkg19LinkageAndBuildTypeEEclERKS1_S4_.exit.i.i.i.i: ; preds = %bb.at
  %i.ie = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 33
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !250, !range !84, !noundef !85
  %i.ig = icmp samesign ult i8 %i.if, %i.hz
  br i1 %i.ig, label %_ZNKSt4lessIN5vcpkg19LinkageAndBuildTypeEEclERKS1_S4_.exit.thread.i.i.i.i, label %_ZNKSt4lessIN5vcpkg19LinkageAndBuildTypeEEclERKS1_S4_.exit.thread11.i.i.i.i

_ZNKSt4lessIN5vcpkg19LinkageAndBuildTypeEEclERKS1_S4_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessIN5vcpkg19LinkageAndBuildTypeEEclERKS1_S4_.exit.i.i.i.i, %bb.as
  br label %_ZNKSt4lessIN5vcpkg19LinkageAndBuildTypeEEclERKS1_S4_.exit.thread11.i.i.i.i

_ZNKSt4lessIN5vcpkg19LinkageAndBuildTypeEEclERKS1_S4_.exit.thread11.i.i.i.i: ; preds = %_ZNKSt4lessIN5vcpkg19LinkageAndBuildTypeEEclERKS1_S4_.exit.thread.i.i.i.i, %_ZNKSt4lessIN5vcpkg19LinkageAndBuildTypeEEclERKS1_S4_.exit.i.i.i.i, %bb.at
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessIN5vcpkg19LinkageAndBuildTypeEEclERKS1_S4_.exit.thread.i.i.i.i ], [ 16, %bb.at ], [ 16, %_ZNKSt4lessIN5vcpkg19LinkageAndBuildTypeEEclERKS1_S4_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0814.i.i.i.i, %_ZNKSt4lessIN5vcpkg19LinkageAndBuildTypeEEclERKS1_S4_.exit.thread.i.i.i.i ], [ %.015.i.i.i.i, %bb.at ], [ %.015.i.i.i.i, %_ZNKSt4lessIN5vcpkg19LinkageAndBuildTypeEEclERKS1_S4_.exit.i.i.i.i ] ; 9 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ih, align 8, !tbaa !96 ; 2 uses
  %.not.i.i.i.i80 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i80, label %_ZNSt3mapIN5vcpkg19LinkageAndBuildTypeESt6vectorINS0_15FileAndLinkagesESaIS3_EESt4lessIS1_ESaISt4pairIKS1_S5_EEE11lower_boundERS9_.exit.i, label %bb.as, !llvm.loop !666

_ZNSt3mapIN5vcpkg19LinkageAndBuildTypeESt6vectorINS0_15FileAndLinkagesESaIS3_EESt4lessIS1_ESaISt4pairIKS1_S5_EEE11lower_boundERS9_.exit.i: ; preds = %_ZNKSt4lessIN5vcpkg19LinkageAndBuildTypeEEclERKS1_S4_.exit.thread11.i.i.i.i
  %i.ii = icmp eq ptr %.19.i.i.i.i, %i.t
  br i1 %i.ii, label %.critedge.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt3mapIN5vcpkg19LinkageAndBuildTypeESt6vectorINS0_15FileAndLinkagesESaIS3_EESt4lessIS1_ESaISt4pairIKS1_S5_EEE11lower_boundERS9_.exit.i
  %i.ij = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !146 ; 2 uses
  %i.il = icmp slt i8 %i.hy, %i.ik
  br i1 %i.il, label %.critedge.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.im = icmp sgt i8 %i.hy, %i.ik
  br i1 %i.im, label %bb.aw, label %_ZNKSt4lessIN5vcpkg19LinkageAndBuildTypeEEclERKS1_S4_.exit.i

_ZNKSt4lessIN5vcpkg19LinkageAndBuildTypeEEclERKS1_S4_.exit.i: ; preds = %bb.av
  %i.in = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 33
  %i.io = load i8, ptr %i.in, align 1, !tbaa !250, !range !84, !noundef !85
  %i.ip = icmp samesign ult i8 %i.hz, %i.io
  br i1 %i.ip, label %.critedge.i, label %bb.aw

.critedge.i:                                      ; preds = %_ZNKSt4lessIN5vcpkg19LinkageAndBuildTypeEEclERKS1_S4_.exit.i, %bb.au, %_ZNSt3mapIN5vcpkg19LinkageAndBuildTypeESt6vectorINS0_15FileAndLinkagesESaIS3_EESt4lessIS1_ESaISt4pairIKS1_S5_EEE11lower_boundERS9_.exit.i, %bb.ar
  %.08.lcssa.i.i.i11.i = phi ptr [ %i.t, %bb.ar ], [ %.19.i.i.i.i, %_ZNKSt4lessIN5vcpkg19LinkageAndBuildTypeEEclERKS1_S4_.exit.i ], [ %.19.i.i.i.i, %_ZNSt3mapIN5vcpkg19LinkageAndBuildTypeESt6vectorINS0_15FileAndLinkagesESaIS3_EESt4lessIS1_ESaISt4pairIKS1_S5_EEE11lower_boundERS9_.exit.i ], [ %.19.i.i.i.i, %bb.au ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %7, ptr %5, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.iq = invoke ptr @_ZNSt8_Rb_treeIN5vcpkg19LinkageAndBuildTypeESt4pairIKS1_St6vectorINS0_15FileAndLinkagesESaIS5_EEESt10_Select1stIS8_ESt4lessIS1_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc81 unwind label %bb.ba

.noexc81:                                         ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.aw

bb.aw:                                            ; preds = %.noexc81, %_ZNKSt4lessIN5vcpkg19LinkageAndBuildTypeEEclERKS1_S4_.exit.i, %bb.av
  %.sroa.06.0.i = phi ptr [ %i.iq, %.noexc81 ], [ %.19.i.i.i.i, %_ZNKSt4lessIN5vcpkg19LinkageAndBuildTypeEEclERKS1_S4_.exit.i ], [ %.19.i.i.i.i, %bb.av ] ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48 ; 3 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !252 ; 8 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !253
  %.not.i.i82 = icmp eq ptr %i.is, %i.iu
  br i1 %.not.i.i82, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 16 ; 3 uses
  store ptr %i.iv, ptr %i.is, align 8, !tbaa !97
  %i.iw = load ptr, ptr %11, align 8, !tbaa !44   ; 2 uses
  %i.ix = icmp eq ptr %i.iw, %i.i
  br i1 %i.ix, label %bb.ay, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.iy = load i64, ptr %i.j, align 8, !tbaa !98  ; 3 uses
  %i.iz = icmp ult i64 %i.iy, 16
  call void @llvm.assume(i1 %i.iz)
  %i.ja = add nuw nsw i64 %i.iy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.iv, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.ja, i1 false)
  br label %_ZNSt6vectorIN5vcpkg15FileAndLinkagesESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ax
  store ptr %i.iw, ptr %i.is, align 8, !tbaa !44
  %i.jb = load i64, ptr %i.i, align 8, !tbaa !45
  store i64 %i.jb, ptr %i.iv, align 8, !tbaa !45
  %.pre188 = load i64, ptr %i.j, align 8, !tbaa !98
  br label %_ZNSt6vectorIN5vcpkg15FileAndLinkagesESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN5vcpkg15FileAndLinkagesESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.ay
  %i.jc = phi i64 [ %.pre188, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.iy, %bb.ay ]
  %i.jd = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  store i64 %i.jc, ptr %i.jd, align 8, !tbaa !98
  store ptr %i.i, ptr %11, align 8, !tbaa !44
  store i64 0, ptr %i.j, align 8, !tbaa !98
  store i8 0, ptr %i.i, align 8, !tbaa !45
  %i.je = getelementptr inbounds nuw i8, ptr %i.is, i64 32
  %i.jf = load <2 x ptr>, ptr %i.k, align 8, !tbaa !149
  store <2 x ptr> %i.jf, ptr %i.je, align 8, !tbaa !149
  %i.jg = getelementptr inbounds nuw i8, ptr %i.is, i64 48
  %i.jh = load ptr, ptr %i.q, align 8, !tbaa !248
  store ptr %i.jh, ptr %i.jg, align 8, !tbaa !248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.ji = load ptr, ptr %i.ir, align 8, !tbaa !252
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 56
  store ptr %i.jj, ptr %i.ir, align 8, !tbaa !252
  br label %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EED2Ev.exit.i

bb.az:                                            ; preds = %bb.aw
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  invoke void @_ZNSt6vectorIN5vcpkg15FileAndLinkagesESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.jk, ptr %i.is, ptr noundef nonnull align 8 dereferenceable(56) %11)
          to label %._ZNSt6vectorIN5vcpkg15FileAndLinkagesESaIS1_EE9push_backEOS1_.exitthread-pre-split_crit_edge unwind label %bb.ba

._ZNSt6vectorIN5vcpkg15FileAndLinkagesESaIS1_EE9push_backEOS1_.exitthread-pre-split_crit_edge: ; preds = %bb.az
  %.pr.pre = load ptr, ptr %i.k, align 8, !tbaa !249
  br label %_ZNSt6vectorIN5vcpkg15FileAndLinkagesESaIS1_EE9push_backEOS1_.exit

bb.ba:                                            ; preds = %bb.az, %.critedge.i, %.noexc, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEESt4lessIvEEvT_SB_T0_.exit.i
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

_ZNSt6vectorIN5vcpkg15FileAndLinkagesESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.aq, %bb.ap, %._ZNSt6vectorIN5vcpkg15FileAndLinkagesESaIS1_EE9push_backEOS1_.exitthread-pre-split_crit_edge
  %18 = phi ptr [ %16, %bb.aq ], [ %.pr.pre, %._ZNSt6vectorIN5vcpkg15FileAndLinkagesESaIS1_EE9push_backEOS1_.exitthread-pre-split_crit_edge ], [ %16, %bb.ap ] ; 3 uses
  %.not.i.i.i.i84 = icmp eq ptr %18, null
  br i1 %.not.i.i.i.i84, label %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EED2Ev.exit.i, label %_ZNSt6vectorIN5vcpkg15FileAndLinkagesESaIS1_EE9push_backEOS1_.exit.thread251

_ZNSt6vectorIN5vcpkg15FileAndLinkagesESaIS1_EE9push_backEOS1_.exit.thread251: ; preds = %_ZNSt6vectorIN5vcpkg15FileAndLinkagesESaIS1_EE9push_backEOS1_.exit
  %i.jm = load ptr, ptr %i.q, align 8, !tbaa !248
  %i.jn = ptrtoint ptr %i.jm to i64
  %i.jo = ptrtoint ptr %18 to i64
  %i.jp = sub i64 %i.jn, %i.jo
  call void @_ZdlPvm(ptr noundef nonnull %18, i64 noundef %i.jp) #24
  br label %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EED2Ev.exit.i: ; preds = %_ZN5vcpkg4PathC2ERKS0_.exit, %_ZNSt6vectorIN5vcpkg15FileAndLinkagesESaIS1_EE9push_backEOS1_.exit.thread, %_ZNSt6vectorIN5vcpkg15FileAndLinkagesESaIS1_EE9push_backEOS1_.exit.thread251, %_ZNSt6vectorIN5vcpkg15FileAndLinkagesESaIS1_EE9push_backEOS1_.exit
  %i.jq = load ptr, ptr %11, align 8, !tbaa !44   ; 2 uses
  %i.jr = icmp eq ptr %i.jq, %i.i
  br i1 %i.jr, label %_ZN5vcpkg15FileAndLinkagesD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i85

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i85: ; preds = %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EED2Ev.exit.i
  %i.js = load i64, ptr %i.i, align 8, !tbaa !45
  %i.jt = add i64 %i.js, 1
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.jt) #24
  br label %_ZN5vcpkg15FileAndLinkagesD2Ev.exit

_ZN5vcpkg15FileAndLinkagesD2Ev.exit:              ; preds = %_ZNSt6vectorIN5vcpkg19LinkageAndBuildTypeESaIS1_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i85
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %.pre190 = load ptr, ptr %i.b, align 8, !tbaa !109
  %.pre191 = load ptr, ptr %2, align 8, !tbaa !108
  br label %bb.bb

bb.bb:                                            ; preds = %bb.b, %_ZN5vcpkg15FileAndLinkagesD2Ev.exit
  %i.ju = phi ptr [ %i.u, %bb.b ], [ %.pre191, %_ZN5vcpkg15FileAndLinkagesD2Ev.exit ] ; 2 uses
  %i.jv = phi ptr [ %i.v, %bb.b ], [ %.pre190, %_ZN5vcpkg15FileAndLinkagesD2Ev.exit ] ; 2 uses
  %i.jw = add nuw i64 %.0178, 1                   ; 2 uses
  %i.jx = ptrtoint ptr %i.jv to i64
  %i.jy = ptrtoint ptr %i.ju to i64
  %i.jz = sub i64 %i.jx, %i.jy
  %i.ka = ashr exact i64 %i.jz, 5
  %i.kb = icmp ult i64 %i.jw, %i.ka
  br i1 %i.kb, label %bb.b, label %._crit_edge181, !llvm.loop !667

bb.bc:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit135, %.loopexit.split-lp136, %.loopexit140, %.loopexit.split-lp141, %.loopexit145, %.loopexit.split-lp146, %bb.ba
  %.pn35.pn = phi { ptr, i32 } [ %i.jl, %bb.ba ], [ %lpad.loopexit.split-lp138, %.loopexit.split-lp136 ], [ %lpad.loopexit.split-lp148, %.loopexit.split-lp146 ], [ %lpad.loopexit.split-lp143, %.loopexit.split-lp141 ], [ %lpad.loopexit147, %.loopexit145 ], [ %lpad.loopexit142, %.loopexit140 ], [ %lpad.loopexit137, %.loopexit135 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN5vcpkg15FileAndLinkagesD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %_ZN5vcpkg4PathD2Ev.exit46
  %.pn35.pn.pn = phi { ptr, i32 } [ %.pn35.pn, %bb.bc ], [ %.pn, %_ZN5vcpkg4PathD2Ev.exit46 ]
  resume { ptr, i32 } %.pn35.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3mapIN5vcpkg19LinkageAndBuildTypeESt6vectorINS0_15FileAndLinkagesESaIS3_EESt4lessIS1_ESaISt4pairIKS1_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90
  invoke void @_ZNSt8_Rb_treeIN5vcpkg19LinkageAndBuildTypeESt4pairIKS1_St6vectorINS0_15FileAndLinkagesESaIS5_EEESt10_Select1stIS8_ESt4lessIS1_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIN5vcpkg19LinkageAndBuildTypeESt4pairIKS1_St6vectorINS0_15FileAndLinkagesESaIS5_EEESt10_Select1stIS8_ESt4lessIS1_ESaIS8_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #28
  unreachable

_ZNSt8_Rb_treeIN5vcpkg19LinkageAndBuildTypeESt4pairIKS1_St6vectorINS0_15FileAndLinkagesESaIS5_EEESt10_Select1stIS8_ESt4lessIS1_ESaIS8_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN5vcpkg21PostBuildCheckDllDataESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !233    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !234  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5vcpkg21PostBuildCheckDllDataES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN5vcpkg21PostBuildCheckDllDataEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.y, %_ZSt8_DestroyIN5vcpkg21PostBuildCheckDllDataEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !105  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !104  ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.e, %i.g
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.e, %.lr.ph.i.i ] ; 3 uses
  %i.h = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !44 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !45
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.g
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !105
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i
  %i.n = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.e, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !103
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.t = load ptr, ptr %.05.i.i, align 8, !tbaa !44 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyIN5vcpkg21PostBuildCheckDllDataEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !45
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #24
  br label %_ZSt8_DestroyIN5vcpkg21PostBuildCheckDllDataEEvPT_.exit.i.i

_ZSt8_DestroyIN5vcpkg21PostBuildCheckDllDataEEvPT_.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5vcpkg21PostBuildCheckDllDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !671

_ZSt8_DestroyIPN5vcpkg21PostBuildCheckDllDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5vcpkg21PostBuildCheckDllDataEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !233
  br label %_ZSt8_DestroyIPN5vcpkg21PostBuildCheckDllDataES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN5vcpkg21PostBuildCheckDllDataES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5vcpkg21PostBuildCheckDllDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.z = phi ptr [ %.pr, %_ZSt8_DestroyIPN5vcpkg21PostBuildCheckDllDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.z, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5vcpkg21PostBuildCheckDllDataESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN5vcpkg21PostBuildCheckDllDataES1_EvT_S3_RSaIT0_E.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !232
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #24
  br label %_ZNSt12_Vector_baseIN5vcpkg21PostBuildCheckDllDataESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN5vcpkg21PostBuildCheckDllDataESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5vcpkg21PostBuildCheckDllDataES1_EvT_S3_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5vcpkg7details19OptionalStorageDtorISt6vectorINS_8OptionalINS_14LibInformationEEESaIS5_EELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !116, !range !84, !noundef !85
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZNSt6vectorIN5vcpkg8OptionalINS0_14LibInformationEEESaIS3_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !124  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !150  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5vcpkg8OptionalINS0_14LibInformationEEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt8_DestroyIN5vcpkg8OptionalINS0_14LibInformationEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN5vcpkg8OptionalINS0_14LibInformationEEEEvPT_.exit.i.i.i ], [ %i.d, %bb.b ] ; 6 uses
  %i.g = load i8, ptr %.05.i.i.i, align 8, !tbaa !152, !range !84, !noundef !85
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %_ZSt8_DestroyIN5vcpkg8OptionalINS0_14LibInformationEEEEvPT_.exit.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !90
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIvESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef %i.k)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaIS5_EED2Ev.exit.i.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #28
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaIS5_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !154  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN5vcpkg8OptionalINS0_14LibInformationEEEEvPT_.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIvESaIS5_EED2Ev.exit.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !155
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #24
  br label %_ZSt8_DestroyIN5vcpkg8OptionalINS0_14LibInformationEEEEvPT_.exit.i.i.i

end_hunk_1
