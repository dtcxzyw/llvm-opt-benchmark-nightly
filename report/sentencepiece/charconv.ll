Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/charconv?download=true
inline.NumInlined: 253
inline.NumDeleted: 99
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4absl12lts_2026052610from_charsEPKcS2_RfNS0_12chars_formatE:bb.a

_ZN4absl12lts_2026052612_GLOBAL__N_118TruncateToBitWidthEiPNS0_7uint128E.exit40.i.i: ; preds = %bb.bs, %bb.br
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
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_18BitWidthENS0_7uint128E.exit.i.i

bb.bv:                                            ; preds = %bb.bt
  %i.js = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jd, i1 true)
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_18BitWidthENS0_7uint128E.exit.i.i

_ZN4absl12lts_2026052612_GLOBAL__N_18BitWidthENS0_7uint128E.exit.i.i: ; preds = %bb.bv, %bb.bu
  %.sink12.i.i.i = phi i64 [ %i.js, %bb.bv ], [ %i.jr, %bb.bu ]
  %.sink.i.i.i = phi i32 [ 128, %bb.bv ], [ 64, %bb.bu ]
  %i.jt = trunc nuw nsw i64 %.sink12.i.i.i to i32
  %reass.sub4 = sub nuw nsw i32 %.sink.i.i.i, %i.jt
  %i.ju = add nsw i32 %reass.sub4, -24
  br label %bb.bw

bb.bw:                                            ; preds = %_ZN4absl12lts_2026052612_GLOBAL__N_18BitWidthENS0_7uint128E.exit.i.i, %_ZN4absl12lts_2026052612_GLOBAL__N_118TruncateToBitWidthEiPNS0_7uint128E.exit40.i.i, %_ZN4absl12lts_2026052612_GLOBAL__N_118TruncateToBitWidthEiPNS0_7uint128E.exit.i.i
  %.sroa.11.0.i.i = phi i64 [ %i.jd, %_ZN4absl12lts_2026052612_GLOBAL__N_18BitWidthENS0_7uint128E.exit.i.i ], [ %i.jp, %_ZN4absl12lts_2026052612_GLOBAL__N_118TruncateToBitWidthEiPNS0_7uint128E.exit40.i.i ], [ %i.is, %_ZN4absl12lts_2026052612_GLOBAL__N_118TruncateToBitWidthEiPNS0_7uint128E.exit.i.i ]
  %.sroa.042.0.i.i = phi i64 [ %i.jb, %_ZN4absl12lts_2026052612_GLOBAL__N_18BitWidthENS0_7uint128E.exit.i.i ], [ %i.jn, %_ZN4absl12lts_2026052612_GLOBAL__N_118TruncateToBitWidthEiPNS0_7uint128E.exit40.i.i ], [ %i.iq, %_ZN4absl12lts_2026052612_GLOBAL__N_118TruncateToBitWidthEiPNS0_7uint128E.exit.i.i ] ; 3 uses
  %.034.i.i = phi i32 [ %i.ju, %_ZN4absl12lts_2026052612_GLOBAL__N_18BitWidthENS0_7uint128E.exit.i.i ], [ 39, %_ZN4absl12lts_2026052612_GLOBAL__N_118TruncateToBitWidthEiPNS0_7uint128E.exit40.i.i ], [ 34, %_ZN4absl12lts_2026052612_GLOBAL__N_118TruncateToBitWidthEiPNS0_7uint128E.exit.i.i ]
  %.033.i.i = phi i1 [ true, %_ZN4absl12lts_2026052612_GLOBAL__N_18BitWidthENS0_7uint128E.exit.i.i ], [ false, %_ZN4absl12lts_2026052612_GLOBAL__N_118TruncateToBitWidthEiPNS0_7uint128E.exit40.i.i ], [ false, %_ZN4absl12lts_2026052612_GLOBAL__N_118TruncateToBitWidthEiPNS0_7uint128E.exit.i.i ] ; 3 uses
  %.032.i.i = phi i32 [ %i.je, %_ZN4absl12lts_2026052612_GLOBAL__N_18BitWidthENS0_7uint128E.exit.i.i ], [ %i.jq, %_ZN4absl12lts_2026052612_GLOBAL__N_118TruncateToBitWidthEiPNS0_7uint128E.exit40.i.i ], [ %i.it, %_ZN4absl12lts_2026052612_GLOBAL__N_118TruncateToBitWidthEiPNS0_7uint128E.exit.i.i ] ; 2 uses
  %i.jv = sub nsw i32 -149, %.032.i.i
  %.sroa.speculated.i.i99.i = call noundef range(i32 -2147483648, 2147483624) i32 @llvm.smax.i32(i32 %.034.i.i, i32 %i.jv) ; 6 uses
  %i.jw = add nsw i32 %.sroa.speculated.i.i99.i, %.032.i.i ; 2 uses
  %i.jx = icmp slt i32 %.sroa.speculated.i.i99.i, 1
  br i1 %i.jx, label %_ZN4absl12lts_2026052612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jy = icmp samesign ugt i32 %.sroa.speculated.i.i99.i, 127
  br i1 %i.jy, label %_ZN4absl12lts_2026052612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread.i.i, label %bb.by

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
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread.i.i

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
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread.i.i

bb.cc:                                            ; preds = %bb.ca
  %i.ku = add nsw i128 %i.kd, -1
  %i.kv = icmp ne i128 %i.ko, %i.ku
  %or.cond101.not.i.i.i = select i1 %.033.i.i, i1 true, i1 %i.kv
  br i1 %or.cond101.not.i.i.i, label %_ZN4absl12lts_2026052612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread.i.i, label %_ZN4absl12lts_2026052612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread56.i.i

_ZN4absl12lts_2026052612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.i.i: ; preds = %bb.bw
  %i.kw = sub nsw i32 0, %.sroa.speculated.i.i99.i
  %i.kx = zext i64 %.sroa.042.0.i.i to i128
  %i.ky = zext nneg i32 %i.kw to i128
  %i.kz = shl nuw nsw i128 %i.kx, %i.ky
  %i.la = trunc i128 %i.kz to i64                 ; 2 uses
  br i1 %.033.i.i, label %_ZN4absl12lts_2026052612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread.i.i, label %_ZN4absl12lts_2026052612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread56.i.i

