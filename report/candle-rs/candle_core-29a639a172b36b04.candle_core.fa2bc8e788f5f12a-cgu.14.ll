Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_core-29a639a172b36b04.candle_core.fa2bc8e788f5f12a-cgu.14?download=true
inline.NumInlined: 1160
inline.NumDeleted: 448
loop-unroll.NumCompletelyUnrolled: 107
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 128
begin_hunk_0_@_RNvXs2_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_9BlockQ8_0NtB5_8GgmlType10from_float:bb.a
  %i.ab = tail call nsz float @llvm.maximumnum.f32(float %i.z, float %i.aa)
  %i.ac = extractelement <4 x float> %i.x, i64 2
  %i.ad = tail call nsz float @llvm.maximumnum.f32(float %i.ab, float %i.ac)
  %i.ae = extractelement <4 x float> %i.x, i64 3
  %i.af = tail call nsz float @llvm.maximumnum.f32(float %i.ad, float %i.ae)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.ah = load <4 x float>, ptr %i.ag, align 4
  %i.ai = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ah) ; 4 uses
  %i.aj = extractelement <4 x float> %i.ai, i64 0
  %i.ak = tail call nsz float @llvm.maximumnum.f32(float %i.af, float %i.aj)
  %i.al = extractelement <4 x float> %i.ai, i64 1
  %i.am = tail call nsz float @llvm.maximumnum.f32(float %i.ak, float %i.al)
  %i.an = extractelement <4 x float> %i.ai, i64 2
  %i.ao = tail call nsz float @llvm.maximumnum.f32(float %i.am, float %i.an)
  %i.ap = extractelement <4 x float> %i.ai, i64 3
  %i.aq = tail call nsz float @llvm.maximumnum.f32(float %i.ao, float %i.ap)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.as = load <4 x float>, ptr %i.ar, align 4
  %i.at = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.as) ; 4 uses
  %i.au = extractelement <4 x float> %i.at, i64 0
  %i.av = tail call nsz float @llvm.maximumnum.f32(float %i.aq, float %i.au)
  %i.aw = extractelement <4 x float> %i.at, i64 1
  %i.ax = tail call nsz float @llvm.maximumnum.f32(float %i.av, float %i.aw)
  %i.ay = extractelement <4 x float> %i.at, i64 2
  %i.az = tail call nsz float @llvm.maximumnum.f32(float %i.ax, float %i.ay)
  %i.ba = extractelement <4 x float> %i.at, i64 3
  %i.bb = tail call nsz float @llvm.maximumnum.f32(float %i.az, float %i.ba)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.bd = load <4 x float>, ptr %i.bc, align 4
  %i.be = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bd) ; 4 uses
  %i.bf = extractelement <4 x float> %i.be, i64 0
  %i.bg = tail call nsz float @llvm.maximumnum.f32(float %i.bb, float %i.bf)
  %i.bh = extractelement <4 x float> %i.be, i64 1
  %i.bi = tail call nsz float @llvm.maximumnum.f32(float %i.bg, float %i.bh)
  %i.bj = extractelement <4 x float> %i.be, i64 2
  %i.bk = tail call nsz float @llvm.maximumnum.f32(float %i.bi, float %i.bj)
  %i.bl = extractelement <4 x float> %i.be, i64 3
  %i.bm = tail call nsz float @llvm.maximumnum.f32(float %i.bk, float %i.bl)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.bo = load <4 x float>, ptr %i.bn, align 4
  %i.bp = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bo) ; 4 uses
  %i.bq = extractelement <4 x float> %i.bp, i64 0
  %i.br = tail call nsz float @llvm.maximumnum.f32(float %i.bm, float %i.bq)
  %i.bs = extractelement <4 x float> %i.bp, i64 1
  %i.bt = tail call nsz float @llvm.maximumnum.f32(float %i.br, float %i.bs)
  %i.bu = extractelement <4 x float> %i.bp, i64 2
  %i.bv = tail call nsz float @llvm.maximumnum.f32(float %i.bt, float %i.bu)
  %i.bw = extractelement <4 x float> %i.bp, i64 3
  %i.bx = tail call nsz float @llvm.maximumnum.f32(float %i.bv, float %i.bw)
  %i.by = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.bz = load <4 x float>, ptr %i.by, align 4
  %i.ca = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bz) ; 4 uses
  %i.cb = extractelement <4 x float> %i.ca, i64 0
  %i.cc = tail call nsz float @llvm.maximumnum.f32(float %i.bx, float %i.cb)
  %i.cd = extractelement <4 x float> %i.ca, i64 1
  %i.ce = tail call nsz float @llvm.maximumnum.f32(float %i.cc, float %i.cd)
  %i.cf = extractelement <4 x float> %i.ca, i64 2
  %i.cg = tail call nsz float @llvm.maximumnum.f32(float %i.ce, float %i.cf)
  %i.ch = extractelement <4 x float> %i.ca, i64 3
  %i.ci = tail call nsz float @llvm.maximumnum.f32(float %i.cg, float %i.ch)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.ck = load <4 x float>, ptr %i.cj, align 4
  %i.cl = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ck) ; 4 uses
  %i.cm = extractelement <4 x float> %i.cl, i64 0
  %i.cn = tail call nsz float @llvm.maximumnum.f32(float %i.ci, float %i.cm)
  %i.co = extractelement <4 x float> %i.cl, i64 1
  %i.cp = tail call nsz float @llvm.maximumnum.f32(float %i.cn, float %i.co)
  %i.cq = extractelement <4 x float> %i.cl, i64 2
  %i.cr = tail call nsz float @llvm.maximumnum.f32(float %i.cp, float %i.cq)
  %i.cs = extractelement <4 x float> %i.cl, i64 3
  %i.ct = tail call nsz float @llvm.maximumnum.f32(float %i.cr, float %i.cs)
  %i.cu = fdiv float %i.ct, 1.270000e+02          ; 4 uses
  %i.cv = fcmp une float %i.cu, 0.000000e+00
  %i.cw = fdiv float 1.000000e+00, %i.cu
  %.sroa.09.0 = select i1 %i.cv, float %i.cw, float 0.000000e+00 ; 4 uses
  %i.cx = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %.split, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit, !prof !14

.split:                                           ; preds = %._crit_edge
  %i.cz = tail call noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
  %i.da = and i128 %i.cz, 18014398509481984
  %.not36 = icmp eq i128 %i.da, 0
  br i1 %.not36, label %bb.d, label %bb.o

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit: ; preds = %._crit_edge
  %i.db = and i64 %i.cx, 18014398509481984
  %.not = icmp eq i64 %i.db, 0
  br i1 %.not, label %bb.d, label %bb.o

bb.d:                                             ; preds = %.split, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.dc = bitcast float %i.cu to i32              ; 5 uses
  %i.dd = and i32 %i.dc, -2147483648              ; 2 uses
  %i.de = and i32 %i.dc, 2139095040               ; 6 uses
  %i.df = and i32 %i.dc, 8388607                  ; 4 uses
  %i.dg = icmp eq i32 %i.de, 2139095040
  br i1 %i.dg, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dh = icmp eq i32 %i.df, 0
  %..i = select i1 %i.dh, i32 0, i32 512
  %i.di = lshr exact i32 %i.dd, 16
  %i.dj = lshr i32 %i.df, 13
  %i.dk = or disjoint i32 %i.dj, %i.di
  %i.dl = or i32 %i.dk, %..i
  %i.dm = trunc nuw i32 %i.dl to i16
  %i.dn = or disjoint i16 %i.dm, 31744
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.f:                                             ; preds = %bb.d
  %i.do = lshr exact i32 %i.dd, 16                ; 4 uses
  %i.dp = lshr exact i32 %i.de, 23                ; 2 uses
  %i.dq = icmp samesign ugt i32 %i.de, 1191182336
  br i1 %i.dq, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dr = icmp samesign ult i32 %i.de, 947912704
  br i1 %i.dr, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ds = trunc nuw i32 %i.do to i16
  %i.dt = or disjoint i16 %i.ds, 31744
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.i:                                             ; preds = %bb.g
  %i.du = lshr exact i32 %i.de, 13
  %i.dv = add nuw nsw i32 %i.du, 16384
  %i.dw = lshr i32 %i.df, 13
  %i.dx = and i32 %i.dc, 4096
  %i.dy = icmp ne i32 %i.dx, 0
  %i.dz = and i32 %i.dc, 12287
  %i.ea = icmp ne i32 %i.dz, 0
  %or.cond.not.i = and i1 %i.dy, %i.ea
  %i.eb = or disjoint i32 %i.dv, %i.dw
  %i.ec = or i32 %i.eb, %i.do
  %i.ed = trunc i32 %i.ec to i16
  %i.ee = zext i1 %or.cond.not.i to i16
  %spec.select7.i = add i16 %i.ed, %i.ee
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.j:                                             ; preds = %bb.g
  %i.ef = icmp samesign ult i32 %i.de, 855638016
  br i1 %i.ef, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eg = sub nsw i32 126, %i.dp
  %i.eh = or disjoint i32 %i.df, 8388608          ; 3 uses
  %i.ei = lshr i32 %i.eh, %i.eg                   ; 2 uses
  %i.ej = sub nsw i32 29, %i.dp
  %i.ek = and i32 %i.ej, 31                       ; 2 uses
  %i.el = shl nuw i32 1, %i.ek
  %i.em = and i32 %i.el, %i.eh
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.eo = trunc nuw i32 %i.do to i16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.m:                                             ; preds = %bb.k
  %i.ep = shl i32 3, %i.ek
  %i.eq = add nuw i32 %i.ep, 16777215
  %i.er = and i32 %i.eq, %i.eh
  %i.es = icmp ne i32 %i.er, 0
  %i.et = zext i1 %i.es to i32
  %spec.select.i = add nuw nsw i32 %i.ei, %i.et
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.sroa.03.0.i = phi i32 [ %i.ei, %bb.k ], [ %spec.select.i, %bb.m ]
  %i.eu = or i32 %.sroa.03.0.i, %i.do
  %i.ev = trunc nuw i32 %i.eu to i16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.o:                                             ; preds = %.split, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.ew = tail call fastcc noundef i16 @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.cu) #30
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit: ; preds = %bb.n, %bb.l, %bb.i, %bb.h, %bb.e, %bb.o
  %.sroa.014.0 = phi i16 [ %i.ew, %bb.o ], [ %i.dn, %bb.e ], [ %i.dt, %bb.h ], [ %i.eo, %bb.l ], [ %i.ev, %bb.n ], [ %spec.select7.i, %bb.i ]
  store i16 %.sroa.014.0, ptr %.sroa.0.042, align 2
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0.042, i64 2
  call void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.ex, ptr noundef nonnull %i.f, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k)
  %.sroa.022.0.copyload = load ptr, ptr %i.a, align 8 ; 7 uses
  %.sroa.423.0.copyload = load ptr, ptr %.sroa.423.0..sroa_idx, align 8 ; 7 uses
  %.sroa.525.0.copyload = load i64, ptr %.sroa.525.0..sroa_idx, align 8 ; 8 uses
  %.sroa.726.0.copyload = load i64, ptr %.sroa.726.0..sroa_idx, align 8 ; 7 uses
  %i.ey = icmp ult i64 %.sroa.525.0.copyload, %.sroa.726.0.copyload
  br i1 %i.ey, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.loopexit

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph: ; preds = %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.022.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.423.0.copyload) ]
  %i.ez = sub nuw i64 %.sroa.726.0.copyload, %.sroa.525.0.copyload ; 3 uses
  %min.iters.check = icmp ult i64 %i.ez, 12
  br i1 %min.iters.check, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph
  %scevgep = getelementptr i8, ptr %.sroa.022.0.copyload, i64 %.sroa.525.0.copyload
  %scevgep58 = getelementptr i8, ptr %.sroa.022.0.copyload, i64 %.sroa.726.0.copyload
  %i.fa = shl i64 %.sroa.525.0.copyload, 2
  %scevgep59 = getelementptr i8, ptr %.sroa.423.0.copyload, i64 %i.fa
  %i.fb = shl i64 %.sroa.726.0.copyload, 2
  %scevgep60 = getelementptr i8, ptr %.sroa.423.0.copyload, i64 %i.fb
  %bound0 = icmp ult ptr %scevgep, %scevgep60
  %bound1 = icmp ult ptr %scevgep59, %scevgep58
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ez, -4                      ; 3 uses
  %i.fc = add i64 %.sroa.525.0.copyload, %n.vec
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.09.0, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fd = add nuw i64 %.sroa.525.0.copyload, %index ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.022.0.copyload, i64 %i.fd
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.sroa.423.0.copyload, i64 %i.fd
  %wide.load = load <4 x float>, ptr %i.ff, align 4, !alias.scope !811
  %i.fg = fmul <4 x float> %broadcast.splat, %wide.load
  %i.fh = tail call <4 x float> @llvm.round.v4f32(<4 x float> %i.fg)
  %i.fi = tail call <4 x i8> @llvm.fptosi.sat.v4i8.v4f32(<4 x float> %i.fh)
  store <4 x i8> %i.fi, ptr %i.fe, align 1, !alias.scope !812, !noalias !811
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %middle.block, label %vector.body, !llvm.loop !809

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ez, %n.vec
  br i1 %cmp.n, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.loopexit, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader: ; preds = %vector.memcheck, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph, %middle.block
  %.sroa.525.040.ph = phi i64 [ %.sroa.525.0.copyload, %vector.memcheck ], [ %.sroa.525.0.copyload, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph ], [ %i.fc, %middle.block ] ; 6 uses
  %i.fk = sub i64 %.sroa.726.0.copyload, %.sroa.525.040.ph
  %.neg = add i64 %.sroa.525.040.ph, 1
  %xtraiter = and i64 %i.fk, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol.loopexit, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.022.0.copyload, i64 %.sroa.525.040.ph
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.423.0.copyload, i64 %.sroa.525.040.ph
  %i.fn = add nuw i64 %.sroa.525.040.ph, 1
  %i.fo = load float, ptr %i.fm, align 4, !noundef !7
  %i.fp = fmul float %.sroa.09.0, %i.fo
  %i.fq = tail call float @llvm.round.f32(float %i.fp)
  %i.fr = tail call i8 @llvm.fptosi.sat.i8.f32(float %i.fq)
  store i8 %i.fr, ptr %i.fl, align 1
  br label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol.loopexit

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader
  %.sroa.525.040.unr = phi i64 [ %.sroa.525.040.ph, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader ], [ %i.fn, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol ]
  %i.fs = icmp eq i64 %.sroa.726.0.copyload, %.neg
  br i1 %i.fs, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.loopexit, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol.loopexit, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit
  %.sroa.525.040 = phi i64 [ %i.gc, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit ], [ %.sroa.525.040.unr, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol.loopexit ] ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.022.0.copyload, i64 %.sroa.525.040
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.423.0.copyload, i64 %.sroa.525.040
  %i.fv = add nuw i64 %.sroa.525.040, 1           ; 2 uses
  %i.fw = load float, ptr %i.fu, align 4, !noundef !7
  %i.fx = fmul float %.sroa.09.0, %i.fw
  %i.fy = tail call float @llvm.round.f32(float %i.fx)
  %i.fz = tail call i8 @llvm.fptosi.sat.i8.f32(float %i.fy)
  store i8 %i.fz, ptr %i.ft, align 1
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.022.0.copyload, i64 %i.fv
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.423.0.copyload, i64 %i.fv
  %i.gc = add nuw i64 %.sroa.525.040, 2           ; 2 uses
  %i.gd = load float, ptr %i.gb, align 4, !noundef !7
  %i.ge = fmul float %.sroa.09.0, %i.gd
  %i.gf = tail call float @llvm.round.f32(float %i.ge)
  %i.gg = tail call i8 @llvm.fptosi.sat.i8.f32(float %i.gf)
  store i8 %i.gg, ptr %i.ga, align 1
  %exitcond.not.1 = icmp eq i64 %i.gc, %.sroa.726.0.copyload
  br i1 %exitcond.not.1, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.loopexit, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit, !llvm.loop !810
}

