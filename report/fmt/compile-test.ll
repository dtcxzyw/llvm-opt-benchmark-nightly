Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/compile-test?download=true
inline.NumInlined: 6412
inline.NumDeleted: 1782
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN7testing8internal18CmpHelperEQFailureIA5_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.d:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA5_cEES7_RKT_RKT0_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %6, align 8, !tbaa !75     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.q = load i64, ptr %i.o, align 8, !tbaa !76
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.s = load ptr, ptr %5, align 8, !tbaa !75     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.v = load i64, ptr %i.t, align 8, !tbaa !76
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v129to_stringIdTnNSt9enable_ifIXaantsr3std11is_integralIT_EE5valuentsr6detail13use_format_asIS3_EE5valueEiE4typeELi0EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS3_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.d, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.c, align 8, !tbaa !130
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !127
  store i64 500, ptr %i.b, align 8, !tbaa !129
  %i.f = load double, ptr %1, align 8, !tbaa !99
  %i.g = invoke ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_(ptr nonnull %2, double noundef %i.f)
          to label %bb.b unwind label %bb.i       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !127    ; 3 uses
  %i.i = load i64, ptr %i.d, align 8, !tbaa !128  ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !96
  %i.k = icmp eq ptr %i.h, null
  %i.l = icmp ne i64 %i.i, 0
  %or.cond.i = and i1 %i.k, %i.l
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.227) #31
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.i, ptr %i.a, align 8, !tbaa !97
  %i.m = icmp ugt i64 %i.i, 15
  br i1 %i.m, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.n = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc4 unwind label %bb.j    ; 2 uses

.noexc4:                                          ; preds = %.noexc.i
  store ptr %i.n, ptr %0, align 8, !tbaa !75
  %i.o = load i64, ptr %i.a, align 8, !tbaa !97
  store i64 %i.o, ptr %i.j, align 8, !tbaa !76
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc4, %bb.d
  %i.p = phi ptr [ %i.n, %.noexc4 ], [ %i.j, %bb.d ] ; 2 uses
  switch i64 %i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.h, align 1, !tbaa !76
  store i8 %i.q, ptr %i.p, align 1, !tbaa !76
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.h, i64 %i.i, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !97   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !74
  %i.t = load ptr, ptr %0, align 8, !tbaa !75
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.v = load ptr, ptr %2, align 8, !tbaa !127    ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, %i.e
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.v) #28
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.i:                                             ; preds = %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %.noexc.i, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.x, %bb.j ], [ %i.w, %bb.i ]
  %i.y = load ptr, ptr %2, align 8, !tbaa !127    ; 2 uses
  %.not.i.i5 = icmp eq ptr %i.y, %i.e
  br i1 %.not.i.i5, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit6, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef %i.y) #28
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit6

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit6: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_(ptr %0, double noundef %1) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca [21 x i8], align 16               ; 8 uses
  %2 = alloca %"struct.fmt::v12::format_specs", align 8 ; 5 uses
  %3 = alloca %class.anon.270, align 8            ; 5 uses
  %4 = alloca %"struct.fmt::v12::detail::dragonbox::decimal_fp", align 8 ; 5 uses
  %5 = alloca %"struct.fmt::v12::format_specs", align 4 ; 7 uses
  %i.b = bitcast double %1 to i64                 ; 4 uses
  %i.c = icmp slt i64 %i.b, 0                     ; 2 uses
  %.lobit = lshr i64 %i.b, 63
  %i.d = trunc nuw nsw i64 %.lobit to i32         ; 3 uses
  %i.e = and i64 %i.b, 9218868437227405312
  %i.f = icmp eq i64 %i.e, 9218868437227405312
  br i1 %i.f, label %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit, label %bb.b

_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit: ; preds = %bb.a
  %i.g = fcmp uno double %1, 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 137438986240, ptr %2, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 -4294967296, ptr %i.h, align 8
  %i.i = select i1 %i.g, ptr @.str.247, ptr @.str.249
  %.not.not.i = icmp sgt i64 %i.b, -1
  %i.j = select i1 %.not.not.i, i64 3, i64 4      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store i32 %i.d, ptr %3, align 8, !tbaa !209
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.i, ptr %i.k, align 8, !tbaa !210
  %i.l = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_15write_nonfiniteIcS5_EET0_S7_bNS0_12format_specsENS0_4signEEUlS5_E_EET1_SC_RKS8_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 noundef %i.j, i64 noundef %i.j, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.ab

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.m = tail call { i64, i32 } @_ZN3fmt3v126detail9dragonbox10to_decimalIdEENS2_10decimal_fpIT_EES5_(double noundef %1) #28 ; 2 uses
  %i.n = extractvalue { i64, i32 } %i.m, 0        ; 12 uses
  store i64 %i.n, ptr %4, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = extractvalue { i64, i32 } %i.m, 1        ; 2 uses
  store i32 %i.p, ptr %i.o, align 8
  %i.q = or i64 %i.n, 1
  %i.r = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.q, i1 true)
  %i.s = xor i64 %i.r, 63
  %i.t = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !76    ; 2 uses
  %i.v = zext i8 %i.u to i32
  %i.w = zext i8 %i.u to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !97
  %i.z = icmp ult i64 %i.n, %i.y
  %.neg.i.i = sext i1 %i.z to i32
  %i.aa = add nsw i32 %.neg.i.i, %i.v             ; 9 uses
  %i.ab = add nsw i32 %i.aa, %i.p                 ; 4 uses
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  %i.ad = add i32 %i.ab, 3
  %i.ae = icmp ult i32 %i.ad, 20
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i32 32768, ptr %5, align 4, !tbaa !93
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 32, ptr %i.af, align 4, !tbaa !76
  %scevgep.i.i68 = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i68, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.ag, align 4, !tbaa !95
  %i.ah = call ptr @_ZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.aa, i8 noundef signext 46, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %i.d, i64 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.aa