_ZN4absl12lts_2026052612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread56.i.i: ; preds = %_ZN4absl12lts_2026052612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.i.i, %bb.cc
  %.1.i59.i.i = phi i64 [ %i.la, %_ZN4absl12lts_2026052612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.i.i ], [ %i.km, %bb.cc ] ; 2 uses
  %i.lb = call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052612_GLOBAL__N_111MustRoundUpEmiRKNS0_16strings_internal11ParsedFloatE(i64 noundef %.1.i59.i.i, i32 noundef %i.jw, ptr noundef nonnull align 8 dereferenceable(48) %6)
  %i.lc = zext i1 %i.lb to i64
  %spec.select.i101.i = add i64 %.1.i59.i.i, %i.lc
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread.i.i

_ZN4absl12lts_2026052612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread.i.i: ; preds = %_ZN4absl12lts_2026052612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread56.i.i, %_ZN4absl12lts_2026052612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.i.i, %bb.cc, %bb.cb, %bb.bz, %bb.bx
  %.0.i102.i = phi i64 [ %i.la, %_ZN4absl12lts_2026052612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.i.i ], [ %spec.select.i101.i, %_ZN4absl12lts_2026052612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread56.i.i ], [ %spec.select.i.i109.i, %bb.cb ], [ 0, %bb.bx ], [ %i.kq, %bb.bz ], [ %i.km, %bb.cc ] ; 2 uses
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
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_126CalculateFromParsedDecimalIfEENS1_15CalculatedFloatERKNS0_16strings_internal11ParsedFloatE.exit.i

_ZN4absl12lts_2026052612_GLOBAL__N_126CalculateFromParsedDecimalIfEENS1_15CalculatedFloatERKNS0_16strings_internal11ParsedFloatE.exit.i: ; preds = %_ZN4absl12lts_2026052612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread.i.i, %bb.bl, %_ZN4absl12lts_2026052612_GLOBAL__N_111EiselLemireIfEEbRKNS0_16strings_internal11ParsedFloatEbPT_PSt4errc.exit.i
  %.fca.1.insert.merged.i.i = phi { i64, i32 } [ %.fca.1.insert.i.i108.i, %_ZN4absl12lts_2026052612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread.i.i ], [ { i64 0, i32 -99999 }, %_ZN4absl12lts_2026052612_GLOBAL__N_111EiselLemireIfEEbRKNS0_16strings_internal11ParsedFloatEbPT_PSt4errc.exit.i ], [ { i64 0, i32 99999 }, %bb.bl ] ; 2 uses
  %.fca.0.extract.i = extractvalue { i64, i32 } %.fca.1.insert.merged.i.i, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { i64, i32 } %.fca.1.insert.merged.i.i, 1 ; 3 uses
  %i.lh = icmp eq i32 %.fca.1.extract.i, 99999
  br i1 %i.lh, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %_ZN4absl12lts_2026052612_GLOBAL__N_126CalculateFromParsedDecimalIfEENS1_15CalculatedFloatERKNS0_16strings_internal11ParsedFloatE.exit.i
  %i.li = select i1 %.049.i, float f0xFF7FFFFF, float f0x7F7FFFFF
  store float %i.li, ptr %2, align 4, !tbaa !26
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit112.i

bb.ce:                                            ; preds = %_ZN4absl12lts_2026052612_GLOBAL__N_126CalculateFromParsedDecimalIfEENS1_15CalculatedFloatERKNS0_16strings_internal11ParsedFloatE.exit.i
  %i.lj = icmp eq i64 %.fca.0.extract.i, 0
  %i.lk = icmp eq i32 %.fca.1.extract.i, -99999
  %or.cond.i110.i = or i1 %i.lj, %i.lk
  br i1 %or.cond.i110.i, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.ll = select i1 %.049.i, float -0.000000e+00, float 0.000000e+00
  store float %i.ll, ptr %2, align 4, !tbaa !26
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit112.i

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
  store i32 %i.lt, ptr %2, align 4, !tbaa !26
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit112.i

