Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_core-29a639a172b36b04.candle_core.fa2bc8e788f5f12a-cgu.14?download=true
inline.NumInlined: 1160
inline.NumDeleted: 448
loop-unroll.NumCompletelyUnrolled: 106
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 127
begin_hunk_0_@_RNvXs8_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ6KNtB5_8GgmlType18from_float_imatrix:bb.a
  %i.fe = and <16 x i8> %wide.load138.1, splat (i8 15)
  %wide.load139.1 = load <16 x i8>, ptr %i.o, align 16 ; 2 uses
  %wide.load140.1 = load <16 x i8>, ptr %i.p, align 16 ; 2 uses
  %i.ff = shl <16 x i8> %wide.load139.1, splat (i8 4)
  %i.fg = or disjoint <16 x i8> %i.ff, %i.fd
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0.077119, i64 16
  store <16 x i8> %i.fg, ptr %i.fh, align 2
  %i.fi = shl <16 x i8> %wide.load140.1, splat (i8 4)
  %i.fj = or disjoint <16 x i8> %i.fi, %i.fe
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0.077119, i64 48
  store <16 x i8> %i.fj, ptr %i.fk, align 2
  %i.fl = ashr <16 x i8> %wide.load137.1, splat (i8 4)
  %i.fm = ashr <16 x i8> %wide.load138.1, splat (i8 2)
  %i.fn = and <16 x i8> %i.fm, splat (i8 -4)
  %i.fo = or <16 x i8> %i.fn, %i.fl
  %i.fp = and <16 x i8> %wide.load139.1, splat (i8 -16)
  %i.fq = or <16 x i8> %i.fo, %i.fp
  %i.fr = shl <16 x i8> %wide.load140.1, splat (i8 2)
  %i.fs = and <16 x i8> %i.fr, splat (i8 -64)
  %i.ft = or <16 x i8> %i.fq, %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0.077119, i64 144
  store <16 x i8> %i.ft, ptr %i.fu, align 2
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0.077119, i64 160
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0.077119, i64 64
  %wide.load = load <16 x i8>, ptr %i.i, align 16 ; 2 uses
  %i.fx = and <16 x i8> %wide.load, splat (i8 15)
  %wide.load131 = load <16 x i8>, ptr %i.q, align 16 ; 2 uses
  %i.fy = and <16 x i8> %wide.load131, splat (i8 15)
  %wide.load132 = load <16 x i8>, ptr %i.r, align 16 ; 2 uses
  %wide.load133 = load <16 x i8>, ptr %i.s, align 16 ; 2 uses
  %i.fz = shl <16 x i8> %wide.load132, splat (i8 4)
  %i.ga = or disjoint <16 x i8> %i.fz, %i.fx
  store <16 x i8> %i.ga, ptr %i.fw, align 2
  %i.gb = shl <16 x i8> %wide.load133, splat (i8 4)
  %i.gc = or disjoint <16 x i8> %i.gb, %i.fy
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0.077119, i64 96
  store <16 x i8> %i.gc, ptr %i.gd, align 2
  %i.ge = ashr <16 x i8> %wide.load, splat (i8 4)
  %i.gf = ashr <16 x i8> %wide.load131, splat (i8 2)
  %i.gg = and <16 x i8> %i.gf, splat (i8 -4)
  %i.gh = or <16 x i8> %i.gg, %i.ge
  %i.gi = and <16 x i8> %wide.load132, splat (i8 -16)
  %i.gj = or <16 x i8> %i.gh, %i.gi
  %i.gk = shl <16 x i8> %wide.load133, splat (i8 2)
  %i.gl = and <16 x i8> %i.gk, splat (i8 -64)
  %i.gm = or <16 x i8> %i.gj, %i.gl
  store <16 x i8> %i.gm, ptr %i.fv, align 2
  %wide.load.1 = load <16 x i8>, ptr %i.t, align 16 ; 2 uses
  %i.gn = and <16 x i8> %wide.load.1, splat (i8 15)
  %wide.load131.1 = load <16 x i8>, ptr %i.u, align 16 ; 2 uses
  %i.go = and <16 x i8> %wide.load131.1, splat (i8 15)
  %wide.load132.1 = load <16 x i8>, ptr %i.v, align 16 ; 2 uses
  %wide.load133.1 = load <16 x i8>, ptr %i.w, align 16 ; 2 uses
  %i.gp = shl <16 x i8> %wide.load132.1, splat (i8 4)
  %i.gq = or disjoint <16 x i8> %i.gp, %i.gn
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0.077119, i64 80
  store <16 x i8> %i.gq, ptr %i.gr, align 2
  %i.gs = shl <16 x i8> %wide.load133.1, splat (i8 4)
  %i.gt = or disjoint <16 x i8> %i.gs, %i.go
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0.077119, i64 112
  store <16 x i8> %i.gt, ptr %i.gu, align 2
  %i.gv = ashr <16 x i8> %wide.load.1, splat (i8 4)
  %i.gw = ashr <16 x i8> %wide.load131.1, splat (i8 2)
  %i.gx = and <16 x i8> %i.gw, splat (i8 -4)
  %i.gy = or <16 x i8> %i.gx, %i.gv
  %i.gz = and <16 x i8> %wide.load132.1, splat (i8 -16)
  %i.ha = or <16 x i8> %i.gy, %i.gz
  %i.hb = shl <16 x i8> %wide.load133.1, splat (i8 2)
  %i.hc = and <16 x i8> %i.hb, splat (i8 -64)
  %i.hd = or <16 x i8> %i.ha, %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.0.077119, i64 176
  store <16 x i8> %i.hd, ptr %i.he, align 2
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.0.0120, i64 1024
  %i.hg = icmp eq ptr %i.ai, %i.d
  br i1 %i.hg, label %._crit_edge, label %.split108

bb.p:                                             ; preds = %.split97, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit60
  %i.hh = and i16 %i.eg, 32767
  %i.hi = icmp eq i16 %i.hh, 0
  br i1 %i.hi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.hj = zext i16 %i.eg to i32
  %i.hk = shl nuw i32 %i.hj, 16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.r:                                             ; preds = %bb.p
  %i.hl = and i16 %i.eg, -32768
  %i.hm = zext i16 %i.hl to i32                   ; 2 uses
  %i.hn = and i16 %i.eg, 31744                    ; 3 uses
  %i.ho = and i16 %i.eg, 1023                     ; 3 uses
  %i.hp = zext nneg i16 %i.ho to i32              ; 3 uses
  %i.hq = icmp eq i16 %i.hn, 31744
  br i1 %i.hq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.hr = icmp eq i16 %i.ho, 0
  %i.hs = shl nuw i32 %i.hm, 16                   ; 2 uses
  br i1 %i.hr, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ht = shl nuw i32 %i.hm, 16                   ; 2 uses
  %i.hu = icmp eq i16 %i.hn, 0
  br i1 %i.hu, label %bb.w, label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.hv = or disjoint i32 %i.hs, 2139095040
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.v:                                             ; preds = %bb.s
  %i.hw = shl nuw nsw i32 %i.hp, 13
  %i.hx = or disjoint i32 %i.hs, %i.hw
  %i.hy = or i32 %i.hx, 2143289344
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.w:                                             ; preds = %bb.t
  %i.hz = call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.ho, i1 false)
  %i.ia = zext nneg i16 %i.hz to i32              ; 2 uses
  %i.ib = add nuw nsw i32 %i.ia, 8
  %i.ic = shl i32 %i.hp, %i.ib
  %i.id = and i32 %i.ic, 8388607
  %reass.sub.i = or disjoint i32 %i.ht, 989855744
  %i.ie = shl nuw nsw i32 %i.ia, 23
  %i.if = sub nuw nsw i32 %reass.sub.i, %i.ie
  %i.ig = or disjoint i32 %i.if, %i.id
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.x:                                             ; preds = %bb.t
  %i.ih = lshr exact i16 %i.hn, 10
  %narrow.i = add nuw nsw i16 %i.ih, 112
  %i.ii = zext nneg i16 %narrow.i to i32
  %i.ij = shl nuw nsw i32 %i.ii, 23
  %i.ik = shl nuw nsw i32 %i.hp, 13
  %i.il = or disjoint i32 %i.ij, %i.ik
  %i.im = or disjoint i32 %i.il, %i.ht
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit: ; preds = %bb.q, %bb.u, %bb.v, %bb.w, %bb.x
  %.sroa.0.0.i61 = phi i32 [ %i.hk, %bb.q ], [ %i.hv, %bb.u ], [ %i.hy, %bb.v ], [ %i.ig, %bb.w ], [ %i.im, %bb.x ]
  %i.in = bitcast i32 %.sroa.0.0.i61 to float
  br label %bb.z

