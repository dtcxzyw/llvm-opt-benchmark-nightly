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
  %i.n = load ptr, ptr %6, align 8, !tbaa !32     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.d
  %i.q = load i64, ptr %i.o, align 8, !tbaa !33
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.c
  %.pn = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.s = load ptr, ptr %5, align 8, !tbaa !32     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.v = load i64, ptr %i.t, align 8, !tbaa !33
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
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.c, align 8, !tbaa !377
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !373
  store i64 500, ptr %i.b, align 8, !tbaa !376
  %i.f = load double, ptr %1, align 8, !tbaa !92
  %i.g = invoke ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_(ptr nonnull %2, double noundef %i.f)
          to label %bb.b unwind label %bb.i       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !373    ; 3 uses
  %i.i = load i64, ptr %i.d, align 8, !tbaa !375  ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !82
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
  store i64 %i.i, ptr %i.a, align 8, !tbaa !83
  %i.m = icmp ugt i64 %i.i, 15
  br i1 %i.m, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.n = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc4 unwind label %bb.j    ; 2 uses

.noexc4:                                          ; preds = %.noexc.i
  store ptr %i.n, ptr %0, align 8, !tbaa !32
  %i.o = load i64, ptr %i.a, align 8, !tbaa !83
  store i64 %i.o, ptr %i.j, align 8, !tbaa !33
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc4, %bb.d
  %i.p = phi ptr [ %i.n, %.noexc4 ], [ %i.j, %bb.d ] ; 2 uses
  switch i64 %i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.h, align 1, !tbaa !33
  store i8 %i.q, ptr %i.p, align 1, !tbaa !33
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.h, i64 %i.i, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !23
  %i.t = load ptr, ptr %0, align 8, !tbaa !32
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.v = load ptr, ptr %2, align 8, !tbaa !373    ; 2 uses
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
  %i.y = load ptr, ptr %2, align 8, !tbaa !373    ; 2 uses
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
  store i32 %i.d, ptr %3, align 8, !tbaa !690
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.i, ptr %i.k, align 8, !tbaa !693
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
  %i.u = load i8, ptr %i.t, align 1, !tbaa !33    ; 2 uses
  %i.v = zext i8 %i.u to i32
  %i.w = zext i8 %i.u to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !83
  %i.z = icmp ult i64 %i.n, %i.y
  %.neg.i.i = sext i1 %i.z to i32
  %i.aa = add nsw i32 %.neg.i.i, %i.v             ; 8 uses
  %i.ab = add nsw i32 %i.aa, %i.p                 ; 4 uses
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  %i.ad = add i32 %i.ab, 3
  %i.ae = icmp ult i32 %i.ad, 20
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i32 32768, ptr %5, align 4, !tbaa !78
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 32, ptr %i.af, align 4, !tbaa !33
  %scevgep.i.i68 = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i68, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.ag, align 4, !tbaa !80
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
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !375 ; 2 uses
  %i.at = add i64 %i.as, %i.aq                    ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !376 ; 2 uses
  %i.aw = icmp ugt i64 %i.at, %i.av
  br i1 %i.aw, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i: ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !377
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.at), !inline_history !694
  %.pre.i = load i64, ptr %i.ar, align 8, !tbaa !375 ; 2 uses
  %.pre14.i = load i64, ptr %i.au, align 8, !tbaa !376 ; 2 uses
  %.pre15.i = add i64 %.pre.i, %i.aq              ; 3 uses
  %i.az = icmp ult i64 %.pre14.i, %.pre15.i
  br i1 %i.az, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit: ; preds = %bb.d, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i
  %i.ba = phi i64 [ %.pre14.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %i.av, %bb.d ]
  %i.bb = phi i64 [ %.pre.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %i.as, %bb.d ]
  %.pre-phi19.i = phi i64 [ %.pre15.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ], [ %i.at, %bb.d ] ; 2 uses
  store i64 %.pre-phi19.i, ptr %i.ar, align 8, !tbaa !375
  %i.bc = load ptr, ptr %0, align 8, !tbaa !373   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bb ; 3 uses
  %.not66 = icmp eq ptr %i.bc, null
  br i1 %.not66, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store i8 45, ptr %i.bd, align 1, !tbaa !33
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
  br i1 %i.bp, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !681

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
  store i8 %i.by, ptr %i.cb, align 1, !tbaa !33
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit

_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit: ; preds = %bb.i, %bb.j
  %i.cc = zext nneg i32 %i.bf to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %.060, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %.060, i64 1 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !33
  store i8 %i.cf, ptr %.060, align 1, !tbaa !33
  store i8 46, ptr %i.ce, align 1, !tbaa !33
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.cg = trunc i64 %i.n to i8
  %i.ch = add i8 %i.cg, 48
  %i.ci = getelementptr inbounds nuw i8, ptr %.060, i64 1
  store i8 %i.ch, ptr %.060, align 1, !tbaa !33
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
  store i8 %i.cn, ptr %i.ck, align 1, !tbaa !33
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
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !377
  tail call void %i.cw(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.pre-phi111), !inline_history !660
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread
  br i1 %i.c, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.cx = load i64, ptr %i.ar, align 8, !tbaa !375 ; 2 uses
  %i.cy = add i64 %i.cx, 1                        ; 3 uses
  %i.cz = load i64, ptr %i.au, align 8, !tbaa !376
  %i.da = icmp ugt i64 %i.cy, %i.cz
  br i1 %i.da, label %bb.p, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.p:                                             ; preds = %bb.o
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !377
  tail call void %i.dc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.cy), !inline_history !663
  %.pre.i.i = load i64, ptr %i.ar, align 8, !tbaa !375 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.o, %bb.p
  %.pre-phi.i.i = phi i64 [ %i.cy, %bb.o ], [ %.pre2.i.i, %bb.p ]
  %i.dd = phi i64 [ %i.cx, %bb.o ], [ %.pre.i.i, %bb.p ]
  %i.de = load ptr, ptr %0, align 8, !tbaa !373
  store i64 %.pre-phi.i.i, ptr %i.ar, align 8, !tbaa !375
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dd
  store i8 45, ptr %i.df, align 1, !tbaa !33
  br label %bb.q

