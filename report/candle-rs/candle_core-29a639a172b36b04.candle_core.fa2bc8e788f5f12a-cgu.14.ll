Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_core-29a639a172b36b04.candle_core.fa2bc8e788f5f12a-cgu.14?download=true
inline.NumInlined: 1160
inline.NumDeleted: 448
loop-unroll.NumCompletelyUnrolled: 107
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 128
begin_hunk_0_@_RNvXNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2_9BlockQ4_0NtB2_8GgmlType13vec_dot_unopt:bb.a
.split:                                           ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ4_0EIBX_NtB1o_9BlockQ8_0EEINtB5_7ZipImplBW_B2n_E4nextB1s_.exit
  %i.ee = tail call noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
  %i.ef = and i128 %i.ee, 18014398509481984
  %.not26 = icmp eq i128 %i.ef, 0
  br i1 %.not26, label %bb.b, label %bb.k

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ4_0EIBX_NtB1o_9BlockQ8_0EEINtB5_7ZipImplBW_B2n_E4nextB1s_.exit
  %i.eg = and i64 %i.ec, 18014398509481984
  %.not = icmp eq i64 %i.eg, 0
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %.split, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.eh = and i16 %i.eb, 32767
  %i.ei = icmp eq i16 %i.eh, 0
  br i1 %i.ei, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ej = zext i16 %i.eb to i32
  %i.ek = shl nuw i32 %i.ej, 16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.d:                                             ; preds = %bb.b
  %i.el = and i16 %i.eb, -32768
  %i.em = zext i16 %i.el to i32                   ; 2 uses
  %i.en = and i16 %i.eb, 31744                    ; 3 uses
  %i.eo = and i16 %i.eb, 1023                     ; 3 uses
  %i.ep = zext nneg i16 %i.eo to i32              ; 3 uses
  %i.eq = icmp eq i16 %i.en, 31744
  br i1 %i.eq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.er = icmp eq i16 %i.eo, 0
  %i.es = shl nuw i32 %i.em, 16                   ; 2 uses
  br i1 %i.er, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.et = shl nuw i32 %i.em, 16                   ; 2 uses
  %i.eu = icmp eq i16 %i.en, 0
  br i1 %i.eu, label %bb.i, label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.ev = or disjoint i32 %i.es, 2139095040
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.h:                                             ; preds = %bb.e
  %i.ew = shl nuw nsw i32 %i.ep, 13
  %i.ex = or disjoint i32 %i.es, %i.ew
  %i.ey = or i32 %i.ex, 2143289344
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.i:                                             ; preds = %bb.f
  %i.ez = tail call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.eo, i1 false)
  %i.fa = zext nneg i16 %i.ez to i32              ; 2 uses
  %i.fb = add nuw nsw i32 %i.fa, 8
  %i.fc = shl i32 %i.ep, %i.fb
  %i.fd = and i32 %i.fc, 8388607
  %reass.sub.i = or disjoint i32 %i.et, 989855744
  %i.fe = shl nuw nsw i32 %i.fa, 23
  %i.ff = sub nuw nsw i32 %reass.sub.i, %i.fe
  %i.fg = or disjoint i32 %i.ff, %i.fd
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.j:                                             ; preds = %bb.f
  %i.fh = lshr exact i16 %i.en, 10
  %narrow.i = add nuw nsw i16 %i.fh, 112
  %i.fi = zext nneg i16 %narrow.i to i32
  %i.fj = shl nuw nsw i32 %i.fi, 23
  %i.fk = shl nuw nsw i32 %i.ep, 13
  %i.fl = or disjoint i32 %i.fj, %i.fk
  %i.fm = or disjoint i32 %i.fl, %i.et
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit: ; preds = %bb.c, %bb.g, %bb.h, %bb.i, %bb.j
  %.sroa.0.0.i12 = phi i32 [ %i.ek, %bb.c ], [ %i.ev, %bb.g ], [ %i.ey, %bb.h ], [ %i.fg, %bb.i ], [ %i.fm, %bb.j ]
  %i.fn = bitcast i32 %.sroa.0.0.i12 to float
  br label %bb.l

bb.k:                                             ; preds = %.split, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.fo = tail call fastcc noundef float @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.eb) #30
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit
  %.sroa.08.0 = phi float [ %i.fo, %bb.k ], [ %i.fn, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit ]
  %i.fp = fmul float %.sroa.08.0, %i.ea
  %i.fq = load i16, ptr %i.f, align 2, !noundef !7 ; 6 uses
  %i.fr = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.fs = icmp eq i64 %i.fr, 0
  br i1 %i.fs, label %.split25, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit14, !prof !14

.split25:                                         ; preds = %bb.l
  %i.ft = tail call noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
  %i.fu = and i128 %i.ft, 18014398509481984
  %.not28 = icmp eq i128 %i.fu, 0
  br i1 %.not28, label %bb.m, label %bb.v

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit14: ; preds = %bb.l
  %i.fv = and i64 %i.fr, 18014398509481984
  %.not27 = icmp eq i64 %i.fv, 0
  br i1 %.not27, label %bb.m, label %bb.v

bb.m:                                             ; preds = %.split25, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit14
  %i.fw = and i16 %i.fq, 32767
  %i.fx = icmp eq i16 %i.fw, 0
  br i1 %i.fx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fy = zext i16 %i.fq to i32
  %i.fz = shl nuw i32 %i.fy, 16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit18

bb.o:                                             ; preds = %bb.m
  %i.ga = and i16 %i.fq, -32768
  %i.gb = zext i16 %i.ga to i32                   ; 2 uses
  %i.gc = and i16 %i.fq, 31744                    ; 3 uses
  %i.gd = and i16 %i.fq, 1023                     ; 3 uses
  %i.ge = zext nneg i16 %i.gd to i32              ; 3 uses
  %i.gf = icmp eq i16 %i.gc, 31744
  br i1 %i.gf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.gg = icmp eq i16 %i.gd, 0
  %i.gh = shl nuw i32 %i.gb, 16                   ; 2 uses
  br i1 %i.gg, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.gi = shl nuw i32 %i.gb, 16                   ; 2 uses
  %i.gj = icmp eq i16 %i.gc, 0
  br i1 %i.gj, label %bb.t, label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.gk = or disjoint i32 %i.gh, 2139095040
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit18

bb.s:                                             ; preds = %bb.p
  %i.gl = shl nuw nsw i32 %i.ge, 13
  %i.gm = or disjoint i32 %i.gh, %i.gl
  %i.gn = or i32 %i.gm, 2143289344
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit18

bb.t:                                             ; preds = %bb.q
  %i.go = tail call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.gd, i1 false)
  %i.gp = zext nneg i16 %i.go to i32              ; 2 uses
  %i.gq = add nuw nsw i32 %i.gp, 8
  %i.gr = shl i32 %i.ge, %i.gq
  %i.gs = and i32 %i.gr, 8388607
  %reass.sub.i17 = or disjoint i32 %i.gi, 989855744
  %i.gt = shl nuw nsw i32 %i.gp, 23
  %i.gu = sub nuw nsw i32 %reass.sub.i17, %i.gt
  %i.gv = or disjoint i32 %i.gu, %i.gs
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit18

bb.u:                                             ; preds = %bb.q
  %i.gw = lshr exact i16 %i.gc, 10
  %narrow.i15 = add nuw nsw i16 %i.gw, 112
  %i.gx = zext nneg i16 %narrow.i15 to i32
  %i.gy = shl nuw nsw i32 %i.gx, 23
  %i.gz = shl nuw nsw i32 %i.ge, 13
  %i.ha = or disjoint i32 %i.gy, %i.gz
  %i.hb = or disjoint i32 %i.ha, %i.gi
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit18

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit18: ; preds = %bb.n, %bb.r, %bb.s, %bb.t, %bb.u
  %.sroa.0.0.i16 = phi i32 [ %i.fz, %bb.n ], [ %i.gk, %bb.r ], [ %i.gn, %bb.s ], [ %i.gv, %bb.t ], [ %i.hb, %bb.u ]
  %i.hc = bitcast i32 %.sroa.0.0.i16 to float
  br label %bb.w

bb.v:                                             ; preds = %.split25, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit14
  %i.hd = tail call fastcc noundef float @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.fq) #30
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit18
  %.sroa.09.0 = phi float [ %i.hd, %bb.v ], [ %i.hc, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit18 ]
  %i.he = fmul float %i.fp, %.sroa.09.0
  %i.hf = fadd float %.sroa.0.033, %i.he          ; 2 uses
  %exitcond.not = icmp eq i64 %i.dz, %.sroa.7.0.copyload
  br i1 %exitcond.not, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ4_0EIBX_NtB1o_9BlockQ8_0EEINtB5_7ZipImplBW_B2n_E4nextB1s_.exit.thread, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ4_0EIBX_NtB1o_9BlockQ8_0EEINtB5_7ZipImplBW_B2n_E4nextB1s_.exit
}

; Function Attrs: nonlazybind uwtable
define noundef float @_RNvXNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2_9BlockQ4_0NtB2_8GgmlType7vec_dot(i64 noundef %0, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 512409557603043101) %2, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %3, i64 noundef range(i64 0, 271275648142787524) %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef float @_RNvXNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2_9BlockQ4_0NtB2_8GgmlType13vec_dot_unopt(i64 poison, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %3, i64 noundef %4)
  ret float %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2_9BlockQ4_0NtB2_8GgmlType8to_float(ptr noalias nofree noundef nonnull readonly align 2 captures(none) %0, i64 noundef range(i64 0, 512409557603043101) %1, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %3, 5                           ; 2 uses
  %.not22 = icmp eq i64 %i.a, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %bb.q
  %exitcond32.not = icmp eq i64 %i.b, %i.a
  br i1 %exitcond32.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.sroa.05.021 = phi i64 [ %i.b, %.loopexit ], [ 0, %bb.a ] ; 6 uses
  %4 = mul nsw i64 %.sroa.05.021, -32             ; 2 uses
  %5 = add i64 %4, -16
  %6 = shl nuw nsw i64 %.sroa.05.021, 5
  %7 = or disjoint i64 %6, 16
  %i.b = add nuw nsw i64 %.sroa.05.021, 1         ; 2 uses
  %exitcond31.not = icmp eq i64 %.sroa.05.021, %1
  br i1 %exitcond31.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw [18 x i8], ptr %0, i64 %.sroa.05.021 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !noundef !7 ; 6 uses
  %i.e = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.split, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit, !prof !14

.split:                                           ; preds = %bb.b
  %i.g = tail call noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
  %i.h = and i128 %i.g, 18014398509481984
  %.not14 = icmp eq i128 %i.h, 0
  br i1 %.not14, label %bb.d, label %bb.m

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit: ; preds = %bb.b
  %i.i = and i64 %i.e, 18014398509481984
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.m

bb.c:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #32
  unreachable

bb.d:                                             ; preds = %.split, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.j = and i16 %i.d, 32767
  %i.k = icmp eq i16 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = zext i16 %i.d to i32
  %i.m = shl nuw i32 %i.l, 16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.f:                                             ; preds = %bb.d
  %i.n = and i16 %i.d, -32768
  %i.o = zext i16 %i.n to i32                     ; 2 uses
  %i.p = and i16 %i.d, 31744                      ; 3 uses
  %i.q = and i16 %i.d, 1023                       ; 3 uses
  %i.r = zext nneg i16 %i.q to i32                ; 3 uses
  %i.s = icmp eq i16 %i.p, 31744
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = icmp eq i16 %i.q, 0
  %i.u = shl nuw i32 %i.o, 16                     ; 2 uses
  br i1 %i.t, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.v = shl nuw i32 %i.o, 16                     ; 2 uses
  %i.w = icmp eq i16 %i.p, 0
  br i1 %i.w, label %bb.k, label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.x = or disjoint i32 %i.u, 2139095040
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.j:                                             ; preds = %bb.g
  %i.y = shl nuw nsw i32 %i.r, 13
  %i.z = or disjoint i32 %i.u, %i.y
  %i.aa = or i32 %i.z, 2143289344
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.k:                                             ; preds = %bb.h
  %i.ab = tail call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.q, i1 false)
  %i.ac = zext nneg i16 %i.ab to i32              ; 2 uses
  %i.ad = add nuw nsw i32 %i.ac, 8
  %i.ae = shl i32 %i.r, %i.ad
  %i.af = and i32 %i.ae, 8388607
  %reass.sub.i = or disjoint i32 %i.v, 989855744
  %i.ag = shl nuw nsw i32 %i.ac, 23
  %i.ah = sub nuw nsw i32 %reass.sub.i, %i.ag
  %i.ai = or disjoint i32 %i.ah, %i.af
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.l:                                             ; preds = %bb.h
  %i.aj = lshr exact i16 %i.p, 10
  %narrow.i = add nuw nsw i16 %i.aj, 112
  %i.ak = zext nneg i16 %narrow.i to i32
  %i.al = shl nuw nsw i32 %i.ak, 23
  %i.am = shl nuw nsw i32 %i.r, 13
  %i.an = or disjoint i32 %i.al, %i.am
  %i.ao = or disjoint i32 %i.an, %i.v
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit: ; preds = %bb.e, %bb.i, %bb.j, %bb.k, %bb.l
  %.sroa.0.0.i = phi i32 [ %i.m, %bb.e ], [ %i.x, %bb.i ], [ %i.aa, %bb.j ], [ %i.ai, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = bitcast i32 %.sroa.0.0.i to float
  br label %bb.n

bb.m:                                             ; preds = %.split, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.aq = tail call fastcc noundef float @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.d) #30
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit
  %.sroa.01.0 = phi float [ %i.aq, %bb.m ], [ %i.ap, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.as = shl nuw nsw i64 %.sroa.05.021, 5        ; 3 uses
  %i.at = tail call i64 @llvm.umax.i64(i64 %3, i64 %7)
  %i.au = add i64 %i.at, %5
  %i.av = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.as)
  %i.aw = add i64 %i.av, %4
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.au, i64 %i.aw) ; 2 uses
  %min.iters.check = icmp ult i64 %i.ax, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.n
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 15)
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %i.ba = and i64 %i.az, 3                        ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  %i.bc = select i1 %i.bb, i64 4, i64 %i.ba
  %n.vec = sub nsw i64 %i.az, %i.bc               ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.01.0, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index
  %wide.load = load <4 x i8>, ptr %i.bd, align 2  ; 2 uses
  %i.be = add nuw nsw i64 %index, %i.as           ; 2 uses
  %i.bf = and <4 x i8> %wide.load, splat (i8 15)
  %i.bg = zext nneg <4 x i8> %i.bf to <4 x i16>
  %i.bh = add nsw <4 x i16> %i.bg, splat (i16 -8)
  %i.bi = sitofp <4 x i16> %i.bh to <4 x float>
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.be
  %i.bk = fmul <4 x float> %broadcast.splat, %i.bi
  store <4 x float> %i.bk, ptr %i.bj, align 4
  %i.bl = lshr <4 x i8> %wide.load, splat (i8 4)
  %i.bm = zext nneg <4 x i8> %i.bl to <4 x i16>
  %i.bn = add nsw <4 x i16> %i.bm, splat (i16 -8)
  %i.bo = sitofp <4 x i16> %i.bn to <4 x float>
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.be
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  %i.br = fmul <4 x float> %broadcast.splat, %i.bo
  store <4 x float> %i.br, ptr %i.bq, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %scalar.ph.preheader, label %vector.body, !llvm.loop !713

scalar.ph.preheader:                              ; preds = %vector.body, %bb.n
  %.sroa.07.020.ph = phi i64 [ 0, %bb.n ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.q
  %.sroa.07.020 = phi i64 [ %i.bt, %bb.q ], [ %.sroa.07.020.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bt = add nuw nsw i64 %.sroa.07.020, 1        ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.07.020
  %i.bv = load i8, ptr %i.bu, align 1, !noundef !7 ; 2 uses
  %i.bw = add nuw nsw i64 %.sroa.07.020, %i.as    ; 4 uses
  %i.bx = icmp samesign ult i64 %i.bw, %3
  br i1 %i.bx, label %bb.o, label %bb.p

bb.o:                                             ; preds = %scalar.ph
  %i.by = and i8 %i.bv, 15
  %i.bz = zext nneg i8 %i.by to i16
  %i.ca = add nsw i16 %i.bz, -8
  %i.cb = sitofp i16 %i.ca to float
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bw
  %i.cd = fmul float %.sroa.01.0, %i.cb
  store float %i.cd, ptr %i.cc, align 4
  %i.ce = or disjoint i64 %i.bw, 16               ; 3 uses
  %i.cf = icmp samesign ult i64 %i.ce, %3
  br i1 %i.cf, label %bb.q, label %bb.r

bb.p:                                             ; preds = %scalar.ph
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bw, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #32
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.cg = lshr i8 %i.bv, 4
  %i.ch = zext nneg i8 %i.cg to i16
  %i.ci = add nsw i16 %i.ch, -8
  %i.cj = sitofp i16 %i.ci to float
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ce
  %i.cl = fmul float %.sroa.01.0, %i.cj
  store float %i.cl, ptr %i.ck, align 4
  %exitcond.not = icmp eq i64 %i.bt, 16
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !714

bb.r:                                             ; preds = %bb.o
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ce, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_fileNtB2_5MagicINtNtCsf3Ta7LF998c_4core7convert7TryFrommE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [80 x i8], align 8                ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 2 uses
  store i32 %1, ptr %i.c, align 4
  switch i32 %1, label %.split [
    i32 1179993927, label %bb.b
    i32 1195857222, label %bb.b
  ]

.split:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsu_NtNtCsf3Ta7LF998c_4core3fmt3nummNtB7_8LowerHex3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @77, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -9223372036854775766, ptr %i.b, align 8
  call void @_RNvMs_NtCsltEA4u8Pgfu_11candle_core5errorNtB4_5Error2bt(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %.split, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCs5Xr050g3D4S_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !noundef !7
  switch i32 %i.b, label %bb.b [
    i32 3, label %bb.c
    i32 2, label %bb.i
    i32 0, label %bb.f
  ], !prof !715

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @78, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5Xr050g3D4S_3std9backtrace14BacktraceFrameENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %.sink.split unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5Xr050g3D4S_3std9backtrace14BacktraceFrameENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.e, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5Xr050g3D4S_3std9backtrace14BacktraceFrameENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %.sink.split unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5Xr050g3D4S_3std9backtrace14BacktraceFrameENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

.sink.split:                                      ; preds = %bb.f, %bb.c
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5Xr050g3D4S_3std9backtrace14BacktraceFrameENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_9BlockQ5_0NtB5_8GgmlType10from_float(ptr noalias nofree noundef nonnull readonly align 4 captures(address) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef range(i64 0, 419244183493398901) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %.idx = mul nuw nsw i64 %3, 22
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.c = icmp eq i64 %3, 0
  br i1 %i.c, label %._crit_edge41, label %.lr.ph40.preheader

.lr.ph40.preheader:                               ; preds = %bb.a
  %i.d = lshr i64 %1, 5
  br label %.lr.ph40

.lr.ph40:                                         ; preds = %.lr.ph40.preheader, %middle.block
  %.sroa.0.038 = phi ptr [ %i.e, %middle.block ], [ %2, %.lr.ph40.preheader ] ; 4 uses
  %.sroa.7.037 = phi i64 [ %i.f, %middle.block ], [ 0, %.lr.ph40.preheader ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.038, i64 22 ; 2 uses
  %i.f = add nuw nsw i64 %.sroa.7.037, 1
  %i.g = shl nuw nsw i64 %.sroa.7.037, 5          ; 3 uses
  %i.h = add nuw nsw i64 %i.g, 32                 ; 2 uses
  %exitcond46.not = icmp eq i64 %.sroa.7.037, %i.d
  br i1 %exitcond46.not, label %bb.b, label %.lr.ph.preheader, !prof !15

end_hunk_0
begin_hunk_1_@_RNvXs0_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_9BlockQ5_0NtB5_8GgmlType13vec_dot_unopt:bb.a
.split:                                           ; preds = %middle.block
  %i.bv = tail call noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
  %i.bw = and i128 %i.bv, 18014398509481984
  %.not26 = icmp eq i128 %i.bw, 0
  br i1 %.not26, label %bb.b, label %bb.k

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit: ; preds = %middle.block
  %i.bx = and i64 %i.bt, 18014398509481984
  %.not = icmp eq i64 %i.bx, 0
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %.split, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.by = and i16 %i.bs, 32767
  %i.bz = icmp eq i16 %i.by, 0
  br i1 %i.bz, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ca = zext i16 %i.bs to i32
  %i.cb = shl nuw i32 %i.ca, 16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.d:                                             ; preds = %bb.b
  %i.cc = and i16 %i.bs, -32768
  %i.cd = zext i16 %i.cc to i32                   ; 2 uses
  %i.ce = and i16 %i.bs, 31744                    ; 3 uses
  %i.cf = and i16 %i.bs, 1023                     ; 3 uses
  %i.cg = zext nneg i16 %i.cf to i32              ; 3 uses
  %i.ch = icmp eq i16 %i.ce, 31744
  br i1 %i.ch, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ci = icmp eq i16 %i.cf, 0
  %i.cj = shl nuw i32 %i.cd, 16                   ; 2 uses
  br i1 %i.ci, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.ck = shl nuw i32 %i.cd, 16                   ; 2 uses
  %i.cl = icmp eq i16 %i.ce, 0
  br i1 %i.cl, label %bb.i, label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.cm = or disjoint i32 %i.cj, 2139095040
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.h:                                             ; preds = %bb.e
  %i.cn = shl nuw nsw i32 %i.cg, 13
  %i.co = or disjoint i32 %i.cj, %i.cn
  %i.cp = or i32 %i.co, 2143289344
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.i:                                             ; preds = %bb.f
  %i.cq = tail call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.cf, i1 false)
  %i.cr = zext nneg i16 %i.cq to i32              ; 2 uses
  %i.cs = add nuw nsw i32 %i.cr, 8
  %i.ct = shl i32 %i.cg, %i.cs
  %i.cu = and i32 %i.ct, 8388607
  %reass.sub.i = or disjoint i32 %i.ck, 989855744
  %i.cv = shl nuw nsw i32 %i.cr, 23
  %i.cw = sub nuw nsw i32 %reass.sub.i, %i.cv
  %i.cx = or disjoint i32 %i.cw, %i.cu
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.j:                                             ; preds = %bb.f
  %i.cy = lshr exact i16 %i.ce, 10
  %narrow.i = add nuw nsw i16 %i.cy, 112
  %i.cz = zext nneg i16 %narrow.i to i32
  %i.da = shl nuw nsw i32 %i.cz, 23
  %i.db = shl nuw nsw i32 %i.cg, 13
  %i.dc = or disjoint i32 %i.da, %i.db
  %i.dd = or disjoint i32 %i.dc, %i.ck
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit: ; preds = %bb.c, %bb.g, %bb.h, %bb.i, %bb.j
  %.sroa.0.0.i12 = phi i32 [ %i.cb, %bb.c ], [ %i.cm, %bb.g ], [ %i.cp, %bb.h ], [ %i.cx, %bb.i ], [ %i.dd, %bb.j ]
  %i.de = bitcast i32 %.sroa.0.0.i12 to float
  br label %bb.l

bb.k:                                             ; preds = %.split, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.df = tail call fastcc noundef float @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.bs) #30
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit
  %.sroa.08.0 = phi float [ %i.df, %bb.k ], [ %i.de, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit ]
  %i.dg = fmul float %.sroa.08.0, %i.br
  %i.dh = load i16, ptr %i.f, align 2, !noundef !7 ; 6 uses
  %i.di = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %.split25, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit14, !prof !14

.split25:                                         ; preds = %bb.l
  %i.dk = tail call noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
  %i.dl = and i128 %i.dk, 18014398509481984
  %.not28 = icmp eq i128 %i.dl, 0
  br i1 %.not28, label %bb.m, label %bb.v

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit14: ; preds = %bb.l
  %i.dm = and i64 %i.di, 18014398509481984
  %.not27 = icmp eq i64 %i.dm, 0
  br i1 %.not27, label %bb.m, label %bb.v

bb.m:                                             ; preds = %.split25, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit14
  %i.dn = and i16 %i.dh, 32767
  %i.do = icmp eq i16 %i.dn, 0
  br i1 %i.do, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dp = zext i16 %i.dh to i32
  %i.dq = shl nuw i32 %i.dp, 16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit18

bb.o:                                             ; preds = %bb.m
  %i.dr = and i16 %i.dh, -32768
  %i.ds = zext i16 %i.dr to i32                   ; 2 uses
  %i.dt = and i16 %i.dh, 31744                    ; 3 uses
  %i.du = and i16 %i.dh, 1023                     ; 3 uses
  %i.dv = zext nneg i16 %i.du to i32              ; 3 uses
  %i.dw = icmp eq i16 %i.dt, 31744
  br i1 %i.dw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dx = icmp eq i16 %i.du, 0
  %i.dy = shl nuw i32 %i.ds, 16                   ; 2 uses
  br i1 %i.dx, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.dz = shl nuw i32 %i.ds, 16                   ; 2 uses
  %i.ea = icmp eq i16 %i.dt, 0
  br i1 %i.ea, label %bb.t, label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.eb = or disjoint i32 %i.dy, 2139095040
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit18

bb.s:                                             ; preds = %bb.p
  %i.ec = shl nuw nsw i32 %i.dv, 13
  %i.ed = or disjoint i32 %i.dy, %i.ec
  %i.ee = or i32 %i.ed, 2143289344
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit18

bb.t:                                             ; preds = %bb.q
  %i.ef = tail call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.du, i1 false)
  %i.eg = zext nneg i16 %i.ef to i32              ; 2 uses
  %i.eh = add nuw nsw i32 %i.eg, 8
  %i.ei = shl i32 %i.dv, %i.eh
  %i.ej = and i32 %i.ei, 8388607
  %reass.sub.i17 = or disjoint i32 %i.dz, 989855744
  %i.ek = shl nuw nsw i32 %i.eg, 23
  %i.el = sub nuw nsw i32 %reass.sub.i17, %i.ek
  %i.em = or disjoint i32 %i.el, %i.ej
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit18

bb.u:                                             ; preds = %bb.q
  %i.en = lshr exact i16 %i.dt, 10
  %narrow.i15 = add nuw nsw i16 %i.en, 112
  %i.eo = zext nneg i16 %narrow.i15 to i32
  %i.ep = shl nuw nsw i32 %i.eo, 23
  %i.eq = shl nuw nsw i32 %i.dv, 13
  %i.er = or disjoint i32 %i.ep, %i.eq
  %i.es = or disjoint i32 %i.er, %i.dz
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit18

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit18: ; preds = %bb.n, %bb.r, %bb.s, %bb.t, %bb.u
  %.sroa.0.0.i16 = phi i32 [ %i.dq, %bb.n ], [ %i.eb, %bb.r ], [ %i.ee, %bb.s ], [ %i.em, %bb.t ], [ %i.es, %bb.u ]
  %i.et = bitcast i32 %.sroa.0.0.i16 to float
  br label %bb.w

bb.v:                                             ; preds = %.split25, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit14
  %i.eu = tail call fastcc noundef float @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.dh) #30
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit18
  %.sroa.09.0 = phi float [ %i.eu, %bb.v ], [ %i.et, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit18 ]
  %i.ev = fmul float %i.dg, %.sroa.09.0
  %i.ew = fadd float %.sroa.0.033, %i.ev          ; 2 uses
  %exitcond36.not = icmp eq i64 %i.bq, %.sroa.7.0.copyload
  br i1 %exitcond36.not, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ5_0EIBX_NtB1o_9BlockQ8_0EEINtB5_7ZipImplBW_B2n_E4nextB1s_.exit.thread, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ5_0EIBX_NtB1o_9BlockQ8_0EEINtB5_7ZipImplBW_B2n_E4nextB1s_.exit
}

; Function Attrs: nonlazybind uwtable
define noundef float @_RNvXs0_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_9BlockQ5_0NtB5_8GgmlType7vec_dot(i64 noundef %0, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 419244183493398901) %2, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %3, i64 noundef range(i64 0, 271275648142787524) %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef float @_RNvXs0_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_9BlockQ5_0NtB5_8GgmlType13vec_dot_unopt(i64 poison, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %3, i64 noundef %4)
  ret float %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_9BlockQ5_0NtB5_8GgmlType8to_float(ptr noalias nofree noundef nonnull readonly align 2 captures(none) %0, i64 noundef range(i64 0, 419244183493398901) %1, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %3, 5                           ; 2 uses
  %.not22 = icmp eq i64 %i.a, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %bb.q
  %exitcond32.not = icmp eq i64 %i.b, %i.a
  br i1 %exitcond32.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.sroa.05.021 = phi i64 [ %i.b, %.loopexit ], [ 0, %bb.a ] ; 6 uses
  %4 = mul nsw i64 %.sroa.05.021, -32             ; 2 uses
  %5 = add i64 %4, -16
  %6 = shl nuw nsw i64 %.sroa.05.021, 5
  %7 = or disjoint i64 %6, 16
  %i.b = add nuw nsw i64 %.sroa.05.021, 1         ; 2 uses
  %exitcond31.not = icmp eq i64 %.sroa.05.021, %1
  br i1 %exitcond31.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw [22 x i8], ptr %0, i64 %.sroa.05.021 ; 3 uses
  %i.d = load i16, ptr %i.c, align 2, !noundef !7 ; 6 uses
  %i.e = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.split, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit, !prof !14

.split:                                           ; preds = %bb.b
  %i.g = tail call noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
  %i.h = and i128 %i.g, 18014398509481984
  %.not14 = icmp eq i128 %i.h, 0
  br i1 %.not14, label %bb.d, label %bb.m

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit: ; preds = %bb.b
  %i.i = and i64 %i.e, 18014398509481984
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.m

bb.c:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #32
  unreachable

bb.d:                                             ; preds = %.split, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.j = and i16 %i.d, 32767
  %i.k = icmp eq i16 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = zext i16 %i.d to i32
  %i.m = shl nuw i32 %i.l, 16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.f:                                             ; preds = %bb.d
  %i.n = and i16 %i.d, -32768
  %i.o = zext i16 %i.n to i32                     ; 2 uses
  %i.p = and i16 %i.d, 31744                      ; 3 uses
  %i.q = and i16 %i.d, 1023                       ; 3 uses
  %i.r = zext nneg i16 %i.q to i32                ; 3 uses
  %i.s = icmp eq i16 %i.p, 31744
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = icmp eq i16 %i.q, 0
  %i.u = shl nuw i32 %i.o, 16                     ; 2 uses
  br i1 %i.t, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.v = shl nuw i32 %i.o, 16                     ; 2 uses
  %i.w = icmp eq i16 %i.p, 0
  br i1 %i.w, label %bb.k, label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.x = or disjoint i32 %i.u, 2139095040
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.j:                                             ; preds = %bb.g
  %i.y = shl nuw nsw i32 %i.r, 13
  %i.z = or disjoint i32 %i.u, %i.y
  %i.aa = or i32 %i.z, 2143289344
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.k:                                             ; preds = %bb.h
  %i.ab = tail call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.q, i1 false)
  %i.ac = zext nneg i16 %i.ab to i32              ; 2 uses
  %i.ad = add nuw nsw i32 %i.ac, 8
  %i.ae = shl i32 %i.r, %i.ad
  %i.af = and i32 %i.ae, 8388607
  %reass.sub.i = or disjoint i32 %i.v, 989855744
  %i.ag = shl nuw nsw i32 %i.ac, 23
  %i.ah = sub nuw nsw i32 %reass.sub.i, %i.ag
  %i.ai = or disjoint i32 %i.ah, %i.af
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.l:                                             ; preds = %bb.h
  %i.aj = lshr exact i16 %i.p, 10
  %narrow.i = add nuw nsw i16 %i.aj, 112
  %i.ak = zext nneg i16 %narrow.i to i32
  %i.al = shl nuw nsw i32 %i.ak, 23
  %i.am = shl nuw nsw i32 %i.r, 13
  %i.an = or disjoint i32 %i.al, %i.am
  %i.ao = or disjoint i32 %i.an, %i.v
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit: ; preds = %bb.e, %bb.i, %bb.j, %bb.k, %bb.l
  %.sroa.0.0.i = phi i32 [ %i.m, %bb.e ], [ %i.x, %bb.i ], [ %i.aa, %bb.j ], [ %i.ai, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = bitcast i32 %.sroa.0.0.i to float
  br label %bb.n

bb.m:                                             ; preds = %.split, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.aq = tail call fastcc noundef float @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.d) #30
  br label %bb.n

bb.n:                                             ; preds = %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit, %bb.m
  %.sroa.01.0 = phi float [ %i.aq, %bb.m ], [ %i.ap, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.val = load i32, ptr %i.ar, align 2            ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 6 ; 2 uses
  %i.at = shl nuw nsw i64 %.sroa.05.021, 5        ; 3 uses
  %i.au = tail call i64 @llvm.umax.i64(i64 %3, i64 %7)
  %i.av = add i64 %i.au, %5
  %i.aw = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.at)
  %i.ax = add i64 %i.aw, %4
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.av, i64 %i.ax) ; 2 uses
  %min.iters.check = icmp ult i64 %i.ay, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.n
  %i.az = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 15)
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %i.bb = and i64 %i.ba, 3                        ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  %i.bd = select i1 %i.bc, i64 4, i64 %i.bb
  %n.vec = sub nsw i64 %i.ba, %i.bd               ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.01.0, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert50 = insertelement <4 x i32> poison, i32 %.val, i64 0
  %broadcast.splat51 = shufflevector <4 x i32> %broadcast.splatinsert50, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.be = add nuw nsw <4 x i32> %vec.ind, splat (i32 12)
  %i.bf = lshr <4 x i32> %broadcast.splat51, %i.be
  %i.bg = trunc <4 x i32> %i.bf to <4 x i8>
  %i.bh = and <4 x i8> %i.bg, splat (i8 16)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 %index
  %wide.load = load <4 x i8>, ptr %i.bi, align 2  ; 2 uses
  %i.bj = add nuw nsw i64 %index, %i.at           ; 2 uses
  %i.bk = and <4 x i8> %wide.load, splat (i8 15)
  %i.bl = lshr <4 x i32> %broadcast.splat51, %vec.ind
  %i.bm = trunc <4 x i32> %i.bl to <4 x i8>
  %i.bn = shl <4 x i8> %i.bm, splat (i8 4)
  %i.bo = and <4 x i8> %i.bn, splat (i8 16)
  %i.bp = or disjoint <4 x i8> %i.bk, %i.bo
  %i.bq = zext nneg <4 x i8> %i.bp to <4 x i32>
  %i.br = add nsw <4 x i32> %i.bq, splat (i32 -16)
  %i.bs = sitofp <4 x i32> %i.br to <4 x float>
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bj
  %i.bu = fmul <4 x float> %broadcast.splat, %i.bs
  store <4 x float> %i.bu, ptr %i.bt, align 4
  %i.bv = lshr <4 x i8> %wide.load, splat (i8 4)
  %i.bw = or disjoint <4 x i8> %i.bv, %i.bh
  %i.bx = zext nneg <4 x i8> %i.bw to <4 x i32>
  %i.by = add nsw <4 x i32> %i.bx, splat (i32 -16)
  %i.bz = sitofp <4 x i32> %i.by to <4 x float>
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bj
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %i.cc = fmul <4 x float> %broadcast.splat, %i.bz
  store <4 x float> %i.cc, ptr %i.cb, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %scalar.ph.preheader, label %vector.body, !llvm.loop !721