bb.y:                                             ; preds = %.split97, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit60
  %i.io = call fastcc noundef float @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.eg) #30
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit
  %.sroa.026.0 = phi float [ %i.io, %bb.y ], [ %i.in, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit ]
  %i.ip = sitofp i8 %i.ef to float
  %i.iq = fmul float %.sroa.026.0, %i.ip          ; 2 uses
  %i.ir = fcmp oeq float %i.iq, 0.000000e+00
  br i1 %i.ir, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.backedge, label %.preheader

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.backedge: ; preds = %.preheader, %bb.z
  %i.is = icmp eq i64 %.sroa.072.0.add, 208
  br i1 %i.is, label %vector.body135, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader

.preheader:                                       ; preds = %bb.z
  %i.it = shl nuw nsw i64 %.sroa.774.0111, 4      ; 2 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0120, i64 %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.it
  %i.iw = load <16 x float>, ptr %i.iu, align 4
  %i.ix = insertelement <16 x float> poison, float %i.iq, i64 0
  %i.iy = shufflevector <16 x float> %i.ix, <16 x float> poison, <16 x i32> zeroinitializer
  %i.iz = fdiv <16 x float> %i.iw, %i.iy
  %i.ja = call <16 x float> @llvm.round.v16f32(<16 x float> %i.iz)
  %i.jb = call <16 x i32> @llvm.fptosi.sat.v16i32.v16f32(<16 x float> %i.ja)
  %i.jc = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.jb, <16 x i32> splat (i32 -32))
  %i.jd = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.jc, <16 x i32> splat (i32 31))
  %i.je = trunc nsw <16 x i32> %i.jd to <16 x i8>
  %i.jf = add nsw <16 x i8> %i.je, splat (i8 32)
  store <16 x i8> %i.jf, ptr %i.iv, align 16
  br label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.backedge

bb.aa:                                            ; preds = %.lr.ph
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @163) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef float @_RNvXs8_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ6KNtB5_8GgmlType7vec_dot(i64 noundef %0, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 43920819223117981) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef range(i64 0, 31586890537173890) %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef float @_RNvXs8_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ6KNtB5_8GgmlType13vec_dot_unopt(i64 poison, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef %4)
  ret float %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs8_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ6KNtB5_8GgmlType8to_float(ptr noalias nofree noundef nonnull readonly align 2 captures(address) %0, i64 noundef range(i64 0, 43920819223117981) %1, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.idx = mul nuw nsw i64 %1, 210
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = add nuw nsw i64 %3, 256
  %i.d = lshr i64 %i.c, 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit.1
  %indvars.iv = phi i64 [ %3, %.lr.ph.preheader ], [ %indvars.iv.next, %.loopexit.1 ] ; 6 uses
  %.sroa.0.0174 = phi ptr [ %0, %.lr.ph.preheader ], [ %i.e, %.loopexit.1 ] ; 11 uses
  %.sroa.7.0173 = phi i64 [ 0, %.lr.ph.preheader ], [ %i.f, %.loopexit.1 ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0174, i64 210 ; 2 uses
  %i.f = add nuw nsw i64 %.sroa.7.0173, 1
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0174, i64 208
  %i.h = load i16, ptr %i.g, align 2, !noundef !7 ; 6 uses
  %i.i = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %.split, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit, !prof !14

.split:                                           ; preds = %.lr.ph
  %i.k = tail call noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
  %i.l = and i128 %i.k, 18014398509481984
  %.not53 = icmp eq i128 %i.l, 0
  br i1 %.not53, label %bb.b, label %bb.k

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit: ; preds = %.lr.ph
  %i.m = and i64 %i.i, 18014398509481984
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.b, label %bb.k

._crit_edge:                                      ; preds = %.loopexit.1, %bb.a
  ret void

bb.b:                                             ; preds = %.split, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.n = and i16 %i.h, 32767
  %i.o = icmp eq i16 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = zext i16 %i.h to i32
  %i.q = shl nuw i32 %i.p, 16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.d:                                             ; preds = %bb.b
  %i.r = and i16 %i.h, -32768
  %i.s = zext i16 %i.r to i32                     ; 2 uses
  %i.t = and i16 %i.h, 31744                      ; 3 uses
  %i.u = and i16 %i.h, 1023                       ; 3 uses
  %i.v = zext nneg i16 %i.u to i32                ; 3 uses
  %i.w = icmp eq i16 %i.t, 31744
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = icmp eq i16 %i.u, 0
  %i.y = shl nuw i32 %i.s, 16                     ; 2 uses
  br i1 %i.x, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.z = shl nuw i32 %i.s, 16                     ; 2 uses
  %i.aa = icmp eq i16 %i.t, 0
  br i1 %i.aa, label %bb.i, label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.ab = or disjoint i32 %i.y, 2139095040
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.h:                                             ; preds = %bb.e
  %i.ac = shl nuw nsw i32 %i.v, 13
  %i.ad = or disjoint i32 %i.y, %i.ac
  %i.ae = or i32 %i.ad, 2143289344
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.i:                                             ; preds = %bb.f
  %i.af = tail call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.u, i1 false)
  %i.ag = zext nneg i16 %i.af to i32              ; 2 uses
  %i.ah = add nuw nsw i32 %i.ag, 8
  %i.ai = shl i32 %i.v, %i.ah
  %i.aj = and i32 %i.ai, 8388607
  %reass.sub.i = or disjoint i32 %i.z, 989855744
  %i.ak = shl nuw nsw i32 %i.ag, 23
  %i.al = sub nuw nsw i32 %reass.sub.i, %i.ak
  %i.am = or disjoint i32 %i.al, %i.aj
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.j:                                             ; preds = %bb.f
  %i.an = lshr exact i16 %i.t, 10
  %narrow.i = add nuw nsw i16 %i.an, 112
  %i.ao = zext nneg i16 %narrow.i to i32
  %i.ap = shl nuw nsw i32 %i.ao, 23
  %i.aq = shl nuw nsw i32 %i.v, 13
  %i.ar = or disjoint i32 %i.ap, %i.aq
  %i.as = or disjoint i32 %i.ar, %i.z
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit: ; preds = %bb.c, %bb.g, %bb.h, %bb.i, %bb.j
  %.sroa.0.0.i46 = phi i32 [ %i.q, %bb.c ], [ %i.ab, %bb.g ], [ %i.ae, %bb.h ], [ %i.am, %bb.i ], [ %i.as, %bb.j ]
  %i.at = bitcast i32 %.sroa.0.0.i46 to float
  br label %bb.l

bb.k:                                             ; preds = %.split, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.au = tail call fastcc noundef float @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.h) #30
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit
  %.sroa.04.0 = phi float [ %i.au, %bb.k ], [ %i.at, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit ] ; 10 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0174, i64 128 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0174, i64 192 ; 5 uses
  %i.ax = shl nuw nsw i64 %.sroa.7.0173, 8        ; 7 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %indvars.iv, i64 0) ; 3 uses
  %i.ay = tail call i64 @llvm.smax.i64(i64 %indvars.iv, i64 32)
  %4 = add nsw i64 %i.ay, -32                     ; 2 uses
  %i.az = tail call i64 @llvm.smax.i64(i64 %indvars.iv, i64 64)
  %5 = add nsw i64 %i.az, -64                     ; 2 uses
  %i.ba = tail call i64 @llvm.smax.i64(i64 %indvars.iv, i64 96)
  %6 = add nsw i64 %i.ba, -96                     ; 2 uses
  %exitcond354 = icmp eq i64 %.sroa.7.0173, %i.d
  br i1 %exitcond354, label %bb.s, label %bb.r, !prof !14

.loopexit:                                        ; preds = %bb.w
  %indvars.iv.next305 = add nsw i64 %indvars.iv, -128 ; 4 uses
  %smax.1 = tail call i64 @llvm.smax.i64(i64 %indvars.iv.next305, i64 0) ; 3 uses
  %i.bb = tail call i64 @llvm.smax.i64(i64 %indvars.iv.next305, i64 32)
  %7 = add nsw i64 %i.bb, -32                     ; 2 uses
  %i.bc = tail call i64 @llvm.smax.i64(i64 %indvars.iv.next305, i64 64)
  %8 = add nsw i64 %i.bc, -64                     ; 2 uses
  %i.bd = tail call i64 @llvm.smax.i64(i64 %indvars.iv.next305, i64 96)
  %9 = add nsw i64 %i.bd, -96                     ; 2 uses
  %i.be = or disjoint i64 %i.ax, 128              ; 7 uses
  %i.bf = icmp samesign ugt i64 %i.be, %3
  br i1 %i.bf, label %bb.s, label %bb.m, !prof !14