; Function Attrs: nonlazybind uwtable
define noundef float @_RNvXs2_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_9BlockQ8_0NtB5_8GgmlType13vec_dot_unopt(i64 %0, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 271275648142787524) %2, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %3, i64 noundef range(i64 0, 271275648142787524) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw [34 x i8], ptr %1, i64 %2
  %i.d = getelementptr inbounds nuw [34 x i8], ptr %3, i64 %4
  call void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ8_0EBW_EINtB5_7ZipImplBW_BW_E3newB1s_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %1, ptr noundef nonnull %i.c, ptr noundef nonnull %3, ptr noundef nonnull %i.d)
  %.sroa.0.0.copyload = load ptr, ptr %i.b, align 8 ; 2 uses
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.415.0.copyload = load ptr, ptr %.sroa.415.0..sroa_idx, align 8 ; 2 uses
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.516.0.copyload = load i64, ptr %.sroa.516.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %i.e = icmp ult i64 %.sroa.516.0.copyload, %.sroa.7.0.copyload
  br i1 %i.e, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ8_0EBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit.lr.ph, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ8_0EBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit.thread

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ8_0EBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit.lr.ph: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.415.0.copyload) ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ8_0EBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ8_0EBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ8_0EBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit.lr.ph, %bb.w
  %.sroa.0.027 = phi float [ 0.000000e+00, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ8_0EBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit.lr.ph ], [ %i.ds, %bb.w ]
  %.sroa.516.026 = phi i64 [ %.sroa.516.0.copyload, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ8_0EBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit.lr.ph ], [ %i.i, %bb.w ] ; 3 uses
  %i.i = add i64 %.sroa.516.026, 1                ; 2 uses
  %i.j = getelementptr inbounds nuw [34 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.516.026 ; 3 uses
  %i.k = getelementptr inbounds nuw [34 x i8], ptr %.sroa.415.0.copyload, i64 %.sroa.516.026 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 34
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 34
  call void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteraEBW_EINtB5_7ZipImplBW_BW_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !819)
  %.val.i7 = load i64, ptr %i.f, align 8, !alias.scope !819, !noundef !7 ; 4 uses
  %.val11.i = load i64, ptr %i.g, align 8, !alias.scope !819, !noundef !7 ; 2 uses
  %i.p = sub i64 %.val11.i, %.val.i7              ; 4 uses
  %.not.i = icmp eq i64 %.val11.i, %.val.i7
  br i1 %.not.i, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IteraEBX_EINtB6_7ZipImplBX_BX_E4foldlNCINvNtB8_3map8map_foldTRaB2i_EllNCNvXs2_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2z_9BlockQ8_0NtB2z_8GgmlType13vec_dot_unopt0NCINvXsa_NtNtBa_6traits5accumlNtB4h_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ8_0EBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit
  %.val1.i.i = load ptr, ptr %i.a, align 8, !alias.scope !820, !nonnull !7, !noundef !7 ; 2 uses
  %.val.i.i = load ptr, ptr %i.h, align 8, !alias.scope !820, !nonnull !7, !noundef !7 ; 2 uses
  %min.iters.check = icmp ult i64 %i.p, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.p, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ab, %vector.body ]
  %vec.phi36 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ac, %vector.body ]
  %i.q = add i64 %index, %.val.i7                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.q ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %wide.load = load <4 x i8>, ptr %i.r, align 1, !noalias !819
  %wide.load37 = load <4 x i8>, ptr %i.t, align 1, !noalias !819
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %wide.load38 = load <4 x i8>, ptr %i.s, align 1, !noalias !819
  %wide.load39 = load <4 x i8>, ptr %i.u, align 1, !noalias !819
  %i.v = sext <4 x i8> %wide.load to <4 x i32>
  %i.w = sext <4 x i8> %wide.load37 to <4 x i32>
  %i.x = sext <4 x i8> %wide.load38 to <4 x i32>
  %i.y = sext <4 x i8> %wide.load39 to <4 x i32>
  %i.z = mul nsw <4 x i32> %i.x, %i.v
  %i.aa = mul nsw <4 x i32> %i.y, %i.w
  %i.ab = add <4 x i32> %i.z, %vec.phi            ; 2 uses
  %i.ac = add <4 x i32> %i.aa, %vec.phi36         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !817

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ac, %i.ab
  %i.ae = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IteraEBX_EINtB6_7ZipImplBX_BX_E4foldlNCINvNtB8_3map8map_foldTRaB2i_EllNCNvXs2_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2z_9BlockQ8_0NtB2z_8GgmlType13vec_dot_unopt0NCINvXsa_NtNtBa_6traits5accumlNtB4h_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.015.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %i.ae, %middle.block ]
  %.sroa.02.014.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.0.015.i = phi i32 [ %i.am, %scalar.ph ], [ %.sroa.0.015.i.ph, %scalar.ph.preheader ]
  %.sroa.02.014.i = phi i64 [ %i.af, %scalar.ph ], [ %.sroa.02.014.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.af = add nuw i64 %.sroa.02.014.i, 1          ; 2 uses
  %i.ag = add i64 %.sroa.02.014.i, %.val.i7       ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ag
  %.val12.i = load i8, ptr %i.ah, align 1, !noalias !819, !noundef !7
  %.val13.i = load i8, ptr %i.ai, align 1, !noalias !819, !noundef !7
  %i.aj = sext i8 %.val12.i to i32
  %i.ak = sext i8 %.val13.i to i32
  %i.al = mul nsw i32 %i.ak, %i.aj
  %i.am = add i32 %i.al, %.sroa.0.015.i           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.af, %i.p
  br i1 %exitcond.not.i, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IteraEBX_EINtB6_7ZipImplBX_BX_E4foldlNCINvNtB8_3map8map_foldTRaB2i_EllNCNvXs2_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2z_9BlockQ8_0NtB2z_8GgmlType13vec_dot_unopt0NCINvXsa_NtNtBa_6traits5accumlNtB4h_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit.loopexit, label %scalar.ph, !llvm.loop !818

_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IteraEBX_EINtB6_7ZipImplBX_BX_E4foldlNCINvNtB8_3map8map_foldTRaB2i_EllNCNvXs2_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2z_9BlockQ8_0NtB2z_8GgmlType13vec_dot_unopt0NCINvXsa_NtNtBa_6traits5accumlNtB4h_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit.loopexit: ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.ae, %middle.block ], [ %i.am, %scalar.ph ]
  %i.an = sitofp i32 %.lcssa to float
  br label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IteraEBX_EINtB6_7ZipImplBX_BX_E4foldlNCINvNtB8_3map8map_foldTRaB2i_EllNCNvXs2_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2z_9BlockQ8_0NtB2z_8GgmlType13vec_dot_unopt0NCINvXsa_NtNtBa_6traits5accumlNtB4h_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit

_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IteraEBX_EINtB6_7ZipImplBX_BX_E4foldlNCINvNtB8_3map8map_foldTRaB2i_EllNCNvXs2_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2z_9BlockQ8_0NtB2z_8GgmlType13vec_dot_unopt0NCINvXsa_NtNtBa_6traits5accumlNtB4h_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit: ; preds = %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IteraEBX_EINtB6_7ZipImplBX_BX_E4foldlNCINvNtB8_3map8map_foldTRaB2i_EllNCNvXs2_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2z_9BlockQ8_0NtB2z_8GgmlType13vec_dot_unopt0NCINvXsa_NtNtBa_6traits5accumlNtB4h_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit.loopexit, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ8_0EBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit
  %.sroa.0.0.lcssa.i = phi float [ 0.000000e+00, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ8_0EBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit ], [ %i.an, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IteraEBX_EINtB6_7ZipImplBX_BX_E4foldlNCINvNtB8_3map8map_foldTRaB2i_EllNCNvXs2_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2z_9BlockQ8_0NtB2z_8GgmlType13vec_dot_unopt0NCINvXsa_NtNtBa_6traits5accumlNtB4h_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit.loopexit ]
  %i.ao = load i16, ptr %i.j, align 2, !noundef !7 ; 6 uses
  %i.ap = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %.split, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit, !prof !14

.split:                                           ; preds = %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IteraEBX_EINtB6_7ZipImplBX_BX_E4foldlNCINvNtB8_3map8map_foldTRaB2i_EllNCNvXs2_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2z_9BlockQ8_0NtB2z_8GgmlType13vec_dot_unopt0NCINvXsa_NtNtBa_6traits5accumlNtB4h_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit
  %i.ar = tail call noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
  %i.as = and i128 %i.ar, 18014398509481984
end_hunk_0
begin_hunk_1_@_RNvXs3_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_9BlockQ8_1NtB5_8GgmlType13vec_dot_unopt:bb.a
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit14

bb.u:                                             ; preds = %bb.q
  %i.dj = lshr exact i16 %i.cp, 10
  %narrow.i11 = add nuw nsw i16 %i.dj, 112
  %i.dk = zext nneg i16 %narrow.i11 to i32
  %i.dl = shl nuw nsw i32 %i.dk, 23
  %i.dm = shl nuw nsw i32 %i.cr, 13
  %i.dn = or disjoint i32 %i.dl, %i.dm
  %i.do = or disjoint i32 %i.dn, %i.cv
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit14

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit14: ; preds = %bb.n, %bb.r, %bb.s, %bb.t, %bb.u
  %.sroa.0.0.i12 = phi i32 [ %i.cm, %bb.n ], [ %i.cx, %bb.r ], [ %i.da, %bb.s ], [ %i.di, %bb.t ], [ %i.do, %bb.u ]
  %i.dp = bitcast i32 %.sroa.0.0.i12 to float
  br label %bb.w

