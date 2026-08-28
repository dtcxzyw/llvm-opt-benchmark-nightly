Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/charconv?download=true
inline.NumInlined: 255
inline.NumDeleted: 101
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4absl12lts_2024011610from_charsEPKcS2_RfNS0_12chars_formatE:bb.a
  %i.ij = icmp eq i128 %i.ig, 0
  %i.ik = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.if, i1 false)
  %i.il = trunc nuw nsw i64 %i.ik to i32
  %i.im = sub nuw nsw i32 64, %i.il
  %i.in = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ih, i1 false)
  %i.io = trunc nuw nsw i64 %i.in to i32
  %i.ip = sub nuw nsw i32 128, %i.io
  %.0.i.i.i.i = select i1 %i.ij, i32 %i.im, i32 %i.ip
  %i.iq = add nsw i32 %.0.i.i.i.i, -58            ; 2 uses
  %i.ir = zext nneg i32 %i.iq to i128
  %i.is = lshr i128 %i.ie, %i.ir                  ; 2 uses
  %i.it = trunc i128 %i.is to i64
  %i.iu = lshr i128 %i.is, 64
  %i.iv = trunc nuw i128 %i.iu to i64
  %i.iw = add nsw i32 %i.iq, %i.ii
  br label %bb.bq

bb.bn:                                            ; preds = %bb.bj, %bb.bi, %bb.bh
  %i.ix = sext i32 %.val70.i to i64
  %i.iy = getelementptr [8 x i8], ptr @_ZN4absl12lts_2024011612_GLOBAL__N_125kPower10MantissaHighTableE, i64 %i.ix
  %i.iz = getelementptr i8, ptr %i.iy, i64 2736
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !23
  %i.jb = zext i64 %i.fd to i128
  %i.jc = zext i64 %i.ja to i128
  %i.jd = mul nuw i128 %i.jc, %i.jb               ; 3 uses
  %i.je = trunc i128 %i.jd to i64                 ; 2 uses
  %i.jf = lshr i128 %i.jd, 64                     ; 2 uses
  %i.jg = trunc nuw i128 %i.jf to i64             ; 2 uses
  %i.jh = add nsw i32 %i.fs, -63                  ; 2 uses
  %i.ji = icmp ult i32 %.val70.i, 28
  %i.jj = icmp eq i128 %i.jf, 0
  %i.jk = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.je, i1 false)
  %i.jl = trunc nuw nsw i64 %i.jk to i32
  %i.jm = sub nuw nsw i32 64, %i.jl
  %i.jn = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jg, i1 false)
  %i.jo = trunc nuw nsw i64 %i.jn to i32
  %i.jp = sub nuw nsw i32 128, %i.jo
  %.0.i.i.i = select i1 %i.jj, i32 %i.jm, i32 %i.jp ; 2 uses
  br i1 %i.ji, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jq = add nsw i32 %.0.i.i.i, -63              ; 2 uses
  %i.jr = zext nneg i32 %i.jq to i128
  %i.js = lshr i128 %i.jd, %i.jr                  ; 2 uses
  %i.jt = trunc i128 %i.js to i64
  %i.ju = lshr i128 %i.js, 64
  %i.jv = trunc nuw i128 %i.ju to i64
  %i.jw = add nsw i32 %i.jq, %i.jh
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.jx = add nsw i32 %.0.i.i.i, -24
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bm
  %.sroa.11.0.i.i = phi i64 [ %i.jg, %bb.bp ], [ %i.jv, %bb.bo ], [ %i.iv, %bb.bm ]
  %.sroa.040.0.i.i = phi i64 [ %i.je, %bb.bp ], [ %i.jt, %bb.bo ], [ %i.it, %bb.bm ] ; 3 uses
  %.034.i.i = phi i32 [ %i.jx, %bb.bp ], [ 39, %bb.bo ], [ 34, %bb.bm ]
  %.033.i.i = phi i1 [ true, %bb.bp ], [ false, %bb.bo ], [ false, %bb.bm ] ; 3 uses
  %.032.i.i = phi i32 [ %i.jh, %bb.bp ], [ %i.jw, %bb.bo ], [ %i.iw, %bb.bm ] ; 2 uses
  %i.jy = sub nsw i32 -149, %.032.i.i
  %.sroa.speculated.i.i98.i = call noundef range(i32 -2147483648, 2147483624) i32 @llvm.smax.i32(i32 %.034.i.i, i32 %i.jy) ; 6 uses
  %i.jz = add nsw i32 %.sroa.speculated.i.i98.i, %.032.i.i ; 2 uses
  %i.ka = icmp slt i32 %.sroa.speculated.i.i98.i, 1
  br i1 %i.ka, label %_ZN4absl12lts_2024011612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.kb = icmp samesign ugt i32 %.sroa.speculated.i.i98.i, 127
  br i1 %i.kb, label %_ZN4absl12lts_2024011612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kc = zext nneg i32 %.sroa.speculated.i.i98.i to i128 ; 2 uses
  %notmask.i.i99.i = shl nsw i128 -1, %i.kc
  %i.kd = xor i128 %notmask.i.i99.i, -1           ; 2 uses
  %i.ke = add nsw i32 %.sroa.speculated.i.i98.i, -1
  %i.kf = zext nneg i32 %i.ke to i128
  %i.kg = shl nuw nsw i128 1, %i.kf               ; 3 uses
  %i.kh = zext i64 %.sroa.11.0.i.i to i128
  %i.ki = shl nuw i128 %i.kh, 64                  ; 2 uses
  %i.kj = zext i64 %.sroa.040.0.i.i to i128
  %i.kk = or disjoint i128 %i.ki, %i.kj
  %i.kl = trunc i128 %i.kd to i64
  %i.km = and i64 %.sroa.040.0.i.i, %i.kl
  %i.kn = and i128 %i.ki, %i.kd
  %i.ko = lshr i128 %i.kk, %i.kc                  ; 2 uses
  %i.kp = trunc i128 %i.ko to i64                 ; 4 uses
  %i.kq = zext i64 %i.km to i128
  %i.kr = or disjoint i128 %i.kn, %i.kq           ; 3 uses
  %i.ks = icmp samesign ult i128 %i.kg, %i.kr
  br i1 %i.ks, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.kt = add i64 %i.kp, 1
  br label %_ZN4absl12lts_2024011612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread.i.i

