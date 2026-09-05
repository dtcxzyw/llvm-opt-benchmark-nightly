Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/IPAddressV6?download=true
inline.NumInlined: 1256
inline.NumDeleted: 592
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af
  store i8 0, ptr %i.ao, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void
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
  store i16 0, ptr %i.d, align 4, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.03.0 = phi i64 [ 1, %bb.b ], [ 2, %bb.a ]
  ret i64 %.sroa.03.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly11IPAddressV619fromInverseArpaNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.folly::IPAddressV6") align 4 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.fmt::v9::format_arg_store.34", align 16 ; 4 uses
  %3 = alloca %"class.fmt::v9::format_arg_store", align 16 ; 4 uses
  %4 = alloca %"class.folly::Range", align 8      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::vector", align 8       ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"struct.std::array.27", align 1    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.a = load ptr, ptr %1, align 8, !tbaa !26     ; 3 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %.not.i.i = icmp ult i64 %i.d, 9
  br i1 %.not.i.i, label %.noexc39, label %_ZNK5folly5RangeIPKcE8subpieceEmm.exit.i.i

_ZNK5folly5RangeIPKcE8subpieceEmm.exit.i.i:       ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.a, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -9       ; 4 uses
  %i.g = load i64, ptr %i.f, align 1
  %i.h = xor i64 %i.g, 8102645530702670126
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i64
  %i.l = xor i64 %i.k, 97
  %i.m = or i64 %i.h, %i.l
  %i.n = icmp ne i64 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %.noexc39

.noexc39:                                         ; preds = %_ZNK5folly5RangeIPKcE8subpieceEmm.exit.i.i, %bb.a
  %i.q = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33, !noalias !179
  %i.r = load ptr, ptr %1, align 8, !tbaa !26
  %i.s = load i64, ptr %i.c, align 8, !tbaa !27
  %i.t = ptrtoint ptr %i.r to i64
  %.sroa.01.sroa.4.0.insert.ext.i = zext i64 %i.s to i128
  %.sroa.01.sroa.4.0.insert.shift.i = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i, 64
  %.sroa.01.sroa.0.0.insert.ext.i = zext i64 %i.t to i128
  %.sroa.01.sroa.0.0.insert.insert.i = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i, %.sroa.01.sroa.0.0.insert.ext.i
  store i128 %.sroa.01.sroa.0.0.insert.insert.i, ptr %3, align 16, !noalias !179
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.14, i64 51, i64 13, ptr nonnull %3)
          to label %bb.b unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.b:                                             ; preds = %.noexc39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33, !noalias !179
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly24IPAddressFormatExceptionE, i64 16), ptr %i.q, align 8, !tbaa !31
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTIN5folly24IPAddressFormatExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.x unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc39
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.c
  %.027 = phi i1 [ false, %bb.c ], [ true, %bb.b ] ; 2 uses
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.w = load ptr, ptr %5, align 8, !tbaa !26     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.z = load i64, ptr %i.x, align 8, !tbaa !28
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br i1 %.027, label %bb.e, label %bb.w

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br i1 %.027, label %bb.e, label %bb.w

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn3680 = phi { ptr, i32 } [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.q) #33
  br label %bb.w