bb.v:                                             ; preds = %.split21, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit10
  %i.dq = tail call fastcc noundef float @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.cd) #30
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit14
  %.sroa.06.0 = phi float [ %i.dq, %bb.v ], [ %i.dp, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit14 ]
  %i.dr = fmul float %i.cc, %.sroa.06.0
  %i.ds = fadd float %.sroa.0.027, %i.dr          ; 2 uses
  %exitcond.not = icmp eq i64 %i.i, %.sroa.7.0.copyload
  br i1 %exitcond.not, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ8_1EBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit.thread, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ8_1EBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit
}

; Function Attrs: nonlazybind uwtable
define noundef float @_RNvXs3_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_9BlockQ8_1NtB5_8GgmlType7vec_dot(i64 noundef %0, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 256204778801521551) %2, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %3, i64 noundef range(i64 0, 256204778801521551) %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef float @_RNvXs3_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_9BlockQ8_1NtB5_8GgmlType13vec_dot_unopt(i64 poison, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %3, i64 noundef %4)
  ret float %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_9BlockQ8_1NtB5_8GgmlType8to_float(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %0, i64 noundef range(i64 0, 256204778801521551) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw [36 x i8], ptr %0, i64 %1
  %i.e = and i64 %3, 31
  %i.f = and i64 %3, 2305843009213693920          ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !844
  store ptr %i.g, ptr %i.a, align 8, !alias.scope !845, !noalias !846
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !845, !noalias !846
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !845, !noalias !846
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.f, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !845, !noalias !846
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 32, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !845, !noalias !846
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ8_1EINtBZ_14ChunksExactMutfEEINtB5_7ZipImplBW_B2n_E3newB1s_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.c, ptr noundef nonnull %0, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !844
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.j = load i64, ptr %i.h, align 8, !alias.scope !847, !noalias !848, !noundef !7 ; 2 uses
  %i.k = load i64, ptr %i.i, align 8, !alias.scope !847, !noalias !848, !noundef !7
  %i.l = icmp ult i64 %i.j, %i.k
  br i1 %i.l, label %.lr.ph, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.715.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  br label %bb.b

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.loopexit: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol.loopexit, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit, %middle.block, %bb.m
  %i.n = load i64, ptr %i.h, align 8, !alias.scope !847, !noalias !848, !noundef !7 ; 2 uses
  %i.o = load i64, ptr %i.i, align 8, !alias.scope !847, !noalias !848, !noundef !7
  %i.p = icmp ult i64 %i.n, %i.o
  br i1 %i.p, label %bb.b, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread._crit_edge

bb.b:                                             ; preds = %.lr.ph, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.loopexit
  %i.q = phi i64 [ %i.j, %.lr.ph ], [ %i.n, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.loopexit ] ; 3 uses
  %i.r = add nuw i64 %i.q, 1
  store i64 %i.r, ptr %i.h, align 8, !alias.scope !847, !noalias !848
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !847, !noalias !848, !nonnull !7, !noundef !7
  %i.s = getelementptr inbounds nuw [36 x i8], ptr %.val.i, i64 %i.q ; 3 uses
  %i.t = call { ptr, i64 } @_RNvXs1y_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_14ChunksExactMutfENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.m, i64 noundef %i.q), !noalias !848 ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.t, 0        ; 3 uses
  %i.v = extractvalue { ptr, i64 } %i.t, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.w = load i16, ptr %i.s, align 2, !noundef !7 ; 6 uses
  %i.x = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.split, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit, !prof !14

.split:                                           ; preds = %bb.b
  %i.z = call noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
  %i.aa = and i128 %i.z, 18014398509481984
  %.not24 = icmp eq i128 %i.aa, 0
  br i1 %.not24, label %bb.c, label %bb.l

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit: ; preds = %bb.b
  %i.ab = and i64 %i.x, 18014398509481984
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %bb.c, label %bb.l

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread._crit_edge: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.loopexit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.c:                                             ; preds = %.split, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.ac = and i16 %i.w, 32767
  %i.ad = icmp eq i16 %i.ac, 0
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = zext i16 %i.w to i32
  %i.af = shl nuw i32 %i.ae, 16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.e:                                             ; preds = %bb.c
  %i.ag = and i16 %i.w, -32768
  %i.ah = zext i16 %i.ag to i32                   ; 2 uses
  %i.ai = and i16 %i.w, 31744                     ; 3 uses
  %i.aj = and i16 %i.w, 1023                      ; 3 uses
  %i.ak = zext nneg i16 %i.aj to i32              ; 3 uses
  %i.al = icmp eq i16 %i.ai, 31744
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.am = icmp eq i16 %i.aj, 0
  %i.an = shl nuw i32 %i.ah, 16                   ; 2 uses
  br i1 %i.am, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ao = shl nuw i32 %i.ah, 16                   ; 2 uses
  %i.ap = icmp eq i16 %i.ai, 0
  br i1 %i.ap, label %bb.j, label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.aq = or disjoint i32 %i.an, 2139095040
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.i:                                             ; preds = %bb.f
  %i.ar = shl nuw nsw i32 %i.ak, 13
  %i.as = or disjoint i32 %i.an, %i.ar
  %i.at = or i32 %i.as, 2143289344
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.j:                                             ; preds = %bb.g
  %i.au = call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.aj, i1 false)
  %i.av = zext nneg i16 %i.au to i32              ; 2 uses
  %i.aw = add nuw nsw i32 %i.av, 8
  %i.ax = shl i32 %i.ak, %i.aw
  %i.ay = and i32 %i.ax, 8388607
  %reass.sub.i = or disjoint i32 %i.ao, 989855744
  %i.az = shl nuw nsw i32 %i.av, 23
  %i.ba = sub nuw nsw i32 %reass.sub.i, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.ay
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.k:                                             ; preds = %bb.g
  %i.bc = lshr exact i16 %i.ai, 10
  %narrow.i = add nuw nsw i16 %i.bc, 112
  %i.bd = zext nneg i16 %narrow.i to i32
  %i.be = shl nuw nsw i32 %i.bd, 23
  %i.bf = shl nuw nsw i32 %i.ak, 13
  %i.bg = or disjoint i32 %i.be, %i.bf
  %i.bh = or disjoint i32 %i.bg, %i.ao
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit: ; preds = %bb.d, %bb.h, %bb.i, %bb.j, %bb.k
  %.sroa.0.0.i = phi i32 [ %i.af, %bb.d ], [ %i.aq, %bb.h ], [ %i.at, %bb.i ], [ %i.bb, %bb.j ], [ %i.bh, %bb.k ]
  %i.bi = bitcast i32 %.sroa.0.0.i to float
  br label %bb.m