_ZN4absl12lts_2026052612_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit112.i: ; preds = %bb.cg, %bb.cf, %bb.cd, %bb.bk, %bb.be, %bb.bc, %bb.ba, %bb.ay, %bb.ax, %.thread.i
  %.sroa.0119.2.i = phi ptr [ %0, %.thread.i ], [ %i.ek, %bb.cg ], [ %i.ek, %bb.ba ], [ %i.ek, %bb.cd ], [ %i.ek, %bb.cf ], [ %i.ek, %bb.ax ], [ %i.ek, %bb.ay ], [ %i.ek, %bb.bc ], [ %i.ek, %bb.be ], [ %i.ek, %bb.bk ]
  %.sroa.6120.3.i = phi i32 [ 22, %.thread.i ], [ 0, %bb.cg ], [ 0, %bb.ba ], [ 34, %bb.cd ], [ 34, %bb.cf ], [ 0, %bb.ax ], [ 0, %bb.ay ], [ 34, %bb.bc ], [ 34, %bb.be ], [ 0, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_113FromCharsImplIfEENS0_17from_chars_resultEPKcS5_RT_NS0_12chars_formatE.exit

_ZN4absl12lts_2026052612_GLOBAL__N_113FromCharsImplIfEENS0_17from_chars_resultEPKcS5_RT_NS0_12chars_formatE.exit: ; preds = %_ZN4absl12lts_2026052612_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit.i, %_ZN4absl12lts_2026052612_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit90.i, %_ZN4absl12lts_2026052612_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit112.i
  %.sroa.0119.3.i = phi ptr [ %.sroa.0119.1.i, %_ZN4absl12lts_2026052612_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit90.i ], [ %.sroa.0119.2.i, %_ZN4absl12lts_2026052612_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit112.i ], [ %.sroa.0119.0.i, %_ZN4absl12lts_2026052612_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit.i ]
  %.sroa.6120.4.i = phi i32 [ %.sroa.6120.1.i, %_ZN4absl12lts_2026052612_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit90.i ], [ %.sroa.6120.3.i, %_ZN4absl12lts_2026052612_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit112.i ], [ %.sroa.6120.0.i, %_ZN4absl12lts_2026052612_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit.i ]
  %.fca.0.insert.i = insertvalue { ptr, i32 } poison, ptr %.sroa.0119.3.i, 0
  %.fca.1.insert.i = insertvalue { ptr, i32 } %.fca.0.insert.i, i32 %.sroa.6120.4.i, 1
  ret { ptr, i32 } %.fca.1.insert.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN4absl12lts_2026052616strings_internal10ParseFloatILi16EEENS1_11ParsedFloatEPKcS5_NS0_12chars_formatE(ptr dead_on_unwind writable sret(%"struct.absl::lts_20260526::strings_internal::ParsedFloat") align 8, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN4absl12lts_2026052616strings_internal10ParseFloatILi10EEENS1_11ParsedFloatEPKcS5_NS0_12chars_formatE(ptr dead_on_unwind writable sret(%"struct.absl::lts_20260526::strings_internal::ParsedFloat") align 8, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare double @nan(ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2026052612_GLOBAL__N_111MustRoundUpEmiRKNS0_16strings_internal11ParsedFloatE(i64 noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(48) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 4 uses
  %3 = alloca %"class.absl::lts_20260526::strings_internal::BigUnsigned", align 4 ; 27 uses
  %4 = alloca %"class.absl::lts_20260526::strings_internal::BigUnsigned", align 4 ; 9 uses
  %5 = alloca %"class.absl::lts_20260526::strings_internal::BigUnsigned", align 4 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(340) %3, i8 0, i64 340, i1 false)
  %i.b = call noundef i32 @_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE17ReadFloatMantissaERKNS1_11ParsedFloatEi(ptr noundef nonnull align 4 dereferenceable(340) %3, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef 768) ; 10 uses
  %i.c = shl i64 %0, 1                            ; 4 uses
  %i.d = or disjoint i64 %i.c, 1                  ; 6 uses
  %i.e = add nsw i32 %1, -1                       ; 7 uses
  %i.f = icmp sgt i32 %i.b, -1
  br i1 %i.f, label %bb.b, label %bb.ac

bb.b:                                             ; preds = %bb.a
  call void @_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE22MultiplyByFiveToTheNthEi(ptr noundef nonnull align 4 dereferenceable(340) %3, i32 noundef %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %.not.i = icmp ult i64 %i.c, 4294967296
  %i.g = select i1 %.not.i, i32 1, i32 2          ; 3 uses
  store i32 %i.g, ptr %4, align 4, !tbaa !32
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
  %i.n = load i32, ptr %3, align 4, !tbaa !32     ; 3 uses
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = icmp slt i32 %i.n, 1
  br i1 %i.o, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.q = zext nneg i32 %i.n to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.q, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.p, i8 0, i64 %.idx.i.i.i.i, i1 false), !tbaa !33
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i: ; preds = %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i, %bb.d
  store i32 0, ptr %3, align 4, !tbaa !32
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit

bb.e:                                             ; preds = %bb.c
  %i.r = add nsw i32 %i.n, %i.l                   ; 3 uses
  %.sroa.speculated28.i = call i32 @llvm.smin.i32(i32 %i.r, i32 84) ; 4 uses
  store i32 %.sroa.speculated28.i, ptr %3, align 4, !tbaa !32
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
  br i1 %i.ab, label %bb.g, label %bb.h, !prof !34

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
  %i.ag = load i32, ptr %i.u, align 4, !tbaa !33
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !33
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
  %i.am = load i32, ptr %i.al, align 4, !tbaa !33
  %i.an = shl i32 %i.am, %i.s
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.pre-phi.i
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !33
  %i.ap = icmp slt i32 %i.r, 84
  br i1 %i.ap, label %bb.l, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.aj, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 3 uses
  %i.aq = sub nuw nsw i64 %indvars.iv.i, %i.ak
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !33
  %i.at = getelementptr i8, ptr %i.ar, i64 -4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !33
  %i.av = call i32 @llvm.fshl.i32(i32 %i.as, i32 %i.au, i32 %i.k)
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !33
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.ax = icmp samesign ugt i64 %indvars.iv.next.i, %i.ak
  br i1 %i.ax, label %bb.k, label %._crit_edge.i, !llvm.loop !27

bb.l:                                             ; preds = %._crit_edge.i
  %i.ay = sext i32 %.sroa.speculated28.i to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !33
  %.not.i34 = icmp eq i32 %i.ba, 0
  br i1 %.not.i34, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = add nsw i32 %.sroa.speculated28.i, 1
  store i32 %i.bb, ptr %3, align 4, !tbaa !32
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i

_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i:     ; preds = %bb.m, %bb.l, %._crit_edge.i, %bb.i, %bb.h, %bb.g
  %i.bc = icmp eq i32 %i.l, 0
  br i1 %i.bc, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i:   ; preds = %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.be = shl nuw nsw i32 %i.l, 2
  %.idx.i.i.i = zext nneg i32 %i.be to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bd, i8 0, i64 %.idx.i.i.i, i1 false), !tbaa !33
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit

bb.n:                                             ; preds = %bb.b
  %i.bf = sub nuw nsw i32 %i.e, %i.b              ; 5 uses
  %.not145 = icmp eq i32 %i.e, %i.b
  br i1 %.not145, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = lshr i32 %i.bf, 5                       ; 6 uses
  %i.bh = icmp samesign ugt i32 %i.bf, 2687
  br i1 %i.bh, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i51, label %bb.p

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i51: ; preds = %bb.o
  %i.bi = shl nuw nsw i32 %i.g, 2
  %.idx.i.i.i.i50 = zext nneg i32 %i.bi to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.h, i8 0, i64 %.idx.i.i.i.i50, i1 false), !tbaa !33
  store i32 0, ptr %4, align 4, !tbaa !32
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit

bb.p:                                             ; preds = %bb.o
  %i.bj = add nuw nsw i32 %i.bg, %i.g             ; 3 uses
  %i.bk = call i32 @llvm.umin.i32(i32 %i.bj, i32 84) ; 4 uses
  store i32 %i.bk, ptr %4, align 4, !tbaa !32
  %i.bl = and i32 %i.bf, 31                       ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bn = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bn ; 2 uses
  %.idx.i48 = shl nuw nsw i64 %i.bn, 2
  %i.bp = shl nuw nsw i32 %i.bg, 2
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = sub nsw i64 %.idx.i48, %i.bq            ; 3 uses
  %i.bs = ashr exact i64 %i.br, 2                 ; 2 uses
  %i.bt = icmp sgt i64 %i.bs, 1
  br i1 %i.bt, label %bb.r, label %bb.s, !prof !34

bb.r:                                             ; preds = %bb.q
  %i.bu = sub nsw i64 0, %i.bs
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.bu
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bv, ptr nonnull align 4 %i.h, i64 %i.br, i1 false)
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i41

bb.s:                                             ; preds = %bb.q
  %i.bw = icmp eq i64 %i.br, 4
  br i1 %i.bw, label %bb.t, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i41

bb.t:                                             ; preds = %bb.s
  %i.bx = getelementptr inbounds i8, ptr %i.bo, i64 -4
  store i32 %i.j, ptr %i.bx, align 4, !tbaa !33
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i41

bb.u:                                             ; preds = %bb.p
  %i.by = icmp samesign ult i32 %i.bf, 2656
  br i1 %i.by, label %.lr.ph.i45, label %.._crit_edge_crit_edge.i37

.._crit_edge_crit_edge.i37:                       ; preds = %bb.u
  %.pre.i38 = zext nneg i32 %i.bg to i64
  br label %._crit_edge.i39

.lr.ph.i45:                                       ; preds = %bb.u
  %i.bz = call i32 @llvm.umin.i32(i32 %i.bj, i32 83)
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = zext nneg i32 %i.bg to i64              ; 3 uses
  br label %bb.v

._crit_edge.i39.loopexit:                         ; preds = %bb.v
  %.pre = load i32, ptr %i.h, align 4, !tbaa !33
  br label %._crit_edge.i39

._crit_edge.i39:                                  ; preds = %._crit_edge.i39.loopexit, %.._crit_edge_crit_edge.i37
  %i.cc = phi i32 [ %i.j, %.._crit_edge_crit_edge.i37 ], [ %.pre, %._crit_edge.i39.loopexit ]
  %.pre-phi.i40 = phi i64 [ %.pre.i38, %.._crit_edge_crit_edge.i37 ], [ %i.cb, %._crit_edge.i39.loopexit ]
  %i.cd = shl i32 %i.cc, %i.bl
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.pre-phi.i40
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !33
  %i.cf = icmp samesign ult i32 %i.bj, 84
  br i1 %i.cf, label %bb.w, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i41

bb.v:                                             ; preds = %bb.v, %.lr.ph.i45
  %indvars.iv.i46 = phi i64 [ %i.ca, %.lr.ph.i45 ], [ %indvars.iv.next.i47, %bb.v ] ; 3 uses
  %i.cg = sub nuw nsw i64 %indvars.iv.i46, %i.cb
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.cg ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !33
  %i.cj = getelementptr i8, ptr %i.ch, i64 -4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !33
  %i.cl = call i32 @llvm.fshl.i32(i32 %i.ci, i32 %i.ck, i32 %i.bf)
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i46
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !33
  %indvars.iv.next.i47 = add nsw i64 %indvars.iv.i46, -1 ; 2 uses
  %i.cn = icmp samesign ugt i64 %indvars.iv.next.i47, %i.cb
  br i1 %i.cn, label %bb.v, label %._crit_edge.i39.loopexit, !llvm.loop !27

bb.w:                                             ; preds = %._crit_edge.i39
  %i.co = zext nneg i32 %i.bk to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !33
  %.not.i44 = icmp eq i32 %i.cq, 0
  br i1 %.not.i44, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i41, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cr = add nuw nsw i32 %i.bk, 1
  store i32 %i.cr, ptr %4, align 4, !tbaa !32
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i41

_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i41:   ; preds = %bb.x, %bb.w, %._crit_edge.i39, %bb.t, %bb.s, %bb.r
  %i.cs = icmp eq i32 %i.bg, 0
  br i1 %i.cs, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i42

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i42: ; preds = %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i41
  %i.ct = shl nuw nsw i32 %i.bg, 2
  %.idx.i.i.i43 = zext nneg i32 %i.ct to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.h, i8 0, i64 %.idx.i.i.i43, i1 false), !tbaa !33
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit: ; preds = %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i42, %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i41, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i51, %bb.n, %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i, %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i
  %i.cu = load i32, ptr %3, align 4, !tbaa !32    ; 2 uses
  %i.cv = load i32, ptr %4, align 4, !tbaa !32    ; 2 uses
  %.sroa.speculated.i53 = call i32 @llvm.smax.i32(i32 %i.cu, i32 %i.cv) ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cw = icmp slt i32 %.sroa.speculated.i53, 1
  br i1 %i.cw, label %_ZN4absl12lts_2026052616strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit, label %.lr.ph151