bb.d:                                             ; preds = %bb.b
  %i.ai = icmp slt i32 %i.ab, 1                   ; 2 uses
  %i.aj = sub nsw i32 1, %i.ab
  %spec.select = select i1 %i.ai, i32 %i.aj, i32 %i.ac ; 4 uses
  %.not = icmp ne i32 %i.aa, 1                    ; 3 uses
  %i.ak = add nsw i32 %i.aa, %i.d
  %i.al = zext i1 %.not to i32
  %i.am = add nsw i32 %i.ak, %i.al
  %i.an = icmp sgt i32 %spec.select, 99           ; 2 uses
  %i.ao = select i1 %i.an, i32 5, i32 4
  %i.ap = add nsw i32 %i.am, %i.ao
  %i.aq = zext nneg i32 %i.ap to i64              ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !128 ; 2 uses
  %i.at = add i64 %i.as, %i.aq                    ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !129 ; 2 uses
  %i.aw = icmp ugt i64 %i.at, %i.av
  br i1 %i.aw, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i: ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !130
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.at), !inline_history !16
  %.pre.i = load i64, ptr %i.ar, align 8, !tbaa !128 ; 2 uses
  %.pre14.i = load i64, ptr %i.au, align 8, !tbaa !129 ; 2 uses
  %.pre15.i = add i64 %.pre.i, %i.aq              ; 3 uses
  %i.az = icmp ult i64 %.pre14.i, %.pre15.i
  br i1 %i.az, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit: ; preds = %bb.d, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i
  %i.ba = phi i64 [ %.pre14.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %i.av, %bb.d ]
  %i.bb = phi i64 [ %.pre.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %i.as, %bb.d ]
  %.pre-phi19.i = phi i64 [ %.pre15.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %i.at, %bb.d ] ; 2 uses
  store i64 %.pre-phi19.i, ptr %i.ar, align 8, !tbaa !128
  %i.bc = load ptr, ptr %0, align 8, !tbaa !127   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bb ; 3 uses
  %.not66 = icmp eq ptr %i.bc, null
  br i1 %.not66, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store i8 45, ptr %i.bd, align 1, !tbaa !76
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.060 = phi ptr [ %i.be, %bb.f ], [ %i.bd, %bb.e ] ; 8 uses
  br i1 %.not, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bf = add nsw i32 %i.aa, 1                    ; 3 uses
  %i.bg = icmp ugt i64 %i.n, 99
  br i1 %i.bg, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.020.i = phi i32 [ %i.bh, %.lr.ph.i ], [ %i.bf, %bb.h ]
  %.01819.i = phi i64 [ %i.bo, %.lr.ph.i ], [ %i.n, %bb.h ] ; 3 uses
  %i.bh = add i32 %.020.i, -2                     ; 3 uses
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %.060, i64 %i.bi
  %i.bk = urem i64 %.01819.i, 100
  %i.bl = shl nuw nsw i64 %i.bk, 1
  %i.bm = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2
  store i16 %i.bn, ptr %i.bj, align 1
  %i.bo = udiv i64 %.01819.i, 100                 ; 2 uses
  %i.bp = icmp ugt i64 %.01819.i, 9999
  br i1 %i.bp, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !15

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.h
  %.018.lcssa.i = phi i64 [ %i.n, %bb.h ], [ %i.bo, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ %i.bf, %bb.h ], [ %i.bh, %.lr.ph.i ] ; 2 uses
  %i.bq = icmp samesign ugt i64 %.018.lcssa.i, 9
  br i1 %i.bq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i
  %i.br = add i32 %.0.lcssa.i, -2
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %.060, i64 %i.bs
  %i.bu = shl nuw nsw i64 %.018.lcssa.i, 1
  %i.bv = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2
  store i16 %i.bw, ptr %i.bt, align 1
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

