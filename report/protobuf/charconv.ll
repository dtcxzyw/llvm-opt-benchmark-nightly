inline.NumInlined: 253
inline.NumDeleted: 99
begin_hunk_0_@_ZN4absl12lts_2025051210from_charsEPKcS2_RfNS0_12chars_formatE:bb.a

_ZN4absl12lts_2025051212_GLOBAL__N_118TruncateToBitWidthEiPNS0_7uint128E.exit40.i.i: ; preds = %bb.bs, %bb.br
  %.sink12.i.i38.i.i = phi i64 [ %i.ji, %bb.bs ], [ %i.jh, %bb.br ]
  %.sink.i.i39.i.i = phi i32 [ 128, %bb.bs ], [ 64, %bb.br ]
  %i.jj = trunc nuw nsw i64 %.sink12.i.i38.i.i to i32
  %reass.sub64.i.i = sub nuw nsw i32 %.sink.i.i39.i.i, %i.jj
  %i.jk = add nsw i32 %reass.sub64.i.i, -63       ; 2 uses
  %i.jl = zext nneg i32 %i.jk to i128
  %i.jm = lshr i128 %i.ja, %i.jl                  ; 2 uses
  %i.jn = trunc i128 %i.jm to i64
  %i.jo = lshr i128 %i.jm, 64
  %i.jp = trunc nuw i128 %i.jo to i64
  %i.jq = add nsw i32 %i.jk, %i.je
  br label %bb.bw

bb.bt:                                            ; preds = %bb.bp
  br i1 %i.jg, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.jr = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jb, i1 false)
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_18BitWidthENS0_7uint128E.exit.i.i

bb.bv:                                            ; preds = %bb.bt
  %i.js = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jd, i1 true)
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_18BitWidthENS0_7uint128E.exit.i.i

_ZN4absl12lts_2025051212_GLOBAL__N_18BitWidthENS0_7uint128E.exit.i.i: ; preds = %bb.bv, %bb.bu
  %.sink12.i.i.i = phi i64 [ %i.js, %bb.bv ], [ %i.jr, %bb.bu ]
  %.sink.i.i.i = phi i32 [ 128, %bb.bv ], [ 64, %bb.bu ]
  %i.jt = trunc nuw nsw i64 %.sink12.i.i.i to i32
  %reass.sub4 = sub nuw nsw i32 %.sink.i.i.i, %i.jt
  %i.ju = add nsw i32 %reass.sub4, -24
  br label %bb.bw

bb.bw:                                            ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_18BitWidthENS0_7uint128E.exit.i.i, %_ZN4absl12lts_2025051212_GLOBAL__N_118TruncateToBitWidthEiPNS0_7uint128E.exit40.i.i, %_ZN4absl12lts_2025051212_GLOBAL__N_118TruncateToBitWidthEiPNS0_7uint128E.exit.i.i
  %.sroa.042.0.i.i = phi i64 [ %i.jb, %_ZN4absl12lts_2025051212_GLOBAL__N_18BitWidthENS0_7uint128E.exit.i.i ], [ %i.jn, %_ZN4absl12lts_2025051212_GLOBAL__N_118TruncateToBitWidthEiPNS0_7uint128E.exit40.i.i ], [ %i.iq, %_ZN4absl12lts_2025051212_GLOBAL__N_118TruncateToBitWidthEiPNS0_7uint128E.exit.i.i ] ; 3 uses
  %.sroa.11.0.i.i = phi i64 [ %i.jd, %_ZN4absl12lts_2025051212_GLOBAL__N_18BitWidthENS0_7uint128E.exit.i.i ], [ %i.jp, %_ZN4absl12lts_2025051212_GLOBAL__N_118TruncateToBitWidthEiPNS0_7uint128E.exit40.i.i ], [ %i.is, %_ZN4absl12lts_2025051212_GLOBAL__N_118TruncateToBitWidthEiPNS0_7uint128E.exit.i.i ]
  %.034.i.i = phi i32 [ %i.ju, %_ZN4absl12lts_2025051212_GLOBAL__N_18BitWidthENS0_7uint128E.exit.i.i ], [ 39, %_ZN4absl12lts_2025051212_GLOBAL__N_118TruncateToBitWidthEiPNS0_7uint128E.exit40.i.i ], [ 34, %_ZN4absl12lts_2025051212_GLOBAL__N_118TruncateToBitWidthEiPNS0_7uint128E.exit.i.i ]
  %.033.i.i = phi i1 [ true, %_ZN4absl12lts_2025051212_GLOBAL__N_18BitWidthENS0_7uint128E.exit.i.i ], [ false, %_ZN4absl12lts_2025051212_GLOBAL__N_118TruncateToBitWidthEiPNS0_7uint128E.exit40.i.i ], [ false, %_ZN4absl12lts_2025051212_GLOBAL__N_118TruncateToBitWidthEiPNS0_7uint128E.exit.i.i ] ; 3 uses
  %.032.i.i = phi i32 [ %i.je, %_ZN4absl12lts_2025051212_GLOBAL__N_18BitWidthENS0_7uint128E.exit.i.i ], [ %i.jq, %_ZN4absl12lts_2025051212_GLOBAL__N_118TruncateToBitWidthEiPNS0_7uint128E.exit40.i.i ], [ %i.it, %_ZN4absl12lts_2025051212_GLOBAL__N_118TruncateToBitWidthEiPNS0_7uint128E.exit.i.i ] ; 2 uses
  %i.jv = sub nsw i32 -149, %.032.i.i
  %.sroa.speculated.i.i99.i = call noundef range(i32 -2147483648, 2147483624) i32 @llvm.smax.i32(i32 %.034.i.i, i32 %i.jv) ; 6 uses
  %i.jw = add nsw i32 %.sroa.speculated.i.i99.i, %.032.i.i ; 2 uses
  %i.jx = icmp slt i32 %.sroa.speculated.i.i99.i, 1
  br i1 %i.jx, label %_ZN4absl12lts_2025051212_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jy = icmp samesign ugt i32 %.sroa.speculated.i.i99.i, 127
  br i1 %i.jy, label %_ZN4absl12lts_2025051212_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.jz = zext nneg i32 %.sroa.speculated.i.i99.i to i128 ; 2 uses
  %notmask.i.i100.i = shl nsw i128 -1, %i.jz
  %i.ka = xor i128 %notmask.i.i100.i, -1          ; 2 uses
  %i.kb = add nsw i32 %.sroa.speculated.i.i99.i, -1
  %i.kc = zext nneg i32 %i.kb to i128
  %i.kd = shl nuw nsw i128 1, %i.kc               ; 3 uses
  %i.ke = zext i64 %.sroa.11.0.i.i to i128
  %i.kf = shl nuw i128 %i.ke, 64                  ; 2 uses
  %i.kg = zext i64 %.sroa.042.0.i.i to i128
  %i.kh = or disjoint i128 %i.kf, %i.kg
  %i.ki = trunc i128 %i.ka to i64
  %i.kj = and i64 %.sroa.042.0.i.i, %i.ki
  %i.kk = and i128 %i.kf, %i.ka
  %i.kl = lshr i128 %i.kh, %i.jz                  ; 2 uses
  %i.km = trunc i128 %i.kl to i64                 ; 4 uses
  %i.kn = zext i64 %i.kj to i128
  %i.ko = or disjoint i128 %i.kk, %i.kn           ; 3 uses
  %i.kp = icmp samesign ult i128 %i.kd, %i.ko
  br i1 %i.kp, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.kq = add i64 %i.km, 1
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread.i.i