bb.l:                                             ; preds = %.split, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.bj = call fastcc noundef float @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.w) #30
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit
  %.sroa.0.0 = phi float [ %i.bj, %bb.l ], [ %i.bi, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit ] ; 6 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.v
  %i.bl = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.s, i64 36
  call void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %i.u, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.bm)
  %.sroa.010.0.copyload = load ptr, ptr %i.b, align 8 ; 9 uses
  %.sroa.412.0.copyload = load ptr, ptr %.sroa.412.0..sroa_idx, align 8 ; 9 uses
  %.sroa.514.0.copyload = load i64, ptr %.sroa.514.0..sroa_idx, align 8 ; 8 uses
  %.sroa.715.0.copyload = load i64, ptr %.sroa.715.0..sroa_idx, align 8 ; 7 uses
  %i.bn = icmp ult i64 %.sroa.514.0.copyload, %.sroa.715.0.copyload
  br i1 %i.bn, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.loopexit

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph: ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.010.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.412.0.copyload) ]
  %i.bo = sub nuw i64 %.sroa.715.0.copyload, %.sroa.514.0.copyload ; 3 uses
  %min.iters.check = icmp ult i64 %i.bo, 8
  br i1 %min.iters.check, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph
  %i.bp = shl i64 %.sroa.514.0.copyload, 2
  %scevgep = getelementptr i8, ptr %.sroa.010.0.copyload, i64 %i.bp
  %i.bq = shl i64 %.sroa.715.0.copyload, 2
  %scevgep30 = getelementptr i8, ptr %.sroa.010.0.copyload, i64 %i.bq
  %scevgep31 = getelementptr i8, ptr %.sroa.412.0.copyload, i64 %.sroa.514.0.copyload
  %scevgep32 = getelementptr i8, ptr %.sroa.412.0.copyload, i64 %.sroa.715.0.copyload
  %bound0 = icmp ult ptr %scevgep, %scevgep32
  %bound1 = icmp ult ptr %scevgep31, %scevgep30
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bo, -8                      ; 3 uses
  %i.br = add i64 %.sroa.514.0.copyload, %n.vec
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.0.0, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bs = add nuw i64 %.sroa.514.0.copyload, %index ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.010.0.copyload, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.412.0.copyload, i64 %i.bs ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %wide.load = load <4 x i8>, ptr %i.bu, align 1, !alias.scope !849
  %wide.load33 = load <4 x i8>, ptr %i.bv, align 1, !alias.scope !849
  %i.bw = sitofp <4 x i8> %wide.load to <4 x float>
  %i.bx = sitofp <4 x i8> %wide.load33 to <4 x float>
  %i.by = fmul <4 x float> %broadcast.splat, %i.bw
  %i.bz = fmul <4 x float> %broadcast.splat, %i.bx
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store <4 x float> %i.by, ptr %i.bt, align 4, !alias.scope !850, !noalias !849
  store <4 x float> %i.bz, ptr %i.ca, align 4, !alias.scope !850, !noalias !849
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !841

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.loopexit, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader: ; preds = %vector.memcheck, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph, %middle.block
  %.sroa.514.025.ph = phi i64 [ %.sroa.514.0.copyload, %vector.memcheck ], [ %.sroa.514.0.copyload, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph ], [ %i.br, %middle.block ] ; 4 uses
  %i.cc = sub i64 %.sroa.715.0.copyload, %.sroa.514.025.ph
  %xtraiter = and i64 %i.cc, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol.loopexit, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol
  %.sroa.514.025.prol = phi i64 [ %i.cf, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol ], [ %.sroa.514.025.ph, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol ], [ 0, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.010.0.copyload, i64 %.sroa.514.025.prol
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.412.0.copyload, i64 %.sroa.514.025.prol
  %i.cf = add nuw i64 %.sroa.514.025.prol, 1      ; 2 uses
  %i.cg = load i8, ptr %i.ce, align 1, !noundef !7
  %i.ch = sitofp i8 %i.cg to float
  %i.ci = fmul float %.sroa.0.0, %i.ch
  store float %i.ci, ptr %i.cd, align 4
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol.loopexit, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol, !llvm.loop !842

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader
  %.sroa.514.025.unr = phi i64 [ %.sroa.514.025.ph, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader ], [ %i.cf, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol ]
  %i.cj = sub i64 %.sroa.514.025.ph, %.sroa.715.0.copyload
  %i.ck = icmp ugt i64 %i.cj, -4
  br i1 %i.ck, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.loopexit, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol.loopexit, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit
  %.sroa.514.025 = phi i64 [ %i.df, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit ], [ %.sroa.514.025.unr, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol.loopexit ] ; 6 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.010.0.copyload, i64 %.sroa.514.025
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.412.0.copyload, i64 %.sroa.514.025
  %i.cn = add nuw i64 %.sroa.514.025, 1           ; 2 uses
  %i.co = load i8, ptr %i.cm, align 1, !noundef !7
  %i.cp = sitofp i8 %i.co to float
  %i.cq = fmul float %.sroa.0.0, %i.cp
  store float %i.cq, ptr %i.cl, align 4
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.010.0.copyload, i64 %i.cn
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.412.0.copyload, i64 %i.cn
  %i.ct = add nuw i64 %.sroa.514.025, 2           ; 2 uses
  %i.cu = load i8, ptr %i.cs, align 1, !noundef !7
  %i.cv = sitofp i8 %i.cu to float
  %i.cw = fmul float %.sroa.0.0, %i.cv
  store float %i.cw, ptr %i.cr, align 4
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.010.0.copyload, i64 %i.ct
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.412.0.copyload, i64 %i.ct
  %i.cz = add nuw i64 %.sroa.514.025, 3           ; 2 uses
  %i.da = load i8, ptr %i.cy, align 1, !noundef !7
  %i.db = sitofp i8 %i.da to float
  %i.dc = fmul float %.sroa.0.0, %i.db
  store float %i.dc, ptr %i.cx, align 4
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.010.0.copyload, i64 %i.cz
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.412.0.copyload, i64 %i.cz
  %i.df = add nuw i64 %.sroa.514.025, 4           ; 2 uses
  %i.dg = load i8, ptr %i.de, align 1, !noundef !7
  %i.dh = sitofp i8 %i.dg to float
  %i.di = fmul float %.sroa.0.0, %i.dh
  store float %i.di, ptr %i.dd, align 4
  %exitcond.not.3 = icmp eq i64 %i.df, %.sroa.715.0.copyload
  br i1 %exitcond.not.3, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.loopexit, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IteraEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit, !llvm.loop !843
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ2KNtB5_8GgmlType10from_float(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef range(i64 0, 109802048057794951) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 31 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RINvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils22group_for_quantizationNtNtB4_8k_quants8BlockQ2KEB6_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef %3)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.f = load i64, ptr %i.c, align 8, !range !22, !noundef !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !7 ; 3 uses
  %i.i = icmp ult i64 %i.h, 384307168202282326
  call void @llvm.assume(i1 %i.i)
  %.idx = mul nuw nsw i64 %i.h, 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store ptr %i.j, ptr %.sroa.6.0..sroa_idx, align 8
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ2KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ2KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.preheader

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ2KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.preheader: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ2KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit

.loopexit165:                                     ; preds = %bb.ad, %bb.aq
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.loopexit:             ; preds = %.lr.ph.preheader, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %.lr.ph.7, %.lr.ph.8, %.lr.ph.9, %.lr.ph.10, %.lr.ph.11, %.lr.ph.12, %.lr.ph.13, %.lr.ph.14, %.lr.ph.15
  %lpad.loopexit363 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.loopexit.split-lp:    ; preds = %.lr.ph.16
  %lpad.loopexit.split-lp364 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.b, %bb.d, %bb.p, %bb.r
  %lpad.loopexit172 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.loopexit, %.loopexit.split-lp.loopexit.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit165
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit165 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit172, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit363, %.loopexit.split-lp.loopexit.loopexit ], [ %lpad.loopexit.split-lp364, %.loopexit.split-lp.loopexit.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ2KRSfEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ2KRSfEEEB1x_.exit unwind label %bb.ch

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ2KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ2KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.preheader, %.loopexit.1
  %i.s = phi ptr [ %i.jw, %.loopexit.1 ], [ %i.e, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ2KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.preheader ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !855)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.t, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !855, !noalias !856
  %.sroa.0.0.copyload = load ptr, ptr %i.s, align 8, !noalias !855 ; 27 uses
  %.sroa.6.0..sroa_idx113 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx113, align 8, !noalias !855 ; 19 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !855 ; 36 uses
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ2KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread, label %.preheader168

.preheader168:                                    ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ2KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.u = icmp eq i64 %.sroa.7.0.copyload, 0
  br i1 %i.u, label %.preheader167, label %.lr.ph.preheader

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ2KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ2KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit, %.loopexit.1, %bb.a
  call void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ2KRSfEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

.lr.ph.preheader:                                 ; preds = %.preheader168
  %i.v = call i64 @llvm.umin.i64(i64 %.sroa.7.0.copyload, i64 16) ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload, i64 %i.v ; 2 uses
  %i.x = sub nuw nsw i64 %.sroa.7.0.copyload, %i.v ; 3 uses
  %i.y = invoke { float, float } @_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils16make_qkx1_quants(i32 noundef 3, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.6.0.copyload, i64 noundef %i.v)
          to label %bb.br unwind label %.loopexit.split-lp.loopexit.loopexit ; 2 uses

end_hunk_1
begin_hunk_2_@_RNvXs7_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ5KNtB5_8GgmlType8to_float:bb.a
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs8_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ6KNtB5_8GgmlType10from_float(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef range(i64 0, 43920819223117981) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [64 x i8], align 4                ; 6 uses
  %i.c = alloca [256 x i8], align 16              ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.c, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %.idx = mul nuw nsw i64 %3, 210
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.e = icmp eq i64 %3, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.760.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %vector.body113
  %.sroa.0.0100 = phi ptr [ %0, %.lr.ph ], [ %i.gz, %vector.body113 ] ; 3 uses
  %.sroa.03.099 = phi ptr [ %2, %.lr.ph ], [ %i.ad, %vector.body113 ] ; 16 uses
  br label %bb.c

._crit_edge:                                      ; preds = %vector.body113, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.c:                                             ; preds = %bb.b, %bb.c
  %.sroa.05.089 = phi float [ 0.000000e+00, %bb.b ], [ %.sroa.05.1, %bb.c ]
  %.sroa.06.088 = phi float [ 0.000000e+00, %bb.b ], [ %.sroa.06.1, %bb.c ] ; 2 uses
  %.sroa.0.066.idx87 = phi i64 [ 0, %bb.b ], [ %.sroa.0.066.add, %bb.c ] ; 2 uses
  %.sroa.7.086 = phi i64 [ 0, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  %.sroa.0.066.ptr = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.066.idx87
  %.sroa.0.066.add = add nuw nsw i64 %.sroa.0.066.idx87, 4 ; 2 uses
  %i.v = add nuw nsw i64 %.sroa.7.086, 1
  %i.w = shl nuw nsw i64 %.sroa.7.086, 4          ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0100, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.w
  %i.z = call noundef float @_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils14make_qx_quants(i64 noundef 16, i32 noundef 32, ptr noundef nonnull %i.x, ptr noundef nonnull %i.y, i32 noundef 1, ptr noundef null) ; 3 uses
  store float %i.z, ptr %.sroa.0.066.ptr, align 4
  %i.aa = call float @llvm.fabs.f32(float %i.z)   ; 2 uses
  %i.ab = fcmp ogt float %i.aa, %.sroa.06.088     ; 2 uses
  %.sroa.06.1 = select i1 %i.ab, float %i.aa, float %.sroa.06.088
  %.sroa.05.1 = select i1 %i.ab, float %i.z, float %.sroa.05.089 ; 2 uses
  %i.ac = icmp eq i64 %.sroa.0.066.add, 64
  br i1 %i.ac, label %bb.d, label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.03.099, i64 210 ; 2 uses
  %i.ae = fdiv float -1.280000e+02, %.sroa.05.1   ; 5 uses
  %i.af = fdiv float 1.000000e+00, %i.ae          ; 2 uses
  %i.ag = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %.split, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit, !prof !14

.split:                                           ; preds = %bb.d
  %i.ai = call noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
  %i.aj = and i128 %i.ai, 18014398509481984
  %.not82 = icmp eq i128 %i.aj, 0
  br i1 %.not82, label %bb.e, label %bb.p

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit: ; preds = %bb.d
  %i.ak = and i64 %i.ag, 18014398509481984
  %.not = icmp eq i64 %i.ak, 0
  br i1 %.not, label %bb.e, label %bb.p

bb.e:                                             ; preds = %.split, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.al = bitcast float %i.af to i32              ; 5 uses
  %i.am = and i32 %i.al, -2147483648              ; 2 uses
  %i.an = and i32 %i.al, 2139095040               ; 6 uses
  %i.ao = and i32 %i.al, 8388607                  ; 4 uses
  %i.ap = icmp eq i32 %i.an, 2139095040
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = icmp eq i32 %i.ao, 0
  %..i = select i1 %i.aq, i32 0, i32 512
  %i.ar = lshr exact i32 %i.am, 16
  %i.as = lshr i32 %i.ao, 13
  %i.at = or disjoint i32 %i.as, %i.ar
  %i.au = or i32 %i.at, %..i
  %i.av = trunc nuw i32 %i.au to i16
  %i.aw = or disjoint i16 %i.av, 31744
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.g:                                             ; preds = %bb.e
  %i.ax = lshr exact i32 %i.am, 16                ; 4 uses
  %i.ay = lshr exact i32 %i.an, 23                ; 2 uses
  %i.az = icmp samesign ugt i32 %i.an, 1191182336
  br i1 %i.az, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = icmp samesign ult i32 %i.an, 947912704
  br i1 %i.ba, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bb = trunc nuw i32 %i.ax to i16
  %i.bc = or disjoint i16 %i.bb, 31744
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.j:                                             ; preds = %bb.h
  %i.bd = lshr exact i32 %i.an, 13
  %i.be = add nuw nsw i32 %i.bd, 16384
  %i.bf = lshr i32 %i.ao, 13
  %i.bg = and i32 %i.al, 4096
  %i.bh = icmp ne i32 %i.bg, 0
  %i.bi = and i32 %i.al, 12287
  %i.bj = icmp ne i32 %i.bi, 0
  %or.cond.not.i = and i1 %i.bh, %i.bj
  %i.bk = or disjoint i32 %i.be, %i.bf
  %i.bl = or i32 %i.bk, %i.ax
  %i.bm = trunc i32 %i.bl to i16
  %i.bn = zext i1 %or.cond.not.i to i16
  %spec.select7.i = add i16 %i.bm, %i.bn
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.k:                                             ; preds = %bb.h
  %i.bo = icmp samesign ult i32 %i.an, 855638016
  br i1 %i.bo, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = sub nsw i32 126, %i.ay
  %i.bq = or disjoint i32 %i.ao, 8388608          ; 3 uses
  %i.br = lshr i32 %i.bq, %i.bp                   ; 2 uses
  %i.bs = sub nsw i32 29, %i.ay
  %i.bt = and i32 %i.bs, 31                       ; 2 uses
  %i.bu = shl nuw i32 1, %i.bt
  %i.bv = and i32 %i.bu, %i.bq
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bx = trunc nuw i32 %i.ax to i16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.n:                                             ; preds = %bb.l
  %i.by = shl i32 3, %i.bt
  %i.bz = add nuw i32 %i.by, 16777215
  %i.ca = and i32 %i.bz, %i.bq
  %i.cb = icmp ne i32 %i.ca, 0
  %i.cc = zext i1 %i.cb to i32
  %spec.select.i = add nuw nsw i32 %i.br, %i.cc
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %.sroa.03.0.i = phi i32 [ %i.br, %bb.l ], [ %spec.select.i, %bb.n ]
  %i.cd = or i32 %.sroa.03.0.i, %i.ax
  %i.ce = trunc nuw i32 %i.cd to i16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.p:                                             ; preds = %.split, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.cf = call fastcc noundef i16 @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.af) #30
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit: ; preds = %bb.o, %bb.m, %bb.j, %bb.i, %bb.f, %bb.p
  %.sroa.033.0 = phi i16 [ %i.cf, %bb.p ], [ %i.aw, %bb.f ], [ %i.bc, %bb.i ], [ %i.bx, %bb.m ], [ %i.ce, %bb.o ], [ %spec.select7.i, %bb.j ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.03.099, i64 208 ; 3 uses
  store i16 %.sroa.033.0, ptr %i.cg, align 2
  %.ptr83 = getelementptr inbounds nuw i8, ptr %.sroa.03.099, i64 192
  call void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.ptr83, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f)
  %.sroa.056.0.copyload = load ptr, ptr %i.a, align 8 ; 7 uses
  %.sroa.457.0.copyload = load ptr, ptr %.sroa.457.0..sroa_idx, align 8 ; 7 uses
  %.sroa.559.0.copyload = load i64, ptr %.sroa.559.0..sroa_idx, align 8 ; 8 uses
  %.sroa.760.0.copyload = load i64, ptr %.sroa.760.0..sroa_idx, align 8 ; 7 uses
  %i.ch = icmp ult i64 %.sroa.559.0.copyload, %.sroa.760.0.copyload
  br i1 %i.ch, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader.preheader

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph: ; preds = %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.056.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.457.0.copyload) ]
  %i.ci = sub nuw i64 %.sroa.760.0.copyload, %.sroa.559.0.copyload ; 3 uses
  %min.iters.check = icmp ult i64 %i.ci, 8
  br i1 %min.iters.check, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph
  %scevgep = getelementptr i8, ptr %.sroa.056.0.copyload, i64 %.sroa.559.0.copyload
  %scevgep121 = getelementptr i8, ptr %.sroa.056.0.copyload, i64 %.sroa.760.0.copyload
  %i.cj = shl i64 %.sroa.559.0.copyload, 2
  %scevgep122 = getelementptr i8, ptr %.sroa.457.0.copyload, i64 %i.cj
  %i.ck = shl i64 %.sroa.760.0.copyload, 2
  %scevgep123 = getelementptr i8, ptr %.sroa.457.0.copyload, i64 %i.ck
  %bound0 = icmp ult ptr %scevgep, %scevgep123
  %bound1 = icmp ult ptr %scevgep122, %scevgep121
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader, label %vector.ph124