bb.j:                                             ; preds = %._crit_edge.i
  %i.bx = trunc nuw nsw i64 %.018.lcssa.i to i8
  %i.by = or disjoint i8 %i.bx, 48
  %i.bz = add i32 %.0.lcssa.i, -1
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %.060, i64 %i.ca
  store i8 %i.by, ptr %i.cb, align 1, !tbaa !76
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit: ; preds = %bb.i, %bb.j
  %i.cc = zext nneg i32 %i.bf to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %.060, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %.060, i64 1 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !76
  store i8 %i.cf, ptr %.060, align 1, !tbaa !76
  store i8 46, ptr %i.ce, align 1, !tbaa !76
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.cg = trunc i64 %i.n to i8
  %i.ch = add i8 %i.cg, 48
  %i.ci = getelementptr inbounds nuw i8, ptr %.060, i64 1
  store i8 %i.ch, ptr %.060, align 1, !tbaa !76
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit
  %.161 = phi ptr [ %i.cd, %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit ], [ %i.ci, %bb.k ] ; 3 uses
  %i.cj = select i1 %i.ai, i16 11621, i16 11109
  store i16 %i.cj, ptr %.161, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %.161, i64 2 ; 2 uses
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cl = udiv i32 %spec.select, 100
  %i.cm = trunc i32 %i.cl to i8
  %i.cn = add i8 %i.cm, 48
  %i.co = getelementptr inbounds nuw i8, ptr %.161, i64 3
  store i8 %i.cn, ptr %i.ck, align 1, !tbaa !76
  %i.cp = urem i32 %spec.select, 100
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.2 = phi ptr [ %i.co, %bb.m ], [ %i.ck, %bb.l ]
  %.1 = phi i32 [ %i.cp, %bb.m ], [ %spec.select, %bb.l ]
  %i.cq = zext nneg i32 %.1 to i64
  %i.cr = shl nuw nsw i64 %i.cq, 1
  %i.cs = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.cr
  %i.ct = load i16, ptr %i.cs, align 2
  store i16 %i.ct, ptr %.2, align 1
  br label %bb.aa

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread: ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit
  %.pre = add i64 %.pre-phi19.i, %i.aq            ; 2 uses
  %i.cu = icmp ugt i64 %.pre, %i.ba
  br i1 %i.cu, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread
  %.pre-phi111 = phi i64 [ %.pre, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread ], [ %.pre15.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ]
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !130
  tail call void %i.cw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.pre-phi111), !inline_history !10
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread
  br i1 %i.c, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.cx = load i64, ptr %i.ar, align 8, !tbaa !128 ; 2 uses
  %i.cy = add i64 %i.cx, 1                        ; 3 uses
  %i.cz = load i64, ptr %i.au, align 8, !tbaa !129
  %i.da = icmp ugt i64 %i.cy, %i.cz
  br i1 %i.da, label %bb.p, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.p:                                             ; preds = %bb.o
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !130
  tail call void %i.dc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cy), !inline_history !13
  %.pre.i.i = load i64, ptr %i.ar, align 8, !tbaa !128 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.o, %bb.p
  %.pre-phi.i.i = phi i64 [ %i.cy, %bb.o ], [ %.pre2.i.i, %bb.p ]
  %i.dd = phi i64 [ %i.cx, %bb.o ], [ %.pre.i.i, %bb.p ]
  %i.de = load ptr, ptr %0, align 8, !tbaa !127
  store i64 %.pre-phi.i.i, ptr %i.ar, align 8, !tbaa !128
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dd
  store i8 45, ptr %i.df, align 1, !tbaa !76
  br label %bb.q