bb.bu:                                            ; preds = %bb.bs
  %i.ku = icmp eq i128 %i.kr, %i.kg
  br i1 %i.ku, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.kv = and i128 %i.ko, 1
  %.not99.i.i.i = icmp eq i128 %i.kv, 0
  %or.cond.i.i.i = and i1 %.033.i.i, %.not99.i.i.i
  %not.or.cond.i.i.i = xor i1 %or.cond.i.i.i, true
  %i.kw = zext i1 %not.or.cond.i.i.i to i64
  %spec.select.i.i108.i = add i64 %i.kw, %i.kp
  br label %_ZN4absl12lts_2024011612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread.i.i

bb.bw:                                            ; preds = %bb.bu
  %i.kx = add nsw i128 %i.kg, -1
  %i.ky = icmp ne i128 %i.kr, %i.kx
  %or.cond101.not.i.i.i = select i1 %.033.i.i, i1 true, i1 %i.ky
  br i1 %or.cond101.not.i.i.i, label %_ZN4absl12lts_2024011612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread.i.i, label %_ZN4absl12lts_2024011612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread54.i.i

_ZN4absl12lts_2024011612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.i.i: ; preds = %bb.bq
  %i.kz = sub nsw i32 0, %.sroa.speculated.i.i98.i
  %i.la = zext i64 %.sroa.040.0.i.i to i128
  %i.lb = zext nneg i32 %i.kz to i128
  %i.lc = shl nuw nsw i128 %i.la, %i.lb
  %i.ld = trunc i128 %i.lc to i64                 ; 2 uses
  br i1 %.033.i.i, label %_ZN4absl12lts_2024011612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread.i.i, label %_ZN4absl12lts_2024011612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread54.i.i

_ZN4absl12lts_2024011612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread54.i.i: ; preds = %_ZN4absl12lts_2024011612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.i.i, %bb.bw
  %.1.i57.i.i = phi i64 [ %i.ld, %_ZN4absl12lts_2024011612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.i.i ], [ %i.kp, %bb.bw ] ; 2 uses
  %i.le = call fastcc noundef zeroext i1 @_ZN4absl12lts_2024011612_GLOBAL__N_111MustRoundUpEmiRKNS0_16strings_internal11ParsedFloatE(i64 noundef %.1.i57.i.i, i32 noundef %i.jz, ptr noundef nonnull align 8 dereferenceable(48) %6)
  %i.lf = zext i1 %i.le to i64
  %spec.select.i100.i = add i64 %.1.i57.i.i, %i.lf
  br label %_ZN4absl12lts_2024011612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread.i.i

_ZN4absl12lts_2024011612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread.i.i: ; preds = %_ZN4absl12lts_2024011612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread54.i.i, %_ZN4absl12lts_2024011612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.i.i, %bb.bw, %bb.bv, %bb.bt, %bb.br
  %.0.i101.i = phi i64 [ %i.ld, %_ZN4absl12lts_2024011612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.i.i ], [ %spec.select.i100.i, %_ZN4absl12lts_2024011612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread54.i.i ], [ %spec.select.i.i108.i, %bb.bv ], [ 0, %bb.br ], [ %i.kt, %bb.bt ], [ %i.kp, %bb.bw ] ; 2 uses
  %i.lg = icmp eq i64 %.0.i101.i, 16777216        ; 2 uses
  %spec.select.i39.i.i = select i1 %i.lg, i64 8388608, i64 %.0.i101.i ; 2 uses
  %i.lh = zext i1 %i.lg to i32
  %spec.select9.i.i102.i = add nsw i32 %i.jz, %i.lh ; 2 uses
  %i.li = icmp sgt i32 %spec.select9.i.i102.i, 104 ; 2 uses
  %i.lj = icmp eq i64 %spec.select.i39.i.i, 0
  %spec.select10.i.i103.i = select i1 %i.lj, i32 -99999, i32 %spec.select9.i.i102.i
  %.sroa.3.0.i.i104.i = select i1 %i.li, i32 99999, i32 %spec.select10.i.i103.i
  %.sroa.0.0.i.i105.i = select i1 %i.li, i64 0, i64 %spec.select.i39.i.i
  %.fca.0.insert.i.i106.i = insertvalue { i64, i32 } poison, i64 %.sroa.0.0.i.i105.i, 0
  %.fca.1.insert.i.i107.i = insertvalue { i64, i32 } %.fca.0.insert.i.i106.i, i32 %.sroa.3.0.i.i104.i, 1
  br label %_ZN4absl12lts_2024011612_GLOBAL__N_126CalculateFromParsedDecimalIfEENS1_15CalculatedFloatERKNS0_16strings_internal11ParsedFloatE.exit.i