scalar.ph.preheader:                              ; preds = %vector.body, %bb.n
  %.sroa.07.020.ph = phi i64 [ 0, %bb.n ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.q
  %.sroa.07.020 = phi i64 [ %i.ce, %bb.q ], [ %.sroa.07.020.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ce = add nuw nsw i64 %.sroa.07.020, 1        ; 2 uses
  %i.cf = trunc nuw nsw i64 %.sroa.07.020 to i32  ; 2 uses
  %i.cg = add nuw nsw i32 %i.cf, 12
  %i.ch = lshr i32 %.val, %i.cg
  %i.ci = trunc i32 %i.ch to i8
  %i.cj = and i8 %i.ci, 16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.07.020
  %i.cl = load i8, ptr %i.ck, align 1, !noundef !7 ; 2 uses
  %i.cm = add nuw nsw i64 %.sroa.07.020, %i.at    ; 4 uses
  %i.cn = icmp samesign ult i64 %i.cm, %3
  br i1 %i.cn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %scalar.ph
  %i.co = and i8 %i.cl, 15
  %i.cp = lshr i32 %.val, %i.cf
  %.tr = trunc i32 %i.cp to i8
  %i.cq = shl i8 %.tr, 4
  %i.cr = and i8 %i.cq, 16
  %i.cs = or disjoint i8 %i.co, %i.cr
  %i.ct = zext nneg i8 %i.cs to i32
  %i.cu = add nsw i32 %i.ct, -16
  %i.cv = sitofp i32 %i.cu to float
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cm
  %i.cx = fmul float %.sroa.01.0, %i.cv
  store float %i.cx, ptr %i.cw, align 4
  %i.cy = or disjoint i64 %i.cm, 16               ; 3 uses
  %i.cz = icmp samesign ult i64 %i.cy, %3
  br i1 %i.cz, label %bb.q, label %bb.r

bb.p:                                             ; preds = %scalar.ph
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.cm, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #32
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.da = lshr i8 %i.cl, 4
  %i.db = or disjoint i8 %i.da, %i.cj
  %i.dc = zext nneg i8 %i.db to i32
  %i.dd = add nsw i32 %i.dc, -16
  %i.de = sitofp i32 %i.dd to float
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cy
  %i.dg = fmul float %.sroa.01.0, %i.de
  store float %i.dg, ptr %i.df, align 4
  %exitcond.not = icmp eq i64 %i.ce, 16
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !722

bb.r:                                             ; preds = %bb.o
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.cy, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1D_NtCsf3Ta7LF998c_4core3fmtTjjjjuENtB6_5Debug3fmtCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.i, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.j, ptr %i.a, align 8
  %i.k = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @85) ; 0 uses
  %i.l = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @85) ; 0 uses
  %i.m = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @85) ; 0 uses
  %i.n = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @85) ; 0 uses
  %i.o = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @86) ; 0 uses
  %i.p = call noundef zeroext i1 @_RNvMs3_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret i1 %i.p
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1D_NtCsf3Ta7LF998c_4core3fmtTjjjujENtB6_5Debug3fmtCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.h, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.i, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.i, ptr %i.a, align 8
  %i.j = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @85) ; 0 uses
  %i.k = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @85) ; 0 uses
  %i.l = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @85) ; 0 uses
  %i.m = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @86) ; 0 uses
  %i.n = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @85) ; 0 uses
  %i.o = call noundef zeroext i1 @_RNvMs3_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret i1 %i.o
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1D_NtCsf3Ta7LF998c_4core3fmtTjjujjENtB6_5Debug3fmtCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
end_hunk_1
begin_hunk_2_@_RNvXs1_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_9BlockQ5_1NtB5_8GgmlType13vec_dot_unopt:bb.a
  %i.pn = tail call noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
  %i.po = and i128 %i.pn, 18014398509481984
  %.not46 = icmp eq i128 %i.po, 0
  br i1 %.not46, label %bb.x, label %bb.ag

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit22: ; preds = %bb.w
  %i.pp = and i64 %i.pl, 18014398509481984
  %.not45 = icmp eq i64 %i.pp, 0
  br i1 %.not45, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %.split40, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit22
  %i.pq = and i16 %i.pk, 32767
  %i.pr = icmp eq i16 %i.pq, 0
  br i1 %i.pr, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ps = zext i16 %i.pk to i32
  %i.pt = shl nuw i32 %i.ps, 16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit26

bb.z:                                             ; preds = %bb.x
  %i.pu = and i16 %i.pk, -32768
  %i.pv = zext i16 %i.pu to i32                   ; 2 uses
  %i.pw = and i16 %i.pk, 31744                    ; 3 uses
  %i.px = and i16 %i.pk, 1023                     ; 3 uses
  %i.py = zext nneg i16 %i.px to i32              ; 3 uses
  %i.pz = icmp eq i16 %i.pw, 31744
  br i1 %i.pz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.qa = icmp eq i16 %i.px, 0
  %i.qb = shl nuw i32 %i.pv, 16                   ; 2 uses
  br i1 %i.qa, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %i.qc = shl nuw i32 %i.pv, 16                   ; 2 uses
  %i.qd = icmp eq i16 %i.pw, 0
  br i1 %i.qd, label %bb.ae, label %bb.af

bb.ac:                                            ; preds = %bb.aa
  %i.qe = or disjoint i32 %i.qb, 2139095040
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit26

bb.ad:                                            ; preds = %bb.aa
  %i.qf = shl nuw nsw i32 %i.py, 13
  %i.qg = or disjoint i32 %i.qb, %i.qf
  %i.qh = or i32 %i.qg, 2143289344
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit26

bb.ae:                                            ; preds = %bb.ab
  %i.qi = tail call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.px, i1 false)
  %i.qj = zext nneg i16 %i.qi to i32              ; 2 uses
  %i.qk = add nuw nsw i32 %i.qj, 8
  %i.ql = shl i32 %i.py, %i.qk
  %i.qm = and i32 %i.ql, 8388607
  %reass.sub.i25 = or disjoint i32 %i.qc, 989855744
  %i.qn = shl nuw nsw i32 %i.qj, 23
  %i.qo = sub nuw nsw i32 %reass.sub.i25, %i.qn
  %i.qp = or disjoint i32 %i.qo, %i.qm
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit26

bb.af:                                            ; preds = %bb.ab
  %i.qq = lshr exact i16 %i.pw, 10
  %narrow.i23 = add nuw nsw i16 %i.qq, 112
  %i.qr = zext nneg i16 %narrow.i23 to i32
  %i.qs = shl nuw nsw i32 %i.qr, 23
  %i.qt = shl nuw nsw i32 %i.py, 13
  %i.qu = or disjoint i32 %i.qs, %i.qt
  %i.qv = or disjoint i32 %i.qu, %i.qc
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit26

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit26: ; preds = %bb.y, %bb.ac, %bb.ad, %bb.ae, %bb.af
  %.sroa.0.0.i24 = phi i32 [ %i.pt, %bb.y ], [ %i.qe, %bb.ac ], [ %i.qh, %bb.ad ], [ %i.qp, %bb.ae ], [ %i.qv, %bb.af ]
  %i.qw = bitcast i32 %.sroa.0.0.i24 to float
  br label %bb.ah

bb.ag:                                            ; preds = %.split40, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit22
  %i.qx = tail call fastcc noundef float @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.pk) #30
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit26
  %.sroa.010.0 = phi float [ %i.qx, %bb.ag ], [ %i.qw, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit26 ]
  %i.qy = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.qz = load i16, ptr %i.qy, align 2, !noundef !7 ; 6 uses
  %i.ra = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.rb = icmp eq i64 %i.ra, 0
  br i1 %i.rb, label %.split41, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit28, !prof !14

.split41:                                         ; preds = %bb.ah
  %i.rc = tail call noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
  %i.rd = and i128 %i.rc, 18014398509481984
  %.not48 = icmp eq i128 %i.rd, 0
  br i1 %.not48, label %bb.ai, label %bb.ar

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit28: ; preds = %bb.ah
  %i.re = and i64 %i.ra, 18014398509481984
  %.not47 = icmp eq i64 %i.re, 0
  br i1 %.not47, label %bb.ai, label %bb.ar

bb.ai:                                            ; preds = %.split41, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit28
  %i.rf = and i16 %i.qz, 32767
  %i.rg = icmp eq i16 %i.rf, 0
  br i1 %i.rg, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.rh = zext i16 %i.qz to i32
  %i.ri = shl nuw i32 %i.rh, 16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit32

bb.ak:                                            ; preds = %bb.ai
  %i.rj = and i16 %i.qz, -32768
  %i.rk = zext i16 %i.rj to i32                   ; 2 uses
  %i.rl = and i16 %i.qz, 31744                    ; 3 uses
  %i.rm = and i16 %i.qz, 1023                     ; 3 uses
  %i.rn = zext nneg i16 %i.rm to i32              ; 3 uses
  %i.ro = icmp eq i16 %i.rl, 31744
  br i1 %i.ro, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.rp = icmp eq i16 %i.rm, 0
  %i.rq = shl nuw i32 %i.rk, 16                   ; 2 uses
  br i1 %i.rp, label %bb.an, label %bb.ao

bb.am:                                            ; preds = %bb.ak
  %i.rr = shl nuw i32 %i.rk, 16                   ; 2 uses
  %i.rs = icmp eq i16 %i.rl, 0
  br i1 %i.rs, label %bb.ap, label %bb.aq

bb.an:                                            ; preds = %bb.al
  %i.rt = or disjoint i32 %i.rq, 2139095040
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit32

bb.ao:                                            ; preds = %bb.al
  %i.ru = shl nuw nsw i32 %i.rn, 13
  %i.rv = or disjoint i32 %i.rq, %i.ru
  %i.rw = or i32 %i.rv, 2143289344
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit32

bb.ap:                                            ; preds = %bb.am
  %i.rx = tail call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.rm, i1 false)
  %i.ry = zext nneg i16 %i.rx to i32              ; 2 uses
  %i.rz = add nuw nsw i32 %i.ry, 8
  %i.sa = shl i32 %i.rn, %i.rz
  %i.sb = and i32 %i.sa, 8388607
  %reass.sub.i31 = or disjoint i32 %i.rr, 989855744
  %i.sc = shl nuw nsw i32 %i.ry, 23
  %i.sd = sub nuw nsw i32 %reass.sub.i31, %i.sc
  %i.se = or disjoint i32 %i.sd, %i.sb
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit32

bb.aq:                                            ; preds = %bb.am
  %i.sf = lshr exact i16 %i.rl, 10
  %narrow.i29 = add nuw nsw i16 %i.sf, 112
  %i.sg = zext nneg i16 %narrow.i29 to i32
  %i.sh = shl nuw nsw i32 %i.sg, 23
  %i.si = shl nuw nsw i32 %i.rn, 13
  %i.sj = or disjoint i32 %i.sh, %i.si
  %i.sk = or disjoint i32 %i.sj, %i.rr
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit32

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit32: ; preds = %bb.aj, %bb.an, %bb.ao, %bb.ap, %bb.aq
  %.sroa.0.0.i30 = phi i32 [ %i.ri, %bb.aj ], [ %i.rt, %bb.an ], [ %i.rw, %bb.ao ], [ %i.se, %bb.ap ], [ %i.sk, %bb.aq ]
  %i.sl = bitcast i32 %.sroa.0.0.i30 to float
  br label %bb.as

bb.ar:                                            ; preds = %.split41, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit28
  %i.sm = tail call fastcc noundef float @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.qz) #30
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit32
  %.sroa.011.0 = phi float [ %i.sm, %bb.ar ], [ %i.sl, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit32 ]
  %i.sn = fmul float %.sroa.010.0, %.sroa.011.0
  %i.so = fadd float %i.pi, %i.sn
  %i.sp = fadd float %.sroa.0.055, %i.so          ; 2 uses
  %exitcond.not = icmp eq i64 %i.md, %.sroa.7.0.copyload
  br i1 %exitcond.not, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ5_1EIBX_NtB1o_9BlockQ8_1EEINtB5_7ZipImplBW_B2n_E4nextB1s_.exit.thread, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ5_1EIBX_NtB1o_9BlockQ8_1EEINtB5_7ZipImplBW_B2n_E4nextB1s_.exit
}

; Function Attrs: nonlazybind uwtable
define noundef float @_RNvXs1_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_9BlockQ5_1NtB5_8GgmlType7vec_dot(i64 noundef %0, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 384307168202282326) %2, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %3, i64 noundef range(i64 0, 256204778801521551) %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef float @_RNvXs1_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_9BlockQ5_1NtB5_8GgmlType13vec_dot_unopt(i64 poison, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %3, i64 noundef %4)
  ret float %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_9BlockQ5_1NtB5_8GgmlType8to_float(ptr noalias nofree noundef nonnull readonly align 2 captures(none) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %3, 5                           ; 2 uses
  %.not34 = icmp eq i64 %i.a, 0
  br i1 %.not34, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %bb.ab
  %exitcond44.not = icmp eq i64 %i.b, %i.a
  br i1 %exitcond44.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.sroa.07.033 = phi i64 [ %i.b, %.loopexit ], [ 0, %bb.a ] ; 6 uses
  %4 = mul nsw i64 %.sroa.07.033, -32             ; 2 uses
  %5 = add i64 %4, -16
  %6 = shl nuw nsw i64 %.sroa.07.033, 5
  %7 = or disjoint i64 %6, 16
  %i.b = add nuw nsw i64 %.sroa.07.033, 1         ; 2 uses
  %exitcond43.not = icmp eq i64 %.sroa.07.033, %1
  br i1 %exitcond43.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.07.033 ; 4 uses
  %i.d = load i16, ptr %i.c, align 2, !noundef !7 ; 6 uses
  %i.e = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.split, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit, !prof !14

.split:                                           ; preds = %bb.b
  %i.g = tail call noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
  %i.h = and i128 %i.g, 18014398509481984
  %.not23 = icmp eq i128 %i.h, 0
  br i1 %.not23, label %bb.d, label %bb.m

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit: ; preds = %bb.b
  %i.i = and i64 %i.e, 18014398509481984
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.m

bb.c:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #32
  unreachable

bb.d:                                             ; preds = %.split, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.j = and i16 %i.d, 32767
  %i.k = icmp eq i16 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = zext i16 %i.d to i32
  %i.m = shl nuw i32 %i.l, 16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.f:                                             ; preds = %bb.d
  %i.n = and i16 %i.d, -32768
  %i.o = zext i16 %i.n to i32                     ; 2 uses
  %i.p = and i16 %i.d, 31744                      ; 3 uses
  %i.q = and i16 %i.d, 1023                       ; 3 uses
  %i.r = zext nneg i16 %i.q to i32                ; 3 uses
  %i.s = icmp eq i16 %i.p, 31744
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = icmp eq i16 %i.q, 0
  %i.u = shl nuw i32 %i.o, 16                     ; 2 uses
  br i1 %i.t, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.v = shl nuw i32 %i.o, 16                     ; 2 uses
  %i.w = icmp eq i16 %i.p, 0
  br i1 %i.w, label %bb.k, label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.x = or disjoint i32 %i.u, 2139095040
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.j:                                             ; preds = %bb.g
  %i.y = shl nuw nsw i32 %i.r, 13
  %i.z = or disjoint i32 %i.u, %i.y
  %i.aa = or i32 %i.z, 2143289344
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.k:                                             ; preds = %bb.h
  %i.ab = tail call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.q, i1 false)
  %i.ac = zext nneg i16 %i.ab to i32              ; 2 uses
  %i.ad = add nuw nsw i32 %i.ac, 8
  %i.ae = shl i32 %i.r, %i.ad
  %i.af = and i32 %i.ae, 8388607
  %reass.sub.i = or disjoint i32 %i.v, 989855744
  %i.ag = shl nuw nsw i32 %i.ac, 23
  %i.ah = sub nuw nsw i32 %reass.sub.i, %i.ag
  %i.ai = or disjoint i32 %i.ah, %i.af
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.l:                                             ; preds = %bb.h
  %i.aj = lshr exact i16 %i.p, 10
  %narrow.i = add nuw nsw i16 %i.aj, 112
  %i.ak = zext nneg i16 %narrow.i to i32
  %i.al = shl nuw nsw i32 %i.ak, 23
  %i.am = shl nuw nsw i32 %i.r, 13
  %i.an = or disjoint i32 %i.al, %i.am
  %i.ao = or disjoint i32 %i.an, %i.v
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit: ; preds = %bb.e, %bb.i, %bb.j, %bb.k, %bb.l
  %.sroa.0.0.i = phi i32 [ %i.m, %bb.e ], [ %i.x, %bb.i ], [ %i.aa, %bb.j ], [ %i.ai, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = bitcast i32 %.sroa.0.0.i to float
  br label %bb.n

bb.m:                                             ; preds = %.split, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.aq = tail call fastcc noundef float @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.d) #30
  br label %bb.n

bb.n:                                             ; preds = %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit, %bb.m
  %.sroa.01.0 = phi float [ %i.aq, %bb.m ], [ %i.ap, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.as = load i16, ptr %i.ar, align 2, !noundef !7 ; 6 uses
  %i.at = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %.split22, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit17, !prof !14

.split22:                                         ; preds = %bb.n
  %i.av = tail call noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
  %i.aw = and i128 %i.av, 18014398509481984
  %.not25 = icmp eq i128 %i.aw, 0
  br i1 %.not25, label %bb.o, label %bb.x

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit17: ; preds = %bb.n
  %i.ax = and i64 %i.at, 18014398509481984
  %.not24 = icmp eq i64 %i.ax, 0
  br i1 %.not24, label %bb.o, label %bb.x

bb.o:                                             ; preds = %.split22, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit17
  %i.ay = and i16 %i.as, 32767
  %i.az = icmp eq i16 %i.ay, 0
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ba = zext i16 %i.as to i32
  %i.bb = shl nuw i32 %i.ba, 16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit21

bb.q:                                             ; preds = %bb.o
  %i.bc = and i16 %i.as, -32768
  %i.bd = zext i16 %i.bc to i32                   ; 2 uses
  %i.be = and i16 %i.as, 31744                    ; 3 uses
  %i.bf = and i16 %i.as, 1023                     ; 3 uses
  %i.bg = zext nneg i16 %i.bf to i32              ; 3 uses
  %i.bh = icmp eq i16 %i.be, 31744
  br i1 %i.bh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bi = icmp eq i16 %i.bf, 0
  %i.bj = shl nuw i32 %i.bd, 16                   ; 2 uses
  br i1 %i.bi, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.bk = shl nuw i32 %i.bd, 16                   ; 2 uses
  %i.bl = icmp eq i16 %i.be, 0
  br i1 %i.bl, label %bb.v, label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.bm = or disjoint i32 %i.bj, 2139095040
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit21

bb.u:                                             ; preds = %bb.r
  %i.bn = shl nuw nsw i32 %i.bg, 13
  %i.bo = or disjoint i32 %i.bj, %i.bn
  %i.bp = or i32 %i.bo, 2143289344
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit21

bb.v:                                             ; preds = %bb.s
  %i.bq = tail call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.bf, i1 false)
  %i.br = zext nneg i16 %i.bq to i32              ; 2 uses
  %i.bs = add nuw nsw i32 %i.br, 8
  %i.bt = shl i32 %i.bg, %i.bs
  %i.bu = and i32 %i.bt, 8388607
  %reass.sub.i20 = or disjoint i32 %i.bk, 989855744
  %i.bv = shl nuw nsw i32 %i.br, 23
  %i.bw = sub nuw nsw i32 %reass.sub.i20, %i.bv
  %i.bx = or disjoint i32 %i.bw, %i.bu
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit21

bb.w:                                             ; preds = %bb.s
  %i.by = lshr exact i16 %i.be, 10
  %narrow.i18 = add nuw nsw i16 %i.by, 112
  %i.bz = zext nneg i16 %narrow.i18 to i32
  %i.ca = shl nuw nsw i32 %i.bz, 23
  %i.cb = shl nuw nsw i32 %i.bg, 13
  %i.cc = or disjoint i32 %i.ca, %i.cb
  %i.cd = or disjoint i32 %i.cc, %i.bk
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit21

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit21: ; preds = %bb.p, %bb.t, %bb.u, %bb.v, %bb.w
  %.sroa.0.0.i19 = phi i32 [ %i.bb, %bb.p ], [ %i.bm, %bb.t ], [ %i.bp, %bb.u ], [ %i.bx, %bb.v ], [ %i.cd, %bb.w ]
  %i.ce = bitcast i32 %.sroa.0.0.i19 to float
  br label %bb.y

bb.x:                                             ; preds = %.split22, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit17
  %i.cf = tail call fastcc noundef float @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.as) #30
  br label %bb.y

bb.y:                                             ; preds = %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit21, %bb.x
  %.sroa.03.0 = phi float [ %i.cf, %bb.x ], [ %i.ce, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit21 ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.val = load i32, ptr %i.cg, align 2            ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ci = shl nuw nsw i64 %.sroa.07.033, 5        ; 3 uses
  %i.cj = tail call i64 @llvm.umax.i64(i64 %3, i64 %7)
  %i.ck = add i64 %i.cj, %5
  %i.cl = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.ci)
  %i.cm = add i64 %i.cl, %4
  %i.cn = tail call i64 @llvm.umin.i64(i64 %i.ck, i64 %i.cm) ; 2 uses
  %min.iters.check = icmp ult i64 %i.cn, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.y
  %i.co = tail call i64 @llvm.umin.i64(i64 %i.cn, i64 15)
  %i.cp = add nuw nsw i64 %i.co, 1                ; 2 uses
  %i.cq = and i64 %i.cp, 3                        ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  %i.cs = select i1 %i.cr, i64 4, i64 %i.cq
  %n.vec = sub nsw i64 %i.cp, %i.cs               ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.03.0, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert64 = insertelement <4 x i32> poison, i32 %.val, i64 0
  %broadcast.splat65 = shufflevector <4 x i32> %broadcast.splatinsert64, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert66 = insertelement <4 x float> poison, float %.sroa.01.0, i64 0
  %broadcast.splat67 = shufflevector <4 x float> %broadcast.splatinsert66, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.ct = add nuw nsw <4 x i32> %vec.ind, splat (i32 12)
  %i.cu = lshr <4 x i32> %broadcast.splat65, %i.ct
  %i.cv = trunc <4 x i32> %i.cu to <4 x i8>
  %i.cw = and <4 x i8> %i.cv, splat (i8 16)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ch, i64 %index
  %wide.load = load <4 x i8>, ptr %i.cx, align 2  ; 2 uses
  %i.cy = add nuw nsw i64 %index, %i.ci           ; 2 uses
  %i.cz = and <4 x i8> %wide.load, splat (i8 15)
  %i.da = lshr <4 x i32> %broadcast.splat65, %vec.ind
  %i.db = trunc <4 x i32> %i.da to <4 x i8>
  %i.dc = shl <4 x i8> %i.db, splat (i8 4)
  %i.dd = and <4 x i8> %i.dc, splat (i8 16)
  %i.de = or disjoint <4 x i8> %i.cz, %i.dd
  %i.df = uitofp nneg <4 x i8> %i.de to <4 x float>
  %i.dg = fmul <4 x float> %broadcast.splat67, %i.df
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cy
  %i.di = fadd <4 x float> %broadcast.splat, %i.dg
  store <4 x float> %i.di, ptr %i.dh, align 4
  %i.dj = lshr <4 x i8> %wide.load, splat (i8 4)
  %i.dk = or disjoint <4 x i8> %i.dj, %i.cw
  %i.dl = uitofp nneg <4 x i8> %i.dk to <4 x float>
  %i.dm = fmul <4 x float> %broadcast.splat67, %i.dl
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cy
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 64
  %i.dp = fadd <4 x float> %broadcast.splat, %i.dm
  store <4 x float> %i.dp, ptr %i.do, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %scalar.ph.preheader, label %vector.body, !llvm.loop !726

scalar.ph.preheader:                              ; preds = %vector.body, %bb.y
  %.sroa.09.032.ph = phi i64 [ 0, %bb.y ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.ab
  %.sroa.09.032 = phi i64 [ %i.dr, %bb.ab ], [ %.sroa.09.032.ph, %scalar.ph.preheader ] ; 4 uses
  %i.dr = add nuw nsw i64 %.sroa.09.032, 1        ; 2 uses
  %i.ds = trunc nuw nsw i64 %.sroa.09.032 to i32  ; 2 uses
  %i.dt = add nuw nsw i32 %i.ds, 12
  %i.du = lshr i32 %.val, %i.dt
  %i.dv = trunc i32 %i.du to i8
  %i.dw = and i8 %i.dv, 16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.09.032
  %i.dy = load i8, ptr %i.dx, align 1, !noundef !7 ; 2 uses
  %i.dz = add nuw nsw i64 %.sroa.09.032, %i.ci    ; 4 uses
  %i.ea = icmp samesign ult i64 %i.dz, %3
  br i1 %i.ea, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %scalar.ph
  %i.eb = and i8 %i.dy, 15
  %i.ec = lshr i32 %.val, %i.ds
  %.tr = trunc i32 %i.ec to i8
  %i.ed = shl i8 %.tr, 4
  %i.ee = and i8 %i.ed, 16
  %i.ef = or disjoint i8 %i.eb, %i.ee
  %i.eg = uitofp nneg i8 %i.ef to float
  %i.eh = fmul float %.sroa.01.0, %i.eg
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dz
  %i.ej = fadd float %.sroa.03.0, %i.eh
  store float %i.ej, ptr %i.ei, align 4
  %i.ek = or disjoint i64 %i.dz, 16               ; 3 uses
  %i.el = icmp samesign ult i64 %i.ek, %3
  br i1 %i.el, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %scalar.ph
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.dz, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #32
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.em = lshr i8 %i.dy, 4
  %i.en = or disjoint i8 %i.em, %i.dw
  %i.eo = uitofp nneg i8 %i.en to float
  %i.ep = fmul float %.sroa.01.0, %i.eo
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ek
  %i.er = fadd float %.sroa.03.0, %i.ep
  store float %i.er, ptr %i.eq, align 4
  %exitcond.not = icmp eq i64 %i.dr, 16
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !727

bb.ac:                                            ; preds = %bb.z
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ek, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRDNtB6_5DebugEL_Bx_3fmtCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !align !20, !noundef !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !7, !nonnull !7
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #30
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !align !20, !noundef !7
  %i.b = tail call noundef zeroext i1 @_RNvXNtNtCsf3Ta7LF998c_4core2io5errorNtB2_5ErrorNtNtB6_3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCskNPKTEkpOem_12aho_corasick4util5error9ErrorKindNtB6_5Debug3fmtCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !7, !align !20, !noundef !7 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !731)
  %i.e = load i32, ptr %i.d, align 8, !range !732, !alias.scope !731, !noalias !733, !noundef !7
  switch i32 %i.e, label %default.unreachable [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !734
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.g, ptr %i.c, align 8, !noalias !734
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @147, i64 noundef 15, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 3, ptr noundef nonnull readonly %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @145, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @149, i64 noundef 13, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @146)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !734
  br label %_RNvXs7_NtNtCskNPKTEkpOem_12aho_corasick4util5errorNtB5_9ErrorKindNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !734
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.j, ptr %i.b, align 8, !noalias !734
  %i.k = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @150, i64 noundef 17, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 3, ptr noundef nonnull readonly %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @145, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @149, i64 noundef 13, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @146)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !734
  br label %_RNvXs7_NtNtCskNPKTEkpOem_12aho_corasick4util5errorNtB5_9ErrorKindNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !734
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.m, ptr %i.a, align 8, !noalias !734
  %i.n = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @152, i64 noundef 14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @153, i64 noundef 7, ptr noundef nonnull readonly %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @151, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @154, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @85)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !734
  br label %_RNvXs7_NtNtCskNPKTEkpOem_12aho_corasick4util5errorNtB5_9ErrorKindNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit

_RNvXs7_NtNtCskNPKTEkpOem_12aho_corasick4util5errorNtB5_9ErrorKindNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.0.0.in.i = phi i1 [ %i.h, %bb.b ], [ %i.k, %bb.c ], [ %i.n, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = load ptr, ptr %0, align 8, !nonnull !7, !align !20, !noundef !7 ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738)
  %i.o = load i8, ptr %i.n, align 8, !range !23, !alias.scope !738, !noalias !739, !noundef !7
  switch i8 %i.o, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
end_hunk_2
begin_hunk_3_@_RNvXs4_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ2KNtB5_8GgmlType13vec_dot_unopt:.split175
  %i.eo = and <16 x i8> %i.eg, splat (i8 3)
  %i.ep = zext nneg <16 x i8> %i.eo to <16 x i32>
  %i.eq = mul nsw <16 x i32> %i.ep, %i.en
  %i.er = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.eq)
  %i.es = mul nsw i32 %i.er, %i.el
  %i.et = add i32 %i.es, %.sroa.013.0174
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  %i.ev = load i8, ptr %i.eu, align 1, !noundef !7
  %i.ew = and i8 %i.ev, 15
  %i.ex = zext nneg i8 %i.ew to i32
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.030.0172, i64 16
  %i.ez = and <16 x i8> %i.ef, splat (i8 3)
  %i.fa = zext nneg <16 x i8> %i.ez to <16 x i32>
  %i.fb = load <16 x i8>, ptr %i.ey, align 1
  %i.fc = sext <16 x i8> %i.fb to <16 x i32>
  %i.fd = mul nsw <16 x i32> %i.fa, %i.fc
  %i.fe = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.fd)
  %i.ff = mul nsw i32 %i.fe, %i.ex
  %i.fg = add i32 %i.et, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.030.0172, i64 32
  %i.fi = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.016.0173 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 2
  %i.fk = load i8, ptr %i.fj, align 1, !noundef !7
  %i.fl = and i8 %i.fk, 15
  %i.fm = zext nneg i8 %i.fl to i32
  %i.fn = load <16 x i8>, ptr %i.fh, align 1
  %i.fo = sext <16 x i8> %i.fn to <16 x i32>
  %i.fp = lshr <16 x i8> %i.eg, splat (i8 2)
  %i.fq = and <16 x i8> %i.fp, splat (i8 3)
  %i.fr = zext nneg <16 x i8> %i.fq to <16 x i32>
  %i.fs = mul nsw <16 x i32> %i.fr, %i.fo
  %i.ft = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.fs)
  %i.fu = mul nsw i32 %i.ft, %i.fm
  %i.fv = add i32 %i.fu, %i.fg
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fi, i64 3
  %i.fx = load i8, ptr %i.fw, align 1, !noundef !7
  %i.fy = and i8 %i.fx, 15
  %i.fz = zext nneg i8 %i.fy to i32
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.030.0172, i64 48
  %i.gb = lshr <16 x i8> %i.ef, splat (i8 2)
  %i.gc = and <16 x i8> %i.gb, splat (i8 3)
  %i.gd = zext nneg <16 x i8> %i.gc to <16 x i32>
  %i.ge = load <16 x i8>, ptr %i.ga, align 1
  %i.gf = sext <16 x i8> %i.ge to <16 x i32>
  %i.gg = mul nsw <16 x i32> %i.gd, %i.gf
  %i.gh = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.gg)
  %i.gi = mul nsw i32 %i.gh, %i.fz
  %i.gj = add i32 %i.fv, %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.030.0172, i64 64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.016.0173 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  %i.gn = load i8, ptr %i.gm, align 1, !noundef !7
  %i.go = and i8 %i.gn, 15
  %i.gp = zext nneg i8 %i.go to i32
  %i.gq = load <16 x i8>, ptr %i.gk, align 1
  %i.gr = sext <16 x i8> %i.gq to <16 x i32>
  %i.gs = lshr <16 x i8> %i.eg, splat (i8 4)
  %i.gt = and <16 x i8> %i.gs, splat (i8 3)
  %i.gu = zext nneg <16 x i8> %i.gt to <16 x i32>
  %i.gv = mul nsw <16 x i32> %i.gu, %i.gr
  %i.gw = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.gv)
  %i.gx = mul nsw i32 %i.gw, %i.gp
  %i.gy = add i32 %i.gx, %i.gj
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gl, i64 5
  %i.ha = load i8, ptr %i.gz, align 1, !noundef !7
  %i.hb = and i8 %i.ha, 15
  %i.hc = zext nneg i8 %i.hb to i32
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.030.0172, i64 80
  %i.he = lshr <16 x i8> %i.ef, splat (i8 4)
  %i.hf = and <16 x i8> %i.he, splat (i8 3)
  %i.hg = zext nneg <16 x i8> %i.hf to <16 x i32>
  %i.hh = load <16 x i8>, ptr %i.hd, align 1
  %i.hi = sext <16 x i8> %i.hh to <16 x i32>
  %i.hj = mul nsw <16 x i32> %i.hg, %i.hi
  %i.hk = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.hj)
  %i.hl = mul nsw i32 %i.hk, %i.hc
  %i.hm = add i32 %i.gy, %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.030.0172, i64 96
  %i.ho = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.016.0173 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 6
  %i.hq = load i8, ptr %i.hp, align 1, !noundef !7
  %i.hr = and i8 %i.hq, 15
  %i.hs = zext nneg i8 %i.hr to i32
  %i.ht = load <16 x i8>, ptr %i.hn, align 1
  %i.hu = sext <16 x i8> %i.ht to <16 x i32>
  %i.hv = lshr <16 x i8> %i.eg, splat (i8 6)
  %i.hw = zext nneg <16 x i8> %i.hv to <16 x i32>
  %i.hx = mul nsw <16 x i32> %i.hw, %i.hu
  %i.hy = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.hx)
  %i.hz = mul nsw i32 %i.hy, %i.hs
  %i.ia = add i32 %i.hz, %i.hm
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ho, i64 7
  %i.ic = load i8, ptr %i.ib, align 1, !noundef !7
  %i.id = and i8 %i.ic, 15
  %i.ie = zext nneg i8 %i.id to i32
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.030.0172, i64 112
  %i.ig = lshr <16 x i8> %i.ef, splat (i8 6)
  %i.ih = zext nneg <16 x i8> %i.ig to <16 x i32>
  %i.ii = load <16 x i8>, ptr %i.if, align 1
  %i.ij = sext <16 x i8> %i.ii to <16 x i32>
  %i.ik = mul nsw <16 x i32> %i.ih, %i.ij
  %i.il = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.ik)
  %i.im = mul nsw i32 %i.il, %i.ie
  %i.in = add i32 %i.ia, %i.im                    ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.041.0170, i64 32
  br i1 %i.ed, label %bb.w, label %bb.v
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ2KNtB5_8GgmlType18from_float_imatrix(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef range(i64 0, 109802048057794951) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %4, i64 noundef range(i64 0, 2305843009213693952) %5, i64 noundef %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 33 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 16               ; 22 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 2 uses
  %i.e = alloca [16 x i8], align 16               ; 22 uses
  %i.f = ptrtoaddr ptr %i.e to i64                ; 2 uses
  %i.g = alloca [64 x i8], align 4                ; 6 uses
  %i.h = alloca [64 x i8], align 4                ; 22 uses
  %i.i = alloca [64 x i8], align 4                ; 5 uses
  %i.j = alloca [64 x i8], align 4                ; 5 uses
  %i.k = alloca [40 x i8], align 8                ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RINvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils22group_for_quantizationNtNtB4_8k_quants8BlockQ2KEB6_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef %3)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.o = load i64, ptr %i.l, align 8, !range !22, !noundef !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !7 ; 3 uses
  %i.r = icmp ult i64 %i.q, 384307168202282326
  call void @llvm.assume(i1 %i.r)
  %.idx = mul nuw nsw i64 %i.q, 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.n, ptr %i.k, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  store ptr %i.n, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.o, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store ptr %i.s, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.t = icmp eq i64 %i.q, 0
  br i1 %i.t, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ2KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i._crit_edge, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ2KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i.lr.ph

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ2KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i.lr.ph: ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %.sroa.03.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.03.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.03.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.v = lshr i64 %6, 8                           ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 60
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 7
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 11
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 11
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 13
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 13
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 14
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 15
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 15
  %7 = and i64 %6, -256
  %i.bq = add nuw i64 %i.f, 16
  %i.br = add nuw i64 %i.d, 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ2KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ2KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ2KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i.lr.ph, %.loopexit.1
  %i.bz = phi ptr [ %i.n, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ2KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i.lr.ph ], [ %i.iz, %.loopexit.1 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !871)
  call void @llvm.experimental.noalias.scope.decl(metadata !872)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  store ptr %i.ca, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !alias.scope !873, !noalias !874
  %.sroa.0.0.copyload1.i = load ptr, ptr %i.bz, align 8, !noalias !875 ; 25 uses
  %.sroa.0.0.copyload1.i342 = ptrtoaddr ptr %.sroa.0.0.copyload1.i to i64 ; 3 uses
  %.not.i = icmp eq ptr %.sroa.0.0.copyload1.i, null
  br i1 %.not.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ2KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i._crit_edge, label %bb.b