vector.ph124:                                     ; preds = %vector.memcheck
  %n.vec = and i64 %i.ci, -4                      ; 3 uses
  %i.cl = add i64 %.sroa.559.0.copyload, %n.vec
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ae, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph124
  %index126 = phi i64 [ 0, %vector.ph124 ], [ %index.next128, %vector.body125 ] ; 2 uses
  %i.cm = add nuw i64 %.sroa.559.0.copyload, %index126 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.056.0.copyload, i64 %i.cm
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.sroa.457.0.copyload, i64 %i.cm
  %wide.load127 = load <4 x float>, ptr %i.co, align 4, !alias.scope !1316
  %i.cp = fmul <4 x float> %broadcast.splat, %wide.load127
  %i.cq = call <4 x float> @llvm.round.v4f32(<4 x float> %i.cp)
  %i.cr = call <4 x i32> @llvm.fptosi.sat.v4i32.v4f32(<4 x float> %i.cq)
  %i.cs = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.cr, <4 x i32> splat (i32 127))
  %i.ct = trunc <4 x i32> %i.cs to <4 x i8>
  store <4 x i8> %i.ct, ptr %i.cn, align 1, !alias.scope !1317, !noalias !1316
  %index.next128 = add nuw i64 %index126, 4       ; 2 uses
  %i.cu = icmp eq i64 %index.next128, %n.vec
  br i1 %i.cu, label %middle.block129, label %vector.body125, !llvm.loop !1314

middle.block129:                                  ; preds = %vector.body125
  %cmp.n = icmp eq i64 %i.ci, %n.vec
  br i1 %cmp.n, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader.preheader, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader: ; preds = %vector.memcheck, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph, %middle.block129
  %.sroa.559.090.ph = phi i64 [ %.sroa.559.0.copyload, %vector.memcheck ], [ %.sroa.559.0.copyload, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph ], [ %i.cl, %middle.block129 ] ; 6 uses
  %i.cv = sub i64 %.sroa.760.0.copyload, %.sroa.559.090.ph
  %.neg = add i64 %.sroa.559.090.ph, 1
  %xtraiter = and i64 %i.cv, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol.loopexit, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.056.0.copyload, i64 %.sroa.559.090.ph
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.457.0.copyload, i64 %.sroa.559.090.ph
  %i.cy = add nuw i64 %.sroa.559.090.ph, 1
  %i.cz = load float, ptr %i.cx, align 4, !noundef !7
  %i.da = fmul float %i.ae, %i.cz
  %i.db = call float @llvm.round.f32(float %i.da)
  %i.dc = call i32 @llvm.fptosi.sat.i32.f32(float %i.db)
  %i.dd = call i32 @llvm.smin.i32(i32 %i.dc, i32 127)
  %i.de = trunc i32 %i.dd to i8
  store i8 %i.de, ptr %i.cw, align 1
  br label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol.loopexit

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader
  %.sroa.559.090.unr = phi i64 [ %.sroa.559.090.ph, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader ], [ %i.cy, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol ]
  %i.df = icmp eq i64 %.sroa.760.0.copyload, %.neg
  br i1 %i.df, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader.preheader, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol.loopexit, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit
  %.sroa.559.090 = phi i64 [ %i.dr, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit ], [ %.sroa.559.090.unr, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol.loopexit ] ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.056.0.copyload, i64 %.sroa.559.090
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.457.0.copyload, i64 %.sroa.559.090
  %i.di = add nuw i64 %.sroa.559.090, 1           ; 2 uses
  %i.dj = load float, ptr %i.dh, align 4, !noundef !7
  %i.dk = fmul float %i.ae, %i.dj
  %i.dl = call float @llvm.round.f32(float %i.dk)
  %i.dm = call i32 @llvm.fptosi.sat.i32.f32(float %i.dl)
  %i.dn = call i32 @llvm.smin.i32(i32 %i.dm, i32 127)
  %i.do = trunc i32 %i.dn to i8
  store i8 %i.do, ptr %i.dg, align 1
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.056.0.copyload, i64 %i.di
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.457.0.copyload, i64 %i.di
  %i.dr = add nuw i64 %.sroa.559.090, 2           ; 2 uses
  %i.ds = load float, ptr %i.dq, align 4, !noundef !7
  %i.dt = fmul float %i.ae, %i.ds
  %i.du = call float @llvm.round.f32(float %i.dt)
  %i.dv = call i32 @llvm.fptosi.sat.i32.f32(float %i.du)
  %i.dw = call i32 @llvm.smin.i32(i32 %i.dv, i32 127)
  %i.dx = trunc i32 %i.dw to i8
  store i8 %i.dx, ptr %i.dp, align 1
  %exitcond.not.1 = icmp eq i64 %i.dr, %.sroa.760.0.copyload
  br i1 %exitcond.not.1, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader.preheader, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit, !llvm.loop !1315

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader.preheader: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol.loopexit, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit, %middle.block129, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit
  br label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader.preheader, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.backedge
  %.sroa.061.0.idx93 = phi i64 [ %.sroa.061.0.add, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.backedge ], [ 192, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader.preheader ] ; 2 uses
  %.sroa.763.092 = phi i64 [ %i.dy, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.backedge ], [ 0, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader.preheader ] ; 2 uses
  %.sroa.061.0.ptr = getelementptr inbounds nuw i8, ptr %.sroa.03.099, i64 %.sroa.061.0.idx93
  %.sroa.061.0.add = add nuw nsw i64 %.sroa.061.0.idx93, 1 ; 2 uses
  %i.dy = add nuw nsw i64 %.sroa.763.092, 1
  %i.dz = load i8, ptr %.sroa.061.0.ptr, align 1, !noundef !7
  %i.ea = load i16, ptr %i.cg, align 2, !noundef !7 ; 6 uses
  %i.eb = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %.split81, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit52, !prof !14

.split81:                                         ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader
  %i.ed = call noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
  %i.ee = and i128 %i.ed, 18014398509481984
  %.not85 = icmp eq i128 %i.ee, 0
  br i1 %.not85, label %bb.q, label %bb.z

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit52: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader
  %i.ef = and i64 %i.eb, 18014398509481984
  %.not84 = icmp eq i64 %i.ef, 0
  br i1 %.not84, label %bb.q, label %bb.z

vector.body113:                                   ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.backedge
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.03.099, i64 128
  %wide.load115 = load <16 x i8>, ptr %i.c, align 16 ; 2 uses
  %i.eh = and <16 x i8> %wide.load115, splat (i8 15)
  %wide.load116 = load <16 x i8>, ptr %i.h, align 16 ; 2 uses
  %i.ei = and <16 x i8> %wide.load116, splat (i8 15)
  %wide.load117 = load <16 x i8>, ptr %i.i, align 16 ; 2 uses
  %wide.load118 = load <16 x i8>, ptr %i.j, align 16 ; 2 uses
  %i.ej = shl <16 x i8> %wide.load117, splat (i8 4)
  %i.ek = or disjoint <16 x i8> %i.ej, %i.eh
  store <16 x i8> %i.ek, ptr %.sroa.03.099, align 2
  %i.el = shl <16 x i8> %wide.load118, splat (i8 4)
  %i.em = or disjoint <16 x i8> %i.el, %i.ei
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.03.099, i64 32
  store <16 x i8> %i.em, ptr %i.en, align 2
  %i.eo = ashr <16 x i8> %wide.load115, splat (i8 4)
  %i.ep = ashr <16 x i8> %wide.load116, splat (i8 2)
  %i.eq = and <16 x i8> %i.ep, splat (i8 -4)
  %i.er = or <16 x i8> %i.eq, %i.eo
  %i.es = and <16 x i8> %wide.load117, splat (i8 -16)
  %i.et = or <16 x i8> %i.er, %i.es
  %i.eu = shl <16 x i8> %wide.load118, splat (i8 2)
  %i.ev = and <16 x i8> %i.eu, splat (i8 -64)
  %i.ew = or <16 x i8> %i.et, %i.ev
  store <16 x i8> %i.ew, ptr %i.eg, align 2
  %wide.load115.1 = load <16 x i8>, ptr %i.k, align 16 ; 2 uses
  %i.ex = and <16 x i8> %wide.load115.1, splat (i8 15)
  %wide.load116.1 = load <16 x i8>, ptr %i.l, align 16 ; 2 uses
  %i.ey = and <16 x i8> %wide.load116.1, splat (i8 15)
  %wide.load117.1 = load <16 x i8>, ptr %i.m, align 16 ; 2 uses
  %wide.load118.1 = load <16 x i8>, ptr %i.n, align 16 ; 2 uses
  %i.ez = shl <16 x i8> %wide.load117.1, splat (i8 4)
  %i.fa = or disjoint <16 x i8> %i.ez, %i.ex
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.03.099, i64 16
  store <16 x i8> %i.fa, ptr %i.fb, align 2
  %i.fc = shl <16 x i8> %wide.load118.1, splat (i8 4)
  %i.fd = or disjoint <16 x i8> %i.fc, %i.ey
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.03.099, i64 48
  store <16 x i8> %i.fd, ptr %i.fe, align 2
  %i.ff = ashr <16 x i8> %wide.load115.1, splat (i8 4)
  %i.fg = ashr <16 x i8> %wide.load116.1, splat (i8 2)
  %i.fh = and <16 x i8> %i.fg, splat (i8 -4)
  %i.fi = or <16 x i8> %i.fh, %i.ff
  %i.fj = and <16 x i8> %wide.load117.1, splat (i8 -16)
  %i.fk = or <16 x i8> %i.fi, %i.fj
  %i.fl = shl <16 x i8> %wide.load118.1, splat (i8 2)
  %i.fm = and <16 x i8> %i.fl, splat (i8 -64)
  %i.fn = or <16 x i8> %i.fk, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.03.099, i64 144
  store <16 x i8> %i.fn, ptr %i.fo, align 2
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.03.099, i64 160
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.03.099, i64 64
  %wide.load = load <16 x i8>, ptr %i.g, align 16 ; 2 uses
  %i.fr = and <16 x i8> %wide.load, splat (i8 15)
  %wide.load109 = load <16 x i8>, ptr %i.o, align 16 ; 2 uses
  %i.fs = and <16 x i8> %wide.load109, splat (i8 15)
  %wide.load110 = load <16 x i8>, ptr %i.p, align 16 ; 2 uses
  %wide.load111 = load <16 x i8>, ptr %i.q, align 16 ; 2 uses
  %i.ft = shl <16 x i8> %wide.load110, splat (i8 4)
  %i.fu = or disjoint <16 x i8> %i.ft, %i.fr
  store <16 x i8> %i.fu, ptr %i.fq, align 2
  %i.fv = shl <16 x i8> %wide.load111, splat (i8 4)
  %i.fw = or disjoint <16 x i8> %i.fv, %i.fs
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.03.099, i64 96
  store <16 x i8> %i.fw, ptr %i.fx, align 2
  %i.fy = ashr <16 x i8> %wide.load, splat (i8 4)
  %i.fz = ashr <16 x i8> %wide.load109, splat (i8 2)
  %i.ga = and <16 x i8> %i.fz, splat (i8 -4)
  %i.gb = or <16 x i8> %i.ga, %i.fy
  %i.gc = and <16 x i8> %wide.load110, splat (i8 -16)
  %i.gd = or <16 x i8> %i.gb, %i.gc
  %i.ge = shl <16 x i8> %wide.load111, splat (i8 2)
  %i.gf = and <16 x i8> %i.ge, splat (i8 -64)
  %i.gg = or <16 x i8> %i.gd, %i.gf
  store <16 x i8> %i.gg, ptr %i.fp, align 2
  %wide.load.1 = load <16 x i8>, ptr %i.r, align 16 ; 2 uses
  %i.gh = and <16 x i8> %wide.load.1, splat (i8 15)
  %wide.load109.1 = load <16 x i8>, ptr %i.s, align 16 ; 2 uses
  %i.gi = and <16 x i8> %wide.load109.1, splat (i8 15)
  %wide.load110.1 = load <16 x i8>, ptr %i.t, align 16 ; 2 uses
  %wide.load111.1 = load <16 x i8>, ptr %i.u, align 16 ; 2 uses
  %i.gj = shl <16 x i8> %wide.load110.1, splat (i8 4)
  %i.gk = or disjoint <16 x i8> %i.gj, %i.gh
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.03.099, i64 80
  store <16 x i8> %i.gk, ptr %i.gl, align 2
  %i.gm = shl <16 x i8> %wide.load111.1, splat (i8 4)
  %i.gn = or disjoint <16 x i8> %i.gm, %i.gi
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.03.099, i64 112
end_hunk_2
begin_hunk_3_@_RNvXs8_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ6KNtB5_8GgmlType13vec_dot_unopt:bb.a
  store <16 x i8> %i.bg, ptr %i.o, align 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 144
  %wide.load313.1 = load <16 x i8>, ptr %i.bh, align 1 ; 2 uses
  %i.bj = and <16 x i8> %wide.load313.1, splat (i8 15)
  %wide.load314.1 = load <16 x i8>, ptr %i.bi, align 1 ; 4 uses
  %i.bk = shl <16 x i8> %wide.load314.1, splat (i8 4)
  %i.bl = and <16 x i8> %i.bk, splat (i8 48)
  %i.bm = or disjoint <16 x i8> %i.bj, splat (i8 -32)
  %i.bn = add nsw <16 x i8> %i.bm, %i.bl
  store <16 x i8> %i.bn, ptr %i.p, align 16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %wide.load315.1 = load <16 x i8>, ptr %i.bo, align 1 ; 2 uses
  %i.bp = and <16 x i8> %wide.load315.1, splat (i8 15)
  %i.bq = shl <16 x i8> %wide.load314.1, splat (i8 2)
  %i.br = and <16 x i8> %i.bq, splat (i8 48)
  %i.bs = add nsw <16 x i8> %i.br, splat (i8 -32)
  %i.bt = or disjoint <16 x i8> %i.bs, %i.bp
  store <16 x i8> %i.bt, ptr %i.q, align 16
  %i.bu = lshr <16 x i8> %wide.load313.1, splat (i8 4)
  %i.bv = and <16 x i8> %wide.load314.1, splat (i8 48)
  %i.bw = or disjoint <16 x i8> %i.bu, splat (i8 -32)
  %i.bx = add nsw <16 x i8> %i.bw, %i.bv
  store <16 x i8> %i.bx, ptr %i.r, align 16
  %i.by = lshr <16 x i8> %wide.load315.1, splat (i8 4)
  %i.bz = lshr <16 x i8> %wide.load314.1, splat (i8 2)
  %i.ca = and <16 x i8> %i.bz, splat (i8 48)
  %i.cb = add nsw <16 x i8> %i.ca, splat (i8 -32)
  %i.cc = or disjoint <16 x i8> %i.cb, %i.by
  store <16 x i8> %i.cc, ptr %i.s, align 16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aj, i64 160
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %wide.load304 = load <16 x i8>, ptr %i.ce, align 1 ; 2 uses
  %i.cf = and <16 x i8> %wide.load304, splat (i8 15)
  %wide.load305 = load <16 x i8>, ptr %i.cd, align 1 ; 4 uses
  %i.cg = shl <16 x i8> %wide.load305, splat (i8 4)
  %i.ch = and <16 x i8> %i.cg, splat (i8 48)
  %i.ci = or disjoint <16 x i8> %i.cf, splat (i8 -32)
  %i.cj = add nsw <16 x i8> %i.ci, %i.ch
  store <16 x i8> %i.cj, ptr %i.k, align 16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  %wide.load306 = load <16 x i8>, ptr %i.ck, align 1 ; 2 uses
  %i.cl = and <16 x i8> %wide.load306, splat (i8 15)
  %i.cm = shl <16 x i8> %wide.load305, splat (i8 2)
  %i.cn = and <16 x i8> %i.cm, splat (i8 48)
  %i.co = add nsw <16 x i8> %i.cn, splat (i8 -32)
  %i.cp = or disjoint <16 x i8> %i.co, %i.cl
  store <16 x i8> %i.cp, ptr %i.t, align 16
  %i.cq = lshr <16 x i8> %wide.load304, splat (i8 4)
  %i.cr = and <16 x i8> %wide.load305, splat (i8 48)
  %i.cs = or disjoint <16 x i8> %i.cq, splat (i8 -32)
  %i.ct = add nsw <16 x i8> %i.cs, %i.cr
  store <16 x i8> %i.ct, ptr %i.u, align 16
  %i.cu = lshr <16 x i8> %wide.load306, splat (i8 4)
  %i.cv = lshr <16 x i8> %wide.load305, splat (i8 2)
  %i.cw = and <16 x i8> %i.cv, splat (i8 48)
  %i.cx = add nsw <16 x i8> %i.cw, splat (i8 -32)
  %i.cy = or disjoint <16 x i8> %i.cx, %i.cu
  store <16 x i8> %i.cy, ptr %i.v, align 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  %i.da = getelementptr inbounds nuw i8, ptr %i.aj, i64 176
  %wide.load304.1 = load <16 x i8>, ptr %i.cz, align 1 ; 2 uses
  %i.db = and <16 x i8> %wide.load304.1, splat (i8 15)
  %wide.load305.1 = load <16 x i8>, ptr %i.da, align 1 ; 4 uses
  %i.dc = shl <16 x i8> %wide.load305.1, splat (i8 4)
  %i.dd = and <16 x i8> %i.dc, splat (i8 48)
  %i.de = or disjoint <16 x i8> %i.db, splat (i8 -32)
  %i.df = add nsw <16 x i8> %i.de, %i.dd
  store <16 x i8> %i.df, ptr %i.w, align 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.aj, i64 112
  %wide.load306.1 = load <16 x i8>, ptr %i.dg, align 1 ; 2 uses
  %i.dh = and <16 x i8> %wide.load306.1, splat (i8 15)
  %i.di = shl <16 x i8> %wide.load305.1, splat (i8 2)
  %i.dj = and <16 x i8> %i.di, splat (i8 48)
  %i.dk = add nsw <16 x i8> %i.dj, splat (i8 -32)
  %i.dl = or disjoint <16 x i8> %i.dk, %i.dh
  store <16 x i8> %i.dl, ptr %i.x, align 16
  %i.dm = lshr <16 x i8> %wide.load304.1, splat (i8 4)
  %i.dn = and <16 x i8> %wide.load305.1, splat (i8 48)
  %i.do = or disjoint <16 x i8> %i.dm, splat (i8 -32)
  %i.dp = add nsw <16 x i8> %i.do, %i.dn
  store <16 x i8> %i.dp, ptr %i.y, align 16
  %i.dq = lshr <16 x i8> %wide.load306.1, splat (i8 4)
  %i.dr = lshr <16 x i8> %wide.load305.1, splat (i8 2)
  %i.ds = and <16 x i8> %i.dr, splat (i8 48)
  %i.dt = add nsw <16 x i8> %i.ds, splat (i8 -32)
  %i.du = or disjoint <16 x i8> %i.dt, %i.dq
  store <16 x i8> %i.du, ptr %i.z, align 16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.aj, i64 208
  %i.dw = load <4 x float>, ptr %i.c, align 16
  %i.dx = load <4 x float>, ptr %i.l, align 16
  br label %.preheader.preheader