_ZN4absl12lts_2024011612_GLOBAL__N_126CalculateFromParsedDecimalIfEENS1_15CalculatedFloatERKNS0_16strings_internal11ParsedFloatE.exit.i: ; preds = %_ZN4absl12lts_2024011612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread.i.i, %bb.bl, %_ZN4absl12lts_2024011612_GLOBAL__N_111EiselLemireIfEEbRKNS0_16strings_internal11ParsedFloatEbPT_PSt4errc.exit.i
  %.fca.1.insert.merged.i.i = phi { i64, i32 } [ %.fca.1.insert.i.i107.i, %_ZN4absl12lts_2024011612_GLOBAL__N_118ShiftRightAndRoundENS0_7uint128EibPb.exit.thread.i.i ], [ { i64 0, i32 -99999 }, %_ZN4absl12lts_2024011612_GLOBAL__N_111EiselLemireIfEEbRKNS0_16strings_internal11ParsedFloatEbPT_PSt4errc.exit.i ], [ { i64 0, i32 99999 }, %bb.bl ] ; 2 uses
  %.fca.0.extract.i = extractvalue { i64, i32 } %.fca.1.insert.merged.i.i, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { i64, i32 } %.fca.1.insert.merged.i.i, 1 ; 3 uses
  %i.lk = icmp eq i32 %.fca.1.extract.i, 99999
  br i1 %i.lk, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %_ZN4absl12lts_2024011612_GLOBAL__N_126CalculateFromParsedDecimalIfEENS1_15CalculatedFloatERKNS0_16strings_internal11ParsedFloatE.exit.i
  %i.ll = select i1 %.049.i, float f0xFF7FFFFF, float f0x7F7FFFFF
  store float %i.ll, ptr %2, align 4, !tbaa !24
  br label %_ZN4absl12lts_2024011612_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit111.i

bb.by:                                            ; preds = %_ZN4absl12lts_2024011612_GLOBAL__N_126CalculateFromParsedDecimalIfEENS1_15CalculatedFloatERKNS0_16strings_internal11ParsedFloatE.exit.i
  %i.lm = icmp eq i64 %.fca.0.extract.i, 0
  %i.ln = icmp eq i32 %.fca.1.extract.i, -99999
  %or.cond.i109.i = or i1 %i.lm, %i.ln
  br i1 %or.cond.i109.i, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.lo = select i1 %.049.i, float -0.000000e+00, float 0.000000e+00
  store float %i.lo, ptr %2, align 4, !tbaa !24
  br label %_ZN4absl12lts_2024011612_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit111.i

bb.ca:                                            ; preds = %bb.by
  %i.lp = trunc i64 %.fca.0.extract.i to i32      ; 2 uses
  %i.lq = select i1 %.049.i, i32 -2147483648, i32 0
  %i.lr = icmp ugt i32 %i.lp, 8388607
  %i.ls = shl i32 %.fca.1.extract.i, 23
  %i.lt = add i32 %i.ls, 1258291200
  %i.lu = and i32 %i.lp, 8388607
  %i.lv = select i1 %i.lr, i32 %i.lt, i32 0
  %.06.i.i110.i = add i32 %i.lv, %i.lq
  %i.lw = or disjoint i32 %.06.i.i110.i, %i.lu
  store i32 %i.lw, ptr %2, align 4, !tbaa !24
  br label %_ZN4absl12lts_2024011612_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit111.i