.loopexit141:                                     ; preds = %bb.af, %bb.at
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph, %bb.bu
  %lpad.loopexit142 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %._crit_edge, %bb.c, %bb.e, %bb.r
  %lpad.loopexit147 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.bw
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit141
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit141 ], [ %lpad.loopexit142, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit147, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ2KRSfEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ2KRSfEEEEB2h_.exit unwind label %bb.by

bb.b:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ2KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i
  %.sroa.7.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sroa.8.16.copyload = load ptr, ptr %.sroa.7.0..sroa_idx2.i, align 8, !noalias !871, !nonnull !7, !noundef !7 ; 22 uses
  %.sroa.10.16..sroa.7.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %.sroa.10.16.copyload = load i64, ptr %.sroa.10.16..sroa.7.0..sroa_idx2.i.sroa_idx, align 8, !noalias !871 ; 37 uses
  %i.cb = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !871, !noalias !876, !noundef !7 ; 4 uses
  %i.cc = add i64 %i.cb, 1
  store i64 %i.cc, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !871, !noalias !876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.j, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.i, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.h, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.g, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.cd = icmp eq i64 %.sroa.10.16.copyload, 0
  br i1 %i.cd, label %._crit_edge, label %.preheader145.preheader

.preheader145.preheader:                          ; preds = %bb.b
  %i.ce = add i64 %.sroa.10.16.copyload, -1
  %xtraiter = and i64 %.sroa.10.16.copyload, 3    ; 3 uses
  %i.cf = icmp ult i64 %i.ce, 3
  br i1 %i.cf, label %.preheader145.epil.preheader, label %.preheader145.preheader.new

.preheader145.preheader.new:                      ; preds = %.preheader145.preheader
  %unroll_iter = and i64 %.sroa.10.16.copyload, -4
  br label %.preheader145

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ2KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i._crit_edge: ; preds = %.loopexit.1, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ2KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i, %bb.a
  call void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ2KRSfEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

.preheader145:                                    ; preds = %.preheader145, %.preheader145.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader145.preheader.new ], [ %i.cv, %.preheader145 ] ; 5 uses
  %.sroa.02.0.i = phi float [ -0.000000e+00, %.preheader145.preheader.new ], [ %i.cu, %.preheader145 ]
  %niter = phi i64 [ 0, %.preheader145.preheader.new ], [ %niter.next.3, %.preheader145 ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %.sroa.04.0.i
  %.val.i = load float, ptr %i.cg, align 4, !noundef !7 ; 2 uses
  %i.ch = fmul float %.val.i, %.val.i
  %i.ci = fadd float %.sroa.02.0.i, %i.ch
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %.sroa.04.0.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %.val.i.1 = load float, ptr %i.ck, align 4, !noundef !7 ; 2 uses
  %i.cl = fmul float %.val.i.1, %.val.i.1
  %i.cm = fadd float %i.ci, %i.cl
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %.sroa.04.0.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %.val.i.2 = load float, ptr %i.co, align 4, !noundef !7 ; 2 uses
  %i.cp = fmul float %.val.i.2, %.val.i.2
  %i.cq = fadd float %i.cm, %i.cp
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %.sroa.04.0.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %.val.i.3 = load float, ptr %i.cs, align 4, !noundef !7 ; 2 uses
  %i.ct = fmul float %.val.i.3, %.val.i.3
  %i.cu = fadd float %i.cq, %i.ct                 ; 3 uses
  %i.cv = add nuw i64 %.sroa.04.0.i, 4            ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit146.unr-lcssa, label %.preheader145

.loopexit146.unr-lcssa:                           ; preds = %.preheader145
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit146, label %.preheader145.epil.preheader

.preheader145.epil.preheader:                     ; preds = %.loopexit146.unr-lcssa, %.preheader145.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader145.preheader ], [ %i.cv, %.loopexit146.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi float [ -0.000000e+00, %.preheader145.preheader ], [ %i.cu, %.loopexit146.unr-lcssa ]
  %lcmp.mod356 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod356)
  br label %.preheader145.epil

.preheader145.epil:                               ; preds = %.preheader145.epil, %.preheader145.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.cz, %.preheader145.epil ], [ %.sroa.04.0.i.epil.init, %.preheader145.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.epil = phi float [ %i.cy, %.preheader145.epil ], [ %.sroa.02.0.i.epil.init, %.preheader145.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader145.epil ], [ 0, %.preheader145.epil.preheader ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %.sroa.04.0.i.epil
  %.val.i.epil = load float, ptr %i.cw, align 4, !noundef !7 ; 2 uses
  %i.cx = fmul float %.val.i.epil, %.val.i.epil
  %i.cy = fadd float %.sroa.02.0.i.epil, %i.cx    ; 2 uses
  %i.cz = add nuw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit146, label %.preheader145.epil, !llvm.loop !866

.loopexit146:                                     ; preds = %.preheader145.epil, %.loopexit146.unr-lcssa
  %.lcssa = phi float [ %i.cu, %.loopexit146.unr-lcssa ], [ %i.cy, %.preheader145.epil ]
  %i.da = fmul float %.lcssa, 3.906250e-03        ; 2 uses
  %i.db = and i64 %.sroa.10.16.copyload, -16      ; 2 uses
  %.not.i.i184 = icmp eq i64 %i.db, 0
  br i1 %.not.i.i184, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.loopexit146
  %8 = shl i64 %i.cb, 8
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.da, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bv
  %.sroa.0.0187 = phi ptr [ %i.dc, %bb.bv ], [ %.sroa.8.16.copyload, %.lr.ph.preheader ] ; 3 uses
  %.sroa.594.0186 = phi i64 [ %i.dd, %bb.bv ], [ %i.db, %.lr.ph.preheader ]
  %.sroa.12.0185 = phi i64 [ %i.de, %bb.bv ], [ 0, %.lr.ph.preheader ] ; 7 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.0187, i64 64 ; 2 uses
  %i.dd = add i64 %.sroa.594.0186, -16            ; 2 uses
  %i.de = add nuw nsw i64 %.sroa.12.0185, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %i.h, ptr noundef nonnull %i.u, ptr noundef nonnull readonly align 4 %.sroa.0.0187, ptr noundef nonnull readonly %i.dc)
          to label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter7IterMutfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSfECsltEA4u8Pgfu_11candle_core.exit unwind label %.loopexit.split-lp.loopexit

._crit_edge:                                      ; preds = %bb.bv, %bb.b, %.loopexit146
  %i.df = invoke noundef float @_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils14make_qp_quants(i64 noundef 16, i8 noundef 15, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.i, i64 noundef 16, ptr noalias nofree noundef nonnull %i.e, i64 noundef 16, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.g, i64 noundef 16)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.c:                                             ; preds = %._crit_edge
  %i.dg = invoke noundef float @_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils14make_qp_quants(i64 noundef 16, i8 noundef 15, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.j, i64 noundef 16, ptr noalias nofree noundef nonnull %i.c, i64 noundef 16, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.g, i64 noundef 16)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.dh = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %bb.e, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit, !prof !14

bb.e:                                             ; preds = %bb.d
  %i.dj = invoke noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %bb.e
  %i.dk = and i128 %i.dj, 18014398509481984
  %.not132 = icmp eq i128 %i.dk, 0
  br i1 %.not132, label %bb.f, label %bb.q

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit: ; preds = %bb.d
  %i.dl = and i64 %i.dh, 18014398509481984
  %.not = icmp eq i64 %i.dl, 0
  br i1 %.not, label %bb.f, label %bb.q

bb.f:                                             ; preds = %.noexc, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.dm = bitcast float %i.df to i32              ; 5 uses
  %i.dn = and i32 %i.dm, -2147483648              ; 2 uses
  %i.do = and i32 %i.dm, 2139095040               ; 6 uses
  %i.dp = and i32 %i.dm, 8388607                  ; 4 uses
  %i.dq = icmp eq i32 %i.do, 2139095040
  br i1 %i.dq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dr = icmp eq i32 %i.dp, 0
  %..i = select i1 %i.dr, i32 0, i32 512
  %i.ds = lshr exact i32 %i.dn, 16
  %i.dt = lshr i32 %i.dp, 13
  %i.du = or disjoint i32 %i.dt, %i.ds
  %i.dv = or i32 %i.du, %..i
  %i.dw = trunc nuw i32 %i.dv to i16
  %i.dx = or disjoint i16 %i.dw, 31744
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.h:                                             ; preds = %bb.f
  %i.dy = lshr exact i32 %i.dn, 16                ; 4 uses
  %i.dz = lshr exact i32 %i.do, 23                ; 2 uses
  %i.ea = icmp samesign ugt i32 %i.do, 1191182336
  br i1 %i.ea, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.eb = icmp samesign ult i32 %i.do, 947912704
  br i1 %i.eb, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ec = trunc nuw i32 %i.dy to i16
  %i.ed = or disjoint i16 %i.ec, 31744
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.k:                                             ; preds = %bb.i
  %i.ee = lshr exact i32 %i.do, 13
  %i.ef = add nuw nsw i32 %i.ee, 16384
  %i.eg = lshr i32 %i.dp, 13
  %i.eh = and i32 %i.dm, 4096
  %i.ei = icmp ne i32 %i.eh, 0
  %i.ej = and i32 %i.dm, 12287
  %i.ek = icmp ne i32 %i.ej, 0
  %or.cond.not.i = and i1 %i.ei, %i.ek
  %i.el = or disjoint i32 %i.ef, %i.eg
  %i.em = or i32 %i.el, %i.dy
  %i.en = trunc i32 %i.em to i16
  %i.eo = zext i1 %or.cond.not.i to i16
  %spec.select7.i = add i16 %i.en, %i.eo
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.l:                                             ; preds = %bb.i
  %i.ep = icmp samesign ult i32 %i.do, 855638016
  br i1 %i.ep, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.eq = sub nsw i32 126, %i.dz
  %i.er = or disjoint i32 %i.dp, 8388608          ; 3 uses
  %i.es = lshr i32 %i.er, %i.eq                   ; 2 uses
  %i.et = sub nsw i32 29, %i.dz
  %i.eu = and i32 %i.et, 31                       ; 2 uses
  %i.ev = shl nuw i32 1, %i.eu
  %i.ew = and i32 %i.ev, %i.er
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ey = trunc nuw i32 %i.dy to i16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.o:                                             ; preds = %bb.m
  %i.ez = shl i32 3, %i.eu
  %i.fa = add nuw i32 %i.ez, 16777215
  %i.fb = and i32 %i.fa, %i.er
  %i.fc = icmp ne i32 %i.fb, 0
  %i.fd = zext i1 %i.fc to i32
  %spec.select.i = add nuw nsw i32 %i.es, %i.fd
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %.sroa.03.0.i = phi i32 [ %i.es, %bb.m ], [ %spec.select.i, %bb.o ]
  %i.fe = or i32 %.sroa.03.0.i, %i.dy
  %i.ff = trunc nuw i32 %i.fe to i16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.q:                                             ; preds = %.noexc, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.fg = call fastcc noundef i16 @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.df)
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit: ; preds = %bb.q, %bb.p, %bb.n, %bb.k, %bb.j, %bb.g
  %.sroa.017.0 = phi i16 [ %i.fg, %bb.q ], [ %i.dx, %bb.g ], [ %i.ed, %bb.j ], [ %i.ey, %bb.n ], [ %i.ff, %bb.p ], [ %spec.select7.i, %bb.k ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i, i64 80 ; 2 uses
  store i16 %.sroa.017.0, ptr %i.fh, align 2
  %i.fi = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %bb.r, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit61, !prof !14

bb.r:                                             ; preds = %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit
  %i.fk = invoke noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc60:                                         ; preds = %bb.r
  %i.fl = and i128 %i.fk, 18014398509481984
  %.not134 = icmp eq i128 %i.fl, 0
  br i1 %.not134, label %bb.s, label %bb.ad

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit61: ; preds = %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit
  %i.fm = and i64 %i.fi, 18014398509481984
  %.not133 = icmp eq i64 %i.fm, 0
  br i1 %.not133, label %bb.s, label %bb.ad

bb.s:                                             ; preds = %.noexc60, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit61
  %i.fn = bitcast float %i.dg to i32              ; 5 uses
  %i.fo = and i32 %i.fn, -2147483648              ; 2 uses
  %i.fp = and i32 %i.fn, 2139095040               ; 6 uses
  %i.fq = and i32 %i.fn, 8388607                  ; 4 uses
  %i.fr = icmp eq i32 %i.fp, 2139095040
  br i1 %i.fr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fs = icmp eq i32 %i.fq, 0
  %..i67 = select i1 %i.fs, i32 0, i32 512
  %i.ft = lshr exact i32 %i.fo, 16
  %i.fu = lshr i32 %i.fq, 13
  %i.fv = or disjoint i32 %i.fu, %i.ft
  %i.fw = or i32 %i.fv, %..i67
  %i.fx = trunc nuw i32 %i.fw to i16
  %i.fy = or disjoint i16 %i.fx, 31744
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit68

bb.u:                                             ; preds = %bb.s
  %i.fz = lshr exact i32 %i.fo, 16                ; 4 uses
  %i.ga = lshr exact i32 %i.fp, 23                ; 2 uses
  %i.gb = icmp samesign ugt i32 %i.fp, 1191182336
  br i1 %i.gb, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gc = icmp samesign ult i32 %i.fp, 947912704
  br i1 %i.gc, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.gd = trunc nuw i32 %i.fz to i16
  %i.ge = or disjoint i16 %i.gd, 31744
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit68

bb.x:                                             ; preds = %bb.v
  %i.gf = lshr exact i32 %i.fp, 13
  %i.gg = add nuw nsw i32 %i.gf, 16384
  %i.gh = lshr i32 %i.fq, 13
  %i.gi = and i32 %i.fn, 4096
  %i.gj = icmp ne i32 %i.gi, 0
  %i.gk = and i32 %i.fn, 12287
  %i.gl = icmp ne i32 %i.gk, 0
  %or.cond.not.i62 = and i1 %i.gj, %i.gl
  %i.gm = or disjoint i32 %i.gg, %i.gh
  %i.gn = or i32 %i.gm, %i.fz
  %i.go = trunc i32 %i.gn to i16
  %i.gp = zext i1 %or.cond.not.i62 to i16
  %spec.select7.i63 = add i16 %i.go, %i.gp
end_hunk_3
begin_hunk_4_@_RNvXs4_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ2KNtB5_8GgmlType18from_float_imatrix:bb.a
  %i.ot = or disjoint i64 %i.mi, 5                ; 4 uses
  %i.ou = icmp ult i64 %i.ot, %.sroa.10.16.copyload
  br i1 %i.ou, label %bb.bk, label %.invoke

bb.bk:                                            ; preds = %bb.bj
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %i.ot
  %i.ow = load float, ptr %i.ov, align 4, !noundef !7
  %i.ox = fadd float %i.mh, %i.ow
  %i.oy = fdiv float %i.ox, %i.ko
  %i.oz = call float @llvm.round.f32(float %i.oy)
  %i.pa = call i32 @llvm.fptosi.sat.i32.f32(float %i.oz)
  %i.pb = call i32 @llvm.smax.i32(i32 %i.pa, i32 0)
  %i.pc = call i32 @llvm.umin.i32(i32 %i.pb, i32 3)
  %i.pd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ot
  %i.pe = trunc nuw nsw i32 %i.pc to i8
  store i8 %i.pe, ptr %i.pd, align 1
  %i.pf = or disjoint i64 %i.mi, 6                ; 4 uses
  %i.pg = icmp ult i64 %i.pf, %.sroa.10.16.copyload
  br i1 %i.pg, label %bb.bl, label %.invoke

bb.bl:                                            ; preds = %bb.bk
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %i.pf
  %i.pi = load float, ptr %i.ph, align 4, !noundef !7
  %i.pj = fadd float %i.mh, %i.pi
  %i.pk = fdiv float %i.pj, %i.ko
  %i.pl = call float @llvm.round.f32(float %i.pk)
  %i.pm = call i32 @llvm.fptosi.sat.i32.f32(float %i.pl)
  %i.pn = call i32 @llvm.smax.i32(i32 %i.pm, i32 0)
  %i.po = call i32 @llvm.umin.i32(i32 %i.pn, i32 3)
  %i.pp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.pf
  %i.pq = trunc nuw nsw i32 %i.po to i8
  store i8 %i.pq, ptr %i.pp, align 2
  %i.pr = or disjoint i64 %i.mi, 7                ; 4 uses
  %i.ps = icmp ult i64 %i.pr, %.sroa.10.16.copyload
  br i1 %i.ps, label %bb.bm, label %.invoke

bb.bm:                                            ; preds = %bb.bl
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %i.pr
  %i.pu = load float, ptr %i.pt, align 4, !noundef !7
  %i.pv = fadd float %i.mh, %i.pu
  %i.pw = fdiv float %i.pv, %i.ko
  %i.px = call float @llvm.round.f32(float %i.pw)
  %i.py = call i32 @llvm.fptosi.sat.i32.f32(float %i.px)
  %i.pz = call i32 @llvm.smax.i32(i32 %i.py, i32 0)
  %i.qa = call i32 @llvm.umin.i32(i32 %i.pz, i32 3)
  %i.qb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.pr
  %i.qc = trunc nuw nsw i32 %i.qa to i8
  store i8 %i.qc, ptr %i.qb, align 1
  %i.qd = or disjoint i64 %i.mi, 8                ; 4 uses
  %i.qe = icmp ult i64 %i.qd, %.sroa.10.16.copyload
  br i1 %i.qe, label %bb.bn, label %.invoke

bb.bn:                                            ; preds = %bb.bm
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %i.qd
  %i.qg = load float, ptr %i.qf, align 4, !noundef !7
  %i.qh = fadd float %i.mh, %i.qg
  %i.qi = fdiv float %i.qh, %i.ko
  %i.qj = call float @llvm.round.f32(float %i.qi)
  %i.qk = call i32 @llvm.fptosi.sat.i32.f32(float %i.qj)
  %i.ql = call i32 @llvm.smax.i32(i32 %i.qk, i32 0)
  %i.qm = call i32 @llvm.umin.i32(i32 %i.ql, i32 3)
  %i.qn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.qd
  %i.qo = trunc nuw nsw i32 %i.qm to i8
  store i8 %i.qo, ptr %i.qn, align 8
  %i.qp = or disjoint i64 %i.mi, 9                ; 4 uses
  %i.qq = icmp ult i64 %i.qp, %.sroa.10.16.copyload
  br i1 %i.qq, label %bb.bo, label %.invoke

bb.bo:                                            ; preds = %bb.bn
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %i.qp
  %i.qs = load float, ptr %i.qr, align 4, !noundef !7
  %i.qt = fadd float %i.mh, %i.qs
  %i.qu = fdiv float %i.qt, %i.ko
  %i.qv = call float @llvm.round.f32(float %i.qu)
  %i.qw = call i32 @llvm.fptosi.sat.i32.f32(float %i.qv)
  %i.qx = call i32 @llvm.smax.i32(i32 %i.qw, i32 0)
  %i.qy = call i32 @llvm.umin.i32(i32 %i.qx, i32 3)
  %i.qz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.qp
  %i.ra = trunc nuw nsw i32 %i.qy to i8
  store i8 %i.ra, ptr %i.qz, align 1
  %i.rb = or disjoint i64 %i.mi, 10               ; 4 uses
  %i.rc = icmp ult i64 %i.rb, %.sroa.10.16.copyload
  br i1 %i.rc, label %bb.bp, label %.invoke

bb.bp:                                            ; preds = %bb.bo
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %i.rb
  %i.re = load float, ptr %i.rd, align 4, !noundef !7
  %i.rf = fadd float %i.mh, %i.re
  %i.rg = fdiv float %i.rf, %i.ko
  %i.rh = call float @llvm.round.f32(float %i.rg)
  %i.ri = call i32 @llvm.fptosi.sat.i32.f32(float %i.rh)
  %i.rj = call i32 @llvm.smax.i32(i32 %i.ri, i32 0)
  %i.rk = call i32 @llvm.umin.i32(i32 %i.rj, i32 3)
  %i.rl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.rb
  %i.rm = trunc nuw nsw i32 %i.rk to i8
  store i8 %i.rm, ptr %i.rl, align 2
  %i.rn = or disjoint i64 %i.mi, 11               ; 4 uses
  %i.ro = icmp ult i64 %i.rn, %.sroa.10.16.copyload
  br i1 %i.ro, label %bb.bq, label %.invoke

bb.bq:                                            ; preds = %bb.bp
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %i.rn
  %i.rq = load float, ptr %i.rp, align 4, !noundef !7
  %i.rr = fadd float %i.mh, %i.rq
  %i.rs = fdiv float %i.rr, %i.ko
  %i.rt = call float @llvm.round.f32(float %i.rs)
  %i.ru = call i32 @llvm.fptosi.sat.i32.f32(float %i.rt)
  %i.rv = call i32 @llvm.smax.i32(i32 %i.ru, i32 0)
  %i.rw = call i32 @llvm.umin.i32(i32 %i.rv, i32 3)
  %i.rx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.rn
  %i.ry = trunc nuw nsw i32 %i.rw to i8
  store i8 %i.ry, ptr %i.rx, align 1
  %i.rz = or disjoint i64 %i.mi, 12               ; 4 uses
  %i.sa = icmp ult i64 %i.rz, %.sroa.10.16.copyload
  br i1 %i.sa, label %bb.br, label %.invoke

bb.br:                                            ; preds = %bb.bq
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %i.rz
  %i.sc = load float, ptr %i.sb, align 4, !noundef !7
  %i.sd = fadd float %i.mh, %i.sc
  %i.se = fdiv float %i.sd, %i.ko
  %i.sf = call float @llvm.round.f32(float %i.se)
  %i.sg = call i32 @llvm.fptosi.sat.i32.f32(float %i.sf)
  %i.sh = call i32 @llvm.smax.i32(i32 %i.sg, i32 0)
  %i.si = call i32 @llvm.umin.i32(i32 %i.sh, i32 3)
  %i.sj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.rz
  %i.sk = trunc nuw nsw i32 %i.si to i8
  store i8 %i.sk, ptr %i.sj, align 4
  %i.sl = or disjoint i64 %i.mi, 13               ; 4 uses
  %i.sm = icmp ult i64 %i.sl, %.sroa.10.16.copyload
  br i1 %i.sm, label %bb.bs, label %.invoke

bb.bs:                                            ; preds = %bb.br
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %i.sl
  %i.so = load float, ptr %i.sn, align 4, !noundef !7
  %i.sp = fadd float %i.mh, %i.so
  %i.sq = fdiv float %i.sp, %i.ko
  %i.sr = call float @llvm.round.f32(float %i.sq)
  %i.ss = call i32 @llvm.fptosi.sat.i32.f32(float %i.sr)
  %i.st = call i32 @llvm.smax.i32(i32 %i.ss, i32 0)
  %i.su = call i32 @llvm.umin.i32(i32 %i.st, i32 3)
  %i.sv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.sl
  %i.sw = trunc nuw nsw i32 %i.su to i8
  store i8 %i.sw, ptr %i.sv, align 1
  %i.sx = or disjoint i64 %i.mi, 14               ; 4 uses
  %i.sy = icmp ult i64 %i.sx, %.sroa.10.16.copyload
  br i1 %i.sy, label %bb.bt, label %.invoke

bb.bt:                                            ; preds = %bb.bs
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %i.sx
  %i.ta = load float, ptr %i.sz, align 4, !noundef !7
  %i.tb = fadd float %i.mh, %i.ta
  %i.tc = fdiv float %i.tb, %i.ko
  %i.td = call float @llvm.round.f32(float %i.tc)
  %i.te = call i32 @llvm.fptosi.sat.i32.f32(float %i.td)
  %i.tf = call i32 @llvm.smax.i32(i32 %i.te, i32 0)
  %i.tg = call i32 @llvm.umin.i32(i32 %i.tf, i32 3)
  %i.th = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.sx
  %i.ti = trunc nuw nsw i32 %i.tg to i8
  store i8 %i.ti, ptr %i.th, align 2
  %i.tj = or disjoint i64 %i.mi, 15               ; 4 uses
  %i.tk = icmp ult i64 %i.tj, %.sroa.10.16.copyload
  br i1 %i.tk, label %.backedge.loopexit, label %.invoke

.backedge.loopexit:                               ; preds = %bb.bt
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %i.tj
  %i.tm = load float, ptr %i.tl, align 4, !noundef !7
  %i.tn = fadd float %i.mh, %i.tm
  %i.to = fdiv float %i.tn, %i.ko
  %i.tp = call float @llvm.round.f32(float %i.to)
  %i.tq = call i32 @llvm.fptosi.sat.i32.f32(float %i.tp)
  %i.tr = call i32 @llvm.smax.i32(i32 %i.tq, i32 0)
  %i.ts = call i32 @llvm.umin.i32(i32 %i.tr, i32 3)
  %i.tt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.tj
  %i.tu = trunc nuw nsw i32 %i.ts to i8
  store i8 %i.tu, ptr %i.tt, align 1
  br label %.backedge

_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter7IterMutfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSfECsltEA4u8Pgfu_11candle_core.exit: ; preds = %.lr.ph
  %.sroa.03.sroa.0.0.copyload = load ptr, ptr %i.b, align 8 ; 4 uses
  %.sroa.03.sroa.0.0.copyload334 = ptrtoaddr ptr %.sroa.03.sroa.0.0.copyload to i64
  %.sroa.03.sroa.3.0.copyload = load ptr, ptr %.sroa.03.sroa.3.0..sroa_idx, align 8 ; 4 uses
  %.sroa.03.sroa.3.0.copyload335 = ptrtoaddr ptr %.sroa.03.sroa.3.0.copyload to i64
  %.sroa.03.sroa.5.0.copyload = load i64, ptr %.sroa.03.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.03.sroa.6.0.copyload = load i64, ptr %.sroa.03.sroa.6.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.tv = icmp ult i64 %.sroa.03.sroa.5.0.copyload, %.sroa.03.sroa.6.0.copyload
  br i1 %i.tv, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph: ; preds = %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter7IterMutfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSfECsltEA4u8Pgfu_11candle_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.sroa.3.0.copyload) ]
  br i1 %i.w, label %bb.bw, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph.split

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph.split: ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph
  %i.tw = shl nuw nsw i64 %.sroa.12.0185, 4
  %i.tx = urem i64 %i.cb, %i.v
  %i.ty = shl nuw i64 %i.tx, 8
  %invariant.op = add i64 %i.tw, %i.ty            ; 3 uses
  %i.tz = sub i64 %.sroa.03.sroa.6.0.copyload, %.sroa.03.sroa.5.0.copyload
  %9 = udiv i64 %i.cb, %i.v
  %10 = mul i64 %7, %9
  %11 = shl i64 %.sroa.12.0185, 4
  %12 = add i64 %8, %11
  %13 = sub i64 %10, %12
  %14 = xor i64 %.sroa.03.sroa.5.0.copyload, -1
  %15 = add i64 %.sroa.03.sroa.6.0.copyload, %14
  %16 = call i64 @llvm.umax.i64(i64 %5, i64 %invariant.op)
  %i.ua = add i64 %16, %13
  %i.ub = call i64 @llvm.umin.i64(i64 %15, i64 %i.ua)
  %i.uc = add i64 %i.ub, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.uc, 5
  %i.ud = sub i64 %.sroa.03.sroa.3.0.copyload335, %.sroa.03.sroa.0.0.copyload334
  %diff.check = icmp ugt i64 %i.ud, -16
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.preheader, label %vector.ph336

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.preheader: ; preds = %vector.body337, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph.split
  %.sroa.5104.0183.ph = phi i64 [ %.sroa.03.sroa.5.0.copyload, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph.split ], [ %i.uh, %vector.body337 ]
  %.sroa.8106.0182.ph = phi i64 [ 0, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph.split ], [ %n.vec, %vector.body337 ]
  br label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit

vector.ph336:                                     ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph.split
  %i.ue = and i64 %i.uc, 3                        ; 2 uses
  %i.uf = icmp eq i64 %i.ue, 0
  %i.ug = select i1 %i.uf, i64 4, i64 %i.ue
  %n.vec = sub i64 %i.uc, %i.ug                   ; 3 uses
  %i.uh = add i64 %.sroa.03.sroa.5.0.copyload, %n.vec
  %invariant.gep = getelementptr [4 x i8], ptr %4, i64 %invariant.op
  br label %vector.body337

vector.body337:                                   ; preds = %vector.body337, %vector.ph336
  %index = phi i64 [ 0, %vector.ph336 ], [ %index.next, %vector.body337 ] ; 3 uses
  %i.ui = add nuw i64 %.sroa.03.sroa.5.0.copyload, %index ; 2 uses
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.sroa.3.0.copyload, i64 %i.ui
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.sroa.0.0.copyload, i64 %i.ui
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  %wide.load338 = load <4 x float>, ptr %gep, align 4
  %wide.load339 = load <4 x float>, ptr %i.uj, align 4 ; 2 uses
  %i.ul = fmul <4 x float> %wide.load339, %wide.load339
  %i.um = fadd <4 x float> %broadcast.splat, %i.ul
  %i.un = call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.um)
  %i.uo = fmul <4 x float> %wide.load338, %i.un
  store <4 x float> %i.uo, ptr %i.uk, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.up = icmp eq i64 %index.next, %n.vec
  br i1 %i.up, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.preheader, label %vector.body337, !llvm.loop !869

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader: ; preds = %bb.bx, %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter7IterMutfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSfECsltEA4u8Pgfu_11candle_core.exit
  %exitcond235.not = icmp eq i64 %.sroa.12.0185, 16
  br i1 %exitcond235.not, label %.invoke, label %bb.bu

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit: ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.preheader, %bb.bx
  %.sroa.5104.0183 = phi i64 [ %i.vp, %bb.bx ], [ %.sroa.5104.0183.ph, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.preheader ] ; 3 uses
  %.sroa.8106.0182 = phi i64 [ %i.vm, %bb.bx ], [ %.sroa.8106.0182.ph, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.preheader ] ; 2 uses
  %.reass = add nuw nsw i64 %.sroa.8106.0182, %invariant.op ; 3 uses
  %i.uq = icmp ult i64 %.reass, %5
  br i1 %i.uq, label %bb.bx, label %.invoke

bb.bu:                                            ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader
  %.val.i86 = load float, ptr %i.h, align 4, !noundef !7
  %.val.i86.1 = load float, ptr %i.x, align 4, !noundef !7
  %i.ur = fadd float %.val.i86, %.val.i86.1
  %.val.i86.2 = load float, ptr %i.y, align 4, !noundef !7
  %i.us = fadd float %i.ur, %.val.i86.2
  %.val.i86.3 = load float, ptr %i.z, align 4, !noundef !7
  %i.ut = fadd float %i.us, %.val.i86.3
  %.val.i86.4 = load float, ptr %i.aa, align 4, !noundef !7
  %i.uu = fadd float %i.ut, %.val.i86.4
  %.val.i86.5 = load float, ptr %i.ab, align 4, !noundef !7
  %i.uv = fadd float %i.uu, %.val.i86.5
  %.val.i86.6 = load float, ptr %i.ac, align 4, !noundef !7
  %i.uw = fadd float %i.uv, %.val.i86.6
  %.val.i86.7 = load float, ptr %i.ad, align 4, !noundef !7
  %i.ux = fadd float %i.uw, %.val.i86.7
  %.val.i86.8 = load float, ptr %i.ae, align 4, !noundef !7
  %i.uy = fadd float %i.ux, %.val.i86.8
  %.val.i86.9 = load float, ptr %i.af, align 4, !noundef !7
  %i.uz = fadd float %i.uy, %.val.i86.9
  %.val.i86.10 = load float, ptr %i.ag, align 4, !noundef !7
  %i.va = fadd float %i.uz, %.val.i86.10
  %.val.i86.11 = load float, ptr %i.ah, align 4, !noundef !7
  %i.vb = fadd float %i.va, %.val.i86.11
  %.val.i86.12 = load float, ptr %i.ai, align 4, !noundef !7
  %i.vc = fadd float %i.vb, %.val.i86.12
  %.val.i86.13 = load float, ptr %i.aj, align 4, !noundef !7
  %i.vd = fadd float %i.vc, %.val.i86.13
  %.val.i86.14 = load float, ptr %i.ak, align 4, !noundef !7
  %i.ve = fadd float %i.vd, %.val.i86.14
  %.val.i86.15 = load float, ptr %i.al, align 4, !noundef !7
  %i.vf = fadd float %i.ve, %.val.i86.15
  %i.vg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.sroa.12.0185
  store float %i.vf, ptr %i.vg, align 4
  %i.vh = invoke { float, float } @_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx3_quants(i32 noundef 3, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.0.0187, i64 noundef 16, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.h, i64 16, float noundef f0xBF666666, float noundef 5.000000e-02, i64 noundef 36, i1 noundef zeroext false)
          to label %bb.bv unwind label %.loopexit.split-lp.loopexit ; 2 uses

bb.bv:                                            ; preds = %bb.bu
  %i.vi = extractvalue { float, float } %i.vh, 1
  %i.vj = extractvalue { float, float } %i.vh, 0
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.sroa.12.0185
  store float %i.vj, ptr %i.vk, align 4
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.sroa.12.0185
  store float %i.vi, ptr %i.vl, align 4
  %.not.i.i = icmp eq i64 %i.dd, 0
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph

bb.bw:                                            ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #28
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bx:                                            ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit
  %i.vm = add nuw nsw i64 %.sroa.8106.0182, 1     ; 2 uses
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.sroa.3.0.copyload, i64 %.sroa.5104.0183
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.sroa.0.0.copyload, i64 %.sroa.5104.0183
  %i.vp = add nuw i64 %.sroa.5104.0183, 1
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.reass
  %i.vr = load float, ptr %i.vq, align 4, !noundef !7
  %i.vs = load float, ptr %i.vn, align 4, !noundef !7 ; 2 uses
  %i.vt = fmul float %i.vs, %i.vs
  %i.vu = fadd float %i.da, %i.vt
  %i.vv = call float @llvm.sqrt.f32(float %i.vu)
  %i.vw = fmul float %i.vr, %i.vv
  store float %i.vw, ptr %i.vo, align 4
  %exitcond.not = icmp eq i64 %i.vm, %i.tz
  br i1 %exitcond.not, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit, !llvm.loop !870

bb.by:                                            ; preds = %.loopexit.split-lp
  %i.vx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ2KRSfEEEEB2h_.exit: ; preds = %.loopexit.split-lp
  resume { ptr, i32 } %lpad.phi

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit68.rtvec: ; preds = %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit68
  %i.vy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i, i64 82 ; 2 uses
  store i16 %.sroa.018.0, ptr %i.vy, align 2
  %i.vz = load <16 x i8>, ptr %i.e, align 16
  %i.wa = load <16 x i8>, ptr %i.c, align 16
  %i.wb = shl <16 x i8> %i.wa, splat (i8 4)
  %i.wc = or <16 x i8> %i.wb, %i.vz
  store <16 x i8> %i.wc, ptr %.sroa.0.0.copyload1.i, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit68.rtcont

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit68.rtscalar: ; preds = %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit68
  %i.wd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i, i64 82 ; 2 uses
  store i16 %.sroa.018.0, ptr %i.wd, align 2
  %i.we = load i8, ptr %i.e, align 16, !noundef !7
  %i.wf = load i8, ptr %i.c, align 16, !noundef !7
  %i.wg = shl i8 %i.wf, 4
  %i.wh = or i8 %i.wg, %i.we
  store i8 %i.wh, ptr %.sroa.0.0.copyload1.i, align 2
  %i.wi = load i8, ptr %i.am, align 1, !noundef !7
  %i.wj = load i8, ptr %i.an, align 1, !noundef !7
  %i.wk = shl i8 %i.wj, 4
  %i.wl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i, i64 1
  %i.wm = or i8 %i.wk, %i.wi
  store i8 %i.wm, ptr %i.wl, align 1
  %i.wn = load i8, ptr %i.ao, align 2, !noundef !7
  %i.wo = load i8, ptr %i.ap, align 2, !noundef !7
  %i.wp = shl i8 %i.wo, 4
  %i.wq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i, i64 2
  %i.wr = or i8 %i.wp, %i.wn
  store i8 %i.wr, ptr %i.wq, align 2
  %i.ws = load i8, ptr %i.aq, align 1, !noundef !7
  %i.wt = load i8, ptr %i.ar, align 1, !noundef !7
  %i.wu = shl i8 %i.wt, 4
  %i.wv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i, i64 3
  %i.ww = or i8 %i.wu, %i.ws
  store i8 %i.ww, ptr %i.wv, align 1
  %i.wx = load i8, ptr %i.as, align 4, !noundef !7
  %i.wy = load i8, ptr %i.at, align 4, !noundef !7
  %i.wz = shl i8 %i.wy, 4
  %i.xa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i, i64 4
  %i.xb = or i8 %i.wz, %i.wx
  store i8 %i.xb, ptr %i.xa, align 2
  %i.xc = load i8, ptr %i.au, align 1, !noundef !7
  %i.xd = load i8, ptr %i.av, align 1, !noundef !7
  %i.xe = shl i8 %i.xd, 4
  %i.xf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i, i64 5
  %i.xg = or i8 %i.xe, %i.xc
  store i8 %i.xg, ptr %i.xf, align 1
  %i.xh = load i8, ptr %i.aw, align 2, !noundef !7
  %i.xi = load i8, ptr %i.ax, align 2, !noundef !7
  %i.xj = shl i8 %i.xi, 4
  %i.xk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i, i64 6
  %i.xl = or i8 %i.xj, %i.xh
  store i8 %i.xl, ptr %i.xk, align 2
  %i.xm = load i8, ptr %i.ay, align 1, !noundef !7
  %i.xn = load i8, ptr %i.az, align 1, !noundef !7
  %i.xo = shl i8 %i.xn, 4
  %i.xp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i, i64 7
  %i.xq = or i8 %i.xo, %i.xm
  store i8 %i.xq, ptr %i.xp, align 1
  %i.xr = load i8, ptr %i.ba, align 8, !noundef !7
  %i.xs = load i8, ptr %i.bb, align 8, !noundef !7
  %i.xt = shl i8 %i.xs, 4
  %i.xu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i, i64 8
  %i.xv = or i8 %i.xt, %i.xr
  store i8 %i.xv, ptr %i.xu, align 2
  %i.xw = load i8, ptr %i.bc, align 1, !noundef !7
  %i.xx = load i8, ptr %i.bd, align 1, !noundef !7
  %i.xy = shl i8 %i.xx, 4
  %i.xz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i, i64 9
  %i.ya = or i8 %i.xy, %i.xw
  store i8 %i.ya, ptr %i.xz, align 1
  %i.yb = load i8, ptr %i.be, align 2, !noundef !7