bb.q:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %6 = select i1 %.not, i8 46, i8 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %.not.not = icmp eq i32 %i.aa, 1
  br i1 %.not.not, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.dg = icmp ugt i64 %i.n, 99
  br i1 %i.dg, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.r, %.lr.ph.i.i.i
  %.020.i.i.i = phi i32 [ %i.dh, %.lr.ph.i.i.i ], [ 1, %bb.r ]
  %.01819.i.i.i = phi i64 [ %i.do, %.lr.ph.i.i.i ], [ %i.n, %bb.r ] ; 3 uses
  %i.dh = add i32 %.020.i.i.i, -2                 ; 3 uses
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.di
  %i.dk = urem i64 %.01819.i.i.i, 100
  %i.dl = shl nuw nsw i64 %i.dk, 1
  %i.dm = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.dl
  %i.dn = load i16, ptr %i.dm, align 2
  store i16 %i.dn, ptr %i.dj, align 1
  %i.do = udiv i64 %.01819.i.i.i, 100             ; 2 uses
  %i.dp = icmp ugt i64 %.01819.i.i.i, 9999
  br i1 %i.dp, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !15

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.r
  %.018.lcssa.i.i.i = phi i64 [ %i.n, %bb.r ], [ %i.do, %.lr.ph.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i = phi i32 [ 1, %bb.r ], [ %i.dh, %.lr.ph.i.i.i ] ; 2 uses
  %i.dq = icmp samesign ugt i64 %.018.lcssa.i.i.i, 9
  br i1 %i.dq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i.i
  %i.dr = add i32 %.0.lcssa.i.i.i, -2
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ds
  %i.du = shl nuw nsw i64 %.018.lcssa.i.i.i, 1
  %i.dv = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.du
  %i.dw = load i16, ptr %i.dv, align 2
  store i16 %i.dw, ptr %i.dt, align 1
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i

bb.t:                                             ; preds = %._crit_edge.i.i.i
  %i.dx = trunc nuw nsw i64 %.018.lcssa.i.i.i to i8
  %i.dy = or disjoint i8 %i.dx, 48
  %i.dz = add i32 %.0.lcssa.i.i.i, -1
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ea
  store i8 %i.dy, ptr %i.eb, align 1, !tbaa !76
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i

_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i: ; preds = %bb.t, %bb.s
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit

bb.u:                                             ; preds = %bb.q
  %i.ed = sext i32 %i.aa to i64
  %i.ee = getelementptr i8, ptr %i.a, i64 %i.ed
  %i.ef = getelementptr i8, ptr %i.ee, i64 1      ; 4 uses
  %i.eg = add nsw i32 %i.aa, -1                   ; 2 uses
  %i.eh = icmp sgt i32 %i.aa, 2
  br i1 %i.eh, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.u
  %i.ei = lshr i32 %i.eg, 1
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.u
  %.029.lcssa.i.i = phi i64 [ %i.n, %bb.u ], [ %i.ep, %.lr.ph.i.i ] ; 3 uses
  %.028.lcssa.i.i = phi ptr [ %i.ef, %bb.u ], [ %i.ek, %.lr.ph.i.i ] ; 2 uses
  %i.ej = and i32 %i.eg, 1
  %.not32.i.i = icmp eq i32 %i.ej, 0
  br i1 %.not32.i.i, label %bb.w, label %bb.v

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.046.i.i = phi i32 [ %i.eq, %.lr.ph.i.i ], [ %i.ei, %.lr.ph.preheader.i.i ] ; 2 uses
  %.02845.i.i = phi ptr [ %i.ek, %.lr.ph.i.i ], [ %i.ef, %.lr.ph.preheader.i.i ]
  %.02944.i.i = phi i64 [ %i.ep, %.lr.ph.i.i ], [ %i.n, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %.02845.i.i, i64 -2 ; 3 uses
  %i.el = urem i64 %.02944.i.i, 100
  %i.em = shl nuw nsw i64 %i.el, 1
  %i.en = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.em
  %i.eo = load i16, ptr %i.en, align 2
  store i16 %i.eo, ptr %i.ek, align 1
  %i.ep = udiv i64 %.02944.i.i, 100               ; 2 uses
  %i.eq = add nsw i32 %.046.i.i, -1
  %i.er = icmp samesign ugt i32 %.046.i.i, 1
  br i1 %i.er, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !17

bb.v:                                             ; preds = %._crit_edge.i.i
  %i.es = urem i64 %.029.lcssa.i.i, 10
  %i.et = trunc nuw nsw i64 %i.es to i8
  %i.eu = or disjoint i8 %i.et, 48
  %i.ev = getelementptr inbounds i8, ptr %.028.lcssa.i.i, i64 -1 ; 2 uses
  store i8 %i.eu, ptr %i.ev, align 1, !tbaa !76
  %i.ew = udiv i64 %.029.lcssa.i.i, 10
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.i.i
  %.130.i.i = phi i64 [ %i.ew, %bb.v ], [ %.029.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %.1.i.i = phi ptr [ %i.ev, %bb.v ], [ %.028.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %.1.i.i, i64 -1
  store i8 %6, ptr %i.ex, align 1, !tbaa !76
  %i.ey = getelementptr inbounds i8, ptr %.1.i.i, i64 -2 ; 3 uses
  %i.ez = icmp ugt i64 %.130.i.i, 99
  br i1 %i.ez, label %.lr.ph.i37.i.i, label %._crit_edge.i33.i.i

.lr.ph.i37.i.i:                                   ; preds = %bb.w, %.lr.ph.i37.i.i
  %.020.i38.i.i = phi i32 [ %i.fa, %.lr.ph.i37.i.i ], [ 1, %bb.w ]
  %.01819.i39.i.i = phi i64 [ %i.fh, %.lr.ph.i37.i.i ], [ %.130.i.i, %bb.w ] ; 3 uses
  %i.fa = add i32 %.020.i38.i.i, -2               ; 3 uses
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.fb
  %i.fd = urem i64 %.01819.i39.i.i, 100
  %i.fe = shl nuw nsw i64 %i.fd, 1
  %i.ff = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.fe
  %i.fg = load i16, ptr %i.ff, align 2
  store i16 %i.fg, ptr %i.fc, align 1
  %i.fh = udiv i64 %.01819.i39.i.i, 100           ; 2 uses
  %i.fi = icmp ugt i64 %.01819.i39.i.i, 9999
  br i1 %i.fi, label %.lr.ph.i37.i.i, label %._crit_edge.i33.i.i, !llvm.loop !15

._crit_edge.i33.i.i:                              ; preds = %.lr.ph.i37.i.i, %bb.w
  %.018.lcssa.i34.i.i = phi i64 [ %.130.i.i, %bb.w ], [ %i.fh, %.lr.ph.i37.i.i ] ; 3 uses
  %.0.lcssa.i35.i.i = phi i32 [ 1, %bb.w ], [ %i.fa, %.lr.ph.i37.i.i ] ; 2 uses
  %i.fj = icmp samesign ugt i64 %.018.lcssa.i34.i.i, 9
  br i1 %i.fj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge.i33.i.i
  %i.fk = add i32 %.0.lcssa.i35.i.i, -2
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.fl
  %i.fn = shl nuw nsw i64 %.018.lcssa.i34.i.i, 1
  %i.fo = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.fn
  %i.fp = load i16, ptr %i.fo, align 2
  store i16 %i.fp, ptr %i.fm, align 1
  br label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit

bb.y:                                             ; preds = %._crit_edge.i33.i.i
  %i.fq = trunc nuw nsw i64 %.018.lcssa.i34.i.i to i8
  %i.fr = or disjoint i8 %i.fq, 48
  %i.fs = add i32 %.0.lcssa.i35.i.i, -1
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ft
  store i8 %i.fr, ptr %i.fu, align 1, !tbaa !76
  br label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit

_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit: ; preds = %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i, %bb.x, %bb.y
  %.027.i.i = phi ptr [ %i.ec, %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i ], [ %i.ef, %bb.x ], [ %i.ef, %bb.y ]
  %i.fv = call ptr @_ZN3fmt3v126detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef nonnull %i.a, ptr noundef %.027.i.i, ptr nonnull %0) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 3 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !128 ; 2 uses
  %i.fy = add i64 %i.fx, 1                        ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !129
  %i.gb = icmp ugt i64 %i.fy, %i.ga
  br i1 %i.gb, label %bb.z, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74

bb.z:                                             ; preds = %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !130
  call void %i.gd(ptr noundef nonnull align 8 dereferenceable(32) %i.fv, i64 noundef %i.fy), !inline_history !13
  %.pre.i.i72 = load i64, ptr %i.fw, align 8, !tbaa !128 ; 2 uses
  %.pre2.i.i73 = add i64 %.pre.i.i72, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74

_ZN3fmt3v1214basic_appenderIcEaSEc.exit74:        ; preds = %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit, %bb.z
  %.pre-phi.i.i71 = phi i64 [ %i.fy, %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit ], [ %.pre2.i.i73, %bb.z ]
  %i.ge = phi i64 [ %i.fx, %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit ], [ %.pre.i.i72, %bb.z ]
  %i.gf = load ptr, ptr %i.fv, align 8, !tbaa !127
  store i64 %.pre-phi.i.i71, ptr %i.fw, align 8, !tbaa !128
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.ge
  store i8 101, ptr %i.gg, align 1, !tbaa !76
  %i.gh = call ptr @_ZN3fmt3v126detail14write_exponentIcNS0_14basic_appenderIcEEEET0_iS5_(i32 noundef %i.ac, ptr nonnull %i.fv)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.n, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74, %bb.c
  %.sroa.057.2 = phi ptr [ %i.ah, %bb.c ], [ %i.gh, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74 ], [ %0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit
  %.sroa.057.3 = phi ptr [ %i.l, %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit ], [ %.sroa.057.2, %bb.aa ]
  ret ptr %.sroa.057.3
}

; Function Attrs: nounwind
declare { i64, i32 } @_ZN3fmt3v126detail9dragonbox10to_decimalIdEENS2_10decimal_fpIT_EES5_(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i8 noundef signext %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %5, i64 %6) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.fmt::v12::detail::fallback_digit_grouping", align 1 ; 3 uses
  %8 = alloca %class.anon.271, align 8            ; 10 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.fmt::v12::detail::fallback_digit_grouping", align 1 ; 3 uses
  %10 = alloca %class.anon.272, align 8           ; 10 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i8, align 1                       ; 6 uses
  %11 = alloca %class.anon.273, align 8           ; 9 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !100
  store i8 %3, ptr %i.b, align 1, !tbaa !76
  store i32 %5, ptr %i.c, align 4, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !213  ; 3 uses
  %i.k = add nsw i32 %i.j, %2                     ; 4 uses
  store i32 %i.k, ptr %i.d, align 4, !tbaa !100
  %.not = icmp ne i32 %5, 0
  %i.l = zext i1 %.not to i32
  %i.m = add nsw i32 %2, %i.l
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = icmp sgt i32 %i.j, -1
  br i1 %i.o, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.p = zext nneg i32 %i.j to i64
  %i.q = add nsw i64 %i.p, %i.n                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !95
  %i.t = sub nsw i32 %i.s, %i.k                   ; 3 uses
  store i32 %i.t, ptr %i.e, align 4, !tbaa !100
  %i.u = load i32, ptr %4, align 4, !tbaa !93     ; 4 uses
  %i.v = and i32 %i.u, 8192
  %.not58 = icmp eq i32 %i.v, 0
  br i1 %.not58, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = add nsw i64 %i.q, 1                      ; 3 uses
  %i.x = icmp sgt i32 %i.t, 0                     ; 2 uses
  %i.y = and i32 %i.u, 7
  %.not41 = icmp eq i32 %i.y, 2
  %or.cond53 = or i1 %i.x, %.not41
  br i1 %or.cond53, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  store i32 0, ptr %i.e, align 4, !tbaa !100
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = zext nneg i32 %i.t to i64
  %i.aa = add nsw i64 %i.w, %i.z
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.d, %bb.e, %bb.b
  %.0 = phi i64 [ %i.aa, %bb.e ], [ %i.w, %bb.d ], [ %i.q, %bb.b ], [ %i.w, %.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store ptr %i.c, ptr %8, align 8, !tbaa !103
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %1, ptr %i.ab, align 8, !tbaa !215
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.a, ptr %i.ac, align 8, !tbaa !217
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %7, ptr %i.ad, align 8, !tbaa !219
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %4, ptr %i.ae, align 8, !tbaa !221
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.b, ptr %i.af, align 8, !tbaa !115
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %i.e, ptr %i.ag, align 8, !tbaa !217
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !168
  %i.aj = zext i32 %i.ai to i64
  %i.ak = call i64 @llvm.usub.sat.i64(i64 %i.aj, i64 %.0) ; 4 uses
  %i.al = lshr i32 %i.u, 3
  %i.am = and i32 %i.al, 7
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @.str.212, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !76
  %i.aq = sext i8 %i.ap to i64
  %i.ar = and i64 %i.aq, 4294967295
  %i.as = lshr i64 %i.ak, %i.ar                   ; 4 uses
  %i.at = sub nsw i64 %i.ak, %i.as
  %i.au = lshr i32 %i.u, 15
  %i.av = and i32 %i.au, 7
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = mul nuw nsw i64 %i.ak, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !128
  %i.ba = add i64 %i.az, %.0
  %i.bb = add i64 %i.ba, %i.ax                    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !129
  %i.be = icmp ugt i64 %i.bb, %i.bd
  br i1 %i.be, label %bb.g, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !130
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bb), !inline_history !874
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE8on_am_pmEv:bb.a
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit12.i.i

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit12.i.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %i.as

_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE16format_localizedEcc.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  store ptr %i.aq, ptr %i.ag, align 8, !tbaa !134
  br label %bb.k

bb.k:                                             ; preds = %_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE16format_localizedEcc.exit, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit5
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE10on_tz_nameEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !260, !nonnull !88, !align !192
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !245  ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.b, label %_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE14format_tz_nameI2tmTnNSt9enable_ifIXsr11has_tm_zoneIT_EE5valueEiE4typeELi0EEEvRKSE_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.255)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.e) #28
  resume { ptr, i32 } %i.f

_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE14format_tz_nameI2tmTnNSt9enable_ifIXsr11has_tm_zoneIT_EE5valueEiE4typeELi0EEEvRKSE_.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.g, align 8, !tbaa !134
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #28
  %i.i = load ptr, ptr %0, align 8, !tbaa !268, !nonnull !88, !align !192
  %i.j = tail call ptr @_ZN3fmt3v126detail20write_encoded_tm_strINS0_14basic_appenderIcEEEET_S5_NS0_17basic_string_viewIcEERKSt6locale(ptr %.sroa.0.0.copyload.i, ptr nonnull %i.d, i64 %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  store ptr %i.j, ptr %i.g, align 8, !tbaa !134
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE14on_offset_yearEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !257, !range !87, !noundef !88
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !260, !nonnull !88, !align !192
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !261
  %i.h = sext i32 %i.g to i64
  %i.i = add nsw i64 %i.h, 1900
  %i.j = srem i64 %i.i, 100
  %spec.select.i = tail call i64 @llvm.abs.i64(i64 %i.j, i1 true)
  %i.k = shl nuw nsw i64 %spec.select.i, 1
  %i.l = and i64 %i.k, 4294967294
  %i.m = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.o = load i8, ptr %i.m, align 2, !tbaa !76
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.p, align 8, !tbaa !134 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !128  ; 2 uses
  %i.s = add i64 %i.r, 1                          ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !129
  %i.v = icmp ugt i64 %i.s, %i.u
  br i1 %i.v, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !130
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i, i64 noundef %i.s), !inline_history !26
  %.pre.i.i.i = load i64, ptr %i.q, align 8, !tbaa !128 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i = phi i64 [ %i.s, %bb.b ], [ %.pre2.i.i.i, %bb.c ]
  %i.y = phi i64 [ %i.r, %bb.b ], [ %.pre.i.i.i, %bb.c ]
  %i.z = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !127
  store i64 %.pre-phi.i.i.i, ptr %i.q, align 8, !tbaa !128
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 %i.o, ptr %i.aa, align 1, !tbaa !76
  %i.ab = load i8, ptr %i.n, align 1, !tbaa !76
  %.sroa.0.0.copyload.i3.i = load ptr, ptr %i.p, align 8, !tbaa !134 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i3.i, i64 8 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !128 ; 2 uses
  %i.ae = add i64 %i.ad, 1                        ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i3.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !129
  %i.ah = icmp ugt i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.d, label %_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE6write2Ei.exit

bb.d:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i3.i, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !130
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i3.i, i64 noundef %i.ae), !inline_history !26
  %.pre.i.i5.i = load i64, ptr %i.ac, align 8, !tbaa !128 ; 2 uses
  %.pre2.i.i6.i = add i64 %.pre.i.i5.i, 1
  br label %_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE6write2Ei.exit