bb.ca:                                            ; preds = %bb.by
  %i.kr = icmp eq i128 %i.ko, %i.kd
  br i1 %i.kr, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ks = and i128 %i.kl, 1
  %.not99.i.i.i = icmp eq i128 %i.ks, 0
  %or.cond.i.i.i = and i1 %.033.i.i, %.not99.i.i.i
  %not.or.cond.i.i.i = xor i1 %or.cond.i.i.i, true
  %i.kt = zext i1 %not.or.cond.i.i.i to i64
  %spec.select.i.i109.i = add i64 %i.kt, %i.km
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread.i.i

bb.cc:                                            ; preds = %bb.ca
  %i.ku = add nsw i128 %i.kd, -1
  %i.kv = icmp ne i128 %i.ko, %i.ku
  %or.cond101.not.i.i.i = select i1 %.033.i.i, i1 true, i1 %i.kv
  br i1 %or.cond101.not.i.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread56.i.i

_ZN4absl12lts_2025051212_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.i.i: ; preds = %bb.bw
  %i.kw = sub nsw i32 0, %.sroa.speculated.i.i99.i
  %i.kx = zext i64 %.sroa.042.0.i.i to i128
  %i.ky = zext nneg i32 %i.kw to i128
  %i.kz = shl nuw nsw i128 %i.kx, %i.ky
  %i.la = trunc i128 %i.kz to i64                 ; 2 uses
  br i1 %.033.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread.i.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread56.i.i

_ZN4absl12lts_2025051212_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread56.i.i: ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.i.i, %bb.cc
  %.1.i59.i.i = phi i64 [ %i.la, %_ZN4absl12lts_2025051212_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.i.i ], [ %i.km, %bb.cc ] ; 2 uses
  %i.lb = call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051212_GLOBAL__N_111MustRoundUpEmiRKNS0_16strings_internal11ParsedFloatE(i64 noundef %.1.i59.i.i, i32 noundef %i.jw, ptr noundef nonnull align 8 dereferenceable(48) %6)
  %i.lc = zext i1 %i.lb to i64
  %spec.select.i101.i = add i64 %.1.i59.i.i, %i.lc
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread.i.i

_ZN4absl12lts_2025051212_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread.i.i: ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread56.i.i, %_ZN4absl12lts_2025051212_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.i.i, %bb.cc, %bb.cb, %bb.bz, %bb.bx
  %.0.i102.i = phi i64 [ %i.la, %_ZN4absl12lts_2025051212_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.i.i ], [ %spec.select.i101.i, %_ZN4absl12lts_2025051212_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread56.i.i ], [ %spec.select.i.i109.i, %bb.cb ], [ 0, %bb.bx ], [ %i.kq, %bb.bz ], [ %i.km, %bb.cc ] ; 2 uses
  %i.ld = icmp eq i64 %.0.i102.i, 16777216        ; 2 uses
  %spec.select.i41.i.i = select i1 %i.ld, i64 8388608, i64 %.0.i102.i ; 2 uses
  %i.le = zext i1 %i.ld to i32
  %spec.select9.i.i103.i = add nsw i32 %i.jw, %i.le ; 2 uses
  %i.lf = icmp sgt i32 %spec.select9.i.i103.i, 104 ; 2 uses
  %i.lg = icmp eq i64 %spec.select.i41.i.i, 0
  %spec.select10.i.i104.i = select i1 %i.lg, i32 -99999, i32 %spec.select9.i.i103.i
  %.sroa.3.0.i.i105.i = select i1 %i.lf, i32 99999, i32 %spec.select10.i.i104.i
  %.sroa.0.0.i.i106.i = select i1 %i.lf, i64 0, i64 %spec.select.i41.i.i
  %.fca.0.insert.i.i107.i = insertvalue { i64, i32 } poison, i64 %.sroa.0.0.i.i106.i, 0
  %.fca.1.insert.i.i108.i = insertvalue { i64, i32 } %.fca.0.insert.i.i107.i, i32 %.sroa.3.0.i.i105.i, 1
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_126CalculateFromParsedDecimalIfEENS1_15CalculatedFloatERKNS0_16strings_internal11ParsedFloatE.exit.i

_ZN4absl12lts_2025051212_GLOBAL__N_126CalculateFromParsedDecimalIfEENS1_15CalculatedFloatERKNS0_16strings_internal11ParsedFloatE.exit.i: ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread.i.i, %bb.bl, %_ZN4absl12lts_2025051212_GLOBAL__N_111EiselLemireIfEEbRKNS0_16strings_internal11ParsedFloatEbPT_PSt4errc.exit.i
  %.fca.1.insert.merged.i.i = phi { i64, i32 } [ %.fca.1.insert.i.i108.i, %_ZN4absl12lts_2025051212_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread.i.i ], [ { i64 0, i32 -99999 }, %_ZN4absl12lts_2025051212_GLOBAL__N_111EiselLemireIfEEbRKNS0_16strings_internal11ParsedFloatEbPT_PSt4errc.exit.i ], [ { i64 0, i32 99999 }, %bb.bl ] ; 2 uses
  %.fca.0.extract.i = extractvalue { i64, i32 } %.fca.1.insert.merged.i.i, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { i64, i32 } %.fca.1.insert.merged.i.i, 1 ; 3 uses
  %i.lh = icmp eq i32 %.fca.1.extract.i, 99999
  br i1 %i.lh, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_126CalculateFromParsedDecimalIfEENS1_15CalculatedFloatERKNS0_16strings_internal11ParsedFloatE.exit.i
  %i.li = select i1 %.049.i, float f0xFF7FFFFF, float f0x7F7FFFFF
  store float %i.li, ptr %2, align 4, !tbaa !23
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit112.i

bb.ce:                                            ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_126CalculateFromParsedDecimalIfEENS1_15CalculatedFloatERKNS0_16strings_internal11ParsedFloatE.exit.i
  %i.lj = icmp eq i64 %.fca.0.extract.i, 0
  %i.lk = icmp eq i32 %.fca.1.extract.i, -99999
  %or.cond.i110.i = or i1 %i.lj, %i.lk
  br i1 %or.cond.i110.i, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.ll = select i1 %.049.i, float -0.000000e+00, float 0.000000e+00
  store float %i.ll, ptr %2, align 4, !tbaa !23
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit112.i