bb.b:                                             ; preds = %.preheader.preheader
  %i.dy = load i16, ptr %i.dv, align 2, !noundef !7 ; 6 uses
  %i.dz = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.ea = icmp eq i64 %i.dz, 0
  br i1 %i.ea, label %.split, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit, !prof !14

.split:                                           ; preds = %bb.b
  %i.eb = call noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
  %i.ec = and i128 %i.eb, 18014398509481984
  %.not95 = icmp eq i128 %i.ec, 0
  br i1 %.not95, label %bb.c, label %bb.l

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit: ; preds = %bb.b
  %i.ed = and i64 %i.dz, 18014398509481984
  %.not = icmp eq i64 %i.ed, 0
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %.split, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.ee = and i16 %i.dy, 32767
  %i.ef = icmp eq i16 %i.ee, 0
  br i1 %i.ef, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.eg = zext i16 %i.dy to i32
  %i.eh = shl nuw i32 %i.eg, 16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.e:                                             ; preds = %bb.c
  %i.ei = and i16 %i.dy, -32768
  %i.ej = zext i16 %i.ei to i32                   ; 2 uses
  %i.ek = and i16 %i.dy, 31744                    ; 3 uses
  %i.el = and i16 %i.dy, 1023                     ; 3 uses
  %i.em = zext nneg i16 %i.el to i32              ; 3 uses
  %i.en = icmp eq i16 %i.ek, 31744
  br i1 %i.en, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.eo = icmp eq i16 %i.el, 0
  %i.ep = shl nuw i32 %i.ej, 16                   ; 2 uses
  br i1 %i.eo, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.eq = shl nuw i32 %i.ej, 16                   ; 2 uses
  %i.er = icmp eq i16 %i.ek, 0
  br i1 %i.er, label %bb.j, label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.es = or disjoint i32 %i.ep, 2139095040
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.i:                                             ; preds = %bb.f
  %i.et = shl nuw nsw i32 %i.em, 13
  %i.eu = or disjoint i32 %i.ep, %i.et
  %i.ev = or i32 %i.eu, 2143289344
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.j:                                             ; preds = %bb.g
  %i.ew = call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.el, i1 false)
  %i.ex = zext nneg i16 %i.ew to i32              ; 2 uses
  %i.ey = add nuw nsw i32 %i.ex, 8
  %i.ez = shl i32 %i.em, %i.ey
  %i.fa = and i32 %i.ez, 8388607
  %reass.sub.i = or disjoint i32 %i.eq, 989855744
  %i.fb = shl nuw nsw i32 %i.ex, 23
  %i.fc = sub nuw nsw i32 %reass.sub.i, %i.fb
  %i.fd = or disjoint i32 %i.fc, %i.fa
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.k:                                             ; preds = %bb.g
  %i.fe = lshr exact i16 %i.ek, 10
  %narrow.i = add nuw nsw i16 %i.fe, 112
  %i.ff = zext nneg i16 %narrow.i to i32
  %i.fg = shl nuw nsw i32 %i.ff, 23
  %i.fh = shl nuw nsw i32 %i.em, 13
  %i.fi = or disjoint i32 %i.fg, %i.fh
  %i.fj = or disjoint i32 %i.fi, %i.eq
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit: ; preds = %bb.d, %bb.h, %bb.i, %bb.j, %bb.k
  %.sroa.0.0.i63 = phi i32 [ %i.eh, %bb.d ], [ %i.es, %bb.h ], [ %i.ev, %bb.i ], [ %i.fd, %bb.j ], [ %i.fj, %bb.k ]
  %i.fk = bitcast i32 %.sroa.0.0.i63 to float
  br label %bb.m

bb.l:                                             ; preds = %.split, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.fl = call fastcc noundef float @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.dy) #30
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit
  %.sroa.019.0 = phi float [ %i.fl, %bb.l ], [ %i.fk, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit ]
  %i.fm = load float, ptr %i.ak, align 4, !noundef !7
  %i.fn = fmul float %.sroa.019.0, %i.fm          ; 4 uses
  call void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.i, ptr noundef nonnull %i.c, ptr noundef nonnull %i.j)
  %.sroa.075.0.copyload = load ptr, ptr %i.a, align 8 ; 7 uses
  %.sroa.477.0.copyload = load ptr, ptr %.sroa.477.0..sroa_idx, align 8 ; 7 uses
  %.sroa.579.0.copyload = load i64, ptr %.sroa.579.0..sroa_idx, align 8 ; 7 uses
  %.sroa.780.0.copyload = load i64, ptr %.sroa.780.0..sroa_idx, align 8 ; 6 uses
  %i.fo = icmp ult i64 %.sroa.579.0.copyload, %.sroa.780.0.copyload
  br i1 %i.fo, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.loopexit

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph: ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.075.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.477.0.copyload) ]
  %i.fp = sub nuw i64 %.sroa.780.0.copyload, %.sroa.579.0.copyload ; 3 uses
  %min.iters.check = icmp ult i64 %i.fp, 8
  br i1 %min.iters.check, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph
  %i.fq = shl i64 %.sroa.579.0.copyload, 2        ; 2 uses
  %scevgep = getelementptr i8, ptr %.sroa.075.0.copyload, i64 %i.fq
  %i.fr = shl i64 %.sroa.780.0.copyload, 2        ; 2 uses
  %scevgep294 = getelementptr i8, ptr %.sroa.075.0.copyload, i64 %i.fr
  %scevgep295 = getelementptr i8, ptr %.sroa.477.0.copyload, i64 %i.fq
  %scevgep296 = getelementptr i8, ptr %.sroa.477.0.copyload, i64 %i.fr
  %bound0 = icmp ult ptr %scevgep, %scevgep296
  %bound1 = icmp ult ptr %scevgep295, %scevgep294
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fp, -8                      ; 3 uses
  %i.fs = add i64 %.sroa.579.0.copyload, %n.vec
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fn, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ft = add nuw i64 %.sroa.579.0.copyload, %index ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.075.0.copyload, i64 %i.ft ; 3 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.477.0.copyload, i64 %i.ft ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %wide.load = load <4 x float>, ptr %i.fv, align 4, !alias.scope !1323
  %wide.load297 = load <4 x float>, ptr %i.fw, align 4, !alias.scope !1323
  %i.fx = fmul <4 x float> %broadcast.splat, %wide.load
  %i.fy = fmul <4 x float> %broadcast.splat, %wide.load297
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 16 ; 2 uses
  %wide.load298 = load <4 x float>, ptr %i.fu, align 4, !alias.scope !1324, !noalias !1323
  %wide.load299 = load <4 x float>, ptr %i.fz, align 4, !alias.scope !1324, !noalias !1323
  %i.ga = fadd <4 x float> %wide.load298, %i.fx
  %i.gb = fadd <4 x float> %wide.load299, %i.fy
  store <4 x float> %i.ga, ptr %i.fu, align 4, !alias.scope !1324, !noalias !1323
  store <4 x float> %i.gb, ptr %i.fz, align 4, !alias.scope !1324, !noalias !1323
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gc = icmp eq i64 %index.next, %n.vec
  br i1 %i.gc, label %middle.block, label %vector.body, !llvm.loop !1321

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fp, %n.vec
  br i1 %cmp.n, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.loopexit, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader: ; preds = %vector.memcheck, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph, %middle.block
  %.sroa.579.0160.ph = phi i64 [ %.sroa.579.0.copyload, %vector.memcheck ], [ %.sroa.579.0.copyload, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph ], [ %i.fs, %middle.block ] ; 6 uses
  %i.gd = sub i64 %.sroa.780.0.copyload, %.sroa.579.0160.ph
  %.neg = add i64 %.sroa.579.0160.ph, 1
  %xtraiter = and i64 %i.gd, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol.loopexit, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.sroa.075.0.copyload, i64 %.sroa.579.0160.ph ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.477.0.copyload, i64 %.sroa.579.0160.ph
  %i.gg = add nuw i64 %.sroa.579.0160.ph, 1
  %i.gh = load float, ptr %i.gf, align 4, !noundef !7
  %i.gi = fmul float %i.fn, %i.gh
  %i.gj = load float, ptr %i.ge, align 4, !noundef !7
  %i.gk = fadd float %i.gj, %i.gi
  store float %i.gk, ptr %i.ge, align 4
  br label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol.loopexit

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader
  %.sroa.579.0160.unr = phi i64 [ %.sroa.579.0160.ph, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader ], [ %i.gg, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol ]
  %i.gl = icmp eq i64 %.sroa.780.0.copyload, %.neg
  br i1 %i.gl, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.loopexit, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol.loopexit, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit
  %.sroa.579.0160 = phi i64 [ %i.gv, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit ], [ %.sroa.579.0160.unr, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol.loopexit ] ; 4 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.075.0.copyload, i64 %.sroa.579.0160 ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.477.0.copyload, i64 %.sroa.579.0160
  %i.go = add nuw i64 %.sroa.579.0160, 1          ; 2 uses
  %i.gp = load float, ptr %i.gn, align 4, !noundef !7
  %i.gq = fmul float %i.fn, %i.gp
  %i.gr = load float, ptr %i.gm, align 4, !noundef !7
  %i.gs = fadd float %i.gr, %i.gq
  store float %i.gs, ptr %i.gm, align 4
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.075.0.copyload, i64 %i.go ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.477.0.copyload, i64 %i.go
  %i.gv = add nuw i64 %.sroa.579.0160, 2          ; 2 uses
  %i.gw = load float, ptr %i.gu, align 4, !noundef !7
  %i.gx = fmul float %i.fn, %i.gw
  %i.gy = load float, ptr %i.gt, align 4, !noundef !7
  %i.gz = fadd float %i.gy, %i.gx
  store float %i.gz, ptr %i.gt, align 4
  %exitcond250.not.1 = icmp eq i64 %i.gv, %.sroa.780.0.copyload
  br i1 %exitcond250.not.1, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.loopexit, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit, !llvm.loop !1322