bb.q:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  br i1 %.not, label %bb.u, label %bb.r

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
  br i1 %i.dp, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !681

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
  store i8 %i.dy, ptr %i.eb, align 1, !tbaa !33
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
  br i1 %i.er, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !695

bb.v:                                             ; preds = %._crit_edge.i.i
  %i.es = urem i64 %.029.lcssa.i.i, 10
  %i.et = trunc nuw nsw i64 %i.es to i8
  %i.eu = or disjoint i8 %i.et, 48
  %i.ev = getelementptr inbounds i8, ptr %.028.lcssa.i.i, i64 -1 ; 2 uses
  store i8 %i.eu, ptr %i.ev, align 1, !tbaa !33
  %i.ew = udiv i64 %.029.lcssa.i.i, 10
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.i.i
  %.130.i.i = phi i64 [ %i.ew, %bb.v ], [ %.029.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %.1.i.i = phi ptr [ %i.ev, %bb.v ], [ %.028.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %.1.i.i, i64 -1
  store i8 46, ptr %i.ex, align 1, !tbaa !33
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
  br i1 %i.fi, label %.lr.ph.i37.i.i, label %._crit_edge.i33.i.i, !llvm.loop !681

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
  store i8 %i.fr, ptr %i.fu, align 1, !tbaa !33
  br label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit

_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit: ; preds = %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i, %bb.x, %bb.y
  %.027.i.i = phi ptr [ %i.ec, %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i ], [ %i.ef, %bb.x ], [ %i.ef, %bb.y ]
  %i.fv = call ptr @_ZN3fmt3v126detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef nonnull %i.a, ptr noundef %.027.i.i, ptr nonnull %0) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 3 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !375 ; 2 uses
  %i.fy = add i64 %i.fx, 1                        ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !376
  %i.gb = icmp ugt i64 %i.fy, %i.ga
  br i1 %i.gb, label %bb.z, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74

bb.z:                                             ; preds = %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !377
  call void %i.gd(ptr noundef nonnull align 8 dereferenceable(32) %i.fv, i64 noundef %i.fy), !inline_history !663
  %.pre.i.i72 = load i64, ptr %i.fw, align 8, !tbaa !375 ; 2 uses
  %.pre2.i.i73 = add i64 %.pre.i.i72, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74

_ZN3fmt3v1214basic_appenderIcEaSEc.exit74:        ; preds = %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit, %bb.z
  %.pre-phi.i.i71 = phi i64 [ %i.fy, %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit ], [ %.pre2.i.i73, %bb.z ]
  %i.ge = phi i64 [ %i.fx, %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit ], [ %.pre.i.i72, %bb.z ]
  %i.gf = load ptr, ptr %i.fv, align 8, !tbaa !373
  store i64 %.pre-phi.i.i71, ptr %i.fw, align 8, !tbaa !375
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.ge
  store i8 101, ptr %i.gg, align 1, !tbaa !33
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
  store i32 %2, ptr %i.a, align 4, !tbaa !162
  store i8 %3, ptr %i.b, align 1, !tbaa !33
  store i32 %5, ptr %i.c, align 4, !tbaa !696
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !697  ; 3 uses
  %i.k = add nsw i32 %i.j, %2                     ; 4 uses
  store i32 %i.k, ptr %i.d, align 4, !tbaa !162
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !80
  %i.t = sub nsw i32 %i.s, %i.k                   ; 3 uses
  store i32 %i.t, ptr %i.e, align 4, !tbaa !162
  %i.u = load i32, ptr %4, align 4, !tbaa !78     ; 4 uses
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
  store i32 0, ptr %i.e, align 4, !tbaa !162
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
  store ptr %i.c, ptr %8, align 8, !tbaa !168
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %1, ptr %i.ab, align 8, !tbaa !699
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.a, ptr %i.ac, align 8, !tbaa !701
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %7, ptr %i.ad, align 8, !tbaa !703
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %4, ptr %i.ae, align 8, !tbaa !705
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.b, ptr %i.af, align 8, !tbaa !353
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %i.e, ptr %i.ag, align 8, !tbaa !701
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !503
  %i.aj = zext i32 %i.ai to i64
  %i.ak = call i64 @llvm.usub.sat.i64(i64 %i.aj, i64 %.0) ; 4 uses
  %i.al = lshr i32 %i.u, 3
  %i.am = and i32 %i.al, 7
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @.str.212, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !33
  %i.aq = sext i8 %i.ap to i64
  %i.ar = and i64 %i.aq, 4294967295
  %i.as = lshr i64 %i.ak, %i.ar                   ; 4 uses
  %i.at = sub nsw i64 %i.ak, %i.as
  %i.au = lshr i32 %i.u, 15
  %i.av = and i32 %i.au, 7
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = mul nuw nsw i64 %i.ak, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !375
  %i.ba = add i64 %i.az, %.0
  %i.bb = add i64 %i.ba, %i.ax                    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !376
  %i.be = icmp ugt i64 %i.bb, %i.bd
  br i1 %i.be, label %bb.g, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !377
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bb), !inline_history !707
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

end_hunk_0