bb.cg:                                            ; preds = %bb.ce
  %i.lm = trunc i64 %.fca.0.extract.i to i32      ; 2 uses
  %i.ln = select i1 %.049.i, i32 -2147483648, i32 0
  %i.lo = icmp ugt i32 %i.lm, 8388607
  %i.lp = shl i32 %.fca.1.extract.i, 23
  %i.lq = add i32 %i.lp, 1258291200
  %i.lr = and i32 %i.lm, 8388607
  %i.ls = select i1 %i.lo, i32 %i.lq, i32 0
  %.06.i.i111.i = add i32 %i.ls, %i.ln
  %i.lt = or disjoint i32 %.06.i.i111.i, %i.lr
  store i32 %i.lt, ptr %2, align 4, !tbaa !23
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit112.i

_ZN4absl12lts_2025051212_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit112.i: ; preds = %bb.cg, %bb.cf, %bb.cd, %bb.bk, %bb.be, %bb.bc, %bb.ba, %bb.ay, %bb.ax, %.thread.i
  %.sroa.0119.2.i = phi ptr [ %0, %.thread.i ], [ %i.ek, %bb.cg ], [ %i.ek, %bb.ba ], [ %i.ek, %bb.cd ], [ %i.ek, %bb.cf ], [ %i.ek, %bb.ax ], [ %i.ek, %bb.ay ], [ %i.ek, %bb.bc ], [ %i.ek, %bb.be ], [ %i.ek, %bb.bk ]
  %.sroa.6120.3.i = phi i32 [ 22, %.thread.i ], [ 0, %bb.cg ], [ 0, %bb.ba ], [ 34, %bb.cd ], [ 34, %bb.cf ], [ 0, %bb.ax ], [ 0, %bb.ay ], [ 34, %bb.bc ], [ 34, %bb.be ], [ 0, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_113FromCharsImplIfEENS0_17from_chars_resultEPKcS5_RT_NS0_12chars_formatE.exit

_ZN4absl12lts_2025051212_GLOBAL__N_113FromCharsImplIfEENS0_17from_chars_resultEPKcS5_RT_NS0_12chars_formatE.exit: ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit.i, %_ZN4absl12lts_2025051212_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit90.i, %_ZN4absl12lts_2025051212_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit112.i
  %.sroa.0119.3.i = phi ptr [ %.sroa.0119.1.i, %_ZN4absl12lts_2025051212_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit90.i ], [ %.sroa.0119.2.i, %_ZN4absl12lts_2025051212_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit112.i ], [ %.sroa.0119.0.i, %_ZN4absl12lts_2025051212_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit.i ]
  %.sroa.6120.4.i = phi i32 [ %.sroa.6120.1.i, %_ZN4absl12lts_2025051212_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit90.i ], [ %.sroa.6120.3.i, %_ZN4absl12lts_2025051212_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit112.i ], [ %.sroa.6120.0.i, %_ZN4absl12lts_2025051212_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit.i ]
  %.fca.0.insert.i = insertvalue { ptr, i32 } poison, ptr %.sroa.0119.3.i, 0
  %.fca.1.insert.i = insertvalue { ptr, i32 } %.fca.0.insert.i, i32 %.sroa.6120.4.i, 1
  ret { ptr, i32 } %.fca.1.insert.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN4absl12lts_2025051216strings_internal10ParseFloatILi16EEENS1_11ParsedFloatEPKcS5_NS0_12chars_formatE(ptr dead_on_unwind writable sret(%"struct.absl::lts_20250512::strings_internal::ParsedFloat") align 8, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN4absl12lts_2025051216strings_internal10ParseFloatILi10EEENS1_11ParsedFloatEPKcS5_NS0_12chars_formatE(ptr dead_on_unwind writable sret(%"struct.absl::lts_20250512::strings_internal::ParsedFloat") align 8, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare double @nan(ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2025051212_GLOBAL__N_111MustRoundUpEmiRKNS0_16strings_internal11ParsedFloatE(i64 noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(48) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 4 uses
  %3 = alloca %"class.absl::lts_20250512::strings_internal::BigUnsigned", align 4 ; 27 uses
  %4 = alloca %"class.absl::lts_20250512::strings_internal::BigUnsigned", align 4 ; 9 uses
  %5 = alloca %"class.absl::lts_20250512::strings_internal::BigUnsigned", align 4 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(340) %3, i8 0, i64 340, i1 false)
  %i.b = call noundef i32 @_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE17ReadFloatMantissaERKNS1_11ParsedFloatEi(ptr noundef nonnull align 4 dereferenceable(340) %3, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef 768) ; 9 uses
  %i.c = shl i64 %0, 1                            ; 4 uses
  %i.d = or disjoint i64 %i.c, 1                  ; 6 uses
  %i.e = add nsw i32 %1, -1                       ; 6 uses
  %i.f = icmp sgt i32 %i.b, -1
  br i1 %i.f, label %bb.b, label %bb.ac

bb.b:                                             ; preds = %bb.a
  call void @_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE22MultiplyByFiveToTheNthEi(ptr noundef nonnull align 4 dereferenceable(340) %3, i32 noundef %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %.not.i = icmp ult i64 %i.c, 4294967296
  %i.g = select i1 %.not.i, i32 1, i32 2          ; 3 uses
  store i32 %i.g, ptr %4, align 4, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(328) %i.i, i8 0, i64 328, i1 false)
  store i64 %i.d, ptr %i.h, align 4
  %6 = icmp sgt i32 %i.b, %i.e
  %i.j = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %6, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.k = sub nsw i32 %i.b, %i.e                   ; 4 uses
  %i.l = lshr i32 %i.k, 5                         ; 7 uses
  %i.m = icmp samesign ugt i32 %i.k, 2687
  %i.n = load i32, ptr %3, align 4, !tbaa !25     ; 3 uses
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = icmp slt i32 %i.n, 1
  br i1 %i.o, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.q = zext nneg i32 %i.n to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.q, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.p, i8 0, i64 %.idx.i.i.i.i, i1 false), !tbaa !3
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i

_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i: ; preds = %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i, %bb.d
  store i32 0, ptr %3, align 4, !tbaa !25
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit

bb.e:                                             ; preds = %bb.c
  %i.r = add nsw i32 %i.n, %i.l                   ; 3 uses
  %.sroa.speculated28.i = call i32 @llvm.smin.i32(i32 %i.r, i32 84) ; 4 uses
  store i32 %.sroa.speculated28.i, ptr %3, align 4, !tbaa !25
  %i.s = and i32 %i.k, 31                         ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.v = sext i32 %.sroa.speculated28.i to i64    ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %.idx.i = shl nsw i64 %i.v, 2
  %i.x = shl nuw nsw i32 %i.l, 2
  %i.y = zext nneg i32 %i.x to i64
  %i.z = sub nsw i64 %.idx.i, %i.y                ; 3 uses
  %i.aa = ashr exact i64 %i.z, 2                  ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, 1
  br i1 %i.ab, label %bb.g, label %bb.h, !prof !27

bb.g:                                             ; preds = %bb.f
  %i.ac = sub nsw i64 0, %i.aa
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.ac
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ad, ptr nonnull align 4 %i.u, i64 %i.z, i1 false)
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ae = icmp eq i64 %i.z, 4
  br i1 %i.ae, label %bb.i, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds i8, ptr %i.w, i64 -4
  %i.ag = load i32, ptr %i.u, align 4, !tbaa !3
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !3
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i

bb.j:                                             ; preds = %bb.e
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.r, i32 83) ; 2 uses
  %i.ah = icmp sgt i32 %.sroa.speculated.i, %i.l
  br i1 %i.ah, label %.lr.ph.i, label %.._crit_edge_crit_edge.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.j
  %.pre.i = zext nneg i32 %i.l to i64
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.aj = zext nneg i32 %.sroa.speculated.i to i64
  %i.ak = zext nneg i32 %i.l to i64               ; 3 uses
  br label %bb.k

._crit_edge.i:                                    ; preds = %bb.k, %.._crit_edge_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.._crit_edge_crit_edge.i ], [ %i.ak, %bb.k ]
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = shl i32 %i.am, %i.s
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.pre-phi.i
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !3
  %i.ap = icmp slt i32 %i.r, 84
  br i1 %i.ap, label %bb.l, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.aj, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 3 uses
  %i.aq = sub nsw i64 %indvars.iv.i, %i.ak
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.at = getelementptr i8, ptr %i.ar, i64 -4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  %i.av = call i32 @llvm.fshl.i32(i32 %i.as, i32 %i.au, i32 %i.k)
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !3
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.ax = icmp samesign ugt i64 %indvars.iv.next.i, %i.ak
  br i1 %i.ax, label %bb.k, label %._crit_edge.i, !llvm.loop !28

