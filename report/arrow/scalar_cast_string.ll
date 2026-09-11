Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/scalar_cast_string?download=true
inline.NumInlined: 15753
inline.NumDeleted: 2714
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN5arrow8internal7ToCharsIlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:bb.a
  br i1 %i.eb, label %bb.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i15

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #32
          to label %.noexc23 unwind label %bb.al

.noexc23:                                         ; preds = %bb.ag
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i15: ; preds = %bb.af
  %i.ec = icmp eq ptr %i.dt, %i.a
  br i1 %i.ec, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i22: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i15
  %i.ed = icmp ult i64 %i.dx, 16
  tail call void @llvm.assume(i1 %i.ed)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i16: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i15
  %i.ee = load i64, ptr %i.a, align 8, !tbaa !83
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i17: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i22
  %i.ef = phi i64 [ %i.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i16 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i22 ]
  %.not.i.i.i.i18 = icmp ugt i64 %i.dw, %i.ef
  br i1 %.not.i.i.i.i18, label %bb.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i19

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.dx, i64 noundef 0, ptr noundef null, i64 noundef %i.dz)
          to label %.noexc24 unwind label %bb.al

.noexc24:                                         ; preds = %bb.ah
  %.pre.i.i21 = load ptr, ptr %0, align 8, !tbaa !138
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i19: ; preds = %.noexc24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i17
  %i.eg = phi ptr [ %i.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i17 ], [ %.pre.i.i21, %.noexc24 ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.dx ; 2 uses
  %cond.i.i.i.i20 = icmp eq i64 %i.dz, 1
  br i1 %cond.i.i.i.i20, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i19
  store i8 0, ptr %i.eh, align 1, !tbaa !83
  br label %.sink.split.i.i14

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i19
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.eh, i8 0, i64 %i.dz, i1 false)
  br label %.sink.split.i.i14

bb.ak:                                            ; preds = %._crit_edge
  %i.ei = icmp ult i64 %i.dw, %i.dx
  br i1 %i.ei, label %.sink.split.i.i14, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit25

.sink.split.i.i14:                                ; preds = %bb.ak, %bb.aj, %bb.ai
  store i64 %i.dw, ptr %i.b, align 8, !tbaa !212
  %i.ej = load ptr, ptr %0, align 8, !tbaa !138
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.dw
  store i8 0, ptr %i.ek, align 1, !tbaa !83
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit25

bb.al:                                            ; preds = %bb.ah, %bb.ag
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.al
  %.pn10 = phi { ptr, i32 } [ %i.el, %bb.al ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.em = load ptr, ptr %0, align 8, !tbaa !138   ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.a
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.am
  %i.eo = load i64, ptr %i.a, align 8, !tbaa !83
  %i.ep = add i64 %i.eo, 1
  tail call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit25: ; preds = %.sink.split.i.i14, %bb.ak
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn10
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10Time32TypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeES2_E4ExecEPNS5_13KernelContextERKNS5_8ExecSpanEPNS5_10ExecResultEEUliE_ZNSA_4ExecESC_SF_SH_EUlvE_EENS_6StatusERKNS_9ArraySpanEOT_OT0_ENKUllE_clEl(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 %.0.val.0.val.0.val, ptr %.0.val.8.val, ptr nofree readonly captures(none) %.8.val.0.val, i64 noundef %1) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.444", align 1   ; 7 uses
  %3 = alloca %"struct.std::array.440", align 1   ; 9 uses
  %4 = alloca %"struct.std::array.436", align 1   ; 9 uses
  %5 = alloca %"struct.std::array.412", align 1   ; 9 uses
  %6 = alloca %class.anon.430, align 8            ; 7 uses
  %i.a = getelementptr inbounds [4 x i8], ptr %.8.val.0.val, i64 %1
  %i.b = load i32, ptr %i.a, align 4, !tbaa !49   ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !3474
  store ptr %.0.val.8.val, ptr %6, align 8, !tbaa !326, !noalias !3474
  switch i32 %.0.val.0.val.0.val, label %bb.q [
    i32 3, label %bb.l
    i32 1, label %bb.b
    i32 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoaddr ptr %5 to i64                  ; 3 uses
  %spec.select.i.i.i.i.i = icmp ult i32 %i.b, 86400000
  br i1 %spec.select.i.i.i.i.i, label %bb.d, label %bb.c, !prof !103

bb.c:                                             ; preds = %bb.b
  call fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRiRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_10Time32TypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUliE_clEiEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 %i.b, ptr noundef nonnull readonly align 8 dereferenceable(8) %6)
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEi.exit

bb.d:                                             ; preds = %bb.b
  %i.d = zext nneg i32 %i.b to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !3475
  %.ptr26.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.e = udiv i32 %i.b, 3600000
  %.zext.i.i.i.i = zext nneg i32 %i.e to i64      ; 3 uses
  %i.f = udiv i32 %i.b, 60000
  %.zext23.i.i.i.i = zext nneg i32 %i.f to i64
  %.neg.i.i.i.i.i.i.i = mul nsw i64 %.zext.i.i.i.i, -60
  %i.g = add nsw i64 %.neg.i.i.i.i.i.i.i, %.zext23.i.i.i.i ; 2 uses
  %.neg.i7.i.i.i.i.i.i = mul nsw i64 %.zext.i.i.i.i, -3600000
  %i.h = add nsw i64 %.neg.i7.i.i.i.i.i.i, %i.d
  %.neg.i8.i.i.i.i.i.i = mul nsw i64 %i.g, -60000
  %i.i = add nsw i64 %i.h, %.neg.i8.i.i.i.i.i.i   ; 2 uses
  %.lhs.trunc24.i.i.i.i = trunc nsw i64 %i.i to i32
  %i.j = sdiv i32 %.lhs.trunc24.i.i.i.i, 1000
  %.sext.i.i.i.i = sext i32 %i.j to i64           ; 2 uses
  %.neg.i.i.i.i.i.i.i.i = mul nsw i64 %.sext.i.i.i.i, -1000
  %i.k = add nsw i64 %.neg.i.i.i.i.i.i.i.i, %i.i  ; 3 uses
  %i.l = icmp sgt i64 %i.k, 99
  br i1 %i.l, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i
  %.0.idx.i.i.i.i = phi i64 [ %.0.add.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ 12, %bb.d ] ; 2 uses
  %.08.i.i.i.i.i.i.i = phi i64 [ %i.t, %.lr.ph.i.i.i.i.i.i.i ], [ %i.k, %bb.d ] ; 3 uses
  %.0.ptr.i.i.i.i = getelementptr inbounds i8, ptr %5, i64 %.0.idx.i.i.i.i
  %i.m = urem i64 %.08.i.i.i.i.i.i.i, 100
  %i.n = shl nuw nsw i64 %i.m, 1
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !83, !noalias !3475
  %i.r = getelementptr inbounds i8, ptr %.0.ptr.i.i.i.i, i64 -1
  store i8 %i.q, ptr %i.r, align 1, !tbaa !83, !noalias !3475
  %i.s = load i8, ptr %i.o, align 1, !tbaa !83, !noalias !3475
  %.0.add.i.i.i.i = add nsw i64 %.0.idx.i.i.i.i, -2 ; 3 uses
  %.ptr27.i.i.i.i = getelementptr inbounds i8, ptr %5, i64 %.0.add.i.i.i.i
  store i8 %i.s, ptr %.ptr27.i.i.i.i, align 1, !tbaa !83, !noalias !3475
  %i.t = udiv i64 %.08.i.i.i.i.i.i.i, 100         ; 2 uses
  %i.u = icmp samesign ugt i64 %.08.i.i.i.i.i.i.i, 9999
  br i1 %i.u, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d
  %.1.idx.i.i.i.i = phi i64 [ 12, %bb.d ], [ %.0.add.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %i.k, %bb.d ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.v = icmp sgt i64 %.0.lcssa.i.i.i.i.i.i.i, 9
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.w = shl nuw nsw i64 %.0.lcssa.i.i.i.i.i.i.i, 1
  %i.x = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !83, !noalias !3475
  %.1.add.i.i.i.i = add nsw i64 %.1.idx.i.i.i.i, -1 ; 2 uses
  %.ptr25.i.i.i.i = getelementptr inbounds i8, ptr %5, i64 %.1.add.i.i.i.i
  store i8 %i.z, ptr %.ptr25.i.i.i.i, align 1, !tbaa !83, !noalias !3475
  %i.aa = load i8, ptr %i.x, align 1, !tbaa !83, !noalias !3475
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ab = trunc i64 %.0.lcssa.i.i.i.i.i.i.i to i8
  %i.ac = add i8 %i.ab, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.2.idx.i.i.i.i = phi i64 [ %.1.add.i.i.i.i, %bb.e ], [ %.1.idx.i.i.i.i, %bb.f ] ; 3 uses
  %.sink.i.i.i.i.i.i.i = phi i8 [ %i.aa, %bb.e ], [ %i.ac, %bb.f ]
  %i.ad = getelementptr i8, ptr %5, i64 %.2.idx.i.i.i.i ; 2 uses
  %.ptr.i.i.i.i = getelementptr i8, ptr %i.ad, i64 -1
  store i8 %.sink.i.i.i.i.i.i.i, ptr %.ptr.i.i.i.i, align 1, !tbaa !83, !noalias !3475
  %i.ae = icmp sgt i64 %.2.idx.i.i.i.i, 10
  br i1 %i.ae, label %.lr.ph.i.i.preheader.i.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i:                     ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i
  %i.af = add i64 %.2.idx.i.i.i.i, %i.c           ; 2 uses
  %i.ag = add i64 %i.af, -2
  %i.ah = add nuw i64 %i.c, 9
  %umin.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ah) ; 2 uses
  %i.ai = sub i64 %umin.i.i.i.i, %i.c
  %scevgep.i.i.i.i = getelementptr i8, ptr %5, i64 %i.ai ; 2 uses
  %i.aj = xor i64 %umin.i.i.i.i, -1
  %i.ak = add i64 %i.af, %i.aj
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i.i.i.i, i8 48, i64 %i.ak, i1 false), !tbaa !83, !noalias !3475
  %scevgep31.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i
  %i.al = phi ptr [ %i.ad, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i ], [ %scevgep31.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i ] ; 2 uses
  %i.am = shl nsw i64 %.sext.i.i.i.i, 1
  %i.an = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.am
  %i.ao = shl nuw nsw i64 %i.g, 1
  %i.ap = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ao
  %i.aq = shl nuw nsw i64 %.zext.i.i.i.i, 1
  %i.ar = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !83, !noalias !3475
  %i.au = getelementptr i8, ptr %i.al, i64 -9
  %i.av = load <2 x i8>, ptr %i.an, align 1, !tbaa !83, !noalias !3475
  %i.aw = load <2 x i8>, ptr %i.ap, align 1, !tbaa !83, !noalias !3475
  %i.ax = shufflevector <2 x i8> %i.aw, <2 x i8> %i.av, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison>
  %i.ay = shufflevector <8 x i8> %i.ax, <8 x i8> <i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 46>, <8 x i32> <i32 poison, i32 9, i32 2, i32 3, i32 12, i32 5, i32 6, i32 15>
  %i.az = insertelement <8 x i8> %i.ay, i8 %i.at, i64 0
  store <8 x i8> %i.az, ptr %i.au, align 1, !tbaa !83, !noalias !3475
  %i.ba = load i8, ptr %i.ar, align 1, !tbaa !83, !noalias !3475
  %i.bb = getelementptr i8, ptr %i.al, i64 -10    ; 3 uses
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !83, !noalias !3475
  %i.bc = ptrtoint ptr %.ptr26.i.i.i.i to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = trunc i64 %i.be to i32
  call void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendEPKhi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %.0.val.8.val, ptr noundef nonnull %i.bb, i32 noundef %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !3475
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEi.exit

bb.g:                                             ; preds = %bb.a
  %i.bg = ptrtoaddr ptr %4 to i64                 ; 3 uses
  %spec.select.i.i15.i.i.i = icmp sgt i32 %i.b, -1
  br i1 %spec.select.i.i15.i.i.i, label %bb.i, label %bb.h, !prof !103

bb.h:                                             ; preds = %bb.g
  call fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRiRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_10Time32TypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUliE_clEiEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 %i.b, ptr noundef nonnull readonly align 8 dereferenceable(8) %6)
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEi.exit

bb.i:                                             ; preds = %bb.g
  %i.bh = zext nneg i32 %i.b to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !3476
  %.ptr24.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 15
  %i.bi = udiv i32 %i.b, 60000000
  %.zext.i16.i.i.i = zext nneg i32 %i.bi to i64   ; 2 uses
  %.neg.i8.i.i.i17.i.i.i = mul nsw i64 %.zext.i16.i.i.i, -60000000
  %i.bj = add nsw i64 %.neg.i8.i.i.i17.i.i.i, %i.bh ; 2 uses
  %.lhs.trunc22.i.i.i.i = trunc nsw i64 %i.bj to i32
  %i.bk = sdiv i32 %.lhs.trunc22.i.i.i.i, 1000000
  %.sext.i18.i.i.i = sext i32 %i.bk to i64        ; 2 uses
  %.neg.i.i.i.i.i19.i.i.i = mul nsw i64 %.sext.i18.i.i.i, -1000000
  %i.bl = add nsw i64 %.neg.i.i.i.i.i19.i.i.i, %i.bj ; 3 uses
  %i.bm = icmp sgt i64 %i.bl, 99
  br i1 %i.bm, label %.lr.ph.i.i.i.i32.i.i.i, label %._crit_edge.i.i.i.i20.i.i.i

.lr.ph.i.i.i.i32.i.i.i:                           ; preds = %bb.i, %.lr.ph.i.i.i.i32.i.i.i
  %.0.idx.i33.i.i.i = phi i64 [ %.0.add.i36.i.i.i, %.lr.ph.i.i.i.i32.i.i.i ], [ 15, %bb.i ] ; 2 uses
  %.08.i.i.i.i34.i.i.i = phi i64 [ %i.bu, %.lr.ph.i.i.i.i32.i.i.i ], [ %i.bl, %bb.i ] ; 3 uses
  %.0.ptr.i35.i.i.i = getelementptr inbounds i8, ptr %4, i64 %.0.idx.i33.i.i.i
  %i.bn = urem i64 %.08.i.i.i.i34.i.i.i, 100
  %i.bo = shl nuw nsw i64 %i.bn, 1
  %i.bp = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !83, !noalias !3476
  %i.bs = getelementptr inbounds i8, ptr %.0.ptr.i35.i.i.i, i64 -1
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !83, !noalias !3476
  %i.bt = load i8, ptr %i.bp, align 1, !tbaa !83, !noalias !3476
  %.0.add.i36.i.i.i = add nsw i64 %.0.idx.i33.i.i.i, -2 ; 3 uses
  %.ptr25.i37.i.i.i = getelementptr inbounds i8, ptr %4, i64 %.0.add.i36.i.i.i
  store i8 %i.bt, ptr %.ptr25.i37.i.i.i, align 1, !tbaa !83, !noalias !3476
  %i.bu = udiv i64 %.08.i.i.i.i34.i.i.i, 100      ; 2 uses
  %i.bv = icmp samesign ugt i64 %.08.i.i.i.i34.i.i.i, 9999
  br i1 %i.bv, label %.lr.ph.i.i.i.i32.i.i.i, label %._crit_edge.i.i.i.i20.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i20.i.i.i:                      ; preds = %.lr.ph.i.i.i.i32.i.i.i, %bb.i
  %.1.idx.i21.i.i.i = phi i64 [ 15, %bb.i ], [ %.0.add.i36.i.i.i, %.lr.ph.i.i.i.i32.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i22.i.i.i = phi i64 [ %i.bl, %bb.i ], [ %i.bu, %.lr.ph.i.i.i.i32.i.i.i ] ; 3 uses
  %i.bw = icmp sgt i64 %.0.lcssa.i.i.i.i22.i.i.i, 9
  br i1 %i.bw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i.i20.i.i.i
  %i.bx = shl nuw nsw i64 %.0.lcssa.i.i.i.i22.i.i.i, 1
  %i.by = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !83, !noalias !3476
  %.1.add.i31.i.i.i = add nsw i64 %.1.idx.i21.i.i.i, -1 ; 2 uses
  %.ptr23.i.i.i.i = getelementptr inbounds i8, ptr %4, i64 %.1.add.i31.i.i.i
  store i8 %i.ca, ptr %.ptr23.i.i.i.i, align 1, !tbaa !83, !noalias !3476
  %i.cb = load i8, ptr %i.by, align 1, !tbaa !83, !noalias !3476
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i

bb.k:                                             ; preds = %._crit_edge.i.i.i.i20.i.i.i
  %i.cc = trunc i64 %.0.lcssa.i.i.i.i22.i.i.i to i8
  %i.cd = add i8 %i.cc, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i: ; preds = %bb.k, %bb.j
  %.2.idx.i24.i.i.i = phi i64 [ %.1.add.i31.i.i.i, %bb.j ], [ %.1.idx.i21.i.i.i, %bb.k ] ; 3 uses
  %.sink.i.i.i.i25.i.i.i = phi i8 [ %i.cb, %bb.j ], [ %i.cd, %bb.k ]
  %i.ce = getelementptr i8, ptr %4, i64 %.2.idx.i24.i.i.i ; 2 uses
  %.ptr.i26.i.i.i = getelementptr i8, ptr %i.ce, i64 -1
  store i8 %.sink.i.i.i.i25.i.i.i, ptr %.ptr.i26.i.i.i, align 1, !tbaa !83, !noalias !3476
  %i.cf = icmp sgt i64 %.2.idx.i24.i.i.i, 10
  br i1 %i.cf, label %.lr.ph.i.i.preheader.i28.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

.lr.ph.i.i.preheader.i28.i.i.i:                   ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i
  %i.cg = add i64 %.2.idx.i24.i.i.i, %i.bg        ; 2 uses
  %i.ch = add i64 %i.cg, -2
  %i.ci = add nuw i64 %i.bg, 9
  %umin.i29.i.i.i = call i64 @llvm.umin.i64(i64 %i.ch, i64 %i.ci) ; 2 uses
  %i.cj = sub i64 %umin.i29.i.i.i, %i.bg
  %scevgep.i30.i.i.i = getelementptr i8, ptr %4, i64 %i.cj ; 2 uses
  %i.ck = xor i64 %umin.i29.i.i.i, -1
  %i.cl = add i64 %i.cg, %i.ck
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i30.i.i.i, i8 48, i64 %i.cl, i1 false), !tbaa !83, !noalias !3476
  %scevgep29.i.i.i.i = getelementptr i8, ptr %scevgep.i30.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i28.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i
  %i.cm = phi ptr [ %i.ce, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i ], [ %scevgep29.i.i.i.i, %.lr.ph.i.i.preheader.i28.i.i.i ] ; 2 uses
  %i.cn = shl nsw i64 %.sext.i18.i.i.i, 1
  %i.co = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.cn
  %i.cp = shl nuw nsw i64 %.zext.i16.i.i.i, 1
  %i.cq = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.cp
  %i.cr = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 1), align 1, !tbaa !83, !noalias !3476
  %i.cs = getelementptr i8, ptr %i.cm, i64 -9
  %i.ct = load <2 x i8>, ptr %i.co, align 1, !tbaa !83, !noalias !3476
  %i.cu = load <2 x i8>, ptr %i.cq, align 1, !tbaa !83, !noalias !3476
  %i.cv = shufflevector <2 x i8> %i.cu, <2 x i8> %i.ct, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison>
  %i.cw = shufflevector <8 x i8> %i.cv, <8 x i8> <i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 46>, <8 x i32> <i32 poison, i32 9, i32 2, i32 3, i32 12, i32 5, i32 6, i32 15>
  %i.cx = insertelement <8 x i8> %i.cw, i8 %i.cr, i64 0
  store <8 x i8> %i.cx, ptr %i.cs, align 1, !tbaa !83, !noalias !3476
  %i.cy = load i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, align 1, !tbaa !83, !noalias !3476
  %i.cz = getelementptr i8, ptr %i.cm, i64 -10    ; 3 uses
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !83, !noalias !3476
  %i.da = ptrtoint ptr %.ptr24.i.i.i.i to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = trunc i64 %i.dc to i32
  call void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendEPKhi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %.0.val.8.val, ptr noundef nonnull %i.cz, i32 noundef %i.dd)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !3476
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEi.exit

bb.l:                                             ; preds = %bb.a
  %i.de = ptrtoaddr ptr %3 to i64                 ; 3 uses
  %spec.select.i.i38.i.i.i = icmp sgt i32 %i.b, -1
  br i1 %spec.select.i.i38.i.i.i, label %bb.n, label %bb.m, !prof !103

bb.m:                                             ; preds = %bb.l
  call fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRiRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_10Time32TypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUliE_clEiEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 %i.b, ptr noundef nonnull readonly align 8 dereferenceable(8) %6)
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEi.exit

bb.n:                                             ; preds = %bb.l
  %i.df = zext nneg i32 %i.b to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !3477
  %.ptr23.i39.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.dg = udiv i32 %i.b, 1000000000
  %.zext.i40.i.i.i = zext nneg i32 %i.dg to i64   ; 2 uses
  %.neg.i.i.i.i.i41.i.i.i = mul nsw i64 %.zext.i40.i.i.i, -1000000000
  %i.dh = add nsw i64 %.neg.i.i.i.i.i41.i.i.i, %i.df ; 3 uses
  %i.di = icmp sgt i64 %i.dh, 99
  br i1 %i.di, label %.lr.ph.i.i.i.i54.i.i.i, label %._crit_edge.i.i.i.i42.i.i.i

.lr.ph.i.i.i.i54.i.i.i:                           ; preds = %bb.n, %.lr.ph.i.i.i.i54.i.i.i
  %.0.idx.i55.i.i.i = phi i64 [ %.0.add.i58.i.i.i, %.lr.ph.i.i.i.i54.i.i.i ], [ 18, %bb.n ] ; 2 uses
  %.08.i.i.i.i56.i.i.i = phi i64 [ %i.dq, %.lr.ph.i.i.i.i54.i.i.i ], [ %i.dh, %bb.n ] ; 3 uses
  %.0.ptr.i57.i.i.i = getelementptr inbounds i8, ptr %3, i64 %.0.idx.i55.i.i.i
  %i.dj = urem i64 %.08.i.i.i.i56.i.i.i, 100
  %i.dk = shl nuw nsw i64 %i.dj, 1
  %i.dl = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.dk ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !83, !noalias !3477
  %i.do = getelementptr inbounds i8, ptr %.0.ptr.i57.i.i.i, i64 -1
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !83, !noalias !3477
  %i.dp = load i8, ptr %i.dl, align 1, !tbaa !83, !noalias !3477
  %.0.add.i58.i.i.i = add nsw i64 %.0.idx.i55.i.i.i, -2 ; 3 uses
  %.ptr24.i59.i.i.i = getelementptr inbounds i8, ptr %3, i64 %.0.add.i58.i.i.i
  store i8 %i.dp, ptr %.ptr24.i59.i.i.i, align 1, !tbaa !83, !noalias !3477
  %i.dq = udiv i64 %.08.i.i.i.i56.i.i.i, 100      ; 2 uses
  %i.dr = icmp samesign ugt i64 %.08.i.i.i.i56.i.i.i, 9999
  br i1 %i.dr, label %.lr.ph.i.i.i.i54.i.i.i, label %._crit_edge.i.i.i.i42.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i42.i.i.i:                      ; preds = %.lr.ph.i.i.i.i54.i.i.i, %bb.n
  %.1.idx.i43.i.i.i = phi i64 [ 18, %bb.n ], [ %.0.add.i58.i.i.i, %.lr.ph.i.i.i.i54.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i44.i.i.i = phi i64 [ %i.dh, %bb.n ], [ %i.dq, %.lr.ph.i.i.i.i54.i.i.i ] ; 3 uses
  %i.ds = icmp sgt i64 %.0.lcssa.i.i.i.i44.i.i.i, 9
  br i1 %i.ds, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i.i.i42.i.i.i
  %i.dt = shl nuw nsw i64 %.0.lcssa.i.i.i.i44.i.i.i, 1
  %i.du = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.dt ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !83, !noalias !3477
  %.1.add.i53.i.i.i = add nsw i64 %.1.idx.i43.i.i.i, -1 ; 2 uses
  %.ptr22.i.i.i.i = getelementptr inbounds i8, ptr %3, i64 %.1.add.i53.i.i.i
  store i8 %i.dw, ptr %.ptr22.i.i.i.i, align 1, !tbaa !83, !noalias !3477
  %i.dx = load i8, ptr %i.du, align 1, !tbaa !83, !noalias !3477
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i45.i.i.i

bb.p:                                             ; preds = %._crit_edge.i.i.i.i42.i.i.i
  %i.dy = trunc i64 %.0.lcssa.i.i.i.i44.i.i.i to i8
  %i.dz = add i8 %i.dy, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i45.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i45.i.i.i: ; preds = %bb.p, %bb.o
  %.2.idx.i46.i.i.i = phi i64 [ %.1.add.i53.i.i.i, %bb.o ], [ %.1.idx.i43.i.i.i, %bb.p ] ; 3 uses
  %.sink.i.i.i.i47.i.i.i = phi i8 [ %i.dx, %bb.o ], [ %i.dz, %bb.p ]
  %i.ea = getelementptr i8, ptr %3, i64 %.2.idx.i46.i.i.i ; 2 uses
  %.ptr.i48.i.i.i = getelementptr i8, ptr %i.ea, i64 -1
  store i8 %.sink.i.i.i.i47.i.i.i, ptr %.ptr.i48.i.i.i, align 1, !tbaa !83, !noalias !3477
  %i.eb = icmp sgt i64 %.2.idx.i46.i.i.i, 10
  br i1 %i.eb, label %.lr.ph.i.i.preheader.i50.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

.lr.ph.i.i.preheader.i50.i.i.i:                   ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i45.i.i.i
  %i.ec = add i64 %.2.idx.i46.i.i.i, %i.de        ; 2 uses
  %i.ed = add i64 %i.ec, -2
  %i.ee = add nuw i64 %i.de, 9
  %umin.i51.i.i.i = call i64 @llvm.umin.i64(i64 %i.ed, i64 %i.ee) ; 2 uses
  %i.ef = sub i64 %umin.i51.i.i.i, %i.de
  %scevgep.i52.i.i.i = getelementptr i8, ptr %3, i64 %i.ef ; 2 uses
  %i.eg = xor i64 %umin.i51.i.i.i, -1
  %i.eh = add i64 %i.ec, %i.eg
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i52.i.i.i, i8 48, i64 %i.eh, i1 false), !tbaa !83, !noalias !3477
  %scevgep28.i.i.i.i = getelementptr i8, ptr %scevgep.i52.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i50.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i45.i.i.i
  %i.ei = phi ptr [ %i.ea, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i45.i.i.i ], [ %scevgep28.i.i.i.i, %.lr.ph.i.i.preheader.i50.i.i.i ] ; 2 uses
  %i.ej = getelementptr i8, ptr %i.ei, i64 -2
  store i8 46, ptr %i.ej, align 1, !tbaa !83, !noalias !3477
  %i.ek = shl nuw nsw i64 %.zext.i40.i.i.i, 1
  %i.el = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ek
  %i.em = getelementptr i8, ptr %i.ei, i64 -10    ; 3 uses
  %i.en = load <2 x i8>, ptr %i.el, align 1, !tbaa !83, !noalias !3477
  %i.eo = load <2 x i8>, ptr @_ZN5arrow8internal6detail11digit_pairsE, align 1, !tbaa !83, !noalias !3477
  %i.ep = shufflevector <2 x i8> %i.eo, <2 x i8> %i.en, <8 x i32> <i32 0, i32 1, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3>
  %i.eq = shufflevector <8 x i8> %i.ep, <8 x i8> <i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison>, <8 x i32> <i32 0, i32 1, i32 10, i32 3, i32 4, i32 13, i32 6, i32 7>
  store <8 x i8> %i.eq, ptr %i.em, align 1, !tbaa !83, !noalias !3477
  %i.er = ptrtoint ptr %.ptr23.i39.i.i.i to i64
  %i.es = ptrtoint ptr %i.em to i64
  %i.et = sub i64 %i.er, %i.es
  %i.eu = trunc i64 %i.et to i32
  call void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendEPKhi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %.0.val.8.val, ptr noundef nonnull %i.em, i32 noundef %i.eu)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !3477
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEi.exit

bb.q:                                             ; preds = %bb.a
  %spec.select.i.i60.i.i.i = icmp ult i32 %i.b, 86400
  br i1 %spec.select.i.i60.i.i.i, label %bb.s, label %bb.r, !prof !103

bb.r:                                             ; preds = %bb.q
  call fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRiRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_10Time32TypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUliE_clEiEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 %i.b, ptr noundef nonnull readonly align 8 dereferenceable(8) %6)
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEi.exit

bb.s:                                             ; preds = %bb.q
  %i.ev = zext nneg i32 %i.b to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !3478
  %i.ew = udiv i32 %i.b, 3600
  %.zext.i61.i.i.i = zext nneg i32 %i.ew to i64   ; 3 uses
  %i.ex = udiv i32 %i.b, 60
  %.zext16.i.i.i.i = zext nneg i32 %i.ex to i64
  %.neg.i.i.i.i62.i.i.i = mul nsw i64 %.zext.i61.i.i.i, -60
  %i.ey = add nsw i64 %.neg.i.i.i.i62.i.i.i, %.zext16.i.i.i.i ; 2 uses
  %.neg.i7.i.i.i63.i.i.i = mul nsw i64 %.zext.i61.i.i.i, -3600
  %i.ez = add nsw i64 %.neg.i7.i.i.i63.i.i.i, %i.ev
  %.neg.i8.i.i.i64.i.i.i = mul nsw i64 %i.ey, -60
  %i.fa = add nsw i64 %i.ez, %.neg.i8.i.i.i64.i.i.i
  %i.fb = shl nuw nsw i64 %i.fa, 1
  %i.fc = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fb ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !83, !noalias !3478
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !83, !noalias !3478
  %i.fg = load i8, ptr %i.fc, align 1, !tbaa !83, !noalias !3478
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %i.fg, ptr %i.fh, align 1, !tbaa !83, !noalias !3478
  %i.fi = shl nuw nsw i64 %i.ey, 1
  %i.fj = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.fl = load <2 x i8>, ptr %i.fj, align 1, !tbaa !83, !noalias !3478
  %i.fm = shufflevector <2 x i8> %i.fl, <2 x i8> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.fn = shufflevector <4 x i8> <i8 58, i8 poison, i8 poison, i8 58>, <4 x i8> %i.fm, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i8> %i.fn, ptr %i.fk, align 1, !tbaa !83, !noalias !3478
  %i.fo = shl nuw nsw i64 %.zext.i61.i.i.i, 1
  %i.fp = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fo ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 1
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !83, !noalias !3478
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.fr, ptr %i.fs, align 1, !tbaa !83, !noalias !3478
  %i.ft = load i8, ptr %i.fp, align 1, !tbaa !83, !noalias !3478
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  store i8 %i.ft, ptr %i.fu, align 1, !tbaa !83, !noalias !3478
  call void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendEPKhi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %.0.val.8.val, ptr noundef nonnull %i.fu, i32 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !3478
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEi.exit

_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEi.exit: ; preds = %bb.c, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i, %bb.h, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i, %bb.m, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !3474
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRiRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_10Time32TypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUliE_clEiEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN5arrow8internal7ToCharsIiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i32 noundef %.0.val)
  %i.a = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.27, i64 noundef 21)
          to label %.noexc unwind label %bb.g     ; 8 uses

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 13 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !211, !alias.scope !3483
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !138  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread, label %bb.b

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread: ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !212  ; 5 uses
  %i.h = icmp samesign ult i64 %i.g, 16
  call void @llvm.assume(i1 %i.h)
  %i.i = add nuw nsw i64 %i.g, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.i, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.g, ptr %i.k, align 8, !tbaa !212, !alias.scope !3483
  store ptr %i.d, ptr %i.a, align 8, !tbaa !138
  store i64 0, ptr %i.j, align 8, !tbaa !212
  store i8 0, ptr %i.d, align 8, !tbaa !83
  %i.l = add nuw nsw i64 %i.g, 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.b:                                             ; preds = %.noexc
  store ptr %i.c, ptr %3, align 8, !tbaa !138, !alias.scope !3483
  %i.m = load i64, ptr %i.d, align 8, !tbaa !83
  store i64 %i.m, ptr %i.b, align 8, !tbaa !83, !alias.scope !3483
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !212 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %.pre.i, ptr %i.o, align 8, !tbaa !212, !alias.scope !3483
  store ptr %i.d, ptr %i.a, align 8, !tbaa !138
  store i64 0, ptr %i.n, align 8, !tbaa !212
  store i8 0, ptr %i.d, align 8, !tbaa !83
  call void @llvm.experimental.noalias.scope.decl(metadata !3484)
  %i.p = icmp eq i64 %.pre.i, 9223372036854775807
  br i1 %i.p, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #32
          to label %.noexc10 unwind label %bb.h

.noexc10:                                         ; preds = %bb.c
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.q = add nsw i64 %.pre.i, 1                   ; 2 uses
  %i.r = icmp eq ptr %i.c, %i.b
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.s = phi i64 [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ]
  %i.t = phi ptr [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ]
  %i.u = phi i64 [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ] ; 2 uses
  %i.v = phi ptr [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ]
  %i.w = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.w)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.x = load i64, ptr %i.b, align 8, !tbaa !83, !noalias !3484
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.y = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 3 uses
  %i.z = phi ptr [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.aa = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 2 uses
  %i.ab = phi ptr [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 4 uses
  %i.ac = phi i64 [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.y, %i.ac
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  store i8 62, ptr %i.ad, align 1, !tbaa !83, !noalias !3484
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.aa, i64 noundef 0, ptr noundef nonnull @.str.28, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.e, %bb.d
  store i64 %i.y, ptr %i.ab, align 8, !tbaa !212, !noalias !3484
  %i.ae = load ptr, ptr %3, align 8, !tbaa !138, !noalias !3484
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.y
  store i8 0, ptr %i.af, align 1, !tbaa !83, !noalias !3484
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.ag, ptr %2, align 8, !tbaa !211, !alias.scope !3484
  %i.ah = load ptr, ptr %3, align 8, !tbaa !138, !noalias !3484 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, %i.b
  br i1 %i.ai, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.aj = load i64, ptr %i.ab, align 8, !tbaa !212, !noalias !3484 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %i.al, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.ah, ptr %2, align 8, !tbaa !138, !alias.scope !3484
  %i.am = load i64, ptr %i.b, align 8, !tbaa !83, !noalias !3484
  store i64 %i.am, ptr %i.ag, align 8, !tbaa !83, !alias.scope !3484
  %.pre.i9 = load i64, ptr %i.ab, align 8, !tbaa !212, !noalias !3484
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, %bb.f
  %i.an = phi ptr [ %i.ag, %bb.f ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ]
  %i.ao = phi i64 [ %i.aj, %bb.f ], [ %.pre.i9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !212, !alias.scope !3484
  store ptr %i.b, ptr %3, align 8, !tbaa !138, !noalias !3484
  store i64 0, ptr %i.ab, align 8, !tbaa !212, !noalias !3484
  store i8 0, ptr %i.b, align 8, !tbaa !83, !noalias !3484
  %i.aq = load ptr, ptr %4, align 8, !tbaa !138   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !83
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #30
  %.pre = load ptr, ptr %2, align 8, !tbaa !138
  %.pre1 = load i64, ptr %i.ap, align 8, !tbaa !212
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %i.av = phi i64 [ %.pre1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.aw = phi ptr [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %.val = load ptr, ptr %1, align 8, !tbaa !3486
  %i.ax = trunc i64 %i.av to i32
  invoke void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendEPKhi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %.val, ptr noundef %i.aw, i32 noundef %i.ax)
          to label %_ZZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEiENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit unwind label %bb.i

_ZZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEiENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.ay = load ptr, ptr %2, align 8, !tbaa !138   ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ag
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEiENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit
  %i.ba = load i64, ptr %i.ag, align 8, !tbaa !83
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEiENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.g:                                             ; preds = %bb.a
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.h:                                             ; preds = %bb.e, %bb.c
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %3, align 8, !tbaa !138   ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.b
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.h
  %i.bg = load i64, ptr %i.b, align 8, !tbaa !83
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.g ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %i.bd, %bb.h ]
  %i.bi = load ptr, ptr %4, align 8, !tbaa !138   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !83
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %2, align 8, !tbaa !138   ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.ag
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.i
  %i.bq = load i64, ptr %i.ag, align 8, !tbaa !83
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %.pn6 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.bn, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn6
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10Time64TypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeES2_E4ExecEPNS5_13KernelContextERKNS5_8ExecSpanEPNS5_10ExecResultEEUllE_ZNSA_4ExecESC_SF_SH_EUlvE_EENS_6StatusERKNS_9ArraySpanEOT_OT0_ENKUllE_clEl(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 %.0.val.0.val.0.val, ptr %.0.val.8.val, ptr nofree readonly captures(none) %.8.val.0.val, i64 noundef %1) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.444", align 1   ; 7 uses
  %3 = alloca %"struct.std::array.440", align 1   ; 9 uses
  %4 = alloca %"struct.std::array.436", align 1   ; 9 uses
  %5 = alloca %"struct.std::array.412", align 1   ; 9 uses
  %6 = alloca %class.anon.452, align 8            ; 7 uses
  %i.a = getelementptr inbounds [8 x i8], ptr %.8.val.0.val, i64 %1
  %i.b = load i64, ptr %i.a, align 8, !tbaa !195  ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !3501
  store ptr %.0.val.8.val, ptr %6, align 8, !tbaa !326, !noalias !3501
  switch i32 %.0.val.0.val.0.val, label %bb.q [
    i32 3, label %bb.l
    i32 1, label %bb.b
    i32 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoaddr ptr %5 to i64                  ; 3 uses
  %spec.select.i.i.i.i.i = icmp ult i64 %i.b, 86400000
  br i1 %spec.select.i.i.i.i.i, label %bb.d, label %bb.c, !prof !103

bb.c:                                             ; preds = %bb.b
  call fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_10Time64TypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %i.b, ptr noundef nonnull readonly align 8 dereferenceable(8) %6)
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !3502
  %.ptr26.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.lhs.trunc.i.i.i.i = trunc nuw nsw i64 %i.b to i32 ; 2 uses
  %i.d = udiv i32 %.lhs.trunc.i.i.i.i, 3600000
  %.zext.i.i.i.i = zext nneg i32 %i.d to i64      ; 3 uses
  %i.e = udiv i32 %.lhs.trunc.i.i.i.i, 60000
  %.zext23.i.i.i.i = zext nneg i32 %i.e to i64
  %.neg.i.i.i.i.i.i.i = mul nsw i64 %.zext.i.i.i.i, -60
  %i.f = add nsw i64 %.neg.i.i.i.i.i.i.i, %.zext23.i.i.i.i ; 2 uses
  %.neg.i7.i.i.i.i.i.i = mul nsw i64 %.zext.i.i.i.i, -3600000
  %i.g = add nsw i64 %.neg.i7.i.i.i.i.i.i, %i.b
  %.neg.i8.i.i.i.i.i.i = mul nsw i64 %i.f, -60000
  %i.h = add nsw i64 %i.g, %.neg.i8.i.i.i.i.i.i   ; 2 uses
  %.lhs.trunc24.i.i.i.i = trunc nsw i64 %i.h to i32
  %i.i = sdiv i32 %.lhs.trunc24.i.i.i.i, 1000
  %.sext.i.i.i.i = sext i32 %i.i to i64           ; 2 uses
  %.neg.i.i.i.i.i.i.i.i = mul nsw i64 %.sext.i.i.i.i, -1000
  %i.j = add nsw i64 %.neg.i.i.i.i.i.i.i.i, %i.h  ; 3 uses
  %i.k = icmp sgt i64 %i.j, 99
  br i1 %i.k, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i
  %.0.idx.i.i.i.i = phi i64 [ %.0.add.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ 12, %bb.d ] ; 2 uses
  %.08.i.i.i.i.i.i.i = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.i.i ], [ %i.j, %bb.d ] ; 3 uses
  %.0.ptr.i.i.i.i = getelementptr inbounds i8, ptr %5, i64 %.0.idx.i.i.i.i
  %i.l = urem i64 %.08.i.i.i.i.i.i.i, 100
  %i.m = shl nuw nsw i64 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !83, !noalias !3502
  %i.q = getelementptr inbounds i8, ptr %.0.ptr.i.i.i.i, i64 -1
  store i8 %i.p, ptr %i.q, align 1, !tbaa !83, !noalias !3502
  %i.r = load i8, ptr %i.n, align 1, !tbaa !83, !noalias !3502
  %.0.add.i.i.i.i = add nsw i64 %.0.idx.i.i.i.i, -2 ; 3 uses
  %.ptr27.i.i.i.i = getelementptr inbounds i8, ptr %5, i64 %.0.add.i.i.i.i
  store i8 %i.r, ptr %.ptr27.i.i.i.i, align 1, !tbaa !83, !noalias !3502
  %i.s = udiv i64 %.08.i.i.i.i.i.i.i, 100         ; 2 uses
  %i.t = icmp samesign ugt i64 %.08.i.i.i.i.i.i.i, 9999
  br i1 %i.t, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d
  %.1.idx.i.i.i.i = phi i64 [ 12, %bb.d ], [ %.0.add.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %i.j, %bb.d ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.u = icmp sgt i64 %.0.lcssa.i.i.i.i.i.i.i, 9
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.v = shl nuw nsw i64 %.0.lcssa.i.i.i.i.i.i.i, 1
  %i.w = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !83, !noalias !3502
  %.1.add.i.i.i.i = add nsw i64 %.1.idx.i.i.i.i, -1 ; 2 uses
  %.ptr25.i.i.i.i = getelementptr inbounds i8, ptr %5, i64 %.1.add.i.i.i.i
  store i8 %i.y, ptr %.ptr25.i.i.i.i, align 1, !tbaa !83, !noalias !3502
  %i.z = load i8, ptr %i.w, align 1, !tbaa !83, !noalias !3502
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.aa = trunc i64 %.0.lcssa.i.i.i.i.i.i.i to i8
  %i.ab = add i8 %i.aa, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.2.idx.i.i.i.i = phi i64 [ %.1.add.i.i.i.i, %bb.e ], [ %.1.idx.i.i.i.i, %bb.f ] ; 3 uses
  %.sink.i.i.i.i.i.i.i = phi i8 [ %i.z, %bb.e ], [ %i.ab, %bb.f ]
  %i.ac = getelementptr i8, ptr %5, i64 %.2.idx.i.i.i.i ; 2 uses
  %.ptr.i.i.i.i = getelementptr i8, ptr %i.ac, i64 -1
  store i8 %.sink.i.i.i.i.i.i.i, ptr %.ptr.i.i.i.i, align 1, !tbaa !83, !noalias !3502
  %i.ad = icmp sgt i64 %.2.idx.i.i.i.i, 10
  br i1 %i.ad, label %.lr.ph.i.i.preheader.i.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i:                     ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i
  %i.ae = add i64 %.2.idx.i.i.i.i, %i.c           ; 2 uses
  %i.af = add i64 %i.ae, -2
  %i.ag = add nuw i64 %i.c, 9
  %umin.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.af, i64 %i.ag) ; 2 uses
  %i.ah = sub i64 %umin.i.i.i.i, %i.c
  %scevgep.i.i.i.i = getelementptr i8, ptr %5, i64 %i.ah ; 2 uses
  %i.ai = xor i64 %umin.i.i.i.i, -1
  %i.aj = add i64 %i.ae, %i.ai
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i.i.i.i, i8 48, i64 %i.aj, i1 false), !tbaa !83, !noalias !3502
  %scevgep31.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i
  %i.ak = phi ptr [ %i.ac, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i ], [ %scevgep31.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i ] ; 2 uses
  %i.al = shl nsw i64 %.sext.i.i.i.i, 1
  %i.am = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.al
  %i.an = shl nuw nsw i64 %i.f, 1
  %i.ao = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.an
  %i.ap = shl nuw nsw i64 %.zext.i.i.i.i, 1
  %i.aq = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !83, !noalias !3502
  %i.at = getelementptr i8, ptr %i.ak, i64 -9
  %i.au = load <2 x i8>, ptr %i.am, align 1, !tbaa !83, !noalias !3502
  %i.av = load <2 x i8>, ptr %i.ao, align 1, !tbaa !83, !noalias !3502
  %i.aw = shufflevector <2 x i8> %i.av, <2 x i8> %i.au, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison>
  %i.ax = shufflevector <8 x i8> %i.aw, <8 x i8> <i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 46>, <8 x i32> <i32 poison, i32 9, i32 2, i32 3, i32 12, i32 5, i32 6, i32 15>
  %i.ay = insertelement <8 x i8> %i.ax, i8 %i.as, i64 0
  store <8 x i8> %i.ay, ptr %i.at, align 1, !tbaa !83, !noalias !3502
  %i.az = load i8, ptr %i.aq, align 1, !tbaa !83, !noalias !3502
  %i.ba = getelementptr i8, ptr %i.ak, i64 -10    ; 3 uses
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !83, !noalias !3502
  %i.bb = ptrtoint ptr %.ptr26.i.i.i.i to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = trunc i64 %i.bd to i32
  call void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendEPKhi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %.0.val.8.val, ptr noundef nonnull %i.ba, i32 noundef %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !3502
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

bb.g:                                             ; preds = %bb.a
  %i.bf = ptrtoaddr ptr %4 to i64                 ; 3 uses
  %spec.select.i.i15.i.i.i = icmp ult i64 %i.b, 86400000000
  br i1 %spec.select.i.i15.i.i.i, label %bb.i, label %bb.h, !prof !103

bb.h:                                             ; preds = %bb.g
  call fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_10Time64TypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %i.b, ptr noundef nonnull readonly align 8 dereferenceable(8) %6)
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !3503
  %.ptr23.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 15
  %i.bg = udiv i64 %i.b, 3600000000               ; 3 uses
  %i.bh = udiv i64 %i.b, 60000000
  %.neg.i.i.i.i16.i.i.i = mul nsw i64 %i.bg, -60
  %i.bi = add nsw i64 %.neg.i.i.i.i16.i.i.i, %i.bh ; 2 uses
  %.neg.i7.i.i.i17.i.i.i = mul nsw i64 %i.bg, -3600000000
  %i.bj = add nsw i64 %.neg.i7.i.i.i17.i.i.i, %i.b
  %.neg.i8.i.i.i18.i.i.i = mul nsw i64 %i.bi, -60000000
  %i.bk = add nsw i64 %i.bj, %.neg.i8.i.i.i18.i.i.i ; 2 uses
  %i.bl = sdiv i64 %i.bk, 1000000                 ; 2 uses
  %.neg.i.i.i.i.i19.i.i.i = mul nsw i64 %i.bl, -1000000
  %i.bm = add nsw i64 %.neg.i.i.i.i.i19.i.i.i, %i.bk ; 3 uses
  %i.bn = icmp sgt i64 %i.bm, 99
  br i1 %i.bn, label %.lr.ph.i.i.i.i32.i.i.i, label %._crit_edge.i.i.i.i20.i.i.i

.lr.ph.i.i.i.i32.i.i.i:                           ; preds = %bb.i, %.lr.ph.i.i.i.i32.i.i.i
  %.0.idx.i33.i.i.i = phi i64 [ %.0.add.i36.i.i.i, %.lr.ph.i.i.i.i32.i.i.i ], [ 15, %bb.i ] ; 2 uses
  %.08.i.i.i.i34.i.i.i = phi i64 [ %i.bv, %.lr.ph.i.i.i.i32.i.i.i ], [ %i.bm, %bb.i ] ; 3 uses
  %.0.ptr.i35.i.i.i = getelementptr inbounds i8, ptr %4, i64 %.0.idx.i33.i.i.i
  %i.bo = urem i64 %.08.i.i.i.i34.i.i.i, 100
  %i.bp = shl nuw nsw i64 %i.bo, 1
  %i.bq = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !83, !noalias !3503
  %i.bt = getelementptr inbounds i8, ptr %.0.ptr.i35.i.i.i, i64 -1
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !83, !noalias !3503
  %i.bu = load i8, ptr %i.bq, align 1, !tbaa !83, !noalias !3503
  %.0.add.i36.i.i.i = add nsw i64 %.0.idx.i33.i.i.i, -2 ; 3 uses
  %.ptr24.i.i.i.i = getelementptr inbounds i8, ptr %4, i64 %.0.add.i36.i.i.i
  store i8 %i.bu, ptr %.ptr24.i.i.i.i, align 1, !tbaa !83, !noalias !3503
  %i.bv = udiv i64 %.08.i.i.i.i34.i.i.i, 100      ; 2 uses
  %i.bw = icmp samesign ugt i64 %.08.i.i.i.i34.i.i.i, 9999
  br i1 %i.bw, label %.lr.ph.i.i.i.i32.i.i.i, label %._crit_edge.i.i.i.i20.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i20.i.i.i:                      ; preds = %.lr.ph.i.i.i.i32.i.i.i, %bb.i
  %.1.idx.i21.i.i.i = phi i64 [ 15, %bb.i ], [ %.0.add.i36.i.i.i, %.lr.ph.i.i.i.i32.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i22.i.i.i = phi i64 [ %i.bm, %bb.i ], [ %i.bv, %.lr.ph.i.i.i.i32.i.i.i ] ; 3 uses
  %i.bx = icmp sgt i64 %.0.lcssa.i.i.i.i22.i.i.i, 9
  br i1 %i.bx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i.i20.i.i.i
  %i.by = shl nuw nsw i64 %.0.lcssa.i.i.i.i22.i.i.i, 1
  %i.bz = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.by ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !83, !noalias !3503
  %.1.add.i31.i.i.i = add nsw i64 %.1.idx.i21.i.i.i, -1 ; 2 uses
  %.ptr22.i.i.i.i = getelementptr inbounds i8, ptr %4, i64 %.1.add.i31.i.i.i
  store i8 %i.cb, ptr %.ptr22.i.i.i.i, align 1, !tbaa !83, !noalias !3503
  %i.cc = load i8, ptr %i.bz, align 1, !tbaa !83, !noalias !3503
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i

bb.k:                                             ; preds = %._crit_edge.i.i.i.i20.i.i.i
  %i.cd = trunc i64 %.0.lcssa.i.i.i.i22.i.i.i to i8
  %i.ce = add i8 %i.cd, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i: ; preds = %bb.k, %bb.j
  %.2.idx.i24.i.i.i = phi i64 [ %.1.add.i31.i.i.i, %bb.j ], [ %.1.idx.i21.i.i.i, %bb.k ] ; 3 uses
  %.sink.i.i.i.i25.i.i.i = phi i8 [ %i.cc, %bb.j ], [ %i.ce, %bb.k ]
  %i.cf = getelementptr i8, ptr %4, i64 %.2.idx.i24.i.i.i ; 2 uses
  %.ptr.i26.i.i.i = getelementptr i8, ptr %i.cf, i64 -1
  store i8 %.sink.i.i.i.i25.i.i.i, ptr %.ptr.i26.i.i.i, align 1, !tbaa !83, !noalias !3503
  %i.cg = icmp sgt i64 %.2.idx.i24.i.i.i, 10
  br i1 %i.cg, label %.lr.ph.i.i.preheader.i28.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

.lr.ph.i.i.preheader.i28.i.i.i:                   ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i
  %i.ch = add i64 %.2.idx.i24.i.i.i, %i.bf        ; 2 uses
  %i.ci = add i64 %i.ch, -2
  %i.cj = add nuw i64 %i.bf, 9
  %umin.i29.i.i.i = call i64 @llvm.umin.i64(i64 %i.ci, i64 %i.cj) ; 2 uses
  %i.ck = sub i64 %umin.i29.i.i.i, %i.bf
  %scevgep.i30.i.i.i = getelementptr i8, ptr %4, i64 %i.ck ; 2 uses
  %i.cl = xor i64 %umin.i29.i.i.i, -1
  %i.cm = add i64 %i.ch, %i.cl
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i30.i.i.i, i8 48, i64 %i.cm, i1 false), !tbaa !83, !noalias !3503
  %scevgep28.i.i.i.i = getelementptr i8, ptr %scevgep.i30.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i28.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i
  %i.cn = phi ptr [ %i.cf, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i ], [ %scevgep28.i.i.i.i, %.lr.ph.i.i.preheader.i28.i.i.i ] ; 2 uses
  %i.co = shl nsw i64 %i.bl, 1
  %i.cp = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.co
  %i.cq = shl nsw i64 %i.bi, 1
  %i.cr = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.cq
  %i.cs = shl nuw nsw i64 %i.bg, 1
  %i.ct = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !83, !noalias !3503
  %i.cw = getelementptr i8, ptr %i.cn, i64 -9
  %i.cx = load <2 x i8>, ptr %i.cp, align 1, !tbaa !83, !noalias !3503
  %i.cy = load <2 x i8>, ptr %i.cr, align 1, !tbaa !83, !noalias !3503
  %i.cz = shufflevector <2 x i8> %i.cy, <2 x i8> %i.cx, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison>
  %i.da = shufflevector <8 x i8> %i.cz, <8 x i8> <i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 46>, <8 x i32> <i32 poison, i32 9, i32 2, i32 3, i32 12, i32 5, i32 6, i32 15>
  %i.db = insertelement <8 x i8> %i.da, i8 %i.cv, i64 0
  store <8 x i8> %i.db, ptr %i.cw, align 1, !tbaa !83, !noalias !3503
  %i.dc = load i8, ptr %i.ct, align 1, !tbaa !83, !noalias !3503
  %i.dd = getelementptr i8, ptr %i.cn, i64 -10    ; 3 uses
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !83, !noalias !3503
  %i.de = ptrtoint ptr %.ptr23.i.i.i.i to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = trunc i64 %i.dg to i32
  call void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendEPKhi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %.0.val.8.val, ptr noundef nonnull %i.dd, i32 noundef %i.dh)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !3503
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

bb.l:                                             ; preds = %bb.a
  %i.di = ptrtoaddr ptr %3 to i64                 ; 3 uses
  %spec.select.i.i37.i.i.i = icmp ult i64 %i.b, 86400000000000
  br i1 %spec.select.i.i37.i.i.i, label %bb.n, label %bb.m, !prof !103

bb.m:                                             ; preds = %bb.l
  call fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_10Time64TypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %i.b, ptr noundef nonnull readonly align 8 dereferenceable(8) %6)
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !3504
  %.ptr23.i38.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.dj = udiv i64 %i.b, 3600000000000            ; 3 uses
  %i.dk = udiv i64 %i.b, 60000000000
  %.neg.i.i.i.i39.i.i.i = mul nsw i64 %i.dj, -60
  %i.dl = add nsw i64 %.neg.i.i.i.i39.i.i.i, %i.dk ; 2 uses
  %.neg.i7.i.i.i40.i.i.i = mul nsw i64 %i.dj, -3600000000000
  %i.dm = add nsw i64 %.neg.i7.i.i.i40.i.i.i, %i.b
  %.neg.i8.i.i.i41.i.i.i = mul nsw i64 %i.dl, -60000000000
  %i.dn = add nsw i64 %i.dm, %.neg.i8.i.i.i41.i.i.i ; 2 uses
  %i.do = sdiv i64 %i.dn, 1000000000              ; 2 uses
  %.neg.i.i.i.i.i42.i.i.i = mul nsw i64 %i.do, -1000000000
  %i.dp = add nsw i64 %.neg.i.i.i.i.i42.i.i.i, %i.dn ; 3 uses
  %i.dq = icmp sgt i64 %i.dp, 99
  br i1 %i.dq, label %.lr.ph.i.i.i.i57.i.i.i, label %._crit_edge.i.i.i.i43.i.i.i

.lr.ph.i.i.i.i57.i.i.i:                           ; preds = %bb.n, %.lr.ph.i.i.i.i57.i.i.i
  %.0.idx.i58.i.i.i = phi i64 [ %.0.add.i61.i.i.i, %.lr.ph.i.i.i.i57.i.i.i ], [ 18, %bb.n ] ; 2 uses
  %.08.i.i.i.i59.i.i.i = phi i64 [ %i.dy, %.lr.ph.i.i.i.i57.i.i.i ], [ %i.dp, %bb.n ] ; 3 uses
  %.0.ptr.i60.i.i.i = getelementptr inbounds i8, ptr %3, i64 %.0.idx.i58.i.i.i
  %i.dr = urem i64 %.08.i.i.i.i59.i.i.i, 100
  %i.ds = shl nuw nsw i64 %i.dr, 1
  %i.dt = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ds ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !83, !noalias !3504
  %i.dw = getelementptr inbounds i8, ptr %.0.ptr.i60.i.i.i, i64 -1
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !83, !noalias !3504
  %i.dx = load i8, ptr %i.dt, align 1, !tbaa !83, !noalias !3504
  %.0.add.i61.i.i.i = add nsw i64 %.0.idx.i58.i.i.i, -2 ; 3 uses
  %.ptr24.i62.i.i.i = getelementptr inbounds i8, ptr %3, i64 %.0.add.i61.i.i.i
  store i8 %i.dx, ptr %.ptr24.i62.i.i.i, align 1, !tbaa !83, !noalias !3504
  %i.dy = udiv i64 %.08.i.i.i.i59.i.i.i, 100      ; 2 uses
  %i.dz = icmp samesign ugt i64 %.08.i.i.i.i59.i.i.i, 9999
  br i1 %i.dz, label %.lr.ph.i.i.i.i57.i.i.i, label %._crit_edge.i.i.i.i43.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i43.i.i.i:                      ; preds = %.lr.ph.i.i.i.i57.i.i.i, %bb.n
  %.1.idx.i44.i.i.i = phi i64 [ 18, %bb.n ], [ %.0.add.i61.i.i.i, %.lr.ph.i.i.i.i57.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i45.i.i.i = phi i64 [ %i.dp, %bb.n ], [ %i.dy, %.lr.ph.i.i.i.i57.i.i.i ] ; 3 uses
  %i.ea = icmp sgt i64 %.0.lcssa.i.i.i.i45.i.i.i, 9
  br i1 %i.ea, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i.i.i43.i.i.i
  %i.eb = shl nuw nsw i64 %.0.lcssa.i.i.i.i45.i.i.i, 1
  %i.ec = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.eb ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !83, !noalias !3504
  %.1.add.i55.i.i.i = add nsw i64 %.1.idx.i44.i.i.i, -1 ; 2 uses
  %.ptr22.i56.i.i.i = getelementptr inbounds i8, ptr %3, i64 %.1.add.i55.i.i.i
  store i8 %i.ee, ptr %.ptr22.i56.i.i.i, align 1, !tbaa !83, !noalias !3504
  %i.ef = load i8, ptr %i.ec, align 1, !tbaa !83, !noalias !3504
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i46.i.i.i

bb.p:                                             ; preds = %._crit_edge.i.i.i.i43.i.i.i
  %i.eg = trunc i64 %.0.lcssa.i.i.i.i45.i.i.i to i8
  %i.eh = add i8 %i.eg, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i46.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i46.i.i.i: ; preds = %bb.p, %bb.o
  %.2.idx.i47.i.i.i = phi i64 [ %.1.add.i55.i.i.i, %bb.o ], [ %.1.idx.i44.i.i.i, %bb.p ] ; 3 uses
  %.sink.i.i.i.i48.i.i.i = phi i8 [ %i.ef, %bb.o ], [ %i.eh, %bb.p ]
  %i.ei = getelementptr i8, ptr %3, i64 %.2.idx.i47.i.i.i ; 2 uses
  %.ptr.i49.i.i.i = getelementptr i8, ptr %i.ei, i64 -1
  store i8 %.sink.i.i.i.i48.i.i.i, ptr %.ptr.i49.i.i.i, align 1, !tbaa !83, !noalias !3504
  %i.ej = icmp sgt i64 %.2.idx.i47.i.i.i, 10
  br i1 %i.ej, label %.lr.ph.i.i.preheader.i51.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

.lr.ph.i.i.preheader.i51.i.i.i:                   ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i46.i.i.i
  %i.ek = add i64 %.2.idx.i47.i.i.i, %i.di        ; 2 uses
  %i.el = add i64 %i.ek, -2
  %i.em = add nuw i64 %i.di, 9
  %umin.i52.i.i.i = call i64 @llvm.umin.i64(i64 %i.el, i64 %i.em) ; 2 uses
  %i.en = sub i64 %umin.i52.i.i.i, %i.di
  %scevgep.i53.i.i.i = getelementptr i8, ptr %3, i64 %i.en ; 2 uses
  %i.eo = xor i64 %umin.i52.i.i.i, -1
  %i.ep = add i64 %i.ek, %i.eo
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i53.i.i.i, i8 48, i64 %i.ep, i1 false), !tbaa !83, !noalias !3504
  %scevgep28.i54.i.i.i = getelementptr i8, ptr %scevgep.i53.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i51.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i46.i.i.i
  %i.eq = phi ptr [ %i.ei, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i46.i.i.i ], [ %scevgep28.i54.i.i.i, %.lr.ph.i.i.preheader.i51.i.i.i ] ; 2 uses
  %i.er = shl nsw i64 %i.do, 1
  %i.es = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.er
  %i.et = shl nsw i64 %i.dl, 1
  %i.eu = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.et
  %i.ev = shl nuw nsw i64 %i.dj, 1
  %i.ew = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ev ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 1
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !83, !noalias !3504
  %i.ez = getelementptr i8, ptr %i.eq, i64 -9
  %i.fa = load <2 x i8>, ptr %i.es, align 1, !tbaa !83, !noalias !3504
  %i.fb = load <2 x i8>, ptr %i.eu, align 1, !tbaa !83, !noalias !3504
  %i.fc = shufflevector <2 x i8> %i.fb, <2 x i8> %i.fa, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison>
  %i.fd = shufflevector <8 x i8> %i.fc, <8 x i8> <i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 46>, <8 x i32> <i32 poison, i32 9, i32 2, i32 3, i32 12, i32 5, i32 6, i32 15>
  %i.fe = insertelement <8 x i8> %i.fd, i8 %i.ey, i64 0
  store <8 x i8> %i.fe, ptr %i.ez, align 1, !tbaa !83, !noalias !3504
  %i.ff = load i8, ptr %i.ew, align 1, !tbaa !83, !noalias !3504
  %i.fg = getelementptr i8, ptr %i.eq, i64 -10    ; 3 uses
  store i8 %i.ff, ptr %i.fg, align 1, !tbaa !83, !noalias !3504
  %i.fh = ptrtoint ptr %.ptr23.i38.i.i.i to i64
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = sub i64 %i.fh, %i.fi
  %i.fk = trunc i64 %i.fj to i32
  call void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendEPKhi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %.0.val.8.val, ptr noundef nonnull %i.fg, i32 noundef %i.fk)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !3504
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

bb.q:                                             ; preds = %bb.a
  %spec.select.i.i63.i.i.i = icmp ult i64 %i.b, 86400
  br i1 %spec.select.i.i63.i.i.i, label %bb.s, label %bb.r, !prof !103

bb.r:                                             ; preds = %bb.q
  call fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_10Time64TypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %i.b, ptr noundef nonnull readonly align 8 dereferenceable(8) %6)
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !3505
  %.lhs.trunc.i64.i.i.i = trunc nuw nsw i64 %i.b to i32 ; 2 uses
  %i.fl = udiv i32 %.lhs.trunc.i64.i.i.i, 3600
  %.zext.i65.i.i.i = zext nneg i32 %i.fl to i64   ; 3 uses
  %i.fm = udiv i32 %.lhs.trunc.i64.i.i.i, 60
  %.zext16.i.i.i.i = zext nneg i32 %i.fm to i64
  %.neg.i.i.i.i66.i.i.i = mul nsw i64 %.zext.i65.i.i.i, -60
  %i.fn = add nsw i64 %.neg.i.i.i.i66.i.i.i, %.zext16.i.i.i.i ; 2 uses
  %.neg.i7.i.i.i67.i.i.i = mul nsw i64 %.zext.i65.i.i.i, -3600
  %i.fo = add nsw i64 %.neg.i7.i.i.i67.i.i.i, %i.b
  %.neg.i8.i.i.i68.i.i.i = mul nsw i64 %i.fn, -60
  %i.fp = add nsw i64 %i.fo, %.neg.i8.i.i.i68.i.i.i
  %i.fq = shl nuw nsw i64 %i.fp, 1
  %i.fr = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fq ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 1
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !83, !noalias !3505
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.ft, ptr %i.fu, align 1, !tbaa !83, !noalias !3505
  %i.fv = load i8, ptr %i.fr, align 1, !tbaa !83, !noalias !3505
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %i.fv, ptr %i.fw, align 1, !tbaa !83, !noalias !3505
  %i.fx = shl nuw nsw i64 %i.fn, 1
  %i.fy = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ga = load <2 x i8>, ptr %i.fy, align 1, !tbaa !83, !noalias !3505
  %i.gb = shufflevector <2 x i8> %i.ga, <2 x i8> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.gc = shufflevector <4 x i8> <i8 58, i8 poison, i8 poison, i8 58>, <4 x i8> %i.gb, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i8> %i.gc, ptr %i.fz, align 1, !tbaa !83, !noalias !3505
  %i.gd = shl nuw nsw i64 %.zext.i65.i.i.i, 1
  %i.ge = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gd ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 1
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !83, !noalias !3505
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.gg, ptr %i.gh, align 1, !tbaa !83, !noalias !3505
  %i.gi = load i8, ptr %i.ge, align 1, !tbaa !83, !noalias !3505
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  store i8 %i.gi, ptr %i.gj, align 1, !tbaa !83, !noalias !3505
  call void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendEPKhi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %.0.val.8.val, ptr noundef nonnull %i.gj, i32 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !3505
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit: ; preds = %bb.c, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i, %bb.h, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i, %bb.m, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !3501
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_10Time64TypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN5arrow8internal7ToCharsIlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 noundef %.0.val)
  %i.a = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.27, i64 noundef 21)
          to label %.noexc unwind label %bb.g     ; 8 uses

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 13 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !211, !alias.scope !3510
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !138  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread, label %bb.b

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread: ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !212  ; 5 uses
  %i.h = icmp samesign ult i64 %i.g, 16
  call void @llvm.assume(i1 %i.h)
  %i.i = add nuw nsw i64 %i.g, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.i, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.g, ptr %i.k, align 8, !tbaa !212, !alias.scope !3510
  store ptr %i.d, ptr %i.a, align 8, !tbaa !138
  store i64 0, ptr %i.j, align 8, !tbaa !212
  store i8 0, ptr %i.d, align 8, !tbaa !83
  %i.l = add nuw nsw i64 %i.g, 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.b:                                             ; preds = %.noexc
  store ptr %i.c, ptr %3, align 8, !tbaa !138, !alias.scope !3510
  %i.m = load i64, ptr %i.d, align 8, !tbaa !83
  store i64 %i.m, ptr %i.b, align 8, !tbaa !83, !alias.scope !3510
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !212 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %.pre.i, ptr %i.o, align 8, !tbaa !212, !alias.scope !3510
  store ptr %i.d, ptr %i.a, align 8, !tbaa !138
  store i64 0, ptr %i.n, align 8, !tbaa !212
  store i8 0, ptr %i.d, align 8, !tbaa !83
  call void @llvm.experimental.noalias.scope.decl(metadata !3511)
  %i.p = icmp eq i64 %.pre.i, 9223372036854775807
  br i1 %i.p, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #32
          to label %.noexc10 unwind label %bb.h

.noexc10:                                         ; preds = %bb.c
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.q = add nsw i64 %.pre.i, 1                   ; 2 uses
  %i.r = icmp eq ptr %i.c, %i.b
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.s = phi i64 [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ]
  %i.t = phi ptr [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ]
  %i.u = phi i64 [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ] ; 2 uses
  %i.v = phi ptr [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ]
  %i.w = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.w)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.x = load i64, ptr %i.b, align 8, !tbaa !83, !noalias !3511
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.y = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 3 uses
  %i.z = phi ptr [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.aa = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 2 uses
  %i.ab = phi ptr [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 4 uses
  %i.ac = phi i64 [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.y, %i.ac
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  store i8 62, ptr %i.ad, align 1, !tbaa !83, !noalias !3511
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.aa, i64 noundef 0, ptr noundef nonnull @.str.28, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.e, %bb.d
  store i64 %i.y, ptr %i.ab, align 8, !tbaa !212, !noalias !3511
  %i.ae = load ptr, ptr %3, align 8, !tbaa !138, !noalias !3511
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.y
  store i8 0, ptr %i.af, align 1, !tbaa !83, !noalias !3511
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.ag, ptr %2, align 8, !tbaa !211, !alias.scope !3511
  %i.ah = load ptr, ptr %3, align 8, !tbaa !138, !noalias !3511 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, %i.b
  br i1 %i.ai, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.aj = load i64, ptr %i.ab, align 8, !tbaa !212, !noalias !3511 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %i.al, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.ah, ptr %2, align 8, !tbaa !138, !alias.scope !3511
  %i.am = load i64, ptr %i.b, align 8, !tbaa !83, !noalias !3511
  store i64 %i.am, ptr %i.ag, align 8, !tbaa !83, !alias.scope !3511
  %.pre.i9 = load i64, ptr %i.ab, align 8, !tbaa !212, !noalias !3511
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, %bb.f
  %i.an = phi ptr [ %i.ag, %bb.f ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ]
  %i.ao = phi i64 [ %i.aj, %bb.f ], [ %.pre.i9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !212, !alias.scope !3511
  store ptr %i.b, ptr %3, align 8, !tbaa !138, !noalias !3511
  store i64 0, ptr %i.ab, align 8, !tbaa !212, !noalias !3511
  store i8 0, ptr %i.b, align 8, !tbaa !83, !noalias !3511
  %i.aq = load ptr, ptr %4, align 8, !tbaa !138   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !83
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #30
  %.pre = load ptr, ptr %2, align 8, !tbaa !138
  %.pre1 = load i64, ptr %i.ap, align 8, !tbaa !212
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %i.av = phi i64 [ %.pre1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.aw = phi ptr [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %.val = load ptr, ptr %1, align 8, !tbaa !3513
  %i.ax = trunc i64 %i.av to i32
  invoke void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendEPKhi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %.val, ptr noundef %i.aw, i32 noundef %i.ax)
          to label %_ZZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clElENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit unwind label %bb.i

_ZZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clElENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.ay = load ptr, ptr %2, align 8, !tbaa !138   ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ag
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clElENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit
  %i.ba = load i64, ptr %i.ag, align 8, !tbaa !83
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clElENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.g:                                             ; preds = %bb.a
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.h:                                             ; preds = %bb.e, %bb.c
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %3, align 8, !tbaa !138   ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.b
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.h
  %i.bg = load i64, ptr %i.b, align 8, !tbaa !83
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.g ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %i.bd, %bb.h ]
  %i.bi = load ptr, ptr %4, align 8, !tbaa !138   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !83
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %2, align 8, !tbaa !138   ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.ag
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.i
  %i.bq = load i64, ptr %i.ag, align 8, !tbaa !83
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %.pn6 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %i.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.bn, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn6
}

declare noundef i64 @_ZNK5arrow9ArraySpan12GetNullCountEv(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_13TimestampTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeES2_E4ExecEPNS5_13KernelContextERKNS5_8ExecSpanEPNS5_10ExecResultEEUllE_ZNSA_4ExecESC_SF_SH_EUlvE_EENS_6StatusERKNS_9ArraySpanEOT_OT0_ENKUllE_clEl(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 %.0.val.0.val.0.val, i64 %.0.val.0.val.16.val, ptr %.0.val.8.val, ptr nofree readonly captures(none) %.8.val.0.val, i64 noundef %1) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.466", align 1   ; 4 uses
  %3 = alloca %"struct.std::array.464", align 1   ; 4 uses
  %4 = alloca %"struct.std::array.462", align 1   ; 4 uses
  %5 = alloca %"struct.std::array.460", align 1   ; 4 uses
  %6 = alloca %class.anon.458, align 8            ; 6 uses
  %i.a = getelementptr inbounds [8 x i8], ptr %.8.val.0.val, i64 %1
  %i.b = load i64, ptr %i.a, align 8, !tbaa !195  ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !3528
  store ptr %.0.val.8.val, ptr %6, align 8, !tbaa !326, !noalias !3528
  switch i32 %.0.val.0.val.0.val, label %bb.am [
    i32 3, label %bb.ab
    i32 1, label %bb.b
    i32 2, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %i.b, 1096193779200000
  %spec.select.i.i.i.i.i = icmp ult i64 %i.c, 2068084742400000
  br i1 %spec.select.i.i.i.i.i, label %bb.d, label %bb.c, !prof !103

bb.c:                                             ; preds = %bb.b
  call fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_13TimestampTypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %i.b, ptr noundef nonnull readonly align 8 dereferenceable(8) %6)
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_13TimestampTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

bb.d:                                             ; preds = %bb.b
  %i.d = sdiv i64 %i.b, 86400000                  ; 3 uses
  %i.e = trunc nsw i64 %i.d to i32                ; 2 uses
  %i.f = mul nsw i64 %i.d, 86400000               ; 2 uses
  %.not53.i.i.i.i = icmp sgt i64 %i.f, %i.b
  br i1 %.not53.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.neg.i.i.i.i.i.i = mul nsw i64 %i.d, -86400000
  %i.g = add nsw i64 %.neg.i.i.i.i.i.i, %i.b
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %.neg.i.i.i.i = add nsw i64 %i.b, 86400000
  %i.h = sub nsw i64 %.neg.i.i.i.i, %i.f
  %i.i = add nsw i32 %i.e, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.036.0.i.i.i.i = phi i64 [ %i.g, %bb.e ], [ %i.h, %bb.f ]
  %.sroa.037.0.i.i.i.i = phi i32 [ %i.e, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !3529
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 26 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.0.val.0.val.16.val, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 25 ; 2 uses
  store i8 90, ptr %i.k, align 1, !tbaa !83, !noalias !3529
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi ptr [ %i.j, %bb.g ], [ %i.k, %bb.h ] ; 6 uses
  %.063.i.i.i.i = ptrtoaddr ptr %.0.i.i.i.i to i64 ; 3 uses
  %spec.select.i.i.i.i.i.i.i = call i64 @llvm.abs.i64(i64 %.sroa.036.0.i.i.i.i, i1 true) ; 3 uses
  %i.l = udiv i64 %spec.select.i.i.i.i.i.i.i, 3600000 ; 3 uses
  %i.m = udiv i64 %spec.select.i.i.i.i.i.i.i, 60000
  %.neg.i.i.i.i.i.i.i = mul nsw i64 %i.l, -60
  %i.n = add nsw i64 %.neg.i.i.i.i.i.i.i, %i.m    ; 2 uses
  %.neg.i7.i.i.i.i.i.i = mul nsw i64 %i.l, -3600000
  %i.o = add nsw i64 %.neg.i7.i.i.i.i.i.i, %spec.select.i.i.i.i.i.i.i
  %.neg.i8.i.i.i.i.i.i = mul nsw i64 %i.n, -60000
  %i.p = add nsw i64 %i.o, %.neg.i8.i.i.i.i.i.i   ; 2 uses
  %i.q = sdiv i64 %i.p, 1000                      ; 2 uses
  %.neg.i.i.i.i.i.i.i.i = mul nsw i64 %i.q, -1000
  %i.r = add nsw i64 %.neg.i.i.i.i.i.i.i.i, %i.p  ; 3 uses
  %i.s = icmp sgt i64 %i.r, 99
  br i1 %i.s, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i.i
  %.1.idx.i.i.i.i = phi i64 [ %.1.add.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %.08.i.i.i.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i.i.i ], [ %i.r, %bb.i ] ; 3 uses
  %.1.ptr.i.i.i.i = getelementptr inbounds i8, ptr %.0.i.i.i.i, i64 %.1.idx.i.i.i.i
  %i.t = urem i64 %.08.i.i.i.i.i.i.i, 100
  %i.u = shl nuw nsw i64 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !83, !noalias !3529
  %i.y = getelementptr inbounds i8, ptr %.1.ptr.i.i.i.i, i64 -1
  store i8 %i.x, ptr %i.y, align 1, !tbaa !83, !noalias !3529
  %i.z = load i8, ptr %i.v, align 1, !tbaa !83, !noalias !3529
  %.1.add.i.i.i.i = add nsw i64 %.1.idx.i.i.i.i, -2 ; 3 uses
  %.ptr55.i.i.i.i = getelementptr inbounds i8, ptr %.0.i.i.i.i, i64 %.1.add.i.i.i.i
  store i8 %i.z, ptr %.ptr55.i.i.i.i, align 1, !tbaa !83, !noalias !3529
  %i.aa = udiv i64 %.08.i.i.i.i.i.i.i, 100        ; 2 uses
  %i.ab = icmp samesign ugt i64 %.08.i.i.i.i.i.i.i, 9999
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.i
  %.2.idx.i.i.i.i = phi i64 [ 0, %bb.i ], [ %.1.add.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %i.r, %bb.i ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.ac = icmp sgt i64 %.0.lcssa.i.i.i.i.i.i.i, 9
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ad = shl nuw nsw i64 %.0.lcssa.i.i.i.i.i.i.i, 1
  %i.ae = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !83, !noalias !3529
  %.2.add.i.i.i.i = add nsw i64 %.2.idx.i.i.i.i, -1 ; 2 uses
  %.ptr54.i.i.i.i = getelementptr inbounds i8, ptr %.0.i.i.i.i, i64 %.2.add.i.i.i.i
  store i8 %i.ag, ptr %.ptr54.i.i.i.i, align 1, !tbaa !83, !noalias !3529
  %i.ah = load i8, ptr %i.ae, align 1, !tbaa !83, !noalias !3529
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ai = trunc i64 %.0.lcssa.i.i.i.i.i.i.i to i8
  %i.aj = add i8 %i.ai, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.3.idx.i.i.i.i = phi i64 [ %.2.add.i.i.i.i, %bb.j ], [ %.2.idx.i.i.i.i, %bb.k ] ; 3 uses
  %.sink.i.i.i.i.i.i.i = phi i8 [ %i.ah, %bb.j ], [ %i.aj, %bb.k ]
  %i.ak = getelementptr i8, ptr %.0.i.i.i.i, i64 %.3.idx.i.i.i.i ; 2 uses
  %.ptr.i.i.i.i = getelementptr i8, ptr %i.ak, i64 -1
  store i8 %.sink.i.i.i.i.i.i.i, ptr %.ptr.i.i.i.i, align 1, !tbaa !83, !noalias !3529
  %i.al = icmp sgt i64 %.3.idx.i.i.i.i, -2
  br i1 %i.al, label %.lr.ph.i.i.preheader.i.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i:                     ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i
  %i.am = add i64 %.3.idx.i.i.i.i, %.063.i.i.i.i  ; 2 uses
  %i.an = add i64 %i.am, -2
  %i.ao = add i64 %.063.i.i.i.i, -3
  %umin.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.an, i64 %i.ao) ; 2 uses
  %i.ap = sub i64 %umin.i.i.i.i, %.063.i.i.i.i
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i.i, i64 %i.ap ; 2 uses
  %i.aq = xor i64 %umin.i.i.i.i, -1
  %i.ar = add i64 %i.am, %i.aq
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i.i.i.i, i8 48, i64 %i.ar, i1 false), !tbaa !83, !noalias !3529
  %scevgep65.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i
  %i.as = phi ptr [ %i.ak, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i ], [ %scevgep65.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i ] ; 3 uses
  %i.at = shl nsw i64 %i.q, 1
  %i.au = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.at
  %i.av = getelementptr i8, ptr %i.as, i64 -5
  %i.aw = load <2 x i8>, ptr %i.au, align 1, !tbaa !83, !noalias !3529
  %i.ax = shufflevector <2 x i8> %i.aw, <2 x i8> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ay = shufflevector <4 x i8> <i8 58, i8 poison, i8 poison, i8 46>, <4 x i8> %i.ax, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i8> %i.ay, ptr %i.av, align 1, !tbaa !83, !noalias !3529
  %i.az = shl nuw nsw i64 %i.n, 1
  %i.ba = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.az
  %i.bb = shl nuw nsw i64 %i.l, 1
  %i.bc = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.bb
  %i.bd = add nsw i32 %.sroa.037.0.i.i.i.i, 719468 ; 2 uses
  %i.be = icmp sgt i32 %.sroa.037.0.i.i.i.i, -719469
  %i.bf = add nuw nsw i32 %.sroa.037.0.i.i.i.i, 573372
  %i.bg = select i1 %i.be, i32 %i.bd, i32 %i.bf
  %i.bh = sdiv i32 %i.bg, 146097                  ; 2 uses
  %.neg.i.i17.i.i.i.i = mul nsw i32 %i.bh, -146097
  %i.bi = add nsw i32 %.neg.i.i17.i.i.i.i, %i.bd  ; 5 uses
  %i.bj = udiv i32 %i.bi, 1460
  %i.bk = udiv i32 %i.bi, 36524
  %i.bl = udiv i32 %i.bi, 146096
  %.neg8 = add nsw i32 %i.bk, %i.bi
  %i.bm = add nuw nsw i32 %i.bl, %i.bj
  %i.bn = sub nsw i32 %.neg8, %i.bm               ; 3 uses
  %i.bo = udiv i32 %i.bn, 365                     ; 2 uses
  %i.bp = mul nsw i32 %i.bh, 400
  %i.bq = add nsw i32 %i.bo, %i.bp
  %i.br = udiv i32 %i.bn, 1460
  %i.bs = udiv i32 %i.bn, 36500
  %.neg36.i.i.i.i.i.i = mul i32 %i.bo, -365
  %.neg37.i.i.i.i.i.i = sub nsw i32 %i.bi, %i.br
  %.neg25.i.i.i.i.i.i = add nsw i32 %.neg37.i.i.i.i.i.i, %i.bs
  %i.bt = add i32 %.neg25.i.i.i.i.i.i, %.neg36.i.i.i.i.i.i ; 2 uses
  %i.bu = mul i32 %i.bt, 5
  %i.bv = add i32 %i.bu, 2                        ; 2 uses
  %i.bw = udiv i32 %i.bv, 153                     ; 2 uses
  %i.bx = mul nuw i32 %i.bw, 153
  %i.by = add nuw i32 %i.bx, 2
  %i.bz = udiv i32 %i.by, 5
  %i.ca = sub i32 %i.bt, %i.bz
  %i.cb = icmp ult i32 %i.bv, 1530
  %.v.i.i.i.i.i.i = select i1 %i.cb, i32 3, i32 -9
  %i.cc = add nsw i32 %.v.i.i.i.i.i.i, %i.bw      ; 2 uses
  %i.cd = icmp ult i32 %i.cc, 3
  %i.ce = zext i1 %i.cd to i32
  %i.cf = add nsw i32 %i.bq, %i.ce
  %i.cg = shl i32 %i.ca, 24
  %.sroa.3.0.insert.ext.i.i.i.i.i.i = add i32 %i.cg, 16777216
  %i.ch = lshr exact i32 %.sroa.3.0.insert.ext.i.i.i.i.i.i, 23
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ci
  %i.ck = shl nsw i32 %i.cc, 1
  %i.cl = and i32 %i.ck, 510
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.cm
  %sext.i.i.i.i.i = shl i32 %i.cf, 16
  %i.co = ashr exact i32 %sext.i.i.i.i.i, 16      ; 2 uses
  %i.cp = icmp slt i32 %i.co, 0
  %i.cq = call i32 @llvm.abs.i32(i32 %i.co, i1 true) ; 2 uses
  %.lhs.trunc.i.i.i.i.i = trunc nuw i32 %i.cq to i16 ; 3 uses
  %i.cr = urem i16 %.lhs.trunc.i.i.i.i.i, 100
  %i.cs = shl nuw nsw i16 %i.cr, 1
  %i.ct = zext nneg i16 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ct
  %i.cv = udiv i16 %.lhs.trunc.i.i.i.i.i, 100
  %i.cw = urem i16 %i.cv, 100
  %i.cx = shl nuw nsw i16 %i.cw, 1
  %i.cy = zext nneg i16 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.cy
  %i.da = getelementptr i8, ptr %i.as, i64 -21    ; 2 uses
  %i.db = load <2 x i8>, ptr %i.ba, align 1, !tbaa !83, !noalias !3529
  %i.dc = load <2 x i8>, ptr %i.bc, align 1, !tbaa !83, !noalias !3529
  %i.dd = load <2 x i8>, ptr %i.cj, align 1, !tbaa !83, !noalias !3529
  %i.de = load <2 x i8>, ptr %i.cn, align 1, !tbaa !83, !noalias !3529
  %i.df = load <2 x i8>, ptr %i.cu, align 1, !tbaa !83, !noalias !3529
  %i.dg = load <2 x i8>, ptr %i.cz, align 1, !tbaa !83, !noalias !3529
  %i.dh = shufflevector <2 x i8> %i.dg, <2 x i8> %i.df, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.di = shufflevector <16 x i8> %i.dh, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 32, i8 poison, i8 poison, i8 58, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 poison, i32 poison, i32 23, i32 poison, i32 poison, i32 26, i32 poison, i32 poison, i32 29, i32 poison, i32 poison>
  %i.dj = shufflevector <2 x i8> %i.de, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dk = shufflevector <16 x i8> %i.di, <16 x i8> %i.dj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 7, i32 poison, i32 poison, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.dl = shufflevector <2 x i8> %i.dd, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dm = shufflevector <16 x i8> %i.dk, <16 x i8> %i.dl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.dn = shufflevector <2 x i8> %i.dc, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.do = shufflevector <16 x i8> %i.dm, <16 x i8> %i.dn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 17, i32 13, i32 poison, i32 poison>
  %i.dp = shufflevector <2 x i8> %i.db, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dq = shufflevector <16 x i8> %i.do, <16 x i8> %i.dp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  store <16 x i8> %i.dq, ptr %i.da, align 1, !tbaa !83, !noalias !3529
  %i.dr = icmp samesign ugt i32 %i.cq, 9999
  br i1 %i.dr, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i
  %i.ds = udiv i16 %.lhs.trunc.i.i.i.i.i, 10000
  %i.dt = trunc nuw nsw i16 %i.ds to i8
  %i.du = or disjoint i8 %i.dt, 48
  %i.dv = getelementptr i8, ptr %i.as, i64 -22    ; 2 uses
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !83, !noalias !3529
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i
  %.4.i.i.i.i = phi ptr [ %i.dv, %bb.l ], [ %i.da, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i ] ; 2 uses
  br i1 %i.cp, label %bb.n, label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.dw = getelementptr inbounds i8, ptr %.4.i.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.dw, align 1, !tbaa !83, !noalias !3529
  br label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i.i.i.i

_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i.i.i.i: ; preds = %bb.n, %bb.m
  %.5.i.i.i.i = phi ptr [ %i.dw, %bb.n ], [ %.4.i.i.i.i, %bb.m ] ; 2 uses
  %i.dx = ptrtoint ptr %i.j to i64
  %i.dy = ptrtoint ptr %.5.i.i.i.i to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = trunc i64 %i.dz to i32
  call void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendEPKhi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %.0.val.8.val, ptr noundef nonnull %.5.i.i.i.i, i32 noundef %i.ea)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !3529
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_13TimestampTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

bb.o:                                             ; preds = %bb.a
  %i.eb = add i64 %i.b, 1096193779200000000
  %spec.select.i.i18.i.i.i = icmp ult i64 %i.eb, 2068084742400000000
  br i1 %spec.select.i.i18.i.i.i, label %bb.q, label %bb.p, !prof !103

bb.p:                                             ; preds = %bb.o
  call fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_13TimestampTypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %i.b, ptr noundef nonnull readonly align 8 dereferenceable(8) %6)
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_13TimestampTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

bb.q:                                             ; preds = %bb.o
  %i.ec = sdiv i64 %i.b, 86400000000              ; 3 uses
  %i.ed = trunc nsw i64 %i.ec to i32              ; 2 uses
  %i.ee = mul nsw i64 %i.ec, 86400000000          ; 2 uses
  %.not53.i19.i.i.i = icmp sgt i64 %i.ee, %i.b
  br i1 %.not53.i19.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.neg.i.i.i20.i.i.i = mul nsw i64 %i.ec, -86400000000
  %i.ef = add nsw i64 %.neg.i.i.i20.i.i.i, %i.b
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %.neg.i63.i.i.i = add nsw i64 %i.b, 86400000000
  %i.eg = sub nsw i64 %.neg.i63.i.i.i, %i.ee
  %i.eh = add nsw i32 %i.ed, -1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.036.0.i21.i.i.i = phi i64 [ %i.ef, %bb.r ], [ %i.eg, %bb.s ]
  %.sroa.037.0.i22.i.i.i = phi i32 [ %i.ed, %bb.r ], [ %i.eh, %bb.s ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !3530
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 29 ; 2 uses
  %.not.i23.i.i.i = icmp eq i64 %.0.val.0.val.16.val, 0
  br i1 %.not.i23.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  store i8 90, ptr %i.ej, align 1, !tbaa !83, !noalias !3530
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0.i24.i.i.i = phi ptr [ %i.ei, %bb.t ], [ %i.ej, %bb.u ] ; 6 uses
  %.063.i25.i.i.i = ptrtoaddr ptr %.0.i24.i.i.i to i64 ; 3 uses
  %spec.select.i.i.i.i26.i.i.i = call i64 @llvm.abs.i64(i64 %.sroa.036.0.i21.i.i.i, i1 true) ; 3 uses
  %i.ek = udiv i64 %spec.select.i.i.i.i26.i.i.i, 3600000000 ; 3 uses
  %i.el = udiv i64 %spec.select.i.i.i.i26.i.i.i, 60000000
  %.neg.i.i.i.i27.i.i.i = mul nsw i64 %i.ek, -60
  %i.em = add nsw i64 %.neg.i.i.i.i27.i.i.i, %i.el ; 2 uses
  %.neg.i7.i.i.i28.i.i.i = mul nsw i64 %i.ek, -3600000000
  %i.en = add nsw i64 %.neg.i7.i.i.i28.i.i.i, %spec.select.i.i.i.i26.i.i.i
  %.neg.i8.i.i.i29.i.i.i = mul nsw i64 %i.em, -60000000
  %i.eo = add nsw i64 %i.en, %.neg.i8.i.i.i29.i.i.i ; 2 uses
  %i.ep = sdiv i64 %i.eo, 1000000                 ; 2 uses
  %.neg.i.i.i.i.i30.i.i.i = mul nsw i64 %i.ep, -1000000
  %i.eq = add nsw i64 %.neg.i.i.i.i.i30.i.i.i, %i.eo ; 3 uses
  %i.er = icmp sgt i64 %i.eq, 99
  br i1 %i.er, label %.lr.ph.i.i.i.i57.i.i.i, label %._crit_edge.i.i.i.i31.i.i.i

.lr.ph.i.i.i.i57.i.i.i:                           ; preds = %bb.v, %.lr.ph.i.i.i.i57.i.i.i
  %.1.idx.i58.i.i.i = phi i64 [ %.1.add.i61.i.i.i, %.lr.ph.i.i.i.i57.i.i.i ], [ 0, %bb.v ] ; 2 uses
  %.08.i.i.i.i59.i.i.i = phi i64 [ %i.ez, %.lr.ph.i.i.i.i57.i.i.i ], [ %i.eq, %bb.v ] ; 3 uses
  %.1.ptr.i60.i.i.i = getelementptr inbounds i8, ptr %.0.i24.i.i.i, i64 %.1.idx.i58.i.i.i
  %i.es = urem i64 %.08.i.i.i.i59.i.i.i, 100
  %i.et = shl nuw nsw i64 %i.es, 1
  %i.eu = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.et ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 1
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !83, !noalias !3530
  %i.ex = getelementptr inbounds i8, ptr %.1.ptr.i60.i.i.i, i64 -1
  store i8 %i.ew, ptr %i.ex, align 1, !tbaa !83, !noalias !3530
  %i.ey = load i8, ptr %i.eu, align 1, !tbaa !83, !noalias !3530
  %.1.add.i61.i.i.i = add nsw i64 %.1.idx.i58.i.i.i, -2 ; 3 uses
  %.ptr55.i62.i.i.i = getelementptr inbounds i8, ptr %.0.i24.i.i.i, i64 %.1.add.i61.i.i.i
  store i8 %i.ey, ptr %.ptr55.i62.i.i.i, align 1, !tbaa !83, !noalias !3530
  %i.ez = udiv i64 %.08.i.i.i.i59.i.i.i, 100      ; 2 uses
  %i.fa = icmp samesign ugt i64 %.08.i.i.i.i59.i.i.i, 9999
  br i1 %i.fa, label %.lr.ph.i.i.i.i57.i.i.i, label %._crit_edge.i.i.i.i31.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i31.i.i.i:                      ; preds = %.lr.ph.i.i.i.i57.i.i.i, %bb.v
  %.2.idx.i32.i.i.i = phi i64 [ 0, %bb.v ], [ %.1.add.i61.i.i.i, %.lr.ph.i.i.i.i57.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i33.i.i.i = phi i64 [ %i.eq, %bb.v ], [ %i.ez, %.lr.ph.i.i.i.i57.i.i.i ] ; 3 uses
  %i.fb = icmp sgt i64 %.0.lcssa.i.i.i.i33.i.i.i, 9
  br i1 %i.fb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i.i.i31.i.i.i
  %i.fc = shl nuw nsw i64 %.0.lcssa.i.i.i.i33.i.i.i, 1
  %i.fd = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fc ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 1
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !83, !noalias !3530
  %.2.add.i55.i.i.i = add nsw i64 %.2.idx.i32.i.i.i, -1 ; 2 uses
  %.ptr54.i56.i.i.i = getelementptr inbounds i8, ptr %.0.i24.i.i.i, i64 %.2.add.i55.i.i.i
  store i8 %i.ff, ptr %.ptr54.i56.i.i.i, align 1, !tbaa !83, !noalias !3530
  %i.fg = load i8, ptr %i.fd, align 1, !tbaa !83, !noalias !3530
end_hunk_0
begin_hunk_1_@_ZZN5arrow8internal22ArraySpanInlineVisitorINS_13TimestampTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeES2_E4ExecEPNS5_13KernelContextERKNS5_8ExecSpanEPNS5_10ExecResultEEUllE_ZNSA_4ExecESC_SF_SH_EUlvE_EENS_6StatusERKNS_9ArraySpanEOT_OT0_ENKUllE_clEl:bb.a
  %.2.add.i99.i.i.i = add nsw i64 %.2.idx.i77.i.i.i, -1 ; 2 uses
  %.ptr54.i100.i.i.i = getelementptr inbounds i8, ptr %.0.i69.i.i.i, i64 %.2.add.i99.i.i.i
  store i8 %i.kd, ptr %.ptr54.i100.i.i.i, align 1, !tbaa !83, !noalias !3531
  %i.ke = load i8, ptr %i.kb, align 1, !tbaa !83, !noalias !3531
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i79.i.i.i

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i76.i.i.i
  %i.kf = trunc i64 %.0.lcssa.i.i.i.i78.i.i.i to i8
  %i.kg = add i8 %i.kf, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i79.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i79.i.i.i: ; preds = %bb.ai, %bb.ah
  %.3.idx.i80.i.i.i = phi i64 [ %.2.add.i99.i.i.i, %bb.ah ], [ %.2.idx.i77.i.i.i, %bb.ai ] ; 3 uses
  %.sink.i.i.i.i81.i.i.i = phi i8 [ %i.ke, %bb.ah ], [ %i.kg, %bb.ai ]
  %i.kh = getelementptr i8, ptr %.0.i69.i.i.i, i64 %.3.idx.i80.i.i.i ; 2 uses
  %.ptr.i82.i.i.i = getelementptr i8, ptr %i.kh, i64 -1
  store i8 %.sink.i.i.i.i81.i.i.i, ptr %.ptr.i82.i.i.i, align 1, !tbaa !83, !noalias !3531
  %i.ki = icmp sgt i64 %.3.idx.i80.i.i.i, -8
  br i1 %i.ki, label %.lr.ph.i.i.preheader.i95.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

.lr.ph.i.i.preheader.i95.i.i.i:                   ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i79.i.i.i
  %i.kj = add i64 %.3.idx.i80.i.i.i, %.063.i70.i.i.i ; 2 uses
  %i.kk = add i64 %i.kj, -2
  %i.kl = add i64 %.063.i70.i.i.i, -9
  %umin.i96.i.i.i = call i64 @llvm.umin.i64(i64 %i.kk, i64 %i.kl) ; 2 uses
  %i.km = sub i64 %umin.i96.i.i.i, %.063.i70.i.i.i
  %scevgep.i97.i.i.i = getelementptr i8, ptr %.0.i69.i.i.i, i64 %i.km ; 2 uses
  %i.kn = xor i64 %umin.i96.i.i.i, -1
  %i.ko = add i64 %i.kj, %i.kn
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i97.i.i.i, i8 48, i64 %i.ko, i1 false), !tbaa !83, !noalias !3531
  %scevgep65.i98.i.i.i = getelementptr i8, ptr %scevgep.i97.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i95.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i79.i.i.i
  %i.kp = phi ptr [ %i.kh, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i79.i.i.i ], [ %scevgep65.i98.i.i.i, %.lr.ph.i.i.preheader.i95.i.i.i ] ; 3 uses
  %i.kq = shl nsw i64 %i.jn, 1
  %i.kr = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.kq
  %i.ks = getelementptr i8, ptr %i.kp, i64 -5
  %i.kt = load <2 x i8>, ptr %i.kr, align 1, !tbaa !83, !noalias !3531
  %i.ku = shufflevector <2 x i8> %i.kt, <2 x i8> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.kv = shufflevector <4 x i8> <i8 58, i8 poison, i8 poison, i8 46>, <4 x i8> %i.ku, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i8> %i.kv, ptr %i.ks, align 1, !tbaa !83, !noalias !3531
  %i.kw = shl nsw i64 %i.jk, 1
  %i.kx = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.kw
  %i.ky = shl nuw nsw i64 %i.ji, 1
  %i.kz = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ky
  %i.la = add nsw i32 %.sroa.037.0.i67.i.i.i, 719468 ; 2 uses
  %i.lb = udiv i32 %i.la, 146097                  ; 2 uses
  %.neg.i.i17.i83.i.i.i = mul nsw i32 %i.lb, -146097
  %i.lc = add nsw i32 %.neg.i.i17.i83.i.i.i, %i.la ; 5 uses
  %i.ld = udiv i32 %i.lc, 1460
  %i.le = udiv i32 %i.lc, 36524
  %i.lf = udiv i32 %i.lc, 146096
  %.neg13 = add nsw i32 %i.le, %i.lc
  %i.lg = add nuw nsw i32 %i.lf, %i.ld
  %i.lh = sub nsw i32 %.neg13, %i.lg              ; 3 uses
  %i.li = udiv i32 %i.lh, 365                     ; 2 uses
  %i.lj = mul nuw nsw i32 %i.lb, 400
  %i.lk = add nuw nsw i32 %i.li, %i.lj
  %i.ll = udiv i32 %i.lh, 1460
  %i.lm = udiv i32 %i.lh, 36500
  %.neg36.i.i.i85.i.i.i = mul i32 %i.li, -365
  %.neg37.i.i.i86.i.i.i = sub nsw i32 %i.lc, %i.ll
  %.neg25.i.i.i87.i.i.i = add nsw i32 %.neg37.i.i.i86.i.i.i, %i.lm
  %i.ln = add i32 %.neg25.i.i.i87.i.i.i, %.neg36.i.i.i85.i.i.i ; 2 uses
  %i.lo = mul i32 %i.ln, 5
  %i.lp = add i32 %i.lo, 2                        ; 2 uses
  %i.lq = udiv i32 %i.lp, 153                     ; 2 uses
  %i.lr = mul nuw i32 %i.lq, 153
  %i.ls = add nuw i32 %i.lr, 2
  %i.lt = udiv i32 %i.ls, 5
  %i.lu = sub i32 %i.ln, %i.lt
  %i.lv = icmp ult i32 %i.lp, 1530
  %.v.i.i.i88.i.i.i = select i1 %i.lv, i32 3, i32 -9
  %i.lw = add nsw i32 %.v.i.i.i88.i.i.i, %i.lq    ; 2 uses
  %i.lx = icmp ult i32 %i.lw, 3
  %i.ly = zext i1 %i.lx to i32
  %i.lz = add nuw nsw i32 %i.lk, %i.ly
  %i.ma = shl i32 %i.lu, 24
  %.sroa.3.0.insert.ext.i.i.i89.i.i.i = add i32 %i.ma, 16777216
  %i.mb = lshr exact i32 %.sroa.3.0.insert.ext.i.i.i89.i.i.i, 23
  %i.mc = zext nneg i32 %i.mb to i64
  %i.md = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.mc
  %i.me = shl nsw i32 %i.lw, 1
  %i.mf = and i32 %i.me, 510
  %i.mg = zext nneg i32 %i.mf to i64
  %i.mh = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.mg
  %sext.i.i90.i.i.i = shl i32 %i.lz, 16
  %i.mi = ashr exact i32 %sext.i.i90.i.i.i, 16    ; 2 uses
  %i.mj = icmp slt i32 %i.mi, 0
  %i.mk = call i32 @llvm.abs.i32(i32 %i.mi, i1 true) ; 2 uses
  %.lhs.trunc.i.i91.i.i.i = trunc nuw i32 %i.mk to i16 ; 3 uses
  %i.ml = urem i16 %.lhs.trunc.i.i91.i.i.i, 100
  %i.mm = shl nuw nsw i16 %i.ml, 1
  %i.mn = zext nneg i16 %i.mm to i64
  %i.mo = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.mn
  %i.mp = udiv i16 %.lhs.trunc.i.i91.i.i.i, 100
  %i.mq = urem i16 %i.mp, 100
  %i.mr = shl nuw nsw i16 %i.mq, 1
  %i.ms = zext nneg i16 %i.mr to i64
  %i.mt = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ms
  %i.mu = getelementptr i8, ptr %i.kp, i64 -21    ; 2 uses
  %i.mv = load <2 x i8>, ptr %i.kx, align 1, !tbaa !83, !noalias !3531
  %i.mw = load <2 x i8>, ptr %i.kz, align 1, !tbaa !83, !noalias !3531
  %i.mx = load <2 x i8>, ptr %i.md, align 1, !tbaa !83, !noalias !3531
  %i.my = load <2 x i8>, ptr %i.mh, align 1, !tbaa !83, !noalias !3531
  %i.mz = load <2 x i8>, ptr %i.mo, align 1, !tbaa !83, !noalias !3531
  %i.na = load <2 x i8>, ptr %i.mt, align 1, !tbaa !83, !noalias !3531
  %i.nb = shufflevector <2 x i8> %i.na, <2 x i8> %i.mz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nc = shufflevector <16 x i8> %i.nb, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 32, i8 poison, i8 poison, i8 58, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 poison, i32 poison, i32 23, i32 poison, i32 poison, i32 26, i32 poison, i32 poison, i32 29, i32 poison, i32 poison>
  %i.nd = shufflevector <2 x i8> %i.my, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ne = shufflevector <16 x i8> %i.nc, <16 x i8> %i.nd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 7, i32 poison, i32 poison, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.nf = shufflevector <2 x i8> %i.mx, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ng = shufflevector <16 x i8> %i.ne, <16 x i8> %i.nf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.nh = shufflevector <2 x i8> %i.mw, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ni = shufflevector <16 x i8> %i.ng, <16 x i8> %i.nh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 17, i32 13, i32 poison, i32 poison>
  %i.nj = shufflevector <2 x i8> %i.mv, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nk = shufflevector <16 x i8> %i.ni, <16 x i8> %i.nj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  store <16 x i8> %i.nk, ptr %i.mu, align 1, !tbaa !83, !noalias !3531
  %i.nl = icmp samesign ugt i32 %i.mk, 9999
  br i1 %i.nl, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i
  %i.nm = udiv i16 %.lhs.trunc.i.i91.i.i.i, 10000
  %i.nn = trunc nuw nsw i16 %i.nm to i8
  %i.no = or disjoint i8 %i.nn, 48
  %i.np = getelementptr i8, ptr %i.kp, i64 -22    ; 2 uses
  store i8 %i.no, ptr %i.np, align 1, !tbaa !83, !noalias !3531
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i
  %.4.i92.i.i.i = phi ptr [ %i.np, %bb.aj ], [ %i.mu, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i ] ; 2 uses
  br i1 %i.mj, label %bb.al, label %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEclINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeES2_E4ExecEPNSA_13KernelContextERKNSA_8ExecSpanEPNSA_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSR_EEET_lOST_.exit.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.nq = getelementptr inbounds i8, ptr %.4.i92.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.nq, align 1, !tbaa !83, !noalias !3531
  br label %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEclINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeES2_E4ExecEPNSA_13KernelContextERKNSA_8ExecSpanEPNSA_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSR_EEET_lOST_.exit.i.i.i

_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEclINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeES2_E4ExecEPNSA_13KernelContextERKNSA_8ExecSpanEPNSA_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSR_EEET_lOST_.exit.i.i.i: ; preds = %bb.al, %bb.ak
  %.5.i93.i.i.i = phi ptr [ %i.nq, %bb.al ], [ %.4.i92.i.i.i, %bb.ak ] ; 2 uses
  %i.nr = ptrtoint ptr %i.jg to i64
  %i.ns = ptrtoint ptr %.5.i93.i.i.i to i64
  %i.nt = sub i64 %i.nr, %i.ns
  %i.nu = trunc i64 %i.nt to i32
  call void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendEPKhi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %.0.val.8.val, ptr noundef nonnull %.5.i93.i.i.i, i32 noundef %i.nu)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !3531
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_13TimestampTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

bb.am:                                            ; preds = %bb.a
  %i.nv = add i64 %i.b, 1096193779200
  %spec.select.i.i108.i.i.i = icmp ult i64 %i.nv, 2068084742400
  %.sroa.gep.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 23 ; 2 uses
  %.sroa.gep52.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 22 ; 2 uses
  br i1 %spec.select.i.i108.i.i.i, label %bb.ao, label %bb.an, !prof !103

bb.an:                                            ; preds = %bb.am
  call fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_13TimestampTypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %i.b, ptr noundef nonnull readonly align 8 dereferenceable(8) %6)
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_13TimestampTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

bb.ao:                                            ; preds = %bb.am
  %i.nw = sdiv i64 %i.b, 86400                    ; 3 uses
  %i.nx = trunc nsw i64 %i.nw to i32              ; 2 uses
  %i.ny = mul nsw i64 %i.nw, 86400                ; 2 uses
  %.not46.i.i.i.i = icmp sgt i64 %i.ny, %i.b
  br i1 %.not46.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.neg.i.i.i109.i.i.i = mul nsw i64 %i.nw, -86400
  %i.nz = add nsw i64 %.neg.i.i.i109.i.i.i, %i.b
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %.neg.i125.i.i.i = add nsw i64 %i.b, 86400
  %i.oa = sub nsw i64 %.neg.i125.i.i.i, %i.ny
  %i.ob = add nsw i32 %i.nx, -1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.sroa.029.0.i.i.i.i = phi i64 [ %i.nz, %bb.ap ], [ %i.oa, %bb.aq ]
  %.sroa.030.0.i.i.i.i = phi i32 [ %i.nx, %bb.ap ], [ %i.ob, %bb.aq ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !3532
  %.not.i110.i.i.i = icmp eq i64 %.0.val.0.val.16.val, 0
  br i1 %.not.i110.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i8 90, ptr %.sroa.gep52.i.i.i.i, align 1, !tbaa !83, !noalias !3532
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.sroa.phi.i.i.i.i = phi ptr [ %.sroa.gep.i.i.i.i, %bb.ar ], [ %.sroa.gep52.i.i.i.i, %bb.as ] ; 5 uses
  %spec.select.i.i.i.i111.i.i.i = tail call i64 @llvm.abs.i64(i64 %.sroa.029.0.i.i.i.i, i1 true) ; 3 uses
  %i.oc = udiv i64 %spec.select.i.i.i.i111.i.i.i, 3600 ; 3 uses
  %i.od = udiv i64 %spec.select.i.i.i.i111.i.i.i, 60
  %.neg.i.i.i.i112.i.i.i = mul nsw i64 %i.oc, -60
  %i.oe = add nsw i64 %.neg.i.i.i.i112.i.i.i, %i.od ; 2 uses
  %.neg.i7.i.i.i113.i.i.i = mul nsw i64 %i.oc, -3600
  %i.of = add nsw i64 %.neg.i7.i.i.i113.i.i.i, %spec.select.i.i.i.i111.i.i.i
  %.neg.i8.i.i.i114.i.i.i = mul nsw i64 %i.oe, -60
  %i.og = add nsw i64 %i.of, %.neg.i8.i.i.i114.i.i.i
  %i.oh = shl nuw nsw i64 %i.og, 1
  %i.oi = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.oh ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 1
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !83, !noalias !3532
  %i.ol = getelementptr inbounds i8, ptr %.sroa.phi.i.i.i.i, i64 -1
  store i8 %i.ok, ptr %i.ol, align 1, !tbaa !83, !noalias !3532
  %i.om = load i8, ptr %i.oi, align 1, !tbaa !83, !noalias !3532
  %i.on = getelementptr inbounds i8, ptr %.sroa.phi.i.i.i.i, i64 -2
  store i8 %i.om, ptr %i.on, align 1, !tbaa !83, !noalias !3532
  %i.oo = getelementptr inbounds i8, ptr %.sroa.phi.i.i.i.i, i64 -3
  store i8 58, ptr %i.oo, align 1, !tbaa !83, !noalias !3532
  %i.op = shl nuw nsw i64 %i.oe, 1
  %i.oq = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.op
  %i.or = shl nuw nsw i64 %i.oc, 1
  %i.os = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.or
  %i.ot = add nsw i32 %.sroa.030.0.i.i.i.i, 719468 ; 2 uses
  %i.ou = icmp sgt i32 %.sroa.030.0.i.i.i.i, -719469
  %i.ov = add nuw nsw i32 %.sroa.030.0.i.i.i.i, 573372
  %i.ow = select i1 %i.ou, i32 %i.ot, i32 %i.ov
  %i.ox = sdiv i32 %i.ow, 146097                  ; 2 uses
  %.neg.i.i17.i115.i.i.i = mul nsw i32 %i.ox, -146097
  %i.oy = add nsw i32 %.neg.i.i17.i115.i.i.i, %i.ot ; 5 uses
  %i.oz = udiv i32 %i.oy, 1460
  %i.pa = udiv i32 %i.oy, 36524
  %i.pb = udiv i32 %i.oy, 146096
  %.neg18 = add nsw i32 %i.pa, %i.oy
  %i.pc = add nuw nsw i32 %i.pb, %i.oz
  %i.pd = sub nsw i32 %.neg18, %i.pc              ; 3 uses
  %i.pe = udiv i32 %i.pd, 365                     ; 2 uses
  %i.pf = mul nsw i32 %i.ox, 400
  %i.pg = add nsw i32 %i.pe, %i.pf
  %i.ph = udiv i32 %i.pd, 1460
  %i.pi = udiv i32 %i.pd, 36500
  %.neg36.i.i.i116.i.i.i = mul i32 %i.pe, -365
  %.neg37.i.i.i117.i.i.i = sub nsw i32 %i.oy, %i.ph
  %.neg25.i.i.i118.i.i.i = add nsw i32 %.neg37.i.i.i117.i.i.i, %i.pi
  %i.pj = add i32 %.neg25.i.i.i118.i.i.i, %.neg36.i.i.i116.i.i.i ; 2 uses
  %i.pk = mul i32 %i.pj, 5
  %i.pl = add i32 %i.pk, 2                        ; 2 uses
  %i.pm = udiv i32 %i.pl, 153                     ; 2 uses
  %i.pn = mul nuw i32 %i.pm, 153
  %i.po = add nuw i32 %i.pn, 2
  %i.pp = udiv i32 %i.po, 5
  %i.pq = sub i32 %i.pj, %i.pp
  %i.pr = icmp ult i32 %i.pl, 1530
  %.v.i.i.i119.i.i.i = select i1 %i.pr, i32 3, i32 -9
  %i.ps = add nsw i32 %.v.i.i.i119.i.i.i, %i.pm   ; 2 uses
  %i.pt = icmp ult i32 %i.ps, 3
  %i.pu = zext i1 %i.pt to i32
  %i.pv = add nsw i32 %i.pg, %i.pu
  %i.pw = shl i32 %i.pq, 24
  %.sroa.3.0.insert.ext.i.i.i120.i.i.i = add i32 %i.pw, 16777216
  %i.px = lshr exact i32 %.sroa.3.0.insert.ext.i.i.i120.i.i.i, 23
  %i.py = zext nneg i32 %i.px to i64
  %i.pz = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.py
  %i.qa = shl nsw i32 %i.ps, 1
  %i.qb = and i32 %i.qa, 510
  %i.qc = zext nneg i32 %i.qb to i64
  %i.qd = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.qc
  %sext.i.i121.i.i.i = shl i32 %i.pv, 16
  %i.qe = ashr exact i32 %sext.i.i121.i.i.i, 16   ; 2 uses
  %i.qf = icmp slt i32 %i.qe, 0
  %i.qg = tail call i32 @llvm.abs.i32(i32 %i.qe, i1 true) ; 2 uses
  %.lhs.trunc.i.i122.i.i.i = trunc nuw i32 %i.qg to i16 ; 3 uses
  %i.qh = urem i16 %.lhs.trunc.i.i122.i.i.i, 100
  %i.qi = shl nuw nsw i16 %i.qh, 1
  %i.qj = zext nneg i16 %i.qi to i64
  %i.qk = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.qj
  %i.ql = udiv i16 %.lhs.trunc.i.i122.i.i.i, 100
  %i.qm = urem i16 %i.ql, 100
  %i.qn = shl nuw nsw i16 %i.qm, 1
  %i.qo = zext nneg i16 %i.qn to i64
  %i.qp = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.qo
  %i.qq = getelementptr inbounds i8, ptr %.sroa.phi.i.i.i.i, i64 -19 ; 2 uses
  %i.qr = load <2 x i8>, ptr %i.oq, align 1, !tbaa !83, !noalias !3532
  %i.qs = load <2 x i8>, ptr %i.os, align 1, !tbaa !83, !noalias !3532
  %i.qt = load <2 x i8>, ptr %i.pz, align 1, !tbaa !83, !noalias !3532
  %i.qu = load <2 x i8>, ptr %i.qd, align 1, !tbaa !83, !noalias !3532
  %i.qv = load <2 x i8>, ptr %i.qk, align 1, !tbaa !83, !noalias !3532
  %i.qw = load <2 x i8>, ptr %i.qp, align 1, !tbaa !83, !noalias !3532
  %i.qx = shufflevector <2 x i8> %i.qw, <2 x i8> %i.qv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qy = shufflevector <16 x i8> %i.qx, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 32, i8 poison, i8 poison, i8 58, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 poison, i32 poison, i32 23, i32 poison, i32 poison, i32 26, i32 poison, i32 poison, i32 29, i32 poison, i32 poison>
  %i.qz = shufflevector <2 x i8> %i.qu, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ra = shufflevector <16 x i8> %i.qy, <16 x i8> %i.qz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 7, i32 poison, i32 poison, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.rb = shufflevector <2 x i8> %i.qt, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rc = shufflevector <16 x i8> %i.ra, <16 x i8> %i.rb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.rd = shufflevector <2 x i8> %i.qs, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.re = shufflevector <16 x i8> %i.rc, <16 x i8> %i.rd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 17, i32 13, i32 poison, i32 poison>
  %i.rf = shufflevector <2 x i8> %i.qr, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rg = shufflevector <16 x i8> %i.re, <16 x i8> %i.rf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  store <16 x i8> %i.rg, ptr %i.qq, align 1, !tbaa !83, !noalias !3532
  %i.rh = icmp samesign ugt i32 %i.qg, 9999
  br i1 %i.rh, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ri = udiv i16 %.lhs.trunc.i.i122.i.i.i, 10000
  %i.rj = trunc nuw nsw i16 %i.ri to i8
  %i.rk = or disjoint i8 %i.rj, 48
  %i.rl = getelementptr inbounds i8, ptr %.sroa.phi.i.i.i.i, i64 -20 ; 2 uses
  store i8 %i.rk, ptr %i.rl, align 1, !tbaa !83, !noalias !3532
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.1.i.i.i.i = phi ptr [ %i.rl, %bb.au ], [ %i.qq, %bb.at ] ; 2 uses
  br i1 %i.qf, label %bb.aw, label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i123.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.rm = getelementptr inbounds i8, ptr %.1.i.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.rm, align 1, !tbaa !83, !noalias !3532
  br label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i123.i.i.i

_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i123.i.i.i: ; preds = %bb.aw, %bb.av
  %.2.i.i.i.i = phi ptr [ %i.rm, %bb.aw ], [ %.1.i.i.i.i, %bb.av ] ; 2 uses
  %i.rn = ptrtoint ptr %.sroa.gep.i.i.i.i to i64
  %i.ro = ptrtoint ptr %.2.i.i.i.i to i64
  %i.rp = sub i64 %i.rn, %i.ro
  %i.rq = trunc i64 %i.rp to i32
  call void @_ZN5arrow17BaseBinaryBuilderINS_10BinaryTypeEE6AppendEPKhi(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %.0.val.8.val, ptr noundef nonnull %.2.i.i.i.i, i32 noundef %i.rq)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !3532
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_13TimestampTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_13TimestampTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit: ; preds = %bb.c, %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i.i.i.i, %bb.p, %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i48.i.i.i, %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEclINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeES2_E4ExecEPNSA_13KernelContextERKNSA_8ExecSpanEPNSA_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSR_EEET_lOST_.exit.i.i.i, %bb.an, %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i123.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !3528
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_10StringTypeENS_13TimestampTypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN5arrow8internal7ToCharsIlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 noundef %.0.val)
  %i.a = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.27, i64 noundef 21)
          to label %.noexc unwind label %bb.g     ; 8 uses

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 13 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !211, !alias.scope !3537
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !138  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread, label %bb.b

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread: ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !212  ; 5 uses
  %i.h = icmp samesign ult i64 %i.g, 16
  call void @llvm.assume(i1 %i.h)
  %i.i = add nuw nsw i64 %i.g, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.i, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.g, ptr %i.k, align 8, !tbaa !212, !alias.scope !3537
  store ptr %i.d, ptr %i.a, align 8, !tbaa !138
  store i64 0, ptr %i.j, align 8, !tbaa !212
  store i8 0, ptr %i.d, align 8, !tbaa !83
  %i.l = add nuw nsw i64 %i.g, 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.b:                                             ; preds = %.noexc
  store ptr %i.c, ptr %3, align 8, !tbaa !138, !alias.scope !3537
  %i.m = load i64, ptr %i.d, align 8, !tbaa !83
  store i64 %i.m, ptr %i.b, align 8, !tbaa !83, !alias.scope !3537
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !212 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %.pre.i, ptr %i.o, align 8, !tbaa !212, !alias.scope !3537
  store ptr %i.d, ptr %i.a, align 8, !tbaa !138
  store i64 0, ptr %i.n, align 8, !tbaa !212
  store i8 0, ptr %i.d, align 8, !tbaa !83
  call void @llvm.experimental.noalias.scope.decl(metadata !3538)
  %i.p = icmp eq i64 %.pre.i, 9223372036854775807
  br i1 %i.p, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #32
          to label %.noexc10 unwind label %bb.h

.noexc10:                                         ; preds = %bb.c
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.q = add nsw i64 %.pre.i, 1                   ; 2 uses
  %i.r = icmp eq ptr %i.c, %i.b
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.s = phi i64 [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ]
  %i.t = phi ptr [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ]
  %i.u = phi i64 [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ] ; 2 uses
  %i.v = phi ptr [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ]
  %i.w = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.w)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.x = load i64, ptr %i.b, align 8, !tbaa !83, !noalias !3538
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.y = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 3 uses
  %i.z = phi ptr [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.aa = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 2 uses
  %i.ab = phi ptr [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 4 uses
  %i.ac = phi i64 [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.y, %i.ac
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

end_hunk_1
begin_hunk_2_@_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Date64TypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_:bb.a
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #30
  %.pre = load ptr, ptr %2, align 8, !tbaa !138
  %.pre1 = load i64, ptr %i.ap, align 8, !tbaa !212
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %i.av = phi i64 [ %.pre1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.aw = phi ptr [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %.val = load ptr, ptr %1, align 8, !tbaa !5641
  invoke void @_ZN5arrow17BinaryViewBuilder6AppendEPKhl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(272) %.val, ptr noundef %i.aw, i64 noundef %i.av)
          to label %_ZZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Date64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clElENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit unwind label %bb.i

_ZZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Date64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clElENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.ax = load ptr, ptr %2, align 8, !tbaa !138   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ag
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Date64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clElENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit
  %i.az = load i64, ptr %i.ag, align 8, !tbaa !83
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Date64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clElENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.g:                                             ; preds = %bb.a
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.h:                                             ; preds = %bb.e, %bb.c
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %3, align 8, !tbaa !138   ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.b
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.h
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !83
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.g ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %i.bc, %bb.h ]
  %i.bh = load ptr, ptr %4, align 8, !tbaa !138   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !83
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %2, align 8, !tbaa !138   ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.ag
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.i
  %i.bp = load i64, ptr %i.ag, align 8, !tbaa !83
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %.pn6 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.bm, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn6
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10Time32TypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeES2_E4ExecEPNS5_13KernelContextERKNS5_8ExecSpanEPNS5_10ExecResultEEUliE_ZNSA_4ExecESC_SF_SH_EUlvE_EENS_6StatusERKNS_9ArraySpanEOT_OT0_ENKUllE_clEl(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 %.0.val.0.val.0.val, ptr %.0.val.8.val, ptr nofree readonly captures(none) %.8.val.0.val, i64 noundef %1) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.444", align 1   ; 7 uses
  %3 = alloca %"struct.std::array.440", align 1   ; 9 uses
  %4 = alloca %"struct.std::array.436", align 1   ; 9 uses
  %5 = alloca %"struct.std::array.412", align 1   ; 9 uses
  %6 = alloca %class.anon.708, align 8            ; 7 uses
  %i.a = getelementptr inbounds [4 x i8], ptr %.8.val.0.val, i64 %1
  %i.b = load i32, ptr %i.a, align 4, !tbaa !49   ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !5656
  store ptr %.0.val.8.val, ptr %6, align 8, !tbaa !504, !noalias !5656
  switch i32 %.0.val.0.val.0.val, label %bb.q [
    i32 3, label %bb.l
    i32 1, label %bb.b
    i32 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoaddr ptr %5 to i64                  ; 3 uses
  %spec.select.i.i.i.i.i = icmp ult i32 %i.b, 86400000
  br i1 %spec.select.i.i.i.i.i, label %bb.d, label %bb.c, !prof !103

bb.c:                                             ; preds = %bb.b
  call fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRiRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Time32TypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUliE_clEiEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 %i.b, ptr noundef nonnull readonly align 8 dereferenceable(8) %6)
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEi.exit

bb.d:                                             ; preds = %bb.b
  %i.d = zext nneg i32 %i.b to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !5657
  %.ptr26.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.e = udiv i32 %i.b, 3600000
  %.zext.i.i.i.i = zext nneg i32 %i.e to i64      ; 3 uses
  %i.f = udiv i32 %i.b, 60000
  %.zext23.i.i.i.i = zext nneg i32 %i.f to i64
  %.neg.i.i.i.i.i.i.i = mul nsw i64 %.zext.i.i.i.i, -60
  %i.g = add nsw i64 %.neg.i.i.i.i.i.i.i, %.zext23.i.i.i.i ; 2 uses
  %.neg.i7.i.i.i.i.i.i = mul nsw i64 %.zext.i.i.i.i, -3600000
  %i.h = add nsw i64 %.neg.i7.i.i.i.i.i.i, %i.d
  %.neg.i8.i.i.i.i.i.i = mul nsw i64 %i.g, -60000
  %i.i = add nsw i64 %i.h, %.neg.i8.i.i.i.i.i.i   ; 2 uses
  %.lhs.trunc24.i.i.i.i = trunc nsw i64 %i.i to i32
  %i.j = sdiv i32 %.lhs.trunc24.i.i.i.i, 1000
  %.sext.i.i.i.i = sext i32 %i.j to i64           ; 2 uses
  %.neg.i.i.i.i.i.i.i.i = mul nsw i64 %.sext.i.i.i.i, -1000
  %i.k = add nsw i64 %.neg.i.i.i.i.i.i.i.i, %i.i  ; 3 uses
  %i.l = icmp sgt i64 %i.k, 99
  br i1 %i.l, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i
  %.0.idx.i.i.i.i = phi i64 [ %.0.add.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ 12, %bb.d ] ; 2 uses
  %.08.i.i.i.i.i.i.i = phi i64 [ %i.t, %.lr.ph.i.i.i.i.i.i.i ], [ %i.k, %bb.d ] ; 3 uses
  %.0.ptr.i.i.i.i = getelementptr inbounds i8, ptr %5, i64 %.0.idx.i.i.i.i
  %i.m = urem i64 %.08.i.i.i.i.i.i.i, 100
  %i.n = shl nuw nsw i64 %i.m, 1
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !83, !noalias !5657
  %i.r = getelementptr inbounds i8, ptr %.0.ptr.i.i.i.i, i64 -1
  store i8 %i.q, ptr %i.r, align 1, !tbaa !83, !noalias !5657
  %i.s = load i8, ptr %i.o, align 1, !tbaa !83, !noalias !5657
  %.0.add.i.i.i.i = add nsw i64 %.0.idx.i.i.i.i, -2 ; 3 uses
  %.ptr27.i.i.i.i = getelementptr inbounds i8, ptr %5, i64 %.0.add.i.i.i.i
  store i8 %i.s, ptr %.ptr27.i.i.i.i, align 1, !tbaa !83, !noalias !5657
  %i.t = udiv i64 %.08.i.i.i.i.i.i.i, 100         ; 2 uses
  %i.u = icmp samesign ugt i64 %.08.i.i.i.i.i.i.i, 9999
  br i1 %i.u, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d
  %.1.idx.i.i.i.i = phi i64 [ 12, %bb.d ], [ %.0.add.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %i.k, %bb.d ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.v = icmp sgt i64 %.0.lcssa.i.i.i.i.i.i.i, 9
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.w = shl nuw nsw i64 %.0.lcssa.i.i.i.i.i.i.i, 1
  %i.x = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !83, !noalias !5657
  %.1.add.i.i.i.i = add nsw i64 %.1.idx.i.i.i.i, -1 ; 2 uses
  %.ptr25.i.i.i.i = getelementptr inbounds i8, ptr %5, i64 %.1.add.i.i.i.i
  store i8 %i.z, ptr %.ptr25.i.i.i.i, align 1, !tbaa !83, !noalias !5657
  %i.aa = load i8, ptr %i.x, align 1, !tbaa !83, !noalias !5657
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ab = trunc i64 %.0.lcssa.i.i.i.i.i.i.i to i8
  %i.ac = add i8 %i.ab, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.2.idx.i.i.i.i = phi i64 [ %.1.add.i.i.i.i, %bb.e ], [ %.1.idx.i.i.i.i, %bb.f ] ; 3 uses
  %.sink.i.i.i.i.i.i.i = phi i8 [ %i.aa, %bb.e ], [ %i.ac, %bb.f ]
  %i.ad = getelementptr i8, ptr %5, i64 %.2.idx.i.i.i.i ; 2 uses
  %.ptr.i.i.i.i = getelementptr i8, ptr %i.ad, i64 -1
  store i8 %.sink.i.i.i.i.i.i.i, ptr %.ptr.i.i.i.i, align 1, !tbaa !83, !noalias !5657
  %i.ae = icmp sgt i64 %.2.idx.i.i.i.i, 10
  br i1 %i.ae, label %.lr.ph.i.i.preheader.i.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i:                     ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i
  %i.af = add i64 %.2.idx.i.i.i.i, %i.c           ; 2 uses
  %i.ag = add i64 %i.af, -2
  %i.ah = add nuw i64 %i.c, 9
  %umin.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ah) ; 2 uses
  %i.ai = sub i64 %umin.i.i.i.i, %i.c
  %scevgep.i.i.i.i = getelementptr i8, ptr %5, i64 %i.ai ; 2 uses
  %i.aj = xor i64 %umin.i.i.i.i, -1
  %i.ak = add i64 %i.af, %i.aj
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i.i.i.i, i8 48, i64 %i.ak, i1 false), !tbaa !83, !noalias !5657
  %scevgep31.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i
  %i.al = phi ptr [ %i.ad, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i ], [ %scevgep31.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i ] ; 2 uses
  %i.am = shl nsw i64 %.sext.i.i.i.i, 1
  %i.an = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.am
  %i.ao = shl nuw nsw i64 %i.g, 1
  %i.ap = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ao
  %i.aq = shl nuw nsw i64 %.zext.i.i.i.i, 1
  %i.ar = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !83, !noalias !5657
  %i.au = getelementptr i8, ptr %i.al, i64 -9
  %i.av = load <2 x i8>, ptr %i.an, align 1, !tbaa !83, !noalias !5657
  %i.aw = load <2 x i8>, ptr %i.ap, align 1, !tbaa !83, !noalias !5657
  %i.ax = shufflevector <2 x i8> %i.aw, <2 x i8> %i.av, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison>
  %i.ay = shufflevector <8 x i8> %i.ax, <8 x i8> <i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 46>, <8 x i32> <i32 poison, i32 9, i32 2, i32 3, i32 12, i32 5, i32 6, i32 15>
  %i.az = insertelement <8 x i8> %i.ay, i8 %i.at, i64 0
  store <8 x i8> %i.az, ptr %i.au, align 1, !tbaa !83, !noalias !5657
  %i.ba = load i8, ptr %i.ar, align 1, !tbaa !83, !noalias !5657
  %i.bb = getelementptr i8, ptr %i.al, i64 -10    ; 3 uses
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !83, !noalias !5657
  %i.bc = ptrtoint ptr %.ptr26.i.i.i.i to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZN5arrow17BinaryViewBuilder6AppendEPKhl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(272) %.0.val.8.val, ptr noundef nonnull %i.bb, i64 noundef %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !5657
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEi.exit

bb.g:                                             ; preds = %bb.a
  %i.bf = ptrtoaddr ptr %4 to i64                 ; 3 uses
  %spec.select.i.i15.i.i.i = icmp sgt i32 %i.b, -1
  br i1 %spec.select.i.i15.i.i.i, label %bb.i, label %bb.h, !prof !103

bb.h:                                             ; preds = %bb.g
  call fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRiRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Time32TypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUliE_clEiEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 %i.b, ptr noundef nonnull readonly align 8 dereferenceable(8) %6)
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEi.exit

bb.i:                                             ; preds = %bb.g
  %i.bg = zext nneg i32 %i.b to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !5658
  %.ptr24.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 15
  %i.bh = udiv i32 %i.b, 60000000
  %.zext.i16.i.i.i = zext nneg i32 %i.bh to i64   ; 2 uses
  %.neg.i8.i.i.i17.i.i.i = mul nsw i64 %.zext.i16.i.i.i, -60000000
  %i.bi = add nsw i64 %.neg.i8.i.i.i17.i.i.i, %i.bg ; 2 uses
  %.lhs.trunc22.i.i.i.i = trunc nsw i64 %i.bi to i32
  %i.bj = sdiv i32 %.lhs.trunc22.i.i.i.i, 1000000
  %.sext.i18.i.i.i = sext i32 %i.bj to i64        ; 2 uses
  %.neg.i.i.i.i.i19.i.i.i = mul nsw i64 %.sext.i18.i.i.i, -1000000
  %i.bk = add nsw i64 %.neg.i.i.i.i.i19.i.i.i, %i.bi ; 3 uses
  %i.bl = icmp sgt i64 %i.bk, 99
  br i1 %i.bl, label %.lr.ph.i.i.i.i32.i.i.i, label %._crit_edge.i.i.i.i20.i.i.i

.lr.ph.i.i.i.i32.i.i.i:                           ; preds = %bb.i, %.lr.ph.i.i.i.i32.i.i.i
  %.0.idx.i33.i.i.i = phi i64 [ %.0.add.i36.i.i.i, %.lr.ph.i.i.i.i32.i.i.i ], [ 15, %bb.i ] ; 2 uses
  %.08.i.i.i.i34.i.i.i = phi i64 [ %i.bt, %.lr.ph.i.i.i.i32.i.i.i ], [ %i.bk, %bb.i ] ; 3 uses
  %.0.ptr.i35.i.i.i = getelementptr inbounds i8, ptr %4, i64 %.0.idx.i33.i.i.i
  %i.bm = urem i64 %.08.i.i.i.i34.i.i.i, 100
  %i.bn = shl nuw nsw i64 %i.bm, 1
  %i.bo = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !83, !noalias !5658
  %i.br = getelementptr inbounds i8, ptr %.0.ptr.i35.i.i.i, i64 -1
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !83, !noalias !5658
  %i.bs = load i8, ptr %i.bo, align 1, !tbaa !83, !noalias !5658
  %.0.add.i36.i.i.i = add nsw i64 %.0.idx.i33.i.i.i, -2 ; 3 uses
  %.ptr25.i37.i.i.i = getelementptr inbounds i8, ptr %4, i64 %.0.add.i36.i.i.i
  store i8 %i.bs, ptr %.ptr25.i37.i.i.i, align 1, !tbaa !83, !noalias !5658
  %i.bt = udiv i64 %.08.i.i.i.i34.i.i.i, 100      ; 2 uses
  %i.bu = icmp samesign ugt i64 %.08.i.i.i.i34.i.i.i, 9999
  br i1 %i.bu, label %.lr.ph.i.i.i.i32.i.i.i, label %._crit_edge.i.i.i.i20.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i20.i.i.i:                      ; preds = %.lr.ph.i.i.i.i32.i.i.i, %bb.i
  %.1.idx.i21.i.i.i = phi i64 [ 15, %bb.i ], [ %.0.add.i36.i.i.i, %.lr.ph.i.i.i.i32.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i22.i.i.i = phi i64 [ %i.bk, %bb.i ], [ %i.bt, %.lr.ph.i.i.i.i32.i.i.i ] ; 3 uses
  %i.bv = icmp sgt i64 %.0.lcssa.i.i.i.i22.i.i.i, 9
  br i1 %i.bv, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i.i20.i.i.i
  %i.bw = shl nuw nsw i64 %.0.lcssa.i.i.i.i22.i.i.i, 1
  %i.bx = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !83, !noalias !5658
  %.1.add.i31.i.i.i = add nsw i64 %.1.idx.i21.i.i.i, -1 ; 2 uses
  %.ptr23.i.i.i.i = getelementptr inbounds i8, ptr %4, i64 %.1.add.i31.i.i.i
  store i8 %i.bz, ptr %.ptr23.i.i.i.i, align 1, !tbaa !83, !noalias !5658
  %i.ca = load i8, ptr %i.bx, align 1, !tbaa !83, !noalias !5658
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i

bb.k:                                             ; preds = %._crit_edge.i.i.i.i20.i.i.i
  %i.cb = trunc i64 %.0.lcssa.i.i.i.i22.i.i.i to i8
  %i.cc = add i8 %i.cb, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i: ; preds = %bb.k, %bb.j
  %.2.idx.i24.i.i.i = phi i64 [ %.1.add.i31.i.i.i, %bb.j ], [ %.1.idx.i21.i.i.i, %bb.k ] ; 3 uses
  %.sink.i.i.i.i25.i.i.i = phi i8 [ %i.ca, %bb.j ], [ %i.cc, %bb.k ]
  %i.cd = getelementptr i8, ptr %4, i64 %.2.idx.i24.i.i.i ; 2 uses
  %.ptr.i26.i.i.i = getelementptr i8, ptr %i.cd, i64 -1
  store i8 %.sink.i.i.i.i25.i.i.i, ptr %.ptr.i26.i.i.i, align 1, !tbaa !83, !noalias !5658
  %i.ce = icmp sgt i64 %.2.idx.i24.i.i.i, 10
  br i1 %i.ce, label %.lr.ph.i.i.preheader.i28.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

.lr.ph.i.i.preheader.i28.i.i.i:                   ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i
  %i.cf = add i64 %.2.idx.i24.i.i.i, %i.bf        ; 2 uses
  %i.cg = add i64 %i.cf, -2
  %i.ch = add nuw i64 %i.bf, 9
  %umin.i29.i.i.i = call i64 @llvm.umin.i64(i64 %i.cg, i64 %i.ch) ; 2 uses
  %i.ci = sub i64 %umin.i29.i.i.i, %i.bf
  %scevgep.i30.i.i.i = getelementptr i8, ptr %4, i64 %i.ci ; 2 uses
  %i.cj = xor i64 %umin.i29.i.i.i, -1
  %i.ck = add i64 %i.cf, %i.cj
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i30.i.i.i, i8 48, i64 %i.ck, i1 false), !tbaa !83, !noalias !5658
  %scevgep29.i.i.i.i = getelementptr i8, ptr %scevgep.i30.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i28.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i
  %i.cl = phi ptr [ %i.cd, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i ], [ %scevgep29.i.i.i.i, %.lr.ph.i.i.preheader.i28.i.i.i ] ; 2 uses
  %i.cm = shl nsw i64 %.sext.i18.i.i.i, 1
  %i.cn = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.cm
  %i.co = shl nuw nsw i64 %.zext.i16.i.i.i, 1
  %i.cp = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.co
  %i.cq = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 1), align 1, !tbaa !83, !noalias !5658
  %i.cr = getelementptr i8, ptr %i.cl, i64 -9
  %i.cs = load <2 x i8>, ptr %i.cn, align 1, !tbaa !83, !noalias !5658
  %i.ct = load <2 x i8>, ptr %i.cp, align 1, !tbaa !83, !noalias !5658
  %i.cu = shufflevector <2 x i8> %i.ct, <2 x i8> %i.cs, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison>
  %i.cv = shufflevector <8 x i8> %i.cu, <8 x i8> <i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 46>, <8 x i32> <i32 poison, i32 9, i32 2, i32 3, i32 12, i32 5, i32 6, i32 15>
  %i.cw = insertelement <8 x i8> %i.cv, i8 %i.cq, i64 0
  store <8 x i8> %i.cw, ptr %i.cr, align 1, !tbaa !83, !noalias !5658
  %i.cx = load i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, align 1, !tbaa !83, !noalias !5658
  %i.cy = getelementptr i8, ptr %i.cl, i64 -10    ; 3 uses
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !83, !noalias !5658
  %i.cz = ptrtoint ptr %.ptr24.i.i.i.i to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  call void @_ZN5arrow17BinaryViewBuilder6AppendEPKhl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(272) %.0.val.8.val, ptr noundef nonnull %i.cy, i64 noundef %i.db)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !5658
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEi.exit

bb.l:                                             ; preds = %bb.a
  %i.dc = ptrtoaddr ptr %3 to i64                 ; 3 uses
  %spec.select.i.i38.i.i.i = icmp sgt i32 %i.b, -1
  br i1 %spec.select.i.i38.i.i.i, label %bb.n, label %bb.m, !prof !103

bb.m:                                             ; preds = %bb.l
  call fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRiRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Time32TypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUliE_clEiEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 %i.b, ptr noundef nonnull readonly align 8 dereferenceable(8) %6)
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEi.exit

bb.n:                                             ; preds = %bb.l
  %i.dd = zext nneg i32 %i.b to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !5659
  %.ptr23.i39.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.de = udiv i32 %i.b, 1000000000
  %.zext.i40.i.i.i = zext nneg i32 %i.de to i64   ; 2 uses
  %.neg.i.i.i.i.i41.i.i.i = mul nsw i64 %.zext.i40.i.i.i, -1000000000
  %i.df = add nsw i64 %.neg.i.i.i.i.i41.i.i.i, %i.dd ; 3 uses
  %i.dg = icmp sgt i64 %i.df, 99
  br i1 %i.dg, label %.lr.ph.i.i.i.i54.i.i.i, label %._crit_edge.i.i.i.i42.i.i.i

.lr.ph.i.i.i.i54.i.i.i:                           ; preds = %bb.n, %.lr.ph.i.i.i.i54.i.i.i
  %.0.idx.i55.i.i.i = phi i64 [ %.0.add.i58.i.i.i, %.lr.ph.i.i.i.i54.i.i.i ], [ 18, %bb.n ] ; 2 uses
  %.08.i.i.i.i56.i.i.i = phi i64 [ %i.do, %.lr.ph.i.i.i.i54.i.i.i ], [ %i.df, %bb.n ] ; 3 uses
  %.0.ptr.i57.i.i.i = getelementptr inbounds i8, ptr %3, i64 %.0.idx.i55.i.i.i
  %i.dh = urem i64 %.08.i.i.i.i56.i.i.i, 100
  %i.di = shl nuw nsw i64 %i.dh, 1
  %i.dj = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.di ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !83, !noalias !5659
  %i.dm = getelementptr inbounds i8, ptr %.0.ptr.i57.i.i.i, i64 -1
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !83, !noalias !5659
  %i.dn = load i8, ptr %i.dj, align 1, !tbaa !83, !noalias !5659
  %.0.add.i58.i.i.i = add nsw i64 %.0.idx.i55.i.i.i, -2 ; 3 uses
  %.ptr24.i59.i.i.i = getelementptr inbounds i8, ptr %3, i64 %.0.add.i58.i.i.i
  store i8 %i.dn, ptr %.ptr24.i59.i.i.i, align 1, !tbaa !83, !noalias !5659
  %i.do = udiv i64 %.08.i.i.i.i56.i.i.i, 100      ; 2 uses
  %i.dp = icmp samesign ugt i64 %.08.i.i.i.i56.i.i.i, 9999
  br i1 %i.dp, label %.lr.ph.i.i.i.i54.i.i.i, label %._crit_edge.i.i.i.i42.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i42.i.i.i:                      ; preds = %.lr.ph.i.i.i.i54.i.i.i, %bb.n
  %.1.idx.i43.i.i.i = phi i64 [ 18, %bb.n ], [ %.0.add.i58.i.i.i, %.lr.ph.i.i.i.i54.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i44.i.i.i = phi i64 [ %i.df, %bb.n ], [ %i.do, %.lr.ph.i.i.i.i54.i.i.i ] ; 3 uses
  %i.dq = icmp sgt i64 %.0.lcssa.i.i.i.i44.i.i.i, 9
  br i1 %i.dq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i.i.i42.i.i.i
  %i.dr = shl nuw nsw i64 %.0.lcssa.i.i.i.i44.i.i.i, 1
  %i.ds = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.dr ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !83, !noalias !5659
  %.1.add.i53.i.i.i = add nsw i64 %.1.idx.i43.i.i.i, -1 ; 2 uses
  %.ptr22.i.i.i.i = getelementptr inbounds i8, ptr %3, i64 %.1.add.i53.i.i.i
  store i8 %i.du, ptr %.ptr22.i.i.i.i, align 1, !tbaa !83, !noalias !5659
  %i.dv = load i8, ptr %i.ds, align 1, !tbaa !83, !noalias !5659
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i45.i.i.i

bb.p:                                             ; preds = %._crit_edge.i.i.i.i42.i.i.i
  %i.dw = trunc i64 %.0.lcssa.i.i.i.i44.i.i.i to i8
  %i.dx = add i8 %i.dw, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i45.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i45.i.i.i: ; preds = %bb.p, %bb.o
  %.2.idx.i46.i.i.i = phi i64 [ %.1.add.i53.i.i.i, %bb.o ], [ %.1.idx.i43.i.i.i, %bb.p ] ; 3 uses
  %.sink.i.i.i.i47.i.i.i = phi i8 [ %i.dv, %bb.o ], [ %i.dx, %bb.p ]
  %i.dy = getelementptr i8, ptr %3, i64 %.2.idx.i46.i.i.i ; 2 uses
  %.ptr.i48.i.i.i = getelementptr i8, ptr %i.dy, i64 -1
  store i8 %.sink.i.i.i.i47.i.i.i, ptr %.ptr.i48.i.i.i, align 1, !tbaa !83, !noalias !5659
  %i.dz = icmp sgt i64 %.2.idx.i46.i.i.i, 10
  br i1 %i.dz, label %.lr.ph.i.i.preheader.i50.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

.lr.ph.i.i.preheader.i50.i.i.i:                   ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i45.i.i.i
  %i.ea = add i64 %.2.idx.i46.i.i.i, %i.dc        ; 2 uses
  %i.eb = add i64 %i.ea, -2
  %i.ec = add nuw i64 %i.dc, 9
  %umin.i51.i.i.i = call i64 @llvm.umin.i64(i64 %i.eb, i64 %i.ec) ; 2 uses
  %i.ed = sub i64 %umin.i51.i.i.i, %i.dc
  %scevgep.i52.i.i.i = getelementptr i8, ptr %3, i64 %i.ed ; 2 uses
  %i.ee = xor i64 %umin.i51.i.i.i, -1
  %i.ef = add i64 %i.ea, %i.ee
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i52.i.i.i, i8 48, i64 %i.ef, i1 false), !tbaa !83, !noalias !5659
  %scevgep28.i.i.i.i = getelementptr i8, ptr %scevgep.i52.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i50.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i45.i.i.i
  %i.eg = phi ptr [ %i.dy, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i45.i.i.i ], [ %scevgep28.i.i.i.i, %.lr.ph.i.i.preheader.i50.i.i.i ] ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 -2
  store i8 46, ptr %i.eh, align 1, !tbaa !83, !noalias !5659
  %i.ei = shl nuw nsw i64 %.zext.i40.i.i.i, 1
  %i.ej = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ei
  %i.ek = getelementptr i8, ptr %i.eg, i64 -10    ; 3 uses
  %i.el = load <2 x i8>, ptr %i.ej, align 1, !tbaa !83, !noalias !5659
  %i.em = load <2 x i8>, ptr @_ZN5arrow8internal6detail11digit_pairsE, align 1, !tbaa !83, !noalias !5659
  %i.en = shufflevector <2 x i8> %i.em, <2 x i8> %i.el, <8 x i32> <i32 0, i32 1, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3>
  %i.eo = shufflevector <8 x i8> %i.en, <8 x i8> <i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison>, <8 x i32> <i32 0, i32 1, i32 10, i32 3, i32 4, i32 13, i32 6, i32 7>
  store <8 x i8> %i.eo, ptr %i.ek, align 1, !tbaa !83, !noalias !5659
  %i.ep = ptrtoint ptr %.ptr23.i39.i.i.i to i64
  %i.eq = ptrtoint ptr %i.ek to i64
  %i.er = sub i64 %i.ep, %i.eq
  call void @_ZN5arrow17BinaryViewBuilder6AppendEPKhl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(272) %.0.val.8.val, ptr noundef nonnull %i.ek, i64 noundef %i.er)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !5659
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEi.exit

bb.q:                                             ; preds = %bb.a
  %spec.select.i.i60.i.i.i = icmp ult i32 %i.b, 86400
  br i1 %spec.select.i.i60.i.i.i, label %bb.s, label %bb.r, !prof !103

bb.r:                                             ; preds = %bb.q
  call fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRiRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Time32TypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUliE_clEiEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 %i.b, ptr noundef nonnull readonly align 8 dereferenceable(8) %6)
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEi.exit

bb.s:                                             ; preds = %bb.q
  %i.es = zext nneg i32 %i.b to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !5660
  %i.et = udiv i32 %i.b, 3600
  %.zext.i61.i.i.i = zext nneg i32 %i.et to i64   ; 3 uses
  %i.eu = udiv i32 %i.b, 60
  %.zext16.i.i.i.i = zext nneg i32 %i.eu to i64
  %.neg.i.i.i.i62.i.i.i = mul nsw i64 %.zext.i61.i.i.i, -60
  %i.ev = add nsw i64 %.neg.i.i.i.i62.i.i.i, %.zext16.i.i.i.i ; 2 uses
  %.neg.i7.i.i.i63.i.i.i = mul nsw i64 %.zext.i61.i.i.i, -3600
  %i.ew = add nsw i64 %.neg.i7.i.i.i63.i.i.i, %i.es
  %.neg.i8.i.i.i64.i.i.i = mul nsw i64 %i.ev, -60
  %i.ex = add nsw i64 %i.ew, %.neg.i8.i.i.i64.i.i.i
  %i.ey = shl nuw nsw i64 %i.ex, 1
  %i.ez = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ey ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !83, !noalias !5660
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !83, !noalias !5660
  %i.fd = load i8, ptr %i.ez, align 1, !tbaa !83, !noalias !5660
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !83, !noalias !5660
  %i.ff = shl nuw nsw i64 %i.ev, 1
  %i.fg = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.fi = load <2 x i8>, ptr %i.fg, align 1, !tbaa !83, !noalias !5660
  %i.fj = shufflevector <2 x i8> %i.fi, <2 x i8> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.fk = shufflevector <4 x i8> <i8 58, i8 poison, i8 poison, i8 58>, <4 x i8> %i.fj, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i8> %i.fk, ptr %i.fh, align 1, !tbaa !83, !noalias !5660
  %i.fl = shl nuw nsw i64 %.zext.i61.i.i.i, 1
  %i.fm = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fl ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !83, !noalias !5660
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.fo, ptr %i.fp, align 1, !tbaa !83, !noalias !5660
  %i.fq = load i8, ptr %i.fm, align 1, !tbaa !83, !noalias !5660
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !83, !noalias !5660
  call void @_ZN5arrow17BinaryViewBuilder6AppendEPKhl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(272) %.0.val.8.val, ptr noundef nonnull %i.fr, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !5660
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEi.exit

_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEi.exit: ; preds = %bb.c, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i, %bb.h, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i, %bb.m, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !5656
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRiRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Time32TypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUliE_clEiEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN5arrow8internal7ToCharsIiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i32 noundef %.0.val)
  %i.a = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.27, i64 noundef 21)
          to label %.noexc unwind label %bb.g     ; 8 uses

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 13 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !211, !alias.scope !5665
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !138  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread, label %bb.b

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread: ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !212  ; 5 uses
  %i.h = icmp samesign ult i64 %i.g, 16
  call void @llvm.assume(i1 %i.h)
  %i.i = add nuw nsw i64 %i.g, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.i, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.g, ptr %i.k, align 8, !tbaa !212, !alias.scope !5665
  store ptr %i.d, ptr %i.a, align 8, !tbaa !138
  store i64 0, ptr %i.j, align 8, !tbaa !212
  store i8 0, ptr %i.d, align 8, !tbaa !83
  %i.l = add nuw nsw i64 %i.g, 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.b:                                             ; preds = %.noexc
  store ptr %i.c, ptr %3, align 8, !tbaa !138, !alias.scope !5665
  %i.m = load i64, ptr %i.d, align 8, !tbaa !83
  store i64 %i.m, ptr %i.b, align 8, !tbaa !83, !alias.scope !5665
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !212 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %.pre.i, ptr %i.o, align 8, !tbaa !212, !alias.scope !5665
  store ptr %i.d, ptr %i.a, align 8, !tbaa !138
  store i64 0, ptr %i.n, align 8, !tbaa !212
  store i8 0, ptr %i.d, align 8, !tbaa !83
  call void @llvm.experimental.noalias.scope.decl(metadata !5666)
  %i.p = icmp eq i64 %.pre.i, 9223372036854775807
  br i1 %i.p, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #32
          to label %.noexc10 unwind label %bb.h

.noexc10:                                         ; preds = %bb.c
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.q = add nsw i64 %.pre.i, 1                   ; 2 uses
  %i.r = icmp eq ptr %i.c, %i.b
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.s = phi i64 [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ]
  %i.t = phi ptr [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ]
  %i.u = phi i64 [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ] ; 2 uses
  %i.v = phi ptr [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ]
  %i.w = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.w)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.x = load i64, ptr %i.b, align 8, !tbaa !83, !noalias !5666
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.y = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 3 uses
  %i.z = phi ptr [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.aa = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 2 uses
  %i.ab = phi ptr [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 4 uses
  %i.ac = phi i64 [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.y, %i.ac
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  store i8 62, ptr %i.ad, align 1, !tbaa !83, !noalias !5666
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.aa, i64 noundef 0, ptr noundef nonnull @.str.28, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.e, %bb.d
  store i64 %i.y, ptr %i.ab, align 8, !tbaa !212, !noalias !5666
  %i.ae = load ptr, ptr %3, align 8, !tbaa !138, !noalias !5666
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.y
  store i8 0, ptr %i.af, align 1, !tbaa !83, !noalias !5666
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.ag, ptr %2, align 8, !tbaa !211, !alias.scope !5666
  %i.ah = load ptr, ptr %3, align 8, !tbaa !138, !noalias !5666 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, %i.b
  br i1 %i.ai, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.aj = load i64, ptr %i.ab, align 8, !tbaa !212, !noalias !5666 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %i.al, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.ah, ptr %2, align 8, !tbaa !138, !alias.scope !5666
  %i.am = load i64, ptr %i.b, align 8, !tbaa !83, !noalias !5666
  store i64 %i.am, ptr %i.ag, align 8, !tbaa !83, !alias.scope !5666
  %.pre.i9 = load i64, ptr %i.ab, align 8, !tbaa !212, !noalias !5666
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, %bb.f
  %i.an = phi ptr [ %i.ag, %bb.f ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ]
  %i.ao = phi i64 [ %i.aj, %bb.f ], [ %.pre.i9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !212, !alias.scope !5666
  store ptr %i.b, ptr %3, align 8, !tbaa !138, !noalias !5666
  store i64 0, ptr %i.ab, align 8, !tbaa !212, !noalias !5666
  store i8 0, ptr %i.b, align 8, !tbaa !83, !noalias !5666
  %i.aq = load ptr, ptr %4, align 8, !tbaa !138   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !83
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #30
  %.pre = load ptr, ptr %2, align 8, !tbaa !138
  %.pre1 = load i64, ptr %i.ap, align 8, !tbaa !212
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %i.av = phi i64 [ %.pre1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.aw = phi ptr [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %.val = load ptr, ptr %1, align 8, !tbaa !5668
  invoke void @_ZN5arrow17BinaryViewBuilder6AppendEPKhl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(272) %.val, ptr noundef %i.aw, i64 noundef %i.av)
          to label %_ZZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEiENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit unwind label %bb.i

_ZZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEiENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.ax = load ptr, ptr %2, align 8, !tbaa !138   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ag
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEiENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit
  %i.az = load i64, ptr %i.ag, align 8, !tbaa !83
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEiENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.g:                                             ; preds = %bb.a
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.h:                                             ; preds = %bb.e, %bb.c
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %3, align 8, !tbaa !138   ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.b
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.h
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !83
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.g ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %i.bc, %bb.h ]
  %i.bh = load ptr, ptr %4, align 8, !tbaa !138   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !83
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %2, align 8, !tbaa !138   ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.ag
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.i
  %i.bp = load i64, ptr %i.ag, align 8, !tbaa !83
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %.pn6 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.bm, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn6
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10Time64TypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeES2_E4ExecEPNS5_13KernelContextERKNS5_8ExecSpanEPNS5_10ExecResultEEUllE_ZNSA_4ExecESC_SF_SH_EUlvE_EENS_6StatusERKNS_9ArraySpanEOT_OT0_ENKUllE_clEl(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 %.0.val.0.val.0.val, ptr %.0.val.8.val, ptr nofree readonly captures(none) %.8.val.0.val, i64 noundef %1) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.444", align 1   ; 7 uses
  %3 = alloca %"struct.std::array.440", align 1   ; 9 uses
  %4 = alloca %"struct.std::array.436", align 1   ; 9 uses
  %5 = alloca %"struct.std::array.412", align 1   ; 9 uses
  %6 = alloca %class.anon.712, align 8            ; 7 uses
  %i.a = getelementptr inbounds [8 x i8], ptr %.8.val.0.val, i64 %1
  %i.b = load i64, ptr %i.a, align 8, !tbaa !195  ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !5683
  store ptr %.0.val.8.val, ptr %6, align 8, !tbaa !504, !noalias !5683
  switch i32 %.0.val.0.val.0.val, label %bb.q [
    i32 3, label %bb.l
    i32 1, label %bb.b
    i32 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoaddr ptr %5 to i64                  ; 3 uses
  %spec.select.i.i.i.i.i = icmp ult i64 %i.b, 86400000
  br i1 %spec.select.i.i.i.i.i, label %bb.d, label %bb.c, !prof !103

bb.c:                                             ; preds = %bb.b
  call fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Time64TypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %i.b, ptr noundef nonnull readonly align 8 dereferenceable(8) %6)
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !5684
  %.ptr26.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.lhs.trunc.i.i.i.i = trunc nuw nsw i64 %i.b to i32 ; 2 uses
  %i.d = udiv i32 %.lhs.trunc.i.i.i.i, 3600000
  %.zext.i.i.i.i = zext nneg i32 %i.d to i64      ; 3 uses
  %i.e = udiv i32 %.lhs.trunc.i.i.i.i, 60000
  %.zext23.i.i.i.i = zext nneg i32 %i.e to i64
  %.neg.i.i.i.i.i.i.i = mul nsw i64 %.zext.i.i.i.i, -60
  %i.f = add nsw i64 %.neg.i.i.i.i.i.i.i, %.zext23.i.i.i.i ; 2 uses
  %.neg.i7.i.i.i.i.i.i = mul nsw i64 %.zext.i.i.i.i, -3600000
  %i.g = add nsw i64 %.neg.i7.i.i.i.i.i.i, %i.b
  %.neg.i8.i.i.i.i.i.i = mul nsw i64 %i.f, -60000
  %i.h = add nsw i64 %i.g, %.neg.i8.i.i.i.i.i.i   ; 2 uses
  %.lhs.trunc24.i.i.i.i = trunc nsw i64 %i.h to i32
  %i.i = sdiv i32 %.lhs.trunc24.i.i.i.i, 1000
  %.sext.i.i.i.i = sext i32 %i.i to i64           ; 2 uses
  %.neg.i.i.i.i.i.i.i.i = mul nsw i64 %.sext.i.i.i.i, -1000
  %i.j = add nsw i64 %.neg.i.i.i.i.i.i.i.i, %i.h  ; 3 uses
  %i.k = icmp sgt i64 %i.j, 99
  br i1 %i.k, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i
  %.0.idx.i.i.i.i = phi i64 [ %.0.add.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ 12, %bb.d ] ; 2 uses
  %.08.i.i.i.i.i.i.i = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.i.i ], [ %i.j, %bb.d ] ; 3 uses
  %.0.ptr.i.i.i.i = getelementptr inbounds i8, ptr %5, i64 %.0.idx.i.i.i.i
  %i.l = urem i64 %.08.i.i.i.i.i.i.i, 100
  %i.m = shl nuw nsw i64 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !83, !noalias !5684
  %i.q = getelementptr inbounds i8, ptr %.0.ptr.i.i.i.i, i64 -1
  store i8 %i.p, ptr %i.q, align 1, !tbaa !83, !noalias !5684
  %i.r = load i8, ptr %i.n, align 1, !tbaa !83, !noalias !5684
  %.0.add.i.i.i.i = add nsw i64 %.0.idx.i.i.i.i, -2 ; 3 uses
  %.ptr27.i.i.i.i = getelementptr inbounds i8, ptr %5, i64 %.0.add.i.i.i.i
  store i8 %i.r, ptr %.ptr27.i.i.i.i, align 1, !tbaa !83, !noalias !5684
  %i.s = udiv i64 %.08.i.i.i.i.i.i.i, 100         ; 2 uses
  %i.t = icmp samesign ugt i64 %.08.i.i.i.i.i.i.i, 9999
  br i1 %i.t, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d
  %.1.idx.i.i.i.i = phi i64 [ 12, %bb.d ], [ %.0.add.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %i.j, %bb.d ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.u = icmp sgt i64 %.0.lcssa.i.i.i.i.i.i.i, 9
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.v = shl nuw nsw i64 %.0.lcssa.i.i.i.i.i.i.i, 1
  %i.w = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !83, !noalias !5684
  %.1.add.i.i.i.i = add nsw i64 %.1.idx.i.i.i.i, -1 ; 2 uses
  %.ptr25.i.i.i.i = getelementptr inbounds i8, ptr %5, i64 %.1.add.i.i.i.i
  store i8 %i.y, ptr %.ptr25.i.i.i.i, align 1, !tbaa !83, !noalias !5684
  %i.z = load i8, ptr %i.w, align 1, !tbaa !83, !noalias !5684
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.aa = trunc i64 %.0.lcssa.i.i.i.i.i.i.i to i8
  %i.ab = add i8 %i.aa, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.2.idx.i.i.i.i = phi i64 [ %.1.add.i.i.i.i, %bb.e ], [ %.1.idx.i.i.i.i, %bb.f ] ; 3 uses
  %.sink.i.i.i.i.i.i.i = phi i8 [ %i.z, %bb.e ], [ %i.ab, %bb.f ]
  %i.ac = getelementptr i8, ptr %5, i64 %.2.idx.i.i.i.i ; 2 uses
  %.ptr.i.i.i.i = getelementptr i8, ptr %i.ac, i64 -1
  store i8 %.sink.i.i.i.i.i.i.i, ptr %.ptr.i.i.i.i, align 1, !tbaa !83, !noalias !5684
  %i.ad = icmp sgt i64 %.2.idx.i.i.i.i, 10
  br i1 %i.ad, label %.lr.ph.i.i.preheader.i.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i:                     ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i
  %i.ae = add i64 %.2.idx.i.i.i.i, %i.c           ; 2 uses
  %i.af = add i64 %i.ae, -2
  %i.ag = add nuw i64 %i.c, 9
  %umin.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.af, i64 %i.ag) ; 2 uses
  %i.ah = sub i64 %umin.i.i.i.i, %i.c
  %scevgep.i.i.i.i = getelementptr i8, ptr %5, i64 %i.ah ; 2 uses
  %i.ai = xor i64 %umin.i.i.i.i, -1
  %i.aj = add i64 %i.ae, %i.ai
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i.i.i.i, i8 48, i64 %i.aj, i1 false), !tbaa !83, !noalias !5684
  %scevgep31.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i
  %i.ak = phi ptr [ %i.ac, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i ], [ %scevgep31.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i ] ; 2 uses
  %i.al = shl nsw i64 %.sext.i.i.i.i, 1
  %i.am = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.al
  %i.an = shl nuw nsw i64 %i.f, 1
  %i.ao = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.an
  %i.ap = shl nuw nsw i64 %.zext.i.i.i.i, 1
  %i.aq = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !83, !noalias !5684
  %i.at = getelementptr i8, ptr %i.ak, i64 -9
  %i.au = load <2 x i8>, ptr %i.am, align 1, !tbaa !83, !noalias !5684
  %i.av = load <2 x i8>, ptr %i.ao, align 1, !tbaa !83, !noalias !5684
  %i.aw = shufflevector <2 x i8> %i.av, <2 x i8> %i.au, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison>
  %i.ax = shufflevector <8 x i8> %i.aw, <8 x i8> <i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 46>, <8 x i32> <i32 poison, i32 9, i32 2, i32 3, i32 12, i32 5, i32 6, i32 15>
  %i.ay = insertelement <8 x i8> %i.ax, i8 %i.as, i64 0
  store <8 x i8> %i.ay, ptr %i.at, align 1, !tbaa !83, !noalias !5684
  %i.az = load i8, ptr %i.aq, align 1, !tbaa !83, !noalias !5684
  %i.ba = getelementptr i8, ptr %i.ak, i64 -10    ; 3 uses
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !83, !noalias !5684
  %i.bb = ptrtoint ptr %.ptr26.i.i.i.i to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  call void @_ZN5arrow17BinaryViewBuilder6AppendEPKhl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(272) %.0.val.8.val, ptr noundef nonnull %i.ba, i64 noundef %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !5684
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

bb.g:                                             ; preds = %bb.a
  %i.be = ptrtoaddr ptr %4 to i64                 ; 3 uses
  %spec.select.i.i15.i.i.i = icmp ult i64 %i.b, 86400000000
  br i1 %spec.select.i.i15.i.i.i, label %bb.i, label %bb.h, !prof !103

bb.h:                                             ; preds = %bb.g
  call fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Time64TypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %i.b, ptr noundef nonnull readonly align 8 dereferenceable(8) %6)
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !5685
  %.ptr23.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 15
  %i.bf = udiv i64 %i.b, 3600000000               ; 3 uses
  %i.bg = udiv i64 %i.b, 60000000
  %.neg.i.i.i.i16.i.i.i = mul nsw i64 %i.bf, -60
  %i.bh = add nsw i64 %.neg.i.i.i.i16.i.i.i, %i.bg ; 2 uses
  %.neg.i7.i.i.i17.i.i.i = mul nsw i64 %i.bf, -3600000000
  %i.bi = add nsw i64 %.neg.i7.i.i.i17.i.i.i, %i.b
  %.neg.i8.i.i.i18.i.i.i = mul nsw i64 %i.bh, -60000000
  %i.bj = add nsw i64 %i.bi, %.neg.i8.i.i.i18.i.i.i ; 2 uses
  %i.bk = sdiv i64 %i.bj, 1000000                 ; 2 uses
  %.neg.i.i.i.i.i19.i.i.i = mul nsw i64 %i.bk, -1000000
  %i.bl = add nsw i64 %.neg.i.i.i.i.i19.i.i.i, %i.bj ; 3 uses
  %i.bm = icmp sgt i64 %i.bl, 99
  br i1 %i.bm, label %.lr.ph.i.i.i.i32.i.i.i, label %._crit_edge.i.i.i.i20.i.i.i

.lr.ph.i.i.i.i32.i.i.i:                           ; preds = %bb.i, %.lr.ph.i.i.i.i32.i.i.i
  %.0.idx.i33.i.i.i = phi i64 [ %.0.add.i36.i.i.i, %.lr.ph.i.i.i.i32.i.i.i ], [ 15, %bb.i ] ; 2 uses
  %.08.i.i.i.i34.i.i.i = phi i64 [ %i.bu, %.lr.ph.i.i.i.i32.i.i.i ], [ %i.bl, %bb.i ] ; 3 uses
  %.0.ptr.i35.i.i.i = getelementptr inbounds i8, ptr %4, i64 %.0.idx.i33.i.i.i
  %i.bn = urem i64 %.08.i.i.i.i34.i.i.i, 100
  %i.bo = shl nuw nsw i64 %i.bn, 1
  %i.bp = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !83, !noalias !5685
  %i.bs = getelementptr inbounds i8, ptr %.0.ptr.i35.i.i.i, i64 -1
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !83, !noalias !5685
  %i.bt = load i8, ptr %i.bp, align 1, !tbaa !83, !noalias !5685
  %.0.add.i36.i.i.i = add nsw i64 %.0.idx.i33.i.i.i, -2 ; 3 uses
  %.ptr24.i.i.i.i = getelementptr inbounds i8, ptr %4, i64 %.0.add.i36.i.i.i
  store i8 %i.bt, ptr %.ptr24.i.i.i.i, align 1, !tbaa !83, !noalias !5685
  %i.bu = udiv i64 %.08.i.i.i.i34.i.i.i, 100      ; 2 uses
  %i.bv = icmp samesign ugt i64 %.08.i.i.i.i34.i.i.i, 9999
  br i1 %i.bv, label %.lr.ph.i.i.i.i32.i.i.i, label %._crit_edge.i.i.i.i20.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i20.i.i.i:                      ; preds = %.lr.ph.i.i.i.i32.i.i.i, %bb.i
  %.1.idx.i21.i.i.i = phi i64 [ 15, %bb.i ], [ %.0.add.i36.i.i.i, %.lr.ph.i.i.i.i32.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i22.i.i.i = phi i64 [ %i.bl, %bb.i ], [ %i.bu, %.lr.ph.i.i.i.i32.i.i.i ] ; 3 uses
  %i.bw = icmp sgt i64 %.0.lcssa.i.i.i.i22.i.i.i, 9
  br i1 %i.bw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i.i20.i.i.i
  %i.bx = shl nuw nsw i64 %.0.lcssa.i.i.i.i22.i.i.i, 1
  %i.by = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !83, !noalias !5685
  %.1.add.i31.i.i.i = add nsw i64 %.1.idx.i21.i.i.i, -1 ; 2 uses
  %.ptr22.i.i.i.i = getelementptr inbounds i8, ptr %4, i64 %.1.add.i31.i.i.i
  store i8 %i.ca, ptr %.ptr22.i.i.i.i, align 1, !tbaa !83, !noalias !5685
  %i.cb = load i8, ptr %i.by, align 1, !tbaa !83, !noalias !5685
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i

bb.k:                                             ; preds = %._crit_edge.i.i.i.i20.i.i.i
  %i.cc = trunc i64 %.0.lcssa.i.i.i.i22.i.i.i to i8
  %i.cd = add i8 %i.cc, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i: ; preds = %bb.k, %bb.j
  %.2.idx.i24.i.i.i = phi i64 [ %.1.add.i31.i.i.i, %bb.j ], [ %.1.idx.i21.i.i.i, %bb.k ] ; 3 uses
  %.sink.i.i.i.i25.i.i.i = phi i8 [ %i.cb, %bb.j ], [ %i.cd, %bb.k ]
  %i.ce = getelementptr i8, ptr %4, i64 %.2.idx.i24.i.i.i ; 2 uses
  %.ptr.i26.i.i.i = getelementptr i8, ptr %i.ce, i64 -1
  store i8 %.sink.i.i.i.i25.i.i.i, ptr %.ptr.i26.i.i.i, align 1, !tbaa !83, !noalias !5685
  %i.cf = icmp sgt i64 %.2.idx.i24.i.i.i, 10
  br i1 %i.cf, label %.lr.ph.i.i.preheader.i28.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

.lr.ph.i.i.preheader.i28.i.i.i:                   ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i
  %i.cg = add i64 %.2.idx.i24.i.i.i, %i.be        ; 2 uses
  %i.ch = add i64 %i.cg, -2
  %i.ci = add nuw i64 %i.be, 9
  %umin.i29.i.i.i = call i64 @llvm.umin.i64(i64 %i.ch, i64 %i.ci) ; 2 uses
  %i.cj = sub i64 %umin.i29.i.i.i, %i.be
  %scevgep.i30.i.i.i = getelementptr i8, ptr %4, i64 %i.cj ; 2 uses
  %i.ck = xor i64 %umin.i29.i.i.i, -1
  %i.cl = add i64 %i.cg, %i.ck
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i30.i.i.i, i8 48, i64 %i.cl, i1 false), !tbaa !83, !noalias !5685
  %scevgep28.i.i.i.i = getelementptr i8, ptr %scevgep.i30.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i28.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i
  %i.cm = phi ptr [ %i.ce, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i ], [ %scevgep28.i.i.i.i, %.lr.ph.i.i.preheader.i28.i.i.i ] ; 2 uses
  %i.cn = shl nsw i64 %i.bk, 1
  %i.co = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.cn
  %i.cp = shl nsw i64 %i.bh, 1
  %i.cq = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.cp
  %i.cr = shl nuw nsw i64 %i.bf, 1
  %i.cs = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.cr ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !83, !noalias !5685
  %i.cv = getelementptr i8, ptr %i.cm, i64 -9
  %i.cw = load <2 x i8>, ptr %i.co, align 1, !tbaa !83, !noalias !5685
  %i.cx = load <2 x i8>, ptr %i.cq, align 1, !tbaa !83, !noalias !5685
  %i.cy = shufflevector <2 x i8> %i.cx, <2 x i8> %i.cw, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison>
  %i.cz = shufflevector <8 x i8> %i.cy, <8 x i8> <i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 46>, <8 x i32> <i32 poison, i32 9, i32 2, i32 3, i32 12, i32 5, i32 6, i32 15>
  %i.da = insertelement <8 x i8> %i.cz, i8 %i.cu, i64 0
  store <8 x i8> %i.da, ptr %i.cv, align 1, !tbaa !83, !noalias !5685
  %i.db = load i8, ptr %i.cs, align 1, !tbaa !83, !noalias !5685
  %i.dc = getelementptr i8, ptr %i.cm, i64 -10    ; 3 uses
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !83, !noalias !5685
  %i.dd = ptrtoint ptr %.ptr23.i.i.i.i to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.dd, %i.de
  call void @_ZN5arrow17BinaryViewBuilder6AppendEPKhl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(272) %.0.val.8.val, ptr noundef nonnull %i.dc, i64 noundef %i.df)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !5685
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

bb.l:                                             ; preds = %bb.a
  %i.dg = ptrtoaddr ptr %3 to i64                 ; 3 uses
  %spec.select.i.i37.i.i.i = icmp ult i64 %i.b, 86400000000000
  br i1 %spec.select.i.i37.i.i.i, label %bb.n, label %bb.m, !prof !103

bb.m:                                             ; preds = %bb.l
  call fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Time64TypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %i.b, ptr noundef nonnull readonly align 8 dereferenceable(8) %6)
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !5686
  %.ptr23.i38.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.dh = udiv i64 %i.b, 3600000000000            ; 3 uses
  %i.di = udiv i64 %i.b, 60000000000
  %.neg.i.i.i.i39.i.i.i = mul nsw i64 %i.dh, -60
  %i.dj = add nsw i64 %.neg.i.i.i.i39.i.i.i, %i.di ; 2 uses
  %.neg.i7.i.i.i40.i.i.i = mul nsw i64 %i.dh, -3600000000000
  %i.dk = add nsw i64 %.neg.i7.i.i.i40.i.i.i, %i.b
  %.neg.i8.i.i.i41.i.i.i = mul nsw i64 %i.dj, -60000000000
  %i.dl = add nsw i64 %i.dk, %.neg.i8.i.i.i41.i.i.i ; 2 uses
  %i.dm = sdiv i64 %i.dl, 1000000000              ; 2 uses
  %.neg.i.i.i.i.i42.i.i.i = mul nsw i64 %i.dm, -1000000000
  %i.dn = add nsw i64 %.neg.i.i.i.i.i42.i.i.i, %i.dl ; 3 uses
  %i.do = icmp sgt i64 %i.dn, 99
  br i1 %i.do, label %.lr.ph.i.i.i.i57.i.i.i, label %._crit_edge.i.i.i.i43.i.i.i

.lr.ph.i.i.i.i57.i.i.i:                           ; preds = %bb.n, %.lr.ph.i.i.i.i57.i.i.i
  %.0.idx.i58.i.i.i = phi i64 [ %.0.add.i61.i.i.i, %.lr.ph.i.i.i.i57.i.i.i ], [ 18, %bb.n ] ; 2 uses
  %.08.i.i.i.i59.i.i.i = phi i64 [ %i.dw, %.lr.ph.i.i.i.i57.i.i.i ], [ %i.dn, %bb.n ] ; 3 uses
  %.0.ptr.i60.i.i.i = getelementptr inbounds i8, ptr %3, i64 %.0.idx.i58.i.i.i
  %i.dp = urem i64 %.08.i.i.i.i59.i.i.i, 100
  %i.dq = shl nuw nsw i64 %i.dp, 1
  %i.dr = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.dq ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !83, !noalias !5686
  %i.du = getelementptr inbounds i8, ptr %.0.ptr.i60.i.i.i, i64 -1
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !83, !noalias !5686
  %i.dv = load i8, ptr %i.dr, align 1, !tbaa !83, !noalias !5686
  %.0.add.i61.i.i.i = add nsw i64 %.0.idx.i58.i.i.i, -2 ; 3 uses
  %.ptr24.i62.i.i.i = getelementptr inbounds i8, ptr %3, i64 %.0.add.i61.i.i.i
  store i8 %i.dv, ptr %.ptr24.i62.i.i.i, align 1, !tbaa !83, !noalias !5686
  %i.dw = udiv i64 %.08.i.i.i.i59.i.i.i, 100      ; 2 uses
  %i.dx = icmp samesign ugt i64 %.08.i.i.i.i59.i.i.i, 9999
  br i1 %i.dx, label %.lr.ph.i.i.i.i57.i.i.i, label %._crit_edge.i.i.i.i43.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i43.i.i.i:                      ; preds = %.lr.ph.i.i.i.i57.i.i.i, %bb.n
  %.1.idx.i44.i.i.i = phi i64 [ 18, %bb.n ], [ %.0.add.i61.i.i.i, %.lr.ph.i.i.i.i57.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i45.i.i.i = phi i64 [ %i.dn, %bb.n ], [ %i.dw, %.lr.ph.i.i.i.i57.i.i.i ] ; 3 uses
  %i.dy = icmp sgt i64 %.0.lcssa.i.i.i.i45.i.i.i, 9
  br i1 %i.dy, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i.i.i43.i.i.i
  %i.dz = shl nuw nsw i64 %.0.lcssa.i.i.i.i45.i.i.i, 1
  %i.ea = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.dz ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !83, !noalias !5686
  %.1.add.i55.i.i.i = add nsw i64 %.1.idx.i44.i.i.i, -1 ; 2 uses
  %.ptr22.i56.i.i.i = getelementptr inbounds i8, ptr %3, i64 %.1.add.i55.i.i.i
  store i8 %i.ec, ptr %.ptr22.i56.i.i.i, align 1, !tbaa !83, !noalias !5686
  %i.ed = load i8, ptr %i.ea, align 1, !tbaa !83, !noalias !5686
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i46.i.i.i

bb.p:                                             ; preds = %._crit_edge.i.i.i.i43.i.i.i
  %i.ee = trunc i64 %.0.lcssa.i.i.i.i45.i.i.i to i8
  %i.ef = add i8 %i.ee, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i46.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i46.i.i.i: ; preds = %bb.p, %bb.o
  %.2.idx.i47.i.i.i = phi i64 [ %.1.add.i55.i.i.i, %bb.o ], [ %.1.idx.i44.i.i.i, %bb.p ] ; 3 uses
  %.sink.i.i.i.i48.i.i.i = phi i8 [ %i.ed, %bb.o ], [ %i.ef, %bb.p ]
  %i.eg = getelementptr i8, ptr %3, i64 %.2.idx.i47.i.i.i ; 2 uses
  %.ptr.i49.i.i.i = getelementptr i8, ptr %i.eg, i64 -1
  store i8 %.sink.i.i.i.i48.i.i.i, ptr %.ptr.i49.i.i.i, align 1, !tbaa !83, !noalias !5686
  %i.eh = icmp sgt i64 %.2.idx.i47.i.i.i, 10
  br i1 %i.eh, label %.lr.ph.i.i.preheader.i51.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

.lr.ph.i.i.preheader.i51.i.i.i:                   ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i46.i.i.i
  %i.ei = add i64 %.2.idx.i47.i.i.i, %i.dg        ; 2 uses
  %i.ej = add i64 %i.ei, -2
  %i.ek = add nuw i64 %i.dg, 9
  %umin.i52.i.i.i = call i64 @llvm.umin.i64(i64 %i.ej, i64 %i.ek) ; 2 uses
  %i.el = sub i64 %umin.i52.i.i.i, %i.dg
  %scevgep.i53.i.i.i = getelementptr i8, ptr %3, i64 %i.el ; 2 uses
  %i.em = xor i64 %umin.i52.i.i.i, -1
  %i.en = add i64 %i.ei, %i.em
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i53.i.i.i, i8 48, i64 %i.en, i1 false), !tbaa !83, !noalias !5686
  %scevgep28.i54.i.i.i = getelementptr i8, ptr %scevgep.i53.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i51.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i46.i.i.i
  %i.eo = phi ptr [ %i.eg, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i46.i.i.i ], [ %scevgep28.i54.i.i.i, %.lr.ph.i.i.preheader.i51.i.i.i ] ; 2 uses
  %i.ep = shl nsw i64 %i.dm, 1
  %i.eq = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ep
  %i.er = shl nsw i64 %i.dj, 1
  %i.es = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.er
  %i.et = shl nuw nsw i64 %i.dh, 1
  %i.eu = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.et ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 1
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !83, !noalias !5686
  %i.ex = getelementptr i8, ptr %i.eo, i64 -9
  %i.ey = load <2 x i8>, ptr %i.eq, align 1, !tbaa !83, !noalias !5686
  %i.ez = load <2 x i8>, ptr %i.es, align 1, !tbaa !83, !noalias !5686
  %i.fa = shufflevector <2 x i8> %i.ez, <2 x i8> %i.ey, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison>
  %i.fb = shufflevector <8 x i8> %i.fa, <8 x i8> <i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 46>, <8 x i32> <i32 poison, i32 9, i32 2, i32 3, i32 12, i32 5, i32 6, i32 15>
  %i.fc = insertelement <8 x i8> %i.fb, i8 %i.ew, i64 0
  store <8 x i8> %i.fc, ptr %i.ex, align 1, !tbaa !83, !noalias !5686
  %i.fd = load i8, ptr %i.eu, align 1, !tbaa !83, !noalias !5686
  %i.fe = getelementptr i8, ptr %i.eo, i64 -10    ; 3 uses
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !83, !noalias !5686
  %i.ff = ptrtoint ptr %.ptr23.i38.i.i.i to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg
  call void @_ZN5arrow17BinaryViewBuilder6AppendEPKhl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(272) %.0.val.8.val, ptr noundef nonnull %i.fe, i64 noundef %i.fh)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !5686
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

bb.q:                                             ; preds = %bb.a
  %spec.select.i.i63.i.i.i = icmp ult i64 %i.b, 86400
  br i1 %spec.select.i.i63.i.i.i, label %bb.s, label %bb.r, !prof !103

bb.r:                                             ; preds = %bb.q
  call fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Time64TypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %i.b, ptr noundef nonnull readonly align 8 dereferenceable(8) %6)
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !5687
  %.lhs.trunc.i64.i.i.i = trunc nuw nsw i64 %i.b to i32 ; 2 uses
  %i.fi = udiv i32 %.lhs.trunc.i64.i.i.i, 3600
  %.zext.i65.i.i.i = zext nneg i32 %i.fi to i64   ; 3 uses
  %i.fj = udiv i32 %.lhs.trunc.i64.i.i.i, 60
  %.zext16.i.i.i.i = zext nneg i32 %i.fj to i64
  %.neg.i.i.i.i66.i.i.i = mul nsw i64 %.zext.i65.i.i.i, -60
  %i.fk = add nsw i64 %.neg.i.i.i.i66.i.i.i, %.zext16.i.i.i.i ; 2 uses
  %.neg.i7.i.i.i67.i.i.i = mul nsw i64 %.zext.i65.i.i.i, -3600
  %i.fl = add nsw i64 %.neg.i7.i.i.i67.i.i.i, %i.b
  %.neg.i8.i.i.i68.i.i.i = mul nsw i64 %i.fk, -60
  %i.fm = add nsw i64 %i.fl, %.neg.i8.i.i.i68.i.i.i
  %i.fn = shl nuw nsw i64 %i.fm, 1
  %i.fo = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fn ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 1
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !83, !noalias !5687
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !83, !noalias !5687
  %i.fs = load i8, ptr %i.fo, align 1, !tbaa !83, !noalias !5687
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %i.fs, ptr %i.ft, align 1, !tbaa !83, !noalias !5687
  %i.fu = shl nuw nsw i64 %i.fk, 1
  %i.fv = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.fx = load <2 x i8>, ptr %i.fv, align 1, !tbaa !83, !noalias !5687
  %i.fy = shufflevector <2 x i8> %i.fx, <2 x i8> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.fz = shufflevector <4 x i8> <i8 58, i8 poison, i8 poison, i8 58>, <4 x i8> %i.fy, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i8> %i.fz, ptr %i.fw, align 1, !tbaa !83, !noalias !5687
  %i.ga = shl nuw nsw i64 %.zext.i65.i.i.i, 1
  %i.gb = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ga ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 1
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !83, !noalias !5687
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.gd, ptr %i.ge, align 1, !tbaa !83, !noalias !5687
  %i.gf = load i8, ptr %i.gb, align 1, !tbaa !83, !noalias !5687
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  store i8 %i.gf, ptr %i.gg, align 1, !tbaa !83, !noalias !5687
  call void @_ZN5arrow17BinaryViewBuilder6AppendEPKhl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(272) %.0.val.8.val, ptr noundef nonnull %i.gg, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !5687
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit: ; preds = %bb.c, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i, %bb.h, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i, %bb.m, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !5683
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Time64TypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN5arrow8internal7ToCharsIlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 noundef %.0.val)
  %i.a = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.27, i64 noundef 21)
          to label %.noexc unwind label %bb.g     ; 8 uses

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 13 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !211, !alias.scope !5692
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !138  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread, label %bb.b

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread: ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !212  ; 5 uses
  %i.h = icmp samesign ult i64 %i.g, 16
  call void @llvm.assume(i1 %i.h)
  %i.i = add nuw nsw i64 %i.g, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.i, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.g, ptr %i.k, align 8, !tbaa !212, !alias.scope !5692
  store ptr %i.d, ptr %i.a, align 8, !tbaa !138
  store i64 0, ptr %i.j, align 8, !tbaa !212
  store i8 0, ptr %i.d, align 8, !tbaa !83
  %i.l = add nuw nsw i64 %i.g, 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.b:                                             ; preds = %.noexc
  store ptr %i.c, ptr %3, align 8, !tbaa !138, !alias.scope !5692
  %i.m = load i64, ptr %i.d, align 8, !tbaa !83
  store i64 %i.m, ptr %i.b, align 8, !tbaa !83, !alias.scope !5692
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !212 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %.pre.i, ptr %i.o, align 8, !tbaa !212, !alias.scope !5692
  store ptr %i.d, ptr %i.a, align 8, !tbaa !138
  store i64 0, ptr %i.n, align 8, !tbaa !212
  store i8 0, ptr %i.d, align 8, !tbaa !83
  call void @llvm.experimental.noalias.scope.decl(metadata !5693)
  %i.p = icmp eq i64 %.pre.i, 9223372036854775807
  br i1 %i.p, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #32
          to label %.noexc10 unwind label %bb.h

.noexc10:                                         ; preds = %bb.c
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.q = add nsw i64 %.pre.i, 1                   ; 2 uses
  %i.r = icmp eq ptr %i.c, %i.b
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.s = phi i64 [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ]
  %i.t = phi ptr [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ]
  %i.u = phi i64 [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ] ; 2 uses
  %i.v = phi ptr [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ]
  %i.w = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.w)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.x = load i64, ptr %i.b, align 8, !tbaa !83, !noalias !5693
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.y = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 3 uses
  %i.z = phi ptr [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.aa = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 2 uses
  %i.ab = phi ptr [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 4 uses
  %i.ac = phi i64 [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.y, %i.ac
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  store i8 62, ptr %i.ad, align 1, !tbaa !83, !noalias !5693
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.aa, i64 noundef 0, ptr noundef nonnull @.str.28, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.e, %bb.d
  store i64 %i.y, ptr %i.ab, align 8, !tbaa !212, !noalias !5693
  %i.ae = load ptr, ptr %3, align 8, !tbaa !138, !noalias !5693
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.y
  store i8 0, ptr %i.af, align 1, !tbaa !83, !noalias !5693
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.ag, ptr %2, align 8, !tbaa !211, !alias.scope !5693
  %i.ah = load ptr, ptr %3, align 8, !tbaa !138, !noalias !5693 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, %i.b
  br i1 %i.ai, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.aj = load i64, ptr %i.ab, align 8, !tbaa !212, !noalias !5693 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %i.al, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.ah, ptr %2, align 8, !tbaa !138, !alias.scope !5693
  %i.am = load i64, ptr %i.b, align 8, !tbaa !83, !noalias !5693
  store i64 %i.am, ptr %i.ag, align 8, !tbaa !83, !alias.scope !5693
  %.pre.i9 = load i64, ptr %i.ab, align 8, !tbaa !212, !noalias !5693
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, %bb.f
  %i.an = phi ptr [ %i.ag, %bb.f ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ]
  %i.ao = phi i64 [ %i.aj, %bb.f ], [ %.pre.i9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !212, !alias.scope !5693
  store ptr %i.b, ptr %3, align 8, !tbaa !138, !noalias !5693
  store i64 0, ptr %i.ab, align 8, !tbaa !212, !noalias !5693
  store i8 0, ptr %i.b, align 8, !tbaa !83, !noalias !5693
  %i.aq = load ptr, ptr %4, align 8, !tbaa !138   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !83
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #30
  %.pre = load ptr, ptr %2, align 8, !tbaa !138
  %.pre1 = load i64, ptr %i.ap, align 8, !tbaa !212
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %i.av = phi i64 [ %.pre1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.aw = phi ptr [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %.val = load ptr, ptr %1, align 8, !tbaa !5695
  invoke void @_ZN5arrow17BinaryViewBuilder6AppendEPKhl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(272) %.val, ptr noundef %i.aw, i64 noundef %i.av)
          to label %_ZZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clElENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit unwind label %bb.i

_ZZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clElENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.ax = load ptr, ptr %2, align 8, !tbaa !138   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ag
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clElENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit
  %i.az = load i64, ptr %i.ag, align 8, !tbaa !83
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clElENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.g:                                             ; preds = %bb.a
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.h:                                             ; preds = %bb.e, %bb.c
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %3, align 8, !tbaa !138   ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.b
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.h
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !83
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.g ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %i.bc, %bb.h ]
  %i.bh = load ptr, ptr %4, align 8, !tbaa !138   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !83
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %2, align 8, !tbaa !138   ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.ag
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.i
  %i.bp = load i64, ptr %i.ag, align 8, !tbaa !83
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %.pn6 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.bm, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn6
}

declare void @_ZN5arrow17BinaryViewBuilder11ReserveDataEl(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(272), i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_13TimestampTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeES2_E4ExecEPNS5_13KernelContextERKNS5_8ExecSpanEPNS5_10ExecResultEEUllE_ZNSA_4ExecESC_SF_SH_EUlvE_EENS_6StatusERKNS_9ArraySpanEOT_OT0_ENKUllE_clEl(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 %.0.val.0.val.0.val, i64 %.0.val.0.val.16.val, ptr %.0.val.8.val, ptr nofree readonly captures(none) %.8.val.0.val, i64 noundef %1) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.466", align 1   ; 4 uses
  %3 = alloca %"struct.std::array.464", align 1   ; 4 uses
  %4 = alloca %"struct.std::array.462", align 1   ; 4 uses
  %5 = alloca %"struct.std::array.460", align 1   ; 4 uses
  %6 = alloca %class.anon.716, align 8            ; 6 uses
  %i.a = getelementptr inbounds [8 x i8], ptr %.8.val.0.val, i64 %1
  %i.b = load i64, ptr %i.a, align 8, !tbaa !195  ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !5710
  store ptr %.0.val.8.val, ptr %6, align 8, !tbaa !504, !noalias !5710
  switch i32 %.0.val.0.val.0.val, label %bb.am [
    i32 3, label %bb.ab
    i32 1, label %bb.b
    i32 2, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %i.b, 1096193779200000
  %spec.select.i.i.i.i.i = icmp ult i64 %i.c, 2068084742400000
  br i1 %spec.select.i.i.i.i.i, label %bb.d, label %bb.c, !prof !103

bb.c:                                             ; preds = %bb.b
  call fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_13TimestampTypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %i.b, ptr noundef nonnull readonly align 8 dereferenceable(8) %6)
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_13TimestampTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

bb.d:                                             ; preds = %bb.b
  %i.d = sdiv i64 %i.b, 86400000                  ; 3 uses
  %i.e = trunc nsw i64 %i.d to i32                ; 2 uses
  %i.f = mul nsw i64 %i.d, 86400000               ; 2 uses
  %.not53.i.i.i.i = icmp sgt i64 %i.f, %i.b
  br i1 %.not53.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.neg.i.i.i.i.i.i = mul nsw i64 %i.d, -86400000
  %i.g = add nsw i64 %.neg.i.i.i.i.i.i, %i.b
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %.neg.i.i.i.i = add nsw i64 %i.b, 86400000
  %i.h = sub nsw i64 %.neg.i.i.i.i, %i.f
  %i.i = add nsw i32 %i.e, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.036.0.i.i.i.i = phi i64 [ %i.g, %bb.e ], [ %i.h, %bb.f ]
  %.sroa.037.0.i.i.i.i = phi i32 [ %i.e, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !5711
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 26 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.0.val.0.val.16.val, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 25 ; 2 uses
  store i8 90, ptr %i.k, align 1, !tbaa !83, !noalias !5711
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi ptr [ %i.j, %bb.g ], [ %i.k, %bb.h ] ; 6 uses
  %.063.i.i.i.i = ptrtoaddr ptr %.0.i.i.i.i to i64 ; 3 uses
  %spec.select.i.i.i.i.i.i.i = call i64 @llvm.abs.i64(i64 %.sroa.036.0.i.i.i.i, i1 true) ; 3 uses
  %i.l = udiv i64 %spec.select.i.i.i.i.i.i.i, 3600000 ; 3 uses
  %i.m = udiv i64 %spec.select.i.i.i.i.i.i.i, 60000
  %.neg.i.i.i.i.i.i.i = mul nsw i64 %i.l, -60
  %i.n = add nsw i64 %.neg.i.i.i.i.i.i.i, %i.m    ; 2 uses
  %.neg.i7.i.i.i.i.i.i = mul nsw i64 %i.l, -3600000
  %i.o = add nsw i64 %.neg.i7.i.i.i.i.i.i, %spec.select.i.i.i.i.i.i.i
  %.neg.i8.i.i.i.i.i.i = mul nsw i64 %i.n, -60000
  %i.p = add nsw i64 %i.o, %.neg.i8.i.i.i.i.i.i   ; 2 uses
  %i.q = sdiv i64 %i.p, 1000                      ; 2 uses
  %.neg.i.i.i.i.i.i.i.i = mul nsw i64 %i.q, -1000
  %i.r = add nsw i64 %.neg.i.i.i.i.i.i.i.i, %i.p  ; 3 uses
  %i.s = icmp sgt i64 %i.r, 99
  br i1 %i.s, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i.i
  %.1.idx.i.i.i.i = phi i64 [ %.1.add.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %.08.i.i.i.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i.i.i ], [ %i.r, %bb.i ] ; 3 uses
  %.1.ptr.i.i.i.i = getelementptr inbounds i8, ptr %.0.i.i.i.i, i64 %.1.idx.i.i.i.i
  %i.t = urem i64 %.08.i.i.i.i.i.i.i, 100
  %i.u = shl nuw nsw i64 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !83, !noalias !5711
  %i.y = getelementptr inbounds i8, ptr %.1.ptr.i.i.i.i, i64 -1
  store i8 %i.x, ptr %i.y, align 1, !tbaa !83, !noalias !5711
  %i.z = load i8, ptr %i.v, align 1, !tbaa !83, !noalias !5711
  %.1.add.i.i.i.i = add nsw i64 %.1.idx.i.i.i.i, -2 ; 3 uses
  %.ptr55.i.i.i.i = getelementptr inbounds i8, ptr %.0.i.i.i.i, i64 %.1.add.i.i.i.i
  store i8 %i.z, ptr %.ptr55.i.i.i.i, align 1, !tbaa !83, !noalias !5711
  %i.aa = udiv i64 %.08.i.i.i.i.i.i.i, 100        ; 2 uses
  %i.ab = icmp samesign ugt i64 %.08.i.i.i.i.i.i.i, 9999
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.i
  %.2.idx.i.i.i.i = phi i64 [ 0, %bb.i ], [ %.1.add.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %i.r, %bb.i ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.ac = icmp sgt i64 %.0.lcssa.i.i.i.i.i.i.i, 9
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ad = shl nuw nsw i64 %.0.lcssa.i.i.i.i.i.i.i, 1
  %i.ae = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !83, !noalias !5711
  %.2.add.i.i.i.i = add nsw i64 %.2.idx.i.i.i.i, -1 ; 2 uses
  %.ptr54.i.i.i.i = getelementptr inbounds i8, ptr %.0.i.i.i.i, i64 %.2.add.i.i.i.i
  store i8 %i.ag, ptr %.ptr54.i.i.i.i, align 1, !tbaa !83, !noalias !5711
  %i.ah = load i8, ptr %i.ae, align 1, !tbaa !83, !noalias !5711
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ai = trunc i64 %.0.lcssa.i.i.i.i.i.i.i to i8
  %i.aj = add i8 %i.ai, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.3.idx.i.i.i.i = phi i64 [ %.2.add.i.i.i.i, %bb.j ], [ %.2.idx.i.i.i.i, %bb.k ] ; 3 uses
  %.sink.i.i.i.i.i.i.i = phi i8 [ %i.ah, %bb.j ], [ %i.aj, %bb.k ]
  %i.ak = getelementptr i8, ptr %.0.i.i.i.i, i64 %.3.idx.i.i.i.i ; 2 uses
  %.ptr.i.i.i.i = getelementptr i8, ptr %i.ak, i64 -1
  store i8 %.sink.i.i.i.i.i.i.i, ptr %.ptr.i.i.i.i, align 1, !tbaa !83, !noalias !5711
  %i.al = icmp sgt i64 %.3.idx.i.i.i.i, -2
  br i1 %i.al, label %.lr.ph.i.i.preheader.i.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i:                     ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i
  %i.am = add i64 %.3.idx.i.i.i.i, %.063.i.i.i.i  ; 2 uses
  %i.an = add i64 %i.am, -2
  %i.ao = add i64 %.063.i.i.i.i, -3
  %umin.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.an, i64 %i.ao) ; 2 uses
  %i.ap = sub i64 %umin.i.i.i.i, %.063.i.i.i.i
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i.i, i64 %i.ap ; 2 uses
  %i.aq = xor i64 %umin.i.i.i.i, -1
  %i.ar = add i64 %i.am, %i.aq
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i.i.i.i, i8 48, i64 %i.ar, i1 false), !tbaa !83, !noalias !5711
  %scevgep65.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i
  %i.as = phi ptr [ %i.ak, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i ], [ %scevgep65.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i ] ; 3 uses
  %i.at = shl nsw i64 %i.q, 1
  %i.au = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.at
  %i.av = getelementptr i8, ptr %i.as, i64 -5
  %i.aw = load <2 x i8>, ptr %i.au, align 1, !tbaa !83, !noalias !5711
  %i.ax = shufflevector <2 x i8> %i.aw, <2 x i8> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ay = shufflevector <4 x i8> <i8 58, i8 poison, i8 poison, i8 46>, <4 x i8> %i.ax, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i8> %i.ay, ptr %i.av, align 1, !tbaa !83, !noalias !5711
  %i.az = shl nuw nsw i64 %i.n, 1
  %i.ba = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.az
  %i.bb = shl nuw nsw i64 %i.l, 1
  %i.bc = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.bb
  %i.bd = add nsw i32 %.sroa.037.0.i.i.i.i, 719468 ; 2 uses
  %i.be = icmp sgt i32 %.sroa.037.0.i.i.i.i, -719469
  %i.bf = add nuw nsw i32 %.sroa.037.0.i.i.i.i, 573372
  %i.bg = select i1 %i.be, i32 %i.bd, i32 %i.bf
  %i.bh = sdiv i32 %i.bg, 146097                  ; 2 uses
  %.neg.i.i17.i.i.i.i = mul nsw i32 %i.bh, -146097
  %i.bi = add nsw i32 %.neg.i.i17.i.i.i.i, %i.bd  ; 5 uses
  %i.bj = udiv i32 %i.bi, 1460
  %i.bk = udiv i32 %i.bi, 36524
  %i.bl = udiv i32 %i.bi, 146096
  %.neg8 = add nsw i32 %i.bk, %i.bi
  %i.bm = add nuw nsw i32 %i.bl, %i.bj
  %i.bn = sub nsw i32 %.neg8, %i.bm               ; 3 uses
  %i.bo = udiv i32 %i.bn, 365                     ; 2 uses
  %i.bp = mul nsw i32 %i.bh, 400
  %i.bq = add nsw i32 %i.bo, %i.bp
  %i.br = udiv i32 %i.bn, 1460
  %i.bs = udiv i32 %i.bn, 36500
  %.neg36.i.i.i.i.i.i = mul i32 %i.bo, -365
  %.neg37.i.i.i.i.i.i = sub nsw i32 %i.bi, %i.br
  %.neg25.i.i.i.i.i.i = add nsw i32 %.neg37.i.i.i.i.i.i, %i.bs
  %i.bt = add i32 %.neg25.i.i.i.i.i.i, %.neg36.i.i.i.i.i.i ; 2 uses
  %i.bu = mul i32 %i.bt, 5
  %i.bv = add i32 %i.bu, 2                        ; 2 uses
  %i.bw = udiv i32 %i.bv, 153                     ; 2 uses
  %i.bx = mul nuw i32 %i.bw, 153
  %i.by = add nuw i32 %i.bx, 2
  %i.bz = udiv i32 %i.by, 5
  %i.ca = sub i32 %i.bt, %i.bz
  %i.cb = icmp ult i32 %i.bv, 1530
  %.v.i.i.i.i.i.i = select i1 %i.cb, i32 3, i32 -9
  %i.cc = add nsw i32 %.v.i.i.i.i.i.i, %i.bw      ; 2 uses
  %i.cd = icmp ult i32 %i.cc, 3
  %i.ce = zext i1 %i.cd to i32
  %i.cf = add nsw i32 %i.bq, %i.ce
  %i.cg = shl i32 %i.ca, 24
  %.sroa.3.0.insert.ext.i.i.i.i.i.i = add i32 %i.cg, 16777216
  %i.ch = lshr exact i32 %.sroa.3.0.insert.ext.i.i.i.i.i.i, 23
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ci
  %i.ck = shl nsw i32 %i.cc, 1
  %i.cl = and i32 %i.ck, 510
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.cm
  %sext.i.i.i.i.i = shl i32 %i.cf, 16
  %i.co = ashr exact i32 %sext.i.i.i.i.i, 16      ; 2 uses
  %i.cp = icmp slt i32 %i.co, 0
  %i.cq = call i32 @llvm.abs.i32(i32 %i.co, i1 true) ; 2 uses
  %.lhs.trunc.i.i.i.i.i = trunc nuw i32 %i.cq to i16 ; 3 uses
  %i.cr = urem i16 %.lhs.trunc.i.i.i.i.i, 100
  %i.cs = shl nuw nsw i16 %i.cr, 1
  %i.ct = zext nneg i16 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ct
  %i.cv = udiv i16 %.lhs.trunc.i.i.i.i.i, 100
  %i.cw = urem i16 %i.cv, 100
  %i.cx = shl nuw nsw i16 %i.cw, 1
  %i.cy = zext nneg i16 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.cy
  %i.da = getelementptr i8, ptr %i.as, i64 -21    ; 2 uses
  %i.db = load <2 x i8>, ptr %i.ba, align 1, !tbaa !83, !noalias !5711
  %i.dc = load <2 x i8>, ptr %i.bc, align 1, !tbaa !83, !noalias !5711
  %i.dd = load <2 x i8>, ptr %i.cj, align 1, !tbaa !83, !noalias !5711
  %i.de = load <2 x i8>, ptr %i.cn, align 1, !tbaa !83, !noalias !5711
  %i.df = load <2 x i8>, ptr %i.cu, align 1, !tbaa !83, !noalias !5711
  %i.dg = load <2 x i8>, ptr %i.cz, align 1, !tbaa !83, !noalias !5711
  %i.dh = shufflevector <2 x i8> %i.dg, <2 x i8> %i.df, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.di = shufflevector <16 x i8> %i.dh, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 32, i8 poison, i8 poison, i8 58, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 poison, i32 poison, i32 23, i32 poison, i32 poison, i32 26, i32 poison, i32 poison, i32 29, i32 poison, i32 poison>
  %i.dj = shufflevector <2 x i8> %i.de, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dk = shufflevector <16 x i8> %i.di, <16 x i8> %i.dj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 7, i32 poison, i32 poison, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.dl = shufflevector <2 x i8> %i.dd, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dm = shufflevector <16 x i8> %i.dk, <16 x i8> %i.dl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.dn = shufflevector <2 x i8> %i.dc, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.do = shufflevector <16 x i8> %i.dm, <16 x i8> %i.dn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 17, i32 13, i32 poison, i32 poison>
  %i.dp = shufflevector <2 x i8> %i.db, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dq = shufflevector <16 x i8> %i.do, <16 x i8> %i.dp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  store <16 x i8> %i.dq, ptr %i.da, align 1, !tbaa !83, !noalias !5711
  %i.dr = icmp samesign ugt i32 %i.cq, 9999
  br i1 %i.dr, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i
  %i.ds = udiv i16 %.lhs.trunc.i.i.i.i.i, 10000
  %i.dt = trunc nuw nsw i16 %i.ds to i8
  %i.du = or disjoint i8 %i.dt, 48
  %i.dv = getelementptr i8, ptr %i.as, i64 -22    ; 2 uses
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !83, !noalias !5711
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i
  %.4.i.i.i.i = phi ptr [ %i.dv, %bb.l ], [ %i.da, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i ] ; 2 uses
  br i1 %i.cp, label %bb.n, label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.dw = getelementptr inbounds i8, ptr %.4.i.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.dw, align 1, !tbaa !83, !noalias !5711
  br label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i.i.i.i

_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i.i.i.i: ; preds = %bb.n, %bb.m
  %.5.i.i.i.i = phi ptr [ %i.dw, %bb.n ], [ %.4.i.i.i.i, %bb.m ] ; 2 uses
  %i.dx = ptrtoint ptr %i.j to i64
  %i.dy = ptrtoint ptr %.5.i.i.i.i to i64
  %i.dz = sub i64 %i.dx, %i.dy
  call void @_ZN5arrow17BinaryViewBuilder6AppendEPKhl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(272) %.0.val.8.val, ptr noundef nonnull %.5.i.i.i.i, i64 noundef %i.dz)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !5711
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_13TimestampTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

bb.o:                                             ; preds = %bb.a
  %i.ea = add i64 %i.b, 1096193779200000000
  %spec.select.i.i18.i.i.i = icmp ult i64 %i.ea, 2068084742400000000
  br i1 %spec.select.i.i18.i.i.i, label %bb.q, label %bb.p, !prof !103

bb.p:                                             ; preds = %bb.o
  call fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_13TimestampTypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %i.b, ptr noundef nonnull readonly align 8 dereferenceable(8) %6)
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_13TimestampTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

bb.q:                                             ; preds = %bb.o
  %i.eb = sdiv i64 %i.b, 86400000000              ; 3 uses
  %i.ec = trunc nsw i64 %i.eb to i32              ; 2 uses
  %i.ed = mul nsw i64 %i.eb, 86400000000          ; 2 uses
  %.not53.i19.i.i.i = icmp sgt i64 %i.ed, %i.b
  br i1 %.not53.i19.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.neg.i.i.i20.i.i.i = mul nsw i64 %i.eb, -86400000000
  %i.ee = add nsw i64 %.neg.i.i.i20.i.i.i, %i.b
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %.neg.i63.i.i.i = add nsw i64 %i.b, 86400000000
  %i.ef = sub nsw i64 %.neg.i63.i.i.i, %i.ed
  %i.eg = add nsw i32 %i.ec, -1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.036.0.i21.i.i.i = phi i64 [ %i.ee, %bb.r ], [ %i.ef, %bb.s ]
  %.sroa.037.0.i22.i.i.i = phi i32 [ %i.ec, %bb.r ], [ %i.eg, %bb.s ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !5712
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 29 ; 2 uses
  %.not.i23.i.i.i = icmp eq i64 %.0.val.0.val.16.val, 0
  br i1 %.not.i23.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  store i8 90, ptr %i.ei, align 1, !tbaa !83, !noalias !5712
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0.i24.i.i.i = phi ptr [ %i.eh, %bb.t ], [ %i.ei, %bb.u ] ; 6 uses
  %.063.i25.i.i.i = ptrtoaddr ptr %.0.i24.i.i.i to i64 ; 3 uses
  %spec.select.i.i.i.i26.i.i.i = call i64 @llvm.abs.i64(i64 %.sroa.036.0.i21.i.i.i, i1 true) ; 3 uses
  %i.ej = udiv i64 %spec.select.i.i.i.i26.i.i.i, 3600000000 ; 3 uses
  %i.ek = udiv i64 %spec.select.i.i.i.i26.i.i.i, 60000000
  %.neg.i.i.i.i27.i.i.i = mul nsw i64 %i.ej, -60
  %i.el = add nsw i64 %.neg.i.i.i.i27.i.i.i, %i.ek ; 2 uses
  %.neg.i7.i.i.i28.i.i.i = mul nsw i64 %i.ej, -3600000000
  %i.em = add nsw i64 %.neg.i7.i.i.i28.i.i.i, %spec.select.i.i.i.i26.i.i.i
  %.neg.i8.i.i.i29.i.i.i = mul nsw i64 %i.el, -60000000
  %i.en = add nsw i64 %i.em, %.neg.i8.i.i.i29.i.i.i ; 2 uses
  %i.eo = sdiv i64 %i.en, 1000000                 ; 2 uses
  %.neg.i.i.i.i.i30.i.i.i = mul nsw i64 %i.eo, -1000000
  %i.ep = add nsw i64 %.neg.i.i.i.i.i30.i.i.i, %i.en ; 3 uses
  %i.eq = icmp sgt i64 %i.ep, 99
  br i1 %i.eq, label %.lr.ph.i.i.i.i57.i.i.i, label %._crit_edge.i.i.i.i31.i.i.i

.lr.ph.i.i.i.i57.i.i.i:                           ; preds = %bb.v, %.lr.ph.i.i.i.i57.i.i.i
  %.1.idx.i58.i.i.i = phi i64 [ %.1.add.i61.i.i.i, %.lr.ph.i.i.i.i57.i.i.i ], [ 0, %bb.v ] ; 2 uses
  %.08.i.i.i.i59.i.i.i = phi i64 [ %i.ey, %.lr.ph.i.i.i.i57.i.i.i ], [ %i.ep, %bb.v ] ; 3 uses
  %.1.ptr.i60.i.i.i = getelementptr inbounds i8, ptr %.0.i24.i.i.i, i64 %.1.idx.i58.i.i.i
  %i.er = urem i64 %.08.i.i.i.i59.i.i.i, 100
  %i.es = shl nuw nsw i64 %i.er, 1
  %i.et = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.es ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 1
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !83, !noalias !5712
  %i.ew = getelementptr inbounds i8, ptr %.1.ptr.i60.i.i.i, i64 -1
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !83, !noalias !5712
  %i.ex = load i8, ptr %i.et, align 1, !tbaa !83, !noalias !5712
  %.1.add.i61.i.i.i = add nsw i64 %.1.idx.i58.i.i.i, -2 ; 3 uses
  %.ptr55.i62.i.i.i = getelementptr inbounds i8, ptr %.0.i24.i.i.i, i64 %.1.add.i61.i.i.i
  store i8 %i.ex, ptr %.ptr55.i62.i.i.i, align 1, !tbaa !83, !noalias !5712
  %i.ey = udiv i64 %.08.i.i.i.i59.i.i.i, 100      ; 2 uses
  %i.ez = icmp samesign ugt i64 %.08.i.i.i.i59.i.i.i, 9999
  br i1 %i.ez, label %.lr.ph.i.i.i.i57.i.i.i, label %._crit_edge.i.i.i.i31.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i31.i.i.i:                      ; preds = %.lr.ph.i.i.i.i57.i.i.i, %bb.v
  %.2.idx.i32.i.i.i = phi i64 [ 0, %bb.v ], [ %.1.add.i61.i.i.i, %.lr.ph.i.i.i.i57.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i33.i.i.i = phi i64 [ %i.ep, %bb.v ], [ %i.ey, %.lr.ph.i.i.i.i57.i.i.i ] ; 3 uses
  %i.fa = icmp sgt i64 %.0.lcssa.i.i.i.i33.i.i.i, 9
  br i1 %i.fa, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i.i.i31.i.i.i
  %i.fb = shl nuw nsw i64 %.0.lcssa.i.i.i.i33.i.i.i, 1
  %i.fc = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fb ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !83, !noalias !5712
  %.2.add.i55.i.i.i = add nsw i64 %.2.idx.i32.i.i.i, -1 ; 2 uses
  %.ptr54.i56.i.i.i = getelementptr inbounds i8, ptr %.0.i24.i.i.i, i64 %.2.add.i55.i.i.i
  store i8 %i.fe, ptr %.ptr54.i56.i.i.i, align 1, !tbaa !83, !noalias !5712
  %i.ff = load i8, ptr %i.fc, align 1, !tbaa !83, !noalias !5712
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i34.i.i.i
end_hunk_2
begin_hunk_3_@_ZZN5arrow8internal22ArraySpanInlineVisitorINS_13TimestampTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeES2_E4ExecEPNS5_13KernelContextERKNS5_8ExecSpanEPNS5_10ExecResultEEUllE_ZNSA_4ExecESC_SF_SH_EUlvE_EENS_6StatusERKNS_9ArraySpanEOT_OT0_ENKUllE_clEl:bb.a
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !83, !noalias !5713
  %.2.add.i99.i.i.i = add nsw i64 %.2.idx.i77.i.i.i, -1 ; 2 uses
  %.ptr54.i100.i.i.i = getelementptr inbounds i8, ptr %.0.i69.i.i.i, i64 %.2.add.i99.i.i.i
  store i8 %i.kb, ptr %.ptr54.i100.i.i.i, align 1, !tbaa !83, !noalias !5713
  %i.kc = load i8, ptr %i.jz, align 1, !tbaa !83, !noalias !5713
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i79.i.i.i

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i76.i.i.i
  %i.kd = trunc i64 %.0.lcssa.i.i.i.i78.i.i.i to i8
  %i.ke = add i8 %i.kd, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i79.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i79.i.i.i: ; preds = %bb.ai, %bb.ah
  %.3.idx.i80.i.i.i = phi i64 [ %.2.add.i99.i.i.i, %bb.ah ], [ %.2.idx.i77.i.i.i, %bb.ai ] ; 3 uses
  %.sink.i.i.i.i81.i.i.i = phi i8 [ %i.kc, %bb.ah ], [ %i.ke, %bb.ai ]
  %i.kf = getelementptr i8, ptr %.0.i69.i.i.i, i64 %.3.idx.i80.i.i.i ; 2 uses
  %.ptr.i82.i.i.i = getelementptr i8, ptr %i.kf, i64 -1
  store i8 %.sink.i.i.i.i81.i.i.i, ptr %.ptr.i82.i.i.i, align 1, !tbaa !83, !noalias !5713
  %i.kg = icmp sgt i64 %.3.idx.i80.i.i.i, -8
  br i1 %i.kg, label %.lr.ph.i.i.preheader.i95.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

.lr.ph.i.i.preheader.i95.i.i.i:                   ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i79.i.i.i
  %i.kh = add i64 %.3.idx.i80.i.i.i, %.063.i70.i.i.i ; 2 uses
  %i.ki = add i64 %i.kh, -2
  %i.kj = add i64 %.063.i70.i.i.i, -9
  %umin.i96.i.i.i = call i64 @llvm.umin.i64(i64 %i.ki, i64 %i.kj) ; 2 uses
  %i.kk = sub i64 %umin.i96.i.i.i, %.063.i70.i.i.i
  %scevgep.i97.i.i.i = getelementptr i8, ptr %.0.i69.i.i.i, i64 %i.kk ; 2 uses
  %i.kl = xor i64 %umin.i96.i.i.i, -1
  %i.km = add i64 %i.kh, %i.kl
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i97.i.i.i, i8 48, i64 %i.km, i1 false), !tbaa !83, !noalias !5713
  %scevgep65.i98.i.i.i = getelementptr i8, ptr %scevgep.i97.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i95.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i79.i.i.i
  %i.kn = phi ptr [ %i.kf, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i79.i.i.i ], [ %scevgep65.i98.i.i.i, %.lr.ph.i.i.preheader.i95.i.i.i ] ; 3 uses
  %i.ko = shl nsw i64 %i.jl, 1
  %i.kp = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ko
  %i.kq = getelementptr i8, ptr %i.kn, i64 -5
  %i.kr = load <2 x i8>, ptr %i.kp, align 1, !tbaa !83, !noalias !5713
  %i.ks = shufflevector <2 x i8> %i.kr, <2 x i8> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.kt = shufflevector <4 x i8> <i8 58, i8 poison, i8 poison, i8 46>, <4 x i8> %i.ks, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i8> %i.kt, ptr %i.kq, align 1, !tbaa !83, !noalias !5713
  %i.ku = shl nsw i64 %i.ji, 1
  %i.kv = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ku
  %i.kw = shl nuw nsw i64 %i.jg, 1
  %i.kx = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.kw
  %i.ky = add nsw i32 %.sroa.037.0.i67.i.i.i, 719468 ; 2 uses
  %i.kz = udiv i32 %i.ky, 146097                  ; 2 uses
  %.neg.i.i17.i83.i.i.i = mul nsw i32 %i.kz, -146097
  %i.la = add nsw i32 %.neg.i.i17.i83.i.i.i, %i.ky ; 5 uses
  %i.lb = udiv i32 %i.la, 1460
  %i.lc = udiv i32 %i.la, 36524
  %i.ld = udiv i32 %i.la, 146096
  %.neg13 = add nsw i32 %i.lc, %i.la
  %i.le = add nuw nsw i32 %i.ld, %i.lb
  %i.lf = sub nsw i32 %.neg13, %i.le              ; 3 uses
  %i.lg = udiv i32 %i.lf, 365                     ; 2 uses
  %i.lh = mul nuw nsw i32 %i.kz, 400
  %i.li = add nuw nsw i32 %i.lg, %i.lh
  %i.lj = udiv i32 %i.lf, 1460
  %i.lk = udiv i32 %i.lf, 36500
  %.neg36.i.i.i85.i.i.i = mul i32 %i.lg, -365
  %.neg37.i.i.i86.i.i.i = sub nsw i32 %i.la, %i.lj
  %.neg25.i.i.i87.i.i.i = add nsw i32 %.neg37.i.i.i86.i.i.i, %i.lk
  %i.ll = add i32 %.neg25.i.i.i87.i.i.i, %.neg36.i.i.i85.i.i.i ; 2 uses
  %i.lm = mul i32 %i.ll, 5
  %i.ln = add i32 %i.lm, 2                        ; 2 uses
  %i.lo = udiv i32 %i.ln, 153                     ; 2 uses
  %i.lp = mul nuw i32 %i.lo, 153
  %i.lq = add nuw i32 %i.lp, 2
  %i.lr = udiv i32 %i.lq, 5
  %i.ls = sub i32 %i.ll, %i.lr
  %i.lt = icmp ult i32 %i.ln, 1530
  %.v.i.i.i88.i.i.i = select i1 %i.lt, i32 3, i32 -9
  %i.lu = add nsw i32 %.v.i.i.i88.i.i.i, %i.lo    ; 2 uses
  %i.lv = icmp ult i32 %i.lu, 3
  %i.lw = zext i1 %i.lv to i32
  %i.lx = add nuw nsw i32 %i.li, %i.lw
  %i.ly = shl i32 %i.ls, 24
  %.sroa.3.0.insert.ext.i.i.i89.i.i.i = add i32 %i.ly, 16777216
  %i.lz = lshr exact i32 %.sroa.3.0.insert.ext.i.i.i89.i.i.i, 23
  %i.ma = zext nneg i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ma
  %i.mc = shl nsw i32 %i.lu, 1
  %i.md = and i32 %i.mc, 510
  %i.me = zext nneg i32 %i.md to i64
  %i.mf = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.me
  %sext.i.i90.i.i.i = shl i32 %i.lx, 16
  %i.mg = ashr exact i32 %sext.i.i90.i.i.i, 16    ; 2 uses
  %i.mh = icmp slt i32 %i.mg, 0
  %i.mi = call i32 @llvm.abs.i32(i32 %i.mg, i1 true) ; 2 uses
  %.lhs.trunc.i.i91.i.i.i = trunc nuw i32 %i.mi to i16 ; 3 uses
  %i.mj = urem i16 %.lhs.trunc.i.i91.i.i.i, 100
  %i.mk = shl nuw nsw i16 %i.mj, 1
  %i.ml = zext nneg i16 %i.mk to i64
  %i.mm = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ml
  %i.mn = udiv i16 %.lhs.trunc.i.i91.i.i.i, 100
  %i.mo = urem i16 %i.mn, 100
  %i.mp = shl nuw nsw i16 %i.mo, 1
  %i.mq = zext nneg i16 %i.mp to i64
  %i.mr = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.mq
  %i.ms = getelementptr i8, ptr %i.kn, i64 -21    ; 2 uses
  %i.mt = load <2 x i8>, ptr %i.kv, align 1, !tbaa !83, !noalias !5713
  %i.mu = load <2 x i8>, ptr %i.kx, align 1, !tbaa !83, !noalias !5713
  %i.mv = load <2 x i8>, ptr %i.mb, align 1, !tbaa !83, !noalias !5713
  %i.mw = load <2 x i8>, ptr %i.mf, align 1, !tbaa !83, !noalias !5713
  %i.mx = load <2 x i8>, ptr %i.mm, align 1, !tbaa !83, !noalias !5713
  %i.my = load <2 x i8>, ptr %i.mr, align 1, !tbaa !83, !noalias !5713
  %i.mz = shufflevector <2 x i8> %i.my, <2 x i8> %i.mx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.na = shufflevector <16 x i8> %i.mz, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 32, i8 poison, i8 poison, i8 58, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 poison, i32 poison, i32 23, i32 poison, i32 poison, i32 26, i32 poison, i32 poison, i32 29, i32 poison, i32 poison>
  %i.nb = shufflevector <2 x i8> %i.mw, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nc = shufflevector <16 x i8> %i.na, <16 x i8> %i.nb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 7, i32 poison, i32 poison, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.nd = shufflevector <2 x i8> %i.mv, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ne = shufflevector <16 x i8> %i.nc, <16 x i8> %i.nd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.nf = shufflevector <2 x i8> %i.mu, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ng = shufflevector <16 x i8> %i.ne, <16 x i8> %i.nf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 17, i32 13, i32 poison, i32 poison>
  %i.nh = shufflevector <2 x i8> %i.mt, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ni = shufflevector <16 x i8> %i.ng, <16 x i8> %i.nh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  store <16 x i8> %i.ni, ptr %i.ms, align 1, !tbaa !83, !noalias !5713
  %i.nj = icmp samesign ugt i32 %i.mi, 9999
  br i1 %i.nj, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i
  %i.nk = udiv i16 %.lhs.trunc.i.i91.i.i.i, 10000
  %i.nl = trunc nuw nsw i16 %i.nk to i8
  %i.nm = or disjoint i8 %i.nl, 48
  %i.nn = getelementptr i8, ptr %i.kn, i64 -22    ; 2 uses
  store i8 %i.nm, ptr %i.nn, align 1, !tbaa !83, !noalias !5713
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i
  %.4.i92.i.i.i = phi ptr [ %i.nn, %bb.aj ], [ %i.ms, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i ] ; 2 uses
  br i1 %i.mh, label %bb.al, label %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEclINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeES2_E4ExecEPNSA_13KernelContextERKNSA_8ExecSpanEPNSA_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSR_EEET_lOST_.exit.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.no = getelementptr inbounds i8, ptr %.4.i92.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.no, align 1, !tbaa !83, !noalias !5713
  br label %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEclINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeES2_E4ExecEPNSA_13KernelContextERKNSA_8ExecSpanEPNSA_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSR_EEET_lOST_.exit.i.i.i

_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEclINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeES2_E4ExecEPNSA_13KernelContextERKNSA_8ExecSpanEPNSA_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSR_EEET_lOST_.exit.i.i.i: ; preds = %bb.al, %bb.ak
  %.5.i93.i.i.i = phi ptr [ %i.no, %bb.al ], [ %.4.i92.i.i.i, %bb.ak ] ; 2 uses
  %i.np = ptrtoint ptr %i.je to i64
  %i.nq = ptrtoint ptr %.5.i93.i.i.i to i64
  %i.nr = sub i64 %i.np, %i.nq
  call void @_ZN5arrow17BinaryViewBuilder6AppendEPKhl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(272) %.0.val.8.val, ptr noundef nonnull %.5.i93.i.i.i, i64 noundef %i.nr)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !5713
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_13TimestampTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

bb.am:                                            ; preds = %bb.a
  %i.ns = add i64 %i.b, 1096193779200
  %spec.select.i.i108.i.i.i = icmp ult i64 %i.ns, 2068084742400
  %.sroa.gep.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 23 ; 2 uses
  %.sroa.gep52.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 22 ; 2 uses
  br i1 %spec.select.i.i108.i.i.i, label %bb.ao, label %bb.an, !prof !103

bb.an:                                            ; preds = %bb.am
  call fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_13TimestampTypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %i.b, ptr noundef nonnull readonly align 8 dereferenceable(8) %6)
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_13TimestampTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

bb.ao:                                            ; preds = %bb.am
  %i.nt = sdiv i64 %i.b, 86400                    ; 3 uses
  %i.nu = trunc nsw i64 %i.nt to i32              ; 2 uses
  %i.nv = mul nsw i64 %i.nt, 86400                ; 2 uses
  %.not46.i.i.i.i = icmp sgt i64 %i.nv, %i.b
  br i1 %.not46.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.neg.i.i.i109.i.i.i = mul nsw i64 %i.nt, -86400
  %i.nw = add nsw i64 %.neg.i.i.i109.i.i.i, %i.b
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %.neg.i125.i.i.i = add nsw i64 %i.b, 86400
  %i.nx = sub nsw i64 %.neg.i125.i.i.i, %i.nv
  %i.ny = add nsw i32 %i.nu, -1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.sroa.029.0.i.i.i.i = phi i64 [ %i.nw, %bb.ap ], [ %i.nx, %bb.aq ]
  %.sroa.030.0.i.i.i.i = phi i32 [ %i.nu, %bb.ap ], [ %i.ny, %bb.aq ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !5714
  %.not.i110.i.i.i = icmp eq i64 %.0.val.0.val.16.val, 0
  br i1 %.not.i110.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i8 90, ptr %.sroa.gep52.i.i.i.i, align 1, !tbaa !83, !noalias !5714
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.sroa.phi.i.i.i.i = phi ptr [ %.sroa.gep.i.i.i.i, %bb.ar ], [ %.sroa.gep52.i.i.i.i, %bb.as ] ; 5 uses
  %spec.select.i.i.i.i111.i.i.i = tail call i64 @llvm.abs.i64(i64 %.sroa.029.0.i.i.i.i, i1 true) ; 3 uses
  %i.nz = udiv i64 %spec.select.i.i.i.i111.i.i.i, 3600 ; 3 uses
  %i.oa = udiv i64 %spec.select.i.i.i.i111.i.i.i, 60
  %.neg.i.i.i.i112.i.i.i = mul nsw i64 %i.nz, -60
  %i.ob = add nsw i64 %.neg.i.i.i.i112.i.i.i, %i.oa ; 2 uses
  %.neg.i7.i.i.i113.i.i.i = mul nsw i64 %i.nz, -3600
  %i.oc = add nsw i64 %.neg.i7.i.i.i113.i.i.i, %spec.select.i.i.i.i111.i.i.i
  %.neg.i8.i.i.i114.i.i.i = mul nsw i64 %i.ob, -60
  %i.od = add nsw i64 %i.oc, %.neg.i8.i.i.i114.i.i.i
  %i.oe = shl nuw nsw i64 %i.od, 1
  %i.of = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.oe ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 1
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !83, !noalias !5714
  %i.oi = getelementptr inbounds i8, ptr %.sroa.phi.i.i.i.i, i64 -1
  store i8 %i.oh, ptr %i.oi, align 1, !tbaa !83, !noalias !5714
  %i.oj = load i8, ptr %i.of, align 1, !tbaa !83, !noalias !5714
  %i.ok = getelementptr inbounds i8, ptr %.sroa.phi.i.i.i.i, i64 -2
  store i8 %i.oj, ptr %i.ok, align 1, !tbaa !83, !noalias !5714
  %i.ol = getelementptr inbounds i8, ptr %.sroa.phi.i.i.i.i, i64 -3
  store i8 58, ptr %i.ol, align 1, !tbaa !83, !noalias !5714
  %i.om = shl nuw nsw i64 %i.ob, 1
  %i.on = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.om
  %i.oo = shl nuw nsw i64 %i.nz, 1
  %i.op = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.oo
  %i.oq = add nsw i32 %.sroa.030.0.i.i.i.i, 719468 ; 2 uses
  %i.or = icmp sgt i32 %.sroa.030.0.i.i.i.i, -719469
  %i.os = add nuw nsw i32 %.sroa.030.0.i.i.i.i, 573372
  %i.ot = select i1 %i.or, i32 %i.oq, i32 %i.os
  %i.ou = sdiv i32 %i.ot, 146097                  ; 2 uses
  %.neg.i.i17.i115.i.i.i = mul nsw i32 %i.ou, -146097
  %i.ov = add nsw i32 %.neg.i.i17.i115.i.i.i, %i.oq ; 5 uses
  %i.ow = udiv i32 %i.ov, 1460
  %i.ox = udiv i32 %i.ov, 36524
  %i.oy = udiv i32 %i.ov, 146096
  %.neg18 = add nsw i32 %i.ox, %i.ov
  %i.oz = add nuw nsw i32 %i.oy, %i.ow
  %i.pa = sub nsw i32 %.neg18, %i.oz              ; 3 uses
  %i.pb = udiv i32 %i.pa, 365                     ; 2 uses
  %i.pc = mul nsw i32 %i.ou, 400
  %i.pd = add nsw i32 %i.pb, %i.pc
  %i.pe = udiv i32 %i.pa, 1460
  %i.pf = udiv i32 %i.pa, 36500
  %.neg36.i.i.i116.i.i.i = mul i32 %i.pb, -365
  %.neg37.i.i.i117.i.i.i = sub nsw i32 %i.ov, %i.pe
  %.neg25.i.i.i118.i.i.i = add nsw i32 %.neg37.i.i.i117.i.i.i, %i.pf
  %i.pg = add i32 %.neg25.i.i.i118.i.i.i, %.neg36.i.i.i116.i.i.i ; 2 uses
  %i.ph = mul i32 %i.pg, 5
  %i.pi = add i32 %i.ph, 2                        ; 2 uses
  %i.pj = udiv i32 %i.pi, 153                     ; 2 uses
  %i.pk = mul nuw i32 %i.pj, 153
  %i.pl = add nuw i32 %i.pk, 2
  %i.pm = udiv i32 %i.pl, 5
  %i.pn = sub i32 %i.pg, %i.pm
  %i.po = icmp ult i32 %i.pi, 1530
  %.v.i.i.i119.i.i.i = select i1 %i.po, i32 3, i32 -9
  %i.pp = add nsw i32 %.v.i.i.i119.i.i.i, %i.pj   ; 2 uses
  %i.pq = icmp ult i32 %i.pp, 3
  %i.pr = zext i1 %i.pq to i32
  %i.ps = add nsw i32 %i.pd, %i.pr
  %i.pt = shl i32 %i.pn, 24
  %.sroa.3.0.insert.ext.i.i.i120.i.i.i = add i32 %i.pt, 16777216
  %i.pu = lshr exact i32 %.sroa.3.0.insert.ext.i.i.i120.i.i.i, 23
  %i.pv = zext nneg i32 %i.pu to i64
  %i.pw = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.pv
  %i.px = shl nsw i32 %i.pp, 1
  %i.py = and i32 %i.px, 510
  %i.pz = zext nneg i32 %i.py to i64
  %i.qa = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.pz
  %sext.i.i121.i.i.i = shl i32 %i.ps, 16
  %i.qb = ashr exact i32 %sext.i.i121.i.i.i, 16   ; 2 uses
  %i.qc = icmp slt i32 %i.qb, 0
  %i.qd = tail call i32 @llvm.abs.i32(i32 %i.qb, i1 true) ; 2 uses
  %.lhs.trunc.i.i122.i.i.i = trunc nuw i32 %i.qd to i16 ; 3 uses
  %i.qe = urem i16 %.lhs.trunc.i.i122.i.i.i, 100
  %i.qf = shl nuw nsw i16 %i.qe, 1
  %i.qg = zext nneg i16 %i.qf to i64
  %i.qh = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.qg
  %i.qi = udiv i16 %.lhs.trunc.i.i122.i.i.i, 100
  %i.qj = urem i16 %i.qi, 100
  %i.qk = shl nuw nsw i16 %i.qj, 1
  %i.ql = zext nneg i16 %i.qk to i64
  %i.qm = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ql
  %i.qn = getelementptr inbounds i8, ptr %.sroa.phi.i.i.i.i, i64 -19 ; 2 uses
  %i.qo = load <2 x i8>, ptr %i.on, align 1, !tbaa !83, !noalias !5714
  %i.qp = load <2 x i8>, ptr %i.op, align 1, !tbaa !83, !noalias !5714
  %i.qq = load <2 x i8>, ptr %i.pw, align 1, !tbaa !83, !noalias !5714
  %i.qr = load <2 x i8>, ptr %i.qa, align 1, !tbaa !83, !noalias !5714
  %i.qs = load <2 x i8>, ptr %i.qh, align 1, !tbaa !83, !noalias !5714
  %i.qt = load <2 x i8>, ptr %i.qm, align 1, !tbaa !83, !noalias !5714
  %i.qu = shufflevector <2 x i8> %i.qt, <2 x i8> %i.qs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qv = shufflevector <16 x i8> %i.qu, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 32, i8 poison, i8 poison, i8 58, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 poison, i32 poison, i32 23, i32 poison, i32 poison, i32 26, i32 poison, i32 poison, i32 29, i32 poison, i32 poison>
  %i.qw = shufflevector <2 x i8> %i.qr, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qx = shufflevector <16 x i8> %i.qv, <16 x i8> %i.qw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 7, i32 poison, i32 poison, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.qy = shufflevector <2 x i8> %i.qq, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qz = shufflevector <16 x i8> %i.qx, <16 x i8> %i.qy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.ra = shufflevector <2 x i8> %i.qp, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rb = shufflevector <16 x i8> %i.qz, <16 x i8> %i.ra, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 17, i32 13, i32 poison, i32 poison>
  %i.rc = shufflevector <2 x i8> %i.qo, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rd = shufflevector <16 x i8> %i.rb, <16 x i8> %i.rc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  store <16 x i8> %i.rd, ptr %i.qn, align 1, !tbaa !83, !noalias !5714
  %i.re = icmp samesign ugt i32 %i.qd, 9999
  br i1 %i.re, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.rf = udiv i16 %.lhs.trunc.i.i122.i.i.i, 10000
  %i.rg = trunc nuw nsw i16 %i.rf to i8
  %i.rh = or disjoint i8 %i.rg, 48
  %i.ri = getelementptr inbounds i8, ptr %.sroa.phi.i.i.i.i, i64 -20 ; 2 uses
  store i8 %i.rh, ptr %i.ri, align 1, !tbaa !83, !noalias !5714
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.1.i.i.i.i = phi ptr [ %i.ri, %bb.au ], [ %i.qn, %bb.at ] ; 2 uses
  br i1 %i.qc, label %bb.aw, label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i123.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.rj = getelementptr inbounds i8, ptr %.1.i.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.rj, align 1, !tbaa !83, !noalias !5714
  br label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i123.i.i.i

_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i123.i.i.i: ; preds = %bb.aw, %bb.av
  %.2.i.i.i.i = phi ptr [ %i.rj, %bb.aw ], [ %.1.i.i.i.i, %bb.av ] ; 2 uses
  %i.rk = ptrtoint ptr %.sroa.gep.i.i.i.i to i64
  %i.rl = ptrtoint ptr %.2.i.i.i.i to i64
  %i.rm = sub i64 %i.rk, %i.rl
  call void @_ZN5arrow17BinaryViewBuilder6AppendEPKhl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(272) %.0.val.8.val, ptr noundef nonnull %.2.i.i.i.i, i64 noundef %i.rm)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !5714
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_13TimestampTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_13TimestampTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit: ; preds = %bb.c, %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i.i.i.i, %bb.p, %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i48.i.i.i, %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEclINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeES2_E4ExecEPNSA_13KernelContextERKNSA_8ExecSpanEPNSA_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSR_EEET_lOST_.exit.i.i.i, %bb.an, %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i123.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !5710
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_14StringViewTypeENS_13TimestampTypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN5arrow8internal7ToCharsIlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 noundef %.0.val)
  %i.a = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.27, i64 noundef 21)
          to label %.noexc unwind label %bb.g     ; 8 uses

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 13 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !211, !alias.scope !5719
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !138  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread, label %bb.b

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread: ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !212  ; 5 uses
  %i.h = icmp samesign ult i64 %i.g, 16
  call void @llvm.assume(i1 %i.h)
  %i.i = add nuw nsw i64 %i.g, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.i, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.g, ptr %i.k, align 8, !tbaa !212, !alias.scope !5719
  store ptr %i.d, ptr %i.a, align 8, !tbaa !138
  store i64 0, ptr %i.j, align 8, !tbaa !212
  store i8 0, ptr %i.d, align 8, !tbaa !83
  %i.l = add nuw nsw i64 %i.g, 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.b:                                             ; preds = %.noexc
  store ptr %i.c, ptr %3, align 8, !tbaa !138, !alias.scope !5719
  %i.m = load i64, ptr %i.d, align 8, !tbaa !83
  store i64 %i.m, ptr %i.b, align 8, !tbaa !83, !alias.scope !5719
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !212 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %.pre.i, ptr %i.o, align 8, !tbaa !212, !alias.scope !5719
  store ptr %i.d, ptr %i.a, align 8, !tbaa !138
  store i64 0, ptr %i.n, align 8, !tbaa !212
  store i8 0, ptr %i.d, align 8, !tbaa !83
  call void @llvm.experimental.noalias.scope.decl(metadata !5720)
  %i.p = icmp eq i64 %.pre.i, 9223372036854775807
  br i1 %i.p, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #32
          to label %.noexc10 unwind label %bb.h

.noexc10:                                         ; preds = %bb.c
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.q = add nsw i64 %.pre.i, 1                   ; 2 uses
  %i.r = icmp eq ptr %i.c, %i.b
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.s = phi i64 [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ]
  %i.t = phi ptr [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ]
  %i.u = phi i64 [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ] ; 2 uses
  %i.v = phi ptr [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ]
  %i.w = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.w)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.x = load i64, ptr %i.b, align 8, !tbaa !83, !noalias !5720
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.y = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 3 uses
  %i.z = phi ptr [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.aa = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 2 uses
  %i.ab = phi ptr [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 4 uses
  %i.ac = phi i64 [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.y, %i.ac
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
end_hunk_3
begin_hunk_4_@_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Date64TypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_:bb.a
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #30
  %.pre = load ptr, ptr %2, align 8, !tbaa !138
  %.pre1 = load i64, ptr %i.ap, align 8, !tbaa !212
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %i.av = phi i64 [ %.pre1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.aw = phi ptr [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %.val = load ptr, ptr %1, align 8, !tbaa !7562
  invoke void @_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEE6AppendEPKhl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %.val, ptr noundef %i.aw, i64 noundef %i.av)
          to label %_ZZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Date64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clElENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit unwind label %bb.i

_ZZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Date64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clElENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.ax = load ptr, ptr %2, align 8, !tbaa !138   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ag
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Date64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clElENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit
  %i.az = load i64, ptr %i.ag, align 8, !tbaa !83
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Date64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clElENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.g:                                             ; preds = %bb.a
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.h:                                             ; preds = %bb.e, %bb.c
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %3, align 8, !tbaa !138   ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.b
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.h
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !83
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.g ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %i.bc, %bb.h ]
  %i.bh = load ptr, ptr %4, align 8, !tbaa !138   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !83
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %2, align 8, !tbaa !138   ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.ag
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.i
  %i.bp = load i64, ptr %i.ag, align 8, !tbaa !83
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %.pn6 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.bm, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn6
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10Time32TypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeES2_E4ExecEPNS5_13KernelContextERKNS5_8ExecSpanEPNS5_10ExecResultEEUliE_ZNSA_4ExecESC_SF_SH_EUlvE_EENS_6StatusERKNS_9ArraySpanEOT_OT0_ENKUllE_clEl(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 %.0.val.0.val.0.val, ptr %.0.val.8.val, ptr nofree readonly captures(none) %.8.val.0.val, i64 noundef %1) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.444", align 1   ; 7 uses
  %3 = alloca %"struct.std::array.440", align 1   ; 9 uses
  %4 = alloca %"struct.std::array.436", align 1   ; 9 uses
  %5 = alloca %"struct.std::array.412", align 1   ; 9 uses
  %6 = alloca %class.anon.818, align 8            ; 7 uses
  %i.a = getelementptr inbounds [4 x i8], ptr %.8.val.0.val, i64 %1
  %i.b = load i32, ptr %i.a, align 4, !tbaa !49   ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !7577
  store ptr %.0.val.8.val, ptr %6, align 8, !tbaa !509, !noalias !7577
  switch i32 %.0.val.0.val.0.val, label %bb.q [
    i32 3, label %bb.l
    i32 1, label %bb.b
    i32 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoaddr ptr %5 to i64                  ; 3 uses
  %spec.select.i.i.i.i.i = icmp ult i32 %i.b, 86400000
  br i1 %spec.select.i.i.i.i.i, label %bb.d, label %bb.c, !prof !103

bb.c:                                             ; preds = %bb.b
  call fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRiRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Time32TypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUliE_clEiEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 %i.b, ptr noundef nonnull readonly align 8 dereferenceable(8) %6)
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEi.exit

bb.d:                                             ; preds = %bb.b
  %i.d = zext nneg i32 %i.b to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !7578
  %.ptr26.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.e = udiv i32 %i.b, 3600000
  %.zext.i.i.i.i = zext nneg i32 %i.e to i64      ; 3 uses
  %i.f = udiv i32 %i.b, 60000
  %.zext23.i.i.i.i = zext nneg i32 %i.f to i64
  %.neg.i.i.i.i.i.i.i = mul nsw i64 %.zext.i.i.i.i, -60
  %i.g = add nsw i64 %.neg.i.i.i.i.i.i.i, %.zext23.i.i.i.i ; 2 uses
  %.neg.i7.i.i.i.i.i.i = mul nsw i64 %.zext.i.i.i.i, -3600000
  %i.h = add nsw i64 %.neg.i7.i.i.i.i.i.i, %i.d
  %.neg.i8.i.i.i.i.i.i = mul nsw i64 %i.g, -60000
  %i.i = add nsw i64 %i.h, %.neg.i8.i.i.i.i.i.i   ; 2 uses
  %.lhs.trunc24.i.i.i.i = trunc nsw i64 %i.i to i32
  %i.j = sdiv i32 %.lhs.trunc24.i.i.i.i, 1000
  %.sext.i.i.i.i = sext i32 %i.j to i64           ; 2 uses
  %.neg.i.i.i.i.i.i.i.i = mul nsw i64 %.sext.i.i.i.i, -1000
  %i.k = add nsw i64 %.neg.i.i.i.i.i.i.i.i, %i.i  ; 3 uses
  %i.l = icmp sgt i64 %i.k, 99
  br i1 %i.l, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i
  %.0.idx.i.i.i.i = phi i64 [ %.0.add.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ 12, %bb.d ] ; 2 uses
  %.08.i.i.i.i.i.i.i = phi i64 [ %i.t, %.lr.ph.i.i.i.i.i.i.i ], [ %i.k, %bb.d ] ; 3 uses
  %.0.ptr.i.i.i.i = getelementptr inbounds i8, ptr %5, i64 %.0.idx.i.i.i.i
  %i.m = urem i64 %.08.i.i.i.i.i.i.i, 100
  %i.n = shl nuw nsw i64 %i.m, 1
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !83, !noalias !7578
  %i.r = getelementptr inbounds i8, ptr %.0.ptr.i.i.i.i, i64 -1
  store i8 %i.q, ptr %i.r, align 1, !tbaa !83, !noalias !7578
  %i.s = load i8, ptr %i.o, align 1, !tbaa !83, !noalias !7578
  %.0.add.i.i.i.i = add nsw i64 %.0.idx.i.i.i.i, -2 ; 3 uses
  %.ptr27.i.i.i.i = getelementptr inbounds i8, ptr %5, i64 %.0.add.i.i.i.i
  store i8 %i.s, ptr %.ptr27.i.i.i.i, align 1, !tbaa !83, !noalias !7578
  %i.t = udiv i64 %.08.i.i.i.i.i.i.i, 100         ; 2 uses
  %i.u = icmp samesign ugt i64 %.08.i.i.i.i.i.i.i, 9999
  br i1 %i.u, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d
  %.1.idx.i.i.i.i = phi i64 [ 12, %bb.d ], [ %.0.add.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %i.k, %bb.d ], [ %i.t, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.v = icmp sgt i64 %.0.lcssa.i.i.i.i.i.i.i, 9
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.w = shl nuw nsw i64 %.0.lcssa.i.i.i.i.i.i.i, 1
  %i.x = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !83, !noalias !7578
  %.1.add.i.i.i.i = add nsw i64 %.1.idx.i.i.i.i, -1 ; 2 uses
  %.ptr25.i.i.i.i = getelementptr inbounds i8, ptr %5, i64 %.1.add.i.i.i.i
  store i8 %i.z, ptr %.ptr25.i.i.i.i, align 1, !tbaa !83, !noalias !7578
  %i.aa = load i8, ptr %i.x, align 1, !tbaa !83, !noalias !7578
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ab = trunc i64 %.0.lcssa.i.i.i.i.i.i.i to i8
  %i.ac = add i8 %i.ab, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.2.idx.i.i.i.i = phi i64 [ %.1.add.i.i.i.i, %bb.e ], [ %.1.idx.i.i.i.i, %bb.f ] ; 3 uses
  %.sink.i.i.i.i.i.i.i = phi i8 [ %i.aa, %bb.e ], [ %i.ac, %bb.f ]
  %i.ad = getelementptr i8, ptr %5, i64 %.2.idx.i.i.i.i ; 2 uses
  %.ptr.i.i.i.i = getelementptr i8, ptr %i.ad, i64 -1
  store i8 %.sink.i.i.i.i.i.i.i, ptr %.ptr.i.i.i.i, align 1, !tbaa !83, !noalias !7578
  %i.ae = icmp sgt i64 %.2.idx.i.i.i.i, 10
  br i1 %i.ae, label %.lr.ph.i.i.preheader.i.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i:                     ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i
  %i.af = add i64 %.2.idx.i.i.i.i, %i.c           ; 2 uses
  %i.ag = add i64 %i.af, -2
  %i.ah = add nuw i64 %i.c, 9
  %umin.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ah) ; 2 uses
  %i.ai = sub i64 %umin.i.i.i.i, %i.c
  %scevgep.i.i.i.i = getelementptr i8, ptr %5, i64 %i.ai ; 2 uses
  %i.aj = xor i64 %umin.i.i.i.i, -1
  %i.ak = add i64 %i.af, %i.aj
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i.i.i.i, i8 48, i64 %i.ak, i1 false), !tbaa !83, !noalias !7578
  %scevgep31.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i
  %i.al = phi ptr [ %i.ad, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i ], [ %scevgep31.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i ] ; 2 uses
  %i.am = shl nsw i64 %.sext.i.i.i.i, 1
  %i.an = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.am
  %i.ao = shl nuw nsw i64 %i.g, 1
  %i.ap = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ao
  %i.aq = shl nuw nsw i64 %.zext.i.i.i.i, 1
  %i.ar = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !83, !noalias !7578
  %i.au = getelementptr i8, ptr %i.al, i64 -9
  %i.av = load <2 x i8>, ptr %i.an, align 1, !tbaa !83, !noalias !7578
  %i.aw = load <2 x i8>, ptr %i.ap, align 1, !tbaa !83, !noalias !7578
  %i.ax = shufflevector <2 x i8> %i.aw, <2 x i8> %i.av, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison>
  %i.ay = shufflevector <8 x i8> %i.ax, <8 x i8> <i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 46>, <8 x i32> <i32 poison, i32 9, i32 2, i32 3, i32 12, i32 5, i32 6, i32 15>
  %i.az = insertelement <8 x i8> %i.ay, i8 %i.at, i64 0
  store <8 x i8> %i.az, ptr %i.au, align 1, !tbaa !83, !noalias !7578
  %i.ba = load i8, ptr %i.ar, align 1, !tbaa !83, !noalias !7578
  %i.bb = getelementptr i8, ptr %i.al, i64 -10    ; 3 uses
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !83, !noalias !7578
  %i.bc = ptrtoint ptr %.ptr26.i.i.i.i to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEE6AppendEPKhl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %.0.val.8.val, ptr noundef nonnull %i.bb, i64 noundef %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !7578
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEi.exit

bb.g:                                             ; preds = %bb.a
  %i.bf = ptrtoaddr ptr %4 to i64                 ; 3 uses
  %spec.select.i.i15.i.i.i = icmp sgt i32 %i.b, -1
  br i1 %spec.select.i.i15.i.i.i, label %bb.i, label %bb.h, !prof !103

bb.h:                                             ; preds = %bb.g
  call fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRiRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Time32TypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUliE_clEiEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 %i.b, ptr noundef nonnull readonly align 8 dereferenceable(8) %6)
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEi.exit

bb.i:                                             ; preds = %bb.g
  %i.bg = zext nneg i32 %i.b to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !7579
  %.ptr24.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 15
  %i.bh = udiv i32 %i.b, 60000000
  %.zext.i16.i.i.i = zext nneg i32 %i.bh to i64   ; 2 uses
  %.neg.i8.i.i.i17.i.i.i = mul nsw i64 %.zext.i16.i.i.i, -60000000
  %i.bi = add nsw i64 %.neg.i8.i.i.i17.i.i.i, %i.bg ; 2 uses
  %.lhs.trunc22.i.i.i.i = trunc nsw i64 %i.bi to i32
  %i.bj = sdiv i32 %.lhs.trunc22.i.i.i.i, 1000000
  %.sext.i18.i.i.i = sext i32 %i.bj to i64        ; 2 uses
  %.neg.i.i.i.i.i19.i.i.i = mul nsw i64 %.sext.i18.i.i.i, -1000000
  %i.bk = add nsw i64 %.neg.i.i.i.i.i19.i.i.i, %i.bi ; 3 uses
  %i.bl = icmp sgt i64 %i.bk, 99
  br i1 %i.bl, label %.lr.ph.i.i.i.i32.i.i.i, label %._crit_edge.i.i.i.i20.i.i.i

.lr.ph.i.i.i.i32.i.i.i:                           ; preds = %bb.i, %.lr.ph.i.i.i.i32.i.i.i
  %.0.idx.i33.i.i.i = phi i64 [ %.0.add.i36.i.i.i, %.lr.ph.i.i.i.i32.i.i.i ], [ 15, %bb.i ] ; 2 uses
  %.08.i.i.i.i34.i.i.i = phi i64 [ %i.bt, %.lr.ph.i.i.i.i32.i.i.i ], [ %i.bk, %bb.i ] ; 3 uses
  %.0.ptr.i35.i.i.i = getelementptr inbounds i8, ptr %4, i64 %.0.idx.i33.i.i.i
  %i.bm = urem i64 %.08.i.i.i.i34.i.i.i, 100
  %i.bn = shl nuw nsw i64 %i.bm, 1
  %i.bo = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !83, !noalias !7579
  %i.br = getelementptr inbounds i8, ptr %.0.ptr.i35.i.i.i, i64 -1
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !83, !noalias !7579
  %i.bs = load i8, ptr %i.bo, align 1, !tbaa !83, !noalias !7579
  %.0.add.i36.i.i.i = add nsw i64 %.0.idx.i33.i.i.i, -2 ; 3 uses
  %.ptr25.i37.i.i.i = getelementptr inbounds i8, ptr %4, i64 %.0.add.i36.i.i.i
  store i8 %i.bs, ptr %.ptr25.i37.i.i.i, align 1, !tbaa !83, !noalias !7579
  %i.bt = udiv i64 %.08.i.i.i.i34.i.i.i, 100      ; 2 uses
  %i.bu = icmp samesign ugt i64 %.08.i.i.i.i34.i.i.i, 9999
  br i1 %i.bu, label %.lr.ph.i.i.i.i32.i.i.i, label %._crit_edge.i.i.i.i20.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i20.i.i.i:                      ; preds = %.lr.ph.i.i.i.i32.i.i.i, %bb.i
  %.1.idx.i21.i.i.i = phi i64 [ 15, %bb.i ], [ %.0.add.i36.i.i.i, %.lr.ph.i.i.i.i32.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i22.i.i.i = phi i64 [ %i.bk, %bb.i ], [ %i.bt, %.lr.ph.i.i.i.i32.i.i.i ] ; 3 uses
  %i.bv = icmp sgt i64 %.0.lcssa.i.i.i.i22.i.i.i, 9
  br i1 %i.bv, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i.i20.i.i.i
  %i.bw = shl nuw nsw i64 %.0.lcssa.i.i.i.i22.i.i.i, 1
  %i.bx = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !83, !noalias !7579
  %.1.add.i31.i.i.i = add nsw i64 %.1.idx.i21.i.i.i, -1 ; 2 uses
  %.ptr23.i.i.i.i = getelementptr inbounds i8, ptr %4, i64 %.1.add.i31.i.i.i
  store i8 %i.bz, ptr %.ptr23.i.i.i.i, align 1, !tbaa !83, !noalias !7579
  %i.ca = load i8, ptr %i.bx, align 1, !tbaa !83, !noalias !7579
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i

bb.k:                                             ; preds = %._crit_edge.i.i.i.i20.i.i.i
  %i.cb = trunc i64 %.0.lcssa.i.i.i.i22.i.i.i to i8
  %i.cc = add i8 %i.cb, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i: ; preds = %bb.k, %bb.j
  %.2.idx.i24.i.i.i = phi i64 [ %.1.add.i31.i.i.i, %bb.j ], [ %.1.idx.i21.i.i.i, %bb.k ] ; 3 uses
  %.sink.i.i.i.i25.i.i.i = phi i8 [ %i.ca, %bb.j ], [ %i.cc, %bb.k ]
  %i.cd = getelementptr i8, ptr %4, i64 %.2.idx.i24.i.i.i ; 2 uses
  %.ptr.i26.i.i.i = getelementptr i8, ptr %i.cd, i64 -1
  store i8 %.sink.i.i.i.i25.i.i.i, ptr %.ptr.i26.i.i.i, align 1, !tbaa !83, !noalias !7579
  %i.ce = icmp sgt i64 %.2.idx.i24.i.i.i, 10
  br i1 %i.ce, label %.lr.ph.i.i.preheader.i28.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

.lr.ph.i.i.preheader.i28.i.i.i:                   ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i
  %i.cf = add i64 %.2.idx.i24.i.i.i, %i.bf        ; 2 uses
  %i.cg = add i64 %i.cf, -2
  %i.ch = add nuw i64 %i.bf, 9
  %umin.i29.i.i.i = call i64 @llvm.umin.i64(i64 %i.cg, i64 %i.ch) ; 2 uses
  %i.ci = sub i64 %umin.i29.i.i.i, %i.bf
  %scevgep.i30.i.i.i = getelementptr i8, ptr %4, i64 %i.ci ; 2 uses
  %i.cj = xor i64 %umin.i29.i.i.i, -1
  %i.ck = add i64 %i.cf, %i.cj
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i30.i.i.i, i8 48, i64 %i.ck, i1 false), !tbaa !83, !noalias !7579
  %scevgep29.i.i.i.i = getelementptr i8, ptr %scevgep.i30.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i28.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i
  %i.cl = phi ptr [ %i.cd, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i ], [ %scevgep29.i.i.i.i, %.lr.ph.i.i.preheader.i28.i.i.i ] ; 2 uses
  %i.cm = shl nsw i64 %.sext.i18.i.i.i, 1
  %i.cn = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.cm
  %i.co = shl nuw nsw i64 %.zext.i16.i.i.i, 1
  %i.cp = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.co
  %i.cq = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 1), align 1, !tbaa !83, !noalias !7579
  %i.cr = getelementptr i8, ptr %i.cl, i64 -9
  %i.cs = load <2 x i8>, ptr %i.cn, align 1, !tbaa !83, !noalias !7579
  %i.ct = load <2 x i8>, ptr %i.cp, align 1, !tbaa !83, !noalias !7579
  %i.cu = shufflevector <2 x i8> %i.ct, <2 x i8> %i.cs, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison>
  %i.cv = shufflevector <8 x i8> %i.cu, <8 x i8> <i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 46>, <8 x i32> <i32 poison, i32 9, i32 2, i32 3, i32 12, i32 5, i32 6, i32 15>
  %i.cw = insertelement <8 x i8> %i.cv, i8 %i.cq, i64 0
  store <8 x i8> %i.cw, ptr %i.cr, align 1, !tbaa !83, !noalias !7579
  %i.cx = load i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, align 1, !tbaa !83, !noalias !7579
  %i.cy = getelementptr i8, ptr %i.cl, i64 -10    ; 3 uses
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !83, !noalias !7579
  %i.cz = ptrtoint ptr %.ptr24.i.i.i.i to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da
  call void @_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEE6AppendEPKhl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %.0.val.8.val, ptr noundef nonnull %i.cy, i64 noundef %i.db)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !7579
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEi.exit

bb.l:                                             ; preds = %bb.a
  %i.dc = ptrtoaddr ptr %3 to i64                 ; 3 uses
  %spec.select.i.i38.i.i.i = icmp sgt i32 %i.b, -1
  br i1 %spec.select.i.i38.i.i.i, label %bb.n, label %bb.m, !prof !103

bb.m:                                             ; preds = %bb.l
  call fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRiRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Time32TypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUliE_clEiEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 %i.b, ptr noundef nonnull readonly align 8 dereferenceable(8) %6)
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEi.exit

bb.n:                                             ; preds = %bb.l
  %i.dd = zext nneg i32 %i.b to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !7580
  %.ptr23.i39.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.de = udiv i32 %i.b, 1000000000
  %.zext.i40.i.i.i = zext nneg i32 %i.de to i64   ; 2 uses
  %.neg.i.i.i.i.i41.i.i.i = mul nsw i64 %.zext.i40.i.i.i, -1000000000
  %i.df = add nsw i64 %.neg.i.i.i.i.i41.i.i.i, %i.dd ; 3 uses
  %i.dg = icmp sgt i64 %i.df, 99
  br i1 %i.dg, label %.lr.ph.i.i.i.i54.i.i.i, label %._crit_edge.i.i.i.i42.i.i.i

.lr.ph.i.i.i.i54.i.i.i:                           ; preds = %bb.n, %.lr.ph.i.i.i.i54.i.i.i
  %.0.idx.i55.i.i.i = phi i64 [ %.0.add.i58.i.i.i, %.lr.ph.i.i.i.i54.i.i.i ], [ 18, %bb.n ] ; 2 uses
  %.08.i.i.i.i56.i.i.i = phi i64 [ %i.do, %.lr.ph.i.i.i.i54.i.i.i ], [ %i.df, %bb.n ] ; 3 uses
  %.0.ptr.i57.i.i.i = getelementptr inbounds i8, ptr %3, i64 %.0.idx.i55.i.i.i
  %i.dh = urem i64 %.08.i.i.i.i56.i.i.i, 100
  %i.di = shl nuw nsw i64 %i.dh, 1
  %i.dj = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.di ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !83, !noalias !7580
  %i.dm = getelementptr inbounds i8, ptr %.0.ptr.i57.i.i.i, i64 -1
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !83, !noalias !7580
  %i.dn = load i8, ptr %i.dj, align 1, !tbaa !83, !noalias !7580
  %.0.add.i58.i.i.i = add nsw i64 %.0.idx.i55.i.i.i, -2 ; 3 uses
  %.ptr24.i59.i.i.i = getelementptr inbounds i8, ptr %3, i64 %.0.add.i58.i.i.i
  store i8 %i.dn, ptr %.ptr24.i59.i.i.i, align 1, !tbaa !83, !noalias !7580
  %i.do = udiv i64 %.08.i.i.i.i56.i.i.i, 100      ; 2 uses
  %i.dp = icmp samesign ugt i64 %.08.i.i.i.i56.i.i.i, 9999
  br i1 %i.dp, label %.lr.ph.i.i.i.i54.i.i.i, label %._crit_edge.i.i.i.i42.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i42.i.i.i:                      ; preds = %.lr.ph.i.i.i.i54.i.i.i, %bb.n
  %.1.idx.i43.i.i.i = phi i64 [ 18, %bb.n ], [ %.0.add.i58.i.i.i, %.lr.ph.i.i.i.i54.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i44.i.i.i = phi i64 [ %i.df, %bb.n ], [ %i.do, %.lr.ph.i.i.i.i54.i.i.i ] ; 3 uses
  %i.dq = icmp sgt i64 %.0.lcssa.i.i.i.i44.i.i.i, 9
  br i1 %i.dq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i.i.i42.i.i.i
  %i.dr = shl nuw nsw i64 %.0.lcssa.i.i.i.i44.i.i.i, 1
  %i.ds = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.dr ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !83, !noalias !7580
  %.1.add.i53.i.i.i = add nsw i64 %.1.idx.i43.i.i.i, -1 ; 2 uses
  %.ptr22.i.i.i.i = getelementptr inbounds i8, ptr %3, i64 %.1.add.i53.i.i.i
  store i8 %i.du, ptr %.ptr22.i.i.i.i, align 1, !tbaa !83, !noalias !7580
  %i.dv = load i8, ptr %i.ds, align 1, !tbaa !83, !noalias !7580
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i45.i.i.i

bb.p:                                             ; preds = %._crit_edge.i.i.i.i42.i.i.i
  %i.dw = trunc i64 %.0.lcssa.i.i.i.i44.i.i.i to i8
  %i.dx = add i8 %i.dw, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i45.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i45.i.i.i: ; preds = %bb.p, %bb.o
  %.2.idx.i46.i.i.i = phi i64 [ %.1.add.i53.i.i.i, %bb.o ], [ %.1.idx.i43.i.i.i, %bb.p ] ; 3 uses
  %.sink.i.i.i.i47.i.i.i = phi i8 [ %i.dv, %bb.o ], [ %i.dx, %bb.p ]
  %i.dy = getelementptr i8, ptr %3, i64 %.2.idx.i46.i.i.i ; 2 uses
  %.ptr.i48.i.i.i = getelementptr i8, ptr %i.dy, i64 -1
  store i8 %.sink.i.i.i.i47.i.i.i, ptr %.ptr.i48.i.i.i, align 1, !tbaa !83, !noalias !7580
  %i.dz = icmp sgt i64 %.2.idx.i46.i.i.i, 10
  br i1 %i.dz, label %.lr.ph.i.i.preheader.i50.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

.lr.ph.i.i.preheader.i50.i.i.i:                   ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i45.i.i.i
  %i.ea = add i64 %.2.idx.i46.i.i.i, %i.dc        ; 2 uses
  %i.eb = add i64 %i.ea, -2
  %i.ec = add nuw i64 %i.dc, 9
  %umin.i51.i.i.i = call i64 @llvm.umin.i64(i64 %i.eb, i64 %i.ec) ; 2 uses
  %i.ed = sub i64 %umin.i51.i.i.i, %i.dc
  %scevgep.i52.i.i.i = getelementptr i8, ptr %3, i64 %i.ed ; 2 uses
  %i.ee = xor i64 %umin.i51.i.i.i, -1
  %i.ef = add i64 %i.ea, %i.ee
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i52.i.i.i, i8 48, i64 %i.ef, i1 false), !tbaa !83, !noalias !7580
  %scevgep28.i.i.i.i = getelementptr i8, ptr %scevgep.i52.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i50.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i45.i.i.i
  %i.eg = phi ptr [ %i.dy, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i45.i.i.i ], [ %scevgep28.i.i.i.i, %.lr.ph.i.i.preheader.i50.i.i.i ] ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 -2
  store i8 46, ptr %i.eh, align 1, !tbaa !83, !noalias !7580
  %i.ei = shl nuw nsw i64 %.zext.i40.i.i.i, 1
  %i.ej = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ei
  %i.ek = getelementptr i8, ptr %i.eg, i64 -10    ; 3 uses
  %i.el = load <2 x i8>, ptr %i.ej, align 1, !tbaa !83, !noalias !7580
  %i.em = load <2 x i8>, ptr @_ZN5arrow8internal6detail11digit_pairsE, align 1, !tbaa !83, !noalias !7580
  %i.en = shufflevector <2 x i8> %i.em, <2 x i8> %i.el, <8 x i32> <i32 0, i32 1, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3>
  %i.eo = shufflevector <8 x i8> %i.en, <8 x i8> <i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison>, <8 x i32> <i32 0, i32 1, i32 10, i32 3, i32 4, i32 13, i32 6, i32 7>
  store <8 x i8> %i.eo, ptr %i.ek, align 1, !tbaa !83, !noalias !7580
  %i.ep = ptrtoint ptr %.ptr23.i39.i.i.i to i64
  %i.eq = ptrtoint ptr %i.ek to i64
  %i.er = sub i64 %i.ep, %i.eq
  call void @_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEE6AppendEPKhl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %.0.val.8.val, ptr noundef nonnull %i.ek, i64 noundef %i.er)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !7580
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEi.exit

bb.q:                                             ; preds = %bb.a
  %spec.select.i.i60.i.i.i = icmp ult i32 %i.b, 86400
  br i1 %spec.select.i.i60.i.i.i, label %bb.s, label %bb.r, !prof !103

bb.r:                                             ; preds = %bb.q
  call fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRiRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Time32TypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUliE_clEiEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 %i.b, ptr noundef nonnull readonly align 8 dereferenceable(8) %6)
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEi.exit

bb.s:                                             ; preds = %bb.q
  %i.es = zext nneg i32 %i.b to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !7581
  %i.et = udiv i32 %i.b, 3600
  %.zext.i61.i.i.i = zext nneg i32 %i.et to i64   ; 3 uses
  %i.eu = udiv i32 %i.b, 60
  %.zext16.i.i.i.i = zext nneg i32 %i.eu to i64
  %.neg.i.i.i.i62.i.i.i = mul nsw i64 %.zext.i61.i.i.i, -60
  %i.ev = add nsw i64 %.neg.i.i.i.i62.i.i.i, %.zext16.i.i.i.i ; 2 uses
  %.neg.i7.i.i.i63.i.i.i = mul nsw i64 %.zext.i61.i.i.i, -3600
  %i.ew = add nsw i64 %.neg.i7.i.i.i63.i.i.i, %i.es
  %.neg.i8.i.i.i64.i.i.i = mul nsw i64 %i.ev, -60
  %i.ex = add nsw i64 %i.ew, %.neg.i8.i.i.i64.i.i.i
  %i.ey = shl nuw nsw i64 %i.ex, 1
  %i.ez = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ey ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !83, !noalias !7581
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !83, !noalias !7581
  %i.fd = load i8, ptr %i.ez, align 1, !tbaa !83, !noalias !7581
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !83, !noalias !7581
  %i.ff = shl nuw nsw i64 %i.ev, 1
  %i.fg = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.fi = load <2 x i8>, ptr %i.fg, align 1, !tbaa !83, !noalias !7581
  %i.fj = shufflevector <2 x i8> %i.fi, <2 x i8> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.fk = shufflevector <4 x i8> <i8 58, i8 poison, i8 poison, i8 58>, <4 x i8> %i.fj, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i8> %i.fk, ptr %i.fh, align 1, !tbaa !83, !noalias !7581
  %i.fl = shl nuw nsw i64 %.zext.i61.i.i.i, 1
  %i.fm = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fl ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !83, !noalias !7581
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.fo, ptr %i.fp, align 1, !tbaa !83, !noalias !7581
  %i.fq = load i8, ptr %i.fm, align 1, !tbaa !83, !noalias !7581
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !83, !noalias !7581
  call void @_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEE6AppendEPKhl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %.0.val.8.val, ptr noundef nonnull %i.fr, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !7581
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEi.exit

_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEi.exit: ; preds = %bb.c, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i, %bb.h, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i, %bb.m, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !7577
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRiRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Time32TypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUliE_clEiEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN5arrow8internal7ToCharsIiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i32 noundef %.0.val)
  %i.a = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.27, i64 noundef 21)
          to label %.noexc unwind label %bb.g     ; 8 uses

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 13 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !211, !alias.scope !7586
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !138  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread, label %bb.b

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread: ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !212  ; 5 uses
  %i.h = icmp samesign ult i64 %i.g, 16
  call void @llvm.assume(i1 %i.h)
  %i.i = add nuw nsw i64 %i.g, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.i, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.g, ptr %i.k, align 8, !tbaa !212, !alias.scope !7586
  store ptr %i.d, ptr %i.a, align 8, !tbaa !138
  store i64 0, ptr %i.j, align 8, !tbaa !212
  store i8 0, ptr %i.d, align 8, !tbaa !83
  %i.l = add nuw nsw i64 %i.g, 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.b:                                             ; preds = %.noexc
  store ptr %i.c, ptr %3, align 8, !tbaa !138, !alias.scope !7586
  %i.m = load i64, ptr %i.d, align 8, !tbaa !83
  store i64 %i.m, ptr %i.b, align 8, !tbaa !83, !alias.scope !7586
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !212 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %.pre.i, ptr %i.o, align 8, !tbaa !212, !alias.scope !7586
  store ptr %i.d, ptr %i.a, align 8, !tbaa !138
  store i64 0, ptr %i.n, align 8, !tbaa !212
  store i8 0, ptr %i.d, align 8, !tbaa !83
  call void @llvm.experimental.noalias.scope.decl(metadata !7587)
  %i.p = icmp eq i64 %.pre.i, 9223372036854775807
  br i1 %i.p, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #32
          to label %.noexc10 unwind label %bb.h

.noexc10:                                         ; preds = %bb.c
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.q = add nsw i64 %.pre.i, 1                   ; 2 uses
  %i.r = icmp eq ptr %i.c, %i.b
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.s = phi i64 [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ]
  %i.t = phi ptr [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ]
  %i.u = phi i64 [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ] ; 2 uses
  %i.v = phi ptr [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ]
  %i.w = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.w)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.x = load i64, ptr %i.b, align 8, !tbaa !83, !noalias !7587
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.y = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 3 uses
  %i.z = phi ptr [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.aa = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 2 uses
  %i.ab = phi ptr [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 4 uses
  %i.ac = phi i64 [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.y, %i.ac
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  store i8 62, ptr %i.ad, align 1, !tbaa !83, !noalias !7587
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.aa, i64 noundef 0, ptr noundef nonnull @.str.28, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.e, %bb.d
  store i64 %i.y, ptr %i.ab, align 8, !tbaa !212, !noalias !7587
  %i.ae = load ptr, ptr %3, align 8, !tbaa !138, !noalias !7587
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.y
  store i8 0, ptr %i.af, align 1, !tbaa !83, !noalias !7587
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.ag, ptr %2, align 8, !tbaa !211, !alias.scope !7587
  %i.ah = load ptr, ptr %3, align 8, !tbaa !138, !noalias !7587 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, %i.b
  br i1 %i.ai, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.aj = load i64, ptr %i.ab, align 8, !tbaa !212, !noalias !7587 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %i.al, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.ah, ptr %2, align 8, !tbaa !138, !alias.scope !7587
  %i.am = load i64, ptr %i.b, align 8, !tbaa !83, !noalias !7587
  store i64 %i.am, ptr %i.ag, align 8, !tbaa !83, !alias.scope !7587
  %.pre.i9 = load i64, ptr %i.ab, align 8, !tbaa !212, !noalias !7587
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, %bb.f
  %i.an = phi ptr [ %i.ag, %bb.f ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ]
  %i.ao = phi i64 [ %i.aj, %bb.f ], [ %.pre.i9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !212, !alias.scope !7587
  store ptr %i.b, ptr %3, align 8, !tbaa !138, !noalias !7587
  store i64 0, ptr %i.ab, align 8, !tbaa !212, !noalias !7587
  store i8 0, ptr %i.b, align 8, !tbaa !83, !noalias !7587
  %i.aq = load ptr, ptr %4, align 8, !tbaa !138   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !83
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #30
  %.pre = load ptr, ptr %2, align 8, !tbaa !138
  %.pre1 = load i64, ptr %i.ap, align 8, !tbaa !212
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %i.av = phi i64 [ %.pre1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.aw = phi ptr [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %.val = load ptr, ptr %1, align 8, !tbaa !7589
  invoke void @_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEE6AppendEPKhl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %.val, ptr noundef %i.aw, i64 noundef %i.av)
          to label %_ZZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEiENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit unwind label %bb.i

_ZZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEiENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.ax = load ptr, ptr %2, align 8, !tbaa !138   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ag
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEiENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit
  %i.az = load i64, ptr %i.ag, align 8, !tbaa !83
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Time32TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUliE_clEiENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.g:                                             ; preds = %bb.a
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.h:                                             ; preds = %bb.e, %bb.c
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %3, align 8, !tbaa !138   ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.b
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.h
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !83
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.g ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %i.bc, %bb.h ]
  %i.bh = load ptr, ptr %4, align 8, !tbaa !138   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !83
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %2, align 8, !tbaa !138   ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.ag
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.i
  %i.bp = load i64, ptr %i.ag, align 8, !tbaa !83
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %.pn6 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.bm, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn6
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10Time64TypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeES2_E4ExecEPNS5_13KernelContextERKNS5_8ExecSpanEPNS5_10ExecResultEEUllE_ZNSA_4ExecESC_SF_SH_EUlvE_EENS_6StatusERKNS_9ArraySpanEOT_OT0_ENKUllE_clEl(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 %.0.val.0.val.0.val, ptr %.0.val.8.val, ptr nofree readonly captures(none) %.8.val.0.val, i64 noundef %1) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.444", align 1   ; 7 uses
  %3 = alloca %"struct.std::array.440", align 1   ; 9 uses
  %4 = alloca %"struct.std::array.436", align 1   ; 9 uses
  %5 = alloca %"struct.std::array.412", align 1   ; 9 uses
  %6 = alloca %class.anon.822, align 8            ; 7 uses
  %i.a = getelementptr inbounds [8 x i8], ptr %.8.val.0.val, i64 %1
  %i.b = load i64, ptr %i.a, align 8, !tbaa !195  ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !7604
  store ptr %.0.val.8.val, ptr %6, align 8, !tbaa !509, !noalias !7604
  switch i32 %.0.val.0.val.0.val, label %bb.q [
    i32 3, label %bb.l
    i32 1, label %bb.b
    i32 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoaddr ptr %5 to i64                  ; 3 uses
  %spec.select.i.i.i.i.i = icmp ult i64 %i.b, 86400000
  br i1 %spec.select.i.i.i.i.i, label %bb.d, label %bb.c, !prof !103

bb.c:                                             ; preds = %bb.b
  call fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Time64TypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %i.b, ptr noundef nonnull readonly align 8 dereferenceable(8) %6)
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !7605
  %.ptr26.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.lhs.trunc.i.i.i.i = trunc nuw nsw i64 %i.b to i32 ; 2 uses
  %i.d = udiv i32 %.lhs.trunc.i.i.i.i, 3600000
  %.zext.i.i.i.i = zext nneg i32 %i.d to i64      ; 3 uses
  %i.e = udiv i32 %.lhs.trunc.i.i.i.i, 60000
  %.zext23.i.i.i.i = zext nneg i32 %i.e to i64
  %.neg.i.i.i.i.i.i.i = mul nsw i64 %.zext.i.i.i.i, -60
  %i.f = add nsw i64 %.neg.i.i.i.i.i.i.i, %.zext23.i.i.i.i ; 2 uses
  %.neg.i7.i.i.i.i.i.i = mul nsw i64 %.zext.i.i.i.i, -3600000
  %i.g = add nsw i64 %.neg.i7.i.i.i.i.i.i, %i.b
  %.neg.i8.i.i.i.i.i.i = mul nsw i64 %i.f, -60000
  %i.h = add nsw i64 %i.g, %.neg.i8.i.i.i.i.i.i   ; 2 uses
  %.lhs.trunc24.i.i.i.i = trunc nsw i64 %i.h to i32
  %i.i = sdiv i32 %.lhs.trunc24.i.i.i.i, 1000
  %.sext.i.i.i.i = sext i32 %i.i to i64           ; 2 uses
  %.neg.i.i.i.i.i.i.i.i = mul nsw i64 %.sext.i.i.i.i, -1000
  %i.j = add nsw i64 %.neg.i.i.i.i.i.i.i.i, %i.h  ; 3 uses
  %i.k = icmp sgt i64 %i.j, 99
  br i1 %i.k, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i
  %.0.idx.i.i.i.i = phi i64 [ %.0.add.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ 12, %bb.d ] ; 2 uses
  %.08.i.i.i.i.i.i.i = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.i.i ], [ %i.j, %bb.d ] ; 3 uses
  %.0.ptr.i.i.i.i = getelementptr inbounds i8, ptr %5, i64 %.0.idx.i.i.i.i
  %i.l = urem i64 %.08.i.i.i.i.i.i.i, 100
  %i.m = shl nuw nsw i64 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !83, !noalias !7605
  %i.q = getelementptr inbounds i8, ptr %.0.ptr.i.i.i.i, i64 -1
  store i8 %i.p, ptr %i.q, align 1, !tbaa !83, !noalias !7605
  %i.r = load i8, ptr %i.n, align 1, !tbaa !83, !noalias !7605
  %.0.add.i.i.i.i = add nsw i64 %.0.idx.i.i.i.i, -2 ; 3 uses
  %.ptr27.i.i.i.i = getelementptr inbounds i8, ptr %5, i64 %.0.add.i.i.i.i
  store i8 %i.r, ptr %.ptr27.i.i.i.i, align 1, !tbaa !83, !noalias !7605
  %i.s = udiv i64 %.08.i.i.i.i.i.i.i, 100         ; 2 uses
  %i.t = icmp samesign ugt i64 %.08.i.i.i.i.i.i.i, 9999
  br i1 %i.t, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d
  %.1.idx.i.i.i.i = phi i64 [ 12, %bb.d ], [ %.0.add.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %i.j, %bb.d ], [ %i.s, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.u = icmp sgt i64 %.0.lcssa.i.i.i.i.i.i.i, 9
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.v = shl nuw nsw i64 %.0.lcssa.i.i.i.i.i.i.i, 1
  %i.w = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !83, !noalias !7605
  %.1.add.i.i.i.i = add nsw i64 %.1.idx.i.i.i.i, -1 ; 2 uses
  %.ptr25.i.i.i.i = getelementptr inbounds i8, ptr %5, i64 %.1.add.i.i.i.i
  store i8 %i.y, ptr %.ptr25.i.i.i.i, align 1, !tbaa !83, !noalias !7605
  %i.z = load i8, ptr %i.w, align 1, !tbaa !83, !noalias !7605
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.aa = trunc i64 %.0.lcssa.i.i.i.i.i.i.i to i8
  %i.ab = add i8 %i.aa, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.2.idx.i.i.i.i = phi i64 [ %.1.add.i.i.i.i, %bb.e ], [ %.1.idx.i.i.i.i, %bb.f ] ; 3 uses
  %.sink.i.i.i.i.i.i.i = phi i8 [ %i.z, %bb.e ], [ %i.ab, %bb.f ]
  %i.ac = getelementptr i8, ptr %5, i64 %.2.idx.i.i.i.i ; 2 uses
  %.ptr.i.i.i.i = getelementptr i8, ptr %i.ac, i64 -1
  store i8 %.sink.i.i.i.i.i.i.i, ptr %.ptr.i.i.i.i, align 1, !tbaa !83, !noalias !7605
  %i.ad = icmp sgt i64 %.2.idx.i.i.i.i, 10
  br i1 %i.ad, label %.lr.ph.i.i.preheader.i.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i:                     ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i
  %i.ae = add i64 %.2.idx.i.i.i.i, %i.c           ; 2 uses
  %i.af = add i64 %i.ae, -2
  %i.ag = add nuw i64 %i.c, 9
  %umin.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.af, i64 %i.ag) ; 2 uses
  %i.ah = sub i64 %umin.i.i.i.i, %i.c
  %scevgep.i.i.i.i = getelementptr i8, ptr %5, i64 %i.ah ; 2 uses
  %i.ai = xor i64 %umin.i.i.i.i, -1
  %i.aj = add i64 %i.ae, %i.ai
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i.i.i.i, i8 48, i64 %i.aj, i1 false), !tbaa !83, !noalias !7605
  %scevgep31.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i
  %i.ak = phi ptr [ %i.ac, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i ], [ %scevgep31.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i ] ; 2 uses
  %i.al = shl nsw i64 %.sext.i.i.i.i, 1
  %i.am = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.al
  %i.an = shl nuw nsw i64 %i.f, 1
  %i.ao = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.an
  %i.ap = shl nuw nsw i64 %.zext.i.i.i.i, 1
  %i.aq = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !83, !noalias !7605
  %i.at = getelementptr i8, ptr %i.ak, i64 -9
  %i.au = load <2 x i8>, ptr %i.am, align 1, !tbaa !83, !noalias !7605
  %i.av = load <2 x i8>, ptr %i.ao, align 1, !tbaa !83, !noalias !7605
  %i.aw = shufflevector <2 x i8> %i.av, <2 x i8> %i.au, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison>
  %i.ax = shufflevector <8 x i8> %i.aw, <8 x i8> <i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 46>, <8 x i32> <i32 poison, i32 9, i32 2, i32 3, i32 12, i32 5, i32 6, i32 15>
  %i.ay = insertelement <8 x i8> %i.ax, i8 %i.as, i64 0
  store <8 x i8> %i.ay, ptr %i.at, align 1, !tbaa !83, !noalias !7605
  %i.az = load i8, ptr %i.aq, align 1, !tbaa !83, !noalias !7605
  %i.ba = getelementptr i8, ptr %i.ak, i64 -10    ; 3 uses
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !83, !noalias !7605
  %i.bb = ptrtoint ptr %.ptr26.i.i.i.i to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  call void @_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEE6AppendEPKhl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %.0.val.8.val, ptr noundef nonnull %i.ba, i64 noundef %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !7605
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

bb.g:                                             ; preds = %bb.a
  %i.be = ptrtoaddr ptr %4 to i64                 ; 3 uses
  %spec.select.i.i15.i.i.i = icmp ult i64 %i.b, 86400000000
  br i1 %spec.select.i.i15.i.i.i, label %bb.i, label %bb.h, !prof !103

bb.h:                                             ; preds = %bb.g
  call fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Time64TypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %i.b, ptr noundef nonnull readonly align 8 dereferenceable(8) %6)
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !7606
  %.ptr23.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 15
  %i.bf = udiv i64 %i.b, 3600000000               ; 3 uses
  %i.bg = udiv i64 %i.b, 60000000
  %.neg.i.i.i.i16.i.i.i = mul nsw i64 %i.bf, -60
  %i.bh = add nsw i64 %.neg.i.i.i.i16.i.i.i, %i.bg ; 2 uses
  %.neg.i7.i.i.i17.i.i.i = mul nsw i64 %i.bf, -3600000000
  %i.bi = add nsw i64 %.neg.i7.i.i.i17.i.i.i, %i.b
  %.neg.i8.i.i.i18.i.i.i = mul nsw i64 %i.bh, -60000000
  %i.bj = add nsw i64 %i.bi, %.neg.i8.i.i.i18.i.i.i ; 2 uses
  %i.bk = sdiv i64 %i.bj, 1000000                 ; 2 uses
  %.neg.i.i.i.i.i19.i.i.i = mul nsw i64 %i.bk, -1000000
  %i.bl = add nsw i64 %.neg.i.i.i.i.i19.i.i.i, %i.bj ; 3 uses
  %i.bm = icmp sgt i64 %i.bl, 99
  br i1 %i.bm, label %.lr.ph.i.i.i.i32.i.i.i, label %._crit_edge.i.i.i.i20.i.i.i

.lr.ph.i.i.i.i32.i.i.i:                           ; preds = %bb.i, %.lr.ph.i.i.i.i32.i.i.i
  %.0.idx.i33.i.i.i = phi i64 [ %.0.add.i36.i.i.i, %.lr.ph.i.i.i.i32.i.i.i ], [ 15, %bb.i ] ; 2 uses
  %.08.i.i.i.i34.i.i.i = phi i64 [ %i.bu, %.lr.ph.i.i.i.i32.i.i.i ], [ %i.bl, %bb.i ] ; 3 uses
  %.0.ptr.i35.i.i.i = getelementptr inbounds i8, ptr %4, i64 %.0.idx.i33.i.i.i
  %i.bn = urem i64 %.08.i.i.i.i34.i.i.i, 100
  %i.bo = shl nuw nsw i64 %i.bn, 1
  %i.bp = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !83, !noalias !7606
  %i.bs = getelementptr inbounds i8, ptr %.0.ptr.i35.i.i.i, i64 -1
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !83, !noalias !7606
  %i.bt = load i8, ptr %i.bp, align 1, !tbaa !83, !noalias !7606
  %.0.add.i36.i.i.i = add nsw i64 %.0.idx.i33.i.i.i, -2 ; 3 uses
  %.ptr24.i.i.i.i = getelementptr inbounds i8, ptr %4, i64 %.0.add.i36.i.i.i
  store i8 %i.bt, ptr %.ptr24.i.i.i.i, align 1, !tbaa !83, !noalias !7606
  %i.bu = udiv i64 %.08.i.i.i.i34.i.i.i, 100      ; 2 uses
  %i.bv = icmp samesign ugt i64 %.08.i.i.i.i34.i.i.i, 9999
  br i1 %i.bv, label %.lr.ph.i.i.i.i32.i.i.i, label %._crit_edge.i.i.i.i20.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i20.i.i.i:                      ; preds = %.lr.ph.i.i.i.i32.i.i.i, %bb.i
  %.1.idx.i21.i.i.i = phi i64 [ 15, %bb.i ], [ %.0.add.i36.i.i.i, %.lr.ph.i.i.i.i32.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i22.i.i.i = phi i64 [ %i.bl, %bb.i ], [ %i.bu, %.lr.ph.i.i.i.i32.i.i.i ] ; 3 uses
  %i.bw = icmp sgt i64 %.0.lcssa.i.i.i.i22.i.i.i, 9
  br i1 %i.bw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i.i20.i.i.i
  %i.bx = shl nuw nsw i64 %.0.lcssa.i.i.i.i22.i.i.i, 1
  %i.by = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !83, !noalias !7606
  %.1.add.i31.i.i.i = add nsw i64 %.1.idx.i21.i.i.i, -1 ; 2 uses
  %.ptr22.i.i.i.i = getelementptr inbounds i8, ptr %4, i64 %.1.add.i31.i.i.i
  store i8 %i.ca, ptr %.ptr22.i.i.i.i, align 1, !tbaa !83, !noalias !7606
  %i.cb = load i8, ptr %i.by, align 1, !tbaa !83, !noalias !7606
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i

bb.k:                                             ; preds = %._crit_edge.i.i.i.i20.i.i.i
  %i.cc = trunc i64 %.0.lcssa.i.i.i.i22.i.i.i to i8
  %i.cd = add i8 %i.cc, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i: ; preds = %bb.k, %bb.j
  %.2.idx.i24.i.i.i = phi i64 [ %.1.add.i31.i.i.i, %bb.j ], [ %.1.idx.i21.i.i.i, %bb.k ] ; 3 uses
  %.sink.i.i.i.i25.i.i.i = phi i8 [ %i.cb, %bb.j ], [ %i.cd, %bb.k ]
  %i.ce = getelementptr i8, ptr %4, i64 %.2.idx.i24.i.i.i ; 2 uses
  %.ptr.i26.i.i.i = getelementptr i8, ptr %i.ce, i64 -1
  store i8 %.sink.i.i.i.i25.i.i.i, ptr %.ptr.i26.i.i.i, align 1, !tbaa !83, !noalias !7606
  %i.cf = icmp sgt i64 %.2.idx.i24.i.i.i, 10
  br i1 %i.cf, label %.lr.ph.i.i.preheader.i28.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

.lr.ph.i.i.preheader.i28.i.i.i:                   ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i
  %i.cg = add i64 %.2.idx.i24.i.i.i, %i.be        ; 2 uses
  %i.ch = add i64 %i.cg, -2
  %i.ci = add nuw i64 %i.be, 9
  %umin.i29.i.i.i = call i64 @llvm.umin.i64(i64 %i.ch, i64 %i.ci) ; 2 uses
  %i.cj = sub i64 %umin.i29.i.i.i, %i.be
  %scevgep.i30.i.i.i = getelementptr i8, ptr %4, i64 %i.cj ; 2 uses
  %i.ck = xor i64 %umin.i29.i.i.i, -1
  %i.cl = add i64 %i.cg, %i.ck
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i30.i.i.i, i8 48, i64 %i.cl, i1 false), !tbaa !83, !noalias !7606
  %scevgep28.i.i.i.i = getelementptr i8, ptr %scevgep.i30.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i28.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i
  %i.cm = phi ptr [ %i.ce, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i23.i.i.i ], [ %scevgep28.i.i.i.i, %.lr.ph.i.i.preheader.i28.i.i.i ] ; 2 uses
  %i.cn = shl nsw i64 %i.bk, 1
  %i.co = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.cn
  %i.cp = shl nsw i64 %i.bh, 1
  %i.cq = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.cp
  %i.cr = shl nuw nsw i64 %i.bf, 1
  %i.cs = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.cr ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !83, !noalias !7606
  %i.cv = getelementptr i8, ptr %i.cm, i64 -9
  %i.cw = load <2 x i8>, ptr %i.co, align 1, !tbaa !83, !noalias !7606
  %i.cx = load <2 x i8>, ptr %i.cq, align 1, !tbaa !83, !noalias !7606
  %i.cy = shufflevector <2 x i8> %i.cx, <2 x i8> %i.cw, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison>
  %i.cz = shufflevector <8 x i8> %i.cy, <8 x i8> <i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 46>, <8 x i32> <i32 poison, i32 9, i32 2, i32 3, i32 12, i32 5, i32 6, i32 15>
  %i.da = insertelement <8 x i8> %i.cz, i8 %i.cu, i64 0
  store <8 x i8> %i.da, ptr %i.cv, align 1, !tbaa !83, !noalias !7606
  %i.db = load i8, ptr %i.cs, align 1, !tbaa !83, !noalias !7606
  %i.dc = getelementptr i8, ptr %i.cm, i64 -10    ; 3 uses
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !83, !noalias !7606
  %i.dd = ptrtoint ptr %.ptr23.i.i.i.i to i64
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = sub i64 %i.dd, %i.de
  call void @_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEE6AppendEPKhl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %.0.val.8.val, ptr noundef nonnull %i.dc, i64 noundef %i.df)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !7606
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

bb.l:                                             ; preds = %bb.a
  %i.dg = ptrtoaddr ptr %3 to i64                 ; 3 uses
  %spec.select.i.i37.i.i.i = icmp ult i64 %i.b, 86400000000000
  br i1 %spec.select.i.i37.i.i.i, label %bb.n, label %bb.m, !prof !103

bb.m:                                             ; preds = %bb.l
  call fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Time64TypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %i.b, ptr noundef nonnull readonly align 8 dereferenceable(8) %6)
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !7607
  %.ptr23.i38.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.dh = udiv i64 %i.b, 3600000000000            ; 3 uses
  %i.di = udiv i64 %i.b, 60000000000
  %.neg.i.i.i.i39.i.i.i = mul nsw i64 %i.dh, -60
  %i.dj = add nsw i64 %.neg.i.i.i.i39.i.i.i, %i.di ; 2 uses
  %.neg.i7.i.i.i40.i.i.i = mul nsw i64 %i.dh, -3600000000000
  %i.dk = add nsw i64 %.neg.i7.i.i.i40.i.i.i, %i.b
  %.neg.i8.i.i.i41.i.i.i = mul nsw i64 %i.dj, -60000000000
  %i.dl = add nsw i64 %i.dk, %.neg.i8.i.i.i41.i.i.i ; 2 uses
  %i.dm = sdiv i64 %i.dl, 1000000000              ; 2 uses
  %.neg.i.i.i.i.i42.i.i.i = mul nsw i64 %i.dm, -1000000000
  %i.dn = add nsw i64 %.neg.i.i.i.i.i42.i.i.i, %i.dl ; 3 uses
  %i.do = icmp sgt i64 %i.dn, 99
  br i1 %i.do, label %.lr.ph.i.i.i.i57.i.i.i, label %._crit_edge.i.i.i.i43.i.i.i

.lr.ph.i.i.i.i57.i.i.i:                           ; preds = %bb.n, %.lr.ph.i.i.i.i57.i.i.i
  %.0.idx.i58.i.i.i = phi i64 [ %.0.add.i61.i.i.i, %.lr.ph.i.i.i.i57.i.i.i ], [ 18, %bb.n ] ; 2 uses
  %.08.i.i.i.i59.i.i.i = phi i64 [ %i.dw, %.lr.ph.i.i.i.i57.i.i.i ], [ %i.dn, %bb.n ] ; 3 uses
  %.0.ptr.i60.i.i.i = getelementptr inbounds i8, ptr %3, i64 %.0.idx.i58.i.i.i
  %i.dp = urem i64 %.08.i.i.i.i59.i.i.i, 100
  %i.dq = shl nuw nsw i64 %i.dp, 1
  %i.dr = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.dq ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !83, !noalias !7607
  %i.du = getelementptr inbounds i8, ptr %.0.ptr.i60.i.i.i, i64 -1
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !83, !noalias !7607
  %i.dv = load i8, ptr %i.dr, align 1, !tbaa !83, !noalias !7607
  %.0.add.i61.i.i.i = add nsw i64 %.0.idx.i58.i.i.i, -2 ; 3 uses
  %.ptr24.i62.i.i.i = getelementptr inbounds i8, ptr %3, i64 %.0.add.i61.i.i.i
  store i8 %i.dv, ptr %.ptr24.i62.i.i.i, align 1, !tbaa !83, !noalias !7607
  %i.dw = udiv i64 %.08.i.i.i.i59.i.i.i, 100      ; 2 uses
  %i.dx = icmp samesign ugt i64 %.08.i.i.i.i59.i.i.i, 9999
  br i1 %i.dx, label %.lr.ph.i.i.i.i57.i.i.i, label %._crit_edge.i.i.i.i43.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i43.i.i.i:                      ; preds = %.lr.ph.i.i.i.i57.i.i.i, %bb.n
  %.1.idx.i44.i.i.i = phi i64 [ 18, %bb.n ], [ %.0.add.i61.i.i.i, %.lr.ph.i.i.i.i57.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i45.i.i.i = phi i64 [ %i.dn, %bb.n ], [ %i.dw, %.lr.ph.i.i.i.i57.i.i.i ] ; 3 uses
  %i.dy = icmp sgt i64 %.0.lcssa.i.i.i.i45.i.i.i, 9
  br i1 %i.dy, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i.i.i43.i.i.i
  %i.dz = shl nuw nsw i64 %.0.lcssa.i.i.i.i45.i.i.i, 1
  %i.ea = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.dz ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !83, !noalias !7607
  %.1.add.i55.i.i.i = add nsw i64 %.1.idx.i44.i.i.i, -1 ; 2 uses
  %.ptr22.i56.i.i.i = getelementptr inbounds i8, ptr %3, i64 %.1.add.i55.i.i.i
  store i8 %i.ec, ptr %.ptr22.i56.i.i.i, align 1, !tbaa !83, !noalias !7607
  %i.ed = load i8, ptr %i.ea, align 1, !tbaa !83, !noalias !7607
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i46.i.i.i

bb.p:                                             ; preds = %._crit_edge.i.i.i.i43.i.i.i
  %i.ee = trunc i64 %.0.lcssa.i.i.i.i45.i.i.i to i8
  %i.ef = add i8 %i.ee, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i46.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i46.i.i.i: ; preds = %bb.p, %bb.o
  %.2.idx.i47.i.i.i = phi i64 [ %.1.add.i55.i.i.i, %bb.o ], [ %.1.idx.i44.i.i.i, %bb.p ] ; 3 uses
  %.sink.i.i.i.i48.i.i.i = phi i8 [ %i.ed, %bb.o ], [ %i.ef, %bb.p ]
  %i.eg = getelementptr i8, ptr %3, i64 %.2.idx.i47.i.i.i ; 2 uses
  %.ptr.i49.i.i.i = getelementptr i8, ptr %i.eg, i64 -1
  store i8 %.sink.i.i.i.i48.i.i.i, ptr %.ptr.i49.i.i.i, align 1, !tbaa !83, !noalias !7607
  %i.eh = icmp sgt i64 %.2.idx.i47.i.i.i, 10
  br i1 %i.eh, label %.lr.ph.i.i.preheader.i51.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

.lr.ph.i.i.preheader.i51.i.i.i:                   ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i46.i.i.i
  %i.ei = add i64 %.2.idx.i47.i.i.i, %i.dg        ; 2 uses
  %i.ej = add i64 %i.ei, -2
  %i.ek = add nuw i64 %i.dg, 9
  %umin.i52.i.i.i = call i64 @llvm.umin.i64(i64 %i.ej, i64 %i.ek) ; 2 uses
  %i.el = sub i64 %umin.i52.i.i.i, %i.dg
  %scevgep.i53.i.i.i = getelementptr i8, ptr %3, i64 %i.el ; 2 uses
  %i.em = xor i64 %umin.i52.i.i.i, -1
  %i.en = add i64 %i.ei, %i.em
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i53.i.i.i, i8 48, i64 %i.en, i1 false), !tbaa !83, !noalias !7607
  %scevgep28.i54.i.i.i = getelementptr i8, ptr %scevgep.i53.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i51.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i46.i.i.i
  %i.eo = phi ptr [ %i.eg, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i46.i.i.i ], [ %scevgep28.i54.i.i.i, %.lr.ph.i.i.preheader.i51.i.i.i ] ; 2 uses
  %i.ep = shl nsw i64 %i.dm, 1
  %i.eq = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ep
  %i.er = shl nsw i64 %i.dj, 1
  %i.es = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.er
  %i.et = shl nuw nsw i64 %i.dh, 1
  %i.eu = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.et ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 1
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !83, !noalias !7607
  %i.ex = getelementptr i8, ptr %i.eo, i64 -9
  %i.ey = load <2 x i8>, ptr %i.eq, align 1, !tbaa !83, !noalias !7607
  %i.ez = load <2 x i8>, ptr %i.es, align 1, !tbaa !83, !noalias !7607
  %i.fa = shufflevector <2 x i8> %i.ez, <2 x i8> %i.ey, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 2, i32 3, i32 poison>
  %i.fb = shufflevector <8 x i8> %i.fa, <8 x i8> <i8 poison, i8 58, i8 poison, i8 poison, i8 58, i8 poison, i8 poison, i8 46>, <8 x i32> <i32 poison, i32 9, i32 2, i32 3, i32 12, i32 5, i32 6, i32 15>
  %i.fc = insertelement <8 x i8> %i.fb, i8 %i.ew, i64 0
  store <8 x i8> %i.fc, ptr %i.ex, align 1, !tbaa !83, !noalias !7607
  %i.fd = load i8, ptr %i.eu, align 1, !tbaa !83, !noalias !7607
  %i.fe = getelementptr i8, ptr %i.eo, i64 -10    ; 3 uses
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !83, !noalias !7607
  %i.ff = ptrtoint ptr %.ptr23.i38.i.i.i to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg
  call void @_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEE6AppendEPKhl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %.0.val.8.val, ptr noundef nonnull %i.fe, i64 noundef %i.fh)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !7607
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

bb.q:                                             ; preds = %bb.a
  %spec.select.i.i63.i.i.i = icmp ult i64 %i.b, 86400
  br i1 %spec.select.i.i63.i.i.i, label %bb.s, label %bb.r, !prof !103

bb.r:                                             ; preds = %bb.q
  call fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Time64TypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %i.b, ptr noundef nonnull readonly align 8 dereferenceable(8) %6)
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !7608
  %.lhs.trunc.i64.i.i.i = trunc nuw nsw i64 %i.b to i32 ; 2 uses
  %i.fi = udiv i32 %.lhs.trunc.i64.i.i.i, 3600
  %.zext.i65.i.i.i = zext nneg i32 %i.fi to i64   ; 3 uses
  %i.fj = udiv i32 %.lhs.trunc.i64.i.i.i, 60
  %.zext16.i.i.i.i = zext nneg i32 %i.fj to i64
  %.neg.i.i.i.i66.i.i.i = mul nsw i64 %.zext.i65.i.i.i, -60
  %i.fk = add nsw i64 %.neg.i.i.i.i66.i.i.i, %.zext16.i.i.i.i ; 2 uses
  %.neg.i7.i.i.i67.i.i.i = mul nsw i64 %.zext.i65.i.i.i, -3600
  %i.fl = add nsw i64 %.neg.i7.i.i.i67.i.i.i, %i.b
  %.neg.i8.i.i.i68.i.i.i = mul nsw i64 %i.fk, -60
  %i.fm = add nsw i64 %i.fl, %.neg.i8.i.i.i68.i.i.i
  %i.fn = shl nuw nsw i64 %i.fm, 1
  %i.fo = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fn ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 1
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !83, !noalias !7608
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !83, !noalias !7608
  %i.fs = load i8, ptr %i.fo, align 1, !tbaa !83, !noalias !7608
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 7
  store i8 %i.fs, ptr %i.ft, align 1, !tbaa !83, !noalias !7608
  %i.fu = shl nuw nsw i64 %i.fk, 1
  %i.fv = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.fx = load <2 x i8>, ptr %i.fv, align 1, !tbaa !83, !noalias !7608
  %i.fy = shufflevector <2 x i8> %i.fx, <2 x i8> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.fz = shufflevector <4 x i8> <i8 58, i8 poison, i8 poison, i8 58>, <4 x i8> %i.fy, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i8> %i.fz, ptr %i.fw, align 1, !tbaa !83, !noalias !7608
  %i.ga = shl nuw nsw i64 %.zext.i65.i.i.i, 1
  %i.gb = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ga ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 1
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !83, !noalias !7608
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 %i.gd, ptr %i.ge, align 1, !tbaa !83, !noalias !7608
  %i.gf = load i8, ptr %i.gb, align 1, !tbaa !83, !noalias !7608
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  store i8 %i.gf, ptr %i.gg, align 1, !tbaa !83, !noalias !7608
  call void @_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEE6AppendEPKhl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %.0.val.8.val, ptr noundef nonnull %i.gg, i64 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !7608
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit: ; preds = %bb.c, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i, %bb.h, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i, %bb.m, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !7604
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Time64TypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN5arrow8internal7ToCharsIlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 noundef %.0.val)
  %i.a = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.27, i64 noundef 21)
          to label %.noexc unwind label %bb.g     ; 8 uses

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 13 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !211, !alias.scope !7613
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !138  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread, label %bb.b

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread: ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !212  ; 5 uses
  %i.h = icmp samesign ult i64 %i.g, 16
  call void @llvm.assume(i1 %i.h)
  %i.i = add nuw nsw i64 %i.g, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.i, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.g, ptr %i.k, align 8, !tbaa !212, !alias.scope !7613
  store ptr %i.d, ptr %i.a, align 8, !tbaa !138
  store i64 0, ptr %i.j, align 8, !tbaa !212
  store i8 0, ptr %i.d, align 8, !tbaa !83
  %i.l = add nuw nsw i64 %i.g, 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.b:                                             ; preds = %.noexc
  store ptr %i.c, ptr %3, align 8, !tbaa !138, !alias.scope !7613
  %i.m = load i64, ptr %i.d, align 8, !tbaa !83
  store i64 %i.m, ptr %i.b, align 8, !tbaa !83, !alias.scope !7613
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !212 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %.pre.i, ptr %i.o, align 8, !tbaa !212, !alias.scope !7613
  store ptr %i.d, ptr %i.a, align 8, !tbaa !138
  store i64 0, ptr %i.n, align 8, !tbaa !212
  store i8 0, ptr %i.d, align 8, !tbaa !83
  call void @llvm.experimental.noalias.scope.decl(metadata !7614)
  %i.p = icmp eq i64 %.pre.i, 9223372036854775807
  br i1 %i.p, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #32
          to label %.noexc10 unwind label %bb.h

.noexc10:                                         ; preds = %bb.c
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.q = add nsw i64 %.pre.i, 1                   ; 2 uses
  %i.r = icmp eq ptr %i.c, %i.b
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.s = phi i64 [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ]
  %i.t = phi ptr [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ]
  %i.u = phi i64 [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ] ; 2 uses
  %i.v = phi ptr [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ]
  %i.w = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.w)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.x = load i64, ptr %i.b, align 8, !tbaa !83, !noalias !7614
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.y = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 3 uses
  %i.z = phi ptr [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.aa = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 2 uses
  %i.ab = phi ptr [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 4 uses
  %i.ac = phi i64 [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.y, %i.ac
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  store i8 62, ptr %i.ad, align 1, !tbaa !83, !noalias !7614
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.aa, i64 noundef 0, ptr noundef nonnull @.str.28, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.e, %bb.d
  store i64 %i.y, ptr %i.ab, align 8, !tbaa !212, !noalias !7614
  %i.ae = load ptr, ptr %3, align 8, !tbaa !138, !noalias !7614
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.y
  store i8 0, ptr %i.af, align 1, !tbaa !83, !noalias !7614
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.ag, ptr %2, align 8, !tbaa !211, !alias.scope !7614
  %i.ah = load ptr, ptr %3, align 8, !tbaa !138, !noalias !7614 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, %i.b
  br i1 %i.ai, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.aj = load i64, ptr %i.ab, align 8, !tbaa !212, !noalias !7614 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %i.al, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.ah, ptr %2, align 8, !tbaa !138, !alias.scope !7614
  %i.am = load i64, ptr %i.b, align 8, !tbaa !83, !noalias !7614
  store i64 %i.am, ptr %i.ag, align 8, !tbaa !83, !alias.scope !7614
  %.pre.i9 = load i64, ptr %i.ab, align 8, !tbaa !212, !noalias !7614
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, %bb.f
  %i.an = phi ptr [ %i.ag, %bb.f ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ]
  %i.ao = phi i64 [ %i.aj, %bb.f ], [ %.pre.i9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !212, !alias.scope !7614
  store ptr %i.b, ptr %3, align 8, !tbaa !138, !noalias !7614
  store i64 0, ptr %i.ab, align 8, !tbaa !212, !noalias !7614
  store i8 0, ptr %i.b, align 8, !tbaa !83, !noalias !7614
  %i.aq = load ptr, ptr %4, align 8, !tbaa !138   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !83
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #30
  %.pre = load ptr, ptr %2, align 8, !tbaa !138
  %.pre1 = load i64, ptr %i.ap, align 8, !tbaa !212
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %i.av = phi i64 [ %.pre1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.aw = phi ptr [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %.val = load ptr, ptr %1, align 8, !tbaa !7616
  invoke void @_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEE6AppendEPKhl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %.val, ptr noundef %i.aw, i64 noundef %i.av)
          to label %_ZZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clElENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit unwind label %bb.i

_ZZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clElENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.ax = load ptr, ptr %2, align 8, !tbaa !138   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ag
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clElENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit
  %i.az = load i64, ptr %i.ag, align 8, !tbaa !83
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_10Time64TypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clElENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.g:                                             ; preds = %bb.a
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.h:                                             ; preds = %bb.e, %bb.c
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %3, align 8, !tbaa !138   ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.b
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.h
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !83
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.g
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.g ], [ %i.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %i.bc, %bb.h ]
  %i.bh = load ptr, ptr %4, align 8, !tbaa !138   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !83
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = load ptr, ptr %2, align 8, !tbaa !138   ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.ag
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.i
  %i.bp = load i64, ptr %i.ag, align 8, !tbaa !83
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %.pn6 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.bm, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn6
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN5arrow8internal22ArraySpanInlineVisitorINS_13TimestampTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeES2_E4ExecEPNS5_13KernelContextERKNS5_8ExecSpanEPNS5_10ExecResultEEUllE_ZNSA_4ExecESC_SF_SH_EUlvE_EENS_6StatusERKNS_9ArraySpanEOT_OT0_ENKUllE_clEl(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 %.0.val.0.val.0.val, i64 %.0.val.0.val.16.val, ptr %.0.val.8.val, ptr nofree readonly captures(none) %.8.val.0.val, i64 noundef %1) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.466", align 1   ; 4 uses
  %3 = alloca %"struct.std::array.464", align 1   ; 4 uses
  %4 = alloca %"struct.std::array.462", align 1   ; 4 uses
  %5 = alloca %"struct.std::array.460", align 1   ; 4 uses
  %6 = alloca %class.anon.826, align 8            ; 6 uses
  %i.a = getelementptr inbounds [8 x i8], ptr %.8.val.0.val, i64 %1
  %i.b = load i64, ptr %i.a, align 8, !tbaa !195  ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !7631
  store ptr %.0.val.8.val, ptr %6, align 8, !tbaa !509, !noalias !7631
  switch i32 %.0.val.0.val.0.val, label %bb.am [
    i32 3, label %bb.ab
    i32 1, label %bb.b
    i32 2, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %i.b, 1096193779200000
  %spec.select.i.i.i.i.i = icmp ult i64 %i.c, 2068084742400000
  br i1 %spec.select.i.i.i.i.i, label %bb.d, label %bb.c, !prof !103

bb.c:                                             ; preds = %bb.b
  call fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_13TimestampTypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %i.b, ptr noundef nonnull readonly align 8 dereferenceable(8) %6)
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_13TimestampTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

bb.d:                                             ; preds = %bb.b
  %i.d = sdiv i64 %i.b, 86400000                  ; 3 uses
  %i.e = trunc nsw i64 %i.d to i32                ; 2 uses
  %i.f = mul nsw i64 %i.d, 86400000               ; 2 uses
  %.not53.i.i.i.i = icmp sgt i64 %i.f, %i.b
  br i1 %.not53.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.neg.i.i.i.i.i.i = mul nsw i64 %i.d, -86400000
  %i.g = add nsw i64 %.neg.i.i.i.i.i.i, %i.b
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %.neg.i.i.i.i = add nsw i64 %i.b, 86400000
  %i.h = sub nsw i64 %.neg.i.i.i.i, %i.f
  %i.i = add nsw i32 %i.e, -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.036.0.i.i.i.i = phi i64 [ %i.g, %bb.e ], [ %i.h, %bb.f ]
  %.sroa.037.0.i.i.i.i = phi i32 [ %i.e, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !7632
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 26 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.0.val.0.val.16.val, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 25 ; 2 uses
  store i8 90, ptr %i.k, align 1, !tbaa !83, !noalias !7632
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi ptr [ %i.j, %bb.g ], [ %i.k, %bb.h ] ; 6 uses
  %.063.i.i.i.i = ptrtoaddr ptr %.0.i.i.i.i to i64 ; 3 uses
  %spec.select.i.i.i.i.i.i.i = call i64 @llvm.abs.i64(i64 %.sroa.036.0.i.i.i.i, i1 true) ; 3 uses
  %i.l = udiv i64 %spec.select.i.i.i.i.i.i.i, 3600000 ; 3 uses
  %i.m = udiv i64 %spec.select.i.i.i.i.i.i.i, 60000
  %.neg.i.i.i.i.i.i.i = mul nsw i64 %i.l, -60
  %i.n = add nsw i64 %.neg.i.i.i.i.i.i.i, %i.m    ; 2 uses
  %.neg.i7.i.i.i.i.i.i = mul nsw i64 %i.l, -3600000
  %i.o = add nsw i64 %.neg.i7.i.i.i.i.i.i, %spec.select.i.i.i.i.i.i.i
  %.neg.i8.i.i.i.i.i.i = mul nsw i64 %i.n, -60000
  %i.p = add nsw i64 %i.o, %.neg.i8.i.i.i.i.i.i   ; 2 uses
  %i.q = sdiv i64 %i.p, 1000                      ; 2 uses
  %.neg.i.i.i.i.i.i.i.i = mul nsw i64 %i.q, -1000
  %i.r = add nsw i64 %.neg.i.i.i.i.i.i.i.i, %i.p  ; 3 uses
  %i.s = icmp sgt i64 %i.r, 99
  br i1 %i.s, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i.i
  %.1.idx.i.i.i.i = phi i64 [ %.1.add.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %bb.i ] ; 2 uses
  %.08.i.i.i.i.i.i.i = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i.i.i ], [ %i.r, %bb.i ] ; 3 uses
  %.1.ptr.i.i.i.i = getelementptr inbounds i8, ptr %.0.i.i.i.i, i64 %.1.idx.i.i.i.i
  %i.t = urem i64 %.08.i.i.i.i.i.i.i, 100
  %i.u = shl nuw nsw i64 %i.t, 1
  %i.v = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !83, !noalias !7632
  %i.y = getelementptr inbounds i8, ptr %.1.ptr.i.i.i.i, i64 -1
  store i8 %i.x, ptr %i.y, align 1, !tbaa !83, !noalias !7632
  %i.z = load i8, ptr %i.v, align 1, !tbaa !83, !noalias !7632
  %.1.add.i.i.i.i = add nsw i64 %.1.idx.i.i.i.i, -2 ; 3 uses
  %.ptr55.i.i.i.i = getelementptr inbounds i8, ptr %.0.i.i.i.i, i64 %.1.add.i.i.i.i
  store i8 %i.z, ptr %.ptr55.i.i.i.i, align 1, !tbaa !83, !noalias !7632
  %i.aa = udiv i64 %.08.i.i.i.i.i.i.i, 100        ; 2 uses
  %i.ab = icmp samesign ugt i64 %.08.i.i.i.i.i.i.i, 9999
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.i
  %.2.idx.i.i.i.i = phi i64 [ 0, %bb.i ], [ %.1.add.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %i.r, %bb.i ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.ac = icmp sgt i64 %.0.lcssa.i.i.i.i.i.i.i, 9
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ad = shl nuw nsw i64 %.0.lcssa.i.i.i.i.i.i.i, 1
  %i.ae = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !83, !noalias !7632
  %.2.add.i.i.i.i = add nsw i64 %.2.idx.i.i.i.i, -1 ; 2 uses
  %.ptr54.i.i.i.i = getelementptr inbounds i8, ptr %.0.i.i.i.i, i64 %.2.add.i.i.i.i
  store i8 %i.ag, ptr %.ptr54.i.i.i.i, align 1, !tbaa !83, !noalias !7632
  %i.ah = load i8, ptr %i.ae, align 1, !tbaa !83, !noalias !7632
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ai = trunc i64 %.0.lcssa.i.i.i.i.i.i.i to i8
  %i.aj = add i8 %i.ai, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.3.idx.i.i.i.i = phi i64 [ %.2.add.i.i.i.i, %bb.j ], [ %.2.idx.i.i.i.i, %bb.k ] ; 3 uses
  %.sink.i.i.i.i.i.i.i = phi i8 [ %i.ah, %bb.j ], [ %i.aj, %bb.k ]
  %i.ak = getelementptr i8, ptr %.0.i.i.i.i, i64 %.3.idx.i.i.i.i ; 2 uses
  %.ptr.i.i.i.i = getelementptr i8, ptr %i.ak, i64 -1
  store i8 %.sink.i.i.i.i.i.i.i, ptr %.ptr.i.i.i.i, align 1, !tbaa !83, !noalias !7632
  %i.al = icmp sgt i64 %.3.idx.i.i.i.i, -2
  br i1 %i.al, label %.lr.ph.i.i.preheader.i.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

.lr.ph.i.i.preheader.i.i.i.i:                     ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i
  %i.am = add i64 %.3.idx.i.i.i.i, %.063.i.i.i.i  ; 2 uses
  %i.an = add i64 %i.am, -2
  %i.ao = add i64 %.063.i.i.i.i, -3
  %umin.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.an, i64 %i.ao) ; 2 uses
  %i.ap = sub i64 %umin.i.i.i.i, %.063.i.i.i.i
  %scevgep.i.i.i.i = getelementptr i8, ptr %.0.i.i.i.i, i64 %i.ap ; 2 uses
  %i.aq = xor i64 %umin.i.i.i.i, -1
  %i.ar = add i64 %i.am, %i.aq
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i.i.i.i, i8 48, i64 %i.ar, i1 false), !tbaa !83, !noalias !7632
  %scevgep65.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i
  %i.as = phi ptr [ %i.ak, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i.i.i.i ], [ %scevgep65.i.i.i.i, %.lr.ph.i.i.preheader.i.i.i.i ] ; 3 uses
  %i.at = shl nsw i64 %i.q, 1
  %i.au = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.at
  %i.av = getelementptr i8, ptr %i.as, i64 -5
  %i.aw = load <2 x i8>, ptr %i.au, align 1, !tbaa !83, !noalias !7632
  %i.ax = shufflevector <2 x i8> %i.aw, <2 x i8> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ay = shufflevector <4 x i8> <i8 58, i8 poison, i8 poison, i8 46>, <4 x i8> %i.ax, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i8> %i.ay, ptr %i.av, align 1, !tbaa !83, !noalias !7632
  %i.az = shl nuw nsw i64 %i.n, 1
  %i.ba = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.az
  %i.bb = shl nuw nsw i64 %i.l, 1
  %i.bc = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.bb
  %i.bd = add nsw i32 %.sroa.037.0.i.i.i.i, 719468 ; 2 uses
  %i.be = icmp sgt i32 %.sroa.037.0.i.i.i.i, -719469
  %i.bf = add nuw nsw i32 %.sroa.037.0.i.i.i.i, 573372
  %i.bg = select i1 %i.be, i32 %i.bd, i32 %i.bf
  %i.bh = sdiv i32 %i.bg, 146097                  ; 2 uses
  %.neg.i.i17.i.i.i.i = mul nsw i32 %i.bh, -146097
  %i.bi = add nsw i32 %.neg.i.i17.i.i.i.i, %i.bd  ; 5 uses
  %i.bj = udiv i32 %i.bi, 1460
  %i.bk = udiv i32 %i.bi, 36524
  %i.bl = udiv i32 %i.bi, 146096
  %.neg8 = add nsw i32 %i.bk, %i.bi
  %i.bm = add nuw nsw i32 %i.bl, %i.bj
  %i.bn = sub nsw i32 %.neg8, %i.bm               ; 3 uses
  %i.bo = udiv i32 %i.bn, 365                     ; 2 uses
  %i.bp = mul nsw i32 %i.bh, 400
  %i.bq = add nsw i32 %i.bo, %i.bp
  %i.br = udiv i32 %i.bn, 1460
  %i.bs = udiv i32 %i.bn, 36500
  %.neg36.i.i.i.i.i.i = mul i32 %i.bo, -365
  %.neg37.i.i.i.i.i.i = sub nsw i32 %i.bi, %i.br
  %.neg25.i.i.i.i.i.i = add nsw i32 %.neg37.i.i.i.i.i.i, %i.bs
  %i.bt = add i32 %.neg25.i.i.i.i.i.i, %.neg36.i.i.i.i.i.i ; 2 uses
  %i.bu = mul i32 %i.bt, 5
  %i.bv = add i32 %i.bu, 2                        ; 2 uses
  %i.bw = udiv i32 %i.bv, 153                     ; 2 uses
  %i.bx = mul nuw i32 %i.bw, 153
  %i.by = add nuw i32 %i.bx, 2
  %i.bz = udiv i32 %i.by, 5
  %i.ca = sub i32 %i.bt, %i.bz
  %i.cb = icmp ult i32 %i.bv, 1530
  %.v.i.i.i.i.i.i = select i1 %i.cb, i32 3, i32 -9
  %i.cc = add nsw i32 %.v.i.i.i.i.i.i, %i.bw      ; 2 uses
  %i.cd = icmp ult i32 %i.cc, 3
  %i.ce = zext i1 %i.cd to i32
  %i.cf = add nsw i32 %i.bq, %i.ce
  %i.cg = shl i32 %i.ca, 24
  %.sroa.3.0.insert.ext.i.i.i.i.i.i = add i32 %i.cg, 16777216
  %i.ch = lshr exact i32 %.sroa.3.0.insert.ext.i.i.i.i.i.i, 23
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ci
  %i.ck = shl nsw i32 %i.cc, 1
  %i.cl = and i32 %i.ck, 510
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.cm
  %sext.i.i.i.i.i = shl i32 %i.cf, 16
  %i.co = ashr exact i32 %sext.i.i.i.i.i, 16      ; 2 uses
  %i.cp = icmp slt i32 %i.co, 0
  %i.cq = call i32 @llvm.abs.i32(i32 %i.co, i1 true) ; 2 uses
  %.lhs.trunc.i.i.i.i.i = trunc nuw i32 %i.cq to i16 ; 3 uses
  %i.cr = urem i16 %.lhs.trunc.i.i.i.i.i, 100
  %i.cs = shl nuw nsw i16 %i.cr, 1
  %i.ct = zext nneg i16 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ct
  %i.cv = udiv i16 %.lhs.trunc.i.i.i.i.i, 100
  %i.cw = urem i16 %i.cv, 100
  %i.cx = shl nuw nsw i16 %i.cw, 1
  %i.cy = zext nneg i16 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.cy
  %i.da = getelementptr i8, ptr %i.as, i64 -21    ; 2 uses
  %i.db = load <2 x i8>, ptr %i.ba, align 1, !tbaa !83, !noalias !7632
  %i.dc = load <2 x i8>, ptr %i.bc, align 1, !tbaa !83, !noalias !7632
  %i.dd = load <2 x i8>, ptr %i.cj, align 1, !tbaa !83, !noalias !7632
  %i.de = load <2 x i8>, ptr %i.cn, align 1, !tbaa !83, !noalias !7632
  %i.df = load <2 x i8>, ptr %i.cu, align 1, !tbaa !83, !noalias !7632
  %i.dg = load <2 x i8>, ptr %i.cz, align 1, !tbaa !83, !noalias !7632
  %i.dh = shufflevector <2 x i8> %i.dg, <2 x i8> %i.df, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.di = shufflevector <16 x i8> %i.dh, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 32, i8 poison, i8 poison, i8 58, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 poison, i32 poison, i32 23, i32 poison, i32 poison, i32 26, i32 poison, i32 poison, i32 29, i32 poison, i32 poison>
  %i.dj = shufflevector <2 x i8> %i.de, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dk = shufflevector <16 x i8> %i.di, <16 x i8> %i.dj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 7, i32 poison, i32 poison, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.dl = shufflevector <2 x i8> %i.dd, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dm = shufflevector <16 x i8> %i.dk, <16 x i8> %i.dl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.dn = shufflevector <2 x i8> %i.dc, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.do = shufflevector <16 x i8> %i.dm, <16 x i8> %i.dn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 17, i32 13, i32 poison, i32 poison>
  %i.dp = shufflevector <2 x i8> %i.db, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dq = shufflevector <16 x i8> %i.do, <16 x i8> %i.dp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  store <16 x i8> %i.dq, ptr %i.da, align 1, !tbaa !83, !noalias !7632
  %i.dr = icmp samesign ugt i32 %i.cq, 9999
  br i1 %i.dr, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i
  %i.ds = udiv i16 %.lhs.trunc.i.i.i.i.i, 10000
  %i.dt = trunc nuw nsw i16 %i.ds to i8
  %i.du = or disjoint i8 %i.dt, 48
  %i.dv = getelementptr i8, ptr %i.as, i64 -22    ; 2 uses
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !83, !noalias !7632
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i
  %.4.i.i.i.i = phi ptr [ %i.dv, %bb.l ], [ %i.da, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i ] ; 2 uses
  br i1 %i.cp, label %bb.n, label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.dw = getelementptr inbounds i8, ptr %.4.i.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.dw, align 1, !tbaa !83, !noalias !7632
  br label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i.i.i.i

_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i.i.i.i: ; preds = %bb.n, %bb.m
  %.5.i.i.i.i = phi ptr [ %i.dw, %bb.n ], [ %.4.i.i.i.i, %bb.m ] ; 2 uses
  %i.dx = ptrtoint ptr %i.j to i64
  %i.dy = ptrtoint ptr %.5.i.i.i.i to i64
  %i.dz = sub i64 %i.dx, %i.dy
  call void @_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEE6AppendEPKhl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %.0.val.8.val, ptr noundef nonnull %.5.i.i.i.i, i64 noundef %i.dz)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !7632
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_13TimestampTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

bb.o:                                             ; preds = %bb.a
  %i.ea = add i64 %i.b, 1096193779200000000
  %spec.select.i.i18.i.i.i = icmp ult i64 %i.ea, 2068084742400000000
  br i1 %spec.select.i.i18.i.i.i, label %bb.q, label %bb.p, !prof !103

bb.p:                                             ; preds = %bb.o
  call fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_13TimestampTypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %i.b, ptr noundef nonnull readonly align 8 dereferenceable(8) %6)
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_13TimestampTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

bb.q:                                             ; preds = %bb.o
  %i.eb = sdiv i64 %i.b, 86400000000              ; 3 uses
  %i.ec = trunc nsw i64 %i.eb to i32              ; 2 uses
  %i.ed = mul nsw i64 %i.eb, 86400000000          ; 2 uses
  %.not53.i19.i.i.i = icmp sgt i64 %i.ed, %i.b
  br i1 %.not53.i19.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.neg.i.i.i20.i.i.i = mul nsw i64 %i.eb, -86400000000
  %i.ee = add nsw i64 %.neg.i.i.i20.i.i.i, %i.b
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %.neg.i63.i.i.i = add nsw i64 %i.b, 86400000000
  %i.ef = sub nsw i64 %.neg.i63.i.i.i, %i.ed
  %i.eg = add nsw i32 %i.ec, -1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.036.0.i21.i.i.i = phi i64 [ %i.ee, %bb.r ], [ %i.ef, %bb.s ]
  %.sroa.037.0.i22.i.i.i = phi i32 [ %i.ec, %bb.r ], [ %i.eg, %bb.s ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !7633
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 29 ; 2 uses
  %.not.i23.i.i.i = icmp eq i64 %.0.val.0.val.16.val, 0
  br i1 %.not.i23.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  store i8 90, ptr %i.ei, align 1, !tbaa !83, !noalias !7633
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0.i24.i.i.i = phi ptr [ %i.eh, %bb.t ], [ %i.ei, %bb.u ] ; 6 uses
  %.063.i25.i.i.i = ptrtoaddr ptr %.0.i24.i.i.i to i64 ; 3 uses
  %spec.select.i.i.i.i26.i.i.i = call i64 @llvm.abs.i64(i64 %.sroa.036.0.i21.i.i.i, i1 true) ; 3 uses
  %i.ej = udiv i64 %spec.select.i.i.i.i26.i.i.i, 3600000000 ; 3 uses
  %i.ek = udiv i64 %spec.select.i.i.i.i26.i.i.i, 60000000
  %.neg.i.i.i.i27.i.i.i = mul nsw i64 %i.ej, -60
  %i.el = add nsw i64 %.neg.i.i.i.i27.i.i.i, %i.ek ; 2 uses
  %.neg.i7.i.i.i28.i.i.i = mul nsw i64 %i.ej, -3600000000
  %i.em = add nsw i64 %.neg.i7.i.i.i28.i.i.i, %spec.select.i.i.i.i26.i.i.i
  %.neg.i8.i.i.i29.i.i.i = mul nsw i64 %i.el, -60000000
  %i.en = add nsw i64 %i.em, %.neg.i8.i.i.i29.i.i.i ; 2 uses
  %i.eo = sdiv i64 %i.en, 1000000                 ; 2 uses
  %.neg.i.i.i.i.i30.i.i.i = mul nsw i64 %i.eo, -1000000
  %i.ep = add nsw i64 %.neg.i.i.i.i.i30.i.i.i, %i.en ; 3 uses
  %i.eq = icmp sgt i64 %i.ep, 99
  br i1 %i.eq, label %.lr.ph.i.i.i.i57.i.i.i, label %._crit_edge.i.i.i.i31.i.i.i

.lr.ph.i.i.i.i57.i.i.i:                           ; preds = %bb.v, %.lr.ph.i.i.i.i57.i.i.i
  %.1.idx.i58.i.i.i = phi i64 [ %.1.add.i61.i.i.i, %.lr.ph.i.i.i.i57.i.i.i ], [ 0, %bb.v ] ; 2 uses
  %.08.i.i.i.i59.i.i.i = phi i64 [ %i.ey, %.lr.ph.i.i.i.i57.i.i.i ], [ %i.ep, %bb.v ] ; 3 uses
  %.1.ptr.i60.i.i.i = getelementptr inbounds i8, ptr %.0.i24.i.i.i, i64 %.1.idx.i58.i.i.i
  %i.er = urem i64 %.08.i.i.i.i59.i.i.i, 100
  %i.es = shl nuw nsw i64 %i.er, 1
  %i.et = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.es ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 1
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !83, !noalias !7633
  %i.ew = getelementptr inbounds i8, ptr %.1.ptr.i60.i.i.i, i64 -1
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !83, !noalias !7633
  %i.ex = load i8, ptr %i.et, align 1, !tbaa !83, !noalias !7633
  %.1.add.i61.i.i.i = add nsw i64 %.1.idx.i58.i.i.i, -2 ; 3 uses
  %.ptr55.i62.i.i.i = getelementptr inbounds i8, ptr %.0.i24.i.i.i, i64 %.1.add.i61.i.i.i
  store i8 %i.ex, ptr %.ptr55.i62.i.i.i, align 1, !tbaa !83, !noalias !7633
  %i.ey = udiv i64 %.08.i.i.i.i59.i.i.i, 100      ; 2 uses
  %i.ez = icmp samesign ugt i64 %.08.i.i.i.i59.i.i.i, 9999
  br i1 %i.ez, label %.lr.ph.i.i.i.i57.i.i.i, label %._crit_edge.i.i.i.i31.i.i.i, !llvm.loop !36

._crit_edge.i.i.i.i31.i.i.i:                      ; preds = %.lr.ph.i.i.i.i57.i.i.i, %bb.v
  %.2.idx.i32.i.i.i = phi i64 [ 0, %bb.v ], [ %.1.add.i61.i.i.i, %.lr.ph.i.i.i.i57.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i33.i.i.i = phi i64 [ %i.ep, %bb.v ], [ %i.ey, %.lr.ph.i.i.i.i57.i.i.i ] ; 3 uses
  %i.fa = icmp sgt i64 %.0.lcssa.i.i.i.i33.i.i.i, 9
  br i1 %i.fa, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i.i.i31.i.i.i
  %i.fb = shl nuw nsw i64 %.0.lcssa.i.i.i.i33.i.i.i, 1
  %i.fc = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fb ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !83, !noalias !7633
  %.2.add.i55.i.i.i = add nsw i64 %.2.idx.i32.i.i.i, -1 ; 2 uses
  %.ptr54.i56.i.i.i = getelementptr inbounds i8, ptr %.0.i24.i.i.i, i64 %.2.add.i55.i.i.i
  store i8 %i.fe, ptr %.ptr54.i56.i.i.i, align 1, !tbaa !83, !noalias !7633
  %i.ff = load i8, ptr %i.fc, align 1, !tbaa !83, !noalias !7633
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i34.i.i.i
end_hunk_4
begin_hunk_5_@_ZZN5arrow8internal22ArraySpanInlineVisitorINS_13TimestampTypeEvE11VisitStatusIZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeES2_E4ExecEPNS5_13KernelContextERKNS5_8ExecSpanEPNS5_10ExecResultEEUllE_ZNSA_4ExecESC_SF_SH_EUlvE_EENS_6StatusERKNS_9ArraySpanEOT_OT0_ENKUllE_clEl:bb.a
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !83, !noalias !7634
  %.2.add.i99.i.i.i = add nsw i64 %.2.idx.i77.i.i.i, -1 ; 2 uses
  %.ptr54.i100.i.i.i = getelementptr inbounds i8, ptr %.0.i69.i.i.i, i64 %.2.add.i99.i.i.i
  store i8 %i.kb, ptr %.ptr54.i100.i.i.i, align 1, !tbaa !83, !noalias !7634
  %i.kc = load i8, ptr %i.jz, align 1, !tbaa !83, !noalias !7634
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i79.i.i.i

bb.ai:                                            ; preds = %._crit_edge.i.i.i.i76.i.i.i
  %i.kd = trunc i64 %.0.lcssa.i.i.i.i78.i.i.i to i8
  %i.ke = add i8 %i.kd, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i79.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i79.i.i.i: ; preds = %bb.ai, %bb.ah
  %.3.idx.i80.i.i.i = phi i64 [ %.2.add.i99.i.i.i, %bb.ah ], [ %.2.idx.i77.i.i.i, %bb.ai ] ; 3 uses
  %.sink.i.i.i.i81.i.i.i = phi i8 [ %i.kc, %bb.ah ], [ %i.ke, %bb.ai ]
  %i.kf = getelementptr i8, ptr %.0.i69.i.i.i, i64 %.3.idx.i80.i.i.i ; 2 uses
  %.ptr.i82.i.i.i = getelementptr i8, ptr %i.kf, i64 -1
  store i8 %.sink.i.i.i.i81.i.i.i, ptr %.ptr.i82.i.i.i, align 1, !tbaa !83, !noalias !7634
  %i.kg = icmp sgt i64 %.3.idx.i80.i.i.i, -8
  br i1 %i.kg, label %.lr.ph.i.i.preheader.i95.i.i.i, label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

.lr.ph.i.i.preheader.i95.i.i.i:                   ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i79.i.i.i
  %i.kh = add i64 %.3.idx.i80.i.i.i, %.063.i70.i.i.i ; 2 uses
  %i.ki = add i64 %i.kh, -2
  %i.kj = add i64 %.063.i70.i.i.i, -9
  %umin.i96.i.i.i = call i64 @llvm.umin.i64(i64 %i.ki, i64 %i.kj) ; 2 uses
  %i.kk = sub i64 %umin.i96.i.i.i, %.063.i70.i.i.i
  %scevgep.i97.i.i.i = getelementptr i8, ptr %.0.i69.i.i.i, i64 %i.kk ; 2 uses
  %i.kl = xor i64 %umin.i96.i.i.i, -1
  %i.km = add i64 %i.kh, %i.kl
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i97.i.i.i, i8 48, i64 %i.km, i1 false), !tbaa !83, !noalias !7634
  %scevgep65.i98.i.i.i = getelementptr i8, ptr %scevgep.i97.i.i.i, i64 1
  br label %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i

_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i: ; preds = %.lr.ph.i.i.preheader.i95.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i79.i.i.i
  %i.kn = phi ptr [ %i.kf, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i79.i.i.i ], [ %scevgep65.i98.i.i.i, %.lr.ph.i.i.preheader.i95.i.i.i ] ; 3 uses
  %i.ko = shl nsw i64 %i.jl, 1
  %i.kp = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ko
  %i.kq = getelementptr i8, ptr %i.kn, i64 -5
  %i.kr = load <2 x i8>, ptr %i.kp, align 1, !tbaa !83, !noalias !7634
  %i.ks = shufflevector <2 x i8> %i.kr, <2 x i8> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.kt = shufflevector <4 x i8> <i8 58, i8 poison, i8 poison, i8 46>, <4 x i8> %i.ks, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i8> %i.kt, ptr %i.kq, align 1, !tbaa !83, !noalias !7634
  %i.ku = shl nsw i64 %i.ji, 1
  %i.kv = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ku
  %i.kw = shl nuw nsw i64 %i.jg, 1
  %i.kx = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.kw
  %i.ky = add nsw i32 %.sroa.037.0.i67.i.i.i, 719468 ; 2 uses
  %i.kz = udiv i32 %i.ky, 146097                  ; 2 uses
  %.neg.i.i17.i83.i.i.i = mul nsw i32 %i.kz, -146097
  %i.la = add nsw i32 %.neg.i.i17.i83.i.i.i, %i.ky ; 5 uses
  %i.lb = udiv i32 %i.la, 1460
  %i.lc = udiv i32 %i.la, 36524
  %i.ld = udiv i32 %i.la, 146096
  %.neg13 = add nsw i32 %i.lc, %i.la
  %i.le = add nuw nsw i32 %i.ld, %i.lb
  %i.lf = sub nsw i32 %.neg13, %i.le              ; 3 uses
  %i.lg = udiv i32 %i.lf, 365                     ; 2 uses
  %i.lh = mul nuw nsw i32 %i.kz, 400
  %i.li = add nuw nsw i32 %i.lg, %i.lh
  %i.lj = udiv i32 %i.lf, 1460
  %i.lk = udiv i32 %i.lf, 36500
  %.neg36.i.i.i85.i.i.i = mul i32 %i.lg, -365
  %.neg37.i.i.i86.i.i.i = sub nsw i32 %i.la, %i.lj
  %.neg25.i.i.i87.i.i.i = add nsw i32 %.neg37.i.i.i86.i.i.i, %i.lk
  %i.ll = add i32 %.neg25.i.i.i87.i.i.i, %.neg36.i.i.i85.i.i.i ; 2 uses
  %i.lm = mul i32 %i.ll, 5
  %i.ln = add i32 %i.lm, 2                        ; 2 uses
  %i.lo = udiv i32 %i.ln, 153                     ; 2 uses
  %i.lp = mul nuw i32 %i.lo, 153
  %i.lq = add nuw i32 %i.lp, 2
  %i.lr = udiv i32 %i.lq, 5
  %i.ls = sub i32 %i.ll, %i.lr
  %i.lt = icmp ult i32 %i.ln, 1530
  %.v.i.i.i88.i.i.i = select i1 %i.lt, i32 3, i32 -9
  %i.lu = add nsw i32 %.v.i.i.i88.i.i.i, %i.lo    ; 2 uses
  %i.lv = icmp ult i32 %i.lu, 3
  %i.lw = zext i1 %i.lv to i32
  %i.lx = add nuw nsw i32 %i.li, %i.lw
  %i.ly = shl i32 %i.ls, 24
  %.sroa.3.0.insert.ext.i.i.i89.i.i.i = add i32 %i.ly, 16777216
  %i.lz = lshr exact i32 %.sroa.3.0.insert.ext.i.i.i89.i.i.i, 23
  %i.ma = zext nneg i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ma
  %i.mc = shl nsw i32 %i.lu, 1
  %i.md = and i32 %i.mc, 510
  %i.me = zext nneg i32 %i.md to i64
  %i.mf = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.me
  %sext.i.i90.i.i.i = shl i32 %i.lx, 16
  %i.mg = ashr exact i32 %sext.i.i90.i.i.i, 16    ; 2 uses
  %i.mh = icmp slt i32 %i.mg, 0
  %i.mi = call i32 @llvm.abs.i32(i32 %i.mg, i1 true) ; 2 uses
  %.lhs.trunc.i.i91.i.i.i = trunc nuw i32 %i.mi to i16 ; 3 uses
  %i.mj = urem i16 %.lhs.trunc.i.i91.i.i.i, 100
  %i.mk = shl nuw nsw i16 %i.mj, 1
  %i.ml = zext nneg i16 %i.mk to i64
  %i.mm = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ml
  %i.mn = udiv i16 %.lhs.trunc.i.i91.i.i.i, 100
  %i.mo = urem i16 %i.mn, 100
  %i.mp = shl nuw nsw i16 %i.mo, 1
  %i.mq = zext nneg i16 %i.mp to i64
  %i.mr = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.mq
  %i.ms = getelementptr i8, ptr %i.kn, i64 -21    ; 2 uses
  %i.mt = load <2 x i8>, ptr %i.kv, align 1, !tbaa !83, !noalias !7634
  %i.mu = load <2 x i8>, ptr %i.kx, align 1, !tbaa !83, !noalias !7634
  %i.mv = load <2 x i8>, ptr %i.mb, align 1, !tbaa !83, !noalias !7634
  %i.mw = load <2 x i8>, ptr %i.mf, align 1, !tbaa !83, !noalias !7634
  %i.mx = load <2 x i8>, ptr %i.mm, align 1, !tbaa !83, !noalias !7634
  %i.my = load <2 x i8>, ptr %i.mr, align 1, !tbaa !83, !noalias !7634
  %i.mz = shufflevector <2 x i8> %i.my, <2 x i8> %i.mx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.na = shufflevector <16 x i8> %i.mz, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 32, i8 poison, i8 poison, i8 58, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 poison, i32 poison, i32 23, i32 poison, i32 poison, i32 26, i32 poison, i32 poison, i32 29, i32 poison, i32 poison>
  %i.nb = shufflevector <2 x i8> %i.mw, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nc = shufflevector <16 x i8> %i.na, <16 x i8> %i.nb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 7, i32 poison, i32 poison, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.nd = shufflevector <2 x i8> %i.mv, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ne = shufflevector <16 x i8> %i.nc, <16 x i8> %i.nd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.nf = shufflevector <2 x i8> %i.mu, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ng = shufflevector <16 x i8> %i.ne, <16 x i8> %i.nf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 17, i32 13, i32 poison, i32 poison>
  %i.nh = shufflevector <2 x i8> %i.mt, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ni = shufflevector <16 x i8> %i.ng, <16 x i8> %i.nh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  store <16 x i8> %i.ni, ptr %i.ms, align 1, !tbaa !83, !noalias !7634
  %i.nj = icmp samesign ugt i32 %i.mi, 9999
  br i1 %i.nj, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i
  %i.nk = udiv i16 %.lhs.trunc.i.i91.i.i.i, 10000
  %i.nl = trunc nuw nsw i16 %i.nk to i8
  %i.nm = or disjoint i8 %i.nl, 48
  %i.nn = getelementptr i8, ptr %i.kn, i64 -22    ; 2 uses
  store i8 %i.nm, ptr %i.nn, align 1, !tbaa !83, !noalias !7634
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i
  %.4.i92.i.i.i = phi ptr [ %i.nn, %bb.aj ], [ %i.ms, %_ZN5arrow8internal6detail14FormatHH_MM_SSINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEEEvN14arrow_vendored4date8hh_mm_ssIT_EEPPc.exit.i.i.i.i ] ; 2 uses
  br i1 %i.mh, label %bb.al, label %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEclINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeES2_E4ExecEPNSA_13KernelContextERKNSA_8ExecSpanEPNSA_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSR_EEET_lOST_.exit.i.i.i

bb.al:                                            ; preds = %bb.ak
  %i.no = getelementptr inbounds i8, ptr %.4.i92.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.no, align 1, !tbaa !83, !noalias !7634
  br label %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEclINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeES2_E4ExecEPNSA_13KernelContextERKNSA_8ExecSpanEPNSA_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSR_EEET_lOST_.exit.i.i.i

_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEclINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeES2_E4ExecEPNSA_13KernelContextERKNSA_8ExecSpanEPNSA_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSR_EEET_lOST_.exit.i.i.i: ; preds = %bb.al, %bb.ak
  %.5.i93.i.i.i = phi ptr [ %i.no, %bb.al ], [ %.4.i92.i.i.i, %bb.ak ] ; 2 uses
  %i.np = ptrtoint ptr %i.je to i64
  %i.nq = ptrtoint ptr %.5.i93.i.i.i to i64
  %i.nr = sub i64 %i.np, %i.nq
  call void @_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEE6AppendEPKhl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %.0.val.8.val, ptr noundef nonnull %.5.i93.i.i.i, i64 noundef %i.nr)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !7634
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_13TimestampTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

bb.am:                                            ; preds = %bb.a
  %i.ns = add i64 %i.b, 1096193779200
  %spec.select.i.i108.i.i.i = icmp ult i64 %i.ns, 2068084742400
  %.sroa.gep.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 23 ; 2 uses
  %.sroa.gep52.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 22 ; 2 uses
  br i1 %spec.select.i.i108.i.i.i, label %bb.ao, label %bb.an, !prof !103

bb.an:                                            ; preds = %bb.am
  call fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_13TimestampTypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %i.b, ptr noundef nonnull readonly align 8 dereferenceable(8) %6)
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_13TimestampTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

bb.ao:                                            ; preds = %bb.am
  %i.nt = sdiv i64 %i.b, 86400                    ; 3 uses
  %i.nu = trunc nsw i64 %i.nt to i32              ; 2 uses
  %i.nv = mul nsw i64 %i.nt, 86400                ; 2 uses
  %.not46.i.i.i.i = icmp sgt i64 %i.nv, %i.b
  br i1 %.not46.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.neg.i.i.i109.i.i.i = mul nsw i64 %i.nt, -86400
  %i.nw = add nsw i64 %.neg.i.i.i109.i.i.i, %i.b
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %.neg.i125.i.i.i = add nsw i64 %i.b, 86400
  %i.nx = sub nsw i64 %.neg.i125.i.i.i, %i.nv
  %i.ny = add nsw i32 %i.nu, -1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.sroa.029.0.i.i.i.i = phi i64 [ %i.nw, %bb.ap ], [ %i.nx, %bb.aq ]
  %.sroa.030.0.i.i.i.i = phi i32 [ %i.nu, %bb.ap ], [ %i.ny, %bb.aq ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !7635
  %.not.i110.i.i.i = icmp eq i64 %.0.val.0.val.16.val, 0
  br i1 %.not.i110.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i8 90, ptr %.sroa.gep52.i.i.i.i, align 1, !tbaa !83, !noalias !7635
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.sroa.phi.i.i.i.i = phi ptr [ %.sroa.gep.i.i.i.i, %bb.ar ], [ %.sroa.gep52.i.i.i.i, %bb.as ] ; 5 uses
  %spec.select.i.i.i.i111.i.i.i = tail call i64 @llvm.abs.i64(i64 %.sroa.029.0.i.i.i.i, i1 true) ; 3 uses
  %i.nz = udiv i64 %spec.select.i.i.i.i111.i.i.i, 3600 ; 3 uses
  %i.oa = udiv i64 %spec.select.i.i.i.i111.i.i.i, 60
  %.neg.i.i.i.i112.i.i.i = mul nsw i64 %i.nz, -60
  %i.ob = add nsw i64 %.neg.i.i.i.i112.i.i.i, %i.oa ; 2 uses
  %.neg.i7.i.i.i113.i.i.i = mul nsw i64 %i.nz, -3600
  %i.oc = add nsw i64 %.neg.i7.i.i.i113.i.i.i, %spec.select.i.i.i.i111.i.i.i
  %.neg.i8.i.i.i114.i.i.i = mul nsw i64 %i.ob, -60
  %i.od = add nsw i64 %i.oc, %.neg.i8.i.i.i114.i.i.i
  %i.oe = shl nuw nsw i64 %i.od, 1
  %i.of = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.oe ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 1
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !83, !noalias !7635
  %i.oi = getelementptr inbounds i8, ptr %.sroa.phi.i.i.i.i, i64 -1
  store i8 %i.oh, ptr %i.oi, align 1, !tbaa !83, !noalias !7635
  %i.oj = load i8, ptr %i.of, align 1, !tbaa !83, !noalias !7635
  %i.ok = getelementptr inbounds i8, ptr %.sroa.phi.i.i.i.i, i64 -2
  store i8 %i.oj, ptr %i.ok, align 1, !tbaa !83, !noalias !7635
  %i.ol = getelementptr inbounds i8, ptr %.sroa.phi.i.i.i.i, i64 -3
  store i8 58, ptr %i.ol, align 1, !tbaa !83, !noalias !7635
  %i.om = shl nuw nsw i64 %i.ob, 1
  %i.on = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.om
  %i.oo = shl nuw nsw i64 %i.nz, 1
  %i.op = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.oo
  %i.oq = add nsw i32 %.sroa.030.0.i.i.i.i, 719468 ; 2 uses
  %i.or = icmp sgt i32 %.sroa.030.0.i.i.i.i, -719469
  %i.os = add nuw nsw i32 %.sroa.030.0.i.i.i.i, 573372
  %i.ot = select i1 %i.or, i32 %i.oq, i32 %i.os
  %i.ou = sdiv i32 %i.ot, 146097                  ; 2 uses
  %.neg.i.i17.i115.i.i.i = mul nsw i32 %i.ou, -146097
  %i.ov = add nsw i32 %.neg.i.i17.i115.i.i.i, %i.oq ; 5 uses
  %i.ow = udiv i32 %i.ov, 1460
  %i.ox = udiv i32 %i.ov, 36524
  %i.oy = udiv i32 %i.ov, 146096
  %.neg18 = add nsw i32 %i.ox, %i.ov
  %i.oz = add nuw nsw i32 %i.oy, %i.ow
  %i.pa = sub nsw i32 %.neg18, %i.oz              ; 3 uses
  %i.pb = udiv i32 %i.pa, 365                     ; 2 uses
  %i.pc = mul nsw i32 %i.ou, 400
  %i.pd = add nsw i32 %i.pb, %i.pc
  %i.pe = udiv i32 %i.pa, 1460
  %i.pf = udiv i32 %i.pa, 36500
  %.neg36.i.i.i116.i.i.i = mul i32 %i.pb, -365
  %.neg37.i.i.i117.i.i.i = sub nsw i32 %i.ov, %i.pe
  %.neg25.i.i.i118.i.i.i = add nsw i32 %.neg37.i.i.i117.i.i.i, %i.pf
  %i.pg = add i32 %.neg25.i.i.i118.i.i.i, %.neg36.i.i.i116.i.i.i ; 2 uses
  %i.ph = mul i32 %i.pg, 5
  %i.pi = add i32 %i.ph, 2                        ; 2 uses
  %i.pj = udiv i32 %i.pi, 153                     ; 2 uses
  %i.pk = mul nuw i32 %i.pj, 153
  %i.pl = add nuw i32 %i.pk, 2
  %i.pm = udiv i32 %i.pl, 5
  %i.pn = sub i32 %i.pg, %i.pm
  %i.po = icmp ult i32 %i.pi, 1530
  %.v.i.i.i119.i.i.i = select i1 %i.po, i32 3, i32 -9
  %i.pp = add nsw i32 %.v.i.i.i119.i.i.i, %i.pj   ; 2 uses
  %i.pq = icmp ult i32 %i.pp, 3
  %i.pr = zext i1 %i.pq to i32
  %i.ps = add nsw i32 %i.pd, %i.pr
  %i.pt = shl i32 %i.pn, 24
  %.sroa.3.0.insert.ext.i.i.i120.i.i.i = add i32 %i.pt, 16777216
  %i.pu = lshr exact i32 %.sroa.3.0.insert.ext.i.i.i120.i.i.i, 23
  %i.pv = zext nneg i32 %i.pu to i64
  %i.pw = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.pv
  %i.px = shl nsw i32 %i.pp, 1
  %i.py = and i32 %i.px, 510
  %i.pz = zext nneg i32 %i.py to i64
  %i.qa = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.pz
  %sext.i.i121.i.i.i = shl i32 %i.ps, 16
  %i.qb = ashr exact i32 %sext.i.i121.i.i.i, 16   ; 2 uses
  %i.qc = icmp slt i32 %i.qb, 0
  %i.qd = tail call i32 @llvm.abs.i32(i32 %i.qb, i1 true) ; 2 uses
  %.lhs.trunc.i.i122.i.i.i = trunc nuw i32 %i.qd to i16 ; 3 uses
  %i.qe = urem i16 %.lhs.trunc.i.i122.i.i.i, 100
  %i.qf = shl nuw nsw i16 %i.qe, 1
  %i.qg = zext nneg i16 %i.qf to i64
  %i.qh = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.qg
  %i.qi = udiv i16 %.lhs.trunc.i.i122.i.i.i, 100
  %i.qj = urem i16 %i.qi, 100
  %i.qk = shl nuw nsw i16 %i.qj, 1
  %i.ql = zext nneg i16 %i.qk to i64
  %i.qm = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.ql
  %i.qn = getelementptr inbounds i8, ptr %.sroa.phi.i.i.i.i, i64 -19 ; 2 uses
  %i.qo = load <2 x i8>, ptr %i.on, align 1, !tbaa !83, !noalias !7635
  %i.qp = load <2 x i8>, ptr %i.op, align 1, !tbaa !83, !noalias !7635
  %i.qq = load <2 x i8>, ptr %i.pw, align 1, !tbaa !83, !noalias !7635
  %i.qr = load <2 x i8>, ptr %i.qa, align 1, !tbaa !83, !noalias !7635
  %i.qs = load <2 x i8>, ptr %i.qh, align 1, !tbaa !83, !noalias !7635
  %i.qt = load <2 x i8>, ptr %i.qm, align 1, !tbaa !83, !noalias !7635
  %i.qu = shufflevector <2 x i8> %i.qt, <2 x i8> %i.qs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qv = shufflevector <16 x i8> %i.qu, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 45, i8 poison, i8 poison, i8 32, i8 poison, i8 poison, i8 58, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 poison, i32 poison, i32 23, i32 poison, i32 poison, i32 26, i32 poison, i32 poison, i32 29, i32 poison, i32 poison>
  %i.qw = shufflevector <2 x i8> %i.qr, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qx = shufflevector <16 x i8> %i.qv, <16 x i8> %i.qw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 16, i32 17, i32 7, i32 poison, i32 poison, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.qy = shufflevector <2 x i8> %i.qq, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qz = shufflevector <16 x i8> %i.qx, <16 x i8> %i.qy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 10, i32 poison, i32 poison, i32 13, i32 poison, i32 poison>
  %i.ra = shufflevector <2 x i8> %i.qp, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rb = shufflevector <16 x i8> %i.qz, <16 x i8> %i.ra, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 16, i32 17, i32 13, i32 poison, i32 poison>
  %i.rc = shufflevector <2 x i8> %i.qo, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rd = shufflevector <16 x i8> %i.rb, <16 x i8> %i.rc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 16, i32 17>
  store <16 x i8> %i.rd, ptr %i.qn, align 1, !tbaa !83, !noalias !7635
  %i.re = icmp samesign ugt i32 %i.qd, 9999
  br i1 %i.re, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.rf = udiv i16 %.lhs.trunc.i.i122.i.i.i, 10000
  %i.rg = trunc nuw nsw i16 %i.rf to i8
  %i.rh = or disjoint i8 %i.rg, 48
  %i.ri = getelementptr inbounds i8, ptr %.sroa.phi.i.i.i.i, i64 -20 ; 2 uses
  store i8 %i.rh, ptr %i.ri, align 1, !tbaa !83, !noalias !7635
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.1.i.i.i.i = phi ptr [ %i.ri, %bb.au ], [ %i.qn, %bb.at ] ; 2 uses
  br i1 %i.qc, label %bb.aw, label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i123.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.rj = getelementptr inbounds i8, ptr %.1.i.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.rj, align 1, !tbaa !83, !noalias !7635
  br label %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i123.i.i.i

_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i123.i.i.i: ; preds = %bb.aw, %bb.av
  %.2.i.i.i.i = phi ptr [ %i.rj, %bb.aw ], [ %.1.i.i.i.i, %bb.av ] ; 2 uses
  %i.rk = ptrtoint ptr %.sroa.gep.i.i.i.i to i64
  %i.rl = ptrtoint ptr %.2.i.i.i.i to i64
  %i.rm = sub i64 %i.rk, %i.rl
  call void @_ZN5arrow17BaseBinaryBuilderINS_15LargeBinaryTypeEE6AppendEPKhl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(256) %.0.val.8.val, ptr noundef nonnull %.2.i.i.i.i, i64 noundef %i.rm)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !7635
  br label %_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_13TimestampTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit

_ZZN5arrow7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_13TimestampTypeEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENKUllE_clEl.exit: ; preds = %bb.c, %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i.i.i.i, %bb.p, %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i48.i.i.i, %_ZN5arrow8internal15StringFormatterINS_13TimestampTypeEvEclINSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEEZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeES2_E4ExecEPNSA_13KernelContextERKNSA_8ExecSpanEPNSA_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSR_EEET_lOST_.exit.i.i.i, %bb.an, %_ZN5arrow8internal6detail16FormatYYYY_MM_DDEN14arrow_vendored4date14year_month_dayEPPc.exit.i123.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !7631
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZZNS_7compute8internal12_GLOBAL__N_127TemporalToStringCastFunctorINS_15LargeStringTypeENS_13TimestampTypeEE4ExecEPNS4_13KernelContextERKNS4_8ExecSpanEPNS4_10ExecResultEENKUllE_clElEUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalIT0_EEtlSM_EEEOT_OSP_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %.0.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN5arrow8internal7ToCharsIlJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i64 noundef %.0.val)
  %i.a = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.27, i64 noundef 21)
          to label %.noexc unwind label %bb.g     ; 8 uses

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 13 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !211, !alias.scope !7640
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !138  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread, label %bb.b

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread: ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !212  ; 5 uses
  %i.h = icmp samesign ult i64 %i.g, 16
  call void @llvm.assume(i1 %i.h)
  %i.i = add nuw nsw i64 %i.g, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.i, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.g, ptr %i.k, align 8, !tbaa !212, !alias.scope !7640
  store ptr %i.d, ptr %i.a, align 8, !tbaa !138
  store i64 0, ptr %i.j, align 8, !tbaa !212
  store i8 0, ptr %i.d, align 8, !tbaa !83
  %i.l = add nuw nsw i64 %i.g, 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.b:                                             ; preds = %.noexc
  store ptr %i.c, ptr %3, align 8, !tbaa !138, !alias.scope !7640
  %i.m = load i64, ptr %i.d, align 8, !tbaa !83
  store i64 %i.m, ptr %i.b, align 8, !tbaa !83, !alias.scope !7640
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !212 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %.pre.i, ptr %i.o, align 8, !tbaa !212, !alias.scope !7640
  store ptr %i.d, ptr %i.a, align 8, !tbaa !138
  store i64 0, ptr %i.n, align 8, !tbaa !212
  store i8 0, ptr %i.d, align 8, !tbaa !83
  call void @llvm.experimental.noalias.scope.decl(metadata !7641)
  %i.p = icmp eq i64 %.pre.i, 9223372036854775807
  br i1 %i.p, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #32
          to label %.noexc10 unwind label %bb.h

.noexc10:                                         ; preds = %bb.c
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.q = add nsw i64 %.pre.i, 1                   ; 2 uses
  %i.r = icmp eq ptr %i.c, %i.b
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.s = phi i64 [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ]
  %i.t = phi ptr [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ]
  %i.u = phi i64 [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ] ; 2 uses
  %i.v = phi ptr [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.thread ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i ]
  %i.w = icmp ult i64 %i.u, 16
  call void @llvm.assume(i1 %i.w)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.x = load i64, ptr %i.b, align 8, !tbaa !83, !noalias !7641
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.y = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 3 uses
  %i.z = phi ptr [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %i.aa = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 2 uses
  %i.ab = phi ptr [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 4 uses
  %i.ac = phi i64 [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.y, %i.ac
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
end_hunk_5