bb.m:                                             ; preds = %.loopexit
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.be ; 8 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0174, i64 200 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0174, i64 64 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0174, i64 160 ; 2 uses
  %10 = tail call i64 @llvm.umin.i64(i64 %smax.1, i64 %7)
  %i.bk = tail call i64 @llvm.umin.i64(i64 %10, i64 %8)
  %i.bl = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 %9) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bl, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %i.bm = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 31)
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %i.bo = and i64 %i.bn, 3                        ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  %i.bq = select i1 %i.bp, i64 4, i64 %i.bo
  %n.vec = sub nsw i64 %i.bn, %i.bq               ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.04.0, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 8 uses
  %i.br = lshr i64 %index, 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 %index
  %wide.load = load <4 x i8>, ptr %i.bs, align 1  ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 %index
  %wide.load472 = load <4 x i8>, ptr %i.bt, align 1 ; 4 uses
  %i.bu = or disjoint i64 %index, 32              ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bu
  %wide.load473 = load <4 x i8>, ptr %i.bv, align 1 ; 2 uses
  %i.bw = and <4 x i8> %wide.load473, splat (i8 15)
  %i.bx = shl <4 x i8> %wide.load472, splat (i8 2)
  %i.by = and <4 x i8> %i.bx, splat (i8 48)
  %i.bz = add nsw <4 x i8> %i.by, splat (i8 -32)
  %i.ca = or disjoint <4 x i8> %i.bz, %i.bw
  %i.cb = lshr <4 x i8> %wide.load, splat (i8 4)
  %i.cc = and <4 x i8> %wide.load472, splat (i8 48)
  %i.cd = or disjoint <4 x i8> %i.cb, splat (i8 -32)
  %i.ce = add nsw <4 x i8> %i.cd, %i.cc
  %i.cf = lshr <4 x i8> %wide.load473, splat (i8 4)
  %i.cg = lshr <4 x i8> %wide.load472, splat (i8 2)
  %i.ch = and <4 x i8> %i.cg, splat (i8 48)
  %i.ci = add nsw <4 x i8> %i.ch, splat (i8 -32)
  %i.cj = or disjoint <4 x i8> %i.ci, %i.cf
  %i.ck = and <4 x i8> %wide.load, splat (i8 15)
  %i.cl = or disjoint <4 x i8> %i.ck, splat (i8 -32)
  %i.cm = shl <4 x i8> %wide.load472, splat (i8 4)
  %i.cn = and <4 x i8> %i.cm, splat (i8 48)
  %i.co = add nsw <4 x i8> %i.cl, %i.cn
  %i.cp = sitofp <4 x i8> %i.co to <4 x float>
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.br ; 4 uses
  %i.cr = load i8, ptr %i.cq, align 1, !noundef !7
  %broadcast.splatinsert474 = insertelement <4 x i8> poison, i8 %i.cr, i64 0
  %broadcast.splat475 = shufflevector <4 x i8> %broadcast.splatinsert474, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.cs = sitofp <4 x i8> %broadcast.splat475 to <4 x float>
  %i.ct = fmul <4 x float> %broadcast.splat, %i.cs
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index
  %i.cv = fmul <4 x float> %i.ct, %i.cp
  store <4 x float> %i.cv, ptr %i.cu, align 4
  %i.cw = sitofp <4 x i8> %i.ca to <4 x float>
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  %i.cy = load i8, ptr %i.cx, align 1, !noundef !7
  %broadcast.splatinsert476 = insertelement <4 x i8> poison, i8 %i.cy, i64 0
  %broadcast.splat477 = shufflevector <4 x i8> %broadcast.splatinsert476, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.cz = sitofp <4 x i8> %broadcast.splat477 to <4 x float>
  %i.da = fmul <4 x float> %broadcast.splat, %i.cz
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bu
  %i.dc = fmul <4 x float> %i.da, %i.cw
  store <4 x float> %i.dc, ptr %i.db, align 4
  %i.dd = sitofp <4 x i8> %i.ce to <4 x float>
  %i.de = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.df = load i8, ptr %i.de, align 1, !noundef !7
  %broadcast.splatinsert478 = insertelement <4 x i8> poison, i8 %i.df, i64 0
  %broadcast.splat479 = shufflevector <4 x i8> %broadcast.splatinsert478, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.dg = sitofp <4 x i8> %broadcast.splat479 to <4 x float>
  %i.dh = fmul <4 x float> %broadcast.splat, %i.dg
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 256
  %i.dk = fmul <4 x float> %i.dh, %i.dd
  store <4 x float> %i.dk, ptr %i.dj, align 4
  %i.dl = sitofp <4 x i8> %i.cj to <4 x float>
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cq, i64 6
  %i.dn = load i8, ptr %i.dm, align 1, !noundef !7
  %broadcast.splatinsert480 = insertelement <4 x i8> poison, i8 %i.dn, i64 0
  %broadcast.splat481 = shufflevector <4 x i8> %broadcast.splatinsert480, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.do = sitofp <4 x i8> %broadcast.splat481 to <4 x float>
  %i.dp = fmul <4 x float> %broadcast.splat, %i.do
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 384
  %i.ds = fmul <4 x float> %i.dp, %i.dl
  store <4 x float> %i.ds, ptr %i.dr, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %scalar.ph.preheader, label %vector.body, !llvm.loop !1331