bb.l:                                             ; preds = %._crit_edge.i
  %i.ay = sext i32 %.sroa.speculated28.i to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !3
  %.not.i34 = icmp eq i32 %i.ba, 0
  br i1 %.not.i34, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = add nsw i32 %.sroa.speculated28.i, 1
  store i32 %i.bb, ptr %3, align 4, !tbaa !25
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i

_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i:     ; preds = %bb.m, %bb.l, %._crit_edge.i, %bb.i, %bb.h, %bb.g
  %i.bc = icmp eq i32 %i.l, 0
  br i1 %i.bc, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i:   ; preds = %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.be = shl nuw nsw i32 %i.l, 2
  %.idx.i.i.i = zext nneg i32 %i.be to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bd, i8 0, i64 %.idx.i.i.i, i1 false), !tbaa !3
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit

bb.n:                                             ; preds = %bb.b
  %i.bf = sub nsw i32 %i.e, %i.b                  ; 6 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %bb.o, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit

bb.o:                                             ; preds = %bb.n
  %i.bh = lshr i32 %i.bf, 5                       ; 6 uses
  %i.bi = icmp samesign ugt i32 %i.bf, 2687
  br i1 %i.bi, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i51, label %bb.p

_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i51: ; preds = %bb.o
  %i.bj = shl nuw nsw i32 %i.g, 2
  %.idx.i.i.i.i50 = zext nneg i32 %i.bj to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.h, i8 0, i64 %.idx.i.i.i.i50, i1 false), !tbaa !3
  store i32 0, ptr %4, align 4, !tbaa !25
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit

bb.p:                                             ; preds = %bb.o
  %i.bk = add nuw nsw i32 %i.bh, %i.g             ; 3 uses
  %i.bl = call i32 @llvm.umin.i32(i32 %i.bk, i32 84) ; 4 uses
  store i32 %i.bl, ptr %4, align 4, !tbaa !25
  %i.bm = and i32 %i.bf, 31                       ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bo = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bo ; 2 uses
  %.idx.i48 = shl nuw nsw i64 %i.bo, 2
  %i.bq = shl nuw nsw i32 %i.bh, 2
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = sub nsw i64 %.idx.i48, %i.br            ; 3 uses
  %i.bt = ashr exact i64 %i.bs, 2                 ; 2 uses
  %i.bu = icmp sgt i64 %i.bt, 1
  br i1 %i.bu, label %bb.r, label %bb.s, !prof !27

bb.r:                                             ; preds = %bb.q
  %i.bv = sub nsw i64 0, %i.bt
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bv
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bw, ptr nonnull align 4 %i.h, i64 %i.bs, i1 false)
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i41

bb.s:                                             ; preds = %bb.q
  %i.bx = icmp eq i64 %i.bs, 4
  br i1 %i.bx, label %bb.t, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i41

bb.t:                                             ; preds = %bb.s
  %i.by = getelementptr inbounds i8, ptr %i.bp, i64 -4
  store i32 %i.j, ptr %i.by, align 4, !tbaa !3
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i41

bb.u:                                             ; preds = %bb.p
  %i.bz = icmp samesign ult i32 %i.bf, 2656
  br i1 %i.bz, label %.lr.ph.i45, label %.._crit_edge_crit_edge.i37

.._crit_edge_crit_edge.i37:                       ; preds = %bb.u
  %.pre.i38 = zext nneg i32 %i.bh to i64
  br label %._crit_edge.i39

.lr.ph.i45:                                       ; preds = %bb.u
  %i.ca = call i32 @llvm.umin.i32(i32 %i.bk, i32 83)
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = zext nneg i32 %i.bh to i64              ; 3 uses
  br label %bb.v

._crit_edge.i39.loopexit:                         ; preds = %bb.v
  %.pre = load i32, ptr %i.h, align 4, !tbaa !3
  br label %._crit_edge.i39

._crit_edge.i39:                                  ; preds = %._crit_edge.i39.loopexit, %.._crit_edge_crit_edge.i37
  %i.cd = phi i32 [ %i.j, %.._crit_edge_crit_edge.i37 ], [ %.pre, %._crit_edge.i39.loopexit ]
  %.pre-phi.i40 = phi i64 [ %.pre.i38, %.._crit_edge_crit_edge.i37 ], [ %i.cc, %._crit_edge.i39.loopexit ]
  %i.ce = shl i32 %i.cd, %i.bm
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.pre-phi.i40
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !3
  %i.cg = icmp samesign ult i32 %i.bk, 84
  br i1 %i.cg, label %bb.w, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i41

bb.v:                                             ; preds = %bb.v, %.lr.ph.i45
  %indvars.iv.i46 = phi i64 [ %i.cb, %.lr.ph.i45 ], [ %indvars.iv.next.i47, %bb.v ] ; 3 uses
  %i.ch = sub nsw i64 %indvars.iv.i46, %i.cc
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ch ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.ck = getelementptr i8, ptr %i.ci, i64 -4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3
  %i.cm = call i32 @llvm.fshl.i32(i32 %i.cj, i32 %i.cl, i32 %i.bf)
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i46
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !3
  %indvars.iv.next.i47 = add nsw i64 %indvars.iv.i46, -1 ; 2 uses
  %i.co = icmp samesign ugt i64 %indvars.iv.next.i47, %i.cc
  br i1 %i.co, label %bb.v, label %._crit_edge.i39.loopexit, !llvm.loop !28

