inline.NumInlined: 844
inline.NumDeleted: 405
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN5folly13to_ascii_withILm10ENS_17to_ascii_alphabetILb0EEELm20EEEmRAT1__cm:bb.a
bb.s:                                             ; preds = %bb.r
  %i.ao = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5folly6detail15to_ascii_powersILm10EmE4dataE, i64 152), align 8, !tbaa !12
  %i.ap = icmp ult i64 %1, %i.ao
  br i1 %i.ap, label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit, label %.lr.ph.preheader, !prof !31

_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit: ; preds = %bb.s
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit
  %.ph = phi i64 [ 19, %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEmPcm.exit ], [ 18, %bb.r ], [ 17, %bb.q ], [ 16, %bb.p ], [ 15, %bb.o ], [ 14, %bb.n ], [ 13, %bb.m ], [ 12, %bb.l ], [ 11, %bb.k ], [ 10, %bb.j ], [ 9, %bb.i ], [ 8, %bb.h ], [ 7, %bb.g ], [ 6, %bb.f ], [ 5, %bb.e ], [ 4, %bb.d ], [ 3, %bb.c ], [ 20, %bb.s ] ; 5 uses
  %i.aq = add nsw i64 %.ph, -3                    ; 2 uses
  %i.ar = and i64 %i.aq, 2
  %lcmp.mod.not.not = icmp eq i64 %i.ar, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.as = add nsw i64 %.ph, -2                    ; 3 uses
  %i.at = udiv i64 %1, 100                        ; 2 uses
  %i.au = urem i64 %1, 100
  %i.av = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !56
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %i.as
  store i16 %i.aw, ptr %i.ax, align 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0.i6.unr = phi i64 [ %1, %.lr.ph.preheader ], [ %i.at, %.lr.ph.prol ]
  %.014.i5.unr = phi i64 [ %.ph, %.lr.ph.preheader ], [ %i.as, %.lr.ph.prol ]
  %.lcssa20.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.as, %.lr.ph.prol ]
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.at, %.lr.ph.prol ]
  %i.ay = icmp ult i64 %i.aq, 2
  br i1 %i.ay, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0.i6 = phi i64 [ %i.bg, %.lr.ph ], [ %.0.i6.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.014.i5 = phi i64 [ %i.bf, %.lr.ph ], [ %.014.i5.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.az = udiv i64 %.0.i6, 100
  %i.ba = urem i64 %.0.i6, 100
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !56
  %i.bd = getelementptr i8, ptr %0, i64 %.014.i5
  %i.be = getelementptr i8, ptr %i.bd, i64 -2
  store i16 %i.bc, ptr %i.be, align 1
  %i.bf = add i64 %.014.i5, -4                    ; 4 uses
  %i.bg = udiv i64 %.0.i6, 10000                  ; 2 uses
  %i.bh = urem i64 %i.az, 100
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !56
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 %i.bf
  store i16 %i.bj, ptr %i.bk, align 1
  %i.bl = icmp ugt i64 %i.bf, 2
  br i1 %i.bl, label %.lr.ph, label %._crit_edge, !llvm.loop !80

._crit_edge.thread:                               ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %1
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !56
  br label %bb.u

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %.lcssa20 = phi i64 [ %.lcssa20.unr, %.lr.ph.prol.loopexit ], [ %i.bf, %.lr.ph ]
  %.lcssa = phi i64 [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.bg, %.lr.ph ]
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr @_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE, i64 %.lcssa
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !56 ; 2 uses
  %i.bq = icmp eq i64 %.lcssa20, 2
  br i1 %i.bq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.thread14, %._crit_edge
  %i.br = phi i16 [ %i.h, %._crit_edge.thread14 ], [ %i.bp, %._crit_edge ]
  %i.bs = phi i64 [ 2, %._crit_edge.thread14 ], [ %.ph, %._crit_edge ]
  store i16 %i.br, ptr %0, align 1
  br label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEvPcmm.exit

bb.u:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.bt = phi i16 [ %i.bn, %._crit_edge.thread ], [ %i.bp, %._crit_edge ]
  %i.bu = phi i64 [ 1, %._crit_edge.thread ], [ %.ph, %._crit_edge ]
  %i.bv = lshr i16 %i.bt, 8
  %i.bw = trunc nuw i16 %i.bv to i8
  store i8 %i.bw, ptr %0, align 1, !tbaa !20
  br label %_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEvPcmm.exit

_ZN5folly6detail19to_ascii_with_tableILm10ENS_17to_ascii_alphabetILb0EEEEEvPcmm.exit: ; preds = %bb.t, %bb.u
  %i.bx = phi i64 [ %i.bs, %bb.t ], [ %i.bu, %bb.u ]
  ret i64 %i.bx
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i64 1, 3) i64 @_ZN5folly11IPAddressV616trySetFromBinaryENS_5RangeIPKhEE(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(18) %0, ptr %1, ptr %2) local_unnamed_addr #25 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %.not = icmp eq i64 %i.c, 16
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 0, ptr %i.d, align 4, !tbaa !27
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.03.0 = phi i64 [ 1, %bb.b ], [ 2, %bb.a ]
  ret i64 %.sroa.03.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly11IPAddressV619fromInverseArpaNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.folly::IPAddressV6") align 4 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::vector", align 8       ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"struct.std::array.27", align 1    ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !14     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !19   ; 3 uses
  %.not.i.i = icmp ult i64 %i.c, 9
  br i1 %.not.i.i, label %.noexc, label %_ZNK5folly5RangeIPKcE8subpieceEmm.exit.i.i

_ZNK5folly5RangeIPKcE8subpieceEmm.exit.i.i:       ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -9       ; 3 uses
  %i.f = load i64, ptr %i.e, align 1
  %i.g = xor i64 %i.f, 8102645530702670126
  %i.h = getelementptr i8, ptr %i.e, i64 8
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i64
  %i.k = xor i64 %i.j, 97
  %i.l = or i64 %i.g, %i.k
  %i.m = icmp ne i64 %i.l, 0
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %.noexc

.noexc:                                           ; preds = %bb.a, %_ZNK5folly5RangeIPKcE8subpieceEmm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34, !noalias !82
  %i.q = load ptr, ptr %1, align 8, !tbaa !14
  %i.r = load i64, ptr %i.b, align 8, !tbaa !19
  store ptr %i.q, ptr %3, align 16, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !20
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.14, i64 51, i64 13, ptr nonnull %3)
          to label %bb.b unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34, !noalias !82
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly24IPAddressFormatExceptionE, i64 16), ptr %i.p, align 8, !tbaa !25
  invoke void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTIN5folly24IPAddressFormatExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.x unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.c
  %.027 = phi i1 [ false, %bb.c ], [ true, %bb.b ] ; 2 uses
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.v = load ptr, ptr %4, align 8, !tbaa !14     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.y = load i64, ptr %i.w, align 8, !tbaa !20
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br i1 %.027, label %bb.e, label %bb.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br i1 %.027, label %bb.e, label %bb.w

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn3665 = phi { ptr, i32 } [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.p) #34
  br label %bb.w