_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE6write2Ei.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %bb.d
  %.pre-phi.i.i4.i = phi i64 [ %i.ae, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ], [ %.pre2.i.i6.i, %bb.d ]
  %i.ak = phi i64 [ %i.ad, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ], [ %.pre.i.i5.i, %bb.d ]
  %i.al = load ptr, ptr %.sroa.0.0.copyload.i3.i, align 8, !tbaa !127
  store i64 %.pre-phi.i.i4.i, ptr %i.ac, align 8, !tbaa !128
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak
  store i8 %i.ab, ptr %i.am, align 1, !tbaa !76
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.an, align 8, !tbaa !134
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !260, !nonnull !88, !align !192
  %i.aq = load ptr, ptr %0, align 8, !tbaa !268, !nonnull !88, !align !192 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 0, ptr %i.at, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.as, align 8, !tbaa !130
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  store ptr %i.au, ptr %1, align 8, !tbaa !127
  store i64 500, ptr %i.ar, align 8, !tbaa !129
  invoke void @_ZN3fmt3v126detail8do_writeIcEEvRNS1_6bufferIT_EERK2tmRKSt6localecc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(56) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.aq, i8 noundef signext 121, i8 noundef signext 69)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.av = load ptr, ptr %1, align 8, !tbaa !127
  %i.aw = load i64, ptr %i.at, align 8, !tbaa !128
  %i.ax = invoke ptr @_ZN3fmt3v126detail20write_encoded_tm_strINS0_14basic_appenderIcEEEET_S5_NS0_17basic_string_viewIcEERKSt6locale(ptr %.sroa.0.0.copyload.i, ptr %i.av, i64 %i.aw, ptr noundef nonnull align 8 dereferenceable(8) %i.aq)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ay = load ptr, ptr %1, align 8, !tbaa !127   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ay, %i.au
  br i1 %.not.i.i.i.i, label %_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE16format_localizedEcc.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef %i.ay) #28
  br label %_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE16format_localizedEcc.exit

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.az = landingpad { ptr, i32 }
          cleanup
  %i.ba = load ptr, ptr %1, align 8, !tbaa !127   ; 2 uses
  %.not.i.i11.i.i = icmp eq ptr %i.ba, %i.au
  br i1 %.not.i.i11.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit12.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef %i.ba) #28
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit12.i.i

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit12.i.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %i.az