bb.w:                                             ; preds = %._crit_edge.i39
  %i.cp = zext nneg i32 %i.bl to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  %.not.i44 = icmp eq i32 %i.cr, 0
  br i1 %.not.i44, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i41, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = add nuw nsw i32 %i.bl, 1
  store i32 %i.cs, ptr %4, align 4, !tbaa !25
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i41

_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i41:   ; preds = %bb.x, %bb.w, %._crit_edge.i39, %bb.t, %bb.s, %bb.r
  %i.ct = icmp eq i32 %i.bh, 0
  br i1 %i.ct, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i42

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i42: ; preds = %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i41
  %i.cu = shl nuw nsw i32 %i.bh, 2
  %.idx.i.i.i43 = zext nneg i32 %i.cu to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.h, i8 0, i64 %.idx.i.i.i43, i1 false), !tbaa !3
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit

_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit: ; preds = %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i42, %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i41, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i51, %bb.n, %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i, %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i
  %i.cv = load i32, ptr %3, align 4, !tbaa !25    ; 2 uses
  %i.cw = load i32, ptr %4, align 4, !tbaa !25    ; 2 uses
  %.sroa.speculated.i53 = call i32 @llvm.smax.i32(i32 %i.cv, i32 %i.cw) ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cx = icmp slt i32 %.sroa.speculated.i53, 1
  br i1 %i.cx, label %_ZN4absl12lts_2025051216strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit, label %.lr.ph150

.lr.ph150:                                        ; preds = %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit
  %i.cy = zext nneg i32 %.sroa.speculated.i53 to i64
  br label %bb.z

bb.y:                                             ; preds = %_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i
  %i.cz = trunc nuw i64 %indvars.iv.next.i53158 to i32
  %i.da = icmp slt i32 %i.cz, 1
  br i1 %i.da, label %_ZN4absl12lts_2025051216strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit, label %bb.z, !llvm.loop !30

bb.z:                                             ; preds = %.lr.ph150, %bb.y
  %indvars.iv.next.i53158.in = phi i64 [ %i.cy, %.lr.ph150 ], [ %indvars.iv.next.i53158, %bb.y ]
  %.0.i149 = phi i32 [ undef, %.lr.ph150 ], [ %.1.i, %bb.y ]
  %indvars.iv.next.i53158 = add nsw i64 %indvars.iv.next.i53158.in, -1 ; 5 uses
  %indvars.i159 = trunc i64 %indvars.iv.next.i53158 to i32 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.cv, %indvars.i159
  br i1 %.not.i.i, label %bb.aa, label %_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i

bb.aa:                                            ; preds = %bb.z
  %8 = and i64 %indvars.iv.next.i53158, 4294967295
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %8
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3
  br label %_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i

_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i: ; preds = %bb.aa, %bb.z
  %.0.i.i = phi i32 [ %i.dc, %bb.aa ], [ 0, %bb.z ] ; 3 uses
  %.not.i21.i = icmp sgt i32 %i.cw, %indvars.i159
  br i1 %.not.i21.i, label %bb.ab, label %_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i

bb.ab:                                            ; preds = %_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i
  %9 = and i64 %indvars.iv.next.i53158, 4294967295
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %9
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !3
  br label %_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i

_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i: ; preds = %bb.ab, %_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i
  %.0.i23.i = phi i32 [ %i.de, %bb.ab ], [ 0, %_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i ] ; 3 uses
  %.not.i55 = icmp ult i32 %.0.i.i, %.0.i23.i
  %.not28.i = icmp ugt i32 %.0.i.i, %.0.i23.i
  %..0.i = select i1 %.not28.i, i32 1, i32 %.0.i149
  %cond1.i = icmp eq i32 %.0.i.i, %.0.i23.i
  %.1.i = select i1 %.not.i55, i32 -1, i32 %..0.i ; 2 uses
  br i1 %cond1.i, label %bb.y, label %_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i._ZN4absl12lts_2025051216strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit_crit_edge, !llvm.loop !30

_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i._ZN4absl12lts_2025051216strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit_crit_edge: ; preds = %_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i
  br label %_ZN4absl12lts_2025051216strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit, !llvm.loop !30

_ZN4absl12lts_2025051216strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit: ; preds = %bb.y, %_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i._ZN4absl12lts_2025051216strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit_crit_edge, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit
  %spec.select.i = phi i32 [ %.1.i, %_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i._ZN4absl12lts_2025051216strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit_crit_edge ], [ 0, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit ], [ 0, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %bb.bi

bb.ac:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.df = sub nsw i32 0, %i.b
  call void @_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE12FiveToTheNthEi(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::strings_internal::BigUnsigned") align 4 %5, i32 noundef %i.df)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i64 %i.d, ptr %i.a, align 8
  %i.dg = icmp ult i64 %i.c, 4294967296
  %i.dh = load i32, ptr %5, align 4, !tbaa !25    ; 9 uses
  br i1 %i.dg, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.di = icmp ne i64 %i.c, 0
  %i.dj = icmp sgt i32 %i.dh, 0
  %or.cond = and i1 %i.di, %i.dj
  br i1 %or.cond, label %.lr.ph.i.i, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEm.exit

.lr.ph.i.i:                                       ; preds = %bb.ad
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 4 uses
  %wide.trip.count.i.i = zext nneg i32 %i.dh to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.dl = icmp eq i32 %i.dh, 1
  br i1 %i.dl, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.ae

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.ae
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %._crit_edge.i.i.unr-lcssa ]
  %.01418.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ei, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod156 = trunc i32 %i.dh to i1
  call void @llvm.assume(i1 %lcmp.mod156)
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv.i.i.epil.init ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !3
  %i.do = zext i32 %i.dn to i64
  %i.dp = mul nuw i64 %i.d, %i.do
  %i.dq = add nuw i64 %i.dp, %.01418.i.i.epil.init ; 2 uses
  %i.dr = trunc i64 %i.dq to i32
  store i32 %i.dr, ptr %i.dm, align 4, !tbaa !3
  %i.ds = lshr i64 %i.dq, 32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.ei, %._crit_edge.i.i.unr-lcssa ], [ %i.ds, %.epil.preheader ] ; 2 uses
  %.not.i.i.a = icmp ne i64 %.lcssa, 0
  %i.dt = icmp samesign ult i32 %i.dh, 84
  %or.cond17.i.i = and i1 %i.dt, %.not.i.i.a
  br i1 %or.cond17.i.i, label %bb.af, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEm.exit

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.ae ] ; 3 uses
  %.01418.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.ei, %bb.ae ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.ae ]
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv.i.i ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3
  %i.dw = zext i32 %i.dv to i64
  %i.dx = mul nuw i64 %i.d, %i.dw
  %i.dy = add nuw i64 %i.dx, %.01418.i.i          ; 2 uses
  %i.dz = trunc i64 %i.dy to i32
  store i32 %i.dz, ptr %i.du, align 4, !tbaa !3
  %i.ea = lshr i64 %i.dy, 32
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !3
  %i.ee = zext i32 %i.ed to i64
  %i.ef = mul nuw i64 %i.d, %i.ee
  %i.eg = add nuw i64 %i.ef, %i.ea                ; 2 uses
  %i.eh = trunc i64 %i.eg to i32
  store i32 %i.eh, ptr %i.ec, align 4, !tbaa !3
  %i.ei = lshr i64 %i.eg, 32                      ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.ae, !llvm.loop !31