.lr.ph151:                                        ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit
  %i.cx = zext nneg i32 %.sroa.speculated.i53 to i64
  br label %bb.z

bb.y:                                             ; preds = %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i
  %i.cy = trunc nuw i64 %indvars.iv.next.i53159 to i32
  %i.cz = icmp slt i32 %i.cy, 1
  br i1 %i.cz, label %_ZN4absl12lts_2026052616strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit, label %bb.z, !llvm.loop !28

bb.z:                                             ; preds = %.lr.ph151, %bb.y
  %indvars.iv.next.i53159.in = phi i64 [ %i.cx, %.lr.ph151 ], [ %indvars.iv.next.i53159, %bb.y ]
  %.017.i150 = phi i32 [ undef, %.lr.ph151 ], [ %.118.i, %bb.y ]
  %indvars.iv.next.i53159 = add nsw i64 %indvars.iv.next.i53159.in, -1 ; 5 uses
  %indvars.i160 = trunc i64 %indvars.iv.next.i53159 to i32 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.cu, %indvars.i160
  br i1 %.not.i.i, label %bb.aa, label %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i

bb.aa:                                            ; preds = %bb.z
  %8 = and i64 %indvars.iv.next.i53159, 4294967295
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %8
  %i.db = load i32, ptr %i.da, align 4, !tbaa !33
  br label %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i