scalar.ph.preheader:                              ; preds = %vector.body, %bb.m
  %.sroa.014.0170.1.ph = phi i64 [ 0, %bb.m ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.q
  %.sroa.014.0170.1 = phi i64 [ %i.du, %bb.q ], [ %.sroa.014.0170.1.ph, %scalar.ph.preheader ] ; 12 uses
  %i.du = add nuw nsw i64 %.sroa.014.0170.1, 1    ; 2 uses
  %i.dv = lshr i64 %.sroa.014.0170.1, 4           ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.sroa.014.0170.1
  %i.dx = load i8, ptr %i.dw, align 1, !noundef !7 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.sroa.014.0170.1
  %i.dz = load i8, ptr %i.dy, align 1, !noundef !7 ; 4 uses
  %i.ea = or disjoint i64 %.sroa.014.0170.1, 32   ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !noundef !7 ; 2 uses
  %i.ed = and i8 %i.ec, 15
  %i.ee = shl i8 %i.dz, 2
  %i.ef = and i8 %i.ee, 48
  %i.eg = add nsw i8 %i.ef, -32
  %i.eh = or disjoint i8 %i.eg, %i.ed
  %i.ei = lshr i8 %i.dx, 4
  %i.ej = and i8 %i.dz, 48
  %i.ek = or disjoint i8 %i.ei, -32
  %i.el = add nsw i8 %i.ek, %i.ej
  %i.em = lshr i8 %i.ec, 4
  %i.en = lshr i8 %i.dz, 2
  %i.eo = and i8 %i.en, 48
  %i.ep = add nsw i8 %i.eo, -32
  %i.eq = or disjoint i8 %i.ep, %i.em
  %exitcond.1.not = icmp eq i64 %.sroa.014.0170.1, %smax.1
  br i1 %exitcond.1.not, label %.loopexit314, label %bb.n

bb.n:                                             ; preds = %scalar.ph
  %i.er = and i8 %i.dx, 15
  %i.es = or disjoint i8 %i.er, -32
  %i.et = shl i8 %i.dz, 4
  %i.eu = and i8 %i.et, 48
  %i.ev = add nsw i8 %i.es, %i.eu
  %i.ew = sitofp i8 %i.ev to float
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.dv
  %i.ey = load i8, ptr %i.ex, align 1, !noundef !7
  %i.ez = sitofp i8 %i.ey to float
  %i.fa = fmul float %.sroa.04.0, %i.ez
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.sroa.014.0170.1
  %i.fc = fmul float %i.fa, %i.ew
  store float %i.fc, ptr %i.fb, align 4
  %exitcond306.1.not = icmp eq i64 %.sroa.014.0170.1, %7
  br i1 %exitcond306.1.not, label %.loopexit316, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fd = sitofp i8 %i.eh to float
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.dv
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 2
  %i.fg = load i8, ptr %i.ff, align 1, !noundef !7
  %i.fh = sitofp i8 %i.fg to float
  %i.fi = fmul float %.sroa.04.0, %i.fh
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.ea
  %i.fk = fmul float %i.fi, %i.fd
  store float %i.fk, ptr %i.fj, align 4
  %i.fl = or disjoint i64 %.sroa.014.0170.1, 64   ; 2 uses
  %exitcond307.1.not = icmp eq i64 %.sroa.014.0170.1, %8
  br i1 %exitcond307.1.not, label %.loopexit318, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fm = sitofp i8 %i.el to float
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.dv
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.fp = load i8, ptr %i.fo, align 1, !noundef !7
  %i.fq = sitofp i8 %i.fp to float
  %i.fr = fmul float %.sroa.04.0, %i.fq
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.fl
  %i.ft = fmul float %i.fr, %i.fm
  store float %i.ft, ptr %i.fs, align 4
  %i.fu = or disjoint i64 %.sroa.014.0170.1, 96   ; 2 uses
  %exitcond308.1.not = icmp eq i64 %.sroa.014.0170.1, %9
  br i1 %exitcond308.1.not, label %.loopexit320, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fv = sitofp i8 %i.eq to float
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.dv
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 6
  %i.fy = load i8, ptr %i.fx, align 1, !noundef !7
  %i.fz = sitofp i8 %i.fy to float
  %i.ga = fmul float %.sroa.04.0, %i.fz
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.fu
  %i.gc = fmul float %i.ga, %i.fv
  store float %i.gc, ptr %i.gb, align 4
  %exitcond309.1.not = icmp eq i64 %i.du, 32
  br i1 %exitcond309.1.not, label %.loopexit.1, label %scalar.ph, !llvm.loop !1332

.loopexit.1:                                      ; preds = %bb.q
  %i.gd = icmp eq ptr %i.e, %i.a
  %indvars.iv.next = add nsw i64 %indvars.iv, -256
  br i1 %i.gd, label %._crit_edge, label %.lr.ph

bb.r:                                             ; preds = %bb.l
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ax ; 8 uses
  %11 = tail call i64 @llvm.umin.i64(i64 %smax, i64 %4)
  %i.gf = tail call i64 @llvm.umin.i64(i64 %11, i64 %5)
  %i.gg = tail call i64 @llvm.umin.i64(i64 %i.gf, i64 %6) ; 2 uses
  %min.iters.check483 = icmp samesign ult i64 %i.gg, 4
  br i1 %min.iters.check483, label %scalar.ph482.preheader, label %vector.ph484

scalar.ph482.preheader:                           ; preds = %vector.body488, %bb.r
  %.sroa.014.0170.ph = phi i64 [ 0, %bb.r ], [ %n.vec485, %vector.body488 ]
  br label %scalar.ph482

vector.ph484:                                     ; preds = %bb.r
  %i.gh = tail call i64 @llvm.umin.i64(i64 %i.gg, i64 31)
  %i.gi = add nuw nsw i64 %i.gh, 1                ; 2 uses
  %i.gj = and i64 %i.gi, 3                        ; 2 uses
  %i.gk = icmp eq i64 %i.gj, 0
  %i.gl = select i1 %i.gk, i64 4, i64 %i.gj
  %n.vec485 = sub nsw i64 %i.gi, %i.gl            ; 2 uses
  %broadcast.splatinsert486 = insertelement <4 x float> poison, float %.sroa.04.0, i64 0
  %broadcast.splat487 = shufflevector <4 x float> %broadcast.splatinsert486, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body488

vector.body488:                                   ; preds = %vector.body488, %vector.ph484
  %index489 = phi i64 [ 0, %vector.ph484 ], [ %index.next501, %vector.body488 ] ; 8 uses
  %i.gm = lshr i64 %index489, 4
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.0174, i64 %index489
  %wide.load490 = load <4 x i8>, ptr %i.gn, align 1 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.av, i64 %index489
  %wide.load491 = load <4 x i8>, ptr %i.go, align 1 ; 4 uses
  %i.gp = or disjoint i64 %index489, 32           ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0.0174, i64 %i.gp
  %wide.load492 = load <4 x i8>, ptr %i.gq, align 1 ; 2 uses
  %i.gr = and <4 x i8> %wide.load492, splat (i8 15)
  %i.gs = shl <4 x i8> %wide.load491, splat (i8 2)
  %i.gt = and <4 x i8> %i.gs, splat (i8 48)
  %i.gu = add nsw <4 x i8> %i.gt, splat (i8 -32)
  %i.gv = or disjoint <4 x i8> %i.gu, %i.gr
  %i.gw = lshr <4 x i8> %wide.load490, splat (i8 4)
  %i.gx = and <4 x i8> %wide.load491, splat (i8 48)
  %i.gy = or disjoint <4 x i8> %i.gw, splat (i8 -32)
  %i.gz = add nsw <4 x i8> %i.gy, %i.gx
  %i.ha = lshr <4 x i8> %wide.load492, splat (i8 4)
  %i.hb = lshr <4 x i8> %wide.load491, splat (i8 2)
  %i.hc = and <4 x i8> %i.hb, splat (i8 48)
  %i.hd = add nsw <4 x i8> %i.hc, splat (i8 -32)
  %i.he = or disjoint <4 x i8> %i.hd, %i.ha
  %i.hf = and <4 x i8> %wide.load490, splat (i8 15)
  %i.hg = or disjoint <4 x i8> %i.hf, splat (i8 -32)
  %i.hh = shl <4 x i8> %wide.load491, splat (i8 4)
  %i.hi = and <4 x i8> %i.hh, splat (i8 48)
  %i.hj = add nsw <4 x i8> %i.hg, %i.hi
  %i.hk = sitofp <4 x i8> %i.hj to <4 x float>
  %i.hl = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.gm ; 4 uses
  %i.hm = load i8, ptr %i.hl, align 1, !noundef !7
  %broadcast.splatinsert493 = insertelement <4 x i8> poison, i8 %i.hm, i64 0
  %broadcast.splat494 = shufflevector <4 x i8> %broadcast.splatinsert493, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.hn = sitofp <4 x i8> %broadcast.splat494 to <4 x float>
  %i.ho = fmul <4 x float> %broadcast.splat487, %i.hn
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %index489
  %i.hq = fmul <4 x float> %i.ho, %i.hk
  store <4 x float> %i.hq, ptr %i.hp, align 4
  %i.hr = sitofp <4 x i8> %i.gv to <4 x float>
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hl, i64 2
  %i.ht = load i8, ptr %i.hs, align 1, !noundef !7
  %broadcast.splatinsert495 = insertelement <4 x i8> poison, i8 %i.ht, i64 0
  %broadcast.splat496 = shufflevector <4 x i8> %broadcast.splatinsert495, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.hu = sitofp <4 x i8> %broadcast.splat496 to <4 x float>
  %i.hv = fmul <4 x float> %broadcast.splat487, %i.hu
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.gp
  %i.hx = fmul <4 x float> %i.hv, %i.hr
  store <4 x float> %i.hx, ptr %i.hw, align 4
  %i.hy = sitofp <4 x i8> %i.gz to <4 x float>
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  %i.ia = load i8, ptr %i.hz, align 1, !noundef !7
  %broadcast.splatinsert497 = insertelement <4 x i8> poison, i8 %i.ia, i64 0
  %broadcast.splat498 = shufflevector <4 x i8> %broadcast.splatinsert497, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.ib = sitofp <4 x i8> %broadcast.splat498 to <4 x float>
  %i.ic = fmul <4 x float> %broadcast.splat487, %i.ib
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %index489
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 256
  %i.if = fmul <4 x float> %i.ic, %i.hy
  store <4 x float> %i.if, ptr %i.ie, align 4
  %i.ig = sitofp <4 x i8> %i.he to <4 x float>
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hl, i64 6
  %i.ii = load i8, ptr %i.ih, align 1, !noundef !7
  %broadcast.splatinsert499 = insertelement <4 x i8> poison, i8 %i.ii, i64 0
  %broadcast.splat500 = shufflevector <4 x i8> %broadcast.splatinsert499, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.ij = sitofp <4 x i8> %broadcast.splat500 to <4 x float>
  %i.ik = fmul <4 x float> %broadcast.splat487, %i.ij
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %index489
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 384
  %i.in = fmul <4 x float> %i.ik, %i.ig
  store <4 x float> %i.in, ptr %i.im, align 4
  %index.next501 = add nuw i64 %index489, 4       ; 2 uses
  %i.io = icmp eq i64 %index.next501, %n.vec485
  br i1 %i.io, label %scalar.ph482.preheader, label %vector.body488, !llvm.loop !1333

bb.s:                                             ; preds = %.loopexit, %bb.l
  %.lcssa = phi i64 [ %i.ax, %bb.l ], [ %i.be, %.loopexit ]
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #32
  unreachable

scalar.ph482:                                     ; preds = %scalar.ph482.preheader, %bb.w
  %.sroa.014.0170 = phi i64 [ %i.ip, %bb.w ], [ %.sroa.014.0170.ph, %scalar.ph482.preheader ] ; 12 uses
  %i.ip = add nuw nsw i64 %.sroa.014.0170, 1      ; 2 uses
  %i.iq = lshr i64 %.sroa.014.0170, 4             ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0.0174, i64 %.sroa.014.0170
  %i.is = load i8, ptr %i.ir, align 1, !noundef !7 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sroa.014.0170
  %i.iu = load i8, ptr %i.it, align 1, !noundef !7 ; 4 uses
  %i.iv = or disjoint i64 %.sroa.014.0170, 32     ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0.0174, i64 %i.iv
  %i.ix = load i8, ptr %i.iw, align 1, !noundef !7 ; 2 uses
  %i.iy = and i8 %i.ix, 15
  %i.iz = shl i8 %i.iu, 2
  %i.ja = and i8 %i.iz, 48
  %i.jb = add nsw i8 %i.ja, -32
  %i.jc = or disjoint i8 %i.jb, %i.iy
  %i.jd = lshr i8 %i.is, 4
  %i.je = and i8 %i.iu, 48
  %i.jf = or disjoint i8 %i.jd, -32
  %i.jg = add nsw i8 %i.jf, %i.je
  %i.jh = lshr i8 %i.ix, 4
  %i.ji = lshr i8 %i.iu, 2
  %i.jj = and i8 %i.ji, 48
  %i.jk = add nsw i8 %i.jj, -32
  %i.jl = or disjoint i8 %i.jk, %i.jh
  %exitcond.not = icmp eq i64 %.sroa.014.0170, %smax
  br i1 %exitcond.not, label %.loopexit314, label %bb.t

.loopexit314:                                     ; preds = %scalar.ph482, %scalar.ph
  %.lcssa419.sink.a = phi i64 [ %i.be, %scalar.ph ], [ %i.ax, %scalar.ph482 ]
  %.sroa.014.0170.lcssa190 = phi i64 [ %smax.1, %scalar.ph ], [ %smax, %scalar.ph482 ]
  %i.jm = sub nuw nsw i64 %3, %.lcssa419.sink.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.014.0170.lcssa190, i64 noundef %i.jm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @164) #32
  unreachable