bb.af:                                            ; preds = %._crit_edge.i.i
  %i.ej = trunc nuw i64 %.lcssa to i32
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %wide.trip.count.i.i
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !3
  %i.el = add nuw nsw i32 %i.dh, 1
  store i32 %i.el, ptr %5, align 4, !tbaa !25
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEm.exit

bb.ag:                                            ; preds = %bb.ac
  %i.em = icmp sgt i32 %i.dh, -1
  br i1 %i.em, label %select.unfold.preheader.i.i, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEm.exit

select.unfold.preheader.i.i:                      ; preds = %bb.ag
  %i.en = call i32 @llvm.umin.i32(i32 %i.dh, i32 83)
  br label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %select.unfold.i.i, %select.unfold.preheader.i.i
  %.012.i.i = phi i32 [ %i.eo, %select.unfold.i.i ], [ %i.en, %select.unfold.preheader.i.i ] ; 3 uses
  call void @_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE12MultiplyStepEiPKjii(ptr noundef nonnull align 4 dereferenceable(340) %5, i32 noundef %i.dh, ptr noundef nonnull %i.a, i32 noundef 2, i32 noundef %.012.i.i)
  %i.eo = add nsw i32 %.012.i.i, -1
  %.not.i2.i = icmp eq i32 %.012.i.i, 0
  br i1 %.not.i2.i, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEm.exit, label %select.unfold.i.i, !llvm.loop !32

_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEm.exit: ; preds = %select.unfold.i.i, %bb.ad, %._crit_edge.i.i, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %10 = icmp sgt i32 %i.b, %i.e
  br i1 %10, label %bb.ah, label %bb.as

bb.ah:                                            ; preds = %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEm.exit
  %i.ep = sub nsw i32 %i.b, %i.e                  ; 4 uses
  %i.eq = lshr i32 %i.ep, 5                       ; 7 uses
  %i.er = icmp samesign ugt i32 %i.ep, 2687
  %i.es = load i32, ptr %3, align 4, !tbaa !25    ; 3 uses
  br i1 %i.er, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.et = icmp slt i32 %i.es, 1
  br i1 %i.et, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i72, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i70

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i70: ; preds = %bb.ai
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ev = zext nneg i32 %i.es to i64
  %.idx.i.i.i.i71 = shl nuw nsw i64 %i.ev, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.eu, i8 0, i64 %.idx.i.i.i.i71, i1 false), !tbaa !3
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i72

_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i72: ; preds = %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i70, %bb.ai
  store i32 0, ptr %3, align 4, !tbaa !25
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit73

bb.aj:                                            ; preds = %bb.ah
  %i.ew = add nsw i32 %i.es, %i.eq                ; 3 uses
  %.sroa.speculated28.i56 = call i32 @llvm.smin.i32(i32 %i.ew, i32 84) ; 4 uses
  store i32 %.sroa.speculated28.i56, ptr %3, align 4, !tbaa !25
  %i.ex = and i32 %i.ep, 31                       ; 2 uses
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.fa = sext i32 %.sroa.speculated28.i56 to i64 ; 2 uses
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.fa ; 2 uses
  %.idx.i69 = shl nsw i64 %i.fa, 2
  %i.fc = shl nuw nsw i32 %i.eq, 2
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = sub nsw i64 %.idx.i69, %i.fd            ; 3 uses
  %i.ff = ashr exact i64 %i.fe, 2                 ; 2 uses
  %i.fg = icmp sgt i64 %i.ff, 1
  br i1 %i.fg, label %bb.al, label %bb.am, !prof !27

bb.al:                                            ; preds = %bb.ak
  %i.fh = sub nsw i64 0, %i.ff
  %i.fi = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %i.fh
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fi, ptr nonnull align 4 %i.ez, i64 %i.fe, i1 false)
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i62

bb.am:                                            ; preds = %bb.ak
  %i.fj = icmp eq i64 %i.fe, 4
  br i1 %i.fj, label %bb.an, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i62

bb.an:                                            ; preds = %bb.am
  %i.fk = getelementptr inbounds i8, ptr %i.fb, i64 -4
  %i.fl = load i32, ptr %i.ez, align 4, !tbaa !3
  store i32 %i.fl, ptr %i.fk, align 4, !tbaa !3
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i62

bb.ao:                                            ; preds = %bb.aj
  %.sroa.speculated.i57 = call i32 @llvm.smin.i32(i32 %i.ew, i32 83) ; 2 uses
  %i.fm = icmp sgt i32 %.sroa.speculated.i57, %i.eq
  br i1 %i.fm, label %.lr.ph.i66, label %.._crit_edge_crit_edge.i58

.._crit_edge_crit_edge.i58:                       ; preds = %bb.ao
  %.pre.i59 = zext nneg i32 %i.eq to i64
  br label %._crit_edge.i60

.lr.ph.i66:                                       ; preds = %bb.ao
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.fo = zext nneg i32 %.sroa.speculated.i57 to i64
  %i.fp = zext nneg i32 %i.eq to i64              ; 3 uses
  br label %bb.ap

._crit_edge.i60:                                  ; preds = %bb.ap, %.._crit_edge_crit_edge.i58
  %.pre-phi.i61 = phi i64 [ %.pre.i59, %.._crit_edge_crit_edge.i58 ], [ %i.fp, %bb.ap ]
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !3
  %i.fs = shl i32 %i.fr, %i.ex
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %.pre-phi.i61
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !3
  %i.fu = icmp slt i32 %i.ew, 84
  br i1 %i.fu, label %bb.aq, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i62

bb.ap:                                            ; preds = %bb.ap, %.lr.ph.i66
  %indvars.iv.i67 = phi i64 [ %i.fo, %.lr.ph.i66 ], [ %indvars.iv.next.i68, %bb.ap ] ; 3 uses
  %i.fv = sub nsw i64 %indvars.iv.i67, %i.fp
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.fv ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !3
  %i.fy = getelementptr i8, ptr %i.fw, i64 -4
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !3
  %i.ga = call i32 @llvm.fshl.i32(i32 %i.fx, i32 %i.fz, i32 %i.ep)
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.i67
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !3
  %indvars.iv.next.i68 = add nsw i64 %indvars.iv.i67, -1 ; 2 uses
  %i.gc = icmp samesign ugt i64 %indvars.iv.next.i68, %i.fp
  br i1 %i.gc, label %bb.ap, label %._crit_edge.i60, !llvm.loop !28