bb.f:                                             ; preds = %_ZNK5folly5RangeIPKcE8subpieceEmm.exit.i.i
  store ptr %i.f, ptr %i.b, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN5folly6detail17splitByCharScalarILb0ESt6vectorINS_5RangeIPKcEESaIS6_EEEEvcS6_RT0_(i8 noundef signext 46, ptr %i.a, ptr nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZN5folly5splitIcNS_5RangeIPKcEESt6vectorIS4_SaIS4_EEQaaaasr6detail20IsSimdSupportedDelimIT_EE5valuesr6detail31HasSimdSplitCompatibleValueTypeIT1_EE5valuesr6detail25IsSplitSupportedContainerIS9_EE5valueEEvRKS8_RKT0_RS9_b.exit unwind label %bb.i

_ZN5folly5splitIcNS_5RangeIPKcEESt6vectorIS4_SaIS4_EEQaaaasr6detail20IsSimdSupportedDelimIT_EE5valuesr6detail31HasSimdSplitCompatibleValueTypeIT1_EE5valuesr6detail25IsSplitSupportedContainerIS9_EE5valueEEvRKS8_RKT0_RS9_b.exit: ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !64
  %i.ad = load ptr, ptr %6, align 8, !tbaa !65    ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 2 uses
  %i.ah = ashr exact i64 %i.ag, 4
  %.not = icmp eq i64 %i.ag, 512
  br i1 %.not, label %bb.l, label %.noexc42

.noexc42:                                         ; preds = %_ZN5folly5splitIcNS_5RangeIPKcEESt6vectorIS4_SaIS4_EEQaaaasr6detail20IsSimdSupportedDelimIT_EE5valuesr6detail31HasSimdSplitCompatibleValueTypeIT1_EE5valuesr6detail25IsSplitSupportedContainerIS9_EE5valueEEvRKS8_RKT0_RS9_b.exit
  %i.ai = call ptr @__cxa_allocate_exception(i64 16) #33 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33, !noalias !180
  %i.aj = ptrtoint ptr %4 to i64
  %.sroa.01.sroa.4.0.insert.ext.i54 = zext i64 ptrtoint (ptr @_ZN3fmt2v96detail5valueINS0_20basic_format_contextINS0_8appenderEcEEE17format_custom_argIN5folly5RangeIPKcEENS0_9formatterISC_cvEEEEvPvRNS0_26basic_format_parse_contextIcNS1_13error_handlerEEERS5_ to i64) to i128
  %.sroa.01.sroa.4.0.insert.shift.i55 = shl nuw i128 %.sroa.01.sroa.4.0.insert.ext.i54, 64
  %.sroa.01.sroa.0.0.insert.ext.i56 = zext i64 %i.aj to i128
  %.sroa.01.sroa.0.0.insert.insert.i57 = or disjoint i128 %.sroa.01.sroa.4.0.insert.shift.i55, %.sroa.01.sroa.0.0.insert.ext.i56
  store i128 %.sroa.01.sroa.0.0.insert.insert.i57, ptr %2, align 16, !noalias !180
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull @.str.15, i64 23, i64 15, ptr nonnull %2)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.thread

bb.g:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33, !noalias !180
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly24IPAddressFormatExceptionE, i64 16), ptr %i.ai, align 8, !tbaa !31
  invoke void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTIN5folly24IPAddressFormatExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.x unwind label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.thread: ; preds = %.noexc42
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %bb.k

bb.j:                                             ; preds = %bb.g, %bb.h
  %.019 = phi i1 [ false, %bb.h ], [ true, %bb.g ] ; 2 uses
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.an = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.j
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !28
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br i1 %.019, label %bb.k, label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br i1 %.019, label %bb.k, label %bb.u

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62
  %.pn83 = phi { ptr, i32 } [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.thread ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60 ]
  call void @__cxa_free_exception(ptr %i.ai) #33
  br label %bb.u

bb.l:                                             ; preds = %_ZN5folly5splitIcNS_5RangeIPKcEESt6vectorIS4_SaIS4_EEQaaaasr6detail20IsSimdSupportedDelimIT_EE5valuesr6detail31HasSimdSplitCompatibleValueTypeIT1_EE5valuesr6detail25IsSplitSupportedContainerIS9_EE5valueEEvRKS8_RKT0_RS9_b.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.p
  %.086 = phi i64 [ 1, %bb.l ], [ %i.bd, %bb.p ]  ; 2 uses
  %.01685 = phi i32 [ 0, %bb.l ], [ %.1, %bb.p ]
  %.01784 = phi i64 [ 0, %bb.l ], [ %.118, %bb.p ] ; 3 uses
  %i.as = sub nuw i64 %i.ah, %.086
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !60
  %i.av = load i8, ptr %i.au, align 1, !tbaa !28
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 %.01784
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !28
  %i.ax = add i64 %.01784, 1                      ; 4 uses
  %i.ay = add nsw i32 %.01685, 1                  ; 2 uses
  %i.az = icmp eq i32 %i.ay, 4
  br i1 %i.az, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ba = icmp ult i64 %i.ax, 39
  br i1 %i.ba, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bb = add nsw i64 %.01784, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 %i.ax
  store i8 58, ptr %i.bc, align 1, !tbaa !28
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o
  %.118 = phi i64 [ %i.bb, %bb.o ], [ %i.ax, %bb.n ], [ %i.ax, %bb.m ]
  %.1 = phi i32 [ 0, %bb.o ], [ 4, %bb.n ], [ %i.ay, %bb.m ]
  %i.bd = add nuw i64 %.086, 1                    ; 2 uses
  %exitcond = icmp eq i64 %i.bd, 33
  br i1 %exitcond, label %bb.q, label %bb.m, !llvm.loop !178