end_hunk_4
begin_hunk_5_@_RNvXs5_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ3KNtB5_8GgmlType13vec_dot_unopt:bb.a
  store i8 %i.atq, ptr %i.ath, align 1, !alias.scope !996, !noalias !995
  %i.atr = getelementptr inbounds nuw i8, ptr %.sroa.041.0392, i64 112 ; 2 uses
  %.val9.i231.15 = load i8, ptr %.ptr.15, align 1, !noalias !995, !noundef !7
  %i.ats = and i8 %.val9.i231.15, %i.and
  %i.att = icmp eq i8 %i.ats, 0
  %..i.i.i232.15 = select i1 %i.att, i8 -4, i8 0
  %i.atu = load i8, ptr %i.atm, align 1, !alias.scope !996, !noalias !995, !noundef !7
  %i.atv = add i8 %..i.i.i232.15, %i.atu
  store i8 %i.atv, ptr %i.atm, align 1, !alias.scope !996, !noalias !995
  %i.atw = getelementptr inbounds nuw i8, ptr %.sroa.041.0392, i64 113 ; 2 uses
  %.val9.i231.16 = load i8, ptr %.ptr.16, align 1, !noalias !995, !noundef !7
  %i.atx = and i8 %.val9.i231.16, %i.and
  %i.aty = icmp eq i8 %i.atx, 0
  %..i.i.i232.16 = select i1 %i.aty, i8 -4, i8 0
  %i.atz = load i8, ptr %i.atr, align 1, !alias.scope !996, !noalias !995, !noundef !7
  %i.aua = add i8 %..i.i.i232.16, %i.atz
  store i8 %i.aua, ptr %i.atr, align 1, !alias.scope !996, !noalias !995
  %i.aub = getelementptr inbounds nuw i8, ptr %.sroa.041.0392, i64 114 ; 2 uses
  %.val9.i231.17 = load i8, ptr %.ptr.17, align 1, !noalias !995, !noundef !7
  %i.auc = and i8 %.val9.i231.17, %i.and
  %i.aud = icmp eq i8 %i.auc, 0
  %..i.i.i232.17 = select i1 %i.aud, i8 -4, i8 0
  %i.aue = load i8, ptr %i.atw, align 1, !alias.scope !996, !noalias !995, !noundef !7
  %i.auf = add i8 %..i.i.i232.17, %i.aue
  store i8 %i.auf, ptr %i.atw, align 1, !alias.scope !996, !noalias !995
  %i.aug = getelementptr inbounds nuw i8, ptr %.sroa.041.0392, i64 115 ; 2 uses
  %.val9.i231.18 = load i8, ptr %.ptr.18, align 1, !noalias !995, !noundef !7
  %i.auh = and i8 %.val9.i231.18, %i.and
  %i.aui = icmp eq i8 %i.auh, 0
  %..i.i.i232.18 = select i1 %i.aui, i8 -4, i8 0
  %i.auj = load i8, ptr %i.aub, align 1, !alias.scope !996, !noalias !995, !noundef !7
  %i.auk = add i8 %..i.i.i232.18, %i.auj
  store i8 %i.auk, ptr %i.aub, align 1, !alias.scope !996, !noalias !995
  %i.aul = getelementptr inbounds nuw i8, ptr %.sroa.041.0392, i64 116 ; 2 uses
  %.val9.i231.19 = load i8, ptr %.ptr.19, align 1, !noalias !995, !noundef !7
  %i.aum = and i8 %.val9.i231.19, %i.and
  %i.aun = icmp eq i8 %i.aum, 0
  %..i.i.i232.19 = select i1 %i.aun, i8 -4, i8 0
  %i.auo = load i8, ptr %i.aug, align 1, !alias.scope !996, !noalias !995, !noundef !7
  %i.aup = add i8 %..i.i.i232.19, %i.auo
  store i8 %i.aup, ptr %i.aug, align 1, !alias.scope !996, !noalias !995
  %i.auq = getelementptr inbounds nuw i8, ptr %.sroa.041.0392, i64 117 ; 2 uses
  %.val9.i231.20 = load i8, ptr %.ptr.20, align 1, !noalias !995, !noundef !7
  %i.aur = and i8 %.val9.i231.20, %i.and
  %i.aus = icmp eq i8 %i.aur, 0
  %..i.i.i232.20 = select i1 %i.aus, i8 -4, i8 0
  %i.aut = load i8, ptr %i.aul, align 1, !alias.scope !996, !noalias !995, !noundef !7
  %i.auu = add i8 %..i.i.i232.20, %i.aut
  store i8 %i.auu, ptr %i.aul, align 1, !alias.scope !996, !noalias !995
  %i.auv = getelementptr inbounds nuw i8, ptr %.sroa.041.0392, i64 118 ; 2 uses
  %.val9.i231.21 = load i8, ptr %.ptr.21, align 1, !noalias !995, !noundef !7
  %i.auw = and i8 %.val9.i231.21, %i.and
  %i.aux = icmp eq i8 %i.auw, 0
  %..i.i.i232.21 = select i1 %i.aux, i8 -4, i8 0
  %i.auy = load i8, ptr %i.auq, align 1, !alias.scope !996, !noalias !995, !noundef !7
  %i.auz = add i8 %..i.i.i232.21, %i.auy
  store i8 %i.auz, ptr %i.auq, align 1, !alias.scope !996, !noalias !995
  %i.ava = getelementptr inbounds nuw i8, ptr %.sroa.041.0392, i64 119 ; 2 uses
  %.val9.i231.22 = load i8, ptr %.ptr.22, align 1, !noalias !995, !noundef !7
  %i.avb = and i8 %.val9.i231.22, %i.and
  %i.avc = icmp eq i8 %i.avb, 0
  %..i.i.i232.22 = select i1 %i.avc, i8 -4, i8 0
  %i.avd = load i8, ptr %i.auv, align 1, !alias.scope !996, !noalias !995, !noundef !7
  %i.ave = add i8 %..i.i.i232.22, %i.avd
  store i8 %i.ave, ptr %i.auv, align 1, !alias.scope !996, !noalias !995
  %i.avf = getelementptr inbounds nuw i8, ptr %.sroa.041.0392, i64 120 ; 2 uses
  %.val9.i231.23 = load i8, ptr %.ptr.23, align 1, !noalias !995, !noundef !7
  %i.avg = and i8 %.val9.i231.23, %i.and
  %i.avh = icmp eq i8 %i.avg, 0
  %..i.i.i232.23 = select i1 %i.avh, i8 -4, i8 0
  %i.avi = load i8, ptr %i.ava, align 1, !alias.scope !996, !noalias !995, !noundef !7
  %i.avj = add i8 %..i.i.i232.23, %i.avi
  store i8 %i.avj, ptr %i.ava, align 1, !alias.scope !996, !noalias !995
  %i.avk = getelementptr inbounds nuw i8, ptr %.sroa.041.0392, i64 121 ; 2 uses
  %.val9.i231.24 = load i8, ptr %.ptr.24, align 1, !noalias !995, !noundef !7
  %i.avl = and i8 %.val9.i231.24, %i.and
  %i.avm = icmp eq i8 %i.avl, 0
  %..i.i.i232.24 = select i1 %i.avm, i8 -4, i8 0
  %i.avn = load i8, ptr %i.avf, align 1, !alias.scope !996, !noalias !995, !noundef !7
  %i.avo = add i8 %..i.i.i232.24, %i.avn
  store i8 %i.avo, ptr %i.avf, align 1, !alias.scope !996, !noalias !995
  %i.avp = getelementptr inbounds nuw i8, ptr %.sroa.041.0392, i64 122 ; 2 uses
  %.val9.i231.25 = load i8, ptr %.ptr.25, align 1, !noalias !995, !noundef !7
  %i.avq = and i8 %.val9.i231.25, %i.and
  %i.avr = icmp eq i8 %i.avq, 0
  %..i.i.i232.25 = select i1 %i.avr, i8 -4, i8 0
  %i.avs = load i8, ptr %i.avk, align 1, !alias.scope !996, !noalias !995, !noundef !7
  %i.avt = add i8 %..i.i.i232.25, %i.avs
  store i8 %i.avt, ptr %i.avk, align 1, !alias.scope !996, !noalias !995
  %i.avu = getelementptr inbounds nuw i8, ptr %.sroa.041.0392, i64 123 ; 2 uses
  %.val9.i231.26 = load i8, ptr %.ptr.26, align 1, !noalias !995, !noundef !7
  %i.avv = and i8 %.val9.i231.26, %i.and
  %i.avw = icmp eq i8 %i.avv, 0
  %..i.i.i232.26 = select i1 %i.avw, i8 -4, i8 0
  %i.avx = load i8, ptr %i.avp, align 1, !alias.scope !996, !noalias !995, !noundef !7
  %i.avy = add i8 %..i.i.i232.26, %i.avx
  store i8 %i.avy, ptr %i.avp, align 1, !alias.scope !996, !noalias !995
  %i.avz = getelementptr inbounds nuw i8, ptr %.sroa.041.0392, i64 124 ; 2 uses
  %.val9.i231.27 = load i8, ptr %.ptr.27, align 1, !noalias !995, !noundef !7
  %i.awa = and i8 %.val9.i231.27, %i.and
  %i.awb = icmp eq i8 %i.awa, 0
  %..i.i.i232.27 = select i1 %i.awb, i8 -4, i8 0
  %i.awc = load i8, ptr %i.avu, align 1, !alias.scope !996, !noalias !995, !noundef !7
  %i.awd = add i8 %..i.i.i232.27, %i.awc
  store i8 %i.awd, ptr %i.avu, align 1, !alias.scope !996, !noalias !995
  %i.awe = getelementptr inbounds nuw i8, ptr %.sroa.041.0392, i64 125 ; 2 uses
  %.val9.i231.28 = load i8, ptr %.ptr.28, align 1, !noalias !995, !noundef !7
  %i.awf = and i8 %.val9.i231.28, %i.and
  %i.awg = icmp eq i8 %i.awf, 0
  %..i.i.i232.28 = select i1 %i.awg, i8 -4, i8 0
  %i.awh = load i8, ptr %i.avz, align 1, !alias.scope !996, !noalias !995, !noundef !7
  %i.awi = add i8 %..i.i.i232.28, %i.awh
  store i8 %i.awi, ptr %i.avz, align 1, !alias.scope !996, !noalias !995
  %i.awj = getelementptr inbounds nuw i8, ptr %.sroa.041.0392, i64 126 ; 2 uses
  %.val9.i231.29 = load i8, ptr %.ptr.29, align 1, !noalias !995, !noundef !7
  %i.awk = and i8 %.val9.i231.29, %i.and
  %i.awl = icmp eq i8 %i.awk, 0
  %..i.i.i232.29 = select i1 %i.awl, i8 -4, i8 0
  %i.awm = load i8, ptr %i.awe, align 1, !alias.scope !996, !noalias !995, !noundef !7
  %i.awn = add i8 %..i.i.i232.29, %i.awm
  store i8 %i.awn, ptr %i.awe, align 1, !alias.scope !996, !noalias !995
  %i.awo = getelementptr inbounds nuw i8, ptr %.sroa.041.0392, i64 127 ; 2 uses
  %.val9.i231.30 = load i8, ptr %.ptr.30, align 1, !noalias !995, !noundef !7
  %i.awp = and i8 %.val9.i231.30, %i.and
  %i.awq = icmp eq i8 %i.awp, 0
  %..i.i.i232.30 = select i1 %i.awq, i8 -4, i8 0
  %i.awr = load i8, ptr %i.awj, align 1, !alias.scope !996, !noalias !995, !noundef !7
  %i.aws = add i8 %..i.i.i232.30, %i.awr
  store i8 %i.aws, ptr %i.awj, align 1, !alias.scope !996, !noalias !995
  %.val9.i231.31 = load i8, ptr %.ptr.31, align 1, !noalias !995, !noundef !7
  %i.awt = and i8 %.val9.i231.31, %i.and
  %i.awu = icmp eq i8 %i.awt, 0
  %..i.i.i232.31 = select i1 %i.awu, i8 -4, i8 0
  %i.awv = load i8, ptr %i.awo, align 1, !alias.scope !996, !noalias !995, !noundef !7
  %i.aww = add i8 %..i.i.i232.31, %i.awv
  store i8 %i.aww, ptr %i.awo, align 1, !alias.scope !996, !noalias !995
  %i.awx = shl i8 %.sroa.0236.0389, 4
  %i.awy = getelementptr inbounds nuw i8, ptr %.sroa.041.0392, i64 128
  br i1 %i.hg, label %bb.p, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ3KNtB5_8GgmlType18from_float_imatrix(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef range(i64 0, 83848836698679781) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %4, i64 noundef range(i64 0, 2305843009213693952) %5, i64 noundef %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [256 x i8], align 16              ; 43 uses
  %i.c = alloca [16 x i8], align 1                ; 5 uses
  %i.d = alloca [64 x i8], align 4                ; 5 uses
  %i.e = alloca [64 x i8], align 4                ; 22 uses
  %i.f = alloca [64 x i8], align 4                ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RINvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils22group_for_quantizationNtNtB4_8k_quants8BlockQ3KEB6_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef %3)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.k = load i64, ptr %i.h, align 8, !range !22, !noundef !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !7 ; 3 uses
  %i.n = icmp ult i64 %i.m, 384307168202282326
  call void @llvm.assume(i1 %i.n)
  %.idx = mul nuw nsw i64 %i.m, 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.j, ptr %i.g, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %i.j, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.k, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr %i.o, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.p = icmp eq i64 %i.m, 0
  br i1 %i.p, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i._crit_edge, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i.lr.ph

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i.lr.ph: ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.03.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.03.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.03.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.r = lshr i64 %6, 8                           ; 3 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  %scevgep363 = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %7 = and i64 %6, -256
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i.lr.ph, %.loopexit.1
  %i.ap = phi ptr [ %i.j, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i.lr.ph ], [ %i.ge, %.loopexit.1 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  call void @llvm.experimental.noalias.scope.decl(metadata !1013)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %i.aq, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !alias.scope !1014, !noalias !1015
  %.sroa.0.0.copyload1.i = load ptr, ptr %i.ap, align 8, !noalias !1016 ; 8 uses
  %.not.i = icmp eq ptr %.sroa.0.0.copyload1.i, null
  br i1 %.not.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i._crit_edge, label %bb.b

.loopexit154:                                     ; preds = %bb.aa
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph, %bb.bf
  %lpad.loopexit155 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %._crit_edge, %bb.d
  %lpad.loopexit160 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.bh
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit154
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit154 ], [ %lpad.loopexit155, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit160, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KRSfEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KRSfEEEEB2h_.exit unwind label %bb.bj

bb.b:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i
  %.sroa.7.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.8.16.copyload = load ptr, ptr %.sroa.7.0..sroa_idx2.i, align 8, !noalias !1012, !nonnull !7, !noundef !7 ; 22 uses
  %.sroa.10.16..sroa.7.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.10.16.copyload = load i64, ptr %.sroa.10.16..sroa.7.0..sroa_idx2.i.sroa_idx, align 8, !noalias !1012 ; 37 uses
  %i.ar = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !1012, !noalias !1017, !noundef !7 ; 4 uses
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !1012, !noalias !1017
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.f, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.e, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.d, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.b, i8 0, i64 256, i1 false)
  %i.at = icmp eq i64 %.sroa.10.16.copyload, 0
  br i1 %i.at, label %._crit_edge, label %.preheader158.preheader

.preheader158.preheader:                          ; preds = %bb.b
  %i.au = add i64 %.sroa.10.16.copyload, -1
  %xtraiter = and i64 %.sroa.10.16.copyload, 3    ; 3 uses
  %i.av = icmp ult i64 %i.au, 3
  br i1 %i.av, label %.preheader158.epil.preheader, label %.preheader158.preheader.new

.preheader158.preheader.new:                      ; preds = %.preheader158.preheader
  %unroll_iter = and i64 %.sroa.10.16.copyload, -4
  br label %.preheader158

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i._crit_edge: ; preds = %.loopexit.1, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i, %bb.a
  call void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KRSfEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

.preheader158:                                    ; preds = %.preheader158, %.preheader158.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader158.preheader.new ], [ %i.bl, %.preheader158 ] ; 5 uses
  %.sroa.02.0.i = phi float [ -0.000000e+00, %.preheader158.preheader.new ], [ %i.bk, %.preheader158 ]
  %niter = phi i64 [ 0, %.preheader158.preheader.new ], [ %niter.next.3, %.preheader158 ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %.sroa.04.0.i
  %.val.i = load float, ptr %i.aw, align 4, !noundef !7 ; 2 uses
  %i.ax = fmul float %.val.i, %.val.i
  %i.ay = fadd float %.sroa.02.0.i, %i.ax
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %.sroa.04.0.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %.val.i.1 = load float, ptr %i.ba, align 4, !noundef !7 ; 2 uses
  %i.bb = fmul float %.val.i.1, %.val.i.1
  %i.bc = fadd float %i.ay, %i.bb
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %.sroa.04.0.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.val.i.2 = load float, ptr %i.be, align 4, !noundef !7 ; 2 uses
  %i.bf = fmul float %.val.i.2, %.val.i.2
  %i.bg = fadd float %i.bc, %i.bf
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %.sroa.04.0.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %.val.i.3 = load float, ptr %i.bi, align 4, !noundef !7 ; 2 uses
  %i.bj = fmul float %.val.i.3, %.val.i.3
  %i.bk = fadd float %i.bg, %i.bj                 ; 3 uses
  %i.bl = add nuw i64 %.sroa.04.0.i, 4            ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit159.unr-lcssa, label %.preheader158

.loopexit159.unr-lcssa:                           ; preds = %.preheader158
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit159, label %.preheader158.epil.preheader

.preheader158.epil.preheader:                     ; preds = %.loopexit159.unr-lcssa, %.preheader158.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader158.preheader ], [ %i.bl, %.loopexit159.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi float [ -0.000000e+00, %.preheader158.preheader ], [ %i.bk, %.loopexit159.unr-lcssa ]
  %lcmp.mod397 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod397)
  br label %.preheader158.epil

.preheader158.epil:                               ; preds = %.preheader158.epil, %.preheader158.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.bp, %.preheader158.epil ], [ %.sroa.04.0.i.epil.init, %.preheader158.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.epil = phi float [ %i.bo, %.preheader158.epil ], [ %.sroa.02.0.i.epil.init, %.preheader158.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader158.epil ], [ 0, %.preheader158.epil.preheader ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %.sroa.04.0.i.epil
  %.val.i.epil = load float, ptr %i.bm, align 4, !noundef !7 ; 2 uses
  %i.bn = fmul float %.val.i.epil, %.val.i.epil
  %i.bo = fadd float %.sroa.02.0.i.epil, %i.bn    ; 2 uses
  %i.bp = add nuw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit159, label %.preheader158.epil, !llvm.loop !1003

.loopexit159:                                     ; preds = %.preheader158.epil, %.loopexit159.unr-lcssa
  %.lcssa = phi float [ %i.bk, %.loopexit159.unr-lcssa ], [ %i.bo, %.preheader158.epil ]
  %i.bq = fmul float %.lcssa, 2.000000e+00
  %i.br = fmul float %i.bq, 3.906250e-03          ; 2 uses
  %i.bs = and i64 %.sroa.10.16.copyload, -16      ; 2 uses
  %.not.i.i201 = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i201, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.loopexit159
  %8 = shl i64 %i.ar, 8
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.br, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bg
  %.sroa.0.0204 = phi ptr [ %i.bt, %bb.bg ], [ %.sroa.8.16.copyload, %.lr.ph.preheader ] ; 3 uses
  %.sroa.5102.0203 = phi i64 [ %i.bu, %bb.bg ], [ %i.bs, %.lr.ph.preheader ]
  %.sroa.12.0202 = phi i64 [ %i.bv, %bb.bg ], [ 0, %.lr.ph.preheader ] ; 7 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.0204, i64 64 ; 2 uses
  %i.bu = add i64 %.sroa.5102.0203, -16           ; 2 uses
  %i.bv = add nuw nsw i64 %.sroa.12.0202, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.e, ptr noundef nonnull %i.q, ptr noundef nonnull readonly align 4 %.sroa.0.0204, ptr noundef nonnull readonly %i.bt)
          to label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter7IterMutfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSfECsltEA4u8Pgfu_11candle_core.exit unwind label %.loopexit.split-lp.loopexit

._crit_edge:                                      ; preds = %bb.bg, %bb.b, %.loopexit159
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i, i64 96 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.bw, i8 0, i64 12, i1 false)
  %i.bx = invoke noundef float @_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils14make_qx_quants(i64 noundef 16, i32 noundef 32, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, i32 noundef 1, ptr noundef nonnull %i.d)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.c:                                             ; preds = %._crit_edge
  %i.by = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %bb.d, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.ca = invoke noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %bb.d
  %i.cb = and i128 %i.ca, 18014398509481984
  %.not149 = icmp eq i128 %i.cb, 0
  br i1 %.not149, label %bb.e, label %bb.p

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit: ; preds = %bb.c
  %i.cc = and i64 %i.by, 18014398509481984
  %.not = icmp eq i64 %i.cc, 0
  br i1 %.not, label %bb.e, label %bb.p

bb.e:                                             ; preds = %.noexc, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.cd = bitcast float %i.bx to i32              ; 5 uses
  %i.ce = and i32 %i.cd, -2147483648              ; 2 uses
  %i.cf = and i32 %i.cd, 2139095040               ; 6 uses
  %i.cg = and i32 %i.cd, 8388607                  ; 4 uses
  %i.ch = icmp eq i32 %i.cf, 2139095040
  br i1 %i.ch, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ci = icmp eq i32 %i.cg, 0
  %..i = select i1 %i.ci, i32 0, i32 512
  %i.cj = lshr exact i32 %i.ce, 16
  %i.ck = lshr i32 %i.cg, 13
  %i.cl = or disjoint i32 %i.ck, %i.cj
  %i.cm = or i32 %i.cl, %..i
  %i.cn = trunc nuw i32 %i.cm to i16
  %i.co = or disjoint i16 %i.cn, 31744
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.g:                                             ; preds = %bb.e
  %i.cp = lshr exact i32 %i.ce, 16                ; 4 uses
  %i.cq = lshr exact i32 %i.cf, 23                ; 2 uses
  %i.cr = icmp samesign ugt i32 %i.cf, 1191182336
  br i1 %i.cr, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cs = icmp samesign ult i32 %i.cf, 947912704
  br i1 %i.cs, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ct = trunc nuw i32 %i.cp to i16
  %i.cu = or disjoint i16 %i.ct, 31744
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.j:                                             ; preds = %bb.h
  %i.cv = lshr exact i32 %i.cf, 13
  %i.cw = add nuw nsw i32 %i.cv, 16384
  %i.cx = lshr i32 %i.cg, 13
  %i.cy = and i32 %i.cd, 4096
  %i.cz = icmp ne i32 %i.cy, 0
  %i.da = and i32 %i.cd, 12287
  %i.db = icmp ne i32 %i.da, 0
  %or.cond.not.i = and i1 %i.cz, %i.db
  %i.dc = or disjoint i32 %i.cw, %i.cx
  %i.dd = or i32 %i.dc, %i.cp
  %i.de = trunc i32 %i.dd to i16
  %i.df = zext i1 %or.cond.not.i to i16
  %spec.select7.i = add i16 %i.de, %i.df
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.k:                                             ; preds = %bb.h
  %i.dg = icmp samesign ult i32 %i.cf, 855638016
  br i1 %i.dg, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dh = sub nsw i32 126, %i.cq
  %i.di = or disjoint i32 %i.cg, 8388608          ; 3 uses
  %i.dj = lshr i32 %i.di, %i.dh                   ; 2 uses
  %i.dk = sub nsw i32 29, %i.cq
  %i.dl = and i32 %i.dk, 31                       ; 2 uses
  %i.dm = shl nuw i32 1, %i.dl
  %i.dn = and i32 %i.dm, %i.di
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.dp = trunc nuw i32 %i.cp to i16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.n:                                             ; preds = %bb.l
  %i.dq = shl i32 3, %i.dl
  %i.dr = add nuw i32 %i.dq, 16777215
  %i.ds = and i32 %i.dr, %i.di
  %i.dt = icmp ne i32 %i.ds, 0
  %i.du = zext i1 %i.dt to i32
  %spec.select.i = add nuw nsw i32 %i.dj, %i.du
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.sroa.03.0.i = phi i32 [ %i.dj, %bb.l ], [ %spec.select.i, %bb.n ]
  %i.dv = or i32 %.sroa.03.0.i, %i.cp
  %i.dw = trunc nuw i32 %i.dv to i16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.p:                                             ; preds = %.noexc, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.dx = call fastcc noundef i16 @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.bx)
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit: ; preds = %bb.p, %bb.o, %bb.m, %bb.j, %bb.i, %bb.f
  %.sroa.031.0 = phi i16 [ %i.dx, %bb.p ], [ %i.co, %bb.f ], [ %i.cu, %bb.i ], [ %i.dp, %bb.m ], [ %i.dw, %bb.o ], [ %spec.select7.i, %bb.j ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i, i64 108 ; 2 uses
  store i16 %.sroa.031.0, ptr %i.dy, align 2
  br label %bb.q

bb.q:                                             ; preds = %bb.be, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit
  %.sroa.10121.0207 = phi i64 [ 16, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit ], [ %i.dz, %bb.be ]
  %.sroa.7120.0206 = phi i64 [ 0, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit ], [ %i.ea, %bb.be ] ; 7 uses
  %.sroa.0118.0.ptr208 = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.7120.0206 ; 2 uses
  %i.dz = add nsw i64 %.sroa.10121.0207, -1       ; 2 uses
  %i.ea = add nuw nsw i64 %.sroa.7120.0206, 1
  %i.eb = icmp samesign ult i64 %.sroa.7120.0206, 8
  br i1 %i.eb, label %bb.bc, label %bb.bb

bb.r:                                             ; preds = %.loopexit152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.sroa.0.0.copyload1.i, i8 0, i64 32, i1 false)
  br label %bb.s

.thread:                                          ; preds = %bb.be, %.loopexit152
  %.sroa.032.0210 = phi i64 [ %i.ec, %.loopexit152 ], [ 0, %bb.be ] ; 6 uses
  %i.ec = add nuw nsw i64 %.sroa.032.0210, 1      ; 2 uses
  %i.ed = icmp samesign ult i64 %.sroa.032.0210, 8
  %i.ee = getelementptr i8, ptr %i.bw, i64 %.sroa.032.0210 ; 2 uses
  br i1 %i.ed, label %bb.y, label %bb.x

.preheader153:                                    ; preds = %bb.u
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i, i64 32 ; 5 uses
  %scevgep = getelementptr i8, ptr %.sroa.0.0.copyload1.i, i64 64
  %bound0 = icmp ult ptr %i.ef, %scevgep363
  %bound1 = icmp ult ptr %i.b, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %.preheader153
  %wide.load = load <16 x i8>, ptr %i.b, align 16, !alias.scope !1018
  %wide.load364 = load <16 x i8>, ptr %i.ai, align 16, !alias.scope !1018
  %wide.load365 = load <16 x i8>, ptr %i.aj, align 16, !alias.scope !1018
  %wide.load366 = load <16 x i8>, ptr %i.ak, align 16, !alias.scope !1018
  %i.eg = shl <16 x i8> %wide.load365, splat (i8 2)
  %i.eh = shl <16 x i8> %wide.load366, splat (i8 2)
  %i.ei = or <16 x i8> %i.eg, %wide.load
  %i.ej = or <16 x i8> %i.eh, %wide.load364
  %wide.load367 = load <16 x i8>, ptr %i.al, align 16, !alias.scope !1018
  %wide.load368 = load <16 x i8>, ptr %i.am, align 16, !alias.scope !1018
  %i.ek = shl <16 x i8> %wide.load367, splat (i8 4)
  %i.el = shl <16 x i8> %wide.load368, splat (i8 4)
  %i.em = or <16 x i8> %i.ei, %i.ek
  %i.en = or <16 x i8> %i.ej, %i.el
  %wide.load369 = load <16 x i8>, ptr %i.an, align 16, !alias.scope !1018
  %wide.load370 = load <16 x i8>, ptr %i.ao, align 16, !alias.scope !1018
  %i.eo = shl <16 x i8> %wide.load369, splat (i8 6)
  %i.ep = shl <16 x i8> %wide.load370, splat (i8 6)
  %i.eq = or <16 x i8> %i.em, %i.eo
  %i.er = or <16 x i8> %i.en, %i.ep
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload1.i, i64 48
  store <16 x i8> %i.eq, ptr %i.ef, align 2, !alias.scope !1019, !noalias !1018
  store <16 x i8> %i.er, ptr %i.es, align 2, !alias.scope !1019, !noalias !1018
  br label %.loopexit.preheader

.loopexit.preheader:                              ; preds = %scalar.ph, %vector.body
  br label %.loopexit

bb.s:                                             ; preds = %bb.r, %bb.u
  %.sroa.025.0.idx213 = phi i64 [ 0, %bb.r ], [ %.sroa.025.0.add, %bb.u ] ; 2 uses
  %.sroa.023.0212 = phi i8 [ 1, %bb.r ], [ %spec.select81, %bb.u ] ; 2 uses
  %.sroa.020.0211 = phi i64 [ 0, %bb.r ], [ %spec.select, %bb.u ] ; 4 uses
  %.sroa.025.0.ptr214 = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.025.0.idx213 ; 3 uses
  %.sroa.025.0.add = add nuw nsw i64 %.sroa.025.0.idx213, 1 ; 2 uses
  %i.et = load i8, ptr %.sroa.025.0.ptr214, align 1, !noundef !7
  %i.eu = icmp sgt i8 %i.et, 3
  br i1 %i.eu, label %bb.t, label %bb.u
end_hunk_5
begin_hunk_6_@_RNvXs5_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ3KNtB5_8GgmlType18from_float_imatrix:bb.a
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %i.mz
  %i.nc = load float, ptr %i.nb, align 4, !noundef !7
  %i.nd = fdiv float %i.nc, %i.jy
  %i.ne = call float @llvm.round.f32(float %i.nd)
  %i.nf = call i32 @llvm.fptosi.sat.i32.f32(float %i.ne)
  %i.ng = call i32 @llvm.smax.i32(i32 %i.nf, i32 -4)
  %.sroa.0.0.i89.7 = call i32 @llvm.smin.i32(i32 %i.ng, i32 3)
  %i.nh = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.mz
  %i.ni = trunc nsw i32 %.sroa.0.0.i89.7 to i8
  %i.nj = add nsw i8 %i.ni, 4
  store i8 %i.nj, ptr %i.nh, align 1
  %i.nk = or disjoint i64 %i.ka, 8                ; 4 uses
  %i.nl = icmp ult i64 %i.nk, %.sroa.10.16.copyload
  br i1 %i.nl, label %bb.au, label %.invoke

bb.au:                                            ; preds = %bb.at
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %i.nk
  %i.nn = load float, ptr %i.nm, align 4, !noundef !7
  %i.no = fdiv float %i.nn, %i.jy
  %i.np = call float @llvm.round.f32(float %i.no)
  %i.nq = call i32 @llvm.fptosi.sat.i32.f32(float %i.np)
  %i.nr = call i32 @llvm.smax.i32(i32 %i.nq, i32 -4)
  %.sroa.0.0.i89.8 = call i32 @llvm.smin.i32(i32 %i.nr, i32 3)
  %i.ns = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.nk
  %i.nt = trunc nsw i32 %.sroa.0.0.i89.8 to i8
  %i.nu = add nsw i8 %i.nt, 4
  store i8 %i.nu, ptr %i.ns, align 8
  %i.nv = or disjoint i64 %i.ka, 9                ; 4 uses
  %i.nw = icmp ult i64 %i.nv, %.sroa.10.16.copyload
  br i1 %i.nw, label %bb.av, label %.invoke

bb.av:                                            ; preds = %bb.au
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %i.nv
  %i.ny = load float, ptr %i.nx, align 4, !noundef !7
  %i.nz = fdiv float %i.ny, %i.jy
  %i.oa = call float @llvm.round.f32(float %i.nz)
  %i.ob = call i32 @llvm.fptosi.sat.i32.f32(float %i.oa)
  %i.oc = call i32 @llvm.smax.i32(i32 %i.ob, i32 -4)
  %.sroa.0.0.i89.9 = call i32 @llvm.smin.i32(i32 %i.oc, i32 3)
  %i.od = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.nv
  %i.oe = trunc nsw i32 %.sroa.0.0.i89.9 to i8
  %i.of = add nsw i8 %i.oe, 4
  store i8 %i.of, ptr %i.od, align 1
  %i.og = or disjoint i64 %i.ka, 10               ; 4 uses
  %i.oh = icmp ult i64 %i.og, %.sroa.10.16.copyload
  br i1 %i.oh, label %bb.aw, label %.invoke

bb.aw:                                            ; preds = %bb.av
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %i.og
  %i.oj = load float, ptr %i.oi, align 4, !noundef !7
  %i.ok = fdiv float %i.oj, %i.jy
  %i.ol = call float @llvm.round.f32(float %i.ok)
  %i.om = call i32 @llvm.fptosi.sat.i32.f32(float %i.ol)
  %i.on = call i32 @llvm.smax.i32(i32 %i.om, i32 -4)
  %.sroa.0.0.i89.10 = call i32 @llvm.smin.i32(i32 %i.on, i32 3)
  %i.oo = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.og
  %i.op = trunc nsw i32 %.sroa.0.0.i89.10 to i8
  %i.oq = add nsw i8 %i.op, 4
  store i8 %i.oq, ptr %i.oo, align 2
  %i.or = or disjoint i64 %i.ka, 11               ; 4 uses
  %i.os = icmp ult i64 %i.or, %.sroa.10.16.copyload
  br i1 %i.os, label %bb.ax, label %.invoke

bb.ax:                                            ; preds = %bb.aw
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %i.or
  %i.ou = load float, ptr %i.ot, align 4, !noundef !7
  %i.ov = fdiv float %i.ou, %i.jy
  %i.ow = call float @llvm.round.f32(float %i.ov)
  %i.ox = call i32 @llvm.fptosi.sat.i32.f32(float %i.ow)
  %i.oy = call i32 @llvm.smax.i32(i32 %i.ox, i32 -4)
  %.sroa.0.0.i89.11 = call i32 @llvm.smin.i32(i32 %i.oy, i32 3)
  %i.oz = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.or
  %i.pa = trunc nsw i32 %.sroa.0.0.i89.11 to i8
  %i.pb = add nsw i8 %i.pa, 4
  store i8 %i.pb, ptr %i.oz, align 1
  %i.pc = or disjoint i64 %i.ka, 12               ; 4 uses
  %i.pd = icmp ult i64 %i.pc, %.sroa.10.16.copyload
  br i1 %i.pd, label %bb.ay, label %.invoke

bb.ay:                                            ; preds = %bb.ax
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %i.pc
  %i.pf = load float, ptr %i.pe, align 4, !noundef !7
  %i.pg = fdiv float %i.pf, %i.jy
  %i.ph = call float @llvm.round.f32(float %i.pg)
  %i.pi = call i32 @llvm.fptosi.sat.i32.f32(float %i.ph)
  %i.pj = call i32 @llvm.smax.i32(i32 %i.pi, i32 -4)
  %.sroa.0.0.i89.12 = call i32 @llvm.smin.i32(i32 %i.pj, i32 3)
  %i.pk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.pc
  %i.pl = trunc nsw i32 %.sroa.0.0.i89.12 to i8
  %i.pm = add nsw i8 %i.pl, 4
  store i8 %i.pm, ptr %i.pk, align 4
  %i.pn = or disjoint i64 %i.ka, 13               ; 4 uses
  %i.po = icmp ult i64 %i.pn, %.sroa.10.16.copyload
  br i1 %i.po, label %bb.az, label %.invoke