.preheader.preheader:                             ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ6KEIBX_NtB1o_8BlockQ8KEEINtB5_7ZipImplBW_B2m_E4nextB1s_.exit, %.preheader.preheader
  %.sroa.072.0.idx159 = phi i64 [ 192, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ6KEIBX_NtB1o_8BlockQ8KEEINtB5_7ZipImplBW_B2m_E4nextB1s_.exit ], [ %.sroa.072.0.add, %.preheader.preheader ] ; 2 uses
  %.sroa.774.0158 = phi i64 [ 0, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ6KEIBX_NtB1o_8BlockQ8KEEINtB5_7ZipImplBW_B2m_E4nextB1s_.exit ], [ %i.hc, %.preheader.preheader ] ; 2 uses
  %i.ha = phi <4 x float> [ %i.dw, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ6KEIBX_NtB1o_8BlockQ8KEEINtB5_7ZipImplBW_B2m_E4nextB1s_.exit ], [ %i.if, %.preheader.preheader ]
  %i.hb = phi <4 x float> [ %i.dx, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ6KEIBX_NtB1o_8BlockQ8KEEINtB5_7ZipImplBW_B2m_E4nextB1s_.exit ], [ %i.iv, %.preheader.preheader ]
  %.sroa.072.0.ptr = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sroa.072.0.idx159
  %.sroa.072.0.add = add nuw nsw i64 %.sroa.072.0.idx159, 1 ; 2 uses
  %i.hc = add nuw nsw i64 %.sroa.774.0158, 1
  %i.hd = load i8, ptr %.sroa.072.0.ptr, align 1, !noundef !7
  %i.he = sitofp i8 %i.hd to float
  %i.hf = shl nuw nsw i64 %.sroa.774.0158, 4      ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.hf ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.hf ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hg, i64 12
  %i.ho = load <4 x i8>, ptr %i.hh, align 16
  %i.hp = sext <4 x i8> %i.ho to <4 x i16>
  %i.hq = load <4 x i8>, ptr %i.hg, align 1
  %i.hr = sext <4 x i8> %i.hq to <4 x i16>
  %i.hs = mul nsw <4 x i16> %i.hr, %i.hp
  %i.ht = sitofp <4 x i16> %i.hs to <4 x float>
  %i.hu = insertelement <4 x float> poison, float %i.he, i64 0
  %i.hv = shufflevector <4 x float> %i.hu, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.hw = fmul nnan <4 x float> %i.hv, %i.ht
  %i.hx = fadd <4 x float> %i.ha, %i.hw
  %i.hy = load <4 x i8>, ptr %i.hl, align 8
  %i.hz = sext <4 x i8> %i.hy to <4 x i16>
  %i.ia = load <4 x i8>, ptr %i.hk, align 1
  %i.ib = sext <4 x i8> %i.ia to <4 x i16>
  %i.ic = mul nsw <4 x i16> %i.ib, %i.hz
  %i.id = sitofp <4 x i16> %i.ic to <4 x float>
  %i.ie = fmul nnan <4 x float> %i.hv, %i.id
  %i.if = fadd <4 x float> %i.hx, %i.ie           ; 2 uses
  %i.ig = load <4 x i8>, ptr %i.hi, align 4
  %i.ih = sext <4 x i8> %i.ig to <4 x i16>
  %i.ii = load <4 x i8>, ptr %i.hj, align 1
  %i.ij = sext <4 x i8> %i.ii to <4 x i16>
  %i.ik = mul nsw <4 x i16> %i.ij, %i.ih
  %i.il = sitofp <4 x i16> %i.ik to <4 x float>
  %i.im = fmul nnan <4 x float> %i.hv, %i.il
  %i.in = fadd <4 x float> %i.hb, %i.im
  %i.io = load <4 x i8>, ptr %i.hm, align 4
  %i.ip = sext <4 x i8> %i.io to <4 x i16>
  %i.iq = load <4 x i8>, ptr %i.hn, align 1
  %i.ir = sext <4 x i8> %i.iq to <4 x i16>
  %i.is = mul nsw <4 x i16> %i.ir, %i.ip
  store <4 x float> %i.if, ptr %i.c, align 16
  %i.it = sitofp <4 x i16> %i.is to <4 x float>
  %i.iu = fmul nnan <4 x float> %i.hv, %i.it
  %i.iv = fadd <4 x float> %i.in, %i.iu           ; 2 uses
  store <4 x float> %i.iv, ptr %i.l, align 16
  %i.iw = icmp eq i64 %.sroa.072.0.add, 208
  br i1 %i.iw, label %bb.b, label %.preheader.preheader
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs8_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ6KNtB5_8GgmlType18from_float_imatrix(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef range(i64 0, 43920819223117981) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef range(i64 0, 2305843009213693952) %5, i64 noundef %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [64 x i8], align 4                ; 6 uses
  %i.c = alloca [256 x i8], align 16              ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.c, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %.idx121 = mul nuw nsw i64 %3, 210
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %.idx121
  %i.e = icmp eq i64 %3, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.g = lshr i64 %6, 8                           ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.771.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br i1 %i.h, label %bb.aa, label %.split108.preheader

.split108.preheader:                              ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  br label %.split108

.split108:                                        ; preds = %.split108.preheader, %vector.body135
  %.sroa.0.0120 = phi ptr [ %i.hf, %vector.body135 ], [ %0, %.split108.preheader ] ; 3 uses
  %.sroa.0.077119 = phi ptr [ %i.ai, %vector.body135 ], [ %2, %.split108.preheader ] ; 16 uses
  %.sroa.7.0118 = phi i64 [ %i.aj, %vector.body135 ], [ 0, %.split108.preheader ] ; 2 uses
  %i.x = urem i64 %.sroa.7.0118, %i.g
  %.idx = shl i64 %i.x, 10
  %i.y = getelementptr i8, ptr %4, i64 %.idx
  br label %bb.b

._crit_edge:                                      ; preds = %vector.body135, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.b:                                             ; preds = %.split108, %bb.b
  %.sroa.07.0106 = phi float [ 0.000000e+00, %.split108 ], [ %.sroa.07.1, %bb.b ]
  %.sroa.08.0105 = phi float [ 0.000000e+00, %.split108 ], [ %.sroa.08.1, %bb.b ] ; 2 uses
  %.sroa.064.0.idx104 = phi i64 [ 0, %.split108 ], [ %.sroa.064.0.add, %bb.b ] ; 2 uses
  %.sroa.766.0103 = phi i64 [ 0, %.split108 ], [ %i.z, %bb.b ] ; 2 uses
  %.sroa.064.0.ptr107 = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.064.0.idx104
  %i.z = add nuw nsw i64 %.sroa.766.0103, 1
  %.sroa.064.0.add = add nuw nsw i64 %.sroa.064.0.idx104, 4 ; 2 uses
  %i.aa = shl nuw nsw i64 %.sroa.766.0103, 4      ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0120, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aa
  %i.ad = getelementptr [4 x i8], ptr %i.y, i64 %i.aa
  %i.ae = call noundef float @_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils14make_qx_quants(i64 noundef 16, i32 noundef 32, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac, i32 noundef 1, ptr noundef %i.ad) ; 3 uses
  store float %i.ae, ptr %.sroa.064.0.ptr107, align 4
  %i.af = call float @llvm.fabs.f32(float %i.ae)  ; 2 uses
  %i.ag = fcmp ogt float %i.af, %.sroa.08.0105    ; 2 uses
  %.sroa.08.1 = select i1 %i.ag, float %i.af, float %.sroa.08.0105
  %.sroa.07.1 = select i1 %i.ag, float %i.ae, float %.sroa.07.0106 ; 2 uses
  %i.ah = icmp eq i64 %.sroa.064.0.add, 64
  br i1 %i.ah, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.077119, i64 210 ; 2 uses
  %i.aj = add nuw nsw i64 %.sroa.7.0118, 1
  %i.ak = fdiv float -1.280000e+02, %.sroa.07.1   ; 5 uses
  %i.al = fdiv float 1.000000e+00, %i.ak          ; 2 uses
  %i.am = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %.split, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit, !prof !14

.split:                                           ; preds = %bb.c
  %i.ao = call noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
  %i.ap = and i128 %i.ao, 18014398509481984
  %.not98 = icmp eq i128 %i.ap, 0
  br i1 %.not98, label %bb.d, label %bb.o

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit: ; preds = %bb.c
  %i.aq = and i64 %i.am, 18014398509481984
  %.not = icmp eq i64 %i.aq, 0
  br i1 %.not, label %bb.d, label %bb.o

bb.d:                                             ; preds = %.split, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.ar = bitcast float %i.al to i32              ; 5 uses
  %i.as = and i32 %i.ar, -2147483648              ; 2 uses
  %i.at = and i32 %i.ar, 2139095040               ; 6 uses
  %i.au = and i32 %i.ar, 8388607                  ; 4 uses
  %i.av = icmp eq i32 %i.at, 2139095040
  br i1 %i.av, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aw = icmp eq i32 %i.au, 0
  %..i = select i1 %i.aw, i32 0, i32 512
  %i.ax = lshr exact i32 %i.as, 16
  %i.ay = lshr i32 %i.au, 13
  %i.az = or disjoint i32 %i.ay, %i.ax
  %i.ba = or i32 %i.az, %..i
  %i.bb = trunc nuw i32 %i.ba to i16
  %i.bc = or disjoint i16 %i.bb, 31744
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.f:                                             ; preds = %bb.d
  %i.bd = lshr exact i32 %i.as, 16                ; 4 uses
  %i.be = lshr exact i32 %i.at, 23                ; 2 uses
  %i.bf = icmp samesign ugt i32 %i.at, 1191182336
  br i1 %i.bf, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = icmp samesign ult i32 %i.at, 947912704
  br i1 %i.bg, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bh = trunc nuw i32 %i.bd to i16
  %i.bi = or disjoint i16 %i.bh, 31744
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.i:                                             ; preds = %bb.g
  %i.bj = lshr exact i32 %i.at, 13
  %i.bk = add nuw nsw i32 %i.bj, 16384
  %i.bl = lshr i32 %i.au, 13
  %i.bm = and i32 %i.ar, 4096
  %i.bn = icmp ne i32 %i.bm, 0
  %i.bo = and i32 %i.ar, 12287
  %i.bp = icmp ne i32 %i.bo, 0
  %or.cond.not.i = and i1 %i.bn, %i.bp
  %i.bq = or disjoint i32 %i.bk, %i.bl
  %i.br = or i32 %i.bq, %i.bd
  %i.bs = trunc i32 %i.br to i16
  %i.bt = zext i1 %or.cond.not.i to i16
  %spec.select7.i = add i16 %i.bs, %i.bt
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.j:                                             ; preds = %bb.g
  %i.bu = icmp samesign ult i32 %i.at, 855638016
  br i1 %i.bu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = sub nsw i32 126, %i.be
  %i.bw = or disjoint i32 %i.au, 8388608          ; 3 uses
  %i.bx = lshr i32 %i.bw, %i.bv                   ; 2 uses
  %i.by = sub nsw i32 29, %i.be
  %i.bz = and i32 %i.by, 31                       ; 2 uses
  %i.ca = shl nuw i32 1, %i.bz
  %i.cb = and i32 %i.ca, %i.bw
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.cd = trunc nuw i32 %i.bd to i16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.m:                                             ; preds = %bb.k
  %i.ce = shl i32 3, %i.bz
  %i.cf = add nuw i32 %i.ce, 16777215
  %i.cg = and i32 %i.cf, %i.bw
  %i.ch = icmp ne i32 %i.cg, 0
  %i.ci = zext i1 %i.ch to i32
  %spec.select.i = add nuw nsw i32 %i.bx, %i.ci
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.sroa.03.0.i = phi i32 [ %i.bx, %bb.k ], [ %spec.select.i, %bb.m ]
  %i.cj = or i32 %.sroa.03.0.i, %i.bd
  %i.ck = trunc nuw i32 %i.cj to i16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.o:                                             ; preds = %.split, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.cl = call fastcc noundef i16 @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.al) #30
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit: ; preds = %bb.n, %bb.l, %bb.i, %bb.h, %bb.e, %bb.o
  %.sroa.037.0 = phi i16 [ %i.cl, %bb.o ], [ %i.bc, %bb.e ], [ %i.bi, %bb.h ], [ %i.cd, %bb.l ], [ %i.ck, %bb.n ], [ %spec.select7.i, %bb.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.077119, i64 208 ; 3 uses
  store i16 %.sroa.037.0, ptr %i.cm, align 2
  %.ptr99 = getelementptr inbounds nuw i8, ptr %.sroa.0.077119, i64 192
  call void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %.ptr99, ptr noundef nonnull %i.cm, ptr noundef nonnull %i.b, ptr noundef nonnull %i.f)
  %.sroa.067.0.copyload = load ptr, ptr %i.a, align 8 ; 7 uses
  %.sroa.468.0.copyload = load ptr, ptr %.sroa.468.0..sroa_idx, align 8 ; 7 uses
  %.sroa.570.0.copyload = load i64, ptr %.sroa.570.0..sroa_idx, align 8 ; 8 uses
  %.sroa.771.0.copyload = load i64, ptr %.sroa.771.0..sroa_idx, align 8 ; 7 uses
  %i.cn = icmp ult i64 %.sroa.570.0.copyload, %.sroa.771.0.copyload
  br i1 %i.cn, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader.preheader

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph: ; preds = %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.067.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.468.0.copyload) ]
  %i.co = sub nuw i64 %.sroa.771.0.copyload, %.sroa.570.0.copyload ; 3 uses
  %min.iters.check = icmp ult i64 %i.co, 8
  br i1 %min.iters.check, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph
  %scevgep = getelementptr i8, ptr %.sroa.067.0.copyload, i64 %.sroa.570.0.copyload
  %scevgep143 = getelementptr i8, ptr %.sroa.067.0.copyload, i64 %.sroa.771.0.copyload
  %i.cp = shl i64 %.sroa.570.0.copyload, 2
  %scevgep144 = getelementptr i8, ptr %.sroa.468.0.copyload, i64 %i.cp
  %i.cq = shl i64 %.sroa.771.0.copyload, 2
  %scevgep145 = getelementptr i8, ptr %.sroa.468.0.copyload, i64 %i.cq
  %bound0 = icmp ult ptr %scevgep, %scevgep145
  %bound1 = icmp ult ptr %scevgep144, %scevgep143
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader, label %vector.ph146