_ZN4absl12lts_2024011612_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit111.i: ; preds = %bb.ca, %bb.bz, %bb.bx, %bb.bk, %bb.be, %bb.bc, %bb.ba, %bb.ay, %bb.ax, %.thread.i
  %.sroa.0118.2.i = phi ptr [ %0, %.thread.i ], [ %i.ek, %bb.ca ], [ %i.ek, %bb.ba ], [ %i.ek, %bb.bx ], [ %i.ek, %bb.bz ], [ %i.ek, %bb.ax ], [ %i.ek, %bb.ay ], [ %i.ek, %bb.bc ], [ %i.ek, %bb.be ], [ %i.ek, %bb.bk ]
  %.sroa.6119.3.i = phi i32 [ 22, %.thread.i ], [ 0, %bb.ca ], [ 0, %bb.ba ], [ 34, %bb.bx ], [ 34, %bb.bz ], [ 0, %bb.ax ], [ 0, %bb.ay ], [ 34, %bb.bc ], [ 34, %bb.be ], [ 0, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br label %_ZN4absl12lts_2024011612_GLOBAL__N_113FromCharsImplIfEENS0_17from_chars_resultEPKcS5_RT_NS0_12chars_formatE.exit

_ZN4absl12lts_2024011612_GLOBAL__N_113FromCharsImplIfEENS0_17from_chars_resultEPKcS5_RT_NS0_12chars_formatE.exit: ; preds = %_ZN4absl12lts_2024011612_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit.i, %_ZN4absl12lts_2024011612_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit90.i, %_ZN4absl12lts_2024011612_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit111.i
  %.sroa.0118.3.i = phi ptr [ %.sroa.0118.1.i, %_ZN4absl12lts_2024011612_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit90.i ], [ %.sroa.0118.2.i, %_ZN4absl12lts_2024011612_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit111.i ], [ %.sroa.0118.0.i, %_ZN4absl12lts_2024011612_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit.i ]
  %.sroa.6119.4.i = phi i32 [ %.sroa.6119.1.i, %_ZN4absl12lts_2024011612_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit90.i ], [ %.sroa.6119.3.i, %_ZN4absl12lts_2024011612_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit111.i ], [ %.sroa.6119.0.i, %_ZN4absl12lts_2024011612_GLOBAL__N_112EncodeResultIfEEvRKNS1_15CalculatedFloatEbPNS0_17from_chars_resultEPT_.exit.i ]
  %.fca.0.insert.i = insertvalue { ptr, i32 } poison, ptr %.sroa.0118.3.i, 0
  %.fca.1.insert.i = insertvalue { ptr, i32 } %.fca.0.insert.i, i32 %.sroa.6119.4.i, 1
  ret { ptr, i32 } %.fca.1.insert.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN4absl12lts_2024011616strings_internal10ParseFloatILi16EEENS1_11ParsedFloatEPKcS5_NS0_12chars_formatE(ptr dead_on_unwind writable sret(%"struct.absl::lts_20240116::strings_internal::ParsedFloat") align 8, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN4absl12lts_2024011616strings_internal10ParseFloatILi10EEENS1_11ParsedFloatEPKcS5_NS0_12chars_formatE(ptr dead_on_unwind writable sret(%"struct.absl::lts_20240116::strings_internal::ParsedFloat") align 8, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare double @nan(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2024011612_GLOBAL__N_111MustRoundUpEmiRKNS0_16strings_internal11ParsedFloatE(i64 noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(48) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 4 uses
  %3 = alloca %"class.absl::lts_20240116::strings_internal::BigUnsigned", align 4 ; 27 uses
  %4 = alloca %"class.absl::lts_20240116::strings_internal::BigUnsigned", align 4 ; 10 uses
  %5 = alloca %"class.absl::lts_20240116::strings_internal::BigUnsigned", align 4 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(340) %3, i8 0, i64 340, i1 false)
  %i.b = call noundef i32 @_ZN4absl12lts_2024011616strings_internal11BigUnsignedILi84EE17ReadFloatMantissaERKNS1_11ParsedFloatEi(ptr noundef nonnull align 4 dereferenceable(340) %3, ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef 768) ; 10 uses
  %i.c = shl i64 %0, 1                            ; 4 uses
  %i.d = or disjoint i64 %i.c, 1                  ; 6 uses
  %i.e = add i32 %1, -1                           ; 5 uses
  %i.f = icmp sgt i32 %i.b, -1
  br i1 %i.f, label %bb.b, label %bb.aa

bb.b:                                             ; preds = %bb.a
  call void @_ZN4absl12lts_2024011616strings_internal11BigUnsignedILi84EE22MultiplyByFiveToTheNthEi(ptr noundef nonnull align 4 dereferenceable(340) %3, i32 noundef %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %.not.i = icmp ult i64 %i.c, 4294967296
  %i.g = select i1 %.not.i, i32 1, i32 2          ; 3 uses
  store i32 %i.g, ptr %4, align 4, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(328) %i.i, i8 0, i64 328, i1 false)
  store i64 %i.d, ptr %i.h, align 4
  %.not32 = icmp slt i32 %i.b, %1
  %i.j = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %.not32, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = sub nsw i32 %i.b, %i.e                   ; 5 uses
  %i.l = lshr i32 %i.k, 5                         ; 7 uses
  %i.m = icmp samesign ugt i32 %i.k, 2687
  %i.n = load i32, ptr %3, align 4, !tbaa !26     ; 3 uses
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = icmp slt i32 %i.n, 1
  br i1 %i.o, label %_ZN4absl12lts_2024011616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.q = zext nneg i32 %i.n to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.q, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.p, i8 0, i64 %.idx.i.i.i.i, i1 false), !tbaa !28
  br label %_ZN4absl12lts_2024011616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i

_ZN4absl12lts_2024011616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i: ; preds = %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i, %bb.d
  store i32 0, ptr %3, align 4, !tbaa !26
  br label %_ZN4absl12lts_2024011616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit

bb.e:                                             ; preds = %bb.c
  %i.r = add nsw i32 %i.n, %i.l                   ; 3 uses
  %.sroa.speculated28.i = call i32 @llvm.smin.i32(i32 %i.r, i32 84) ; 4 uses
  store i32 %.sroa.speculated28.i, ptr %3, align 4, !tbaa !26
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
  br i1 %i.ab, label %bb.g, label %bb.h, !prof !29

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
  %i.ag = load i32, ptr %i.u, align 4, !tbaa !28
  store i32 %i.ag, ptr %i.af, align 4, !tbaa !28
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i

bb.j:                                             ; preds = %bb.e
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.r, i32 83) ; 2 uses
  %i.ah = icmp sgt i32 %.sroa.speculated.i, %i.l
  br i1 %i.ah, label %.lr.ph.i, label %.._crit_edge_crit_edge.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.j
  %.pre.i = zext nneg i32 %i.l to i64
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.aj = zext nneg i32 %.sroa.speculated.i to i64 ; 5 uses
  %i.ak = zext nneg i32 %i.l to i64               ; 6 uses
  %i.al = add nsw i64 %i.aj, -1
  %i.am = call i64 @llvm.umin.i64(i64 %i.ak, i64 %i.al)
  %i.an = sub nsw i64 %i.aj, %i.am                ; 3 uses
  %min.iters.check175 = icmp ult i64 %i.an, 8
  br i1 %min.iters.check175, label %scalar.ph174.preheader, label %vector.ph176

vector.ph176:                                     ; preds = %.lr.ph.i
  %n.vec177 = and i64 %i.an, -8                   ; 3 uses
  %i.ao = sub nsw i64 %i.aj, %n.vec177
  %broadcast.splatinsert178 = insertelement <8 x i32> poison, i32 %i.k, i64 0
  %i.ap = shufflevector <8 x i32> %broadcast.splatinsert178, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body180

vector.body180:                                   ; preds = %vector.body180, %vector.ph176
  %index181 = phi i64 [ 0, %vector.ph176 ], [ %index.next187, %vector.body180 ] ; 2 uses
  %i.aq = sub i64 %i.aj, %index181                ; 2 uses
  %i.ar = sub nuw nsw i64 %i.aq, %i.ak
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -28
  %wide.load182 = load <8 x i32>, ptr %i.at, align 4, !tbaa !28
  %i.au = getelementptr i8, ptr %i.as, i64 -32
  %wide.load184 = load <8 x i32>, ptr %i.au, align 4, !tbaa !28
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.aq
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -28
  %reverse186 = call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %wide.load182, <8 x i32> %wide.load184, <8 x i32> %i.ap)
  store <8 x i32> %reverse186, ptr %i.aw, align 4, !tbaa !28
  %index.next187 = add nuw i64 %index181, 8       ; 2 uses
  %i.ax = icmp eq i64 %index.next187, %n.vec177
  br i1 %i.ax, label %middle.block188, label %vector.body180, !llvm.loop !30

middle.block188:                                  ; preds = %vector.body180
  %cmp.n189 = icmp eq i64 %i.an, %n.vec177
  br i1 %cmp.n189, label %._crit_edge.i, label %scalar.ph174.preheader

scalar.ph174.preheader:                           ; preds = %.lr.ph.i, %middle.block188
  %indvars.iv.i.ph = phi i64 [ %i.aj, %.lr.ph.i ], [ %i.ao, %middle.block188 ]
  br label %scalar.ph174

._crit_edge.i:                                    ; preds = %scalar.ph174, %middle.block188, %.._crit_edge_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.._crit_edge_crit_edge.i ], [ %i.ak, %middle.block188 ], [ %i.ak, %scalar.ph174 ]
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !28
  %i.ba = shl i32 %i.az, %i.s
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.pre-phi.i
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !28
  %i.bc = icmp slt i32 %i.r, 84
  br i1 %i.bc, label %bb.k, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i