bb.q:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 39
  invoke void @_ZN5folly11IPAddressV6C1ENS_5RangeIPKcEE(ptr noundef nonnull align 4 dereferenceable(18) %0, ptr nonnull %8, ptr nonnull %i.be)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.bf = load ptr, ptr %6, align 8, !tbaa !65    ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !66
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = sub i64 %i.bi, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bk) #34
  br label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EED2Ev.exit

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EED2Ev.exit: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret void

bb.t:                                             ; preds = %bb.q
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  br label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %bb.k, %bb.t, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn83, %bb.k ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ], [ %i.bl, %bb.t ], [ %i.ak, %bb.i ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60 ]
  %i.bm = load ptr, ptr %6, align 8, !tbaa !65    ; 3 uses
  %.not.i.i.i66 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i66, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EED2Ev.exit67, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !66
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.br) #34
  br label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EED2Ev.exit67

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EED2Ev.exit67: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EED2Ev.exit67
  %.pn36.pn = phi { ptr, i32 } [ %.pn3680, %bb.e ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn.pn, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EED2Ev.exit67 ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  resume { ptr, i32 } %.pn36.pn

bb.x:                                             ; preds = %bb.h, %bb.c
  unreachable
}

declare void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, i64, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly6detail17splitByCharScalarILb0ESt6vectorINS_5RangeIPKcEESaIS6_EEEEvcS6_RT0_(i8 noundef signext %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not34 = icmp eq ptr %1, %2
  br i1 %.not34, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN5folly6detail17splitByCharScalarILb0ESt6vectorINS_5RangeIPKcEESaIS6_EEEEvcS6_RT0_ENUlS5_S5_E_clES5_S5_.exit
  %.036 = phi ptr [ %1, %.lr.ph ], [ %i.c, %_ZZN5folly6detail17splitByCharScalarILb0ESt6vectorINS_5RangeIPKcEESaIS6_EEEEvcS6_RT0_ENUlS5_S5_E_clES5_S5_.exit ] ; 3 uses
  %.01235 = phi ptr [ %1, %.lr.ph ], [ %.1, %_ZZN5folly6detail17splitByCharScalarILb0ESt6vectorINS_5RangeIPKcEESaIS6_EEEEvcS6_RT0_ENUlS5_S5_E_clES5_S5_.exit ] ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.036, i64 1 ; 4 uses
  %i.d = load i8, ptr %.036, align 1, !tbaa !28
  %i.e = icmp eq i8 %i.d, %0
  br i1 %i.e, label %bb.c, label %_ZZN5folly6detail17splitByCharScalarILb0ESt6vectorINS_5RangeIPKcEESaIS6_EEEEvcS6_RT0_ENUlS5_S5_E_clES5_S5_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %.036 to i64
  %i.g = ptrtoint ptr %.01235 to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !64   ; 7 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !66
  %.not.i.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %.01235, ptr %i.i, align 8, !tbaa !60
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %.01235, i64 %i.h
  store ptr %i.l, ptr %i.k, align 8, !tbaa !61
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.m, ptr %i.a, align 8, !tbaa !64
  br label %_ZZN5folly6detail17splitByCharScalarILb0ESt6vectorINS_5RangeIPKcEESaIS6_EEEEvcS6_RT0_ENUlS5_S5_E_clES5_S5_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %3, align 8, !tbaa !65     ; 5 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775792
  br i1 %i.r, label %bb.f, label %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #36
  unreachable

_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i.i: ; preds = %bb.e
  %i.s = ashr exact i64 %i.q, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 576460752303423487)
  %i.w = select i1 %i.u, i64 576460752303423487, i64 %i.v ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 4
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #38 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.q ; 2 uses
  store ptr %.01235, ptr %i.z, align 8, !tbaa !60
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.01235, i64 %i.h
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !61
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.n, %i.i
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ %i.y, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i ], [ %i.n, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !189, !alias.scope !190
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !184

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.y, %_ZNKSt6vectorIN5folly5RangeIPKcEESaIS4_EE12_M_check_lenEmS3_.exit.i.i.i ], [ %i.ad, %.lr.ph.i.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i34.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i34.i.i.i, label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJRS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i.i
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !66
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.ah) #34
  br label %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJRS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJRS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit33.i.i.i
  store ptr %i.y, ptr %3, align 8, !tbaa !65
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.w
  store ptr %i.ai, ptr %i.b, align 8, !tbaa !66
  br label %_ZZN5folly6detail17splitByCharScalarILb0ESt6vectorINS_5RangeIPKcEESaIS6_EEEEvcS6_RT0_ENUlS5_S5_E_clES5_S5_.exit