bb.az:                                            ; preds = %bb.ay
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %i.pn
  %i.pq = load float, ptr %i.pp, align 4, !noundef !7
  %i.pr = fdiv float %i.pq, %i.jy
  %i.ps = call float @llvm.round.f32(float %i.pr)
  %i.pt = call i32 @llvm.fptosi.sat.i32.f32(float %i.ps)
  %i.pu = call i32 @llvm.smax.i32(i32 %i.pt, i32 -4)
  %.sroa.0.0.i89.13 = call i32 @llvm.smin.i32(i32 %i.pu, i32 3)
  %i.pv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.pn
  %i.pw = trunc nsw i32 %.sroa.0.0.i89.13 to i8
  %i.px = add nsw i8 %i.pw, 4
  store i8 %i.px, ptr %i.pv, align 1
  %i.py = or disjoint i64 %i.ka, 14               ; 4 uses
  %i.pz = icmp ult i64 %i.py, %.sroa.10.16.copyload
  br i1 %i.pz, label %bb.ba, label %.invoke

bb.ba:                                            ; preds = %bb.az
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %i.py
  %i.qb = load float, ptr %i.qa, align 4, !noundef !7
  %i.qc = fdiv float %i.qb, %i.jy
  %i.qd = call float @llvm.round.f32(float %i.qc)
  %i.qe = call i32 @llvm.fptosi.sat.i32.f32(float %i.qd)
  %i.qf = call i32 @llvm.smax.i32(i32 %i.qe, i32 -4)
  %.sroa.0.0.i89.14 = call i32 @llvm.smin.i32(i32 %i.qf, i32 3)
  %i.qg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.py
  %i.qh = trunc nsw i32 %.sroa.0.0.i89.14 to i8
  %i.qi = add nsw i8 %i.qh, 4
  store i8 %i.qi, ptr %i.qg, align 2
  %i.qj = or disjoint i64 %i.ka, 15               ; 4 uses
  %i.qk = icmp ult i64 %i.qj, %.sroa.10.16.copyload
  br i1 %i.qk, label %.loopexit152.loopexit, label %.invoke

.loopexit152.loopexit:                            ; preds = %bb.ba
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %i.qj
  %i.qm = load float, ptr %i.ql, align 4, !noundef !7
  %i.qn = fdiv float %i.qm, %i.jy
  %i.qo = call float @llvm.round.f32(float %i.qn)
  %i.qp = call i32 @llvm.fptosi.sat.i32.f32(float %i.qo)
  %i.qq = call i32 @llvm.smax.i32(i32 %i.qp, i32 -4)
  %.sroa.0.0.i89.15 = call i32 @llvm.smin.i32(i32 %i.qq, i32 3)
  %i.qr = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.qj
  %i.qs = trunc nsw i32 %.sroa.0.0.i89.15 to i8
  %i.qt = add nsw i8 %i.qs, 4
  store i8 %i.qt, ptr %i.qr, align 1
  br label %.loopexit152

bb.bb:                                            ; preds = %bb.q
  %i.qu = add nsw i64 %.sroa.7120.0206, -8        ; 3 uses
  %i.qv = icmp ult i64 %i.qu, 12
  br i1 %i.qv, label %bb.bd, label %.invoke

bb.bc:                                            ; preds = %bb.q
  %i.qw = load i8, ptr %.sroa.0118.0.ptr208, align 1, !noundef !7 ; 2 uses
  %i.qx = and i8 %i.qw, 15
  %i.qy = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.sroa.7120.0206
  store i8 %i.qx, ptr %i.qy, align 1
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.qz = load i8, ptr %.sroa.0118.0.ptr208, align 1, !noundef !7 ; 2 uses
  %i.ra = shl i8 %i.qz, 4
  %i.rb = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.qu ; 2 uses
  %i.rc = load i8, ptr %i.rb, align 1, !noundef !7
  %i.rd = or i8 %i.rc, %i.ra
  store i8 %i.rd, ptr %i.rb, align 1
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.re = phi i8 [ %i.qz, %bb.bd ], [ %i.qw, %bb.bc ]
  %i.rf = and i64 %.sroa.7120.0206, 3
  %i.rg = ashr i8 %i.re, 4
  %i.rh = trunc nuw nsw i64 %.sroa.7120.0206 to i8
  %i.ri = lshr i8 %i.rh, 1
  %i.rj = and i8 %i.ri, 6
  %i.rk = shl i8 %i.rg, %i.rj
  %i.rl = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.rf
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 8 ; 2 uses
  %i.rn = load i8, ptr %i.rm, align 1, !noundef !7
  %i.ro = or i8 %i.rk, %i.rn
  store i8 %i.ro, ptr %i.rm, align 1
  %i.rp = icmp eq i64 %i.dz, 0
  br i1 %i.rp, label %.thread, label %bb.q

_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter7IterMutfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSfECsltEA4u8Pgfu_11candle_core.exit: ; preds = %.lr.ph
  %.sroa.03.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 4 uses
  %.sroa.03.sroa.0.0.copyload372 = ptrtoaddr ptr %.sroa.03.sroa.0.0.copyload to i64
  %.sroa.03.sroa.3.0.copyload = load ptr, ptr %.sroa.03.sroa.3.0..sroa_idx, align 8 ; 4 uses
  %.sroa.03.sroa.3.0.copyload373 = ptrtoaddr ptr %.sroa.03.sroa.3.0.copyload to i64
  %.sroa.03.sroa.5.0.copyload = load i64, ptr %.sroa.03.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.03.sroa.6.0.copyload = load i64, ptr %.sroa.03.sroa.6.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.rq = icmp ult i64 %.sroa.03.sroa.5.0.copyload, %.sroa.03.sroa.6.0.copyload
  br i1 %i.rq, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph: ; preds = %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter7IterMutfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSfECsltEA4u8Pgfu_11candle_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.sroa.3.0.copyload) ]
  br i1 %i.s, label %bb.bh, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph.split

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph.split: ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph
  %i.rr = shl nuw nsw i64 %.sroa.12.0202, 4
  %i.rs = urem i64 %i.ar, %i.r
  %i.rt = shl nuw i64 %i.rs, 8
  %invariant.op = add i64 %i.rr, %i.rt            ; 3 uses
  %i.ru = sub i64 %.sroa.03.sroa.6.0.copyload, %.sroa.03.sroa.5.0.copyload
  %9 = udiv i64 %i.ar, %i.r
  %10 = mul i64 %7, %9
  %11 = shl i64 %.sroa.12.0202, 4
  %12 = add i64 %8, %11
  %13 = sub i64 %10, %12
  %14 = xor i64 %.sroa.03.sroa.5.0.copyload, -1
  %15 = add i64 %.sroa.03.sroa.6.0.copyload, %14
  %16 = call i64 @llvm.umax.i64(i64 %5, i64 %invariant.op)
  %i.rv = add i64 %16, %13
  %i.rw = call i64 @llvm.umin.i64(i64 %15, i64 %i.rv)
  %i.rx = add i64 %i.rw, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.rx, 5
  %i.ry = sub i64 %.sroa.03.sroa.3.0.copyload373, %.sroa.03.sroa.0.0.copyload372
  %diff.check = icmp ugt i64 %i.ry, -16
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.preheader, label %vector.ph375

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.preheader: ; preds = %vector.body376, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph.split
  %.sroa.5112.0200.ph = phi i64 [ %.sroa.03.sroa.5.0.copyload, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph.split ], [ %i.sc, %vector.body376 ]
  %.sroa.8114.0199.ph = phi i64 [ 0, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph.split ], [ %n.vec, %vector.body376 ]
  br label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit

vector.ph375:                                     ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph.split
  %i.rz = and i64 %i.rx, 3                        ; 2 uses
  %i.sa = icmp eq i64 %i.rz, 0
  %i.sb = select i1 %i.sa, i64 4, i64 %i.rz
  %n.vec = sub i64 %i.rx, %i.sb                   ; 3 uses
  %i.sc = add i64 %.sroa.03.sroa.5.0.copyload, %n.vec
  %invariant.gep = getelementptr [4 x i8], ptr %4, i64 %invariant.op
  br label %vector.body376

vector.body376:                                   ; preds = %vector.body376, %vector.ph375
  %index = phi i64 [ 0, %vector.ph375 ], [ %index.next, %vector.body376 ] ; 3 uses
  %i.sd = add nuw i64 %.sroa.03.sroa.5.0.copyload, %index ; 2 uses
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.sroa.3.0.copyload, i64 %i.sd
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.sroa.0.0.copyload, i64 %i.sd
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  %wide.load377 = load <4 x float>, ptr %gep, align 4
  %wide.load378 = load <4 x float>, ptr %i.se, align 4 ; 2 uses
  %i.sg = fmul <4 x float> %wide.load378, %wide.load378
  %i.sh = fadd <4 x float> %broadcast.splat, %i.sg
  %i.si = call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.sh)
  %i.sj = fmul <4 x float> %wide.load377, %i.si
  store <4 x float> %i.sj, ptr %i.sf, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.sk = icmp eq i64 %index.next, %n.vec
  br i1 %i.sk, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.preheader, label %vector.body376, !llvm.loop !1010

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader: ; preds = %bb.bi, %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter7IterMutfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSfECsltEA4u8Pgfu_11candle_core.exit
  %exitcond263.not = icmp eq i64 %.sroa.12.0202, 16
  br i1 %exitcond263.not, label %.invoke, label %bb.bf

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit: ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.preheader, %bb.bi
  %.sroa.5112.0200 = phi i64 [ %i.tj, %bb.bi ], [ %.sroa.5112.0200.ph, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.preheader ] ; 3 uses
  %.sroa.8114.0199 = phi i64 [ %i.tg, %bb.bi ], [ %.sroa.8114.0199.ph, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.preheader ] ; 2 uses
  %.reass = add nuw nsw i64 %.sroa.8114.0199, %invariant.op ; 3 uses
  %i.sl = icmp ult i64 %.reass, %5
  br i1 %i.sl, label %bb.bi, label %.invoke

bb.bf:                                            ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader
  %.val.i94 = load float, ptr %i.e, align 4, !noundef !7
  %.val.i94.1 = load float, ptr %i.t, align 4, !noundef !7
  %i.sm = fadd float %.val.i94, %.val.i94.1
  %.val.i94.2 = load float, ptr %i.u, align 4, !noundef !7
  %i.sn = fadd float %i.sm, %.val.i94.2
  %.val.i94.3 = load float, ptr %i.v, align 4, !noundef !7
  %i.so = fadd float %i.sn, %.val.i94.3
  %.val.i94.4 = load float, ptr %i.w, align 4, !noundef !7
  %i.sp = fadd float %i.so, %.val.i94.4
  %.val.i94.5 = load float, ptr %i.x, align 4, !noundef !7
  %i.sq = fadd float %i.sp, %.val.i94.5
  %.val.i94.6 = load float, ptr %i.y, align 4, !noundef !7
  %i.sr = fadd float %i.sq, %.val.i94.6
  %.val.i94.7 = load float, ptr %i.z, align 4, !noundef !7
  %i.ss = fadd float %i.sr, %.val.i94.7
  %.val.i94.8 = load float, ptr %i.aa, align 4, !noundef !7
  %i.st = fadd float %i.ss, %.val.i94.8
  %.val.i94.9 = load float, ptr %i.ab, align 4, !noundef !7
  %i.su = fadd float %i.st, %.val.i94.9
  %.val.i94.10 = load float, ptr %i.ac, align 4, !noundef !7
  %i.sv = fadd float %i.su, %.val.i94.10
  %.val.i94.11 = load float, ptr %i.ad, align 4, !noundef !7
  %i.sw = fadd float %i.sv, %.val.i94.11
  %.val.i94.12 = load float, ptr %i.ae, align 4, !noundef !7
  %i.sx = fadd float %i.sw, %.val.i94.12
  %.val.i94.13 = load float, ptr %i.af, align 4, !noundef !7
  %i.sy = fadd float %i.sx, %.val.i94.13
  %.val.i94.14 = load float, ptr %i.ag, align 4, !noundef !7
  %i.sz = fadd float %i.sy, %.val.i94.14
  %.val.i94.15 = load float, ptr %i.ah, align 4, !noundef !7
  %i.ta = fadd float %i.sz, %.val.i94.15
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.sroa.12.0202
  store float %i.ta, ptr %i.tb, align 4
  %i.tc = shl nuw nsw i64 %.sroa.12.0202, 4
  %i.td = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.tc
  %i.te = invoke noundef float @_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils14make_qx_quants(i64 noundef 16, i32 noundef 4, ptr noundef nonnull %.sroa.0.0204, ptr noundef nonnull %i.td, i32 noundef 1, ptr noundef nonnull %i.e)
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit

bb.bg:                                            ; preds = %bb.bf
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.sroa.12.0202
  store float %i.te, ptr %i.tf, align 4
  %.not.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph

bb.bh:                                            ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #28
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bi:                                            ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit
  %i.tg = add nuw nsw i64 %.sroa.8114.0199, 1     ; 2 uses
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.sroa.3.0.copyload, i64 %.sroa.5112.0200
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.sroa.0.0.copyload, i64 %.sroa.5112.0200
  %i.tj = add nuw i64 %.sroa.5112.0200, 1
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.reass
  %i.tl = load float, ptr %i.tk, align 4, !noundef !7
  %i.tm = load float, ptr %i.th, align 4, !noundef !7 ; 2 uses
  %i.tn = fmul float %i.tm, %i.tm
  %i.to = fadd float %i.br, %i.tn
  %i.tp = call float @llvm.sqrt.f32(float %i.to)
  %i.tq = fmul float %i.tl, %i.tp
  store float %i.tq, ptr %i.ti, align 4
  %exitcond.not = icmp eq i64 %i.tg, %i.ru
  br i1 %exitcond.not, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit, !llvm.loop !1011

bb.bj:                                            ; preds = %.loopexit.split-lp
  %i.tr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KRSfEEEEB2h_.exit: ; preds = %.loopexit.split-lp
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define noundef float @_RNvXs5_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ3KNtB5_8GgmlType7vec_dot(i64 noundef %0, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 83848836698679781) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef range(i64 0, 31586890537173890) %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef float @_RNvXs5_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ3KNtB5_8GgmlType13vec_dot_unopt(i64 poison, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef %4)
  ret float %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ3KNtB5_8GgmlType8to_float(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %0, i64 noundef range(i64 0, 83848836698679781) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [72 x i8], align 8                ; 7 uses
  %i.f = alloca [96 x i8], align 8                ; 7 uses
  %i.g = alloca [96 x i8], align 8                ; 2 uses
  %i.h = alloca [16 x i8], align 4                ; 11 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RINvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils24group_for_dequantizationNtNtB4_8k_quants8BlockQ3KEB6_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef %3)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.m = load i64, ptr %i.j, align 8, !range !22, !noundef !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !7 ; 3 uses
  %i.p = icmp ult i64 %i.o, 384307168202282326
  call void @llvm.assume(i1 %i.p)
  %.idx = mul nuw nsw i64 %i.o, 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.l, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  store ptr %i.q, ptr %.sroa.6.0..sroa_idx, align 8
  %i.r = icmp eq i64 %i.o, 0
  br i1 %i.r, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KQSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KQSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.lr.ph

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KQSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.lr.ph: ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %.sroa.4.0..sroa_idx44 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.747.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.752.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KQSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit

.loopexit95:                                      ; preds = %.lr.ph131, %.noexc36
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExacthEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1w_E4nextCsltEA4u8Pgfu_11candle_core.exit.i
  %lpad.loopexit96 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp
end_hunk_6
begin_hunk_7_@_RNvXs6_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ4KNtB5_8GgmlType13vec_dot_unopt:.split203
  br i1 %i.lq, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.ls = shl nuw i32 %i.ll, 16                   ; 2 uses
  %i.lt = icmp eq i16 %i.lm, 0
  br i1 %i.lt, label %bb.u, label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.lu = or disjoint i32 %i.lr, 2139095040
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit120

bb.t:                                             ; preds = %bb.q
  %i.lv = shl nuw nsw i32 %i.lo, 13
  %i.lw = or disjoint i32 %i.lr, %i.lv
  %i.lx = or i32 %i.lw, 2143289344
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit120

bb.u:                                             ; preds = %bb.r
  %i.ly = call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.ln, i1 false)
  %i.lz = zext nneg i16 %i.ly to i32              ; 2 uses
  %i.ma = add nuw nsw i32 %i.lz, 8
  %i.mb = shl i32 %i.lo, %i.ma
  %i.mc = and i32 %i.mb, 8388607
  %reass.sub.i119 = or disjoint i32 %i.ls, 989855744
  %i.md = shl nuw nsw i32 %i.lz, 23
  %i.me = sub nuw nsw i32 %reass.sub.i119, %i.md
  %i.mf = or disjoint i32 %i.me, %i.mc
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit120

bb.v:                                             ; preds = %bb.r
  %i.mg = lshr exact i16 %i.lm, 10
  %narrow.i117 = add nuw nsw i16 %i.mg, 112
  %i.mh = zext nneg i16 %narrow.i117 to i32
  %i.mi = shl nuw nsw i32 %i.mh, 23
  %i.mj = shl nuw nsw i32 %i.lo, 13
  %i.mk = or disjoint i32 %i.mi, %i.mj
  %i.ml = or disjoint i32 %i.mk, %i.ls
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit120

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit120: ; preds = %bb.o, %bb.s, %bb.t, %bb.u, %bb.v
  %.sroa.0.0.i118 = phi i32 [ %i.lj, %bb.o ], [ %i.lu, %bb.s ], [ %i.lx, %bb.t ], [ %i.mf, %bb.u ], [ %i.ml, %bb.v ]
  %i.mm = bitcast i32 %.sroa.0.0.i118 to float
  br label %bb.x

bb.w:                                             ; preds = %.split129, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit116
  %i.mn = call fastcc noundef float @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.la) #30
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit120
  %.sroa.065.0 = phi float [ %i.mn, %bb.w ], [ %i.mm, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit120 ]
  %i.mo = fmul float %i.ks, %.sroa.065.0
  %i.mp = sitofp i32 %i.jd to float
  %i.mq = fmul float %i.mo, %i.mp
  %i.mr = fsub float %.sroa.0.0205, %i.mq         ; 2 uses
  %exitcond245.not = icmp eq i64 %i.bv, %.sroa.7.0.copyload
  br i1 %exitcond245.not, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ8KEIBX_NtB1o_8BlockQ4KEEINtB5_7ZipImplBW_B2m_E4nextB1s_.exit.thread.preheader.loopexit, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ8KEIBX_NtB1o_8BlockQ4KEEINtB5_7ZipImplBW_B2m_E4nextB1s_.exit

.loopexit:                                        ; preds = %_RNvXs1_Csf0ob09goflS_9byteorderNtB5_12LittleEndianNtB5_9ByteOrder14write_u32_into.exit111, %.loopexit
  %.sroa.046.0201 = phi ptr [ %i.by, %_RNvXs1_Csf0ob09goflS_9byteorderNtB5_12LittleEndianNtB5_9ByteOrder14write_u32_into.exit111 ], [ %i.oi, %.loopexit ] ; 5 uses
  %.sroa.054.0199 = phi ptr [ %i.l, %_RNvXs1_Csf0ob09goflS_9byteorderNtB5_12LittleEndianNtB5_9ByteOrder14write_u32_into.exit111 ], [ %i.oj, %.loopexit ] ; 5 uses
  %i.ms = phi i64 [ 0, %_RNvXs1_Csf0ob09goflS_9byteorderNtB5_12LittleEndianNtB5_9ByteOrder14write_u32_into.exit111 ], [ %i.mu, %.loopexit ] ; 2 uses
  %i.mt = phi <8 x i32> [ zeroinitializer, %_RNvXs1_Csf0ob09goflS_9byteorderNtB5_12LittleEndianNtB5_9ByteOrder14write_u32_into.exit111 ], [ %i.oh, %.loopexit ]
  %i.mu = add nuw nsw i64 %i.ms, 1                ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.581.0..sroa_idx, i64 %i.ms
  %i.mw = load i8, ptr %i.mv, align 1, !alias.scope !1135, !noundef !7
  %i.mx = zext i8 %i.mw to i32
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.046.0201, i64 8
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.054.0199, i64 8
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.046.0201, i64 16
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.054.0199, i64 16
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.046.0201, i64 24
  %i.nd = getelementptr inbounds nuw i8, ptr %.sroa.054.0199, i64 24
  %i.ne = load <8 x i8>, ptr %.sroa.046.0201, align 1
  %i.nf = sext <8 x i8> %i.ne to <8 x i32>
  %i.ng = load <8 x i8>, ptr %.sroa.054.0199, align 1
  %i.nh = sext <8 x i8> %i.ng to <8 x i32>
  %i.ni = mul nsw <8 x i32> %i.nh, %i.nf
  %i.nj = insertelement <8 x i32> poison, i32 %i.mx, i64 0
  %i.nk = shufflevector <8 x i32> %i.nj, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.nl = mul nsw <8 x i32> %i.ni, %i.nk
  %i.nm = add <8 x i32> %i.nl, %i.mt
  %i.nn = load <8 x i8>, ptr %i.my, align 1
  %i.no = sext <8 x i8> %i.nn to <8 x i32>
  %i.np = load <8 x i8>, ptr %i.mz, align 1
  %i.nq = sext <8 x i8> %i.np to <8 x i32>
  %i.nr = mul nsw <8 x i32> %i.nq, %i.no
  %i.ns = mul nsw <8 x i32> %i.nr, %i.nk
  %i.nt = add <8 x i32> %i.ns, %i.nm
  %i.nu = load <8 x i8>, ptr %i.na, align 1
  %i.nv = sext <8 x i8> %i.nu to <8 x i32>
  %i.nw = load <8 x i8>, ptr %i.nb, align 1
  %i.nx = sext <8 x i8> %i.nw to <8 x i32>
  %i.ny = mul nsw <8 x i32> %i.nx, %i.nv
  %i.nz = mul nsw <8 x i32> %i.ny, %i.nk
  %i.oa = add <8 x i32> %i.nz, %i.nt
  %i.ob = load <8 x i8>, ptr %i.nc, align 1
  %i.oc = sext <8 x i8> %i.ob to <8 x i32>
  %i.od = load <8 x i8>, ptr %i.nd, align 1
  %i.oe = sext <8 x i8> %i.od to <8 x i32>
  %i.of = mul nsw <8 x i32> %i.oe, %i.oc
  %i.og = mul nsw <8 x i32> %i.of, %i.nk
  %i.oh = add <8 x i32> %i.og, %i.oa              ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.046.0201, i64 32
  %i.oj = getelementptr inbounds nuw i8, ptr %.sroa.054.0199, i64 32
  %.not.i112.not = icmp eq i64 %i.mu, 8
  br i1 %.not.i112.not, label %bb.b, label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ4KNtB5_8GgmlType18from_float_imatrix(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef range(i64 0, 64051194700380388) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %4, i64 noundef range(i64 0, 2305843009213693952) %5, i64 noundef %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 201 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 15 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 2 uses
  %i.e = alloca [8 x i8], align 8                 ; 15 uses
  %i.f = ptrtoaddr ptr %i.e to i64                ; 2 uses
  %i.g = alloca [32 x i8], align 4                ; 6 uses
  %i.h = alloca [128 x i8], align 4               ; 38 uses
  %i.i = alloca [32 x i8], align 4                ; 5 uses
  %i.j = alloca [32 x i8], align 4                ; 5 uses
  %i.k = alloca [40 x i8], align 8                ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RINvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils22group_for_quantizationNtNtB4_8k_quants8BlockQ4KEB6_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef %3)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.o = load i64, ptr %i.l, align 8, !range !22, !noundef !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !7 ; 3 uses
  %i.r = icmp ult i64 %i.q, 384307168202282326
  call void @llvm.assume(i1 %i.r)
  %.idx = mul nuw nsw i64 %i.q, 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.n, ptr %i.k, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  store ptr %i.n, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.o, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store ptr %i.s, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.t = icmp eq i64 %i.q, 0
  br i1 %i.t, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ4KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i._crit_edge, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ4KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i.lr.ph

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ4KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i.lr.ph: ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %.sroa.03.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.03.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.03.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.v = lshr i64 %6, 8                           ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 60
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 68
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 76
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 84
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 92
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 100
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 108
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 116
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 124
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.phi.trans.insert247 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.phi.trans.insert249 = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.phi.trans.insert251 = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.phi.trans.insert253 = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %.phi.trans.insert255 = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %.phi.trans.insert257 = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %.phi.trans.insert259 = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %.phi.trans.insert261 = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %.phi.trans.insert263 = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %.phi.trans.insert265 = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %.phi.trans.insert267 = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %.phi.trans.insert269 = getelementptr inbounds nuw i8, ptr %i.e, i64 7
  %.phi.trans.insert271 = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %7 = and i64 %6, -256
  %i.bc = add nuw i64 %i.f, 8
  %i.bd = add nuw i64 %i.d, 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 65
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 97
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 66
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 98
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 67
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 99
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 69
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 101
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 70
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 102
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 71
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 103
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 73
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 105
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 74
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 106
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 75
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 107
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 77
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 109
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 78
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 110
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 79
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 111
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 81
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 113
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 82
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 114
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 83
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 115
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 85
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 117
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 86
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 118
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 87
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 119
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 89
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 121
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 90
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 122
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 91
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 123
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 93
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 125
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 94
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 126
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 95
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 127
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 129
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 161
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 130
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 162
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 131
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 163
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 164
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 133
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 165
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 134
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 166
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 135
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 167
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 137
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 169
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 138
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 170
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 139
  %i.eq = getelementptr inbounds nuw i8, ptr %i.a, i64 171
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 140
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 141
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 173
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 142
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 174
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 143
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 175
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 145
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 177
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 146
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 178
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 147
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 179
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 148
  %i.fi = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 149
  %i.fk = getelementptr inbounds nuw i8, ptr %i.a, i64 181
  %i.fl = getelementptr inbounds nuw i8, ptr %i.a, i64 150
  %i.fm = getelementptr inbounds nuw i8, ptr %i.a, i64 182
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 151
  %i.fo = getelementptr inbounds nuw i8, ptr %i.a, i64 183
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.fr = getelementptr inbounds nuw i8, ptr %i.a, i64 153
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 185
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 154
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 186
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 155
  %i.fw = getelementptr inbounds nuw i8, ptr %i.a, i64 187
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  %i.fy = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  %i.fz = getelementptr inbounds nuw i8, ptr %i.a, i64 157
  %i.ga = getelementptr inbounds nuw i8, ptr %i.a, i64 189
  %i.gb = getelementptr inbounds nuw i8, ptr %i.a, i64 158
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 190
  %i.gd = getelementptr inbounds nuw i8, ptr %i.a, i64 159
  %i.ge = getelementptr inbounds nuw i8, ptr %i.a, i64 191
  %i.gf = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.gg = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.gh = getelementptr inbounds nuw i8, ptr %i.a, i64 193
  %i.gi = getelementptr inbounds nuw i8, ptr %i.a, i64 225
  %i.gj = getelementptr inbounds nuw i8, ptr %i.a, i64 194
  %i.gk = getelementptr inbounds nuw i8, ptr %i.a, i64 226
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 195
  %i.gm = getelementptr inbounds nuw i8, ptr %i.a, i64 227
  %i.gn = getelementptr inbounds nuw i8, ptr %i.a, i64 196
  %i.go = getelementptr inbounds nuw i8, ptr %i.a, i64 228
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 197
  %i.gq = getelementptr inbounds nuw i8, ptr %i.a, i64 229
  %i.gr = getelementptr inbounds nuw i8, ptr %i.a, i64 198
  %i.gs = getelementptr inbounds nuw i8, ptr %i.a, i64 230
  %i.gt = getelementptr inbounds nuw i8, ptr %i.a, i64 199
  %i.gu = getelementptr inbounds nuw i8, ptr %i.a, i64 231
  %i.gv = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.gw = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.gx = getelementptr inbounds nuw i8, ptr %i.a, i64 201
  %i.gy = getelementptr inbounds nuw i8, ptr %i.a, i64 233
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 202
  %i.ha = getelementptr inbounds nuw i8, ptr %i.a, i64 234
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 203
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 235
  %i.hd = getelementptr inbounds nuw i8, ptr %i.a, i64 204
  %i.he = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  %i.hf = getelementptr inbounds nuw i8, ptr %i.a, i64 205
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 237
  %i.hh = getelementptr inbounds nuw i8, ptr %i.a, i64 206
  %i.hi = getelementptr inbounds nuw i8, ptr %i.a, i64 238
  %i.hj = getelementptr inbounds nuw i8, ptr %i.a, i64 207
  %i.hk = getelementptr inbounds nuw i8, ptr %i.a, i64 239
  %i.hl = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.hm = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.hn = getelementptr inbounds nuw i8, ptr %i.a, i64 209
  %i.ho = getelementptr inbounds nuw i8, ptr %i.a, i64 241
  %i.hp = getelementptr inbounds nuw i8, ptr %i.a, i64 210
  %i.hq = getelementptr inbounds nuw i8, ptr %i.a, i64 242
  %i.hr = getelementptr inbounds nuw i8, ptr %i.a, i64 211
  %i.hs = getelementptr inbounds nuw i8, ptr %i.a, i64 243
  %i.ht = getelementptr inbounds nuw i8, ptr %i.a, i64 212
  %i.hu = getelementptr inbounds nuw i8, ptr %i.a, i64 244
  %i.hv = getelementptr inbounds nuw i8, ptr %i.a, i64 213
  %i.hw = getelementptr inbounds nuw i8, ptr %i.a, i64 245
  %i.hx = getelementptr inbounds nuw i8, ptr %i.a, i64 214
  %i.hy = getelementptr inbounds nuw i8, ptr %i.a, i64 246
  %i.hz = getelementptr inbounds nuw i8, ptr %i.a, i64 215
  %i.ia = getelementptr inbounds nuw i8, ptr %i.a, i64 247
  %i.ib = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.ic = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.id = getelementptr inbounds nuw i8, ptr %i.a, i64 217
  %i.ie = getelementptr inbounds nuw i8, ptr %i.a, i64 249
  %i.if = getelementptr inbounds nuw i8, ptr %i.a, i64 218
  %i.ig = getelementptr inbounds nuw i8, ptr %i.a, i64 250
  %i.ih = getelementptr inbounds nuw i8, ptr %i.a, i64 219
  %i.ii = getelementptr inbounds nuw i8, ptr %i.a, i64 251
  %i.ij = getelementptr inbounds nuw i8, ptr %i.a, i64 220
  %i.ik = getelementptr inbounds nuw i8, ptr %i.a, i64 252
  %i.il = getelementptr inbounds nuw i8, ptr %i.a, i64 221
  %i.im = getelementptr inbounds nuw i8, ptr %i.a, i64 253
  %i.in = getelementptr inbounds nuw i8, ptr %i.a, i64 222
  %i.io = getelementptr inbounds nuw i8, ptr %i.a, i64 254
  %i.ip = getelementptr inbounds nuw i8, ptr %i.a, i64 223
  %i.iq = getelementptr inbounds nuw i8, ptr %i.a, i64 255
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ4KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ4KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ4KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i.lr.ph, %.preheader
  %i.ir = phi ptr [ %i.n, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ4KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i.lr.ph ], [ %i.ags, %.preheader ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1151)
  call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 24
  store ptr %i.is, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !alias.scope !1153, !noalias !1154
  %.sroa.0.0.copyload1.i = load ptr, ptr %i.ir, align 8, !noalias !1155 ; 126 uses
  %.sroa.0.0.copyload1.i345 = ptrtoaddr ptr %.sroa.0.0.copyload1.i to i64 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.copyload1.i, null
  br i1 %.not.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ4KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i._crit_edge, label %bb.b

.loopexit146:                                     ; preds = %bb.ai, %bb.av
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph, %bb.bj
  %lpad.loopexit148 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %._crit_edge, %bb.c, %bb.d, %bb.q
  %lpad.loopexit153 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.bl
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit146
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit146 ], [ %lpad.loopexit148, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit153, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ4KRSfEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ4KRSfEEEEB2h_.exit unwind label %bb.bn

bb.b:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ4KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i
  %.sroa.7.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %.sroa.8.16.copyload = load ptr, ptr %.sroa.7.0..sroa_idx2.i, align 8, !noalias !1151, !nonnull !7, !noundef !7 ; 8 uses
  %.sroa.10.16..sroa.7.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %.sroa.10.16.copyload = load i64, ptr %.sroa.10.16..sroa.7.0..sroa_idx2.i.sroa_idx, align 8, !noalias !1151 ; 8 uses
  %i.it = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !1151, !noalias !1156, !noundef !7 ; 4 uses
  %i.iu = add i64 %i.it, 1
  store i64 %i.iu, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !1151, !noalias !1156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.j, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.h, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.iv = icmp eq i64 %.sroa.10.16.copyload, 0
  br i1 %i.iv, label %._crit_edge, label %.preheader151.preheader

.preheader151.preheader:                          ; preds = %bb.b
  %xtraiter = and i64 %.sroa.10.16.copyload, 3    ; 3 uses
  %i.iw = icmp ult i64 %.sroa.10.16.copyload, 4
  br i1 %i.iw, label %.preheader151.epil.preheader, label %.preheader151.preheader.new

.preheader151.preheader.new:                      ; preds = %.preheader151.preheader
  %unroll_iter = and i64 %.sroa.10.16.copyload, -4
  br label %.preheader151

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ4KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i._crit_edge: ; preds = %.preheader, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ4KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i, %bb.a
  call void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ4KRSfEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

.preheader151:                                    ; preds = %.preheader151, %.preheader151.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader151.preheader.new ], [ %i.jm, %.preheader151 ] ; 5 uses
  %.sroa.02.0.i = phi float [ -0.000000e+00, %.preheader151.preheader.new ], [ %i.jl, %.preheader151 ]
  %niter = phi i64 [ 0, %.preheader151.preheader.new ], [ %niter.next.3, %.preheader151 ]
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %.sroa.04.0.i
  %.val.i = load float, ptr %i.ix, align 4, !noundef !7 ; 2 uses
  %i.iy = fmul float %.val.i, %.val.i
  %i.iz = fadd float %.sroa.02.0.i, %i.iy
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %.sroa.04.0.i
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 4
  %.val.i.1 = load float, ptr %i.jb, align 4, !noundef !7 ; 2 uses
  %i.jc = fmul float %.val.i.1, %.val.i.1
  %i.jd = fadd float %i.iz, %i.jc
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %.sroa.04.0.i
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %.val.i.2 = load float, ptr %i.jf, align 4, !noundef !7 ; 2 uses
  %i.jg = fmul float %.val.i.2, %.val.i.2
  %i.jh = fadd float %i.jd, %i.jg
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %.sroa.04.0.i
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 12
  %.val.i.3 = load float, ptr %i.jj, align 4, !noundef !7 ; 2 uses
  %i.jk = fmul float %.val.i.3, %.val.i.3
  %i.jl = fadd float %i.jh, %i.jk                 ; 3 uses
  %i.jm = add nuw i64 %.sroa.04.0.i, 4            ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit152.unr-lcssa, label %.preheader151

.loopexit152.unr-lcssa:                           ; preds = %.preheader151
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit152, label %.preheader151.epil.preheader

.preheader151.epil.preheader:                     ; preds = %.loopexit152.unr-lcssa, %.preheader151.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader151.preheader ], [ %i.jm, %.loopexit152.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi float [ -0.000000e+00, %.preheader151.preheader ], [ %i.jl, %.loopexit152.unr-lcssa ]
  %lcmp.mod363 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod363)
  br label %.preheader151.epil