scalar.ph174:                                     ; preds = %scalar.ph174.preheader, %scalar.ph174
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph174 ], [ %indvars.iv.i.ph, %scalar.ph174.preheader ] ; 3 uses
  %i.bd = sub nuw nsw i64 %indvars.iv.i, %i.ak
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bd ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !28
  %i.bg = getelementptr i8, ptr %i.be, i64 -4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !28
  %i.bi = call i32 @llvm.fshl.i32(i32 %i.bf, i32 %i.bh, i32 %i.k)
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !28
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.bk = icmp samesign ugt i64 %indvars.iv.next.i, %i.ak
  br i1 %i.bk, label %scalar.ph174, label %._crit_edge.i, !llvm.loop !34

bb.k:                                             ; preds = %._crit_edge.i
  %i.bl = sext i32 %.sroa.speculated28.i to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !28
  %.not.i34 = icmp eq i32 %i.bn, 0
  br i1 %.not.i34, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = add nsw i32 %.sroa.speculated28.i, 1
  store i32 %i.bo, ptr %3, align 4, !tbaa !26
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i

_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i:     ; preds = %bb.l, %bb.k, %._crit_edge.i, %bb.i, %bb.h, %bb.g
  %i.bp = icmp eq i32 %i.l, 0
  br i1 %i.bp, label %_ZN4absl12lts_2024011616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i:   ; preds = %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.br = shl nuw nsw i32 %i.l, 2
  %.idx.i.i.i = zext nneg i32 %i.br to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bq, i8 0, i64 %.idx.i.i.i, i1 false), !tbaa !28
  br label %_ZN4absl12lts_2024011616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit

bb.m:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2024011612_GLOBAL__N_111MustRoundUpEmiRKNS0_16strings_internal11ParsedFloatE:bb.a
  %i.is = getelementptr inbounds [4 x i8], ptr %i.il, i64 %i.ir
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.is, ptr nonnull align 4 %i.ij, i64 %i.io, i1 false)
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i80

bb.av:                                            ; preds = %bb.at
  %i.it = icmp eq i64 %i.io, 4
  br i1 %i.it, label %bb.aw, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i80

bb.aw:                                            ; preds = %bb.av
  %i.iu = getelementptr inbounds i8, ptr %i.il, i64 -4
  %i.iv = load i32, ptr %i.ij, align 4, !tbaa !28
  store i32 %i.iv, ptr %i.iu, align 4, !tbaa !28
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i80

bb.ax:                                            ; preds = %bb.as
  %.sroa.speculated.i75 = call i32 @llvm.smin.i32(i32 %i.ig, i32 83) ; 2 uses
  %i.iw = icmp sgt i32 %.sroa.speculated.i75, %i.ia
  br i1 %i.iw, label %.lr.ph.i84, label %.._crit_edge_crit_edge.i76

.._crit_edge_crit_edge.i76:                       ; preds = %bb.ax
  %.pre.i77 = zext nneg i32 %i.ia to i64
  br label %._crit_edge.i78

.lr.ph.i84:                                       ; preds = %bb.ax
  %i.ix = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 4 uses
  %i.iy = zext nneg i32 %.sroa.speculated.i75 to i64 ; 5 uses
  %i.iz = zext nneg i32 %i.ia to i64              ; 6 uses
  %i.ja = add nsw i64 %i.iy, -1
  %i.jb = call i64 @llvm.umin.i64(i64 %i.iz, i64 %i.ja)
  %i.jc = sub nsw i64 %i.iy, %i.jb                ; 3 uses
  %min.iters.check158 = icmp ult i64 %i.jc, 8
  br i1 %min.iters.check158, label %scalar.ph157.preheader, label %vector.ph159

vector.ph159:                                     ; preds = %.lr.ph.i84
  %n.vec160 = and i64 %i.jc, -8                   ; 3 uses
  %i.jd = sub nsw i64 %i.iy, %n.vec160
  %broadcast.splatinsert161 = insertelement <8 x i32> poison, i32 %i.hy, i64 0
  %i.je = shufflevector <8 x i32> %broadcast.splatinsert161, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %vector.ph159
  %index164 = phi i64 [ 0, %vector.ph159 ], [ %index.next170, %vector.body163 ] ; 2 uses
  %i.jf = sub i64 %i.iy, %index164                ; 2 uses
  %i.jg = sub nuw nsw i64 %i.jf, %i.iz
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %i.jg ; 2 uses
  %i.ji = getelementptr inbounds i8, ptr %i.jh, i64 -28
  %wide.load165 = load <8 x i32>, ptr %i.ji, align 4, !tbaa !28
  %i.jj = getelementptr i8, ptr %i.jh, i64 -32
  %wide.load167 = load <8 x i32>, ptr %i.jj, align 4, !tbaa !28
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %i.jf
  %i.jl = getelementptr inbounds i8, ptr %i.jk, i64 -28
  %reverse169 = call <8 x i32> @llvm.fshl.v8i32(<8 x i32> %wide.load165, <8 x i32> %wide.load167, <8 x i32> %i.je)
  store <8 x i32> %reverse169, ptr %i.jl, align 4, !tbaa !28
  %index.next170 = add nuw i64 %index164, 8       ; 2 uses
  %i.jm = icmp eq i64 %index.next170, %n.vec160
  br i1 %i.jm, label %middle.block171, label %vector.body163, !llvm.loop !42

middle.block171:                                  ; preds = %vector.body163
  %cmp.n172 = icmp eq i64 %i.jc, %n.vec160
  br i1 %cmp.n172, label %._crit_edge.i78, label %scalar.ph157.preheader

scalar.ph157.preheader:                           ; preds = %.lr.ph.i84, %middle.block171
  %indvars.iv.i85.ph = phi i64 [ %i.iy, %.lr.ph.i84 ], [ %i.jd, %middle.block171 ]
  br label %scalar.ph157

._crit_edge.i78:                                  ; preds = %scalar.ph157, %middle.block171, %.._crit_edge_crit_edge.i76
  %.pre-phi.i79 = phi i64 [ %.pre.i77, %.._crit_edge_crit_edge.i76 ], [ %i.iz, %middle.block171 ], [ %i.iz, %scalar.ph157 ]
  %i.jn = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !28
  %i.jp = shl i32 %i.jo, %i.ih
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %.pre-phi.i79
  store i32 %i.jp, ptr %i.jq, align 4, !tbaa !28
  %i.jr = icmp slt i32 %i.ig, 84
  br i1 %i.jr, label %bb.ay, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i80