bb.t:                                             ; preds = %scalar.ph482
  %i.jn = and i8 %i.is, 15
  %i.jo = or disjoint i8 %i.jn, -32
  %i.jp = shl i8 %i.iu, 4
  %i.jq = and i8 %i.jp, 48
  %i.jr = add nsw i8 %i.jo, %i.jq
  %i.js = sitofp i8 %i.jr to float
  %i.jt = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.iq
  %i.ju = load i8, ptr %i.jt, align 1, !noundef !7
  %i.jv = sitofp i8 %i.ju to float
  %i.jw = fmul float %.sroa.04.0, %i.jv
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %.sroa.014.0170
  %i.jy = fmul float %i.jw, %i.js
  store float %i.jy, ptr %i.jx, align 4
  %exitcond306.not = icmp eq i64 %.sroa.014.0170, %4
  br i1 %exitcond306.not, label %.loopexit316, label %bb.u

.loopexit316:                                     ; preds = %bb.t, %bb.n
  %.lcssa418.sink = phi i64 [ %i.be, %bb.n ], [ %i.ax, %bb.t ]
  %.lcssa202 = phi i64 [ %i.ea, %bb.n ], [ %i.iv, %bb.t ]
  %i.jz = sub nuw nsw i64 %3, %.lcssa418.sink
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.lcssa202, i64 noundef %i.jz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #32
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.ka = sitofp i8 %i.jc to float
  %i.kb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.iq
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 2
  %i.kd = load i8, ptr %i.kc, align 1, !noundef !7
  %i.ke = sitofp i8 %i.kd to float
  %i.kf = fmul float %.sroa.04.0, %i.ke
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.iv
  %i.kh = fmul float %i.kf, %i.ka
  store float %i.kh, ptr %i.kg, align 4
  %i.ki = or disjoint i64 %.sroa.014.0170, 64     ; 2 uses
  %exitcond307.not = icmp eq i64 %.sroa.014.0170, %5
  br i1 %exitcond307.not, label %.loopexit318, label %bb.v

.loopexit318:                                     ; preds = %bb.u, %bb.o
  %.lcssa417.sink = phi i64 [ %i.be, %bb.o ], [ %i.ax, %bb.u ]
  %.lcssa220 = phi i64 [ %i.fl, %bb.o ], [ %i.ki, %bb.u ]
  %i.kj = sub nuw nsw i64 %3, %.lcssa417.sink
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.lcssa220, i64 noundef %i.kj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @166) #32
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.kk = sitofp i8 %i.jg to float
  %i.kl = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.iq
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 4
  %i.kn = load i8, ptr %i.km, align 1, !noundef !7
  %i.ko = sitofp i8 %i.kn to float
  %i.kp = fmul float %.sroa.04.0, %i.ko
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.ki
  %i.kr = fmul float %i.kp, %i.kk
  store float %i.kr, ptr %i.kq, align 4
  %i.ks = or disjoint i64 %.sroa.014.0170, 96     ; 2 uses
  %exitcond308.not = icmp eq i64 %.sroa.014.0170, %6
  br i1 %exitcond308.not, label %.loopexit320, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.kt = sitofp i8 %i.jl to float
  %i.ku = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.iq
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 6
  %i.kw = load i8, ptr %i.kv, align 1, !noundef !7
  %i.kx = sitofp i8 %i.kw to float
  %i.ky = fmul float %.sroa.04.0, %i.kx
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.ks
  %i.la = fmul float %i.ky, %i.kt
  store float %i.la, ptr %i.kz, align 4
  %exitcond309.not = icmp eq i64 %i.ip, 32
  br i1 %exitcond309.not, label %.loopexit, label %scalar.ph482, !llvm.loop !1334

.loopexit320:                                     ; preds = %bb.v, %bb.p
  %.lcssa416.sink = phi i64 [ %i.be, %bb.p ], [ %i.ax, %bb.v ]
  %.lcssa227 = phi i64 [ %i.fu, %bb.p ], [ %i.ks, %bb.v ]
  %i.lb = sub nuw nsw i64 %3, %.lcssa416.sink
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.lcssa227, i64 noundef %i.lb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @167) #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs8_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ6KNtB5_8GgmlType9vec_dot_4(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 16)) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %2, i64 noundef range(i64 0, 43920819223117981) %3, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %4, i64 noundef range(i64 0, 43920819223117981) %5, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %6, i64 noundef range(i64 0, 43920819223117981) %7, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %8, i64 noundef range(i64 0, 43920819223117981) %9, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %10, i64 noundef range(i64 0, 31586890537173890) %11) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef float @_RNvXs8_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ6KNtB5_8GgmlType13vec_dot_unopt(i64 poison, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %2, i64 noundef range(i64 0, 43920819223117981) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %10, i64 noundef range(i64 0, 31586890537173890) %11)
  %i.b = tail call noundef float @_RNvXs8_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ6KNtB5_8GgmlType13vec_dot_unopt(i64 poison, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %4, i64 noundef range(i64 0, 43920819223117981) %5, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %10, i64 noundef range(i64 0, 31586890537173890) %11)
  %i.c = tail call noundef float @_RNvXs8_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ6KNtB5_8GgmlType13vec_dot_unopt(i64 poison, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %6, i64 noundef range(i64 0, 43920819223117981) %7, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %10, i64 noundef range(i64 0, 31586890537173890) %11)
  %i.d = tail call noundef float @_RNvXs8_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ6KNtB5_8GgmlType13vec_dot_unopt(i64 poison, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %8, i64 noundef range(i64 0, 43920819223117981) %9, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %10, i64 noundef range(i64 0, 31586890537173890) %11)
  store float %i.a, ptr %0, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.b, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.c, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.d, ptr %i.g, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs9_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ8KNtB5_8GgmlType10from_float(ptr noalias nofree noundef nonnull readonly align 4 captures(address) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull align 4 captures(address) %2, i64 noundef range(i64 0, 31586890537173890) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.idx = mul nuw nsw i64 %3, 292
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %._crit_edge69, label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %bb.a
  %i.c = lshr i64 %1, 8
  br label %.lr.ph68

.lr.ph68:                                         ; preds = %.lr.ph68.preheader, %bb.d
  %.sroa.0.066 = phi ptr [ %i.d, %bb.d ], [ %2, %.lr.ph68.preheader ] ; 35 uses
  %.sroa.7.065 = phi i64 [ %i.e, %bb.d ], [ 0, %.lr.ph68.preheader ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 292 ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.7.065, 1
  %i.f = shl nuw nsw i64 %.sroa.7.065, 8          ; 3 uses
  %i.g = add nuw nsw i64 %i.f, 256                ; 2 uses
  %exitcond77.not = icmp eq i64 %.sroa.7.065, %i.c
  br i1 %exitcond77.not, label %bb.b, label %.lr.ph.preheader, !prof !15

._crit_edge69:                                    ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph68
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.f, i64 noundef %i.g, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #32
  unreachable

.lr.ph.preheader:                                 ; preds = %.lr.ph68
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.04.056 = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %.sroa.04.1.1, %.lr.ph ]
  %.sroa.05.055 = phi ptr [ %i.h, %.lr.ph.preheader ], [ %i.n, %.lr.ph ] ; 3 uses
  %.sroa.08.054 = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %.sroa.08.1.1, %.lr.ph ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.05.055, i64 4
  %i.k = load float, ptr %.sroa.05.055, align 4, !noundef !7 ; 2 uses
  %i.l = tail call float @llvm.fabs.f32(float %i.k) ; 2 uses
  %i.m = fcmp olt float %.sroa.08.054, %i.l       ; 2 uses
  %.sroa.08.1 = select i1 %i.m, float %i.l, float %.sroa.08.054 ; 2 uses
  %.sroa.04.1 = select i1 %i.m, float %i.k, float %.sroa.04.056
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.05.055, i64 8 ; 2 uses
  %i.o = load float, ptr %i.j, align 4, !noundef !7 ; 2 uses
  %i.p = tail call float @llvm.fabs.f32(float %i.o) ; 2 uses
  %i.q = fcmp olt float %.sroa.08.1, %i.p         ; 2 uses
  %.sroa.08.1.1 = select i1 %i.q, float %i.p, float %.sroa.08.1 ; 2 uses
  %.sroa.04.1.1 = select i1 %i.q, float %i.o, float %.sroa.04.1 ; 2 uses
  %i.r = icmp eq ptr %i.n, %i.i
  br i1 %i.r, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.s = fcmp oeq float %.sroa.08.1.1, 0.000000e+00
  br i1 %i.s, label %bb.c, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge
  %i.t = fdiv float -1.270000e+02, %.sroa.04.1.1  ; 2 uses
  %.ptr49 = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 260
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.t, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.ptr49, i64 %index
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index
  %wide.load = load <4 x float>, ptr %i.v, align 4
  %i.w = fmul <4 x float> %broadcast.splat, %wide.load
  %i.x = tail call <4 x float> @llvm.round.v4f32(<4 x float> %i.w) ; 2 uses
  %i.y = fcmp olt <4 x float> %i.x, splat (float -1.280000e+02)
  %i.z = select <4 x i1> %i.y, <4 x float> splat (float -1.280000e+02), <4 x float> %i.x ; 2 uses
  %i.aa = fcmp ogt <4 x float> %i.z, splat (float 1.270000e+02)
  %i.ab = select <4 x i1> %i.aa, <4 x float> splat (float 1.270000e+02), <4 x float> %i.z
  %i.ac = tail call <4 x i8> @llvm.fptosi.sat.v4i8.v4f32(<4 x float> %i.ab)
  store <4 x i8> %i.ac, ptr %next.gep, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, 256
  br i1 %i.ad, label %.preheader, label %vector.body, !llvm.loop !1335

bb.c:                                             ; preds = %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %.sroa.0.066, i8 0, i64 260, i1 false)
  br label %bb.d