bb.aq:                                            ; preds = %._crit_edge.i60
  %i.gd = sext i32 %.sroa.speculated28.i56 to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !3
  %.not.i65 = icmp eq i32 %i.gf, 0
  br i1 %.not.i65, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i62, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gg = add nsw i32 %.sroa.speculated28.i56, 1
  store i32 %i.gg, ptr %3, align 4, !tbaa !25
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i62

_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i62:   ; preds = %bb.ar, %bb.aq, %._crit_edge.i60, %bb.an, %bb.am, %bb.al
  %i.gh = icmp eq i32 %i.eq, 0
  br i1 %i.gh, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit73, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i63

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i63: ; preds = %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i62
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.gj = shl nuw nsw i32 %i.eq, 2
  %.idx.i.i.i64 = zext nneg i32 %i.gj to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gi, i8 0, i64 %.idx.i.i.i64, i1 false), !tbaa !3
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit73

bb.as:                                            ; preds = %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE10MultiplyByEm.exit
  %i.gk = sub nsw i32 %i.e, %i.b                  ; 5 uses
  %i.gl = icmp sgt i32 %i.gk, 0
  br i1 %i.gl, label %bb.at, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit73

bb.at:                                            ; preds = %bb.as
  %i.gm = lshr i32 %i.gk, 5                       ; 7 uses
  %i.gn = icmp samesign ugt i32 %i.gk, 2687
  %i.go = load i32, ptr %5, align 4, !tbaa !25    ; 3 uses
  br i1 %i.gn, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gp = icmp slt i32 %i.go, 1
  br i1 %i.gp, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i90, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i88

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i88: ; preds = %bb.au
  %i.gq = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.gr = zext nneg i32 %i.go to i64
  %.idx.i.i.i.i89 = shl nuw nsw i64 %i.gr, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gq, i8 0, i64 %.idx.i.i.i.i89, i1 false), !tbaa !3
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i90

_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i90: ; preds = %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i88, %bb.au
  store i32 0, ptr %5, align 4, !tbaa !25
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit73

bb.av:                                            ; preds = %bb.at
  %i.gs = add nsw i32 %i.go, %i.gm                ; 3 uses
  %.sroa.speculated28.i74 = call i32 @llvm.smin.i32(i32 %i.gs, i32 84) ; 4 uses
  store i32 %.sroa.speculated28.i74, ptr %5, align 4, !tbaa !25
  %i.gt = and i32 %i.gk, 31                       ; 2 uses
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %bb.av
  %i.gv = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.gw = sext i32 %.sroa.speculated28.i74 to i64 ; 2 uses
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.gv, i64 %i.gw ; 2 uses
  %.idx.i87 = shl nsw i64 %i.gw, 2
  %i.gy = shl nuw nsw i32 %i.gm, 2
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = sub nsw i64 %.idx.i87, %i.gz            ; 3 uses
  %i.hb = ashr exact i64 %i.ha, 2                 ; 2 uses
  %i.hc = icmp sgt i64 %i.hb, 1
  br i1 %i.hc, label %bb.ax, label %bb.ay, !prof !27

bb.ax:                                            ; preds = %bb.aw
  %i.hd = sub nsw i64 0, %i.hb
  %i.he = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %i.hd
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.he, ptr nonnull align 4 %i.gv, i64 %i.ha, i1 false)
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i80

bb.ay:                                            ; preds = %bb.aw
  %i.hf = icmp eq i64 %i.ha, 4
  br i1 %i.hf, label %bb.az, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i80

bb.az:                                            ; preds = %bb.ay
  %i.hg = getelementptr inbounds i8, ptr %i.gx, i64 -4
  %i.hh = load i32, ptr %i.gv, align 4, !tbaa !3
  store i32 %i.hh, ptr %i.hg, align 4, !tbaa !3
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i80

bb.ba:                                            ; preds = %bb.av
  %.sroa.speculated.i75 = call i32 @llvm.smin.i32(i32 %i.gs, i32 83) ; 2 uses
  %i.hi = icmp sgt i32 %.sroa.speculated.i75, %i.gm
  br i1 %i.hi, label %.lr.ph.i84, label %.._crit_edge_crit_edge.i76

.._crit_edge_crit_edge.i76:                       ; preds = %bb.ba
  %.pre.i77 = zext nneg i32 %i.gm to i64
  br label %._crit_edge.i78

.lr.ph.i84:                                       ; preds = %bb.ba
  %i.hj = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.hk = zext nneg i32 %.sroa.speculated.i75 to i64
  %i.hl = zext nneg i32 %i.gm to i64              ; 3 uses
  br label %bb.bb

._crit_edge.i78:                                  ; preds = %bb.bb, %.._crit_edge_crit_edge.i76
  %.pre-phi.i79 = phi i64 [ %.pre.i77, %.._crit_edge_crit_edge.i76 ], [ %i.hl, %bb.bb ]
  %i.hm = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !3
  %i.ho = shl i32 %i.hn, %i.gt
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %.pre-phi.i79
  store i32 %i.ho, ptr %i.hp, align 4, !tbaa !3
  %i.hq = icmp slt i32 %i.gs, 84
  br i1 %i.hq, label %bb.bc, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i80

bb.bb:                                            ; preds = %bb.bb, %.lr.ph.i84
  %indvars.iv.i85 = phi i64 [ %i.hk, %.lr.ph.i84 ], [ %indvars.iv.next.i86, %bb.bb ] ; 3 uses
  %i.hr = sub nsw i64 %indvars.iv.i85, %i.hl
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %i.hr ; 2 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !3
  %i.hu = getelementptr i8, ptr %i.hs, i64 -4
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !3
  %i.hw = call i32 @llvm.fshl.i32(i32 %i.ht, i32 %i.hv, i32 %i.gk)
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.i85
  store i32 %i.hw, ptr %i.hx, align 4, !tbaa !3
  %indvars.iv.next.i86 = add nsw i64 %indvars.iv.i85, -1 ; 2 uses
  %i.hy = icmp samesign ugt i64 %indvars.iv.next.i86, %i.hl
  br i1 %i.hy, label %bb.bb, label %._crit_edge.i78, !llvm.loop !28

bb.bc:                                            ; preds = %._crit_edge.i78
  %i.hz = sext i32 %.sroa.speculated28.i74 to i64
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %i.hz
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !3
  %.not.i83 = icmp eq i32 %i.ib, 0
  br i1 %.not.i83, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i80, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ic = add nsw i32 %.sroa.speculated28.i74, 1
  store i32 %i.ic, ptr %5, align 4, !tbaa !25
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i80