.preheader151.epil:                               ; preds = %.preheader151.epil, %.preheader151.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.jq, %.preheader151.epil ], [ %.sroa.04.0.i.epil.init, %.preheader151.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.epil = phi float [ %i.jp, %.preheader151.epil ], [ %.sroa.02.0.i.epil.init, %.preheader151.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader151.epil ], [ 0, %.preheader151.epil.preheader ]
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %.sroa.04.0.i.epil
  %.val.i.epil = load float, ptr %i.jn, align 4, !noundef !7 ; 2 uses
  %i.jo = fmul float %.val.i.epil, %.val.i.epil
  %i.jp = fadd float %.sroa.02.0.i.epil, %i.jo    ; 2 uses
  %i.jq = add nuw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit152, label %.preheader151.epil, !llvm.loop !1142

.loopexit152:                                     ; preds = %.preheader151.epil, %.loopexit152.unr-lcssa
  %.lcssa = phi float [ %i.jl, %.loopexit152.unr-lcssa ], [ %i.jp, %.preheader151.epil ]
  %i.jr = fmul float %.lcssa, 2.000000e+00
  %i.js = fmul float %i.jr, 3.906250e-03          ; 2 uses
  %i.jt = and i64 %.sroa.10.16.copyload, -32      ; 2 uses
  %.not.i.i181 = icmp eq i64 %i.jt, 0
  br i1 %.not.i.i181, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.loopexit152
  %8 = shl i64 %i.it, 8
  %broadcast.splatinsert335 = insertelement <4 x float> poison, float %i.js, i64 0
  %broadcast.splat336 = shufflevector <4 x float> %broadcast.splatinsert335, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bk
  %.sroa.0.0184 = phi ptr [ %i.ju, %bb.bk ], [ %.sroa.8.16.copyload, %.lr.ph.preheader ] ; 3 uses
  %.sroa.599.0183 = phi i64 [ %i.jv, %bb.bk ], [ %i.jt, %.lr.ph.preheader ]
  %.sroa.12.0182 = phi i64 [ %i.jw, %bb.bk ], [ 0, %.lr.ph.preheader ] ; 7 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.0.0184, i64 128 ; 2 uses
  %i.jv = add i64 %.sroa.599.0183, -32            ; 2 uses
  %i.jw = add nuw nsw i64 %.sroa.12.0182, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %i.h, ptr noundef nonnull %i.u, ptr noundef nonnull readonly align 4 %.sroa.0.0184, ptr noundef nonnull readonly %i.ju)
          to label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter7IterMutfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSfECsltEA4u8Pgfu_11candle_core.exit unwind label %.loopexit.split-lp.loopexit

._crit_edge:                                      ; preds = %bb.bk, %bb.b, %.loopexit152
  %i.jx = invoke noundef float @_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils14make_qp_quants(i64 noundef 8, i8 noundef 63, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.i, i64 noundef 8, ptr noalias nofree noundef nonnull %i.e, i64 noundef 8, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.g, i64 noundef 8)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.c:                                             ; preds = %._crit_edge
  %i.jy = invoke noundef float @_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils14make_qp_quants(i64 noundef 8, i8 noundef 63, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.j, i64 noundef 8, ptr noalias nofree noundef nonnull %i.c, i64 noundef 8, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.g, i64 noundef 8)
          to label %bb.bi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.d:                                             ; preds = %.rtcont
  %i.jz = invoke noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %bb.d
  %i.ka = and i128 %i.jz, 18014398509481984
  %.not137 = icmp eq i128 %i.ka, 0
  br i1 %.not137, label %bb.e, label %bb.p

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit: ; preds = %.rtcont
  %i.kb = and i64 %.rtmerge349, 18014398509481984
  %.not = icmp eq i64 %i.kb, 0
  br i1 %.not, label %bb.e, label %bb.p

bb.e:                                             ; preds = %.noexc, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.kc = bitcast float %i.jx to i32              ; 5 uses
  %i.kd = and i32 %i.kc, -2147483648              ; 2 uses
  %i.ke = and i32 %i.kc, 2139095040               ; 6 uses
  %i.kf = and i32 %i.kc, 8388607                  ; 4 uses
  %i.kg = icmp eq i32 %i.ke, 2139095040
  br i1 %i.kg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.kh = icmp eq i32 %i.kf, 0
  %..i = select i1 %i.kh, i32 0, i32 512
  %i.ki = lshr exact i32 %i.kd, 16
  %i.kj = lshr i32 %i.kf, 13
  %i.kk = or disjoint i32 %i.kj, %i.ki
  %i.kl = or i32 %i.kk, %..i
  %i.km = trunc nuw i32 %i.kl to i16
  %i.kn = or disjoint i16 %i.km, 31744
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.g:                                             ; preds = %bb.e
  %i.ko = lshr exact i32 %i.kd, 16                ; 4 uses
  %i.kp = lshr exact i32 %i.ke, 23                ; 2 uses
  %i.kq = icmp samesign ugt i32 %i.ke, 1191182336
  br i1 %i.kq, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.kr = icmp samesign ult i32 %i.ke, 947912704
  br i1 %i.kr, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ks = trunc nuw i32 %i.ko to i16
  %i.kt = or disjoint i16 %i.ks, 31744
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.j:                                             ; preds = %bb.h
  %i.ku = lshr exact i32 %i.ke, 13
  %i.kv = add nuw nsw i32 %i.ku, 16384
  %i.kw = lshr i32 %i.kf, 13
  %i.kx = and i32 %i.kc, 4096
  %i.ky = icmp ne i32 %i.kx, 0
  %i.kz = and i32 %i.kc, 12287
  %i.la = icmp ne i32 %i.kz, 0
  %or.cond.not.i = and i1 %i.ky, %i.la
  %i.lb = or disjoint i32 %i.kv, %i.kw
  %i.lc = or i32 %i.lb, %i.ko
  %i.ld = trunc i32 %i.lc to i16
  %i.le = zext i1 %or.cond.not.i to i16
  %spec.select7.i = add i16 %i.ld, %i.le
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.k:                                             ; preds = %bb.h
  %i.lf = icmp samesign ult i32 %i.ke, 855638016
  br i1 %i.lf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.lg = sub nsw i32 126, %i.kp
  %i.lh = or disjoint i32 %i.kf, 8388608          ; 3 uses
  %i.li = lshr i32 %i.lh, %i.lg                   ; 2 uses
  %i.lj = sub nsw i32 29, %i.kp
  %i.lk = and i32 %i.lj, 31                       ; 2 uses
  %i.ll = shl nuw i32 1, %i.lk
  %i.lm = and i32 %i.ll, %i.lh
  %i.ln = icmp eq i32 %i.lm, 0
  br i1 %i.ln, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.lo = trunc nuw i32 %i.ko to i16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.n:                                             ; preds = %bb.l
  %i.lp = shl i32 3, %i.lk
  %i.lq = add nuw i32 %i.lp, 16777215
  %i.lr = and i32 %i.lq, %i.lh
  %i.ls = icmp ne i32 %i.lr, 0
  %i.lt = zext i1 %i.ls to i32
  %spec.select.i = add nuw nsw i32 %i.li, %i.lt
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.sroa.03.0.i = phi i32 [ %i.li, %bb.l ], [ %spec.select.i, %bb.n ]
  %i.lu = or i32 %.sroa.03.0.i, %i.ko
  %i.lv = trunc nuw i32 %i.lu to i16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.p:                                             ; preds = %.noexc, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.lw = call fastcc noundef i16 @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.jx)
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit: ; preds = %bb.p, %bb.o, %bb.m, %bb.j, %bb.i, %bb.f
  %.sroa.019.0 = phi i16 [ %i.lw, %bb.p ], [ %i.kn, %bb.f ], [ %i.kt, %bb.i ], [ %i.lo, %bb.m ], [ %i.lv, %bb.o ], [ %spec.select7.i, %bb.j ]
  store i16 %.sroa.019.0, ptr %.sroa.0.0.copyload1.i, align 2
  %i.lx = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.ly = icmp eq i64 %i.lx, 0
  br i1 %i.ly, label %bb.q, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit63, !prof !14

bb.q:                                             ; preds = %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit
  %i.lz = invoke noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc62 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc62:                                         ; preds = %bb.q
  %i.ma = and i128 %i.lz, 18014398509481984
  %.not139 = icmp eq i128 %i.ma, 0
  br i1 %.not139, label %bb.r, label %bb.ac

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit63: ; preds = %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit
  %i.mb = and i64 %i.lx, 18014398509481984
  %.not138 = icmp eq i64 %i.mb, 0
  br i1 %.not138, label %bb.r, label %bb.ac

bb.r:                                             ; preds = %.noexc62, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit63
  %i.mc = bitcast float %i.jy to i32              ; 5 uses
  %i.md = and i32 %i.mc, -2147483648              ; 2 uses
  %i.me = and i32 %i.mc, 2139095040               ; 6 uses
  %i.mf = and i32 %i.mc, 8388607                  ; 4 uses
  %i.mg = icmp eq i32 %i.me, 2139095040
  br i1 %i.mg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.mh = icmp eq i32 %i.mf, 0
  %..i69 = select i1 %i.mh, i32 0, i32 512
  %i.mi = lshr exact i32 %i.md, 16
  %i.mj = lshr i32 %i.mf, 13
  %i.mk = or disjoint i32 %i.mj, %i.mi
  %i.ml = or i32 %i.mk, %..i69
  %i.mm = trunc nuw i32 %i.ml to i16
  %i.mn = or disjoint i16 %i.mm, 31744
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit70

bb.t:                                             ; preds = %bb.r
  %i.mo = lshr exact i32 %i.md, 16                ; 4 uses
  %i.mp = lshr exact i32 %i.me, 23                ; 2 uses
  %i.mq = icmp samesign ugt i32 %i.me, 1191182336
  br i1 %i.mq, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.mr = icmp samesign ult i32 %i.me, 947912704
  br i1 %i.mr, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.ms = trunc nuw i32 %i.mo to i16
  %i.mt = or disjoint i16 %i.ms, 31744
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit70

bb.w:                                             ; preds = %bb.u
  %i.mu = lshr exact i32 %i.me, 13
  %i.mv = add nuw nsw i32 %i.mu, 16384
  %i.mw = lshr i32 %i.mf, 13
  %i.mx = and i32 %i.mc, 4096
  %i.my = icmp ne i32 %i.mx, 0
  %i.mz = and i32 %i.mc, 12287
  %i.na = icmp ne i32 %i.mz, 0
  %or.cond.not.i64 = and i1 %i.my, %i.na
  %i.nb = or disjoint i32 %i.mv, %i.mw
  %i.nc = or i32 %i.nb, %i.mo
  %i.nd = trunc i32 %i.nc to i16
  %i.ne = zext i1 %or.cond.not.i64 to i16
  %spec.select7.i65 = add i16 %i.nd, %i.ne
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit70

bb.x:                                             ; preds = %bb.u
  %i.nf = icmp samesign ult i32 %i.me, 855638016
  br i1 %i.nf, label %bb.z, label %bb.y

end_hunk_7
begin_hunk_8_@_RNvXs6_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ4KNtB5_8GgmlType18from_float_imatrix:bb.a
  %i.aji = icmp eq i64 %i.ajh, 0
  br i1 %i.aji, label %bb.av, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit80, !prof !14

bb.av:                                            ; preds = %bb.au
  %i.ajj = invoke noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc79 unwind label %.loopexit146

.noexc79:                                         ; preds = %bb.av
  %i.ajk = and i128 %i.ajj, 18014398509481984
  %.not143 = icmp eq i128 %i.ajk, 0
  br i1 %.not143, label %bb.aw, label %bb.bf

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit80: ; preds = %bb.au
  %i.ajl = and i64 %i.ajh, 18014398509481984
  %.not142 = icmp eq i64 %i.ajl, 0
  br i1 %.not142, label %bb.aw, label %bb.bf

bb.aw:                                            ; preds = %.noexc79, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit80
  %i.ajm = and i16 %i.ajg, 32767
  %i.ajn = icmp eq i16 %i.ajm, 0
  br i1 %i.ajn, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ajo = zext i16 %i.ajg to i32
  %i.ajp = shl nuw i32 %i.ajo, 16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit84

bb.ay:                                            ; preds = %bb.aw
  %i.ajq = and i16 %i.ajg, -32768
  %i.ajr = zext i16 %i.ajq to i32                 ; 2 uses
  %i.ajs = and i16 %i.ajg, 31744                  ; 3 uses
  %i.ajt = and i16 %i.ajg, 1023                   ; 3 uses
  %i.aju = zext nneg i16 %i.ajt to i32            ; 3 uses
  %i.ajv = icmp eq i16 %i.ajs, 31744
  br i1 %i.ajv, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ajw = icmp eq i16 %i.ajt, 0
  %i.ajx = shl nuw i32 %i.ajr, 16                 ; 2 uses
  br i1 %i.ajw, label %bb.bb, label %bb.bc

bb.ba:                                            ; preds = %bb.ay
  %i.ajy = shl nuw i32 %i.ajr, 16                 ; 2 uses
  %i.ajz = icmp eq i16 %i.ajs, 0
  br i1 %i.ajz, label %bb.bd, label %bb.be

bb.bb:                                            ; preds = %bb.az
  %i.aka = or disjoint i32 %i.ajx, 2139095040
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit84

bb.bc:                                            ; preds = %bb.az
  %i.akb = shl nuw nsw i32 %i.aju, 13
  %i.akc = or disjoint i32 %i.ajx, %i.akb
  %i.akd = or i32 %i.akc, 2143289344
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit84

bb.bd:                                            ; preds = %bb.ba
  %i.ake = call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.ajt, i1 false)
  %i.akf = zext nneg i16 %i.ake to i32            ; 2 uses
  %i.akg = add nuw nsw i32 %i.akf, 8
  %i.akh = shl i32 %i.aju, %i.akg
  %i.aki = and i32 %i.akh, 8388607
  %reass.sub.i83 = or disjoint i32 %i.ajy, 989855744
  %i.akj = shl nuw nsw i32 %i.akf, 23
  %i.akk = sub nuw nsw i32 %reass.sub.i83, %i.akj
  %i.akl = or disjoint i32 %i.akk, %i.aki
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit84

bb.be:                                            ; preds = %bb.ba
  %i.akm = lshr exact i16 %i.ajs, 10
  %narrow.i81 = add nuw nsw i16 %i.akm, 112
  %i.akn = zext nneg i16 %narrow.i81 to i32
  %i.ako = shl nuw nsw i32 %i.akn, 23
  %i.akp = shl nuw nsw i32 %i.aju, 13
  %i.akq = or disjoint i32 %i.ako, %i.akp
  %i.akr = or disjoint i32 %i.akq, %i.ajy
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit84

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit84: ; preds = %bb.ax, %bb.bb, %bb.bc, %bb.bd, %bb.be
  %.sroa.0.0.i82 = phi i32 [ %i.ajp, %bb.ax ], [ %i.aka, %bb.bb ], [ %i.akd, %bb.bc ], [ %i.akl, %bb.bd ], [ %i.akr, %bb.be ]
  %i.aks = bitcast i32 %.sroa.0.0.i82 to float
  br label %bb.bg

bb.bf:                                            ; preds = %.noexc79, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit80
  %i.akt = call fastcc noundef float @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.ajg)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit84
  %.sroa.010.0 = phi float [ %i.aks, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit84 ], [ %i.akt, %bb.bf ]
  %i.aku = uitofp nneg i8 %.sroa.3.0.i to float
  %i.akv = fmul float %.sroa.010.0, %i.aku        ; 2 uses
  %i.akw = shl nuw nsw i64 %.sroa.021.0187, 5     ; 3 uses
  %i.akx = call i64 @llvm.umax.i64(i64 %.sroa.10.16.copyload, i64 %i.akw)
  %i.aky = shl i64 %.sroa.021.0187, 5
  %i.akz = sub i64 %i.akx, %i.aky                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.akz, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph323

vector.ph323:                                     ; preds = %bb.bg
  %i.ala = call i64 @llvm.umin.i64(i64 %i.akz, i64 31)
  %i.alb = add nuw nsw i64 %i.ala, 1              ; 2 uses
  %i.alc = and i64 %i.alb, 3                      ; 2 uses
  %i.ald = icmp eq i64 %i.alc, 0
  %i.ale = select i1 %i.ald, i64 4, i64 %i.alc
  %n.vec = sub nsw i64 %i.alb, %i.ale             ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.akv, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert324 = insertelement <4 x float> poison, float %i.aje, i64 0
  %broadcast.splat325 = shufflevector <4 x float> %broadcast.splatinsert324, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body326

vector.body326:                                   ; preds = %vector.body326, %vector.ph323
  %index = phi i64 [ 0, %vector.ph323 ], [ %index.next, %vector.body326 ] ; 2 uses
  %i.alf = add nuw nsw i64 %index, %i.akw         ; 2 uses
  %i.alg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %i.alf
  %wide.load327 = load <4 x float>, ptr %i.alg, align 4
  %i.alh = fadd <4 x float> %broadcast.splat, %wide.load327
  %i.ali = fdiv <4 x float> %i.alh, %broadcast.splat325
  %i.alj = call <4 x float> @llvm.round.v4f32(<4 x float> %i.ali)
  %i.alk = call <4 x i32> @llvm.fptosi.sat.v4i32.v4f32(<4 x float> %i.alj)
  %i.all = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.alk, <4 x i32> zeroinitializer)
  %i.alm = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.all, <4 x i32> splat (i32 15))
  %i.aln = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.alf
  %i.alo = trunc nuw nsw <4 x i32> %i.alm to <4 x i8>
  store <4 x i8> %i.alo, ptr %i.aln, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.alp = icmp eq i64 %index.next, %n.vec
  br i1 %i.alp, label %scalar.ph.preheader, label %vector.body326, !llvm.loop !1147

scalar.ph.preheader:                              ; preds = %vector.body326, %bb.bg
  %.sroa.023.0186.ph = phi i64 [ 0, %bb.bg ], [ %n.vec, %vector.body326 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.bh
  %.sroa.023.0186 = phi i64 [ %i.alv, %bb.bh ], [ %.sroa.023.0186.ph, %scalar.ph.preheader ] ; 2 uses
  %i.alq = add nuw nsw i64 %.sroa.023.0186, %i.akw ; 4 uses
  %i.alr = icmp ult i64 %i.alq, %.sroa.10.16.copyload
  br i1 %i.alr, label %bb.bh, label %.invoke

.invoke:                                          ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit, %scalar.ph
  %i.als = phi i64 [ %i.alq, %scalar.ph ], [ %.reass, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit ], [ 8, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader ]
  %i.alt = phi i64 [ %.sroa.10.16.copyload, %scalar.ph ], [ %5, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit ], [ 8, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader ]
  %i.alu = phi ptr [ @124, %scalar.ph ], [ @127, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit ], [ @125, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.als, i64 noundef %i.alt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.alu) #28
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.bh:                                            ; preds = %scalar.ph
  %i.alv = add nuw nsw i64 %.sroa.023.0186, 1     ; 2 uses
  %i.alw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %i.alq
  %i.alx = load float, ptr %i.alw, align 4, !noundef !7
  %i.aly = fadd float %i.akv, %i.alx
  %i.alz = fdiv float %i.aly, %i.aje
  %i.ama = call float @llvm.round.f32(float %i.alz)
  %i.amb = call i32 @llvm.fptosi.sat.i32.f32(float %i.ama)
  %i.amc = call i32 @llvm.smax.i32(i32 %i.amb, i32 0)
  %i.amd = call i32 @llvm.umin.i32(i32 %i.amc, i32 15)
  %i.ame = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.alq
  %i.amf = trunc nuw nsw i32 %i.amd to i8
  store i8 %i.amf, ptr %i.ame, align 1
  %exitcond223.not = icmp eq i64 %i.alv, 32
  br i1 %exitcond223.not, label %.loopexit145, label %scalar.ph, !llvm.loop !1148

bb.bi:                                            ; preds = %bb.c
  %i.amg = add i64 %.sroa.0.0.copyload1.i345, 4   ; 2 uses
  %i.amh = add i64 %.sroa.0.0.copyload1.i345, 16  ; 2 uses
  %rt.bound0 = icmp ult i64 %i.amg, %i.bc
  %rt.bound1 = icmp ugt i64 %i.amh, %i.f
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.bound0346 = icmp ult i64 %i.amg, %i.bd
  %rt.bound1347 = icmp ugt i64 %i.amh, %i.d
  %rt.conflict348 = and i1 %rt.bound0346, %rt.bound1347
  %rt.conflict.all = or i1 %rt.conflict, %rt.conflict348
  %rt.guard = freeze i1 %rt.conflict.all
  br i1 %rt.guard, label %.rtscalar, label %.rtvec, !prof !26

_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter7IterMutfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSfECsltEA4u8Pgfu_11candle_core.exit: ; preds = %.lr.ph
  %.sroa.03.sroa.0.0.copyload = load ptr, ptr %i.b, align 8 ; 4 uses
  %.sroa.03.sroa.0.0.copyload329 = ptrtoaddr ptr %.sroa.03.sroa.0.0.copyload to i64
  %.sroa.03.sroa.3.0.copyload = load ptr, ptr %.sroa.03.sroa.3.0..sroa_idx, align 8 ; 4 uses
  %.sroa.03.sroa.3.0.copyload330 = ptrtoaddr ptr %.sroa.03.sroa.3.0.copyload to i64
  %.sroa.03.sroa.5.0.copyload = load i64, ptr %.sroa.03.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.03.sroa.6.0.copyload = load i64, ptr %.sroa.03.sroa.6.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ami = icmp ult i64 %.sroa.03.sroa.5.0.copyload, %.sroa.03.sroa.6.0.copyload
  br i1 %i.ami, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph: ; preds = %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter7IterMutfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSfECsltEA4u8Pgfu_11candle_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.sroa.3.0.copyload) ]
  br i1 %i.w, label %bb.bl, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph.split

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph.split: ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph
  %i.amj = shl nuw nsw i64 %.sroa.12.0182, 5
  %i.amk = urem i64 %i.it, %i.v
  %i.aml = shl nuw i64 %i.amk, 8
  %invariant.op = add i64 %i.amj, %i.aml          ; 3 uses
  %i.amm = sub i64 %.sroa.03.sroa.6.0.copyload, %.sroa.03.sroa.5.0.copyload
  %9 = udiv i64 %i.it, %i.v
  %10 = mul i64 %7, %9
  %11 = shl i64 %.sroa.12.0182, 5
  %12 = add i64 %8, %11
  %13 = sub i64 %10, %12
  %14 = xor i64 %.sroa.03.sroa.5.0.copyload, -1
  %15 = add i64 %.sroa.03.sroa.6.0.copyload, %14
  %16 = call i64 @llvm.umax.i64(i64 %5, i64 %invariant.op)
  %i.amn = add i64 %16, %13
  %i.amo = call i64 @llvm.umin.i64(i64 %15, i64 %i.amn)
  %i.amp = add i64 %i.amo, 1                      ; 3 uses
  %min.iters.check332 = icmp ult i64 %i.amp, 5
  %i.amq = sub i64 %.sroa.03.sroa.3.0.copyload330, %.sroa.03.sroa.0.0.copyload329
  %diff.check = icmp ugt i64 %i.amq, -16
  %or.cond = select i1 %min.iters.check332, i1 true, i1 %diff.check
  br i1 %or.cond, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.preheader, label %vector.ph333

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.preheader: ; preds = %vector.body337, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph.split
  %.sroa.5109.0180.ph = phi i64 [ %.sroa.03.sroa.5.0.copyload, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph.split ], [ %i.amu, %vector.body337 ]
  %.sroa.8111.0179.ph = phi i64 [ 0, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph.split ], [ %n.vec334, %vector.body337 ]
  br label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit

vector.ph333:                                     ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph.split
  %i.amr = and i64 %i.amp, 3                      ; 2 uses
  %i.ams = icmp eq i64 %i.amr, 0
  %i.amt = select i1 %i.ams, i64 4, i64 %i.amr
  %n.vec334 = sub i64 %i.amp, %i.amt              ; 3 uses
  %i.amu = add i64 %.sroa.03.sroa.5.0.copyload, %n.vec334
  %invariant.gep = getelementptr [4 x i8], ptr %4, i64 %invariant.op
  br label %vector.body337

vector.body337:                                   ; preds = %vector.body337, %vector.ph333
  %index338 = phi i64 [ 0, %vector.ph333 ], [ %index.next341, %vector.body337 ] ; 3 uses
  %i.amv = add nuw i64 %.sroa.03.sroa.5.0.copyload, %index338 ; 2 uses
  %i.amw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.sroa.3.0.copyload, i64 %i.amv
  %i.amx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.sroa.0.0.copyload, i64 %i.amv
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index338
  %wide.load339 = load <4 x float>, ptr %gep, align 4
  %wide.load340 = load <4 x float>, ptr %i.amw, align 4 ; 2 uses
  %i.amy = fmul <4 x float> %wide.load340, %wide.load340
  %i.amz = fadd <4 x float> %broadcast.splat336, %i.amy
  %i.ana = call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.amz)
  %i.anb = fmul <4 x float> %wide.load339, %i.ana
  store <4 x float> %i.anb, ptr %i.amx, align 4
  %index.next341 = add nuw i64 %index338, 4       ; 2 uses
  %i.anc = icmp eq i64 %index.next341, %n.vec334
  br i1 %i.anc, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.preheader, label %vector.body337, !llvm.loop !1149

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader: ; preds = %bb.bm, %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter7IterMutfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSfECsltEA4u8Pgfu_11candle_core.exit
  %exitcond221.not = icmp eq i64 %.sroa.12.0182, 8
  br i1 %exitcond221.not, label %.invoke, label %bb.bj

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit: ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.preheader, %bb.bm
  %.sroa.5109.0180 = phi i64 [ %i.aos, %bb.bm ], [ %.sroa.5109.0180.ph, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.preheader ] ; 3 uses
  %.sroa.8111.0179 = phi i64 [ %i.aop, %bb.bm ], [ %.sroa.8111.0179.ph, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.preheader ] ; 2 uses
  %.reass = add nuw nsw i64 %.sroa.8111.0179, %invariant.op ; 3 uses
  %i.and = icmp ult i64 %.reass, %5
  br i1 %i.and, label %bb.bm, label %.invoke

bb.bj:                                            ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader
  %.val.i91 = load float, ptr %i.h, align 4, !noundef !7
  %.val.i91.1 = load float, ptr %i.x, align 4, !noundef !7
  %i.ane = fadd float %.val.i91, %.val.i91.1
  %.val.i91.2 = load float, ptr %i.y, align 4, !noundef !7
  %i.anf = fadd float %i.ane, %.val.i91.2
  %.val.i91.3 = load float, ptr %i.z, align 4, !noundef !7
  %i.ang = fadd float %i.anf, %.val.i91.3
  %.val.i91.4 = load float, ptr %i.aa, align 4, !noundef !7
  %i.anh = fadd float %i.ang, %.val.i91.4
  %.val.i91.5 = load float, ptr %i.ab, align 4, !noundef !7
  %i.ani = fadd float %i.anh, %.val.i91.5
  %.val.i91.6 = load float, ptr %i.ac, align 4, !noundef !7
  %i.anj = fadd float %i.ani, %.val.i91.6
  %.val.i91.7 = load float, ptr %i.ad, align 4, !noundef !7
  %i.ank = fadd float %i.anj, %.val.i91.7
  %.val.i91.8 = load float, ptr %i.ae, align 4, !noundef !7
  %i.anl = fadd float %i.ank, %.val.i91.8
  %.val.i91.9 = load float, ptr %i.af, align 4, !noundef !7
  %i.anm = fadd float %i.anl, %.val.i91.9
  %.val.i91.10 = load float, ptr %i.ag, align 4, !noundef !7
  %i.ann = fadd float %i.anm, %.val.i91.10
  %.val.i91.11 = load float, ptr %i.ah, align 4, !noundef !7
  %i.ano = fadd float %i.ann, %.val.i91.11
  %.val.i91.12 = load float, ptr %i.ai, align 4, !noundef !7
  %i.anp = fadd float %i.ano, %.val.i91.12
  %.val.i91.13 = load float, ptr %i.aj, align 4, !noundef !7
  %i.anq = fadd float %i.anp, %.val.i91.13
  %.val.i91.14 = load float, ptr %i.ak, align 4, !noundef !7
  %i.anr = fadd float %i.anq, %.val.i91.14
  %.val.i91.15 = load float, ptr %i.al, align 4, !noundef !7
  %i.ans = fadd float %i.anr, %.val.i91.15
  %.val.i91.16 = load float, ptr %i.am, align 4, !noundef !7
  %i.ant = fadd float %i.ans, %.val.i91.16
  %.val.i91.17 = load float, ptr %i.an, align 4, !noundef !7
  %i.anu = fadd float %i.ant, %.val.i91.17
  %.val.i91.18 = load float, ptr %i.ao, align 4, !noundef !7
  %i.anv = fadd float %i.anu, %.val.i91.18
  %.val.i91.19 = load float, ptr %i.ap, align 4, !noundef !7
  %i.anw = fadd float %i.anv, %.val.i91.19
  %.val.i91.20 = load float, ptr %i.aq, align 4, !noundef !7
  %i.anx = fadd float %i.anw, %.val.i91.20
  %.val.i91.21 = load float, ptr %i.ar, align 4, !noundef !7
  %i.any = fadd float %i.anx, %.val.i91.21
  %.val.i91.22 = load float, ptr %i.as, align 4, !noundef !7
  %i.anz = fadd float %i.any, %.val.i91.22
  %.val.i91.23 = load float, ptr %i.at, align 4, !noundef !7
  %i.aoa = fadd float %i.anz, %.val.i91.23
  %.val.i91.24 = load float, ptr %i.au, align 4, !noundef !7
  %i.aob = fadd float %i.aoa, %.val.i91.24
  %.val.i91.25 = load float, ptr %i.av, align 4, !noundef !7
  %i.aoc = fadd float %i.aob, %.val.i91.25
  %.val.i91.26 = load float, ptr %i.aw, align 4, !noundef !7
  %i.aod = fadd float %i.aoc, %.val.i91.26
  %.val.i91.27 = load float, ptr %i.ax, align 4, !noundef !7
  %i.aoe = fadd float %i.aod, %.val.i91.27
  %.val.i91.28 = load float, ptr %i.ay, align 4, !noundef !7
  %i.aof = fadd float %i.aoe, %.val.i91.28
  %.val.i91.29 = load float, ptr %i.az, align 4, !noundef !7
  %i.aog = fadd float %i.aof, %.val.i91.29
  %.val.i91.30 = load float, ptr %i.ba, align 4, !noundef !7
  %i.aoh = fadd float %i.aog, %.val.i91.30
  %.val.i91.31 = load float, ptr %i.bb, align 4, !noundef !7
  %i.aoi = fadd float %i.aoh, %.val.i91.31
  %i.aoj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.sroa.12.0182
  store float %i.aoi, ptr %i.aoj, align 4
  %i.aok = invoke { float, float } @_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx3_quants(i32 noundef 15, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.0.0184, i64 noundef 32, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.h, i64 32, float noundef f0xBF666666, float noundef 5.000000e-02, i64 noundef 36, i1 noundef zeroext false)
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit ; 2 uses

bb.bk:                                            ; preds = %bb.bj
  %i.aol = extractvalue { float, float } %i.aok, 1
  %i.aom = extractvalue { float, float } %i.aok, 0
  %i.aon = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.sroa.12.0182
  store float %i.aom, ptr %i.aon, align 4
  %i.aoo = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.sroa.12.0182
  store float %i.aol, ptr %i.aoo, align 4
  %.not.i.i = icmp eq i64 %i.jv, 0
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph

bb.bl:                                            ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @126) #28
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bm:                                            ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit
  %i.aop = add nuw nsw i64 %.sroa.8111.0179, 1    ; 2 uses
  %i.aoq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.sroa.3.0.copyload, i64 %.sroa.5109.0180
  %i.aor = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.sroa.0.0.copyload, i64 %.sroa.5109.0180
  %i.aos = add nuw i64 %.sroa.5109.0180, 1
  %i.aot = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.reass
  %i.aou = load float, ptr %i.aot, align 4, !noundef !7
  %i.aov = load float, ptr %i.aoq, align 4, !noundef !7 ; 2 uses
  %i.aow = fmul float %i.aov, %i.aov
  %i.aox = fadd float %i.js, %i.aow
  %i.aoy = call float @llvm.sqrt.f32(float %i.aox)
  %i.aoz = fmul float %i.aou, %i.aoy
  store float %i.aoz, ptr %i.aor, align 4
  %exitcond.not = icmp eq i64 %i.aop, %i.amm
  br i1 %exitcond.not, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit, !llvm.loop !1150

bb.bn:                                            ; preds = %.loopexit.split-lp
  %i.apa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ4KRSfEEEEB2h_.exit: ; preds = %.loopexit.split-lp
  resume { ptr, i32 } %lpad.phi

.rtvec:                                           ; preds = %bb.bi
  %i.apb = getelementptr i8, ptr %.sroa.0.0.copyload1.i, i64 4 ; 2 uses
  %i.apc = getelementptr i8, ptr %.sroa.0.0.copyload1.i, i64 12
  %i.apd = load <8 x i8>, ptr %i.e, align 8       ; 2 uses
  %i.ape = load <8 x i8>, ptr %i.c, align 8       ; 2 uses
  %i.apf = load <4 x i8>, ptr %i.e, align 8
  %i.apg = load <4 x i8>, ptr %i.c, align 8
  %i.aph = shufflevector <4 x i8> %i.apf, <4 x i8> %i.apg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x i8> %i.aph, ptr %i.apb, align 1
  %i.api = load <4 x i8>, ptr %.phi.trans.insert257, align 4
  %i.apj = load <4 x i8>, ptr %.phi.trans.insert259, align 4
  %i.apk = shl <4 x i8> %i.apj, splat (i8 4)
  %i.apl = and <4 x i8> %i.api, splat (i8 15)
  %i.apm = or disjoint <4 x i8> %i.apk, %i.apl
  store <4 x i8> %i.apm, ptr %i.apc, align 1
  %i.apn = shufflevector <8 x i8> %i.apd, <8 x i8> %i.ape, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.apo = shl <8 x i8> %i.apn, splat (i8 2)
  %i.app = and <8 x i8> %i.apo, splat (i8 -64)
  %i.apq = shufflevector <8 x i8> %i.apd, <8 x i8> %i.ape, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.apr = or <8 x i8> %i.apq, %i.app
  store <8 x i8> %i.apr, ptr %i.apb, align 1
  %i.aps = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.bi
  %i.apt = getelementptr i8, ptr %.sroa.0.0.copyload1.i, i64 4 ; 2 uses
  %i.apu = load i8, ptr %i.e, align 8, !noundef !7 ; 2 uses
  %i.apv = load i8, ptr %i.c, align 8, !noundef !7 ; 2 uses
  store i8 %i.apu, ptr %i.apt, align 1
  %i.apw = getelementptr i8, ptr %.sroa.0.0.copyload1.i, i64 8
  store i8 %i.apv, ptr %i.apw, align 1
  %.pre.scalar = load i8, ptr %.phi.trans.insert, align 1 ; 2 uses
  %.pre248.scalar = load i8, ptr %.phi.trans.insert247, align 1 ; 2 uses
  %i.apx = getelementptr i8, ptr %.sroa.0.0.copyload1.i, i64 5
  store i8 %.pre.scalar, ptr %i.apx, align 1
  %i.apy = getelementptr i8, ptr %.sroa.0.0.copyload1.i, i64 9
  store i8 %.pre248.scalar, ptr %i.apy, align 1
  %.pre250.scalar = load i8, ptr %.phi.trans.insert249, align 2 ; 2 uses
  %.pre252.scalar = load i8, ptr %.phi.trans.insert251, align 2 ; 2 uses
  %i.apz = getelementptr i8, ptr %.sroa.0.0.copyload1.i, i64 6
  store i8 %.pre250.scalar, ptr %i.apz, align 1
  %i.aqa = getelementptr i8, ptr %.sroa.0.0.copyload1.i, i64 10
  store i8 %.pre252.scalar, ptr %i.aqa, align 1
end_hunk_8
begin_hunk_9_@_RNvXs7_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ5KNtB5_8GgmlType13vec_dot_unopt:.split222
  br i1 %i.nh, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.nj = shl nuw i32 %i.nc, 16                   ; 2 uses
  %i.nk = icmp eq i16 %i.nd, 0
  br i1 %i.nk, label %bb.u, label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.nl = or disjoint i32 %i.ni, 2139095040
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit138

bb.t:                                             ; preds = %bb.q
  %i.nm = shl nuw nsw i32 %i.nf, 13
  %i.nn = or disjoint i32 %i.ni, %i.nm
  %i.no = or i32 %i.nn, 2143289344
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit138

bb.u:                                             ; preds = %bb.r
  %i.np = call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.ne, i1 false)
  %i.nq = zext nneg i16 %i.np to i32              ; 2 uses
  %i.nr = add nuw nsw i32 %i.nq, 8
  %i.ns = shl i32 %i.nf, %i.nr
  %i.nt = and i32 %i.ns, 8388607
  %reass.sub.i137 = or disjoint i32 %i.nj, 989855744
  %i.nu = shl nuw nsw i32 %i.nq, 23
  %i.nv = sub nuw nsw i32 %reass.sub.i137, %i.nu
  %i.nw = or disjoint i32 %i.nv, %i.nt
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit138