_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i: ; preds = %bb.aa, %bb.z
  %.0.i.i = phi i32 [ %i.db, %bb.aa ], [ 0, %bb.z ] ; 3 uses
  %.not.i21.i = icmp sgt i32 %i.cv, %indvars.i160
  br i1 %.not.i21.i, label %bb.ab, label %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i

bb.ab:                                            ; preds = %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i
  %9 = and i64 %indvars.iv.next.i53159, 4294967295
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %9
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !33
  br label %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i

_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i: ; preds = %bb.ab, %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i
  %.0.i23.i = phi i32 [ %i.dd, %bb.ab ], [ 0, %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i ] ; 3 uses
  %.not.i55 = icmp ult i32 %.0.i.i, %.0.i23.i
  %.not28.i = icmp ugt i32 %.0.i.i, %.0.i23.i
  %..017.i = select i1 %.not28.i, i32 1, i32 %.017.i150
  %.118.i = select i1 %.not.i55, i32 -1, i32 %..017.i ; 2 uses
  %cond1.i = icmp eq i32 %.0.i.i, %.0.i23.i
  br i1 %cond1.i, label %bb.y, label %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i._ZN4absl12lts_2026052616strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit_crit_edge, !llvm.loop !28

_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i._ZN4absl12lts_2026052616strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit_crit_edge: ; preds = %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i
  br label %_ZN4absl12lts_2026052616strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit, !llvm.loop !28

_ZN4absl12lts_2026052616strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit: ; preds = %bb.y, %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i._ZN4absl12lts_2026052616strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit_crit_edge, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit
  %spec.select.i = phi i32 [ %.118.i, %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i._ZN4absl12lts_2026052616strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit_crit_edge ], [ 0, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit ], [ 0, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %bb.bi

bb.ac:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.de = sub nsw i32 0, %i.b
  call void @_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE12FiveToTheNthEi(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::strings_internal::BigUnsigned") align 4 %5, i32 noundef %i.de)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i64 %i.d, ptr %i.a, align 8
  %i.df = icmp ult i64 %i.c, 4294967296
  %i.dg = load i32, ptr %5, align 4, !tbaa !32    ; 9 uses
  br i1 %i.df, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.dh = icmp ne i64 %i.c, 0
  %i.di = icmp sgt i32 %i.dg, 0
  %or.cond = and i1 %i.dh, %i.di
  br i1 %or.cond, label %.lr.ph.i.i, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEm.exit

.lr.ph.i.i:                                       ; preds = %bb.ad
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 4 uses
  %wide.trip.count.i.i = zext nneg i32 %i.dg to i64 ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.dk = icmp eq i32 %i.dg, 1
  br i1 %i.dk, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.ae

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.ae
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %._crit_edge.i.i.unr-lcssa ]
  %.01418.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.eh, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod157 = trunc i32 %i.dg to i1
  call void @llvm.assume(i1 %lcmp.mod157)
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv.i.i.epil.init ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !33
  %i.dn = zext i32 %i.dm to i64
  %i.do = mul nuw i64 %i.d, %i.dn
  %i.dp = add nuw i64 %i.do, %.01418.i.i.epil.init ; 2 uses
  %i.dq = trunc i64 %i.dp to i32
  store i32 %i.dq, ptr %i.dl, align 4, !tbaa !33
  %i.dr = lshr i64 %i.dp, 32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.eh, %._crit_edge.i.i.unr-lcssa ], [ %i.dr, %.epil.preheader ] ; 2 uses
  %.not.i.i.a = icmp ne i64 %.lcssa, 0
  %i.ds = icmp samesign ult i32 %i.dg, 84
  %or.cond17.i.i = and i1 %i.ds, %.not.i.i.a
  br i1 %or.cond17.i.i, label %bb.af, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEm.exit

bb.ae:                                            ; preds = %bb.ae, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.ae ] ; 3 uses
  %.01418.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.eh, %bb.ae ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.ae ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv.i.i ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !33
  %i.dv = zext i32 %i.du to i64
  %i.dw = mul nuw i64 %i.d, %i.dv
  %i.dx = add nuw i64 %i.dw, %.01418.i.i          ; 2 uses
  %i.dy = trunc i64 %i.dx to i32
  store i32 %i.dy, ptr %i.dt, align 4, !tbaa !33
  %i.dz = lshr i64 %i.dx, 32
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !33
  %i.ed = zext i32 %i.ec to i64
  %i.ee = mul nuw i64 %i.d, %i.ed
  %i.ef = add nuw i64 %i.ee, %i.dz                ; 2 uses
  %i.eg = trunc i64 %i.ef to i32
  store i32 %i.eg, ptr %i.eb, align 4, !tbaa !33
  %i.eh = lshr i64 %i.ef, 32                      ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.ae, !llvm.loop !29

bb.af:                                            ; preds = %._crit_edge.i.i
  %i.ei = trunc nuw i64 %.lcssa to i32
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %wide.trip.count.i.i
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !33
  %i.ek = add nuw nsw i32 %i.dg, 1
  store i32 %i.ek, ptr %5, align 4, !tbaa !32
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEm.exit

bb.ag:                                            ; preds = %bb.ac
  %i.el = icmp sgt i32 %i.dg, -1
  br i1 %i.el, label %select.unfold.preheader.i.i, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEm.exit

select.unfold.preheader.i.i:                      ; preds = %bb.ag
  %i.em = call i32 @llvm.umin.i32(i32 %i.dg, i32 83)
  br label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %select.unfold.i.i, %select.unfold.preheader.i.i
  %.012.i.i = phi i32 [ %i.en, %select.unfold.i.i ], [ %i.em, %select.unfold.preheader.i.i ] ; 3 uses
  call void @_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE12MultiplyStepEiPKjii(ptr noundef nonnull align 4 dereferenceable(340) %5, i32 noundef %i.dg, ptr noundef nonnull %i.a, i32 noundef 2, i32 noundef %.012.i.i)
  %i.en = add nsw i32 %.012.i.i, -1
  %.not.i2.i = icmp eq i32 %.012.i.i, 0
  br i1 %.not.i2.i, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEm.exit, label %select.unfold.i.i, !llvm.loop !30

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEm.exit: ; preds = %select.unfold.i.i, %bb.ad, %._crit_edge.i.i, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %10 = icmp sgt i32 %i.b, %i.e
  br i1 %10, label %bb.ah, label %bb.as