_ZZN5folly6detail17splitByCharScalarILb0ESt6vectorINS_5RangeIPKcEESaIS6_EEEEvcS6_RT0_ENUlS5_S5_E_clES5_S5_.exit: ; preds = %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJRS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.d, %bb.b
  %.1 = phi ptr [ %.01235, %bb.b ], [ %i.c, %bb.d ], [ %i.c, %_ZNSt6vectorIN5folly5RangeIPKcEESaIS4_EE17_M_realloc_insertIJRS3_lEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ] ; 2 uses
  %.not = icmp eq ptr %i.c, %2
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !185

._crit_edge:                                      ; preds = %_ZZN5folly6detail17splitByCharScalarILb0ESt6vectorINS_5RangeIPKcEESaIS6_EEEEvcS6_RT0_ENUlS5_S5_E_clES5_S5_.exit, %bb.a
  %.012.lcssa = phi ptr [ %1, %bb.a ], [ %.1, %_ZZN5folly6detail17splitByCharScalarILb0ESt6vectorINS_5RangeIPKcEESaIS6_EEEEvcS6_RT0_ENUlS5_S5_E_clES5_S5_.exit ] ; 5 uses
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %2, %_ZZN5folly6detail17splitByCharScalarILb0ESt6vectorINS_5RangeIPKcEESaIS6_EEEEvcS6_RT0_ENUlS5_S5_E_clES5_S5_.exit ]
  %i.aj = ptrtoint ptr %.0.lcssa to i64
  %i.ak = ptrtoint ptr %.012.lcssa to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !64 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !66
  %.not.i.i13 = icmp eq ptr %i.an, %i.ap
  br i1 %.not.i.i13, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  store ptr %.012.lcssa, ptr %i.an, align 8, !tbaa !60
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.lcssa, i64 %i.al
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !61
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.as, ptr %i.am, align 8, !tbaa !64
  br label %_ZZN5folly6detail17splitByCharScalarILb0ESt6vectorINS_5RangeIPKcEESaIS6_EEEEvcS6_RT0_ENUlS5_S5_E_clES5_S5_.exit26