_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE16format_localizedEcc.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  store ptr %i.ax, ptr %i.an, align 8, !tbaa !134
  br label %bb.k

bb.k:                                             ; preds = %_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE16format_localizedEcc.exit, %_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE6write2Ei.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail9tm_writerINS0_14basic_appenderIcEEcNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEE19write_year_extendedExNS1_8pad_typeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = icmp slt i64 %1, 0                       ; 3 uses
  %spec.select = select i1 %i.a, i32 3, i32 4     ; 2 uses
  %spec.select26 = tail call i64 @llvm.abs.i64(i64 %1, i1 true) ; 3 uses
  %i.b = or i64 %spec.select26, 1
  %i.c = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.d = xor i64 %i.c, 63
  %i.e = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !76    ; 2 uses
  %i.g = zext i8 %i.f to i32
  %i.h = zext i8 %i.f to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !97
  %i.k = icmp ult i64 %spec.select26, %i.j
  %.neg.i.i = sext i1 %i.k to i32
  %i.l = add nsw i32 %.neg.i.i, %i.g              ; 4 uses
  %i.m = icmp eq i32 %2, 0
  %or.cond = and i1 %i.a, %i.m
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.n, align 8, !tbaa !134 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !128  ; 2 uses
  %i.q = add i64 %i.p, 1                          ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !129
  %i.t = icmp ugt i64 %i.q, %i.s
  br i1 %i.t, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !130
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.q), !inline_history !13
  %.pre.i.i = load i64, ptr %i.o, align 8, !tbaa !128 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %.thread