bb.ah:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEm.exit
  %i.eo = sub nsw i32 %i.b, %i.e                  ; 4 uses
  %i.ep = lshr i32 %i.eo, 5                       ; 7 uses
  %i.eq = icmp samesign ugt i32 %i.eo, 2687
  %i.er = load i32, ptr %3, align 4, !tbaa !32    ; 3 uses
  br i1 %i.eq, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.es = icmp slt i32 %i.er, 1
  br i1 %i.es, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i72, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i70

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i70: ; preds = %bb.ai
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.eu = zext nneg i32 %i.er to i64
  %.idx.i.i.i.i71 = shl nuw nsw i64 %i.eu, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.et, i8 0, i64 %.idx.i.i.i.i71, i1 false), !tbaa !33
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i72

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i72: ; preds = %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i70, %bb.ai
  store i32 0, ptr %3, align 4, !tbaa !32
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit73

bb.aj:                                            ; preds = %bb.ah
  %i.ev = add nsw i32 %i.er, %i.ep                ; 3 uses
  %.sroa.speculated28.i56 = call i32 @llvm.smin.i32(i32 %i.ev, i32 84) ; 4 uses
  store i32 %.sroa.speculated28.i56, ptr %3, align 4, !tbaa !32
  %i.ew = and i32 %i.eo, 31                       ; 2 uses
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.ez = sext i32 %.sroa.speculated28.i56 to i64 ; 2 uses
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.ez ; 2 uses
  %.idx.i69 = shl nsw i64 %i.ez, 2
  %i.fb = shl nuw nsw i32 %i.ep, 2
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = sub nsw i64 %.idx.i69, %i.fc            ; 3 uses
  %i.fe = ashr exact i64 %i.fd, 2                 ; 2 uses
  %i.ff = icmp sgt i64 %i.fe, 1
  br i1 %i.ff, label %bb.al, label %bb.am, !prof !34

bb.al:                                            ; preds = %bb.ak
  %i.fg = sub nsw i64 0, %i.fe
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %i.fg
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fh, ptr nonnull align 4 %i.ey, i64 %i.fd, i1 false)
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i62

bb.am:                                            ; preds = %bb.ak
  %i.fi = icmp eq i64 %i.fd, 4
  br i1 %i.fi, label %bb.an, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i62

bb.an:                                            ; preds = %bb.am
  %i.fj = getelementptr inbounds i8, ptr %i.fa, i64 -4
  %i.fk = load i32, ptr %i.ey, align 4, !tbaa !33
  store i32 %i.fk, ptr %i.fj, align 4, !tbaa !33
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i62

bb.ao:                                            ; preds = %bb.aj
  %.sroa.speculated.i57 = call i32 @llvm.smin.i32(i32 %i.ev, i32 83) ; 2 uses
  %i.fl = icmp sgt i32 %.sroa.speculated.i57, %i.ep
  br i1 %i.fl, label %.lr.ph.i66, label %.._crit_edge_crit_edge.i58

.._crit_edge_crit_edge.i58:                       ; preds = %bb.ao
  %.pre.i59 = zext nneg i32 %i.ep to i64
  br label %._crit_edge.i60

.lr.ph.i66:                                       ; preds = %bb.ao
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.fn = zext nneg i32 %.sroa.speculated.i57 to i64
  %i.fo = zext nneg i32 %i.ep to i64              ; 3 uses
  br label %bb.ap

._crit_edge.i60:                                  ; preds = %bb.ap, %.._crit_edge_crit_edge.i58
  %.pre-phi.i61 = phi i64 [ %.pre.i59, %.._crit_edge_crit_edge.i58 ], [ %i.fo, %bb.ap ]
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !33
  %i.fr = shl i32 %i.fq, %i.ew
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %.pre-phi.i61
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !33
  %i.ft = icmp slt i32 %i.ev, 84
  br i1 %i.ft, label %bb.aq, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i62

bb.ap:                                            ; preds = %bb.ap, %.lr.ph.i66
  %indvars.iv.i67 = phi i64 [ %i.fn, %.lr.ph.i66 ], [ %indvars.iv.next.i68, %bb.ap ] ; 3 uses
  %i.fu = sub nuw nsw i64 %indvars.iv.i67, %i.fo
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.fu ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !33
  %i.fx = getelementptr i8, ptr %i.fv, i64 -4
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !33
  %i.fz = call i32 @llvm.fshl.i32(i32 %i.fw, i32 %i.fy, i32 %i.eo)
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv.i67
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !33
  %indvars.iv.next.i68 = add nsw i64 %indvars.iv.i67, -1 ; 2 uses
  %i.gb = icmp samesign ugt i64 %indvars.iv.next.i68, %i.fo
  br i1 %i.gb, label %bb.ap, label %._crit_edge.i60, !llvm.loop !27

bb.aq:                                            ; preds = %._crit_edge.i60
  %i.gc = sext i32 %.sroa.speculated28.i56 to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !33
  %.not.i65 = icmp eq i32 %i.ge, 0
  br i1 %.not.i65, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i62, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gf = add nsw i32 %.sroa.speculated28.i56, 1
  store i32 %i.gf, ptr %3, align 4, !tbaa !32
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i62

_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i62:   ; preds = %bb.ar, %bb.aq, %._crit_edge.i60, %bb.an, %bb.am, %bb.al
  %i.gg = icmp eq i32 %i.ep, 0
  br i1 %i.gg, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit73, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i63

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i63: ; preds = %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i62
  %i.gh = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.gi = shl nuw nsw i32 %i.ep, 2
  %.idx.i.i.i64 = zext nneg i32 %i.gi to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gh, i8 0, i64 %.idx.i.i.i64, i1 false), !tbaa !33
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit73