.preheader:                                       ; preds = %vector.body
  %i.ae = load <16 x i8>, ptr %.ptr49, align 1
  %i.af = sext <16 x i8> %i.ae to <16 x i16>
  %i.ag = tail call i16 @llvm.vector.reduce.add.v16i16(<16 x i16> %i.af)
  store i16 %i.ag, ptr %i.u, align 2
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 20
  %i.ai = load <16 x i8>, ptr %i.ah, align 2
  %i.aj = sext <16 x i8> %i.ai to <16 x i16>
  %i.ak = tail call i16 @llvm.vector.reduce.add.v16i16(<16 x i16> %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 262
  store i16 %i.ak, ptr %i.al, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 36
  %i.an = load <16 x i8>, ptr %i.am, align 2
  %i.ao = sext <16 x i8> %i.an to <16 x i16>
  %i.ap = tail call i16 @llvm.vector.reduce.add.v16i16(<16 x i16> %i.ao)
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 264
  store i16 %i.ap, ptr %i.aq, align 2
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 52
  %i.as = load <16 x i8>, ptr %i.ar, align 2
  %i.at = sext <16 x i8> %i.as to <16 x i16>
  %i.au = tail call i16 @llvm.vector.reduce.add.v16i16(<16 x i16> %i.at)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 266
  store i16 %i.au, ptr %i.av, align 2
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 68
  %i.ax = load <16 x i8>, ptr %i.aw, align 2
  %i.ay = sext <16 x i8> %i.ax to <16 x i16>
  %i.az = tail call i16 @llvm.vector.reduce.add.v16i16(<16 x i16> %i.ay)
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 268
  store i16 %i.az, ptr %i.ba, align 2
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 84
  %i.bc = load <16 x i8>, ptr %i.bb, align 2
  %i.bd = sext <16 x i8> %i.bc to <16 x i16>
  %i.be = tail call i16 @llvm.vector.reduce.add.v16i16(<16 x i16> %i.bd)
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 270
  store i16 %i.be, ptr %i.bf, align 2
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 100
  %i.bh = load <16 x i8>, ptr %i.bg, align 2
  %i.bi = sext <16 x i8> %i.bh to <16 x i16>
  %i.bj = tail call i16 @llvm.vector.reduce.add.v16i16(<16 x i16> %i.bi)
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 272
  store i16 %i.bj, ptr %i.bk, align 2
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 116
  %i.bm = load <16 x i8>, ptr %i.bl, align 2
  %i.bn = sext <16 x i8> %i.bm to <16 x i16>
  %i.bo = tail call i16 @llvm.vector.reduce.add.v16i16(<16 x i16> %i.bn)
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 274
  store i16 %i.bo, ptr %i.bp, align 2
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 132
  %i.br = load <16 x i8>, ptr %i.bq, align 2
  %i.bs = sext <16 x i8> %i.br to <16 x i16>
  %i.bt = tail call i16 @llvm.vector.reduce.add.v16i16(<16 x i16> %i.bs)
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 276
  store i16 %i.bt, ptr %i.bu, align 2
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 148
  %i.bw = load <16 x i8>, ptr %i.bv, align 2
  %i.bx = sext <16 x i8> %i.bw to <16 x i16>
  %i.by = tail call i16 @llvm.vector.reduce.add.v16i16(<16 x i16> %i.bx)
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 278
  store i16 %i.by, ptr %i.bz, align 2
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 164
  %i.cb = load <16 x i8>, ptr %i.ca, align 2
  %i.cc = sext <16 x i8> %i.cb to <16 x i16>
  %i.cd = tail call i16 @llvm.vector.reduce.add.v16i16(<16 x i16> %i.cc)
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 280
  store i16 %i.cd, ptr %i.ce, align 2
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 180
  %i.cg = load <16 x i8>, ptr %i.cf, align 2
  %i.ch = sext <16 x i8> %i.cg to <16 x i16>
  %i.ci = tail call i16 @llvm.vector.reduce.add.v16i16(<16 x i16> %i.ch)
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 282
  store i16 %i.ci, ptr %i.cj, align 2
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 196
  %i.cl = load <16 x i8>, ptr %i.ck, align 2
  %i.cm = sext <16 x i8> %i.cl to <16 x i16>
end_hunk_0
begin_hunk_1_@_RNvXse_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impxNtB9_7Display3fmt

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtNtCsVG4f6i5f9f_4rand4rngs9reseedingINtB5_13ReseedingCoreNtNtCscHeDkCj8TjV_11rand_chacha6chacha12ChaCha12CoreNtNtCsaVVYlBCAE9B_9rand_core2os5OsRngE19reseed_and_generateCshBhMCGs0DAb_10tokenizers(ptr noalias nofree noundef align 16 dereferenceable(64), ptr noalias nofree noundef align 4 dereferenceable(256)) unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #15

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs4_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufreaderINtB5_9BufReaderINtNtNtCscWUIX17zZnI_3zip4read7readers12CryptoReaderIBS_NtNtCs5Xr050g3D4S_3std2fs4FileEEENtNtB9_4read4Read4readCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(80), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs1q_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(40), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs1y_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_14ChunksExactMutfENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(40), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs1y_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(40), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils22group_for_quantizationNtNtB4_8k_quants8BlockQ2KEB6_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952), ptr noalias nofree noundef nonnull align 2, i64 noundef range(i64 0, 109802048057794951)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fptosi.sat.i32.f32(float) #15