vector.ph146:                                     ; preds = %vector.memcheck
  %n.vec = and i64 %i.co, -4                      ; 3 uses
  %i.cr = add i64 %.sroa.570.0.copyload, %n.vec
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ak, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph146
  %index148 = phi i64 [ 0, %vector.ph146 ], [ %index.next150, %vector.body147 ] ; 2 uses
  %i.cs = add nuw i64 %.sroa.570.0.copyload, %index148 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.067.0.copyload, i64 %i.cs
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.468.0.copyload, i64 %i.cs
  %wide.load149 = load <4 x float>, ptr %i.cu, align 4, !alias.scope !1330
  %i.cv = fmul <4 x float> %broadcast.splat, %wide.load149
  %i.cw = call <4 x float> @llvm.round.v4f32(<4 x float> %i.cv)
  %i.cx = call <4 x i32> @llvm.fptosi.sat.v4i32.v4f32(<4 x float> %i.cw)
  %i.cy = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.cx, <4 x i32> splat (i32 127))
  %i.cz = trunc <4 x i32> %i.cy to <4 x i8>
  store <4 x i8> %i.cz, ptr %i.ct, align 1, !alias.scope !1331, !noalias !1330
  %index.next150 = add nuw i64 %index148, 4       ; 2 uses
  %i.da = icmp eq i64 %index.next150, %n.vec
  br i1 %i.da, label %middle.block151, label %vector.body147, !llvm.loop !1328

middle.block151:                                  ; preds = %vector.body147
  %cmp.n = icmp eq i64 %i.co, %n.vec
  br i1 %cmp.n, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader.preheader, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader: ; preds = %vector.memcheck, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph, %middle.block151
  %.sroa.570.0109.ph = phi i64 [ %.sroa.570.0.copyload, %vector.memcheck ], [ %.sroa.570.0.copyload, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.lr.ph ], [ %i.cr, %middle.block151 ] ; 6 uses
  %i.db = sub i64 %.sroa.771.0.copyload, %.sroa.570.0109.ph
  %.neg = add i64 %.sroa.570.0109.ph, 1
  %xtraiter = and i64 %i.db, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol.loopexit, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.067.0.copyload, i64 %.sroa.570.0109.ph
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.468.0.copyload, i64 %.sroa.570.0109.ph
  %i.de = add nuw i64 %.sroa.570.0109.ph, 1
  %i.df = load float, ptr %i.dd, align 4, !noundef !7
  %i.dg = fmul float %i.ak, %i.df
  %i.dh = call float @llvm.round.f32(float %i.dg)
  %i.di = call i32 @llvm.fptosi.sat.i32.f32(float %i.dh)
  %i.dj = call i32 @llvm.smin.i32(i32 %i.di, i32 127)
  %i.dk = trunc i32 %i.dj to i8
  store i8 %i.dk, ptr %i.dc, align 1
  br label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol.loopexit

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader
  %.sroa.570.0109.unr = phi i64 [ %.sroa.570.0109.ph, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.preheader ], [ %i.de, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol ]
  %i.dl = icmp eq i64 %.sroa.771.0.copyload, %.neg
  br i1 %i.dl, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader.preheader, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol.loopexit, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit
  %.sroa.570.0109 = phi i64 [ %i.dx, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit ], [ %.sroa.570.0109.unr, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol.loopexit ] ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.067.0.copyload, i64 %.sroa.570.0109
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.468.0.copyload, i64 %.sroa.570.0109
  %i.do = add nuw i64 %.sroa.570.0109, 1          ; 2 uses
  %i.dp = load float, ptr %i.dn, align 4, !noundef !7
  %i.dq = fmul float %i.ak, %i.dp
  %i.dr = call float @llvm.round.f32(float %i.dq)
  %i.ds = call i32 @llvm.fptosi.sat.i32.f32(float %i.dr)
  %i.dt = call i32 @llvm.smin.i32(i32 %i.ds, i32 127)
  %i.du = trunc i32 %i.dt to i8
  store i8 %i.du, ptr %i.dm, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.067.0.copyload, i64 %i.do
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.468.0.copyload, i64 %i.do
  %i.dx = add nuw i64 %.sroa.570.0109, 2          ; 2 uses
  %i.dy = load float, ptr %i.dw, align 4, !noundef !7
  %i.dz = fmul float %i.ak, %i.dy
  %i.ea = call float @llvm.round.f32(float %i.dz)
  %i.eb = call i32 @llvm.fptosi.sat.i32.f32(float %i.ea)
  %i.ec = call i32 @llvm.smin.i32(i32 %i.eb, i32 127)
  %i.ed = trunc i32 %i.ec to i8
  store i8 %i.ed, ptr %i.dv, align 1
  %exitcond.not.1 = icmp eq i64 %i.dx, %.sroa.771.0.copyload
  br i1 %exitcond.not.1, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader.preheader, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit, !llvm.loop !1329

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader.preheader: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.prol.loopexit, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit, %middle.block151, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit
  br label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader.preheader, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.backedge
  %.sroa.072.0.idx112 = phi i64 [ %.sroa.072.0.add, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.backedge ], [ 192, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader.preheader ] ; 2 uses
  %.sroa.774.0111 = phi i64 [ %i.ee, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.backedge ], [ 0, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader.preheader ] ; 2 uses
  %.sroa.072.0.ptr = getelementptr inbounds nuw i8, ptr %.sroa.0.077119, i64 %.sroa.072.0.idx112
  %.sroa.072.0.add = add nuw nsw i64 %.sroa.072.0.idx112, 1 ; 2 uses
  %i.ee = add nuw nsw i64 %.sroa.774.0111, 1
  %i.ef = load i8, ptr %.sroa.072.0.ptr, align 1, !noundef !7
  %i.eg = load i16, ptr %i.cm, align 2, !noundef !7 ; 6 uses
  %i.eh = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %.split97, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit60, !prof !14

.split97:                                         ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader
  %i.ej = call noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
  %i.ek = and i128 %i.ej, 18014398509481984
  %.not101 = icmp eq i128 %i.ek, 0
  br i1 %.not101, label %bb.p, label %bb.y

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit60: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader
  %i.el = and i64 %i.eh, 18014398509481984
  %.not100 = icmp eq i64 %i.el, 0
  br i1 %.not100, label %bb.p, label %bb.y

vector.body135:                                   ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.backedge
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.077119, i64 128
  %wide.load137 = load <16 x i8>, ptr %i.c, align 16 ; 2 uses
  %i.en = and <16 x i8> %wide.load137, splat (i8 15)
  %wide.load138 = load <16 x i8>, ptr %i.j, align 16 ; 2 uses
  %i.eo = and <16 x i8> %wide.load138, splat (i8 15)
  %wide.load139 = load <16 x i8>, ptr %i.k, align 16 ; 2 uses
  %wide.load140 = load <16 x i8>, ptr %i.l, align 16 ; 2 uses
  %i.ep = shl <16 x i8> %wide.load139, splat (i8 4)
  %i.eq = or disjoint <16 x i8> %i.ep, %i.en
  store <16 x i8> %i.eq, ptr %.sroa.0.077119, align 2
  %i.er = shl <16 x i8> %wide.load140, splat (i8 4)
  %i.es = or disjoint <16 x i8> %i.er, %i.eo
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0.077119, i64 32
  store <16 x i8> %i.es, ptr %i.et, align 2
  %i.eu = ashr <16 x i8> %wide.load137, splat (i8 4)
  %i.ev = ashr <16 x i8> %wide.load138, splat (i8 2)
  %i.ew = and <16 x i8> %i.ev, splat (i8 -4)
  %i.ex = or <16 x i8> %i.ew, %i.eu
  %i.ey = and <16 x i8> %wide.load139, splat (i8 -16)
  %i.ez = or <16 x i8> %i.ex, %i.ey
  %i.fa = shl <16 x i8> %wide.load140, splat (i8 2)
  %i.fb = and <16 x i8> %i.fa, splat (i8 -64)
  %i.fc = or <16 x i8> %i.ez, %i.fb
  store <16 x i8> %i.fc, ptr %i.em, align 2
  %wide.load137.1 = load <16 x i8>, ptr %i.m, align 16 ; 2 uses
  %i.fd = and <16 x i8> %wide.load137.1, splat (i8 15)
  %wide.load138.1 = load <16 x i8>, ptr %i.n, align 16 ; 2 uses
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
end_hunk_3