bb.as:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEm.exit
  %i.gj = sub nsw i32 %i.e, %i.b                  ; 5 uses
  %i.gk = icmp sgt i32 %i.gj, 0
  br i1 %i.gk, label %bb.at, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit73

bb.at:                                            ; preds = %bb.as
  %i.gl = lshr i32 %i.gj, 5                       ; 7 uses
  %i.gm = icmp samesign ugt i32 %i.gj, 2687
  %i.gn = load i32, ptr %5, align 4, !tbaa !32    ; 3 uses
  br i1 %i.gm, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.go = icmp slt i32 %i.gn, 1
  br i1 %i.go, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i90, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i88

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i88: ; preds = %bb.au
  %i.gp = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.gq = zext nneg i32 %i.gn to i64
  %.idx.i.i.i.i89 = shl nuw nsw i64 %i.gq, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gp, i8 0, i64 %.idx.i.i.i.i89, i1 false), !tbaa !33
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i90

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i90: ; preds = %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i88, %bb.au
  store i32 0, ptr %5, align 4, !tbaa !32
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit73

bb.av:                                            ; preds = %bb.at
  %i.gr = add nsw i32 %i.gn, %i.gl                ; 3 uses
  %.sroa.speculated28.i74 = call i32 @llvm.smin.i32(i32 %i.gr, i32 84) ; 4 uses
  store i32 %.sroa.speculated28.i74, ptr %5, align 4, !tbaa !32
  %i.gs = and i32 %i.gj, 31                       ; 2 uses
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %bb.av
  %i.gu = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.gv = sext i32 %.sroa.speculated28.i74 to i64 ; 2 uses
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %i.gv ; 2 uses
  %.idx.i87 = shl nsw i64 %i.gv, 2
  %i.gx = shl nuw nsw i32 %i.gl, 2
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = sub nsw i64 %.idx.i87, %i.gy            ; 3 uses
  %i.ha = ashr exact i64 %i.gz, 2                 ; 2 uses
  %i.hb = icmp sgt i64 %i.ha, 1
  br i1 %i.hb, label %bb.ax, label %bb.ay, !prof !34

bb.ax:                                            ; preds = %bb.aw
  %i.hc = sub nsw i64 0, %i.ha
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.gw, i64 %i.hc
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hd, ptr nonnull align 4 %i.gu, i64 %i.gz, i1 false)
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i80

bb.ay:                                            ; preds = %bb.aw
  %i.he = icmp eq i64 %i.gz, 4
  br i1 %i.he, label %bb.az, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i80

bb.az:                                            ; preds = %bb.ay
  %i.hf = getelementptr inbounds i8, ptr %i.gw, i64 -4
  %i.hg = load i32, ptr %i.gu, align 4, !tbaa !33
  store i32 %i.hg, ptr %i.hf, align 4, !tbaa !33
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i80

bb.ba:                                            ; preds = %bb.av
  %.sroa.speculated.i75 = call i32 @llvm.smin.i32(i32 %i.gr, i32 83) ; 2 uses
  %i.hh = icmp sgt i32 %.sroa.speculated.i75, %i.gl
  br i1 %i.hh, label %.lr.ph.i84, label %.._crit_edge_crit_edge.i76

.._crit_edge_crit_edge.i76:                       ; preds = %bb.ba
  %.pre.i77 = zext nneg i32 %i.gl to i64
  br label %._crit_edge.i78

.lr.ph.i84:                                       ; preds = %bb.ba
  %i.hi = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.hj = zext nneg i32 %.sroa.speculated.i75 to i64
  %i.hk = zext nneg i32 %i.gl to i64              ; 3 uses
  br label %bb.bb

._crit_edge.i78:                                  ; preds = %bb.bb, %.._crit_edge_crit_edge.i76
  %.pre-phi.i79 = phi i64 [ %.pre.i77, %.._crit_edge_crit_edge.i76 ], [ %i.hk, %bb.bb ]
  %i.hl = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !33
  %i.hn = shl i32 %i.hm, %i.gs
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %.pre-phi.i79
  store i32 %i.hn, ptr %i.ho, align 4, !tbaa !33
  %i.hp = icmp slt i32 %i.gr, 84
  br i1 %i.hp, label %bb.bc, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i80

bb.bb:                                            ; preds = %bb.bb, %.lr.ph.i84
  %indvars.iv.i85 = phi i64 [ %i.hj, %.lr.ph.i84 ], [ %indvars.iv.next.i86, %bb.bb ] ; 3 uses
  %i.hq = sub nuw nsw i64 %indvars.iv.i85, %i.hk
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.hq ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !33
  %i.ht = getelementptr i8, ptr %i.hr, i64 -4
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !33
  %i.hv = call i32 @llvm.fshl.i32(i32 %i.hs, i32 %i.hu, i32 %i.gj)
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv.i85
  store i32 %i.hv, ptr %i.hw, align 4, !tbaa !33
  %indvars.iv.next.i86 = add nsw i64 %indvars.iv.i85, -1 ; 2 uses
  %i.hx = icmp samesign ugt i64 %indvars.iv.next.i86, %i.hk
  br i1 %i.hx, label %bb.bb, label %._crit_edge.i78, !llvm.loop !27

bb.bc:                                            ; preds = %._crit_edge.i78
  %i.hy = sext i32 %.sroa.speculated28.i74 to i64
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.hy
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !33
  %.not.i83 = icmp eq i32 %i.ia, 0
  br i1 %.not.i83, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i80, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ib = add nsw i32 %.sroa.speculated28.i74, 1
  store i32 %i.ib, ptr %5, align 4, !tbaa !32
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i80