; Function Attrs: nonlazybind uwtable
declare hidden { float, float } @_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quants(i32 noundef, i64 noundef, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef float @_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils14make_qp_quants(i64 noundef, i8 noundef, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { float, float } @_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx3_quants(i32 noundef, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance), i64, float noundef, float noundef, i64 noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils24group_for_dequantizationNtNtB4_8k_quants8BlockQ2KEB6_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance), i64 noundef range(i64 0, 109802048057794951), ptr noalias nofree noundef nonnull align 4, i64 noundef range(i64 0, 2305843009213693952)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils22group_for_quantizationNtNtB4_8k_quants8BlockQ3KEB6_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952), ptr noalias nofree noundef nonnull align 2, i64 noundef range(i64 0, 83848836698679781)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef float @_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils14make_q3_quants(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952), i32 noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef float @_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils14make_qx_quants(i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils24group_for_dequantizationNtNtB4_8k_quants8BlockQ3KEB6_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance), i64 noundef range(i64 0, 83848836698679781), ptr noalias nofree noundef nonnull align 4, i64 noundef range(i64 0, 2305843009213693952)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils22group_for_quantizationNtNtB4_8k_quants8BlockQ4KEB6_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952), ptr noalias nofree noundef nonnull align 2, i64 noundef range(i64 0, 64051194700380388)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils24group_for_dequantizationNtNtB4_8k_quants8BlockQ4KEB6_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance), i64 noundef range(i64 0, 64051194700380388), ptr noalias nofree noundef nonnull align 4, i64 noundef range(i64 0, 2305843009213693952)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsS_NtNtCskNPKTEkpOem_12aho_corasick4util10primitivesNtB5_9PatternIDNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils22group_for_quantizationNtNtB4_8k_quants8BlockQ5KEB6_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952), ptr noalias nofree noundef nonnull align 2, i64 noundef range(i64 0, 52405522936674863)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils24group_for_dequantizationNtNtB4_8k_quants8BlockQ5KEB6_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance), i64 noundef range(i64 0, 52405522936674863), ptr noalias nofree noundef nonnull align 4, i64 noundef range(i64 0, 2305843009213693952)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsf3Ta7LF998c_4core5slice10specializeSfINtB4_8SpecFillfE9spec_fillCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 4, i64 noundef range(i64 0, 2305843009213693952), float noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impaNtB8_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtNtCsf3Ta7LF998c_4core3fmt3numaNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsf_NtNtCsf3Ta7LF998c_4core3fmt3numaNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsp_NtNtCsf3Ta7LF998c_4core3fmt3numsNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsn_NtNtCsf3Ta7LF998c_4core3fmt3numsNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsx_NtNtCsf3Ta7LF998c_4core3fmt3numlNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsv_NtNtCsf3Ta7LF998c_4core3fmt3numlNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsF_NtNtCsf3Ta7LF998c_4core3fmt3numxNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsD_NtNtCsf3Ta7LF998c_4core3fmt3numxNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCsf3Ta7LF998c_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCsf3Ta7LF998c_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core3fmt3num3imptNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXso_NtNtCsf3Ta7LF998c_4core3fmt3numtNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsm_NtNtCsf3Ta7LF998c_4core3fmt3numtNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsw_NtNtCsf3Ta7LF998c_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsE_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsC_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implfECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 4, i64 noundef range(i64 0, 2305843009213693952), ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance), i64 noundef range(i64 0, 2305843009213693952), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCsf3Ta7LF998c_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCscHeDkCj8TjV_11rand_chacha4guts11refill_wide(ptr noalias nofree noundef align 16 dereferenceable(48), i32 noundef, ptr noalias nofree noundef align 4 dereferenceable(256)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueINtNtNtBa_5slice4iter4IterB14_EEB1a_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB6_9DebugList7entriesRhINtNtNtBa_5slice4iter4IterhEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCsf3Ta7LF998c_4core3fmt8buildersNtB6_9DebugList7entriesRjINtNtNtBa_5slice4iter4IterjEECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter3pad(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCsgCecv3eZDcN_5alloc6string6StringNtB6_5Debug3fmtCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtCsltEA4u8Pgfu_11candle_core9quantized9gguf_file5ValueENtB6_5Debug3fmtB19_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare noundef ptr @_RINvNtCskNPKTEkpOem_12aho_corasick9automaton24try_find_overlapping_fwdRNtNtNtB4_3nfa10contiguous3NFAEB4_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtCskNPKTEkpOem_12aho_corasick9automaton12try_find_fwdRNtNtNtB4_3nfa10contiguous3NFAEB4_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtNtCscWUIX17zZnI_3zip4read12magic_finderINtB5_21OptimisticMagicFinderNtB5_7ForwardE9new_emptyCsltEA4u8Pgfu_11candle_core(ptr dead_on_unwind noalias nofree noundef writable sret([1408 x i8]) align 32 captures(none) dereferenceable(1408)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.umin.v4i8(<4 x i8>, <4 x i8>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.fptosi.sat.v4i8.v4f32(<4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.smin.v4i8(<4 x i8>, <4 x i8>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.round.v4f32(<4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.fptosi.sat.v4i32.v4f32(<4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maximumnum.v2f32(<2 x float>, <2 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.round.v16f32(<16 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.fptosi.sat.v16i32.v16f32(<16 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smax.v16i32(<16 x i32>, <16 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smin.v16i32(<16 x i32>, <16 x i32>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v16i16(<16 x i16>) #15

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress norecurse nounwind nonlazybind willreturn uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+avx,+f16c,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #7 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #24 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { cold }
attributes #27 = { cold noreturn nounwind }
attributes #28 = { noreturn }
attributes #29 = { nounwind }
attributes #30 = { inlinehint }
attributes #31 = { noinline }
attributes #32 = { noinline noreturn }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !{null}
!1 = distinct !{!1, !"_RNvXs1_NtNtCsVG4f6i5f9f_4rand4rngs6threadNtB5_9ThreadRngNtCsaVVYlBCAE9B_9rand_core7RngCore8next_u32"}
!2 = distinct !{!2, !1, !"_RNvXs1_NtNtCsVG4f6i5f9f_4rand4rngs6threadNtB5_9ThreadRngNtCsaVVYlBCAE9B_9rand_core7RngCore8next_u32: argument 0"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 2, !"RtLibUseGOT", i32 1}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"rustc version 1.100.0-nightly (809936eac 2026-09-12)"}
!7 = !{}
!8 = !{i64 0, i64 2}
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!11 = !{i8 0, i8 44}
!12 = !{!"address", !"read_provenance"}
!13 = !{i64 0, i64 -9223372036854775807}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{!"branch_weights", i32 4001, i32 4000000}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = !{!2}
!20 = !{i64 8}
!21 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!22 = !{i64 0, i64 -9223372036854775808}
!23 = !{i8 0, i8 13}
!24 = !{i64 4}
!25 = !{i64 2}
!26 = !{i64 -1, i64 3}
!27 = distinct !{!27, !"_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB1c_6Header5parse0ENtB5_8Searcher11next_rejectB1e_"}
!28 = distinct !{!28, !27, !"_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB1c_6Header5parse0ENtB5_8Searcher11next_rejectB1e_: argument 1"}
!29 = distinct !{!29, !27, !"_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB1c_6Header5parse0ENtB5_8Searcher11next_rejectB1e_: argument 0"}
!30 = distinct !{!30, !"_RNvYINtNtNtCsf3Ta7LF998c_4core3str7pattern19MultiCharEqSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB14_6Header5parse0ENtB5_8Searcher11next_rejectB16_"}
!31 = distinct !{!31, !30, !"_RNvYINtNtNtCsf3Ta7LF998c_4core3str7pattern19MultiCharEqSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB14_6Header5parse0ENtB5_8Searcher11next_rejectB16_: argument 1"}
!32 = distinct !{!32, !30, !"_RNvYINtNtNtCsf3Ta7LF998c_4core3str7pattern19MultiCharEqSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB14_6Header5parse0ENtB5_8Searcher11next_rejectB16_: argument 0"}
!33 = distinct !{!33, !"_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB1a_6Header5parse0ENtB5_8Searcher4nextB1c_"}
!34 = distinct !{!34, !33, !"_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB1a_6Header5parse0ENtB5_8Searcher4nextB1c_: argument 1"}
!35 = distinct !{!35, !33, !"_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB1a_6Header5parse0ENtB5_8Searcher4nextB1c_: argument 0"}
!36 = distinct !{!36, !"_RNvXs3_NtNtCsf3Ta7LF998c_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!37 = distinct !{!37, !36, !"_RNvXs3_NtNtCsf3Ta7LF998c_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!38 = distinct !{!38, !"_RINvNtNtCsf3Ta7LF998c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsltEA4u8Pgfu_11candle_core"}
!39 = distinct !{!39, !38, !"_RINvNtNtCsf3Ta7LF998c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsltEA4u8Pgfu_11candle_core: argument 0"}
!40 = distinct !{!40, !"_RNvXsp_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB1c_6Header5parse0ENtB5_15ReverseSearcher16next_reject_backB1e_"}
!41 = distinct !{!41, !40, !"_RNvXsp_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB1c_6Header5parse0ENtB5_15ReverseSearcher16next_reject_backB1e_: argument 1"}
!42 = distinct !{!42, !40, !"_RNvXsp_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB1c_6Header5parse0ENtB5_15ReverseSearcher16next_reject_backB1e_: argument 0"}
!43 = distinct !{!43, !"_RNvYINtNtNtCsf3Ta7LF998c_4core3str7pattern19MultiCharEqSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB14_6Header5parse0ENtB5_15ReverseSearcher16next_reject_backB16_"}
!44 = distinct !{!44, !43, !"_RNvYINtNtNtCsf3Ta7LF998c_4core3str7pattern19MultiCharEqSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB14_6Header5parse0ENtB5_15ReverseSearcher16next_reject_backB16_: argument 1"}
!45 = distinct !{!45, !43, !"_RNvYINtNtNtCsf3Ta7LF998c_4core3str7pattern19MultiCharEqSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB14_6Header5parse0ENtB5_15ReverseSearcher16next_reject_backB16_: argument 0"}
!46 = distinct !{!46, !"_RNvXs9_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB1a_6Header5parse0ENtB5_15ReverseSearcher9next_backB1c_"}
!47 = distinct !{!47, !46, !"_RNvXs9_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB1a_6Header5parse0ENtB5_15ReverseSearcher9next_backB1c_: argument 1"}
!48 = distinct !{!48, !46, !"_RNvXs9_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB1a_6Header5parse0ENtB5_15ReverseSearcher9next_backB1c_: argument 0"}
!49 = distinct !{!49, !"_RNvXs4_NtNtCsf3Ta7LF998c_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back"}
!50 = distinct !{!50, !49, !"_RNvXs4_NtNtCsf3Ta7LF998c_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back: argument 0"}
!51 = distinct !{!51, !"_RINvNtNtCsf3Ta7LF998c_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsltEA4u8Pgfu_11candle_core"}
!52 = distinct !{!52, !51, !"_RINvNtNtCsf3Ta7LF998c_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsltEA4u8Pgfu_11candle_core: argument 0"}
!53 = !{!39, !37, !35, !34, !32, !31, !29, !28}
!54 = !{!35, !34, !32, !31, !29, !28}
!55 = !{!52, !50, !48, !47, !45, !44, !42, !41}
!56 = !{!48, !47, !45, !44, !42, !41}
!57 = distinct !{!57, !"_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB1c_6Header5parses0_0ENtB5_8Searcher11next_rejectB1e_"}
!58 = distinct !{!58, !57, !"_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB1c_6Header5parses0_0ENtB5_8Searcher11next_rejectB1e_: argument 1"}
!59 = distinct !{!59, !57, !"_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB1c_6Header5parses0_0ENtB5_8Searcher11next_rejectB1e_: argument 0"}
!60 = distinct !{!60, !"_RNvYINtNtNtCsf3Ta7LF998c_4core3str7pattern19MultiCharEqSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB14_6Header5parses0_0ENtB5_8Searcher11next_rejectB16_"}
!61 = distinct !{!61, !60, !"_RNvYINtNtNtCsf3Ta7LF998c_4core3str7pattern19MultiCharEqSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB14_6Header5parses0_0ENtB5_8Searcher11next_rejectB16_: argument 1"}
!62 = distinct !{!62, !60, !"_RNvYINtNtNtCsf3Ta7LF998c_4core3str7pattern19MultiCharEqSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB14_6Header5parses0_0ENtB5_8Searcher11next_rejectB16_: argument 0"}
!63 = distinct !{!63, !"_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB1a_6Header5parses0_0ENtB5_8Searcher4nextB1c_"}
!64 = distinct !{!64, !63, !"_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB1a_6Header5parses0_0ENtB5_8Searcher4nextB1c_: argument 1"}
!65 = distinct !{!65, !63, !"_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB1a_6Header5parses0_0ENtB5_8Searcher4nextB1c_: argument 0"}
!66 = distinct !{!66, !"_RNvXs3_NtNtCsf3Ta7LF998c_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!67 = distinct !{!67, !66, !"_RNvXs3_NtNtCsf3Ta7LF998c_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!68 = distinct !{!68, !"_RINvNtNtCsf3Ta7LF998c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsltEA4u8Pgfu_11candle_core"}
!69 = distinct !{!69, !68, !"_RINvNtNtCsf3Ta7LF998c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsltEA4u8Pgfu_11candle_core: argument 0"}
!70 = distinct !{!70, !"_RNvXsp_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB1c_6Header5parses0_0ENtB5_15ReverseSearcher16next_reject_backB1e_"}
!71 = distinct !{!71, !70, !"_RNvXsp_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB1c_6Header5parses0_0ENtB5_15ReverseSearcher16next_reject_backB1e_: argument 1"}
!72 = distinct !{!72, !70, !"_RNvXsp_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB1c_6Header5parses0_0ENtB5_15ReverseSearcher16next_reject_backB1e_: argument 0"}
!73 = distinct !{!73, !"_RNvYINtNtNtCsf3Ta7LF998c_4core3str7pattern19MultiCharEqSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB14_6Header5parses0_0ENtB5_15ReverseSearcher16next_reject_backB16_"}
!74 = distinct !{!74, !73, !"_RNvYINtNtNtCsf3Ta7LF998c_4core3str7pattern19MultiCharEqSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB14_6Header5parses0_0ENtB5_15ReverseSearcher16next_reject_backB16_: argument 1"}
!75 = distinct !{!75, !73, !"_RNvYINtNtNtCsf3Ta7LF998c_4core3str7pattern19MultiCharEqSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB14_6Header5parses0_0ENtB5_15ReverseSearcher16next_reject_backB16_: argument 0"}
!76 = distinct !{!76, !"_RNvXs9_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB1a_6Header5parses0_0ENtB5_15ReverseSearcher9next_backB1c_"}
!77 = distinct !{!77, !76, !"_RNvXs9_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB1a_6Header5parses0_0ENtB5_15ReverseSearcher9next_backB1c_: argument 1"}
!78 = distinct !{!78, !76, !"_RNvXs9_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB1a_6Header5parses0_0ENtB5_15ReverseSearcher9next_backB1c_: argument 0"}
!79 = distinct !{!79, !"_RNvXs4_NtNtCsf3Ta7LF998c_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back"}
!80 = distinct !{!80, !79, !"_RNvXs4_NtNtCsf3Ta7LF998c_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_back: argument 0"}
!81 = distinct !{!81, !"_RINvNtNtCsf3Ta7LF998c_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsltEA4u8Pgfu_11candle_core"}
!82 = distinct !{!82, !81, !"_RINvNtNtCsf3Ta7LF998c_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsltEA4u8Pgfu_11candle_core: argument 0"}
!83 = !{!69, !67, !65, !64, !62, !61, !59, !58}
!84 = !{!65, !64, !62, !61, !59, !58}
!85 = !{!82, !80, !78, !77, !75, !74, !72, !71}
!86 = !{!78, !77, !75, !74, !72, !71}
!87 = distinct !{!87, !"_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB1c_6Header5parses1_0ENtB5_8Searcher11next_rejectB1e_"}
!88 = distinct !{!88, !87, !"_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB1c_6Header5parses1_0ENtB5_8Searcher11next_rejectB1e_: argument 1"}
!89 = distinct !{!89, !87, !"_RNvXso_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB1c_6Header5parses1_0ENtB5_8Searcher11next_rejectB1e_: argument 0"}
!90 = distinct !{!90, !"_RNvYINtNtNtCsf3Ta7LF998c_4core3str7pattern19MultiCharEqSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB14_6Header5parses1_0ENtB5_8Searcher11next_rejectB16_"}
!91 = distinct !{!91, !90, !"_RNvYINtNtNtCsf3Ta7LF998c_4core3str7pattern19MultiCharEqSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB14_6Header5parses1_0ENtB5_8Searcher11next_rejectB16_: argument 1"}
!92 = distinct !{!92, !90, !"_RNvYINtNtNtCsf3Ta7LF998c_4core3str7pattern19MultiCharEqSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB14_6Header5parses1_0ENtB5_8Searcher11next_rejectB16_: argument 0"}
!93 = distinct !{!93, !"_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB1a_6Header5parses1_0ENtB5_8Searcher4nextB1c_"}
!94 = distinct !{!94, !93, !"_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB1a_6Header5parses1_0ENtB5_8Searcher4nextB1c_: argument 1"}
!95 = distinct !{!95, !93, !"_RNvXs8_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_19MultiCharEqSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB1a_6Header5parses1_0ENtB5_8Searcher4nextB1c_: argument 0"}
!96 = distinct !{!96, !"_RNvXs3_NtNtCsf3Ta7LF998c_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next"}
!97 = distinct !{!97, !96, !"_RNvXs3_NtNtCsf3Ta7LF998c_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next: argument 0"}
!98 = distinct !{!98, !"_RINvNtNtCsf3Ta7LF998c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsltEA4u8Pgfu_11candle_core"}
!99 = distinct !{!99, !98, !"_RINvNtNtCsf3Ta7LF998c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsltEA4u8Pgfu_11candle_core: argument 0"}
!100 = distinct !{!100, !"_RNvXsp_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB1c_6Header5parses1_0ENtB5_15ReverseSearcher16next_reject_backB1e_"}
!101 = distinct !{!101, !100, !"_RNvXsp_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB1c_6Header5parses1_0ENtB5_15ReverseSearcher16next_reject_backB1e_: argument 1"}
!102 = distinct !{!102, !100, !"_RNvXsp_NtNtCsf3Ta7LF998c_4core3str7patternINtB5_21CharPredicateSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB1c_6Header5parses1_0ENtB5_15ReverseSearcher16next_reject_backB1e_: argument 0"}
!103 = distinct !{!103, !"_RNvYINtNtNtCsf3Ta7LF998c_4core3str7pattern19MultiCharEqSearcherNCNvMNtCsltEA4u8Pgfu_11candle_core3npyNtB14_6Header5parses1_0ENtB5_15ReverseSearcher16next_reject_backB16_"}
end_hunk_1