bb.d:                                             ; preds = %bb.a
  %i.w = icmp sgt i32 %spec.select, %i.l
  br i1 %i.w, label %bb.e, label %bb.h

.thread:                                          ; preds = %bb.c, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.q, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.x = phi i64 [ %i.p, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.y = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !127
  store i64 %.pre-phi.i.i, ptr %i.o, align 8, !tbaa !128
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store i8 45, ptr %i.z, align 1, !tbaa !76
  %i.aa = icmp slt i32 %i.l, 3
  br i1 %i.aa, label %.thread33, label %.thread37

.thread33:                                        ; preds = %.thread
  %.sroa.05.0.copyload34 = load ptr, ptr %i.n, align 8, !tbaa !134
  br label %.lr.ph.i.i

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.05.0.copyload = load ptr, ptr %i.ab, align 8, !tbaa !134 ; 2 uses
  %i.ac = icmp eq i32 %2, 1
  br i1 %i.ac, label %_ZN3fmt3v126detail13write_paddingINS0_14basic_appenderIcEEEET_S5_NS1_8pad_typeEi.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.thread33, %bb.e
  %.pn = phi i32 [ 3, %.thread33 ], [ %spec.select, %bb.e ]
  %.sroa.05.0.copyload35 = phi ptr [ %.sroa.05.0.copyload34, %.thread33 ], [ %.sroa.05.0.copyload, %bb.e ] ; 6 uses
  %i.ad = phi ptr [ %i.n, %.thread33 ], [ %i.ab, %bb.e ]
  %i.ae = sub nsw i32 %.pn, %i.l
  %i.af = icmp eq i32 %2, 2
  %i.ag = select i1 %i.af, i8 32, i8 48
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload35, i64 8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload35, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload35, i64 24
  br label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i, %.lr.ph.i.i
  %.04.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.as, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i ]
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !128 ; 2 uses
  %i.al = add i64 %i.ak, 1                        ; 3 uses
  %i.am = load i64, ptr %i.ai, align 8, !tbaa !129
  %i.an = icmp ugt i64 %i.al, %i.am
  br i1 %i.an, label %bb.g, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !130
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05.0.copyload35, i64 noundef %i.al), !inline_history !28
  %.pre.i.i.i.i = load i64, ptr %i.ah, align 8, !tbaa !128 ; 2 uses
  %.pre2.i.i.i.i = add i64 %.pre.i.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i:      ; preds = %bb.g, %bb.f
  %.pre-phi.i.i.i.i = phi i64 [ %i.al, %bb.f ], [ %.pre2.i.i.i.i, %bb.g ]
  %i.ap = phi i64 [ %i.ak, %bb.f ], [ %.pre.i.i.i.i, %bb.g ]
  %i.aq = load ptr, ptr %.sroa.05.0.copyload35, align 8, !tbaa !127
  store i64 %.pre-phi.i.i.i.i, ptr %i.ah, align 8, !tbaa !128
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  store i8 %i.ag, ptr %i.ar, align 1, !tbaa !76
  %i.as = add nuw nsw i32 %.04.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.as, %i.ae
  br i1 %exitcond.not.i.i, label %_ZN3fmt3v126detail13write_paddingINS0_14basic_appenderIcEEEET_S5_NS1_8pad_typeEi.exit, label %bb.f, !llvm.loop !18

_ZN3fmt3v126detail13write_paddingINS0_14basic_appenderIcEEEET_S5_NS1_8pad_typeEi.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i, %bb.e
  %.sroa.05.0.copyload36 = phi ptr [ %.sroa.05.0.copyload, %bb.e ], [ %.sroa.05.0.copyload35, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i ]
  %i.at = phi ptr [ %i.ab, %bb.e ], [ %i.ad, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i ]
  store ptr %.sroa.05.0.copyload36, ptr %i.at, align 8, !tbaa !134
  br label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v126detail13write_paddingINS0_14basic_appenderIcEEEET_S5_NS1_8pad_typeEi.exit, %bb.d
  %.not = icmp ne i32 %2, 0
  %or.cond3 = and i1 %i.a, %.not
  br i1 %or.cond3, label %bb.i, label %.thread37

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i27 = load ptr, ptr %i.au, align 8, !tbaa !134 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i27, i64 8 ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !128 ; 2 uses
  %i.ax = add i64 %i.aw, 1                        ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i27, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !129
  %i.ba = icmp ugt i64 %i.ax, %i.az
  br i1 %i.ba, label %bb.j, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit31

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i27, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !130
  tail call void %i.bc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i27, i64 noundef %i.ax), !inline_history !13
  %.pre.i.i29 = load i64, ptr %i.av, align 8, !tbaa !128 ; 2 uses
  %.pre2.i.i30 = add i64 %.pre.i.i29, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit31