bb.v:                                             ; preds = %bb.r
  %i.nx = lshr exact i16 %i.nd, 10
  %narrow.i135 = add nuw nsw i16 %i.nx, 112
  %i.ny = zext nneg i16 %narrow.i135 to i32
  %i.nz = shl nuw nsw i32 %i.ny, 23
  %i.oa = shl nuw nsw i32 %i.nf, 13
  %i.ob = or disjoint i32 %i.nz, %i.oa
  %i.oc = or disjoint i32 %i.ob, %i.nj
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit138

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit138: ; preds = %bb.o, %bb.s, %bb.t, %bb.u, %bb.v
  %.sroa.0.0.i136 = phi i32 [ %i.na, %bb.o ], [ %i.nl, %bb.s ], [ %i.no, %bb.t ], [ %i.nw, %bb.u ], [ %i.oc, %bb.v ]
  %i.od = bitcast i32 %.sroa.0.0.i136 to float
  br label %bb.x

bb.w:                                             ; preds = %.split147, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit134
  %i.oe = call fastcc noundef float @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.mr) #30
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit138
  %.sroa.083.0 = phi float [ %i.oe, %bb.w ], [ %i.od, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit138 ]
  %i.of = fmul float %i.mj, %.sroa.083.0
  %i.og = sitofp i32 %i.ku to float
  %i.oh = fmul float %i.of, %i.og
  %i.oi = fsub float %.sroa.0.0224, %i.oh         ; 2 uses
  %exitcond300.not = icmp eq i64 %i.bv, %.sroa.7.0.copyload
  br i1 %exitcond300.not, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ8KEIBX_NtB1o_8BlockQ5KEEINtB5_7ZipImplBW_B2m_E4nextB1s_.exit.thread.preheader.loopexit, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ8KEIBX_NtB1o_8BlockQ5KEEINtB5_7ZipImplBW_B2m_E4nextB1s_.exit

.loopexit:                                        ; preds = %_RNvXs1_Csf0ob09goflS_9byteorderNtB5_12LittleEndianNtB5_9ByteOrder14write_u32_into.exit129, %.loopexit
  %.sroa.064.0220 = phi ptr [ %i.bz, %_RNvXs1_Csf0ob09goflS_9byteorderNtB5_12LittleEndianNtB5_9ByteOrder14write_u32_into.exit129 ], [ %i.pz, %.loopexit ] ; 5 uses
  %.sroa.072.0218 = phi ptr [ %i.l, %_RNvXs1_Csf0ob09goflS_9byteorderNtB5_12LittleEndianNtB5_9ByteOrder14write_u32_into.exit129 ], [ %i.qa, %.loopexit ] ; 5 uses
  %i.oj = phi i64 [ 0, %_RNvXs1_Csf0ob09goflS_9byteorderNtB5_12LittleEndianNtB5_9ByteOrder14write_u32_into.exit129 ], [ %i.ol, %.loopexit ] ; 2 uses
  %i.ok = phi <8 x i32> [ zeroinitializer, %_RNvXs1_Csf0ob09goflS_9byteorderNtB5_12LittleEndianNtB5_9ByteOrder14write_u32_into.exit129 ], [ %i.py, %.loopexit ]
  %i.ol = add nuw nsw i64 %i.oj, 1                ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.sroa.599.0..sroa_idx, i64 %i.oj
  %i.on = load i8, ptr %i.om, align 1, !alias.scope !1254, !noundef !7
  %i.oo = zext i8 %i.on to i32
  %i.op = getelementptr inbounds nuw i8, ptr %.sroa.064.0220, i64 8
  %i.oq = getelementptr inbounds nuw i8, ptr %.sroa.072.0218, i64 8
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.064.0220, i64 16
  %i.os = getelementptr inbounds nuw i8, ptr %.sroa.072.0218, i64 16
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.064.0220, i64 24
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.072.0218, i64 24
  %i.ov = load <8 x i8>, ptr %.sroa.064.0220, align 1
  %i.ow = sext <8 x i8> %i.ov to <8 x i32>
  %i.ox = load <8 x i8>, ptr %.sroa.072.0218, align 1
  %i.oy = sext <8 x i8> %i.ox to <8 x i32>
  %i.oz = mul nsw <8 x i32> %i.oy, %i.ow
  %i.pa = insertelement <8 x i32> poison, i32 %i.oo, i64 0
  %i.pb = shufflevector <8 x i32> %i.pa, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.pc = mul nsw <8 x i32> %i.oz, %i.pb
  %i.pd = add <8 x i32> %i.pc, %i.ok
  %i.pe = load <8 x i8>, ptr %i.op, align 1
  %i.pf = sext <8 x i8> %i.pe to <8 x i32>
  %i.pg = load <8 x i8>, ptr %i.oq, align 1
  %i.ph = sext <8 x i8> %i.pg to <8 x i32>
  %i.pi = mul nsw <8 x i32> %i.ph, %i.pf
  %i.pj = mul nsw <8 x i32> %i.pi, %i.pb
  %i.pk = add <8 x i32> %i.pj, %i.pd
  %i.pl = load <8 x i8>, ptr %i.or, align 1
  %i.pm = sext <8 x i8> %i.pl to <8 x i32>
  %i.pn = load <8 x i8>, ptr %i.os, align 1
  %i.po = sext <8 x i8> %i.pn to <8 x i32>
  %i.pp = mul nsw <8 x i32> %i.po, %i.pm
  %i.pq = mul nsw <8 x i32> %i.pp, %i.pb
  %i.pr = add <8 x i32> %i.pq, %i.pk
  %i.ps = load <8 x i8>, ptr %i.ot, align 1
  %i.pt = sext <8 x i8> %i.ps to <8 x i32>
  %i.pu = load <8 x i8>, ptr %i.ou, align 1
  %i.pv = sext <8 x i8> %i.pu to <8 x i32>
  %i.pw = mul nsw <8 x i32> %i.pv, %i.pt
  %i.px = mul nsw <8 x i32> %i.pw, %i.pb
  %i.py = add <8 x i32> %i.px, %i.pr              ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.064.0220, i64 32
  %i.qa = getelementptr inbounds nuw i8, ptr %.sroa.072.0218, i64 32
  %.not.i130.not = icmp eq i64 %i.ol, 8
  br i1 %.not.i130.not, label %bb.b, label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ5KNtB5_8GgmlType18from_float_imatrix(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef range(i64 0, 52405522936674863) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %4, i64 noundef range(i64 0, 2305843009213693952) %5, i64 noundef %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 1               ; 13 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 14 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 2 uses
  %i.e = alloca [8 x i8], align 8                 ; 14 uses
  %i.f = ptrtoaddr ptr %i.e to i64                ; 2 uses
  %i.g = alloca [32 x i8], align 4                ; 6 uses
  %i.h = alloca [128 x i8], align 4               ; 38 uses
  %i.i = alloca [32 x i8], align 4                ; 5 uses
  %i.j = alloca [32 x i8], align 4                ; 5 uses
  %i.k = alloca [40 x i8], align 8                ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RINvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils22group_for_quantizationNtNtB4_8k_quants8BlockQ5KEB6_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef %3)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.o = load i64, ptr %i.l, align 8, !range !22, !noundef !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !7 ; 3 uses
  %i.r = icmp ult i64 %i.q, 384307168202282326
  call void @llvm.assume(i1 %i.r)
  %.idx = mul nuw nsw i64 %i.q, 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.n, ptr %i.k, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  store ptr %i.n, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.o, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store ptr %i.s, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.t = icmp eq i64 %i.q, 0
  br i1 %i.t, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i._crit_edge, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i.lr.ph

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i.lr.ph: ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %.sroa.03.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.03.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.03.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.v = lshr i64 %6, 8                           ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 60
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 68
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 76
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 84
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 92
  %i.au = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 100
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 108
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 116
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 124
  %.phi.trans.insert257 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.phi.trans.insert261 = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.phi.trans.insert259 = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.phi.trans.insert265 = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %.phi.trans.insert263 = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %.phi.trans.insert269 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.phi.trans.insert267 = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.phi.trans.insert273 = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %.phi.trans.insert271 = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %.phi.trans.insert277 = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %.phi.trans.insert275 = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %.phi.trans.insert281 = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %.phi.trans.insert279 = getelementptr inbounds nuw i8, ptr %i.e, i64 7
  %7 = and i64 %6, -256
  %i.bc = add nuw i64 %i.f, 8
  %i.bd = add nuw i64 %i.d, 8
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i.lr.ph, %bb.at
  %i.be = phi ptr [ %i.n, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i.lr.ph ], [ %i.jv, %bb.at ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  call void @llvm.experimental.noalias.scope.decl(metadata !1271)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %i.bf, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !alias.scope !1272, !noalias !1273
  %.sroa.0.0.copyload1.i = load ptr, ptr %i.be, align 8, !noalias !1274 ; 30 uses
  %.sroa.0.0.copyload1.i366 = ptrtoaddr ptr %.sroa.0.0.copyload1.i to i64 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.copyload1.i, null
  br i1 %.not.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i._crit_edge, label %bb.b

.loopexit159:                                     ; preds = %bb.bb, %bb.bo
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph, %bb.cc
  %lpad.loopexit160 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %._crit_edge, %bb.c, %bb.d, %bb.q
  %lpad.loopexit165 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %bb.ce
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit159
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit159 ], [ %lpad.loopexit160, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit165, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KRSfEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KRSfEEEEB2h_.exit unwind label %bb.cg

bb.b:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i
  %.sroa.7.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.8.16.copyload = load ptr, ptr %.sroa.7.0..sroa_idx2.i, align 8, !noalias !1270, !nonnull !7, !noundef !7 ; 8 uses
  %.sroa.10.16..sroa.7.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %.sroa.10.16.copyload = load i64, ptr %.sroa.10.16..sroa.7.0..sroa_idx2.i.sroa_idx, align 8, !noalias !1270 ; 8 uses
  %i.bg = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !1270, !noalias !1275, !noundef !7 ; 4 uses
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !1270, !noalias !1275
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.j, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.i, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.h, i8 0, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.g, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.bi = icmp eq i64 %.sroa.10.16.copyload, 0
  br i1 %i.bi, label %._crit_edge, label %.preheader163.preheader

.preheader163.preheader:                          ; preds = %bb.b
  %xtraiter = and i64 %.sroa.10.16.copyload, 3    ; 3 uses
  %i.bj = icmp ult i64 %.sroa.10.16.copyload, 4
  br i1 %i.bj, label %.preheader163.epil.preheader, label %.preheader163.preheader.new

.preheader163.preheader.new:                      ; preds = %.preheader163.preheader
  %unroll_iter = and i64 %.sroa.10.16.copyload, -4
  br label %.preheader163

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i._crit_edge: ; preds = %bb.at, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i, %bb.a
  call void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KRSfEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

.preheader163:                                    ; preds = %.preheader163, %.preheader163.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader163.preheader.new ], [ %i.bz, %.preheader163 ] ; 5 uses
  %.sroa.02.0.i = phi float [ -0.000000e+00, %.preheader163.preheader.new ], [ %i.by, %.preheader163 ]
  %niter = phi i64 [ 0, %.preheader163.preheader.new ], [ %niter.next.3, %.preheader163 ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %.sroa.04.0.i
  %.val.i = load float, ptr %i.bk, align 4, !noundef !7 ; 2 uses
  %i.bl = fmul float %.val.i, %.val.i
  %i.bm = fadd float %.sroa.02.0.i, %i.bl
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %.sroa.04.0.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %.val.i.1 = load float, ptr %i.bo, align 4, !noundef !7 ; 2 uses
  %i.bp = fmul float %.val.i.1, %.val.i.1
  %i.bq = fadd float %i.bm, %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %.sroa.04.0.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.val.i.2 = load float, ptr %i.bs, align 4, !noundef !7 ; 2 uses
  %i.bt = fmul float %.val.i.2, %.val.i.2
  %i.bu = fadd float %i.bq, %i.bt
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %.sroa.04.0.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %.val.i.3 = load float, ptr %i.bw, align 4, !noundef !7 ; 2 uses
  %i.bx = fmul float %.val.i.3, %.val.i.3
  %i.by = fadd float %i.bu, %i.bx                 ; 3 uses
  %i.bz = add nuw i64 %.sroa.04.0.i, 4            ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit164.unr-lcssa, label %.preheader163

.loopexit164.unr-lcssa:                           ; preds = %.preheader163
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit164, label %.preheader163.epil.preheader

.preheader163.epil.preheader:                     ; preds = %.loopexit164.unr-lcssa, %.preheader163.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader163.preheader ], [ %i.bz, %.loopexit164.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi float [ -0.000000e+00, %.preheader163.preheader ], [ %i.by, %.loopexit164.unr-lcssa ]
  %lcmp.mod384 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod384)
  br label %.preheader163.epil

.preheader163.epil:                               ; preds = %.preheader163.epil, %.preheader163.epil.preheader
  %.sroa.04.0.i.epil = phi i64 [ %i.cd, %.preheader163.epil ], [ %.sroa.04.0.i.epil.init, %.preheader163.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.epil = phi float [ %i.cc, %.preheader163.epil ], [ %.sroa.02.0.i.epil.init, %.preheader163.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader163.epil ], [ 0, %.preheader163.epil.preheader ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %.sroa.04.0.i.epil
  %.val.i.epil = load float, ptr %i.ca, align 4, !noundef !7 ; 2 uses
  %i.cb = fmul float %.val.i.epil, %.val.i.epil
  %i.cc = fadd float %.sroa.02.0.i.epil, %i.cb    ; 2 uses
  %i.cd = add nuw i64 %.sroa.04.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit164, label %.preheader163.epil, !llvm.loop !1261

.loopexit164:                                     ; preds = %.preheader163.epil, %.loopexit164.unr-lcssa
  %.lcssa = phi float [ %i.by, %.loopexit164.unr-lcssa ], [ %i.cc, %.preheader163.epil ]
  %i.ce = fmul float %.lcssa, 2.000000e+00
  %i.cf = fmul float %i.ce, 3.906250e-03          ; 2 uses
  %i.cg = and i64 %.sroa.10.16.copyload, -32      ; 2 uses
  %.not.i.i191 = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i191, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.loopexit164
  %8 = shl i64 %i.bg, 8
  %broadcast.splatinsert356 = insertelement <4 x float> poison, float %i.cf, i64 0
  %broadcast.splat357 = shufflevector <4 x float> %broadcast.splatinsert356, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.cd
  %.sroa.0.0194 = phi ptr [ %i.ch, %bb.cd ], [ %.sroa.8.16.copyload, %.lr.ph.preheader ] ; 3 uses
  %.sroa.5113.0193 = phi i64 [ %i.ci, %bb.cd ], [ %i.cg, %.lr.ph.preheader ]
  %.sroa.12.0192 = phi i64 [ %i.cj, %bb.cd ], [ 0, %.lr.ph.preheader ] ; 7 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.0194, i64 128 ; 2 uses
  %i.ci = add i64 %.sroa.5113.0193, -32           ; 2 uses
  %i.cj = add nuw nsw i64 %.sroa.12.0192, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %i.h, ptr noundef nonnull %i.u, ptr noundef nonnull readonly align 4 %.sroa.0.0194, ptr noundef nonnull readonly %i.ch)
          to label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter7IterMutfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSfECsltEA4u8Pgfu_11candle_core.exit unwind label %.loopexit.split-lp.loopexit

._crit_edge:                                      ; preds = %bb.cd, %bb.b, %.loopexit164
  %i.ck = invoke noundef float @_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils14make_qp_quants(i64 noundef 8, i8 noundef 63, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.i, i64 noundef 8, ptr noalias nofree noundef nonnull %i.e, i64 noundef 8, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.g, i64 noundef 8)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.c:                                             ; preds = %._crit_edge
  %i.cl = invoke noundef float @_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils14make_qp_quants(i64 noundef 8, i8 noundef 63, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.j, i64 noundef 8, ptr noalias nofree noundef nonnull %i.c, i64 noundef 8, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.g, i64 noundef 8)
          to label %bb.cb unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

bb.d:                                             ; preds = %.rtcont
  %i.cm = invoke noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %bb.d
  %i.cn = and i128 %i.cm, 18014398509481984
  %.not151 = icmp eq i128 %i.cn, 0
  br i1 %.not151, label %bb.e, label %bb.p

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit: ; preds = %.rtcont
  %i.co = and i64 %.rtmerge370, 18014398509481984
  %.not = icmp eq i64 %i.co, 0
  br i1 %.not, label %bb.e, label %bb.p

bb.e:                                             ; preds = %.noexc, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.cp = bitcast float %i.ck to i32              ; 5 uses
  %i.cq = and i32 %i.cp, -2147483648              ; 2 uses
  %i.cr = and i32 %i.cp, 2139095040               ; 6 uses
  %i.cs = and i32 %i.cp, 8388607                  ; 4 uses
  %i.ct = icmp eq i32 %i.cr, 2139095040
  br i1 %i.ct, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cu = icmp eq i32 %i.cs, 0
  %..i = select i1 %i.cu, i32 0, i32 512
  %i.cv = lshr exact i32 %i.cq, 16
  %i.cw = lshr i32 %i.cs, 13
  %i.cx = or disjoint i32 %i.cw, %i.cv
  %i.cy = or i32 %i.cx, %..i
  %i.cz = trunc nuw i32 %i.cy to i16
  %i.da = or disjoint i16 %i.cz, 31744
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.g:                                             ; preds = %bb.e
  %i.db = lshr exact i32 %i.cq, 16                ; 4 uses
  %i.dc = lshr exact i32 %i.cr, 23                ; 2 uses
  %i.dd = icmp samesign ugt i32 %i.cr, 1191182336
  br i1 %i.dd, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.de = icmp samesign ult i32 %i.cr, 947912704
  br i1 %i.de, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.df = trunc nuw i32 %i.db to i16
  %i.dg = or disjoint i16 %i.df, 31744
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.j:                                             ; preds = %bb.h
  %i.dh = lshr exact i32 %i.cr, 13
  %i.di = add nuw nsw i32 %i.dh, 16384
  %i.dj = lshr i32 %i.cs, 13
  %i.dk = and i32 %i.cp, 4096
  %i.dl = icmp ne i32 %i.dk, 0
  %i.dm = and i32 %i.cp, 12287
  %i.dn = icmp ne i32 %i.dm, 0
  %or.cond.not.i = and i1 %i.dl, %i.dn
  %i.do = or disjoint i32 %i.di, %i.dj
  %i.dp = or i32 %i.do, %i.db
  %i.dq = trunc i32 %i.dp to i16
  %i.dr = zext i1 %or.cond.not.i to i16
  %spec.select7.i = add i16 %i.dq, %i.dr
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.k:                                             ; preds = %bb.h
  %i.ds = icmp samesign ult i32 %i.cr, 855638016
  br i1 %i.ds, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dt = sub nsw i32 126, %i.dc
  %i.du = or disjoint i32 %i.cs, 8388608          ; 3 uses
  %i.dv = lshr i32 %i.du, %i.dt                   ; 2 uses
  %i.dw = sub nsw i32 29, %i.dc
  %i.dx = and i32 %i.dw, 31                       ; 2 uses
  %i.dy = shl nuw i32 1, %i.dx
  %i.dz = and i32 %i.dy, %i.du
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.eb = trunc nuw i32 %i.db to i16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.n:                                             ; preds = %bb.l
  %i.ec = shl i32 3, %i.dx
  %i.ed = add nuw i32 %i.ec, 16777215
  %i.ee = and i32 %i.ed, %i.du
  %i.ef = icmp ne i32 %i.ee, 0
  %i.eg = zext i1 %i.ef to i32
  %spec.select.i = add nuw nsw i32 %i.dv, %i.eg
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.sroa.03.0.i = phi i32 [ %i.dv, %bb.l ], [ %spec.select.i, %bb.n ]
  %i.eh = or i32 %.sroa.03.0.i, %i.db
  %i.ei = trunc nuw i32 %i.eh to i16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.p:                                             ; preds = %.noexc, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.ej = call fastcc noundef i16 @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.ck)
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit: ; preds = %bb.p, %bb.o, %bb.m, %bb.j, %bb.i, %bb.f
  %.sroa.029.0 = phi i16 [ %i.ej, %bb.p ], [ %i.da, %bb.f ], [ %i.dg, %bb.i ], [ %i.eb, %bb.m ], [ %i.ei, %bb.o ], [ %spec.select7.i, %bb.j ]
  store i16 %.sroa.029.0, ptr %.sroa.0.0.copyload1.i, align 2
  %i.ek = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %bb.q, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit77, !prof !14

bb.q:                                             ; preds = %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit
  %i.em = invoke noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc76 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc76:                                         ; preds = %bb.q
  %i.en = and i128 %i.em, 18014398509481984
  %.not153 = icmp eq i128 %i.en, 0
  br i1 %.not153, label %bb.r, label %bb.ac

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit77: ; preds = %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit
  %i.eo = and i64 %i.ek, 18014398509481984
  %.not152 = icmp eq i64 %i.eo, 0
  br i1 %.not152, label %bb.r, label %bb.ac

bb.r:                                             ; preds = %.noexc76, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit77
  %i.ep = bitcast float %i.cl to i32              ; 5 uses
  %i.eq = and i32 %i.ep, -2147483648              ; 2 uses
  %i.er = and i32 %i.ep, 2139095040               ; 6 uses
  %i.es = and i32 %i.ep, 8388607                  ; 4 uses
  %i.et = icmp eq i32 %i.er, 2139095040
  br i1 %i.et, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.eu = icmp eq i32 %i.es, 0
  %..i83 = select i1 %i.eu, i32 0, i32 512
  %i.ev = lshr exact i32 %i.eq, 16
  %i.ew = lshr i32 %i.es, 13
  %i.ex = or disjoint i32 %i.ew, %i.ev
  %i.ey = or i32 %i.ex, %..i83
  %i.ez = trunc nuw i32 %i.ey to i16
  %i.fa = or disjoint i16 %i.ez, 31744
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit84

bb.t:                                             ; preds = %bb.r
  %i.fb = lshr exact i32 %i.eq, 16                ; 4 uses
  %i.fc = lshr exact i32 %i.er, 23                ; 2 uses
  %i.fd = icmp samesign ugt i32 %i.er, 1191182336
  br i1 %i.fd, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fe = icmp samesign ult i32 %i.er, 947912704
  br i1 %i.fe, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.ff = trunc nuw i32 %i.fb to i16
  %i.fg = or disjoint i16 %i.ff, 31744
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit84

bb.w:                                             ; preds = %bb.u
  %i.fh = lshr exact i32 %i.er, 13
  %i.fi = add nuw nsw i32 %i.fh, 16384
  %i.fj = lshr i32 %i.es, 13
  %i.fk = and i32 %i.ep, 4096
  %i.fl = icmp ne i32 %i.fk, 0
  %i.fm = and i32 %i.ep, 12287
  %i.fn = icmp ne i32 %i.fm, 0
  %or.cond.not.i78 = and i1 %i.fl, %i.fn
  %i.fo = or disjoint i32 %i.fi, %i.fj
  %i.fp = or i32 %i.fo, %i.fb
  %i.fq = trunc i32 %i.fp to i16
  %i.fr = zext i1 %or.cond.not.i78 to i16
  %spec.select7.i79 = add i16 %i.fq, %i.fr
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit84

bb.x:                                             ; preds = %bb.u
  %i.fs = icmp samesign ult i32 %i.er, 855638016
  br i1 %i.fs, label %bb.z, label %bb.y

end_hunk_9
begin_hunk_10_@_RNvXs7_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ5KNtB5_8GgmlType18from_float_imatrix:bb.a
  %i.mj = icmp eq i64 %i.mi, 0
  br i1 %i.mj, label %bb.bo, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit94, !prof !14

bb.bo:                                            ; preds = %bb.bn
  %i.mk = invoke noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc93 unwind label %.loopexit159

.noexc93:                                         ; preds = %bb.bo
  %i.ml = and i128 %i.mk, 18014398509481984
  %.not157 = icmp eq i128 %i.ml, 0
  br i1 %.not157, label %bb.bp, label %bb.by

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit94: ; preds = %bb.bn
  %i.mm = and i64 %i.mi, 18014398509481984
  %.not156 = icmp eq i64 %i.mm, 0
  br i1 %.not156, label %bb.bp, label %bb.by

bb.bp:                                            ; preds = %.noexc93, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit94
  %i.mn = and i16 %i.mh, 32767
  %i.mo = icmp eq i16 %i.mn, 0
  br i1 %i.mo, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.mp = zext i16 %i.mh to i32
  %i.mq = shl nuw i32 %i.mp, 16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit98

bb.br:                                            ; preds = %bb.bp
  %i.mr = and i16 %i.mh, -32768
  %i.ms = zext i16 %i.mr to i32                   ; 2 uses
  %i.mt = and i16 %i.mh, 31744                    ; 3 uses
  %i.mu = and i16 %i.mh, 1023                     ; 3 uses
  %i.mv = zext nneg i16 %i.mu to i32              ; 3 uses
  %i.mw = icmp eq i16 %i.mt, 31744
  br i1 %i.mw, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.mx = icmp eq i16 %i.mu, 0
  %i.my = shl nuw i32 %i.ms, 16                   ; 2 uses
  br i1 %i.mx, label %bb.bu, label %bb.bv

bb.bt:                                            ; preds = %bb.br
  %i.mz = shl nuw i32 %i.ms, 16                   ; 2 uses
  %i.na = icmp eq i16 %i.mt, 0
  br i1 %i.na, label %bb.bw, label %bb.bx

bb.bu:                                            ; preds = %bb.bs
  %i.nb = or disjoint i32 %i.my, 2139095040
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit98

bb.bv:                                            ; preds = %bb.bs
  %i.nc = shl nuw nsw i32 %i.mv, 13
  %i.nd = or disjoint i32 %i.my, %i.nc
  %i.ne = or i32 %i.nd, 2143289344
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit98

bb.bw:                                            ; preds = %bb.bt
  %i.nf = call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.mu, i1 false)
  %i.ng = zext nneg i16 %i.nf to i32              ; 2 uses
  %i.nh = add nuw nsw i32 %i.ng, 8
  %i.ni = shl i32 %i.mv, %i.nh
  %i.nj = and i32 %i.ni, 8388607
  %reass.sub.i97 = or disjoint i32 %i.mz, 989855744
  %i.nk = shl nuw nsw i32 %i.ng, 23
  %i.nl = sub nuw nsw i32 %reass.sub.i97, %i.nk
  %i.nm = or disjoint i32 %i.nl, %i.nj
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit98

bb.bx:                                            ; preds = %bb.bt
  %i.nn = lshr exact i16 %i.mt, 10
  %narrow.i95 = add nuw nsw i16 %i.nn, 112
  %i.no = zext nneg i16 %narrow.i95 to i32
  %i.np = shl nuw nsw i32 %i.no, 23
  %i.nq = shl nuw nsw i32 %i.mv, 13
  %i.nr = or disjoint i32 %i.np, %i.nq
  %i.ns = or disjoint i32 %i.nr, %i.mz
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit98

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit98: ; preds = %bb.bq, %bb.bu, %bb.bv, %bb.bw, %bb.bx
  %.sroa.0.0.i96 = phi i32 [ %i.mq, %bb.bq ], [ %i.nb, %bb.bu ], [ %i.ne, %bb.bv ], [ %i.nm, %bb.bw ], [ %i.ns, %bb.bx ]
  %i.nt = bitcast i32 %.sroa.0.0.i96 to float
  br label %bb.bz

bb.by:                                            ; preds = %.noexc93, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit94
  %i.nu = call fastcc noundef float @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.mh)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit98
  %.sroa.010.0 = phi float [ %i.nt, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit98 ], [ %i.nu, %bb.by ]
  %i.nv = uitofp nneg i8 %.sroa.3.0.i to float
  %i.nw = fmul float %.sroa.010.0, %i.nv          ; 2 uses
  %i.nx = shl nuw nsw i64 %.sroa.031.0197, 5      ; 3 uses
  %i.ny = call i64 @llvm.umax.i64(i64 %.sroa.10.16.copyload, i64 %i.nx)
  %i.nz = shl i64 %.sroa.031.0197, 5
  %i.oa = sub i64 %i.ny, %i.nz                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.oa, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.bz
  %i.ob = call i64 @llvm.umin.i64(i64 %i.oa, i64 31)
  %i.oc = add nuw nsw i64 %i.ob, 1                ; 2 uses
  %i.od = and i64 %i.oc, 3                        ; 2 uses
  %i.oe = icmp eq i64 %i.od, 0
  %i.of = select i1 %i.oe, i64 4, i64 %i.od
  %n.vec = sub nsw i64 %i.oc, %i.of               ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.nw, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert348 = insertelement <4 x float> poison, float %i.mf, i64 0
  %broadcast.splat349 = shufflevector <4 x float> %broadcast.splatinsert348, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.og = add nuw nsw i64 %index, %i.nx           ; 2 uses
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %i.og
  %wide.load = load <4 x float>, ptr %i.oh, align 4
  %i.oi = fadd <4 x float> %broadcast.splat, %wide.load
  %i.oj = fdiv <4 x float> %i.oi, %broadcast.splat349
  %i.ok = call <4 x float> @llvm.round.v4f32(<4 x float> %i.oj)
  %i.ol = call <4 x i32> @llvm.fptosi.sat.v4i32.v4f32(<4 x float> %i.ok)
  %i.om = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ol, <4 x i32> zeroinitializer)
  %i.on = call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.om, <4 x i32> splat (i32 31))
  %i.oo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.og
  %i.op = trunc nuw nsw <4 x i32> %i.on to <4 x i8>
  store <4 x i8> %i.op, ptr %i.oo, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.oq = icmp eq i64 %index.next, %n.vec
  br i1 %i.oq, label %scalar.ph.preheader, label %vector.body, !llvm.loop !1266

scalar.ph.preheader:                              ; preds = %vector.body, %bb.bz
  %.sroa.033.0196.ph = phi i64 [ 0, %bb.bz ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.ca
  %.sroa.033.0196 = phi i64 [ %i.ow, %bb.ca ], [ %.sroa.033.0196.ph, %scalar.ph.preheader ] ; 2 uses
  %i.or = add nuw nsw i64 %.sroa.033.0196, %i.nx  ; 4 uses
  %i.os = icmp ult i64 %i.or, %.sroa.10.16.copyload
  br i1 %i.os, label %bb.ca, label %.invoke

.invoke:                                          ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit, %scalar.ph
  %i.ot = phi i64 [ %i.or, %scalar.ph ], [ %.reass, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit ], [ 8, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader ]
  %i.ou = phi i64 [ %.sroa.10.16.copyload, %scalar.ph ], [ %5, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit ], [ 8, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader ]
  %i.ov = phi ptr [ @157, %scalar.ph ], [ @160, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit ], [ @158, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ot, i64 noundef %i.ou, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ov) #28
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ca:                                            ; preds = %scalar.ph
  %i.ow = add nuw nsw i64 %.sroa.033.0196, 1      ; 2 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.16.copyload, i64 %i.or
  %i.oy = load float, ptr %i.ox, align 4, !noundef !7
  %i.oz = fadd float %i.nw, %i.oy
  %i.pa = fdiv float %i.oz, %i.mf
  %i.pb = call float @llvm.round.f32(float %i.pa)
  %i.pc = call i32 @llvm.fptosi.sat.i32.f32(float %i.pb)
  %i.pd = call i32 @llvm.smax.i32(i32 %i.pc, i32 0)
  %i.pe = call i32 @llvm.umin.i32(i32 %i.pd, i32 31)
  %i.pf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.or
  %i.pg = trunc nuw nsw i32 %i.pe to i8
  store i8 %i.pg, ptr %i.pf, align 1
  %exitcond233.not = icmp eq i64 %i.ow, 32
  br i1 %exitcond233.not, label %.loopexit, label %scalar.ph, !llvm.loop !1267

bb.cb:                                            ; preds = %bb.c
  %i.ph = add i64 %.sroa.0.0.copyload1.i366, 4    ; 2 uses
  %i.pi = add i64 %.sroa.0.0.copyload1.i366, 16   ; 2 uses
  %rt.bound0 = icmp ult i64 %i.ph, %i.bd
  %rt.bound1 = icmp ugt i64 %i.pi, %i.d
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.bound0367 = icmp ult i64 %i.ph, %i.bc
  %rt.bound1368 = icmp ugt i64 %i.pi, %i.f
  %rt.conflict369 = and i1 %rt.bound0367, %rt.bound1368
  %rt.conflict.all = or i1 %rt.conflict, %rt.conflict369
  %rt.guard = freeze i1 %rt.conflict.all
  br i1 %rt.guard, label %.rtscalar, label %.rtvec, !prof !26

_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter7IterMutfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSfECsltEA4u8Pgfu_11candle_core.exit: ; preds = %.lr.ph
  %.sroa.03.sroa.0.0.copyload = load ptr, ptr %i.b, align 8 ; 4 uses
  %.sroa.03.sroa.0.0.copyload350 = ptrtoaddr ptr %.sroa.03.sroa.0.0.copyload to i64
  %.sroa.03.sroa.3.0.copyload = load ptr, ptr %.sroa.03.sroa.3.0..sroa_idx, align 8 ; 4 uses
  %.sroa.03.sroa.3.0.copyload351 = ptrtoaddr ptr %.sroa.03.sroa.3.0.copyload to i64
  %.sroa.03.sroa.5.0.copyload = load i64, ptr %.sroa.03.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.03.sroa.6.0.copyload = load i64, ptr %.sroa.03.sroa.6.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.pj = icmp ult i64 %.sroa.03.sroa.5.0.copyload, %.sroa.03.sroa.6.0.copyload
  br i1 %i.pj, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph: ; preds = %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter7IterMutfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSfECsltEA4u8Pgfu_11candle_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.sroa.3.0.copyload) ]
  br i1 %i.w, label %bb.ce, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph.split

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph.split: ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph
  %i.pk = shl nuw nsw i64 %.sroa.12.0192, 5
  %i.pl = urem i64 %i.bg, %i.v
  %i.pm = shl nuw i64 %i.pl, 8
  %invariant.op = add i64 %i.pk, %i.pm            ; 3 uses
  %i.pn = sub i64 %.sroa.03.sroa.6.0.copyload, %.sroa.03.sroa.5.0.copyload
  %9 = udiv i64 %i.bg, %i.v
  %10 = mul i64 %7, %9
  %11 = shl i64 %.sroa.12.0192, 5
  %12 = add i64 %8, %11
  %13 = sub i64 %10, %12
  %14 = xor i64 %.sroa.03.sroa.5.0.copyload, -1
  %15 = add i64 %.sroa.03.sroa.6.0.copyload, %14
  %16 = call i64 @llvm.umax.i64(i64 %5, i64 %invariant.op)
  %i.po = add i64 %16, %13
  %i.pp = call i64 @llvm.umin.i64(i64 %15, i64 %i.po)
  %i.pq = add i64 %i.pp, 1                        ; 3 uses
  %min.iters.check353 = icmp ult i64 %i.pq, 5
  %i.pr = sub i64 %.sroa.03.sroa.3.0.copyload351, %.sroa.03.sroa.0.0.copyload350
  %diff.check = icmp ugt i64 %i.pr, -16
  %or.cond = select i1 %min.iters.check353, i1 true, i1 %diff.check
  br i1 %or.cond, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.preheader, label %vector.ph354

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.preheader: ; preds = %vector.body358, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph.split
  %.sroa.5123.0190.ph = phi i64 [ %.sroa.03.sroa.5.0.copyload, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph.split ], [ %i.pv, %vector.body358 ]
  %.sroa.8125.0189.ph = phi i64 [ 0, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph.split ], [ %n.vec355, %vector.body358 ]
  br label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit

vector.ph354:                                     ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph.split
  %i.ps = and i64 %i.pq, 3                        ; 2 uses
  %i.pt = icmp eq i64 %i.ps, 0
  %i.pu = select i1 %i.pt, i64 4, i64 %i.ps
  %n.vec355 = sub i64 %i.pq, %i.pu                ; 3 uses
  %i.pv = add i64 %.sroa.03.sroa.5.0.copyload, %n.vec355
  %invariant.gep = getelementptr [4 x i8], ptr %4, i64 %invariant.op
  br label %vector.body358