bb.f:                                             ; preds = %_ZNK5folly5RangeIPKcE8subpieceEmm.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE15simdSplitByCharISt6vectorINS_5RangeIPKcEESaISC_EEEEvcSC_RT_(i8 noundef signext 46, ptr %i.a, ptr nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZN5folly5splitIcNS_5RangeIPKcEESt6vectorIS4_SaIS4_EEEENSt9enable_ifIXaaaasr6detail20IsSimdSupportedDelimIT_EE5valuesr6detail31HasSimdSplitCompatibleValueTypeIT1_EE5valuesr6detail25IsSplitSupportedContainerISA_EE5valueEvE4typeERKS9_RKT0_RSA_b.exit unwind label %bb.i

_ZN5folly5splitIcNS_5RangeIPKcEESt6vectorIS4_SaIS4_EEEENSt9enable_ifIXaaaasr6detail20IsSimdSupportedDelimIT_EE5valuesr6detail31HasSimdSplitCompatibleValueTypeIT1_EE5valuesr6detail25IsSplitSupportedContainerISA_EE5valueEvE4typeERKS9_RKT0_RSA_b.exit: ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !85
  %i.ac = load ptr, ptr %5, align 8, !tbaa !88    ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %8 = ashr exact i64 %i.af, 4
  %.not = icmp eq i64 %i.af, 512
  br i1 %.not, label %bb.l, label %.noexc41

.noexc41:                                         ; preds = %_ZN5folly5splitIcNS_5RangeIPKcEESt6vectorIS4_SaIS4_EEEENSt9enable_ifIXaaaasr6detail20IsSimdSupportedDelimIT_EE5valuesr6detail31HasSimdSplitCompatibleValueTypeIT1_EE5valuesr6detail25IsSplitSupportedContainerISA_EE5valueEvE4typeERKS9_RKT0_RSA_b.exit
  %i.ag = call ptr @__cxa_allocate_exception(i64 16) #34 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34, !noalias !89
  %i.ah = add nsw i64 %i.c, -9
  store ptr %i.a, ptr %2, align 16, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !20
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.15, i64 23, i64 13, ptr nonnull %2)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread

bb.g:                                             ; preds = %.noexc41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34, !noalias !89
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly24IPAddressFormatExceptionE, i64 16), ptr %i.ag, align 8, !tbaa !25
  invoke void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTIN5folly24IPAddressFormatExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.x unwind label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread: ; preds = %.noexc41
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.k

bb.j:                                             ; preds = %bb.g, %bb.h
  %.019 = phi i1 [ false, %bb.h ], [ true, %bb.g ] ; 2 uses
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.am = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47: ; preds = %bb.j
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !20
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br i1 %.019, label %bb.k, label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br i1 %.019, label %bb.k, label %bb.u

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
  %.pn68 = phi { ptr, i32 } [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.thread ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ]
  call void @__cxa_free_exception(ptr %i.ag) #34
  br label %bb.u

bb.l:                                             ; preds = %_ZN5folly5splitIcNS_5RangeIPKcEESt6vectorIS4_SaIS4_EEEENSt9enable_ifIXaaaasr6detail20IsSimdSupportedDelimIT_EE5valuesr6detail31HasSimdSplitCompatibleValueTypeIT1_EE5valuesr6detail25IsSplitSupportedContainerISA_EE5valueEvE4typeERKS9_RKT0_RSA_b.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.p
  %.071 = phi i64 [ 1, %bb.l ], [ %i.bc, %bb.p ]  ; 2 uses
  %.01670 = phi i32 [ 0, %bb.l ], [ %.1, %bb.p ]
  %.01769 = phi i64 [ 0, %bb.l ], [ %.118, %bb.p ] ; 3 uses
  %i.ar = sub nuw i64 %8, %.071
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !92
  %i.au = load i8, ptr %i.at, align 1, !tbaa !20
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 %.01769
  store i8 %i.au, ptr %i.av, align 1, !tbaa !20
  %i.aw = add i64 %.01769, 1                      ; 4 uses
  %i.ax = add nsw i32 %.01670, 1                  ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 4
  br i1 %i.ay, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.az = icmp ult i64 %i.aw, 39
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ba = add nsw i64 %.01769, 2
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 %i.aw
  store i8 58, ptr %i.bb, align 1, !tbaa !20
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o
  %.118 = phi i64 [ %i.ba, %bb.o ], [ %i.aw, %bb.n ], [ %i.aw, %bb.m ]
  %.1 = phi i32 [ 0, %bb.o ], [ 4, %bb.n ], [ %i.ax, %bb.m ]
  %i.bc = add nuw i64 %.071, 1                    ; 2 uses
  %exitcond = icmp eq i64 %i.bc, 33
  br i1 %exitcond, label %bb.q, label %bb.m, !llvm.loop !94

bb.q:                                             ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 39
  invoke void @_ZN5folly11IPAddressV6C1ENS_5RangeIPKcEE(ptr noundef nonnull align 4 dereferenceable(18) %0, ptr nonnull %7, ptr nonnull %i.bd)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.be = load ptr, ptr %5, align 8, !tbaa !88    ; 3 uses
  %.not.i.i.i50 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i50, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !95
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bj) #35
  br label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EED2Ev.exit

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EED2Ev.exit: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void

bb.t:                                             ; preds = %bb.q
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %bb.k, %bb.t, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn68, %bb.k ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ], [ %i.bk, %bb.t ], [ %i.aj, %bb.i ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47 ]
  %i.bl = load ptr, ptr %5, align 8, !tbaa !88    ; 3 uses
  %.not.i.i.i51 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i51, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EED2Ev.exit52, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !95
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bq) #35
  br label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EED2Ev.exit52

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EED2Ev.exit52: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EED2Ev.exit52
  %.pn36.pn = phi { ptr, i32 } [ %.pn3665, %bb.e ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn.pn, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EED2Ev.exit52 ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn36.pn

bb.x:                                             ; preds = %bb.h, %bb.c
  unreachable
}