bb.i:                                             ; preds = %._crit_edge
  %i.at = load ptr, ptr %3, align 8, !tbaa !65    ; 5 uses
  %i.au = ptrtoint ptr %i.an to i64
  %i.av = ptrtoint ptr %i.at to i64               ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK5folly11IPAddressV612getNthMSByteEm:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !35, !alias.scope !321
  store i64 3914830178632549953, ptr %i.c, align 8, !alias.scope !321
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 8, ptr %i.d, align 8, !tbaa !27, !alias.scope !321
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 0, ptr %i.e, align 8, !tbaa !28, !alias.scope !321
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33, !noalias !322
  %i.f = ptrtoint ptr %i.c to i64
  store i128 15, ptr %2, align 16, !tbaa !28, !alias.scope !323
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.0.0.insert.ext.i = zext i64 %i.f to i128
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i128 %.sroa.0.sroa.0.0.insert.ext.i, 147573952589676412928
  store i128 %.sroa.0.sroa.0.0.insert.insert.i, ptr %i.g, align 16, !tbaa !28, !alias.scope !323
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.55, i64 50, i64 212, ptr nonnull %2)
          to label %bb.b unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33, !noalias !322
  invoke void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #36
          to label %bb.h unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ false, %bb.c ], [ true, %bb.b ]  ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load ptr, ptr %3, align 8, !tbaa !26     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.j, align 8, !tbaa !28
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.n = load ptr, ptr %4, align 8, !tbaa !26     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.c
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %4, align 8, !tbaa !26     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.s = load i64, ptr %i.c, align 8, !tbaa !28
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #34
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = load i64, ptr %i.c, align 8, !tbaa !28
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.v) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br i1 %.0, label %bb.e, label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br i1 %.0, label %bb.e, label %bb.f

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %.pn.pn21 = phi { ptr, i32 } [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ], [ %i.p, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.b) #33
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %.pn.pn20 = phi { ptr, i32 } [ %.pn.pn21, %bb.e ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ]
  resume { ptr, i32 } %.pn.pn20

bb.g:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !28
  ret i8 %i.x

bb.h:                                             ; preds = %bb.c
  unreachable
}

declare void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt16invalid_argumentD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #16