vector.body358:                                   ; preds = %vector.body358, %vector.ph354
  %index359 = phi i64 [ 0, %vector.ph354 ], [ %index.next362, %vector.body358 ] ; 3 uses
  %i.pw = add nuw i64 %.sroa.03.sroa.5.0.copyload, %index359 ; 2 uses
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.sroa.3.0.copyload, i64 %i.pw
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.sroa.0.0.copyload, i64 %i.pw
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index359
  %wide.load360 = load <4 x float>, ptr %gep, align 4
  %wide.load361 = load <4 x float>, ptr %i.px, align 4 ; 2 uses
  %i.pz = fmul <4 x float> %wide.load361, %wide.load361
  %i.qa = fadd <4 x float> %broadcast.splat357, %i.pz
  %i.qb = call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.qa)
  %i.qc = fmul <4 x float> %wide.load360, %i.qb
  store <4 x float> %i.qc, ptr %i.py, align 4
  %index.next362 = add nuw i64 %index359, 4       ; 2 uses
  %i.qd = icmp eq i64 %index.next362, %n.vec355
  br i1 %i.qd, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.preheader, label %vector.body358, !llvm.loop !1268

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader: ; preds = %bb.cf, %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter7IterMutfENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSfECsltEA4u8Pgfu_11candle_core.exit
  %exitcond231.not = icmp eq i64 %.sroa.12.0192, 8
  br i1 %exitcond231.not, label %.invoke, label %bb.cc

_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit: ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.preheader, %bb.cf
  %.sroa.5123.0190 = phi i64 [ %i.rt, %bb.cf ], [ %.sroa.5123.0190.ph, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.preheader ] ; 3 uses
  %.sroa.8125.0189 = phi i64 [ %i.rq, %bb.cf ], [ %.sroa.8125.0189.ph, %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.preheader ] ; 2 uses
  %.reass = add nuw nsw i64 %.sroa.8125.0189, %invariant.op ; 3 uses
  %i.qe = icmp ult i64 %.reass, %5
  br i1 %i.qe, label %bb.cf, label %.invoke

bb.cc:                                            ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader
  %.val.i105 = load float, ptr %i.h, align 4, !noundef !7
  %.val.i105.1 = load float, ptr %i.x, align 4, !noundef !7
  %i.qf = fadd float %.val.i105, %.val.i105.1
  %.val.i105.2 = load float, ptr %i.y, align 4, !noundef !7
  %i.qg = fadd float %i.qf, %.val.i105.2
  %.val.i105.3 = load float, ptr %i.z, align 4, !noundef !7
  %i.qh = fadd float %i.qg, %.val.i105.3
  %.val.i105.4 = load float, ptr %i.aa, align 4, !noundef !7
  %i.qi = fadd float %i.qh, %.val.i105.4
  %.val.i105.5 = load float, ptr %i.ab, align 4, !noundef !7
  %i.qj = fadd float %i.qi, %.val.i105.5
  %.val.i105.6 = load float, ptr %i.ac, align 4, !noundef !7
  %i.qk = fadd float %i.qj, %.val.i105.6
  %.val.i105.7 = load float, ptr %i.ad, align 4, !noundef !7
  %i.ql = fadd float %i.qk, %.val.i105.7
  %.val.i105.8 = load float, ptr %i.ae, align 4, !noundef !7
  %i.qm = fadd float %i.ql, %.val.i105.8
  %.val.i105.9 = load float, ptr %i.af, align 4, !noundef !7
  %i.qn = fadd float %i.qm, %.val.i105.9
  %.val.i105.10 = load float, ptr %i.ag, align 4, !noundef !7
  %i.qo = fadd float %i.qn, %.val.i105.10
  %.val.i105.11 = load float, ptr %i.ah, align 4, !noundef !7
  %i.qp = fadd float %i.qo, %.val.i105.11
  %.val.i105.12 = load float, ptr %i.ai, align 4, !noundef !7
  %i.qq = fadd float %i.qp, %.val.i105.12
  %.val.i105.13 = load float, ptr %i.aj, align 4, !noundef !7
  %i.qr = fadd float %i.qq, %.val.i105.13
  %.val.i105.14 = load float, ptr %i.ak, align 4, !noundef !7
  %i.qs = fadd float %i.qr, %.val.i105.14
  %.val.i105.15 = load float, ptr %i.al, align 4, !noundef !7
  %i.qt = fadd float %i.qs, %.val.i105.15
  %.val.i105.16 = load float, ptr %i.am, align 4, !noundef !7
  %i.qu = fadd float %i.qt, %.val.i105.16
  %.val.i105.17 = load float, ptr %i.an, align 4, !noundef !7
  %i.qv = fadd float %i.qu, %.val.i105.17
  %.val.i105.18 = load float, ptr %i.ao, align 4, !noundef !7
  %i.qw = fadd float %i.qv, %.val.i105.18
  %.val.i105.19 = load float, ptr %i.ap, align 4, !noundef !7
  %i.qx = fadd float %i.qw, %.val.i105.19
  %.val.i105.20 = load float, ptr %i.aq, align 4, !noundef !7
  %i.qy = fadd float %i.qx, %.val.i105.20
  %.val.i105.21 = load float, ptr %i.ar, align 4, !noundef !7
  %i.qz = fadd float %i.qy, %.val.i105.21
  %.val.i105.22 = load float, ptr %i.as, align 4, !noundef !7
  %i.ra = fadd float %i.qz, %.val.i105.22
  %.val.i105.23 = load float, ptr %i.at, align 4, !noundef !7
  %i.rb = fadd float %i.ra, %.val.i105.23
  %.val.i105.24 = load float, ptr %i.au, align 4, !noundef !7
  %i.rc = fadd float %i.rb, %.val.i105.24
  %.val.i105.25 = load float, ptr %i.av, align 4, !noundef !7
  %i.rd = fadd float %i.rc, %.val.i105.25
  %.val.i105.26 = load float, ptr %i.aw, align 4, !noundef !7
  %i.re = fadd float %i.rd, %.val.i105.26
  %.val.i105.27 = load float, ptr %i.ax, align 4, !noundef !7
  %i.rf = fadd float %i.re, %.val.i105.27
  %.val.i105.28 = load float, ptr %i.ay, align 4, !noundef !7
  %i.rg = fadd float %i.rf, %.val.i105.28
  %.val.i105.29 = load float, ptr %i.az, align 4, !noundef !7
  %i.rh = fadd float %i.rg, %.val.i105.29
  %.val.i105.30 = load float, ptr %i.ba, align 4, !noundef !7
  %i.ri = fadd float %i.rh, %.val.i105.30
  %.val.i105.31 = load float, ptr %i.bb, align 4, !noundef !7
  %i.rj = fadd float %i.ri, %.val.i105.31
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.sroa.12.0192
  store float %i.rj, ptr %i.rk, align 4
  %i.rl = invoke { float, float } @_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx3_quants(i32 noundef 31, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.0.0194, i64 noundef 32, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.h, i64 32, float noundef f0xBF666666, float noundef 5.000000e-02, i64 noundef 36, i1 noundef zeroext false)
          to label %bb.cd unwind label %.loopexit.split-lp.loopexit ; 2 uses

bb.cd:                                            ; preds = %bb.cc
  %i.rm = extractvalue { float, float } %i.rl, 1
  %i.rn = extractvalue { float, float } %i.rl, 0
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.sroa.12.0192
  store float %i.rn, ptr %i.ro, align 4
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.sroa.12.0192
  store float %i.rm, ptr %i.rp, align 4
  %.not.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph

bb.ce:                                            ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @159) #28
          to label %bb.av unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cf:                                            ; preds = %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit
  %i.rq = add nuw nsw i64 %.sroa.8125.0189, 1     ; 2 uses
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.sroa.3.0.copyload, i64 %.sroa.5123.0190
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.sroa.0.0.copyload, i64 %.sroa.5123.0190
  %i.rt = add nuw i64 %.sroa.5123.0190, 1
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.reass
  %i.rv = load float, ptr %i.ru, align 4, !noundef !7
  %i.rw = load float, ptr %i.rr, align 4, !noundef !7 ; 2 uses
  %i.rx = fmul float %i.rw, %i.rw
  %i.ry = fadd float %i.cf, %i.rx
  %i.rz = call float @llvm.sqrt.f32(float %i.ry)
  %i.sa = fmul float %i.rv, %i.rz
  store float %i.sa, ptr %i.rs, align 4
  %exitcond.not = icmp eq i64 %i.rq, %i.pn
  br i1 %exitcond.not, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader, label %_RNvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutfEINtB1q_4IterfEEENtNtNtB8_6traits8iterator8Iterator4nextCsltEA4u8Pgfu_11candle_core.exit, !llvm.loop !1269

bb.cg:                                            ; preds = %.loopexit.split-lp
  %i.sb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KRSfEEEEB2h_.exit: ; preds = %.loopexit.split-lp
  resume { ptr, i32 } %lpad.phi

.rtvec:                                           ; preds = %bb.cb
  %i.sc = getelementptr i8, ptr %.sroa.0.0.copyload1.i, i64 4 ; 2 uses
  %i.sd = getelementptr i8, ptr %.sroa.0.0.copyload1.i, i64 12
  %i.se = load <8 x i8>, ptr %i.c, align 8        ; 2 uses
  %i.sf = load <8 x i8>, ptr %i.e, align 8        ; 2 uses
  %i.sg = shufflevector <8 x i8> %i.sf, <8 x i8> %i.se, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.sh = call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.sg, <8 x i8> splat (i8 63)) ; 2 uses
  store <8 x i8> %i.sh, ptr %i.sc, align 1
  %i.si = shufflevector <8 x i8> %i.sf, <8 x i8> %i.se, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.sj = call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.si, <8 x i8> splat (i8 63)) ; 3 uses
  %i.sk = shufflevector <8 x i8> %i.sj, <8 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.sl = shl <4 x i8> %i.sk, splat (i8 4)
  %i.sm = shufflevector <8 x i8> %i.sj, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.sn = and <4 x i8> %i.sm, splat (i8 15)
  %i.so = or disjoint <4 x i8> %i.sl, %i.sn
  store <4 x i8> %i.so, ptr %i.sd, align 1
  %i.sp = shl nuw <8 x i8> %i.sj, splat (i8 2)
  %i.sq = and <8 x i8> %i.sp, splat (i8 -64)
  %i.sr = or disjoint <8 x i8> %i.sh, %i.sq
  store <8 x i8> %i.sr, ptr %i.sc, align 1
  %i.ss = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.cb
  %i.st = getelementptr i8, ptr %.sroa.0.0.copyload1.i, i64 4 ; 2 uses
  %i.su = load i8, ptr %i.e, align 8, !noundef !7
  %i.sv = call i8 @llvm.umin.i8(i8 %i.su, i8 63)  ; 2 uses
  %i.sw = load i8, ptr %i.c, align 8, !noundef !7
  %i.sx = call i8 @llvm.umin.i8(i8 %i.sw, i8 63)  ; 2 uses
  store i8 %i.sv, ptr %i.st, align 1
  %i.sy = getelementptr i8, ptr %.sroa.0.0.copyload1.i, i64 8
  store i8 %i.sx, ptr %i.sy, align 1
  %.pre258.scalar = load i8, ptr %.phi.trans.insert257, align 1
  %.pre.scalar = load i8, ptr %.phi.trans.insert, align 1
  %i.sz = call i8 @llvm.umin.i8(i8 %.pre.scalar, i8 63) ; 2 uses
  %i.ta = call i8 @llvm.umin.i8(i8 %.pre258.scalar, i8 63) ; 2 uses
  %i.tb = getelementptr i8, ptr %.sroa.0.0.copyload1.i, i64 5
  store i8 %i.sz, ptr %i.tb, align 1
  %i.tc = getelementptr i8, ptr %.sroa.0.0.copyload1.i, i64 9
  store i8 %i.ta, ptr %i.tc, align 1
  %.pre262.scalar = load i8, ptr %.phi.trans.insert261, align 2
  %.pre260.scalar = load i8, ptr %.phi.trans.insert259, align 2
  %i.td = call i8 @llvm.umin.i8(i8 %.pre260.scalar, i8 63) ; 2 uses
end_hunk_10
begin_hunk_11_@_RNvXs_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB4_9BlockQ4_1NtB4_8GgmlType13vec_dot_unopt:bb.a
  %i.lv = tail call noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
  %i.lw = and i128 %i.lv, 18014398509481984
  %.not46 = icmp eq i128 %i.lw, 0
  br i1 %.not46, label %bb.x, label %bb.ag

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit22: ; preds = %bb.w
  %i.lx = and i64 %i.lt, 18014398509481984
  %.not45 = icmp eq i64 %i.lx, 0
  br i1 %.not45, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %.split40, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit22
  %i.ly = and i16 %i.ls, 32767
  %i.lz = icmp eq i16 %i.ly, 0
  br i1 %i.lz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ma = zext i16 %i.ls to i32
  %i.mb = shl nuw i32 %i.ma, 16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit26

bb.z:                                             ; preds = %bb.x
  %i.mc = and i16 %i.ls, -32768
  %i.md = zext i16 %i.mc to i32                   ; 2 uses
  %i.me = and i16 %i.ls, 31744                    ; 3 uses
  %i.mf = and i16 %i.ls, 1023                     ; 3 uses
  %i.mg = zext nneg i16 %i.mf to i32              ; 3 uses
  %i.mh = icmp eq i16 %i.me, 31744
  br i1 %i.mh, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.mi = icmp eq i16 %i.mf, 0
  %i.mj = shl nuw i32 %i.md, 16                   ; 2 uses
  br i1 %i.mi, label %bb.ac, label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %i.mk = shl nuw i32 %i.md, 16                   ; 2 uses
  %i.ml = icmp eq i16 %i.me, 0
  br i1 %i.ml, label %bb.ae, label %bb.af

bb.ac:                                            ; preds = %bb.aa
  %i.mm = or disjoint i32 %i.mj, 2139095040
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit26

bb.ad:                                            ; preds = %bb.aa
  %i.mn = shl nuw nsw i32 %i.mg, 13
  %i.mo = or disjoint i32 %i.mj, %i.mn
  %i.mp = or i32 %i.mo, 2143289344
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit26

bb.ae:                                            ; preds = %bb.ab
  %i.mq = tail call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.mf, i1 false)
  %i.mr = zext nneg i16 %i.mq to i32              ; 2 uses
  %i.ms = add nuw nsw i32 %i.mr, 8
  %i.mt = shl i32 %i.mg, %i.ms
  %i.mu = and i32 %i.mt, 8388607
  %reass.sub.i25 = or disjoint i32 %i.mk, 989855744
  %i.mv = shl nuw nsw i32 %i.mr, 23
  %i.mw = sub nuw nsw i32 %reass.sub.i25, %i.mv
  %i.mx = or disjoint i32 %i.mw, %i.mu
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit26

bb.af:                                            ; preds = %bb.ab
  %i.my = lshr exact i16 %i.me, 10
  %narrow.i23 = add nuw nsw i16 %i.my, 112
  %i.mz = zext nneg i16 %narrow.i23 to i32
  %i.na = shl nuw nsw i32 %i.mz, 23
  %i.nb = shl nuw nsw i32 %i.mg, 13
  %i.nc = or disjoint i32 %i.na, %i.nb
  %i.nd = or disjoint i32 %i.nc, %i.mk
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit26

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit26: ; preds = %bb.y, %bb.ac, %bb.ad, %bb.ae, %bb.af
  %.sroa.0.0.i24 = phi i32 [ %i.mb, %bb.y ], [ %i.mm, %bb.ac ], [ %i.mp, %bb.ad ], [ %i.mx, %bb.ae ], [ %i.nd, %bb.af ]
  %i.ne = bitcast i32 %.sroa.0.0.i24 to float
  br label %bb.ah

bb.ag:                                            ; preds = %.split40, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit22
  %i.nf = tail call fastcc noundef float @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.ls) #30
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit26
  %.sroa.010.0 = phi float [ %i.nf, %bb.ag ], [ %i.ne, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit26 ]
  %i.ng = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.nh = load i16, ptr %i.ng, align 2, !noundef !7 ; 6 uses
  %i.ni = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.nj = icmp eq i64 %i.ni, 0
  br i1 %i.nj, label %.split41, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit28, !prof !14

.split41:                                         ; preds = %bb.ah
  %i.nk = tail call noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
  %i.nl = and i128 %i.nk, 18014398509481984
  %.not48 = icmp eq i128 %i.nl, 0
  br i1 %.not48, label %bb.ai, label %bb.ar

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit28: ; preds = %bb.ah
  %i.nm = and i64 %i.ni, 18014398509481984
  %.not47 = icmp eq i64 %i.nm, 0
  br i1 %.not47, label %bb.ai, label %bb.ar

bb.ai:                                            ; preds = %.split41, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit28
  %i.nn = and i16 %i.nh, 32767
  %i.no = icmp eq i16 %i.nn, 0
  br i1 %i.no, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.np = zext i16 %i.nh to i32
  %i.nq = shl nuw i32 %i.np, 16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit32

bb.ak:                                            ; preds = %bb.ai
  %i.nr = and i16 %i.nh, -32768
  %i.ns = zext i16 %i.nr to i32                   ; 2 uses
  %i.nt = and i16 %i.nh, 31744                    ; 3 uses
  %i.nu = and i16 %i.nh, 1023                     ; 3 uses
  %i.nv = zext nneg i16 %i.nu to i32              ; 3 uses
  %i.nw = icmp eq i16 %i.nt, 31744
  br i1 %i.nw, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.nx = icmp eq i16 %i.nu, 0
  %i.ny = shl nuw i32 %i.ns, 16                   ; 2 uses
  br i1 %i.nx, label %bb.an, label %bb.ao

bb.am:                                            ; preds = %bb.ak
  %i.nz = shl nuw i32 %i.ns, 16                   ; 2 uses
  %i.oa = icmp eq i16 %i.nt, 0
  br i1 %i.oa, label %bb.ap, label %bb.aq

bb.an:                                            ; preds = %bb.al
  %i.ob = or disjoint i32 %i.ny, 2139095040
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit32

bb.ao:                                            ; preds = %bb.al
  %i.oc = shl nuw nsw i32 %i.nv, 13
  %i.od = or disjoint i32 %i.ny, %i.oc
  %i.oe = or i32 %i.od, 2143289344
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit32

bb.ap:                                            ; preds = %bb.am
  %i.of = tail call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.nu, i1 false)
  %i.og = zext nneg i16 %i.of to i32              ; 2 uses
  %i.oh = add nuw nsw i32 %i.og, 8
  %i.oi = shl i32 %i.nv, %i.oh
  %i.oj = and i32 %i.oi, 8388607
  %reass.sub.i31 = or disjoint i32 %i.nz, 989855744
  %i.ok = shl nuw nsw i32 %i.og, 23
  %i.ol = sub nuw nsw i32 %reass.sub.i31, %i.ok
  %i.om = or disjoint i32 %i.ol, %i.oj
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit32

bb.aq:                                            ; preds = %bb.am
  %i.on = lshr exact i16 %i.nt, 10
  %narrow.i29 = add nuw nsw i16 %i.on, 112
  %i.oo = zext nneg i16 %narrow.i29 to i32
  %i.op = shl nuw nsw i32 %i.oo, 23
  %i.oq = shl nuw nsw i32 %i.nv, 13
  %i.or = or disjoint i32 %i.op, %i.oq
  %i.os = or disjoint i32 %i.or, %i.nz
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit32

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit32: ; preds = %bb.aj, %bb.an, %bb.ao, %bb.ap, %bb.aq
  %.sroa.0.0.i30 = phi i32 [ %i.nq, %bb.aj ], [ %i.ob, %bb.an ], [ %i.oe, %bb.ao ], [ %i.om, %bb.ap ], [ %i.os, %bb.aq ]
  %i.ot = bitcast i32 %.sroa.0.0.i30 to float
  br label %bb.as

bb.ar:                                            ; preds = %.split41, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit28
  %i.ou = tail call fastcc noundef float @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.nh) #30
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit32
  %.sroa.011.0 = phi float [ %i.ou, %bb.ar ], [ %i.ot, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit32 ]
  %i.ov = fmul float %.sroa.010.0, %.sroa.011.0
  %i.ow = fadd float %i.lq, %i.ov
  %i.ox = fadd float %.sroa.0.055, %i.ow          ; 2 uses
  %exitcond.not = icmp eq i64 %i.il, %.sroa.7.0.copyload
  br i1 %exitcond.not, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ4_1EIBX_NtB1o_9BlockQ8_1EEINtB5_7ZipImplBW_B2n_E4nextB1s_.exit.thread, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ4_1EIBX_NtB1o_9BlockQ8_1EEINtB5_7ZipImplBW_B2n_E4nextB1s_.exit
}

; Function Attrs: nonlazybind uwtable
define noundef float @_RNvXs_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB4_9BlockQ4_1NtB4_8GgmlType7vec_dot(i64 noundef %0, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 461168601842738791) %2, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %3, i64 noundef range(i64 0, 256204778801521551) %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef float @_RNvXs_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB4_9BlockQ4_1NtB4_8GgmlType13vec_dot_unopt(i64 poison, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %3, i64 noundef %4)
  ret float %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB4_9BlockQ4_1NtB4_8GgmlType8to_float(ptr noalias nofree noundef nonnull readonly align 2 captures(none) %0, i64 noundef range(i64 0, 461168601842738791) %1, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %3, 5                           ; 2 uses
  %.not34 = icmp eq i64 %i.a, 0
  br i1 %.not34, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %bb.ab
  %exitcond44.not = icmp eq i64 %i.b, %i.a
  br i1 %exitcond44.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.sroa.07.033 = phi i64 [ %i.b, %.loopexit ], [ 0, %bb.a ] ; 6 uses
  %4 = mul nsw i64 %.sroa.07.033, -32             ; 2 uses
  %5 = add i64 %4, -16
  %6 = shl nuw nsw i64 %.sroa.07.033, 5
  %7 = or disjoint i64 %6, 16
  %i.b = add nuw nsw i64 %.sroa.07.033, 1         ; 2 uses
  %exitcond43.not = icmp eq i64 %.sroa.07.033, %1
  br i1 %exitcond43.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %.sroa.07.033 ; 3 uses
  %i.d = load i16, ptr %i.c, align 2, !noundef !7 ; 6 uses
  %i.e = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.split, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit, !prof !14

.split:                                           ; preds = %bb.b
  %i.g = tail call noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
  %i.h = and i128 %i.g, 18014398509481984
  %.not23 = icmp eq i128 %i.h, 0
  br i1 %.not23, label %bb.d, label %bb.m

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit: ; preds = %bb.b
  %i.i = and i64 %i.e, 18014398509481984
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.m

bb.c:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @172) #32
  unreachable

bb.d:                                             ; preds = %.split, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.j = and i16 %i.d, 32767
  %i.k = icmp eq i16 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = zext i16 %i.d to i32
  %i.m = shl nuw i32 %i.l, 16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.f:                                             ; preds = %bb.d
  %i.n = and i16 %i.d, -32768
  %i.o = zext i16 %i.n to i32                     ; 2 uses
  %i.p = and i16 %i.d, 31744                      ; 3 uses
  %i.q = and i16 %i.d, 1023                       ; 3 uses
  %i.r = zext nneg i16 %i.q to i32                ; 3 uses
  %i.s = icmp eq i16 %i.p, 31744
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = icmp eq i16 %i.q, 0
  %i.u = shl nuw i32 %i.o, 16                     ; 2 uses
  br i1 %i.t, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.v = shl nuw i32 %i.o, 16                     ; 2 uses
  %i.w = icmp eq i16 %i.p, 0
  br i1 %i.w, label %bb.k, label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.x = or disjoint i32 %i.u, 2139095040
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.j:                                             ; preds = %bb.g
  %i.y = shl nuw nsw i32 %i.r, 13
  %i.z = or disjoint i32 %i.u, %i.y
  %i.aa = or i32 %i.z, 2143289344
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.k:                                             ; preds = %bb.h
  %i.ab = tail call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.q, i1 false)
  %i.ac = zext nneg i16 %i.ab to i32              ; 2 uses
  %i.ad = add nuw nsw i32 %i.ac, 8
  %i.ae = shl i32 %i.r, %i.ad
  %i.af = and i32 %i.ae, 8388607
  %reass.sub.i = or disjoint i32 %i.v, 989855744
  %i.ag = shl nuw nsw i32 %i.ac, 23
  %i.ah = sub nuw nsw i32 %reass.sub.i, %i.ag
  %i.ai = or disjoint i32 %i.ah, %i.af
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.l:                                             ; preds = %bb.h
  %i.aj = lshr exact i16 %i.p, 10
  %narrow.i = add nuw nsw i16 %i.aj, 112
  %i.ak = zext nneg i16 %narrow.i to i32
  %i.al = shl nuw nsw i32 %i.ak, 23
  %i.am = shl nuw nsw i32 %i.r, 13
  %i.an = or disjoint i32 %i.al, %i.am
  %i.ao = or disjoint i32 %i.an, %i.v
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit: ; preds = %bb.e, %bb.i, %bb.j, %bb.k, %bb.l
  %.sroa.0.0.i = phi i32 [ %i.m, %bb.e ], [ %i.x, %bb.i ], [ %i.aa, %bb.j ], [ %i.ai, %bb.k ], [ %i.ao, %bb.l ]
  %i.ap = bitcast i32 %.sroa.0.0.i to float
  br label %bb.n

bb.m:                                             ; preds = %.split, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.aq = tail call fastcc noundef float @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.d) #30
  br label %bb.n

bb.n:                                             ; preds = %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit, %bb.m
  %.sroa.01.0 = phi float [ %i.aq, %bb.m ], [ %i.ap, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.as = load i16, ptr %i.ar, align 2, !noundef !7 ; 6 uses
  %i.at = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %.split22, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit17, !prof !14

.split22:                                         ; preds = %bb.n
  %i.av = tail call noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
  %i.aw = and i128 %i.av, 18014398509481984
  %.not25 = icmp eq i128 %i.aw, 0
  br i1 %.not25, label %bb.o, label %bb.x

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit17: ; preds = %bb.n
  %i.ax = and i64 %i.at, 18014398509481984
  %.not24 = icmp eq i64 %i.ax, 0
  br i1 %.not24, label %bb.o, label %bb.x

bb.o:                                             ; preds = %.split22, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit17
  %i.ay = and i16 %i.as, 32767
  %i.az = icmp eq i16 %i.ay, 0
  br i1 %i.az, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ba = zext i16 %i.as to i32
  %i.bb = shl nuw i32 %i.ba, 16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit21

bb.q:                                             ; preds = %bb.o
  %i.bc = and i16 %i.as, -32768
  %i.bd = zext i16 %i.bc to i32                   ; 2 uses
  %i.be = and i16 %i.as, 31744                    ; 3 uses
  %i.bf = and i16 %i.as, 1023                     ; 3 uses
  %i.bg = zext nneg i16 %i.bf to i32              ; 3 uses
  %i.bh = icmp eq i16 %i.be, 31744
  br i1 %i.bh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bi = icmp eq i16 %i.bf, 0
  %i.bj = shl nuw i32 %i.bd, 16                   ; 2 uses
  br i1 %i.bi, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.bk = shl nuw i32 %i.bd, 16                   ; 2 uses
  %i.bl = icmp eq i16 %i.be, 0
  br i1 %i.bl, label %bb.v, label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.bm = or disjoint i32 %i.bj, 2139095040
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit21

bb.u:                                             ; preds = %bb.r
  %i.bn = shl nuw nsw i32 %i.bg, 13
  %i.bo = or disjoint i32 %i.bj, %i.bn
  %i.bp = or i32 %i.bo, 2143289344
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit21

bb.v:                                             ; preds = %bb.s
  %i.bq = tail call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.bf, i1 false)
  %i.br = zext nneg i16 %i.bq to i32              ; 2 uses
  %i.bs = add nuw nsw i32 %i.br, 8
  %i.bt = shl i32 %i.bg, %i.bs
  %i.bu = and i32 %i.bt, 8388607
  %reass.sub.i20 = or disjoint i32 %i.bk, 989855744
  %i.bv = shl nuw nsw i32 %i.br, 23
  %i.bw = sub nuw nsw i32 %reass.sub.i20, %i.bv
  %i.bx = or disjoint i32 %i.bw, %i.bu
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit21

bb.w:                                             ; preds = %bb.s
  %i.by = lshr exact i16 %i.be, 10
  %narrow.i18 = add nuw nsw i16 %i.by, 112
  %i.bz = zext nneg i16 %narrow.i18 to i32
  %i.ca = shl nuw nsw i32 %i.bz, 23
  %i.cb = shl nuw nsw i32 %i.bg, 13
  %i.cc = or disjoint i32 %i.ca, %i.cb
  %i.cd = or disjoint i32 %i.cc, %i.bk
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit21

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit21: ; preds = %bb.p, %bb.t, %bb.u, %bb.v, %bb.w
  %.sroa.0.0.i19 = phi i32 [ %i.bb, %bb.p ], [ %i.bm, %bb.t ], [ %i.bp, %bb.u ], [ %i.bx, %bb.v ], [ %i.cd, %bb.w ]
  %i.ce = bitcast i32 %.sroa.0.0.i19 to float
  br label %bb.y

bb.x:                                             ; preds = %.split22, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit17
  %i.cf = tail call fastcc noundef float @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.as) #30
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit21
  %.sroa.03.0 = phi float [ %i.cf, %bb.x ], [ %i.ce, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit21 ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.ch = shl nuw nsw i64 %.sroa.07.033, 5        ; 3 uses
  %i.ci = tail call i64 @llvm.umax.i64(i64 %3, i64 %7)
  %i.cj = add i64 %i.ci, %5
  %i.ck = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.ch)
  %i.cl = add i64 %i.ck, %4
  %i.cm = tail call i64 @llvm.umin.i64(i64 %i.cj, i64 %i.cl) ; 2 uses
  %min.iters.check = icmp ult i64 %i.cm, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.y
  %i.cn = tail call i64 @llvm.umin.i64(i64 %i.cm, i64 15)
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %i.cp = and i64 %i.co, 3                        ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 0
  %i.cr = select i1 %i.cq, i64 4, i64 %i.cp
  %n.vec = sub nsw i64 %i.co, %i.cr               ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.03.0, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert64 = insertelement <4 x float> poison, float %.sroa.01.0, i64 0
  %broadcast.splat65 = shufflevector <4 x float> %broadcast.splatinsert64, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cg, i64 %index
  %wide.load = load <4 x i8>, ptr %i.cs, align 2  ; 2 uses
  %i.ct = add nuw nsw i64 %index, %i.ch           ; 2 uses
  %i.cu = and <4 x i8> %wide.load, splat (i8 15)
  %i.cv = uitofp nneg <4 x i8> %i.cu to <4 x float>
  %i.cw = fmul <4 x float> %broadcast.splat65, %i.cv
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ct
  %i.cy = fadd <4 x float> %broadcast.splat, %i.cw
  store <4 x float> %i.cy, ptr %i.cx, align 4
  %i.cz = lshr <4 x i8> %wide.load, splat (i8 4)
  %i.da = uitofp nneg <4 x i8> %i.cz to <4 x float>
  %i.db = fmul <4 x float> %broadcast.splat65, %i.da
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ct
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.de = fadd <4 x float> %broadcast.splat, %i.db
  store <4 x float> %i.de, ptr %i.dd, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %scalar.ph.preheader, label %vector.body, !llvm.loop !1359

scalar.ph.preheader:                              ; preds = %vector.body, %bb.y
  %.sroa.09.032.ph = phi i64 [ 0, %bb.y ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.ab
  %.sroa.09.032 = phi i64 [ %i.dg, %bb.ab ], [ %.sroa.09.032.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dg = add nuw nsw i64 %.sroa.09.032, 1        ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.sroa.09.032
  %i.di = load i8, ptr %i.dh, align 1, !noundef !7 ; 2 uses
  %i.dj = add nuw nsw i64 %.sroa.09.032, %i.ch    ; 4 uses
  %i.dk = icmp samesign ult i64 %i.dj, %3
  br i1 %i.dk, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %scalar.ph
  %i.dl = and i8 %i.di, 15
  %i.dm = uitofp nneg i8 %i.dl to float
  %i.dn = fmul float %.sroa.01.0, %i.dm
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dj
  %i.dp = fadd float %.sroa.03.0, %i.dn
  store float %i.dp, ptr %i.do, align 4
  %i.dq = or disjoint i64 %i.dj, 16               ; 3 uses
  %i.dr = icmp samesign ult i64 %i.dq, %3
  br i1 %i.dr, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %scalar.ph
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.dj, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @173) #32
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.ds = lshr i8 %i.di, 4
  %i.dt = uitofp nneg i8 %i.ds to float
  %i.du = fmul float %.sroa.01.0, %i.dt
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dq
  %i.dw = fadd float %.sroa.03.0, %i.du
  store float %i.dw, ptr %i.dv, align 4
  %exitcond.not = icmp eq i64 %i.dg, 16
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !1360

bb.ac:                                            ; preds = %bb.z
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.dq, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @174) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsa_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsfNtB5_8GgmlType10from_float(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implfECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 4 %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @175)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsa_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsfNtB5_8GgmlType11direct_copy(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implfECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @175)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsa_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsfNtB5_8GgmlType8to_float(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implfECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 4 %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @176)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsf3Ta7LF998c_4core3fmtSNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueNtB5_5Debug3fmtBB_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueINtNtNtBa_5slice4iter4IterB14_EEB1a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsf3Ta7LF998c_4core3fmtShNtB5_5Debug3fmtCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsr_NtCsf3Ta7LF998c_4core3fmtSjNtB5_5Debug3fmtCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1
  %i.c = call noundef nonnull align 8 ptr @_RINvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB6_9DebugList7entriesRjINtNtNtBa_5slice4iter4IterjEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsv_NtCsf3Ta7LF998c_4core5arrayNtB5_17TryFromSliceErrorNtNtB7_3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @202, i64 noundef 17, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @86)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef ptr @_RNvYNCNKNvNvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmul11LHS_SCRATCH00INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1r_6option6OptionQIB26_INtNtB1r_4cell7RefCellINtNtCsgCecv3eZDcN_5alloc3vec3VecyEEEEEE9call_onceBe_(ptr noalias nofree readnone align 8 captures(none) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmul11LHS_SCRATCH0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load i8, ptr %i.b, align 8, !range !1361, !noundef !7
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %_RNCNKNvNvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmul11LHS_SCRATCH00Bb_.exit, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eagerINtB2_7StorageINtNtCsf3Ta7LF998c_4core4cell7RefCellINtNtCsgCecv3eZDcN_5alloc3vec3VecyEEE16get_or_init_slowCsltEA4u8Pgfu_11candle_core(ptr noundef nonnull align 8 %i.a)
  br label %_RNCNKNvNvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmul11LHS_SCRATCH00Bb_.exit

_RNCNKNvNvNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants6matmul11LHS_SCRATCH00Bb_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvYNtNtNtCskNPKTEkpOem_12aho_corasick3nfa10contiguous3NFANtNtB8_9automaton9Automaton20try_find_overlappingCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(384) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef align 8 dereferenceable(64) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef ptr @_RINvNtCskNPKTEkpOem_12aho_corasick9automaton24try_find_overlapping_fwdRNtNtNtB4_3nfa10contiguous3NFAEB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %2) #31
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtNtCskNPKTEkpOem_12aho_corasick3nfa10contiguous3NFANtNtB8_9automaton9Automaton8try_findCsltEA4u8Pgfu_11candle_core(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(384) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  call void @_RINvNtCskNPKTEkpOem_12aho_corasick9automaton12try_find_fwdRNtNtNtB4_3nfa10contiguous3NFAEB4_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2) #31
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { float, float } @_RNvYNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ2KNtB4_8GgmlType9vec_dot_2B8_(i64 noundef %0, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 109802048057794951) %2, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %3, i64 noundef range(i64 0, 109802048057794951) %4, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %5, i64 noundef range(i64 0, 31586890537173890) %6) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef float @_RNvXs4_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ2KNtB5_8GgmlType13vec_dot_unopt(i64 poison, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 109802048057794951) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %5, i64 noundef range(i64 0, 31586890537173890) %6)
  %i.b = tail call noundef float @_RNvXs4_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ2KNtB5_8GgmlType13vec_dot_unopt(i64 poison, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %3, i64 noundef range(i64 0, 109802048057794951) %4, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %5, i64 noundef range(i64 0, 31586890537173890) %6)
  %i.c = insertvalue { float, float } poison, float %i.a, 0
  %i.d = insertvalue { float, float } %i.c, float %i.b, 1
  ret { float, float } %i.d
}

; Function Attrs: nonlazybind uwtable
end_hunk_11