_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i80:   ; preds = %bb.bd, %bb.bc, %._crit_edge.i78, %bb.az, %bb.ay, %bb.ax
  %i.ic = icmp eq i32 %i.gl, 0
  br i1 %i.ic, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit73, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i81

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i81: ; preds = %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i80
  %i.id = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ie = shl nuw nsw i32 %i.gl, 2
  %.idx.i.i.i82 = zext nneg i32 %i.ie to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.id, i8 0, i64 %.idx.i.i.i82, i1 false), !tbaa !33
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit73

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit73: ; preds = %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i81, %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i80, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i90, %bb.as, %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i63, %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i62, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i72
  %i.if = load i32, ptr %3, align 4, !tbaa !32    ; 2 uses
  %i.ig = load i32, ptr %5, align 4, !tbaa !32    ; 2 uses
  %.sroa.speculated.i92 = call i32 @llvm.smax.i32(i32 %i.if, i32 %i.ig) ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %12 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ih = icmp slt i32 %.sroa.speculated.i92, 1
  br i1 %i.ih, label %_ZN4absl12lts_2026052616strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit107, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit73
  %i.ii = zext nneg i32 %.sroa.speculated.i92 to i64
  br label %bb.bf

bb.be:                                            ; preds = %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i99
  %i.ij = trunc nuw i64 %indvars.iv.next.i95153 to i32
  %i.ik = icmp slt i32 %i.ij, 1
  br i1 %i.ik, label %_ZN4absl12lts_2026052616strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit107, label %bb.bf, !llvm.loop !28

bb.bf:                                            ; preds = %.lr.ph, %bb.be
  %indvars.iv.next.i95153.in = phi i64 [ %i.ii, %.lr.ph ], [ %indvars.iv.next.i95153, %bb.be ]
  %.017.i94147 = phi i32 [ undef, %.lr.ph ], [ %.118.i104, %bb.be ]
  %indvars.iv.next.i95153 = add nsw i64 %indvars.iv.next.i95153.in, -1 ; 5 uses
  %indvars.i96154 = trunc i64 %indvars.iv.next.i95153 to i32 ; 2 uses
  %.not.i.i97 = icmp sgt i32 %i.if, %indvars.i96154
  br i1 %.not.i.i97, label %bb.bg, label %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i96

bb.bg:                                            ; preds = %bb.bf
  %13 = and i64 %indvars.iv.next.i95153, 4294967295
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %13
  %i.im = load i32, ptr %i.il, align 4, !tbaa !33
  br label %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i96

_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i96: ; preds = %bb.bg, %bb.bf
  %.0.i.i97 = phi i32 [ %i.im, %bb.bg ], [ 0, %bb.bf ] ; 3 uses
  %.not.i21.i100 = icmp sgt i32 %i.ig, %indvars.i96154
  br i1 %.not.i21.i100, label %bb.bh, label %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i99

bb.bh:                                            ; preds = %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i96
  %14 = and i64 %indvars.iv.next.i95153, 4294967295
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %14
  %i.io = load i32, ptr %i.in, align 4, !tbaa !33
  br label %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i99

_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i99: ; preds = %bb.bh, %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i96
  %.0.i23.i100 = phi i32 [ %i.io, %bb.bh ], [ 0, %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i96 ] ; 3 uses
  %.not.i101 = icmp ult i32 %.0.i.i97, %.0.i23.i100
  %.not28.i102 = icmp ugt i32 %.0.i.i97, %.0.i23.i100
  %..017.i103 = select i1 %.not28.i102, i32 1, i32 %.017.i94147
  %.118.i104 = select i1 %.not.i101, i32 -1, i32 %..017.i103 ; 2 uses
  %cond1.i105 = icmp eq i32 %.0.i.i97, %.0.i23.i100
  br i1 %cond1.i105, label %bb.be, label %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i99._ZN4absl12lts_2026052616strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit107_crit_edge, !llvm.loop !28

_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i99._ZN4absl12lts_2026052616strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit107_crit_edge: ; preds = %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i99
  br label %_ZN4absl12lts_2026052616strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit107, !llvm.loop !28

_ZN4absl12lts_2026052616strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit107: ; preds = %bb.be, %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i99._ZN4absl12lts_2026052616strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit107_crit_edge, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit73
  %spec.select.i106 = phi i32 [ %.118.i104, %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i99._ZN4absl12lts_2026052616strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit107_crit_edge ], [ 0, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit73 ], [ 0, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.bi

bb.bi:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit107, %_ZN4absl12lts_2026052616strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit
  %.0 = phi i32 [ %spec.select.i, %_ZN4absl12lts_2026052616strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit ], [ %spec.select.i106, %_ZN4absl12lts_2026052616strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit107 ] ; 2 uses
  %i.ip = icmp sgt i32 %.0, -1
  %.not33 = icmp ne i32 %.0, 0
  %i.iq = trunc i64 %0 to i1
  %spec.select = or i1 %.not33, %i.iq
  %.028 = and i1 %i.ip, %spec.select
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret i1 %.028
}

declare noundef i32 @_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE17ReadFloatMantissaERKNS1_11ParsedFloatEi(ptr noundef nonnull align 4 dereferenceable(340), ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare void @_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE22MultiplyByFiveToTheNthEi(ptr noundef nonnull align 4 dereferenceable(340), i32 noundef) local_unnamed_addr #0 align 2

declare void @_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE12FiveToTheNthEi(ptr dead_on_unwind writable sret(%"class.absl::lts_20260526::strings_internal::BigUnsigned") align 4, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE12MultiplyStepEiPKjii(ptr noundef nonnull align 4 dereferenceable(340), i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

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

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!"_ZTSN4absl12lts_2026052616strings_internal9FloatTypeE", !5, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"_ZTSN4absl12lts_2026052616strings_internal11ParsedFloatE", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !13, i64 24, !13, i64 32, !13, i64 40}
!15 = !{!14, !13, i64 40}
!16 = !{!14, !10, i64 0}
!17 = !{!14, !6, i64 8}
!18 = !{!14, !11, i64 16}
!19 = !{!14, !13, i64 24}
!20 = !{!14, !13, i64 32}
!21 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!22 = !{!10, !10, i64 0}
!23 = !{!"double", !5, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"float", !5, i64 0}
!26 = !{!25, !25, i64 0}
!27 = distinct !{!27, !35}
!28 = distinct !{!28, !35}
!29 = distinct !{!29, !35}
!30 = distinct !{!30, !35}
!31 = !{!"_ZTSN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEE", !6, i64 0, !5, i64 4}
!32 = !{!31, !6, i64 0}
!33 = !{!6, !6, i64 0}
!34 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!35 = !{!"llvm.loop.mustprogress"}
end_hunk_0