scalar.ph157:                                     ; preds = %scalar.ph157.preheader, %scalar.ph157
  %indvars.iv.i85 = phi i64 [ %indvars.iv.next.i86, %scalar.ph157 ], [ %indvars.iv.i85.ph, %scalar.ph157.preheader ] ; 3 uses
  %i.js = sub nuw nsw i64 %indvars.iv.i85, %i.iz
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %i.js ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !28
  %i.jv = getelementptr i8, ptr %i.jt, i64 -4
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !28
  %i.jx = call i32 @llvm.fshl.i32(i32 %i.ju, i32 %i.jw, i32 %i.hy)
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv.i85
  store i32 %i.jx, ptr %i.jy, align 4, !tbaa !28
  %indvars.iv.next.i86 = add nsw i64 %indvars.iv.i85, -1 ; 2 uses
  %i.jz = icmp samesign ugt i64 %indvars.iv.next.i86, %i.iz
  br i1 %i.jz, label %scalar.ph157, label %._crit_edge.i78, !llvm.loop !43

bb.ay:                                            ; preds = %._crit_edge.i78
  %i.ka = sext i32 %.sroa.speculated28.i74 to i64
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.jn, i64 %i.ka
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !28
  %.not.i83 = icmp eq i32 %i.kc, 0
  br i1 %.not.i83, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i80, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.kd = add nsw i32 %.sroa.speculated28.i74, 1
  store i32 %i.kd, ptr %5, align 4, !tbaa !26
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i80

_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i80:   ; preds = %bb.az, %bb.ay, %._crit_edge.i78, %bb.aw, %bb.av, %bb.au
  %i.ke = icmp eq i32 %i.ia, 0
  br i1 %i.ke, label %_ZN4absl12lts_2024011616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit73, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i81

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i81: ; preds = %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i80
  %i.kf = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.kg = shl nuw nsw i32 %i.ia, 2
  %.idx.i.i.i82 = zext nneg i32 %i.kg to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.kf, i8 0, i64 %.idx.i.i.i82, i1 false), !tbaa !28
  br label %_ZN4absl12lts_2024011616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit73

_ZN4absl12lts_2024011616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit73: ; preds = %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i81, %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i80, %_ZN4absl12lts_2024011616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i90, %bb.ap, %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i63, %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i62, %_ZN4absl12lts_2024011616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i72
  %i.kh = load i32, ptr %3, align 4, !tbaa !26    ; 2 uses
  %i.ki = load i32, ptr %5, align 4, !tbaa !26    ; 2 uses
  %.sroa.speculated.i92 = call i32 @llvm.smax.i32(i32 %i.kh, i32 %i.ki) ; 3 uses
  %i.kj = icmp slt i32 %.sroa.speculated.i92, 1
  br i1 %i.kj, label %_ZN4absl12lts_2024011616strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit107, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4absl12lts_2024011616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit73
  %i.kk = zext nneg i32 %.sroa.speculated.i92 to i64
  br label %bb.bb

bb.ba:                                            ; preds = %_ZNK4absl12lts_2024011616strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i99
  %i.kl = trunc nuw i64 %i.ko to i32              ; 2 uses
  %i.km = icmp slt i32 %i.kl, 1
  br i1 %i.km, label %_ZN4absl12lts_2024011616strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit107, label %bb.bb, !llvm.loop !37

bb.bb:                                            ; preds = %.lr.ph, %bb.ba
  %i.kn = phi i32 [ %.sroa.speculated.i92, %.lr.ph ], [ %i.kl, %bb.ba ] ; 2 uses
  %.017.i94147 = phi i32 [ undef, %.lr.ph ], [ %.118.i104, %bb.ba ]
  %indvars.iv.i93146 = phi i64 [ %i.kk, %.lr.ph ], [ %i.ko, %bb.ba ] ; 3 uses
  %i.ko = add nsw i64 %indvars.iv.i93146, -1      ; 2 uses
  %.not.i.not.i95 = icmp slt i32 %i.kh, %i.kn
  br i1 %.not.i.not.i95, label %_ZNK4absl12lts_2024011616strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i96, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kp = getelementptr [4 x i8], ptr %3, i64 %indvars.iv.i93146
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !28
  br label %_ZNK4absl12lts_2024011616strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i96

_ZNK4absl12lts_2024011616strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i96: ; preds = %bb.bc, %bb.bb
  %.0.i.i97 = phi i32 [ %i.kq, %bb.bc ], [ 0, %bb.bb ] ; 3 uses
  %.not.i21.not.i98 = icmp slt i32 %i.ki, %i.kn
  br i1 %.not.i21.not.i98, label %_ZNK4absl12lts_2024011616strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i99, label %bb.bd

bb.bd:                                            ; preds = %_ZNK4absl12lts_2024011616strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i96
  %i.kr = getelementptr [4 x i8], ptr %5, i64 %indvars.iv.i93146
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !28
  br label %_ZNK4absl12lts_2024011616strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i99