declare void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, i64, ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.bmi.bzhi.32(i32, i32) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #28

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE15simdSplitByCharISt6vectorINS_5RangeIPKcEESaISC_EEEEvcSC_RT_(i8 noundef signext %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #29 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.b = icmp eq ptr %1, %2
  br i1 %i.b, label %_ZN5folly4simd6detail19simdForEachAligningILi1EKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISE_EEEEEEviPT0_SJ_RT1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = and i64 %i.c, -32                        ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr                 ; 4 uses
  %i.f = and i64 %i.a, -32                        ; 2 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = and i64 %i.c, 31                         ; 2 uses
  %.not.i = icmp eq i64 %i.d, %i.f
  br i1 %.not.i, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.pre177 = insertelement <32 x i8> poison, i8 %0, i64 0
  %.pre178 = shufflevector <32 x i8> %.pre177, <32 x i8> poison, <32 x i32> zeroinitializer
  br label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.i = load <32 x i8>, ptr %i.e, align 32, !tbaa !20
  %i.j = insertelement <32 x i8> poison, i8 %0, i64 0
  %i.k = shufflevector <32 x i8> %i.j, <32 x i8> poison, <32 x i32> zeroinitializer ; 3 uses
  %i.l = icmp eq <32 x i8> %i.i, %i.k
  %i.m = bitcast <32 x i1> %i.l to i32
  %i.n = shl nuw nsw i64 4294967295, %i.h
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.m, %i.o                       ; 2 uses
  %.not.i13139 = icmp eq i32 %i.p, 0
  br i1 %.not.i13139, label %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINS_5RangeIPKcEESaISE_EEEEvSt4pairIT_T0_EPKhRSM_RT1_.exit.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !85
  %.pre172 = load ptr, ptr %i.r, align 8, !tbaa !95
  br label %bb.d

_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINS_5RangeIPKcEESaISE_EEEEvSt4pairIT_T0_EPKhRSM_RT1_.exit.preheader: ; preds = %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit, %bb.c
  %.5.lcssa = phi ptr [ %1, %bb.c ], [ %i.ab, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit ] ; 2 uses
  %.1149 = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %.not.i12.not150 = icmp eq ptr %.1149, %i.g
  br i1 %.not.i12.not150, label %_ZNK5folly4simd6detail19SimdForEachMainLoopclIKhNS_6detail23PlatformSimdSplitByCharINS1_16SimdAvx2PlatformIhEELb0EE15ForEachDelegateISt6vectorINS_5RangeIPKcEESaISF_EEEEEEbiRPT_SK_RT0_St17integral_constantImLm1EE.exit, label %.lr.ph153

.lr.ph153:                                        ; preds = %_ZN5folly6detail23PlatformSimdSplitByCharINS_4simd6detail16SimdAvx2PlatformIhEELb0EE20outputStringsFoMmaskIjSt17integral_constantIjLj1EESt6vectorINS_5RangeIPKcEESaISE_EEEEvSt4pairIT_T0_EPKhRSM_RT1_.exit.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %bb.i

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit
  %i.u = phi ptr [ %.pre172, %.lr.ph ], [ %i.bb, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit ] ; 5 uses
  %i.v = phi ptr [ %.pre, %.lr.ph ], [ %i.bc, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit ] ; 4 uses
  %.0.i142 = phi ptr [ %i.e, %.lr.ph ], [ %i.ab, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit ]
  %.013.i141 = phi i32 [ %i.p, %.lr.ph ], [ %i.y, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit ] ; 2 uses
  %.5140 = phi ptr [ %1, %.lr.ph ], [ %i.ab, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit ] ; 5 uses
  %i.w = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.013.i141, i1 true) ; 2 uses
  %i.x = lshr exact i32 %.013.i141, %i.w
  %i.y = lshr i32 %i.x, 1                         ; 2 uses
  %i.z = zext nneg i32 %i.w to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i142, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 3 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %.5140 to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 2 uses
  %.not.i18 = icmp eq ptr %i.v, %i.u
  br i1 %.not.i18, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %.5140, ptr %i.v, align 8, !tbaa !92
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.5140, i64 %i.ae
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !96
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  store ptr %i.ah, ptr %i.q, align 8, !tbaa !85
  br label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE12emplace_backIJS3_lEEERS4_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.ai = load ptr, ptr %3, align 8, !tbaa !88    ; 5 uses
  %i.aj = ptrtoint ptr %i.u to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 4 uses
  %i.am = icmp eq i64 %i.al, 9223372036854775792
  br i1 %i.am, label %bb.g, label %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #37
  unreachable

_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i: ; preds = %bb.f
  %i.an = ashr exact i64 %i.al, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.an, i64 1)
  %i.ao = add nsw i64 %.sroa.speculated.i.i.i, %i.an ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.an
  %i.aq = tail call i64 @llvm.umin.i64(i64 %i.ao, i64 576460752303423487)
  %i.ar = select i1 %i.ap, i64 576460752303423487, i64 %i.aq ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ar, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.as = shl nuw nsw i64 %i.ar, 4
  %i.at = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #39 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.al ; 2 uses
  store ptr %.5140, ptr %i.au, align 8, !tbaa !92
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
end_hunk_0