_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i80:   ; preds = %bb.bd, %bb.bc, %._crit_edge.i78, %bb.az, %bb.ay, %bb.ax
  %i.id = icmp eq i32 %i.gm, 0
  br i1 %i.id, label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit73, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i81

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i81: ; preds = %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i80
  %i.ie = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.if = shl nuw nsw i32 %i.gm, 2
  %.idx.i.i.i82 = zext nneg i32 %i.if to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ie, i8 0, i64 %.idx.i.i.i82, i1 false), !tbaa !3
  br label %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit73

_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit73: ; preds = %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i81, %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i80, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i90, %bb.as, %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i63, %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i62, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i72
  %i.ig = load i32, ptr %3, align 4, !tbaa !25    ; 2 uses
  %i.ih = load i32, ptr %5, align 4, !tbaa !25    ; 2 uses
  %.sroa.speculated.i92 = call i32 @llvm.smax.i32(i32 %i.ig, i32 %i.ih) ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %12 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ii = icmp slt i32 %.sroa.speculated.i92, 1
  br i1 %i.ii, label %_ZN4absl12lts_2025051216strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit107, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit73
  %i.ij = zext nneg i32 %.sroa.speculated.i92 to i64
  br label %bb.bf

bb.be:                                            ; preds = %_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i99
  %i.ik = trunc nuw i64 %indvars.iv.next.i95152 to i32
  %i.il = icmp slt i32 %i.ik, 1
  br i1 %i.il, label %_ZN4absl12lts_2025051216strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit107, label %bb.bf, !llvm.loop !30

bb.bf:                                            ; preds = %.lr.ph, %bb.be
  %indvars.iv.next.i95152.in = phi i64 [ %i.ij, %.lr.ph ], [ %indvars.iv.next.i95152, %bb.be ]
  %.0.i94146 = phi i32 [ undef, %.lr.ph ], [ %.1.i105, %bb.be ]
  %indvars.iv.next.i95152 = add nsw i64 %indvars.iv.next.i95152.in, -1 ; 5 uses
  %indvars.i96153 = trunc i64 %indvars.iv.next.i95152 to i32 ; 2 uses
  %.not.i.i97 = icmp sgt i32 %i.ig, %indvars.i96153
  br i1 %.not.i.i97, label %bb.bg, label %_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i96

bb.bg:                                            ; preds = %bb.bf
  %13 = and i64 %indvars.iv.next.i95152, 4294967295
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %13
  %i.in = load i32, ptr %i.im, align 4, !tbaa !3
  br label %_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i96

_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i96: ; preds = %bb.bg, %bb.bf
  %.0.i.i97 = phi i32 [ %i.in, %bb.bg ], [ 0, %bb.bf ] ; 3 uses
  %.not.i21.i100 = icmp sgt i32 %i.ih, %indvars.i96153
  br i1 %.not.i21.i100, label %bb.bh, label %_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i99

bb.bh:                                            ; preds = %_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i96
  %14 = and i64 %indvars.iv.next.i95152, 4294967295
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %14
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !3
  br label %_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i99

_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i99: ; preds = %bb.bh, %_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i96
  %.0.i23.i100 = phi i32 [ %i.ip, %bb.bh ], [ 0, %_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i96 ] ; 3 uses
  %.not.i101 = icmp ult i32 %.0.i.i97, %.0.i23.i100
  %.not28.i102 = icmp ugt i32 %.0.i.i97, %.0.i23.i100
  %..0.i103 = select i1 %.not28.i102, i32 1, i32 %.0.i94146
  %cond1.i104 = icmp eq i32 %.0.i.i97, %.0.i23.i100
  %.1.i105 = select i1 %.not.i101, i32 -1, i32 %..0.i103 ; 2 uses
  br i1 %cond1.i104, label %bb.be, label %_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i99._ZN4absl12lts_2025051216strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit107_crit_edge, !llvm.loop !30

_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i99._ZN4absl12lts_2025051216strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit107_crit_edge: ; preds = %_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i99
  br label %_ZN4absl12lts_2025051216strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit107, !llvm.loop !30

_ZN4absl12lts_2025051216strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit107: ; preds = %bb.be, %_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i99._ZN4absl12lts_2025051216strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit107_crit_edge, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit73
  %spec.select.i106 = phi i32 [ %.1.i105, %_ZNK4absl12lts_2025051216strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i99._ZN4absl12lts_2025051216strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit107_crit_edge ], [ 0, %_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit73 ], [ 0, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.bi

bb.bi:                                            ; preds = %_ZN4absl12lts_2025051216strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit107, %_ZN4absl12lts_2025051216strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit
  %.0 = phi i32 [ %spec.select.i, %_ZN4absl12lts_2025051216strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit ], [ %spec.select.i106, %_ZN4absl12lts_2025051216strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit107 ] ; 2 uses
  %i.iq = icmp sgt i32 %.0, -1
  %.not33 = icmp ne i32 %.0, 0
  %i.ir = trunc i64 %0 to i1
  %spec.select = or i1 %.not33, %i.ir
  %.028 = and i1 %i.iq, %spec.select
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret i1 %.028
}

declare noundef i32 @_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE17ReadFloatMantissaERKNS1_11ParsedFloatEi(ptr noundef nonnull align 4 dereferenceable(340), ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare void @_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE22MultiplyByFiveToTheNthEi(ptr noundef nonnull align 4 dereferenceable(340), i32 noundef) local_unnamed_addr #0 align 2

declare void @_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE12FiveToTheNthEi(ptr dead_on_unwind writable sret(%"class.absl::lts_20250512::strings_internal::BigUnsigned") align 4, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @_ZN4absl12lts_2025051216strings_internal11BigUnsignedILi84EE12MultiplyStepEiPKjii(ptr noundef nonnull align 4 dereferenceable(340), i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare float @nanf(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = !{!9, !12, i64 40}
!9 = !{!"_ZTSN4absl12lts_2025051216strings_internal11ParsedFloatE", !10, i64 0, !4, i64 8, !4, i64 12, !11, i64 16, !12, i64 24, !12, i64 32, !12, i64 40}
!10 = !{!"long", !5, i64 0}
!11 = !{!"_ZTSN4absl12lts_2025051216strings_internal9FloatTypeE", !5, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"double", !5, i64 0}
!16 = !{!9, !10, i64 0}
!17 = !{!9, !4, i64 8}
!18 = !{!9, !11, i64 16}
!19 = !{!9, !12, i64 24}
!20 = !{!9, !12, i64 32}
!21 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!22 = !{!10, !10, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"float", !5, i64 0}
!25 = !{!26, !4, i64 0}
!26 = !{!"_ZTSN4absl12lts_2025051216strings_internal11BigUnsignedILi84EEE", !4, i64 0, !5, i64 4}
!27 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = distinct !{!30, !29}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !29}
end_hunk_0