_ZN3fmt3v1214basic_appenderIcEaSEc.exit31:        ; preds = %bb.i, %bb.j
  %.pre-phi.i.i28 = phi i64 [ %i.ax, %bb.i ], [ %.pre2.i.i30, %bb.j ]
  %i.bd = phi i64 [ %i.aw, %bb.i ], [ %.pre.i.i29, %bb.j ]
  %i.be = load ptr, ptr %.sroa.0.0.copyload.i27, align 8, !tbaa !127
  store i64 %.pre-phi.i.i28, ptr %i.av, align 8, !tbaa !128
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bd
  store i8 45, ptr %i.bf, align 1, !tbaa !76
  br label %.thread37

.thread37:                                        ; preds = %.thread, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit31, %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.bg, align 8, !tbaa !134
  %i.bh = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %.sroa.0.0.copyload, i64 noundef %spec.select26, i32 noundef %i.l)
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !134
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail8do_writeIcEEvRNS1_6bufferIT_EERK2tmRKSt6localecc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %3, i8 noundef signext %4) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.fmt::v12::detail::formatbuf", align 8 ; 11 uses
  %6 = alloca %"class.std::basic_ostream", align 8 ; 14 uses
  %7 = alloca %"class.std::locale", align 8       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %5, align 8, !tbaa !59
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #28
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN3fmt3v126detail9formatbufISt15basic_streambufIcSt11char_traitsIcEEEE, i64 16), ptr %5, align 8, !tbaa !59
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 64
  store ptr %0, ptr %i.c, align 8, !tbaa !134
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.d) #28
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 224
  store ptr null, ptr %i.e, align 8, !tbaa !1007
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 232
  store i8 0, ptr %i.f, align 8, !tbaa !1008
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 233
  store i8 0, ptr %i.g, align 1, !tbaa !1009
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVSo, i64 24), ptr %6, align 8, !tbaa !59
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVSo, i64 64), ptr %i.d, align 8, !tbaa !59
  %i.i = load i64, ptr getelementptr inbounds nuw inrange(0, 40) (i8, ptr @_ZTVSo, i64 0), align 8
  %i.j = getelementptr inbounds i8, ptr %6, i64 %i.i
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.j, ptr noundef nonnull %5)
          to label %_ZNSoC1EPSt15basic_streambufIcSt11char_traitsIcEE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.d) #28
  br label %.body

_ZNSoC1EPSt15basic_streambufIcSt11char_traitsIcEE.exit: ; preds = %bb.a
  %i.l = load ptr, ptr %6, align 8, !tbaa !59
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %6, i64 %i.n
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %7, ptr noundef nonnull align 8 dereferenceable(264) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %_ZNSoC1EPSt15basic_streambufIcSt11char_traitsIcEE.exit
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #28
  %i.p = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE2idE) #28
  %i.q = load ptr, ptr %2, align 8, !tbaa !269
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !274
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.p
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !276  ; 3 uses
  %.not.not.i = icmp eq ptr %i.u, null
  br i1 %.not.not.i, label %bb.d, label %_ZSt9use_facetISt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEEERKT_RKSt6locale.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

_ZSt9use_facetISt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEEERKT_RKSt6locale.exit: ; preds = %bb.c
  %i.v = load ptr, ptr %6, align 8, !tbaa !59
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %6, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 232
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !153 ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  %i.ab = zext i1 %.not.i to i8
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !59
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = invoke { ptr, i8 } %i.ae(ptr noundef nonnull align 8 dereferenceable(12) %i.u, ptr %i.aa, i8 %i.ab, ptr noundef nonnull align 8 dereferenceable(216) %i.y, i8 noundef signext 32, ptr noundef nonnull %1, i8 noundef signext %3, i8 noundef signext %4)
          to label %_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmcc.exit unwind label %bb.i, !inline_history !1006

_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmcc.exit: ; preds = %_ZSt9use_facetISt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEEERKT_RKSt6locale.exit
  %.fca.1.extract = extractvalue { ptr, i8 } %i.af, 1
  %i.ag = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.ag, label %bb.e, label %bb.k

bb.e:                                             ; preds = %_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmcc.exit
  %i.ah = call ptr @__cxa_allocate_exception(i64 16) #28 ; 4 uses
  invoke void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull @.str.258)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3fmt3v1212format_errorE, i64 16), ptr %i.ah, align 8, !tbaa !59
  invoke void @__cxa_throw(ptr nonnull %i.ah, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.m unwind label %bb.i

bb.g:                                             ; preds = %_ZNSoC1EPSt15basic_streambufIcSt11char_traitsIcEE.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.h:                                             ; preds = %bb.d
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.i:                                             ; preds = %_ZSt9use_facetISt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEEERKT_RKSt6locale.exit, %bb.f
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %bb.e
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ah) #28
  br label %bb.l

bb.k:                                             ; preds = %_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmcc.exit
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %5, align 8, !tbaa !59
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.h, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ai, %bb.g ], [ %i.aj, %bb.h ], [ %i.ak, %bb.i ], [ %i.al, %bb.j ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %.body

.body:                                            ; preds = %bb.b, %bb.l
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.l ], [ %i.k, %bb.b ]
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %5, align 8, !tbaa !59
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.m:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail20write_encoded_tm_strINS0_14basic_appenderIcEEEET_S5_NS0_17basic_string_viewIcEERKSt6locale(ptr %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v12::detail::codecvt_result", align 8 ; 7 uses
  %5 = alloca %"class.fmt::v12::detail::to_utf8", align 8 ; 14 uses
  %i.a = load atomic i8, ptr @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN3fmt3v126detail18get_classic_localeEv.exit, !prof !250

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN3fmt3v126detail18get_classic_localeEvE6locale) #28
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN3fmt3v126detail18get_classic_localeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.d, ptr @_ZZN3fmt3v126detail18get_classic_localeEvE6locale, align 8, !tbaa !252
end_hunk_1