_ZNK4absl12lts_2024011616strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i99: ; preds = %bb.bd, %_ZNK4absl12lts_2024011616strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i96
  %.0.i23.i100 = phi i32 [ %i.ks, %bb.bd ], [ 0, %_ZNK4absl12lts_2024011616strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i96 ] ; 3 uses
  %.not.i101 = icmp ult i32 %.0.i.i97, %.0.i23.i100
  %.not28.i102 = icmp ugt i32 %.0.i.i97, %.0.i23.i100
  %..017.i103 = select i1 %.not28.i102, i32 1, i32 %.017.i94147
  %.118.i104 = select i1 %.not.i101, i32 -1, i32 %..017.i103 ; 2 uses
  %cond1.i105 = icmp eq i32 %.0.i.i97, %.0.i23.i100
  br i1 %cond1.i105, label %bb.ba, label %_ZNK4absl12lts_2024011616strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i99._ZN4absl12lts_2024011616strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit107_crit_edge, !llvm.loop !37

_ZNK4absl12lts_2024011616strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i99._ZN4absl12lts_2024011616strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit107_crit_edge: ; preds = %_ZNK4absl12lts_2024011616strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i99
  br label %_ZN4absl12lts_2024011616strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit107, !llvm.loop !37

_ZN4absl12lts_2024011616strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit107: ; preds = %bb.ba, %_ZNK4absl12lts_2024011616strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i99._ZN4absl12lts_2024011616strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit107_crit_edge, %_ZN4absl12lts_2024011616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit73
  %spec.select.i106 = phi i32 [ %.118.i104, %_ZNK4absl12lts_2024011616strings_internal11BigUnsignedILi84EE7GetWordEi.exit24.i99._ZN4absl12lts_2024011616strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit107_crit_edge ], [ 0, %_ZN4absl12lts_2024011616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit73 ], [ 0, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.be

bb.be:                                            ; preds = %_ZN4absl12lts_2024011616strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit107, %_ZN4absl12lts_2024011616strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit
  %.0 = phi i32 [ %spec.select.i, %_ZN4absl12lts_2024011616strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit ], [ %spec.select.i106, %_ZN4absl12lts_2024011616strings_internal7CompareILi84ELi84EEEiRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit107 ] ; 2 uses
  %i.kt = icmp sgt i32 %.0, -1
  %.not33 = icmp ne i32 %.0, 0
  %i.ku = trunc i64 %0 to i1
  %spec.select = or i1 %.not33, %i.ku
  %.028 = and i1 %i.kt, %spec.select
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret i1 %.028
}

declare noundef i32 @_ZN4absl12lts_2024011616strings_internal11BigUnsignedILi84EE17ReadFloatMantissaERKNS1_11ParsedFloatEi(ptr noundef nonnull align 4 dereferenceable(340), ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare void @_ZN4absl12lts_2024011616strings_internal11BigUnsignedILi84EE22MultiplyByFiveToTheNthEi(ptr noundef nonnull align 4 dereferenceable(340), i32 noundef) local_unnamed_addr #0 align 2

declare void @_ZN4absl12lts_2024011616strings_internal11BigUnsignedILi84EE12FiveToTheNthEi(ptr dead_on_unwind writable sret(%"class.absl::lts_20240116::strings_internal::BigUnsigned") align 4, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @_ZN4absl12lts_2024011616strings_internal11BigUnsignedILi84EE12MultiplyStepEiPKjii(ptr noundef nonnull align 4 dereferenceable(340), i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

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

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.fshl.v8i32(<8 x i32>, <8 x i32>, <8 x i32>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
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
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !13, i64 40}
!10 = !{!"_ZTSN4absl12lts_2024011616strings_internal11ParsedFloatE", !11, i64 0, !5, i64 8, !5, i64 12, !12, i64 16, !13, i64 24, !13, i64 32, !13, i64 40}
!11 = !{!"long", !6, i64 0}
!12 = !{!"_ZTSN4absl12lts_2024011616strings_internal9FloatTypeE", !6, i64 0}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"double", !6, i64 0}
!17 = !{!10, !11, i64 0}
!18 = !{!10, !5, i64 8}
!19 = !{!10, !12, i64 16}
!20 = !{!10, !13, i64 24}
!21 = !{!10, !13, i64 32}
!22 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!23 = !{!11, !11, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"float", !6, i64 0}
!26 = !{!27, !5, i64 0}
!27 = !{!"_ZTSN4absl12lts_2024011616strings_internal11BigUnsignedILi84EEE", !5, i64 0, !6, i64 4}
!28 = !{!5, !5, i64 0}
!29 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!30 = distinct !{!30, !31, !32, !33}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"llvm.loop.isvectorized", i32 1}
!33 = !{!"llvm.loop.unroll.runtime.disable"}
!34 = distinct !{!34, !31, !33, !32}
!35 = distinct !{!35, !31, !32, !33}
!36 = distinct !{!36, !31, !33, !32}
!37 = distinct !{!37, !31}
!38 = distinct !{!38, !31}
!39 = distinct !{!39, !31}
!40 = distinct !{!40, !31, !32, !33}
!41 = distinct !{!41, !31, !33, !32}
!42 = distinct !{!42, !31, !32, !33}
!43 = distinct !{!43, !31, !33, !32}
end_hunk_1