; Function Attrs: mustprogress uwtable
define void @_ZN5folly11IPAddressV619longestCommonPrefixERKSt4pairIS0_hES4_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::pair.61") align 4 captures(none) %0, ptr noundef nonnull align 4 dereferenceable(21) %1, ptr noundef nonnull align 4 dereferenceable(21) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.std::pair.64", align 1     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i8, ptr %i.a, align 4, !tbaa !325
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.d = load i8, ptr %i.c, align 4, !tbaa !325
  call void @_ZN5folly6detail5Bytes19longestCommonPrefixILm16EEESt4pairISt5arrayIhXT_EEhERKS5_hS8_h(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.64") align 1 %3, ptr noundef nonnull align 1 dereferenceable(16) %1, i8 noundef zeroext %i.b, ptr noundef nonnull align 1 dereferenceable(16) %2, i8 noundef zeroext %i.d)
  call void @_ZN5folly11IPAddressV6C1ERKSt5arrayIhLm16EE(ptr noundef nonnull align 4 dereferenceable(18) %0, ptr noundef nonnull align 1 dereferenceable(16) %3) #33
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load i8, ptr %i.e, align 1, !tbaa !28
  store i8 %i.g, ptr %i.f, align 4, !tbaa !325
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail5Bytes19longestCommonPrefixILm16EEESt4pairISt5arrayIhXT_EEhERKS5_hS8_h(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.64") align 1 %0, ptr noundef nonnull align 1 dereferenceable(16) %1, i8 noundef zeroext %2, ptr noundef nonnull align 1 dereferenceable(16) %3, i8 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.fmt::v9::format_arg_store.68", align 16 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"struct.std::array", align 1       ; 6 uses
  %i.a = icmp ugt i8 %2, -128
  %i.b = icmp ugt i8 %4, -128
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.noexc, label %bb.f

.noexc:                                           ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #33 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33, !noalias !332
  %.sroa.speculated47 = tail call i8 @llvm.umax.i8(i8 %2, i8 %4)
  %.sroa.06.0.insert.ext.i = zext i8 %.sroa.speculated47 to i128
  store i128 %.sroa.06.0.insert.ext.i, ptr %5, align 16, !tbaa !28, !alias.scope !333
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i128 128, ptr %i.d, align 16, !tbaa !28, !alias.scope !333
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.61, i64 50, i64 66, ptr nonnull %5)
          to label %bb.b unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33, !noalias !332
  invoke void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #36
          to label %bb.i unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %.028 = phi i1 [ false, %bb.c ], [ true, %bb.b ] ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %6, align 8, !tbaa !26     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.j = load i64, ptr %i.h, align 8, !tbaa !28
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br i1 %.028, label %bb.e, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br i1 %.028, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn61 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #33
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %.sroa.speculated44 = tail call i8 @llvm.umin.i8(i8 %4, i8 %2) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.l = zext i8 %.sroa.speculated44 to i32
  %.not = icmp eq i8 %.sroa.speculated44, 0
  br i1 %.not, label %.critedge4, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.m = load i8, ptr %1, align 1, !tbaa !28      ; 2 uses
  %i.n = load i8, ptr %3, align 1, !tbaa !28
  %i.o = icmp eq i8 %i.m, %i.n
  br i1 %i.o, label %.lr.ph81, label %.critedge

.lr.ph:                                           ; preds = %.lr.ph81
  %8 = zext i8 %9 to i64                          ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %8
  %i.q = load i8, ptr %i.p, align 1, !tbaa !28    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 %8
  %i.s = load i8, ptr %i.r, align 1, !tbaa !28
  %i.t = icmp eq i8 %i.q, %i.s
  br i1 %i.t, label %.lr.ph81, label %.critedge, !llvm.loop !330

.lr.ph81:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.u = phi i8 [ %i.q, %.lr.ph ], [ %i.m, %.lr.ph.preheader ]
  %i.v = phi i64 [ %8, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.0276280 = phi i8 [ %9, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 %i.v
  store i8 %i.u, ptr %i.w, align 1, !tbaa !28
  %9 = add i8 %.0276280, 1                        ; 3 uses
  %10 = zext i8 %9 to i32
  %i.x = shl nuw nsw i32 %10, 3                   ; 3 uses
  %i.y = icmp samesign ult i32 %i.x, %i.l
  br i1 %i.y, label %.lr.ph, label %..critedge_crit_edge, !llvm.loop !330

..critedge_crit_edge:                             ; preds = %.lr.ph81
  br label %.critedge, !llvm.loop !330

.critedge:                                        ; preds = %.lr.ph, %..critedge_crit_edge, %.lr.ph.preheader
  %.lcssa.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.x, %..critedge_crit_edge ], [ %i.x, %.lr.ph ]
  %i.z = trunc i32 %.lcssa.ph to i8               ; 2 uses
  %.sroa.speculated = tail call i8 @llvm.umin.i8(i8 %.sroa.speculated44, i8 %i.z) ; 2 uses
  %i.aa = icmp ugt i8 %.sroa.speculated44, %i.z
  br i1 %i.aa, label %.lr.ph66, label %.critedge4

.lr.ph66:                                         ; preds = %.critedge, %bb.g
  %.026.in65 = phi i8 [ %i.an, %bb.g ], [ %.sroa.speculated, %.critedge ] ; 4 uses
  %.0 = and i8 %.026.in65, 7
  %.026 = lshr i8 %.026.in65, 3
  %i.ab = zext nneg i8 %.026 to i64               ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !28
  %i.ae = zext nneg i8 %.0 to i64
  %i.af = getelementptr inbounds nuw i8, ptr @_ZZN5folly6detail5Bytes19longestCommonPrefixILm16EEESt4pairISt5arrayIhXT_EEhERKS5_hS8_hE6kMasks, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !28  ; 2 uses
  %i.ah = and i8 %i.ag, %i.ad                     ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 %i.ab
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !28
  %i.ak = and i8 %i.aj, %i.ag
  %i.al = icmp eq i8 %i.ah, %i.ak
  br i1 %i.al, label %bb.g, label %.critedge4

bb.g:                                             ; preds = %.lr.ph66
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 %i.ab
  store i8 %i.ah, ptr %i.am, align 1, !tbaa !28
  %i.an = add i8 %.026.in65, 1                    ; 2 uses
  %exitcond.not = icmp eq i8 %i.an, %.sroa.speculated44
  br i1 %exitcond.not, label %.critedge4, label %.lr.ph66, !llvm.loop !331

.critedge4:                                       ; preds = %.lr.ph66, %bb.g, %bb.f, %.critedge
  %.026.in.lcssa = phi i8 [ %.sroa.speculated, %.critedge ], [ 0, %bb.f ], [ %.026.in65, %.lr.ph66 ], [ %.sroa.speculated44, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %0, ptr noundef nonnull align 1 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !53
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.026.in.lcssa, ptr %i.ao, align 1, !tbaa !336
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn60 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn61, %bb.e ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn60

bb.i:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold noreturn }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #33 = { nounwind }
attributes #34 = { builtin nounwind }
attributes #35 = { nounwind willreturn memory(none) }
attributes #36 = { noreturn }
attributes #37 = { nounwind willreturn memory(read) }
attributes #38 = { builtin allocsize(0) }
attributes #39 = { noreturn nounwind }
attributes #40 = { cold nounwind }
attributes #41 = { nounwind allocsize(0) }
attributes #42 = { nounwind allocsize(1) }

!llvm.module.flags = !{!8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}
!llvm.errno.tbaa = !{!19}

!0 = distinct !{!0, !58}
!1 = distinct !{!1, !58}
!2 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "buffer<char>", scope: !137, file: !127, line: 862, size: 256, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN3fmt2v96detail6bufferIcEE")
!3 = distinct !{!3, !58}
!4 = distinct !{!4, !58}
!5 = distinct !{null, null, null}
!6 = distinct !{null, null, null}
!7 = distinct !{null, null, null}
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 7, !"openmp", i32 51}
!11 = !{i32 8, !"PIC Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!14 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!15 = !{!"Simple C++ TBAA"}
!16 = !{!"omnipotent char", !15, i64 0}
!17 = !{!"int", !16, i64 0}
!18 = !{!"__libc_errno", !17, i64 0}
!19 = !{!18, !17, i64 0}
!20 = !{!"long", !16, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"any pointer", !16, i64 0}
!23 = !{!"p1 omnipotent char", !22, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !23, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !24, i64 0, !20, i64 8, !16, i64 16}
!26 = !{!25, !23, i64 0}
!27 = !{!25, !20, i64 8}
!28 = !{!16, !16, i64 0}
!29 = !{!17, !17, i64 0}
!30 = !{!"vtable pointer", !15, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!"short", !16, i64 0}
!33 = !{!"_ZTSN5folly11IPAddressV6E", !16, i64 0, !32, i64 16}
!34 = !{!33, !32, i64 16}
!35 = !{!24, !23, i64 0}
!36 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!37 = !{!"_ZTSN5folly13fbstring_coreIcE11MediumLargeE", !23, i64 0, !20, i64 8, !20, i64 16}
!38 = !{!37, !20, i64 16}
!39 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!40 = !{!"branch_weights", i32 1, i32 1048575}
!41 = !{!"bool", !16, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{i8 0, i8 2}
!44 = !{}
!45 = !{!23, !23, i64 0}
!46 = !{!"_ZTSN5folly15expected_detail5WhichE", !16, i64 0}
!47 = !{!"_ZTSN5folly15expected_detail15ExpectedStorageINS_11IPAddressV6ENS_20IPAddressFormatErrorELNS0_11StorageTypeE1EEE", !16, i64 0, !46, i64 20}
!48 = !{!47, !46, i64 20}
!49 = !{!32, !32, i64 0}
!50 = !{i64 0, i64 16, !28, i64 16, i64 2, !49}
!51 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{i64 0, i64 16, !28}
!54 = !{!"_ZTSN5folly6detail36OptionalStorageTriviallyDestructibleINS_10MacAddressEEE", !16, i64 0, !41, i64 8}
!55 = !{!54, !41, i64 8}
!56 = !{!"_ZTSN5folly6detail15OptionalStorageINS_10MacAddressEEE", !54, i64 0}
!57 = !{!56, !41, i64 8}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"_ZTSN5folly5RangeIPKcEE", !23, i64 0, !23, i64 8}
!60 = !{!59, !23, i64 0}
!61 = !{!59, !23, i64 8}
!62 = !{!"p1 _ZTSN5folly5RangeIPKcEE", !22, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIN5folly5RangeIPKcEESaIS4_EE17_Vector_impl_dataE", !62, i64 0, !62, i64 8, !62, i64 16}
!64 = !{!63, !62, i64 8}
!65 = !{!63, !62, i64 0}
!66 = !{!63, !62, i64 16}
!67 = !{!"_ZTSN3fmt2v917presentation_typeE", !16, i64 0}
!68 = !{!"_ZTSN3fmt2v95align4typeE", !16, i64 0}
end_hunk_1
