Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_core-29a639a172b36b04.candle_core.fa2bc8e788f5f12a-cgu.14?download=true
inline.NumInlined: 1160
inline.NumDeleted: 448
loop-unroll.NumCompletelyUnrolled: 107
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 128
begin_hunk_0_@_RNvXs0_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_9BlockQ5_0NtB5_8GgmlType10from_float:bb.a
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

._crit_edge41:                                    ; preds = %middle.block, %bb.a
  ret void

.lr.ph.preheader:                                 ; preds = %.lr.ph40
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.h
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph40
  call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.g, i64 noundef %i.h, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #32
  unreachable

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.04.034 = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %.sroa.04.1.1, %.lr.ph ]
  %.sroa.05.033 = phi ptr [ %i.i, %.lr.ph.preheader ], [ %i.o, %.lr.ph ] ; 3 uses
  %.sroa.08.032 = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %.sroa.08.1.1, %.lr.ph ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.05.033, i64 4
  %i.l = load float, ptr %.sroa.05.033, align 4, !noundef !7 ; 2 uses
  %i.m = call float @llvm.fabs.f32(float %i.l)    ; 2 uses
  %i.n = fcmp olt float %.sroa.08.032, %i.m       ; 2 uses
  %.sroa.08.1 = select i1 %i.n, float %i.m, float %.sroa.08.032 ; 2 uses
  %.sroa.04.1 = select i1 %i.n, float %i.l, float %.sroa.04.034
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.05.033, i64 8 ; 2 uses
  %i.p = load float, ptr %i.k, align 4, !noundef !7 ; 2 uses
  %i.q = call float @llvm.fabs.f32(float %i.p)    ; 2 uses
  %i.r = fcmp olt float %.sroa.08.1, %i.q         ; 2 uses
  %.sroa.08.1.1 = select i1 %i.r, float %i.q, float %.sroa.08.1
  %.sroa.04.1.1 = select i1 %i.r, float %i.p, float %.sroa.04.1 ; 2 uses
  %i.s = icmp eq ptr %i.o, %i.j
  br i1 %i.s, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.t = fmul float %.sroa.04.1.1, -6.250000e-02  ; 4 uses
  %i.u = fcmp une float %i.t, 0.000000e+00
  %i.v = fdiv float 1.000000e+00, %i.t
  %.sroa.09.0 = select i1 %i.u, float %i.v, float 0.000000e+00
  %i.w = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.split, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit, !prof !14

.split:                                           ; preds = %._crit_edge
  %i.y = call noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
  %i.z = and i128 %i.y, 18014398509481984
  %.not30 = icmp eq i128 %i.z, 0
  br i1 %.not30, label %bb.c, label %bb.n

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit: ; preds = %._crit_edge
  %i.aa = and i64 %i.w, 18014398509481984
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %bb.c, label %bb.n

bb.c:                                             ; preds = %.split, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.ab = bitcast float %i.t to i32               ; 5 uses
  %i.ac = and i32 %i.ab, -2147483648              ; 2 uses
  %i.ad = and i32 %i.ab, 2139095040               ; 6 uses
  %i.ae = and i32 %i.ab, 8388607                  ; 4 uses
  %i.af = icmp eq i32 %i.ad, 2139095040
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = icmp eq i32 %i.ae, 0
  %..i = select i1 %i.ag, i32 0, i32 512
  %i.ah = lshr exact i32 %i.ac, 16
  %i.ai = lshr i32 %i.ae, 13
  %i.aj = or disjoint i32 %i.ai, %i.ah
  %i.ak = or i32 %i.aj, %..i
  %i.al = trunc nuw i32 %i.ak to i16
  %i.am = or disjoint i16 %i.al, 31744
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.e:                                             ; preds = %bb.c
  %i.an = lshr exact i32 %i.ac, 16                ; 4 uses
  %i.ao = lshr exact i32 %i.ad, 23                ; 2 uses
  %i.ap = icmp samesign ugt i32 %i.ad, 1191182336
  br i1 %i.ap, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = icmp samesign ult i32 %i.ad, 947912704
  br i1 %i.aq, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ar = trunc nuw i32 %i.an to i16
  %i.as = or disjoint i16 %i.ar, 31744
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.h:                                             ; preds = %bb.f
  %i.at = lshr exact i32 %i.ad, 13
  %i.au = add nuw nsw i32 %i.at, 16384
  %i.av = lshr i32 %i.ae, 13
  %i.aw = and i32 %i.ab, 4096
  %i.ax = icmp ne i32 %i.aw, 0
  %i.ay = and i32 %i.ab, 12287
  %i.az = icmp ne i32 %i.ay, 0
  %or.cond.not.i = and i1 %i.ax, %i.az
  %i.ba = or disjoint i32 %i.au, %i.av
  %i.bb = or i32 %i.ba, %i.an
  %i.bc = trunc i32 %i.bb to i16
  %i.bd = zext i1 %or.cond.not.i to i16
  %spec.select7.i = add i16 %i.bc, %i.bd
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.i:                                             ; preds = %bb.f
  %i.be = icmp samesign ult i32 %i.ad, 855638016
  br i1 %i.be, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = sub nsw i32 126, %i.ao
  %i.bg = or disjoint i32 %i.ae, 8388608          ; 3 uses
  %i.bh = lshr i32 %i.bg, %i.bf                   ; 2 uses
  %i.bi = sub nsw i32 29, %i.ao
  %i.bj = and i32 %i.bi, 31                       ; 2 uses
  %i.bk = shl nuw i32 1, %i.bj
  %i.bl = and i32 %i.bk, %i.bg
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bn = trunc nuw i32 %i.an to i16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.l:                                             ; preds = %bb.j
  %i.bo = shl i32 3, %i.bj
  %i.bp = add nuw i32 %i.bo, 16777215
  %i.bq = and i32 %i.bp, %i.bg
  %i.br = icmp ne i32 %i.bq, 0
  %i.bs = zext i1 %i.br to i32
  %spec.select.i = add nuw nsw i32 %i.bh, %i.bs
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %.sroa.03.0.i = phi i32 [ %i.bh, %bb.j ], [ %spec.select.i, %bb.l ]
  %i.bt = or i32 %.sroa.03.0.i, %i.an
  %i.bu = trunc nuw i32 %i.bt to i16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

bb.n:                                             ; preds = %.split, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.bv = call fastcc noundef i16 @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.t) #30
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit: ; preds = %bb.m, %bb.k, %bb.h, %bb.g, %bb.d, %bb.n
  %.sroa.015.0 = phi i16 [ %i.bv, %bb.n ], [ %i.am, %bb.d ], [ %i.as, %bb.g ], [ %i.bn, %bb.k ], [ %i.bu, %bb.m ], [ %spec.select7.i, %bb.h ]
  store i16 %.sroa.015.0, ptr %.sroa.0.038, align 2
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.038, i64 6
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.09.0, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit
  %index = phi i64 [ 0, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit ], [ %i.dy, %vector.body ]
  %vec.phi57 = phi <4 x i32> [ zeroinitializer, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit ], [ %i.dz, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.bx = insertelement <4 x i64> poison, i64 %index, i64 0
  %i.by = shufflevector <4 x i64> %i.bx, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 80
  %wide.load = load <4 x float>, ptr %i.ca, align 4
  %wide.load58 = load <4 x float>, ptr %i.cb, align 4
  %i.cc = fmul <4 x float> %broadcast.splat, %wide.load
  %i.cd = fmul <4 x float> %broadcast.splat, %wide.load58
  %i.ce = fadd <4 x float> %i.cc, splat (float 1.650000e+01)
  %i.cf = fadd <4 x float> %i.cd, splat (float 1.650000e+01)
  %i.cg = call <4 x i8> @llvm.fptosi.sat.v4i8.v4f32(<4 x float> %i.ce)
  %i.ch = call <4 x i8> @llvm.fptosi.sat.v4i8.v4f32(<4 x float> %i.cf)
  %i.ci = call <4 x i8> @llvm.smin.v4i8(<4 x i8> %i.cg, <4 x i8> splat (i8 31)) ; 2 uses
  %i.cj = call <4 x i8> @llvm.smin.v4i8(<4 x i8> %i.ch, <4 x i8> splat (i8 31)) ; 2 uses
  %i.ck = shl <4 x i8> %i.ci, splat (i8 4)
  %i.cl = shl <4 x i8> %i.cj, splat (i8 4)
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %wide.load59 = load <4 x float>, ptr %i.cm, align 4
  %wide.load60 = load <4 x float>, ptr %i.cn, align 4
  %i.co = fmul <4 x float> %broadcast.splat, %wide.load59
  %i.cp = fmul <4 x float> %broadcast.splat, %wide.load60
  %i.cq = fadd <4 x float> %i.co, splat (float 1.650000e+01)
  %i.cr = fadd <4 x float> %i.cp, splat (float 1.650000e+01)
  %i.cs = call <4 x i8> @llvm.fptosi.sat.v4i8.v4f32(<4 x float> %i.cq)
  %i.ct = call <4 x i8> @llvm.fptosi.sat.v4i8.v4f32(<4 x float> %i.cr)
  %i.cu = call <4 x i8> @llvm.smin.v4i8(<4 x i8> %i.cs, <4 x i8> splat (i8 31)) ; 2 uses
  %i.cv = call <4 x i8> @llvm.smin.v4i8(<4 x i8> %i.ct, <4 x i8> splat (i8 31)) ; 2 uses
  %i.cw = and <4 x i8> %i.cu, splat (i8 15)
  %i.cx = and <4 x i8> %i.cv, splat (i8 15)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bw, i64 %index ; 2 uses
  %i.cz = or disjoint <4 x i8> %i.cw, %i.ck
  %i.da = or disjoint <4 x i8> %i.cx, %i.cl
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store <4 x i8> %i.cz, ptr %i.cy, align 2
  store <4 x i8> %i.da, ptr %i.db, align 2
  %i.dc = lshr <4 x i8> %i.cu, splat (i8 4)
  %i.dd = lshr <4 x i8> %i.cv, splat (i8 4)
  %i.de = and <4 x i8> %i.dc, splat (i8 1)
  %i.df = and <4 x i8> %i.dd, splat (i8 1)
  %i.dg = zext nneg <4 x i8> %i.de to <4 x i32>
  %i.dh = zext nneg <4 x i8> %i.df to <4 x i32>
  %i.di = shl nuw nsw <4 x i32> %i.dg, %vec.ind
  %i.dj = shl nuw nsw <4 x i32> %i.dh, %step.add
  %i.dk = lshr <4 x i8> %i.ci, splat (i8 4)
  %i.dl = lshr <4 x i8> %i.cj, splat (i8 4)
  %i.dm = and <4 x i8> %i.dk, splat (i8 1)
  %i.dn = and <4 x i8> %i.dl, splat (i8 1)
  %i.do = zext nneg <4 x i8> %i.dm to <4 x i32>
  %i.dp = zext nneg <4 x i8> %i.dn to <4 x i32>
  %i.dq = trunc <4 x i64> %i.by to <4 x i32>
  %i.dr = or <4 x i32> %i.dq, <i32 16, i32 17, i32 18, i32 19>
  %i.ds = trunc <4 x i64> %i.by to <4 x i32>
  %i.dt = or <4 x i32> %i.ds, <i32 20, i32 21, i32 22, i32 23>
  %i.du = shl nuw <4 x i32> %i.do, %i.dr
  %i.dv = shl nuw <4 x i32> %i.dp, %i.dt
  %i.dw = add nuw nsw <4 x i32> %i.di, %i.du
  %i.dx = add nuw nsw <4 x i32> %i.dj, %i.dv
  %i.dy = or <4 x i32> %i.dw, %vec.phi            ; 2 uses
  %i.dz = or <4 x i32> %i.dx, %vec.phi57          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ea = icmp eq i64 %index.next, 16
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !706

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.dz, %i.dy
  %i.eb = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx)
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.038, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !709
  store i32 %i.eb, ptr %i.a, align 4, !noalias !709
  call void @_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull %i.ec, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !709
  %i.ed = icmp eq ptr %i.e, %i.b
  br i1 %i.ed, label %._crit_edge41, label %.lr.ph40
}

; Function Attrs: nonlazybind uwtable
define noundef float @_RNvXs0_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_9BlockQ5_0NtB5_8GgmlType13vec_dot_unopt(i64 %0, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 419244183493398901) %2, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %3, i64 noundef range(i64 0, 271275648142787524) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw [22 x i8], ptr %1, i64 %2
  %i.c = getelementptr inbounds nuw [34 x i8], ptr %3, i64 %4
  call void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ5_0EIBX_NtB1o_9BlockQ8_0EEINtB5_7ZipImplBW_B2n_E3newB1s_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %1, ptr noundef nonnull %i.b, ptr noundef nonnull %3, ptr noundef nonnull %i.c)
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.419.0.copyload = load ptr, ptr %.sroa.419.0..sroa_idx, align 8 ; 2 uses
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.520.0.copyload = load i64, ptr %.sroa.520.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %i.d = icmp ult i64 %.sroa.520.0.copyload, %.sroa.7.0.copyload
  br i1 %i.d, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ5_0EIBX_NtB1o_9BlockQ8_0EEINtB5_7ZipImplBW_B2n_E4nextB1s_.exit.lr.ph, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ5_0EIBX_NtB1o_9BlockQ8_0EEINtB5_7ZipImplBW_B2n_E4nextB1s_.exit.thread

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ5_0EIBX_NtB1o_9BlockQ8_0EEINtB5_7ZipImplBW_B2n_E4nextB1s_.exit.lr.ph: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload), "nonnull"(ptr %.sroa.419.0.copyload) ]
  br label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ5_0EIBX_NtB1o_9BlockQ8_0EEINtB5_7ZipImplBW_B2n_E4nextB1s_.exit

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ5_0EIBX_NtB1o_9BlockQ8_0EEINtB5_7ZipImplBW_B2n_E4nextB1s_.exit: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ5_0EIBX_NtB1o_9BlockQ8_0EEINtB5_7ZipImplBW_B2n_E4nextB1s_.exit.lr.ph, %bb.w
  %.sroa.0.033 = phi float [ 0.000000e+00, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ5_0EIBX_NtB1o_9BlockQ8_0EEINtB5_7ZipImplBW_B2n_E4nextB1s_.exit.lr.ph ], [ %i.ew, %bb.w ]
  %.sroa.520.032 = phi i64 [ %.sroa.520.0.copyload, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ5_0EIBX_NtB1o_9BlockQ8_0EEINtB5_7ZipImplBW_B2n_E4nextB1s_.exit.lr.ph ], [ %i.bq, %bb.w ] ; 3 uses
  %i.e = getelementptr inbounds nuw [22 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.520.032 ; 3 uses
  %i.f = getelementptr inbounds nuw [34 x i8], ptr %.sroa.419.0.copyload, i64 %.sroa.520.032 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.val = load i32, ptr %i.i, align 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.val, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ5_0EIBX_NtB1o_9BlockQ8_0EEINtB5_7ZipImplBW_B2n_E4nextB1s_.exit
  %index = phi i64 [ 0, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ5_0EIBX_NtB1o_9BlockQ8_0EEINtB5_7ZipImplBW_B2n_E4nextB1s_.exit ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ5_0EIBX_NtB1o_9BlockQ8_0EEINtB5_7ZipImplBW_B2n_E4nextB1s_.exit ], [ %i.bm, %vector.body ]
  %vec.phi43 = phi <4 x i32> [ zeroinitializer, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ5_0EIBX_NtB1o_9BlockQ8_0EEINtB5_7ZipImplBW_B2n_E4nextB1s_.exit ], [ %i.bn, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ5_0EIBX_NtB1o_9BlockQ8_0EEINtB5_7ZipImplBW_B2n_E4nextB1s_.exit ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.j = insertelement <4 x i64> poison, i64 %index, i64 0
  %i.k = shufflevector <4 x i64> %i.j, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.l = lshr <4 x i32> %broadcast.splat, %vec.ind
  %i.m = lshr <4 x i32> %broadcast.splat, %step.add
  %i.n = shl <4 x i32> %i.l, splat (i32 4)
  %i.o = shl <4 x i32> %i.m, splat (i32 4)
  %i.p = and <4 x i32> %i.n, splat (i32 16)
  %i.q = and <4 x i32> %i.o, splat (i32 16)
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %wide.load = load <4 x i8>, ptr %i.r, align 1   ; 2 uses
  %wide.load44 = load <4 x i8>, ptr %i.s, align 1 ; 2 uses
  %i.t = and <4 x i8> %wide.load, splat (i8 15)
  %i.u = and <4 x i8> %wide.load44, splat (i8 15)
  %i.v = zext nneg <4 x i8> %i.t to <4 x i32>
  %i.w = zext nneg <4 x i8> %i.u to <4 x i32>
  %i.x = add nsw <4 x i32> %i.p, splat (i32 -16)
  %i.y = add nsw <4 x i32> %i.q, splat (i32 -16)
  %i.z = or disjoint <4 x i32> %i.x, %i.v
  %i.aa = or disjoint <4 x i32> %i.y, %i.w
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %wide.load45 = load <4 x i8>, ptr %i.ab, align 1
  %wide.load46 = load <4 x i8>, ptr %i.ac, align 1
  %i.ad = sext <4 x i8> %wide.load45 to <4 x i32>
  %i.ae = sext <4 x i8> %wide.load46 to <4 x i32>
  %i.af = mul nsw <4 x i32> %i.z, %i.ad
  %i.ag = mul nsw <4 x i32> %i.aa, %i.ae
  %i.ah = trunc <4 x i64> %i.k to <4 x i32>
  %i.ai = or <4 x i32> %i.ah, <i32 16, i32 17, i32 18, i32 19>
  %i.aj = trunc <4 x i64> %i.k to <4 x i32>
  %i.ak = or <4 x i32> %i.aj, <i32 20, i32 21, i32 22, i32 23>
  %i.al = shl nuw <4 x i32> splat (i32 1), %i.ai
  %i.am = shl nuw <4 x i32> splat (i32 1), %i.ak
  %i.an = and <4 x i32> %i.al, %broadcast.splat
  %i.ao = and <4 x i32> %i.am, %broadcast.splat
  %i.ap = add nuw nsw <4 x i32> %vec.ind, splat (i32 12)
  %i.aq = add <4 x i32> %vec.ind, splat (i32 16)
  %i.ar = lshr <4 x i32> %i.an, %i.ap
  %i.as = lshr <4 x i32> %i.ao, %i.aq
  %i.at = and <4 x i32> %i.ar, splat (i32 255)
  %i.au = and <4 x i32> %i.as, splat (i32 255)
  %i.av = lshr <4 x i8> %wide.load, splat (i8 4)
  %i.aw = lshr <4 x i8> %wide.load44, splat (i8 4)
  %i.ax = zext nneg <4 x i8> %i.av to <4 x i32>
  %i.ay = zext nneg <4 x i8> %i.aw to <4 x i32>
  %i.az = or <4 x i32> %i.at, %i.ax
  %i.ba = or <4 x i32> %i.au, %i.ay
  %i.bb = add nsw <4 x i32> %i.az, splat (i32 -16)
  %i.bc = add nsw <4 x i32> %i.ba, splat (i32 -16)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 20
  %wide.load47 = load <4 x i8>, ptr %i.be, align 1
  %wide.load48 = load <4 x i8>, ptr %i.bf, align 1
  %i.bg = sext <4 x i8> %wide.load47 to <4 x i32>
  %i.bh = sext <4 x i8> %wide.load48 to <4 x i32>
  %i.bi = mul nsw <4 x i32> %i.bb, %i.bg
  %i.bj = mul nsw <4 x i32> %i.bc, %i.bh
  %i.bk = add <4 x i32> %i.af, %vec.phi
  %i.bl = add <4 x i32> %i.ag, %vec.phi43
  %i.bm = add <4 x i32> %i.bk, %i.bi              ; 2 uses
  %i.bn = add <4 x i32> %i.bl, %i.bj              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.bo = icmp eq i64 %index.next, 16
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !710

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants9BlockQ5_0EIBX_NtB1o_9BlockQ8_0EEINtB5_7ZipImplBW_B2n_E4nextB1s_.exit.thread: ; preds = %bb.w, %bb.a
  %.sroa.0.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ew, %bb.w ]
  ret float %.sroa.0.0.lcssa

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bn, %i.bm
  %i.bp = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %i.bq = add i64 %.sroa.520.032, 1               ; 2 uses
  %i.br = sitofp i32 %i.bp to float
  %i.bs = load i16, ptr %i.e, align 2, !noundef !7 ; 6 uses
  %i.bt = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %.split, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit, !prof !14

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
end_hunk_0
begin_hunk_1_@_RNvXs6_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ4KNtB5_8GgmlType13vec_dot_unopt:.split203
  %.not130 = icmp eq i128 %i.ji, 0
  br i1 %.not130, label %bb.c, label %bb.l

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit: ; preds = %bb.b
  %i.jj = and i64 %i.jf, 18014398509481984
  %.not = icmp eq i64 %i.jj, 0
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %.split, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.jk = and i16 %i.je, 32767
  %i.jl = icmp eq i16 %i.jk, 0
  br i1 %i.jl, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.jm = zext i16 %i.je to i32
  %i.jn = shl nuw i32 %i.jm, 16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.e:                                             ; preds = %bb.c
  %i.jo = and i16 %i.je, -32768
  %i.jp = zext i16 %i.jo to i32                   ; 2 uses
  %i.jq = and i16 %i.je, 31744                    ; 3 uses
  %i.jr = and i16 %i.je, 1023                     ; 3 uses
  %i.js = zext nneg i16 %i.jr to i32              ; 3 uses
  %i.jt = icmp eq i16 %i.jq, 31744
  br i1 %i.jt, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ju = icmp eq i16 %i.jr, 0
  %i.jv = shl nuw i32 %i.jp, 16                   ; 2 uses
  br i1 %i.ju, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.jw = shl nuw i32 %i.jp, 16                   ; 2 uses
  %i.jx = icmp eq i16 %i.jq, 0
  br i1 %i.jx, label %bb.j, label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.jy = or disjoint i32 %i.jv, 2139095040
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.i:                                             ; preds = %bb.f
  %i.jz = shl nuw nsw i32 %i.js, 13
  %i.ka = or disjoint i32 %i.jv, %i.jz
  %i.kb = or i32 %i.ka, 2143289344
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.j:                                             ; preds = %bb.g
  %i.kc = call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.jr, i1 false)
  %i.kd = zext nneg i16 %i.kc to i32              ; 2 uses
  %i.ke = add nuw nsw i32 %i.kd, 8
  %i.kf = shl i32 %i.js, %i.ke
  %i.kg = and i32 %i.kf, 8388607
  %reass.sub.i = or disjoint i32 %i.jw, 989855744
  %i.kh = shl nuw nsw i32 %i.kd, 23
  %i.ki = sub nuw nsw i32 %reass.sub.i, %i.kh
  %i.kj = or disjoint i32 %i.ki, %i.kg
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.k:                                             ; preds = %bb.g
  %i.kk = lshr exact i16 %i.jq, 10
  %narrow.i = add nuw nsw i16 %i.kk, 112
  %i.kl = zext nneg i16 %narrow.i to i32
  %i.km = shl nuw nsw i32 %i.kl, 23
  %i.kn = shl nuw nsw i32 %i.js, 13
  %i.ko = or disjoint i32 %i.km, %i.kn
  %i.kp = or disjoint i32 %i.ko, %i.jw
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit: ; preds = %bb.d, %bb.h, %bb.i, %bb.j, %bb.k
  %.sroa.0.0.i114 = phi i32 [ %i.jn, %bb.d ], [ %i.jy, %bb.h ], [ %i.kb, %bb.i ], [ %i.kj, %bb.j ], [ %i.kp, %bb.k ]
  %i.kq = bitcast i32 %.sroa.0.0.i114 to float
  br label %bb.m

bb.l:                                             ; preds = %.split, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.kr = call fastcc noundef float @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.je) #30
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit
  %.sroa.062.0 = phi float [ %i.kr, %bb.l ], [ %i.kq, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit ]
  %i.ks = load float, ptr %i.bw, align 4, !noundef !7 ; 2 uses
  %i.kt = fmul float %.sroa.062.0, %i.ks
  %i.ku = sitofp <8 x i32> %i.oh to <8 x float>
  %i.kv = insertelement <8 x float> poison, float %i.kt, i64 0
  %i.kw = shufflevector <8 x float> %i.kv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.kx = fmul <8 x float> %i.kw, %i.ku
  %i.ky = fadd <8 x float> %i.bu, %i.kx           ; 9 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  %i.la = load i16, ptr %i.kz, align 2, !noundef !7 ; 6 uses
  %i.lb = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.lc = icmp eq i64 %i.lb, 0
  br i1 %i.lc, label %.split129, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit116, !prof !14

.split129:                                        ; preds = %bb.m
  %i.ld = call noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
  %i.le = and i128 %i.ld, 18014398509481984
  %.not132 = icmp eq i128 %i.le, 0
  br i1 %.not132, label %bb.n, label %bb.w

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit116: ; preds = %bb.m
  %i.lf = and i64 %i.lb, 18014398509481984
  %.not131 = icmp eq i64 %i.lf, 0
  br i1 %.not131, label %bb.n, label %bb.w

bb.n:                                             ; preds = %.split129, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit116
  %i.lg = and i16 %i.la, 32767
  %i.lh = icmp eq i16 %i.lg, 0
  br i1 %i.lh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.li = zext i16 %i.la to i32
  %i.lj = shl nuw i32 %i.li, 16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit120

bb.p:                                             ; preds = %bb.n
  %i.lk = and i16 %i.la, -32768
  %i.ll = zext i16 %i.lk to i32                   ; 2 uses
  %i.lm = and i16 %i.la, 31744                    ; 3 uses
  %i.ln = and i16 %i.la, 1023                     ; 3 uses
  %i.lo = zext nneg i16 %i.ln to i32              ; 3 uses
  %i.lp = icmp eq i16 %i.lm, 31744
  br i1 %i.lp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.lq = icmp eq i16 %i.ln, 0
  %i.lr = shl nuw i32 %i.ll, 16                   ; 2 uses
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
  %i.mw = load i8, ptr %i.mv, align 1, !alias.scope !1087, !noundef !7
  %i.mx = zext i8 %i.mw to i32
  %i.my = getelementptr inbounds nuw i8, ptr %.sroa.046.0201, i64 8
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.054.0199, i64 8
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.046.0201, i64 16
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.054.0199, i64 16
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.046.0201, i64 24
  %i.nd = getelementptr inbounds nuw i8, ptr %.sroa.054.0199, i64 24
  %i.ne = load <8 x i8>, ptr %.sroa.046.0201, align 1
  %i.nf = sext <8 x i8> %i.ne to <8 x i32>
  %i.ng = load <8 x i8>, ptr %.sroa.054.0199, align 16
  %i.nh = sext <8 x i8> %i.ng to <8 x i32>
  %i.ni = mul nsw <8 x i32> %i.nh, %i.nf
  %i.nj = insertelement <8 x i32> poison, i32 %i.mx, i64 0
  %i.nk = shufflevector <8 x i32> %i.nj, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.nl = mul nsw <8 x i32> %i.ni, %i.nk
  %i.nm = add <8 x i32> %i.nl, %i.mt
  %i.nn = load <8 x i8>, ptr %i.my, align 1
  %i.no = sext <8 x i8> %i.nn to <8 x i32>
  %i.np = load <8 x i8>, ptr %i.mz, align 8
  %i.nq = sext <8 x i8> %i.np to <8 x i32>
  %i.nr = mul nsw <8 x i32> %i.nq, %i.no
  %i.ns = mul nsw <8 x i32> %i.nr, %i.nk
  %i.nt = add <8 x i32> %i.ns, %i.nm
  %i.nu = load <8 x i8>, ptr %i.na, align 1
  %i.nv = sext <8 x i8> %i.nu to <8 x i32>
  %i.nw = load <8 x i8>, ptr %i.nb, align 16
  %i.nx = sext <8 x i8> %i.nw to <8 x i32>
  %i.ny = mul nsw <8 x i32> %i.nx, %i.nv
  %i.nz = mul nsw <8 x i32> %i.ny, %i.nk
  %i.oa = add <8 x i32> %i.nz, %i.nt
  %i.ob = load <8 x i8>, ptr %i.nc, align 1
  %i.oc = sext <8 x i8> %i.ob to <8 x i32>
  %i.od = load <8 x i8>, ptr %i.nd, align 8
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
  %.phi.trans.insert253 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.phi.trans.insert255 = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.phi.trans.insert257 = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.phi.trans.insert259 = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %.phi.trans.insert261 = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %.phi.trans.insert263 = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %.phi.trans.insert265 = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %.phi.trans.insert267 = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %.phi.trans.insert269 = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %.phi.trans.insert271 = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %.phi.trans.insert273 = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %.phi.trans.insert275 = getelementptr inbounds nuw i8, ptr %i.e, i64 7
  %.phi.trans.insert277 = getelementptr inbounds nuw i8, ptr %i.c, i64 7
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
end_hunk_1
begin_hunk_2_@_RNvXs7_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ5KNtB5_8GgmlType13vec_dot_unopt:.split222
  %.not148 = icmp eq i128 %i.kz, 0
  br i1 %.not148, label %bb.c, label %bb.l

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit: ; preds = %bb.b
  %i.la = and i64 %i.kw, 18014398509481984
  %.not = icmp eq i64 %i.la, 0
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %.split, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.lb = and i16 %i.kv, 32767
  %i.lc = icmp eq i16 %i.lb, 0
  br i1 %i.lc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ld = zext i16 %i.kv to i32
  %i.le = shl nuw i32 %i.ld, 16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.e:                                             ; preds = %bb.c
  %i.lf = and i16 %i.kv, -32768
  %i.lg = zext i16 %i.lf to i32                   ; 2 uses
  %i.lh = and i16 %i.kv, 31744                    ; 3 uses
  %i.li = and i16 %i.kv, 1023                     ; 3 uses
  %i.lj = zext nneg i16 %i.li to i32              ; 3 uses
  %i.lk = icmp eq i16 %i.lh, 31744
  br i1 %i.lk, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ll = icmp eq i16 %i.li, 0
  %i.lm = shl nuw i32 %i.lg, 16                   ; 2 uses
  br i1 %i.ll, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ln = shl nuw i32 %i.lg, 16                   ; 2 uses
  %i.lo = icmp eq i16 %i.lh, 0
  br i1 %i.lo, label %bb.j, label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.lp = or disjoint i32 %i.lm, 2139095040
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.i:                                             ; preds = %bb.f
  %i.lq = shl nuw nsw i32 %i.lj, 13
  %i.lr = or disjoint i32 %i.lm, %i.lq
  %i.ls = or i32 %i.lr, 2143289344
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.j:                                             ; preds = %bb.g
  %i.lt = call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.li, i1 false)
  %i.lu = zext nneg i16 %i.lt to i32              ; 2 uses
  %i.lv = add nuw nsw i32 %i.lu, 8
  %i.lw = shl i32 %i.lj, %i.lv
  %i.lx = and i32 %i.lw, 8388607
  %reass.sub.i = or disjoint i32 %i.ln, 989855744
  %i.ly = shl nuw nsw i32 %i.lu, 23
  %i.lz = sub nuw nsw i32 %reass.sub.i, %i.ly
  %i.ma = or disjoint i32 %i.lz, %i.lx
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.k:                                             ; preds = %bb.g
  %i.mb = lshr exact i16 %i.lh, 10
  %narrow.i = add nuw nsw i16 %i.mb, 112
  %i.mc = zext nneg i16 %narrow.i to i32
  %i.md = shl nuw nsw i32 %i.mc, 23
  %i.me = shl nuw nsw i32 %i.lj, 13
  %i.mf = or disjoint i32 %i.md, %i.me
  %i.mg = or disjoint i32 %i.mf, %i.ln
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit: ; preds = %bb.d, %bb.h, %bb.i, %bb.j, %bb.k
  %.sroa.0.0.i132 = phi i32 [ %i.le, %bb.d ], [ %i.lp, %bb.h ], [ %i.ls, %bb.i ], [ %i.ma, %bb.j ], [ %i.mg, %bb.k ]
  %i.mh = bitcast i32 %.sroa.0.0.i132 to float
  br label %bb.m

bb.l:                                             ; preds = %.split, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.mi = call fastcc noundef float @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.kv) #30
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit
  %.sroa.080.0 = phi float [ %i.mi, %bb.l ], [ %i.mh, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit ]
  %i.mj = load float, ptr %i.bw, align 4, !noundef !7 ; 2 uses
  %i.mk = fmul float %.sroa.080.0, %i.mj
  %i.ml = sitofp <8 x i32> %i.py to <8 x float>
  %i.mm = insertelement <8 x float> poison, float %i.mk, i64 0
  %i.mn = shufflevector <8 x float> %i.mm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.mo = fmul <8 x float> %i.mn, %i.ml
  %i.mp = fadd <8 x float> %i.bu, %i.mo           ; 9 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  %i.mr = load i16, ptr %i.mq, align 2, !noundef !7 ; 6 uses
  %i.ms = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.mt = icmp eq i64 %i.ms, 0
  br i1 %i.mt, label %.split147, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit134, !prof !14

.split147:                                        ; preds = %bb.m
  %i.mu = call noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
  %i.mv = and i128 %i.mu, 18014398509481984
  %.not150 = icmp eq i128 %i.mv, 0
  br i1 %.not150, label %bb.n, label %bb.w

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit134: ; preds = %bb.m
  %i.mw = and i64 %i.ms, 18014398509481984
  %.not149 = icmp eq i64 %i.mw, 0
  br i1 %.not149, label %bb.n, label %bb.w

bb.n:                                             ; preds = %.split147, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit134
  %i.mx = and i16 %i.mr, 32767
  %i.my = icmp eq i16 %i.mx, 0
  br i1 %i.my, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.mz = zext i16 %i.mr to i32
  %i.na = shl nuw i32 %i.mz, 16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit138

bb.p:                                             ; preds = %bb.n
  %i.nb = and i16 %i.mr, -32768
  %i.nc = zext i16 %i.nb to i32                   ; 2 uses
  %i.nd = and i16 %i.mr, 31744                    ; 3 uses
  %i.ne = and i16 %i.mr, 1023                     ; 3 uses
  %i.nf = zext nneg i16 %i.ne to i32              ; 3 uses
  %i.ng = icmp eq i16 %i.nd, 31744
  br i1 %i.ng, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.nh = icmp eq i16 %i.ne, 0
  %i.ni = shl nuw i32 %i.nc, 16                   ; 2 uses
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
  %i.on = load i8, ptr %i.om, align 1, !alias.scope !1200, !noundef !7
  %i.oo = zext i8 %i.on to i32
  %i.op = getelementptr inbounds nuw i8, ptr %.sroa.064.0220, i64 8
  %i.oq = getelementptr inbounds nuw i8, ptr %.sroa.072.0218, i64 8
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.064.0220, i64 16
  %i.os = getelementptr inbounds nuw i8, ptr %.sroa.072.0218, i64 16
  %i.ot = getelementptr inbounds nuw i8, ptr %.sroa.064.0220, i64 24
  %i.ou = getelementptr inbounds nuw i8, ptr %.sroa.072.0218, i64 24
  %i.ov = load <8 x i8>, ptr %.sroa.064.0220, align 1
  %i.ow = sext <8 x i8> %i.ov to <8 x i32>
  %i.ox = load <8 x i8>, ptr %.sroa.072.0218, align 16
  %i.oy = sext <8 x i8> %i.ox to <8 x i32>
  %i.oz = mul nsw <8 x i32> %i.oy, %i.ow
  %i.pa = insertelement <8 x i32> poison, i32 %i.oo, i64 0
  %i.pb = shufflevector <8 x i32> %i.pa, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.pc = mul nsw <8 x i32> %i.oz, %i.pb
  %i.pd = add <8 x i32> %i.pc, %i.ok
  %i.pe = load <8 x i8>, ptr %i.op, align 1
  %i.pf = sext <8 x i8> %i.pe to <8 x i32>
  %i.pg = load <8 x i8>, ptr %i.oq, align 8
  %i.ph = sext <8 x i8> %i.pg to <8 x i32>
  %i.pi = mul nsw <8 x i32> %i.ph, %i.pf
  %i.pj = mul nsw <8 x i32> %i.pi, %i.pb
  %i.pk = add <8 x i32> %i.pj, %i.pd
  %i.pl = load <8 x i8>, ptr %i.or, align 1
  %i.pm = sext <8 x i8> %i.pl to <8 x i32>
  %i.pn = load <8 x i8>, ptr %i.os, align 16
  %i.po = sext <8 x i8> %i.pn to <8 x i32>
  %i.pp = mul nsw <8 x i32> %i.po, %i.pm
  %i.pq = mul nsw <8 x i32> %i.pp, %i.pb
  %i.pr = add <8 x i32> %i.pq, %i.pk
  %i.ps = load <8 x i8>, ptr %i.ot, align 1
  %i.pt = sext <8 x i8> %i.ps to <8 x i32>
  %i.pu = load <8 x i8>, ptr %i.ou, align 8
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
  %.phi.trans.insert263 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.phi.trans.insert267 = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.phi.trans.insert265 = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %.phi.trans.insert271 = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %.phi.trans.insert269 = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %.phi.trans.insert275 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.phi.trans.insert273 = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %.phi.trans.insert279 = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %.phi.trans.insert277 = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %.phi.trans.insert283 = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %.phi.trans.insert281 = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %.phi.trans.insert287 = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %.phi.trans.insert285 = getelementptr inbounds nuw i8, ptr %i.e, i64 7
  %i.bc = add nuw i64 %i.f, 8
  %i.bd = add nuw i64 %i.d, 8
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i.lr.ph, %bb.at
  %i.be = phi ptr [ %i.n, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i.lr.ph ], [ %i.jv, %bb.at ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %i.bf, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !alias.scope !1219
  %.sroa.0.0.copyload1.i = load ptr, ptr %i.be, align 8, !noalias !1220 ; 30 uses
  %.sroa.0.0.copyload1.i379 = ptrtoaddr ptr %.sroa.0.0.copyload1.i to i64 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.copyload1.i, null
  br i1 %.not.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i._crit_edge, label %bb.b

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %bb.cc, %bb.bo, %bb.bb, %bb.q, %bb.d, %bb.c, %._crit_edge, %.invoke, %bb.ce
  %lpad.loopexit.split-lp391 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KRSfEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KRSfEEEEB2h_.exit unwind label %bb.cg

bb.b:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.i
  %.sroa.7.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.8.16.copyload = load ptr, ptr %.sroa.7.0..sroa_idx2.i, align 8, !noalias !1217, !nonnull !7, !noundef !7 ; 8 uses
  %.sroa.10.16..sroa.7.0..sroa_idx2.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %.sroa.10.16.copyload = load i64, ptr %.sroa.10.16..sroa.7.0..sroa_idx2.i.sroa_idx, align 8, !noalias !1217 ; 8 uses
  %i.bg = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !1217, !noundef !7 ; 3 uses
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !1217
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
  %lcmp.mod403 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod403)
  br label %.preheader163.epil

.preheader163.epil:                               ; preds = %.preheader163.epil, %.preheader163.epil.preheader
end_hunk_2
begin_hunk_3_@_RNvXs8_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ6KNtB5_8GgmlType18from_float_imatrix:bb.a
  br label %bb.z

bb.y:                                             ; preds = %.split97, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit60
  %i.is = call fastcc noundef float @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.ek) #30
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit
  %.sroa.026.0 = phi float [ %i.is, %bb.y ], [ %i.ir, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit ]
  %i.it = sitofp i8 %i.ej to float
  %i.iu = fmul float %.sroa.026.0, %i.it          ; 2 uses
  %i.iv = fcmp oeq float %i.iu, 0.000000e+00
  br i1 %i.iv, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.backedge, label %.preheader

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.backedge: ; preds = %.preheader, %bb.z
  %i.iw = icmp eq i64 %.sroa.072.0.add, 208
  br i1 %i.iw, label %vector.body135, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutaEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread.preheader

.preheader:                                       ; preds = %bb.z
  %i.ix = shl nuw nsw i64 %.sroa.774.0111, 4      ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0120, i64 %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ix
  %i.ja = load <16 x float>, ptr %i.iy, align 4
  %i.jb = insertelement <16 x float> poison, float %i.iu, i64 0
  %i.jc = shufflevector <16 x float> %i.jb, <16 x float> poison, <16 x i32> zeroinitializer
  %i.jd = fdiv <16 x float> %i.ja, %i.jc
  %i.je = call <16 x float> @llvm.round.v16f32(<16 x float> %i.jd)
  %i.jf = call <16 x i32> @llvm.fptosi.sat.v16i32.v16f32(<16 x float> %i.je)
  %i.jg = call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.jf, <16 x i32> splat (i32 -32))
  %i.jh = call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.jg, <16 x i32> splat (i32 31))
  %i.ji = trunc nsw <16 x i32> %i.jh to <16 x i8>
  %i.jj = add nsw <16 x i8> %i.ji, splat (i8 32)
  store <16 x i8> %i.jj, ptr %i.iz, align 16
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
  %indvars.iv = phi i64 [ %3, %.lr.ph.preheader ], [ %indvars.iv.next, %.loopexit.1 ] ; 7 uses
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
  %i.ay = tail call i64 @llvm.usub.sat.i64(i64 %indvars.iv, i64 32) ; 2 uses
  %i.az = tail call i64 @llvm.usub.sat.i64(i64 %indvars.iv, i64 64) ; 2 uses
  %i.ba = tail call i64 @llvm.usub.sat.i64(i64 %indvars.iv, i64 96) ; 2 uses
  %exitcond354 = icmp eq i64 %.sroa.7.0173, %i.d
  br i1 %exitcond354, label %bb.s, label %bb.r, !prof !14

.loopexit:                                        ; preds = %bb.w
  %indvars.iv.next305 = add nsw i64 %indvars.iv, -128 ; 5 uses
  %i.bb = tail call i64 @llvm.usub.sat.i64(i64 %indvars.iv.next305, i64 32) ; 2 uses
  %i.bc = tail call i64 @llvm.usub.sat.i64(i64 %indvars.iv.next305, i64 64) ; 2 uses
  %i.bd = tail call i64 @llvm.usub.sat.i64(i64 %indvars.iv.next305, i64 96) ; 2 uses
  %i.be = or disjoint i64 %i.ax, 128              ; 7 uses
  %i.bf = icmp samesign ugt i64 %i.be, %3
  br i1 %i.bf, label %bb.s, label %bb.m, !prof !14

bb.m:                                             ; preds = %.loopexit
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.be ; 8 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.0174, i64 200 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0174, i64 64 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0174, i64 160 ; 2 uses
  %i.bk = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 %i.bc)
  %i.bl = tail call i64 @llvm.umin.i64(i64 %i.bk, i64 %i.bb) ; 2 uses
  %min.iters.check = icmp ult i64 %i.bl, 4
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
  %wide.load = load <4 x i8>, ptr %i.bs, align 2  ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 %index
  %wide.load472 = load <4 x i8>, ptr %i.bt, align 2 ; 4 uses
  %i.bu = or disjoint i64 %index, 32              ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bu
  %wide.load473 = load <4 x i8>, ptr %i.bv, align 2 ; 2 uses
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
  %i.cr = load i8, ptr %i.cq, align 1
  %broadcast.splatinsert474 = insertelement <4 x i8> poison, i8 %i.cr, i64 0
  %broadcast.splat475 = shufflevector <4 x i8> %broadcast.splatinsert474, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.cs = sitofp <4 x i8> %broadcast.splat475 to <4 x float>
  %i.ct = fmul <4 x float> %broadcast.splat, %i.cs
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index
  %i.cv = fmul <4 x float> %i.ct, %i.cp
  store <4 x float> %i.cv, ptr %i.cu, align 4
  %i.cw = sitofp <4 x i8> %i.ca to <4 x float>
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cq, i64 2
  %i.cy = load i8, ptr %i.cx, align 1
  %broadcast.splatinsert476 = insertelement <4 x i8> poison, i8 %i.cy, i64 0
  %broadcast.splat477 = shufflevector <4 x i8> %broadcast.splatinsert476, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.cz = sitofp <4 x i8> %broadcast.splat477 to <4 x float>
  %i.da = fmul <4 x float> %broadcast.splat, %i.cz
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bu
  %i.dc = fmul <4 x float> %i.da, %i.cw
  store <4 x float> %i.dc, ptr %i.db, align 4
  %i.dd = sitofp <4 x i8> %i.ce to <4 x float>
  %i.de = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.df = load i8, ptr %i.de, align 1
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
  %i.dn = load i8, ptr %i.dm, align 1
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
  br i1 %i.dt, label %scalar.ph.preheader, label %vector.body, !llvm.loop !1276

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
  %exitcond.1.not = icmp eq i64 %.sroa.014.0170.1, %indvars.iv.next305
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
  %exitcond306.1.not = icmp eq i64 %.sroa.014.0170.1, %i.bb
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
  %exitcond307.1.not = icmp eq i64 %.sroa.014.0170.1, %i.bc
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
  %exitcond308.1.not = icmp eq i64 %.sroa.014.0170.1, %i.bd
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
  br i1 %exitcond309.1.not, label %.loopexit.1, label %scalar.ph, !llvm.loop !1277

.loopexit.1:                                      ; preds = %bb.q
  %i.gd = icmp eq ptr %i.e, %i.a
  %indvars.iv.next = add nsw i64 %indvars.iv, -256
  br i1 %i.gd, label %._crit_edge, label %.lr.ph

bb.r:                                             ; preds = %bb.l
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ax ; 8 uses
  %i.gf = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 %i.az)
  %i.gg = tail call i64 @llvm.umin.i64(i64 %i.gf, i64 %i.ay) ; 2 uses
  %min.iters.check483 = icmp ult i64 %i.gg, 4
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
  %wide.load490 = load <4 x i8>, ptr %i.gn, align 2 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.av, i64 %index489
  %wide.load491 = load <4 x i8>, ptr %i.go, align 2 ; 4 uses
  %i.gp = or disjoint i64 %index489, 32           ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0.0174, i64 %i.gp
  %wide.load492 = load <4 x i8>, ptr %i.gq, align 2 ; 2 uses
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
  %i.hm = load i8, ptr %i.hl, align 1
  %broadcast.splatinsert493 = insertelement <4 x i8> poison, i8 %i.hm, i64 0
  %broadcast.splat494 = shufflevector <4 x i8> %broadcast.splatinsert493, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.hn = sitofp <4 x i8> %broadcast.splat494 to <4 x float>
  %i.ho = fmul <4 x float> %broadcast.splat487, %i.hn
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %index489
  %i.hq = fmul <4 x float> %i.ho, %i.hk
  store <4 x float> %i.hq, ptr %i.hp, align 4
  %i.hr = sitofp <4 x i8> %i.gv to <4 x float>
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hl, i64 2
  %i.ht = load i8, ptr %i.hs, align 1
  %broadcast.splatinsert495 = insertelement <4 x i8> poison, i8 %i.ht, i64 0
  %broadcast.splat496 = shufflevector <4 x i8> %broadcast.splatinsert495, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.hu = sitofp <4 x i8> %broadcast.splat496 to <4 x float>
  %i.hv = fmul <4 x float> %broadcast.splat487, %i.hu
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.gp
  %i.hx = fmul <4 x float> %i.hv, %i.hr
  store <4 x float> %i.hx, ptr %i.hw, align 4
  %i.hy = sitofp <4 x i8> %i.gz to <4 x float>
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  %i.ia = load i8, ptr %i.hz, align 1
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
  %i.ii = load i8, ptr %i.ih, align 1
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
  br i1 %i.io, label %scalar.ph482.preheader, label %vector.body488, !llvm.loop !1278

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
  %exitcond.not = icmp eq i64 %.sroa.014.0170, %indvars.iv
  br i1 %exitcond.not, label %.loopexit314, label %bb.t

.loopexit314:                                     ; preds = %scalar.ph482, %scalar.ph
  %.lcssa419.sink = phi i64 [ %i.be, %scalar.ph ], [ %i.ax, %scalar.ph482 ]
  %.sroa.014.0170.lcssa190 = phi i64 [ %indvars.iv.next305, %scalar.ph ], [ %indvars.iv, %scalar.ph482 ]
  %i.jm = sub nuw nsw i64 %3, %.lcssa419.sink
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
  %exitcond306.not = icmp eq i64 %.sroa.014.0170, %i.ay
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
  %exitcond307.not = icmp eq i64 %.sroa.014.0170, %i.az
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
  %exitcond308.not = icmp eq i64 %.sroa.014.0170, %i.ba
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
  br i1 %exitcond309.not, label %.loopexit, label %scalar.ph482, !llvm.loop !1279

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
  store <4 x i8> %i.ac, ptr %next.gep, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, 256
  br i1 %i.ad, label %.preheader, label %vector.body, !llvm.loop !1280

bb.c:                                             ; preds = %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %.sroa.0.066, i8 0, i64 260, i1 false)
  br label %bb.d

.preheader:                                       ; preds = %vector.body
  %i.ae = load <16 x i8>, ptr %.ptr49, align 4
  %i.af = sext <16 x i8> %i.ae to <16 x i16>
  %i.ag = tail call i16 @llvm.vector.reduce.add.v16i16(<16 x i16> %i.af)
  store i16 %i.ag, ptr %i.u, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 20
  %i.ai = load <16 x i8>, ptr %i.ah, align 4
  %i.aj = sext <16 x i8> %i.ai to <16 x i16>
  %i.ak = tail call i16 @llvm.vector.reduce.add.v16i16(<16 x i16> %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 262
  store i16 %i.ak, ptr %i.al, align 2
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 36
  %i.an = load <16 x i8>, ptr %i.am, align 4
  %i.ao = sext <16 x i8> %i.an to <16 x i16>
  %i.ap = tail call i16 @llvm.vector.reduce.add.v16i16(<16 x i16> %i.ao)
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 264
  store i16 %i.ap, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 52
  %i.as = load <16 x i8>, ptr %i.ar, align 4
  %i.at = sext <16 x i8> %i.as to <16 x i16>
  %i.au = tail call i16 @llvm.vector.reduce.add.v16i16(<16 x i16> %i.at)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 266
  store i16 %i.au, ptr %i.av, align 2
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 68
  %i.ax = load <16 x i8>, ptr %i.aw, align 4
  %i.ay = sext <16 x i8> %i.ax to <16 x i16>
  %i.az = tail call i16 @llvm.vector.reduce.add.v16i16(<16 x i16> %i.ay)
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 268
  store i16 %i.az, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 84
  %i.bc = load <16 x i8>, ptr %i.bb, align 4
  %i.bd = sext <16 x i8> %i.bc to <16 x i16>
  %i.be = tail call i16 @llvm.vector.reduce.add.v16i16(<16 x i16> %i.bd)
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 270
  store i16 %i.be, ptr %i.bf, align 2
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 100
  %i.bh = load <16 x i8>, ptr %i.bg, align 4
  %i.bi = sext <16 x i8> %i.bh to <16 x i16>
  %i.bj = tail call i16 @llvm.vector.reduce.add.v16i16(<16 x i16> %i.bi)
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 272
  store i16 %i.bj, ptr %i.bk, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 116
  %i.bm = load <16 x i8>, ptr %i.bl, align 4
  %i.bn = sext <16 x i8> %i.bm to <16 x i16>
  %i.bo = tail call i16 @llvm.vector.reduce.add.v16i16(<16 x i16> %i.bn)
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 274
  store i16 %i.bo, ptr %i.bp, align 2
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 132
  %i.br = load <16 x i8>, ptr %i.bq, align 4
  %i.bs = sext <16 x i8> %i.br to <16 x i16>
  %i.bt = tail call i16 @llvm.vector.reduce.add.v16i16(<16 x i16> %i.bs)
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 276
  store i16 %i.bt, ptr %i.bu, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 148
  %i.bw = load <16 x i8>, ptr %i.bv, align 4
  %i.bx = sext <16 x i8> %i.bw to <16 x i16>
  %i.by = tail call i16 @llvm.vector.reduce.add.v16i16(<16 x i16> %i.bx)
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 278
  store i16 %i.by, ptr %i.bz, align 2
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 164
  %i.cb = load <16 x i8>, ptr %i.ca, align 4
  %i.cc = sext <16 x i8> %i.cb to <16 x i16>
  %i.cd = tail call i16 @llvm.vector.reduce.add.v16i16(<16 x i16> %i.cc)
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 280
  store i16 %i.cd, ptr %i.ce, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 180
  %i.cg = load <16 x i8>, ptr %i.cf, align 4
  %i.ch = sext <16 x i8> %i.cg to <16 x i16>
  %i.ci = tail call i16 @llvm.vector.reduce.add.v16i16(<16 x i16> %i.ch)
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 282
  store i16 %i.ci, ptr %i.cj, align 2
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 196
  %i.cl = load <16 x i8>, ptr %i.ck, align 4
  %i.cm = sext <16 x i8> %i.cl to <16 x i16>
  %i.cn = tail call i16 @llvm.vector.reduce.add.v16i16(<16 x i16> %i.cm)
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 284
  store i16 %i.cn, ptr %i.co, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 212
  %i.cq = load <16 x i8>, ptr %i.cp, align 4
  %i.cr = sext <16 x i8> %i.cq to <16 x i16>
  %i.cs = tail call i16 @llvm.vector.reduce.add.v16i16(<16 x i16> %i.cr)
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 286
  store i16 %i.cs, ptr %i.ct, align 2
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 228
  %i.cv = load <16 x i8>, ptr %i.cu, align 4
  %i.cw = sext <16 x i8> %i.cv to <16 x i16>
  %i.cx = tail call i16 @llvm.vector.reduce.add.v16i16(<16 x i16> %i.cw)
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 288
  store i16 %i.cx, ptr %i.cy, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 244
  %i.da = load <16 x i8>, ptr %i.cz, align 4
  %i.db = sext <16 x i8> %i.da to <16 x i16>
  %i.dc = tail call i16 @llvm.vector.reduce.add.v16i16(<16 x i16> %i.db)
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.066, i64 290
  store i16 %i.dc, ptr %i.dd, align 2
  %i.de = fdiv float 1.000000e+00, %i.t
  store float %i.de, ptr %.sroa.0.066, align 4
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.c
  %i.df = icmp eq ptr %i.d, %i.a
  br i1 %i.df, label %._crit_edge69, label %.lr.ph68
}

; Function Attrs: nonlazybind uwtable
define noundef float @_RNvXs9_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ8KNtB5_8GgmlType13vec_dot_unopt(i64 noundef %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef range(i64 0, 31586890537173890) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef range(i64 0, 31586890537173890) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw [292 x i8], ptr %1, i64 %2
  %i.d = getelementptr inbounds nuw [292 x i8], ptr %3, i64 %4
  call void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ8KEBW_EINtB5_7ZipImplBW_BW_E3newB1s_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %1, ptr noundef nonnull %i.c, ptr noundef nonnull %3, ptr noundef nonnull %i.d)
  %.sroa.0.0.copyload = load ptr, ptr %i.b, align 8 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.46.0.copyload = load ptr, ptr %.sroa.46.0..sroa_idx, align 8 ; 2 uses
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.57.0.copyload = load i64, ptr %.sroa.57.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %i.e = icmp ult i64 %.sroa.57.0.copyload, %.sroa.7.0.copyload
  br i1 %i.e, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ8KEBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit.lr.ph, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ8KEBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit.thread

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ8KEBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit.lr.ph: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload), "nonnull"(ptr %.sroa.46.0.copyload) ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ8KEBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ8KEBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ8KEBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit.lr.ph, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IteraEBX_EINtB6_7ZipImplBX_BX_E4foldlNCINvNtB8_3map8map_foldTRaB2i_EllNCNvXs9_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2z_8BlockQ8KNtB2z_8GgmlType13vec_dot_unopt0NCINvXsa_NtNtBa_6traits5accumlNtB4g_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit
  %.sroa.0.013 = phi float [ 0.000000e+00, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ8KEBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit.lr.ph ], [ %i.as, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IteraEBX_EINtB6_7ZipImplBX_BX_E4foldlNCINvNtB8_3map8map_foldTRaB2i_EllNCNvXs9_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2z_8BlockQ8KNtB2z_8GgmlType13vec_dot_unopt0NCINvXsa_NtNtBa_6traits5accumlNtB4g_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit ]
  %.sroa.57.012 = phi i64 [ %.sroa.57.0.copyload, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ8KEBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit.lr.ph ], [ %i.i, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IteraEBX_EINtB6_7ZipImplBX_BX_E4foldlNCINvNtB8_3map8map_foldTRaB2i_EllNCNvXs9_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2z_8BlockQ8KNtB2z_8GgmlType13vec_dot_unopt0NCINvXsa_NtNtBa_6traits5accumlNtB4g_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit ] ; 3 uses
  %i.i = add i64 %.sroa.57.012, 1                 ; 2 uses
  %i.j = getelementptr inbounds nuw [292 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.57.012 ; 3 uses
  %i.k = getelementptr inbounds nuw [292 x i8], ptr %.sroa.46.0.copyload, i64 %.sroa.57.012 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 260
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 260
  call void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteraEBW_EINtB5_7ZipImplBW_BW_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1287)
  %.val.i5 = load i64, ptr %i.f, align 8, !alias.scope !1287, !noundef !7 ; 4 uses
  %.val11.i = load i64, ptr %i.g, align 8, !alias.scope !1287, !noundef !7 ; 2 uses
  %i.p = sub i64 %.val11.i, %.val.i5              ; 4 uses
  %.not.i = icmp eq i64 %.val11.i, %.val.i5
  br i1 %.not.i, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IteraEBX_EINtB6_7ZipImplBX_BX_E4foldlNCINvNtB8_3map8map_foldTRaB2i_EllNCNvXs9_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2z_8BlockQ8KNtB2z_8GgmlType13vec_dot_unopt0NCINvXsa_NtNtBa_6traits5accumlNtB4g_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ8KEBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit
  %.val1.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1288, !nonnull !7, !noundef !7 ; 2 uses
  %.val.i.i = load ptr, ptr %i.h, align 8, !alias.scope !1288, !nonnull !7, !noundef !7 ; 2 uses
  %min.iters.check = icmp ult i64 %i.p, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.p, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ab, %vector.body ]
  %vec.phi17 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ac, %vector.body ]
  %i.q = add i64 %index, %.val.i5                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.q ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %wide.load = load <4 x i8>, ptr %i.r, align 1, !noalias !1287
  %wide.load18 = load <4 x i8>, ptr %i.t, align 1, !noalias !1287
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %wide.load19 = load <4 x i8>, ptr %i.s, align 1, !noalias !1287
  %wide.load20 = load <4 x i8>, ptr %i.u, align 1, !noalias !1287
  %i.v = sext <4 x i8> %wide.load to <4 x i32>
  %i.w = sext <4 x i8> %wide.load18 to <4 x i32>
  %i.x = sext <4 x i8> %wide.load19 to <4 x i32>
  %i.y = sext <4 x i8> %wide.load20 to <4 x i32>
  %i.z = mul nsw <4 x i32> %i.x, %i.v
  %i.aa = mul nsw <4 x i32> %i.y, %i.w
  %i.ab = add <4 x i32> %i.z, %vec.phi            ; 2 uses
  %i.ac = add <4 x i32> %i.aa, %vec.phi17         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1285

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ac, %i.ab
  %i.ae = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IteraEBX_EINtB6_7ZipImplBX_BX_E4foldlNCINvNtB8_3map8map_foldTRaB2i_EllNCNvXs9_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2z_8BlockQ8KNtB2z_8GgmlType13vec_dot_unopt0NCINvXsa_NtNtBa_6traits5accumlNtB4g_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.sroa.0.015.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %i.ae, %middle.block ]
  %.sroa.02.014.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.0.015.i = phi i32 [ %i.am, %scalar.ph ], [ %.sroa.0.015.i.ph, %scalar.ph.preheader ]
  %.sroa.02.014.i = phi i64 [ %i.af, %scalar.ph ], [ %.sroa.02.014.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.af = add nuw i64 %.sroa.02.014.i, 1          ; 2 uses
  %i.ag = add i64 %.sroa.02.014.i, %.val.i5       ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ag
  %.val12.i = load i8, ptr %i.ah, align 1, !noalias !1287, !noundef !7
  %.val13.i = load i8, ptr %i.ai, align 1, !noalias !1287, !noundef !7
  %i.aj = sext i8 %.val12.i to i32
  %i.ak = sext i8 %.val13.i to i32
  %i.al = mul nsw i32 %i.ak, %i.aj
  %i.am = add i32 %i.al, %.sroa.0.015.i           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.af, %i.p
  br i1 %exitcond.not.i, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IteraEBX_EINtB6_7ZipImplBX_BX_E4foldlNCINvNtB8_3map8map_foldTRaB2i_EllNCNvXs9_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2z_8BlockQ8KNtB2z_8GgmlType13vec_dot_unopt0NCINvXsa_NtNtBa_6traits5accumlNtB4g_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit.loopexit, label %scalar.ph, !llvm.loop !1286

_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IteraEBX_EINtB6_7ZipImplBX_BX_E4foldlNCINvNtB8_3map8map_foldTRaB2i_EllNCNvXs9_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2z_8BlockQ8KNtB2z_8GgmlType13vec_dot_unopt0NCINvXsa_NtNtBa_6traits5accumlNtB4g_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit.loopexit: ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.ae, %middle.block ], [ %i.am, %scalar.ph ]
  %i.an = sitofp i32 %.lcssa to float
  br label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IteraEBX_EINtB6_7ZipImplBX_BX_E4foldlNCINvNtB8_3map8map_foldTRaB2i_EllNCNvXs9_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2z_8BlockQ8KNtB2z_8GgmlType13vec_dot_unopt0NCINvXsa_NtNtBa_6traits5accumlNtB4g_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit

_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IteraEBX_EINtB6_7ZipImplBX_BX_E4foldlNCINvNtB8_3map8map_foldTRaB2i_EllNCNvXs9_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2z_8BlockQ8KNtB2z_8GgmlType13vec_dot_unopt0NCINvXsa_NtNtBa_6traits5accumlNtB4g_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit: ; preds = %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IteraEBX_EINtB6_7ZipImplBX_BX_E4foldlNCINvNtB8_3map8map_foldTRaB2i_EllNCNvXs9_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2z_8BlockQ8KNtB2z_8GgmlType13vec_dot_unopt0NCINvXsa_NtNtBa_6traits5accumlNtB4g_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit.loopexit, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ8KEBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit
  %.sroa.0.0.lcssa.i = phi float [ 0.000000e+00, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ8KEBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit ], [ %i.an, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IteraEBX_EINtB6_7ZipImplBX_BX_E4foldlNCINvNtB8_3map8map_foldTRaB2i_EllNCNvXs9_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2z_8BlockQ8KNtB2z_8GgmlType13vec_dot_unopt0NCINvXsa_NtNtBa_6traits5accumlNtB4g_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit.loopexit ]
  %i.ao = load float, ptr %i.j, align 4, !noundef !7
  %i.ap = fmul float %i.ao, %.sroa.0.0.lcssa.i
  %i.aq = load float, ptr %i.k, align 4, !noundef !7
  %i.ar = fmul float %i.ap, %i.aq
  %i.as = fadd float %.sroa.0.013, %i.ar          ; 2 uses
  %exitcond.not = icmp eq i64 %i.i, %.sroa.7.0.copyload
  br i1 %exitcond.not, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ8KEBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit.thread, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ8KEBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ8KEBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit.thread: ; preds = %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IteraEBX_EINtB6_7ZipImplBX_BX_E4foldlNCINvNtB8_3map8map_foldTRaB2i_EllNCNvXs9_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2z_8BlockQ8KNtB2z_8GgmlType13vec_dot_unopt0NCINvXsa_NtNtBa_6traits5accumlNtB4g_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit, %bb.a
  %.sroa.0.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.as, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IteraEBX_EINtB6_7ZipImplBX_BX_E4foldlNCINvNtB8_3map8map_foldTRaB2i_EllNCNvXs9_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2z_8BlockQ8KNtB2z_8GgmlType13vec_dot_unopt0NCINvXsa_NtNtBa_6traits5accumlNtB4g_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit ]
  ret float %.sroa.0.0.lcssa
}

; Function Attrs: nonlazybind uwtable
define noundef float @_RNvXs9_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ8KNtB5_8GgmlType7vec_dot(i64 noundef %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef range(i64 0, 31586890537173890) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef range(i64 0, 31586890537173890) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw [292 x i8], ptr %1, i64 %2
  %i.d = getelementptr inbounds nuw [292 x i8], ptr %3, i64 %4
  call void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ8KEBW_EINtB5_7ZipImplBW_BW_E3newB1s_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly align 4 %1, ptr noundef nonnull readonly %i.c, ptr noundef nonnull readonly align 4 %3, ptr noundef nonnull readonly %i.d)
  %.sroa.0.0.copyload.i = load ptr, ptr %i.b, align 8, !noalias !1298 ; 2 uses
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.46.0.copyload.i = load ptr, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !1298 ; 2 uses
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.57.0.copyload.i = load i64, ptr %.sroa.57.0..sroa_idx.i, align 8, !noalias !1298 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !1298 ; 2 uses
  %i.e = icmp ult i64 %.sroa.57.0.copyload.i, %.sroa.7.0.copyload.i
  br i1 %i.e, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ8KEBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit.lr.ph.i, label %_RNvXs9_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ8KNtB5_8GgmlType13vec_dot_unopt.exit

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ8KEBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit.lr.ph.i: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i), "nonnull"(ptr %.sroa.46.0.copyload.i) ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ8KEBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit.i

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ8KEBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit.i: ; preds = %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IteraEBX_EINtB6_7ZipImplBX_BX_E4foldlNCINvNtB8_3map8map_foldTRaB2i_EllNCNvXs9_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2z_8BlockQ8KNtB2z_8GgmlType13vec_dot_unopt0NCINvXsa_NtNtBa_6traits5accumlNtB4g_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit.i, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ8KEBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit.lr.ph.i
  %.sroa.0.013.i = phi float [ 0.000000e+00, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ8KEBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit.lr.ph.i ], [ %i.as, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IteraEBX_EINtB6_7ZipImplBX_BX_E4foldlNCINvNtB8_3map8map_foldTRaB2i_EllNCNvXs9_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2z_8BlockQ8KNtB2z_8GgmlType13vec_dot_unopt0NCINvXsa_NtNtBa_6traits5accumlNtB4g_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit.i ]
  %.sroa.57.012.i = phi i64 [ %.sroa.57.0.copyload.i, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ8KEBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit.lr.ph.i ], [ %i.i, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IteraEBX_EINtB6_7ZipImplBX_BX_E4foldlNCINvNtB8_3map8map_foldTRaB2i_EllNCNvXs9_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2z_8BlockQ8KNtB2z_8GgmlType13vec_dot_unopt0NCINvXsa_NtNtBa_6traits5accumlNtB4g_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit.i ] ; 3 uses
  %i.i = add nuw i64 %.sroa.57.012.i, 1           ; 2 uses
  %i.j = getelementptr inbounds nuw [292 x i8], ptr %.sroa.0.0.copyload.i, i64 %.sroa.57.012.i ; 3 uses
  %i.k = getelementptr inbounds nuw [292 x i8], ptr %.sroa.46.0.copyload.i, i64 %.sroa.57.012.i ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 260
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 260
  call void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IteraEBW_EINtB5_7ZipImplBW_BW_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  %.val.i5.i = load i64, ptr %i.f, align 8, !alias.scope !1299, !noalias !1298, !noundef !7 ; 4 uses
  %.val11.i.i = load i64, ptr %i.g, align 8, !alias.scope !1299, !noalias !1298, !noundef !7 ; 2 uses
  %i.p = sub i64 %.val11.i.i, %.val.i5.i          ; 4 uses
  %.not.i.i = icmp eq i64 %.val11.i.i, %.val.i5.i
  br i1 %.not.i.i, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IteraEBX_EINtB6_7ZipImplBX_BX_E4foldlNCINvNtB8_3map8map_foldTRaB2i_EllNCNvXs9_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2z_8BlockQ8KNtB2z_8GgmlType13vec_dot_unopt0NCINvXsa_NtNtBa_6traits5accumlNtB4g_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ8KEBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit.i
  %.val1.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1300, !noalias !1298, !nonnull !7, !noundef !7 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !1300, !noalias !1298, !nonnull !7, !noundef !7 ; 2 uses
  %min.iters.check = icmp ult i64 %i.p, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %i.p, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ab, %vector.body ]
  %vec.phi5 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ac, %vector.body ]
  %i.q = add i64 %index, %.val.i5.i               ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.q ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %wide.load = load <4 x i8>, ptr %i.r, align 1, !noalias !1299
  %wide.load6 = load <4 x i8>, ptr %i.t, align 1, !noalias !1299
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %wide.load7 = load <4 x i8>, ptr %i.s, align 1, !noalias !1299
  %wide.load8 = load <4 x i8>, ptr %i.u, align 1, !noalias !1299
  %i.v = sext <4 x i8> %wide.load to <4 x i32>
  %i.w = sext <4 x i8> %wide.load6 to <4 x i32>
  %i.x = sext <4 x i8> %wide.load7 to <4 x i32>
  %i.y = sext <4 x i8> %wide.load8 to <4 x i32>
  %i.z = mul nsw <4 x i32> %i.x, %i.v
  %i.aa = mul nsw <4 x i32> %i.y, %i.w
  %i.ab = add <4 x i32> %i.z, %vec.phi            ; 2 uses
  %i.ac = add <4 x i32> %i.aa, %vec.phi5          ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !1296

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ac, %i.ab
  %i.ae = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IteraEBX_EINtB6_7ZipImplBX_BX_E4foldlNCINvNtB8_3map8map_foldTRaB2i_EllNCNvXs9_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2z_8BlockQ8KNtB2z_8GgmlType13vec_dot_unopt0NCINvXsa_NtNtBa_6traits5accumlNtB4g_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %.sroa.0.015.i.i.ph = phi i32 [ 0, %.lr.ph.i.i ], [ %i.ae, %middle.block ]
  %.sroa.02.014.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.0.015.i.i = phi i32 [ %i.am, %scalar.ph ], [ %.sroa.0.015.i.i.ph, %scalar.ph.preheader ]
  %.sroa.02.014.i.i = phi i64 [ %i.af, %scalar.ph ], [ %.sroa.02.014.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.af = add nuw i64 %.sroa.02.014.i.i, 1        ; 2 uses
  %i.ag = add i64 %.sroa.02.014.i.i, %.val.i5.i   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ag
  %.val12.i.i = load i8, ptr %i.ah, align 1, !noalias !1299, !noundef !7
  %.val13.i.i = load i8, ptr %i.ai, align 1, !noalias !1299, !noundef !7
  %i.aj = sext i8 %.val12.i.i to i32
  %i.ak = sext i8 %.val13.i.i to i32
  %i.al = mul nsw i32 %i.ak, %i.aj
  %i.am = add i32 %i.al, %.sroa.0.015.i.i         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.af, %i.p
  br i1 %exitcond.not.i.i, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IteraEBX_EINtB6_7ZipImplBX_BX_E4foldlNCINvNtB8_3map8map_foldTRaB2i_EllNCNvXs9_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2z_8BlockQ8KNtB2z_8GgmlType13vec_dot_unopt0NCINvXsa_NtNtBa_6traits5accumlNtB4g_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit.loopexit.i, label %scalar.ph, !llvm.loop !1297

_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IteraEBX_EINtB6_7ZipImplBX_BX_E4foldlNCINvNtB8_3map8map_foldTRaB2i_EllNCNvXs9_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2z_8BlockQ8KNtB2z_8GgmlType13vec_dot_unopt0NCINvXsa_NtNtBa_6traits5accumlNtB4g_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit.loopexit.i: ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.ae, %middle.block ], [ %i.am, %scalar.ph ]
  %i.an = sitofp i32 %.lcssa to float
  br label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IteraEBX_EINtB6_7ZipImplBX_BX_E4foldlNCINvNtB8_3map8map_foldTRaB2i_EllNCNvXs9_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2z_8BlockQ8KNtB2z_8GgmlType13vec_dot_unopt0NCINvXsa_NtNtBa_6traits5accumlNtB4g_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit.i

_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IteraEBX_EINtB6_7ZipImplBX_BX_E4foldlNCINvNtB8_3map8map_foldTRaB2i_EllNCNvXs9_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2z_8BlockQ8KNtB2z_8GgmlType13vec_dot_unopt0NCINvXsa_NtNtBa_6traits5accumlNtB4g_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit.i: ; preds = %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IteraEBX_EINtB6_7ZipImplBX_BX_E4foldlNCINvNtB8_3map8map_foldTRaB2i_EllNCNvXs9_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2z_8BlockQ8KNtB2z_8GgmlType13vec_dot_unopt0NCINvXsa_NtNtBa_6traits5accumlNtB4g_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit.loopexit.i, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ8KEBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit.i
  %.sroa.0.0.lcssa.i.i = phi float [ 0.000000e+00, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ8KEBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit.i ], [ %i.an, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IteraEBX_EINtB6_7ZipImplBX_BX_E4foldlNCINvNtB8_3map8map_foldTRaB2i_EllNCNvXs9_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2z_8BlockQ8KNtB2z_8GgmlType13vec_dot_unopt0NCINvXsa_NtNtBa_6traits5accumlNtB4g_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit.loopexit.i ]
  %i.ao = load float, ptr %i.j, align 4, !noundef !7
  %i.ap = fmul float %.sroa.0.0.lcssa.i.i, %i.ao
  %i.aq = load float, ptr %i.k, align 4, !noundef !7
  %i.ar = fmul float %i.ap, %i.aq
  %i.as = fadd float %.sroa.0.013.i, %i.ar        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.i, %.sroa.7.0.copyload.i
  br i1 %exitcond.not.i, label %_RNvXs9_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ8KNtB5_8GgmlType13vec_dot_unopt.exit, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ8KEBW_EINtB5_7ZipImplBW_BW_E4nextB1s_.exit.i

_RNvXs9_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ8KNtB5_8GgmlType13vec_dot_unopt.exit: ; preds = %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IteraEBX_EINtB6_7ZipImplBX_BX_E4foldlNCINvNtB8_3map8map_foldTRaB2i_EllNCNvXs9_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2z_8BlockQ8KNtB2z_8GgmlType13vec_dot_unopt0NCINvXsa_NtNtBa_6traits5accumlNtB4g_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit.i, %bb.a
  %.sroa.0.0.lcssa.i = phi float [ 0.000000e+00, %bb.a ], [ %i.as, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter4IteraEBX_EINtB6_7ZipImplBX_BX_E4foldlNCINvNtB8_3map8map_foldTRaB2i_EllNCNvXs9_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB2z_8BlockQ8KNtB2z_8GgmlType13vec_dot_unopt0NCINvXsa_NtNtBa_6traits5accumlNtB4g_3Sum3sumINtB1Z_3MapBN_B2r_EE0E0EB2D_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret float %.sroa.0.0.lcssa.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs9_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ8KNtB5_8GgmlType8to_float(ptr noalias nofree noundef nonnull readonly align 4 captures(address) %0, i64 noundef range(i64 0, 31586890537173890) %1, ptr noalias nofree noundef nonnull writeonly align 4 captures(none) %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.idx = mul nuw nsw i64 %1, 292
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.loopexit:                                        ; preds = %bb.b
  %i.c = icmp eq ptr %i.d, %i.a
  br i1 %i.c, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.sroa.0.034 = phi ptr [ %i.d, %.loopexit ], [ %0, %bb.a ] ; 5 uses
  %.sroa.7.033 = phi i64 [ %i.e, %.loopexit ], [ 0, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.034, i64 292 ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.7.033, 1
  %i.f = shl nuw nsw i64 %.sroa.7.033, 8          ; 3 uses
  %.sroa.015.0.ptr29 = getelementptr inbounds nuw i8, ptr %.sroa.0.034, i64 4 ; 3 uses
  %i.g = tail call i64 @llvm.umax.i64(i64 %3, i64 %i.f)
  %i.h = shl i64 %.sroa.7.033, 8
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph
  %.sroa.015.0.ptr32.ph = phi ptr [ %.sroa.015.0.ptr29, %.lr.ph ], [ %i.o, %vector.body ]
  %.sroa.015.0.idx31.ph = phi i64 [ 4, %.lr.ph ], [ %i.p, %vector.body ]
  %.sroa.717.030.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.ph:                                        ; preds = %.lr.ph
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 255)
  %i.k = add nuw nsw i64 %i.j, 1                  ; 2 uses
  %i.l = and i64 %i.k, 7                          ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  %i.n = select i1 %i.m, i64 8, i64 %i.l
  %n.vec = sub nsw i64 %i.k, %i.n                 ; 4 uses
  %i.o = getelementptr i8, ptr %.sroa.015.0.ptr29, i64 %n.vec
  %i.p = add nsw i64 %n.vec, 4
  %i.q = load float, ptr %.sroa.0.034, align 4
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.q, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %i.f
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.sroa.015.0.ptr29, i64 %index ; 2 uses
  %i.r = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 4
  %wide.load40 = load <4 x i8>, ptr %i.r, align 4
  %i.s = sitofp <4 x i8> %wide.load to <4 x float>
  %i.t = sitofp <4 x i8> %wide.load40 to <4 x float>
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.u = fmul <4 x float> %broadcast.splat, %i.s
  %i.v = fmul <4 x float> %broadcast.splat, %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x float> %i.u, ptr %gep, align 4
  store <4 x float> %i.v, ptr %i.w, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %scalar.ph.preheader, label %vector.body, !llvm.loop !1301

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.b
  %.sroa.015.0.ptr32 = phi ptr [ %.sroa.015.0.ptr, %bb.b ], [ %.sroa.015.0.ptr32.ph, %scalar.ph.preheader ]
  %.sroa.015.0.idx31 = phi i64 [ %.sroa.015.0.add, %bb.b ], [ %.sroa.015.0.idx31.ph, %scalar.ph.preheader ]
  %.sroa.717.030 = phi i64 [ %i.aa, %bb.b ], [ %.sroa.717.030.ph, %scalar.ph.preheader ] ; 2 uses
  %i.y = add nuw nsw i64 %.sroa.717.030, %i.f     ; 3 uses
  %i.z = icmp samesign ult i64 %i.y, %3
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %scalar.ph
  %i.aa = add nuw nsw i64 %.sroa.717.030, 1
  %.sroa.015.0.add = add nuw nsw i64 %.sroa.015.0.idx31, 1 ; 3 uses
  %i.ab = load i8, ptr %.sroa.015.0.ptr32, align 1, !noundef !7
  %i.ac = sitofp i8 %i.ab to float
  %i.ad = load float, ptr %.sroa.0.034, align 4, !noundef !7
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.y
  %i.af = fmul float %i.ad, %i.ac
  store float %i.af, ptr %i.ae, align 4
  %.sroa.015.0.ptr = getelementptr inbounds nuw i8, ptr %.sroa.0.034, i64 %.sroa.015.0.add
  %i.ag = icmp eq i64 %.sroa.015.0.add, 260
  br i1 %i.ag, label %.loopexit, label %scalar.ph, !llvm.loop !1302

bb.c:                                             ; preds = %scalar.ph
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.y, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @170) #32
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsX_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !7 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsC_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsE_NtNtCsf3Ta7LF998c_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB4_9BlockQ4_1NtB4_8GgmlType10from_float(ptr noalias nofree noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull writeonly align 2 captures(address) %2, i64 noundef range(i64 0, 461168601842738791) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.idx = mul nuw nsw i64 %3, 20
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %._crit_edge85, label %.lr.ph84.preheader

.lr.ph84.preheader:                               ; preds = %bb.a
  %i.c = lshr i64 %1, 5
  br label %.lr.ph84

.lr.ph84:                                         ; preds = %.lr.ph84.preheader, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit42
  %.sroa.0.082 = phi ptr [ %i.d, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit42 ], [ %2, %.lr.ph84.preheader ] ; 7 uses
  %.sroa.7.081 = phi i64 [ %i.e, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit42 ], [ 0, %.lr.ph84.preheader ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.082, i64 20 ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.7.081, 1
  %i.f = shl nuw nsw i64 %.sroa.7.081, 5          ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.7.081, %i.c
  br i1 %exitcond.not, label %bb.b, label %._crit_edge, !prof !15

._crit_edge85:                                    ; preds = %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f32_to_f16_fallback.exit42, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph84
  %i.g = add nuw nsw i64 %i.f, 32
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.f, i64 noundef %i.g, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #32
  unreachable

._crit_edge:                                      ; preds = %.lr.ph84
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f ; 40 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load float, ptr %i.h, align 4, !noundef !7 ; 2 uses
  %i.k = tail call nsz float @llvm.minimumnum.f32(float %i.j, float +inf)
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = load float, ptr %i.i, align 4, !noundef !7 ; 2 uses
  %i.n = tail call nsz float @llvm.minimumnum.f32(float %i.m, float %i.k)
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.p = load float, ptr %i.l, align 4, !noundef !7 ; 2 uses
  %i.q = tail call nsz float @llvm.minimumnum.f32(float %i.p, float %i.n)
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.s = load float, ptr %i.o, align 4, !noundef !7 ; 2 uses
  %i.t = tail call nsz float @llvm.minimumnum.f32(float %i.s, float %i.q)
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.v = load float, ptr %i.r, align 4, !noundef !7 ; 2 uses
  %i.w = tail call nsz float @llvm.minimumnum.f32(float %i.v, float %i.t)
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.y = load float, ptr %i.u, align 4, !noundef !7 ; 2 uses
  %i.z = tail call nsz float @llvm.minimumnum.f32(float %i.y, float %i.w)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.ab = load float, ptr %i.x, align 4, !noundef !7 ; 2 uses
  %i.ac = tail call nsz float @llvm.minimumnum.f32(float %i.ab, float %i.z)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ae = load float, ptr %i.aa, align 4, !noundef !7 ; 2 uses
  %i.af = tail call nsz float @llvm.minimumnum.f32(float %i.ae, float %i.ac)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.ah = load float, ptr %i.ad, align 4, !noundef !7 ; 2 uses
  %i.ai = tail call nsz float @llvm.minimumnum.f32(float %i.ah, float %i.af)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.ak = load float, ptr %i.ag, align 4, !noundef !7 ; 2 uses
  %i.al = tail call nsz float @llvm.minimumnum.f32(float %i.ak, float %i.ai)
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.an = load float, ptr %i.aj, align 4, !noundef !7 ; 2 uses
  %i.ao = tail call nsz float @llvm.minimumnum.f32(float %i.an, float %i.al)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.aq = load float, ptr %i.am, align 4, !noundef !7 ; 2 uses
  %i.ar = tail call nsz float @llvm.minimumnum.f32(float %i.aq, float %i.ao)
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %i.at = load float, ptr %i.ap, align 4, !noundef !7 ; 2 uses
  %i.au = tail call nsz float @llvm.minimumnum.f32(float %i.at, float %i.ar)
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.aw = load float, ptr %i.as, align 4, !noundef !7 ; 2 uses
  %i.ax = tail call nsz float @llvm.minimumnum.f32(float %i.aw, float %i.au)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 60
  %i.az = load float, ptr %i.av, align 4, !noundef !7 ; 2 uses
  %i.ba = tail call nsz float @llvm.minimumnum.f32(float %i.az, float %i.ax)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.bc = load float, ptr %i.ay, align 4, !noundef !7 ; 2 uses
  %i.bd = tail call nsz float @llvm.minimumnum.f32(float %i.bc, float %i.ba)
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 68
  %i.bf = load float, ptr %i.bb, align 4, !noundef !7 ; 2 uses
  %i.bg = tail call nsz float @llvm.minimumnum.f32(float %i.bf, float %i.bd)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.bi = load float, ptr %i.be, align 4, !noundef !7 ; 2 uses
  %i.bj = tail call nsz float @llvm.minimumnum.f32(float %i.bi, float %i.bg)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 76
  %i.bl = load float, ptr %i.bh, align 4, !noundef !7 ; 2 uses
  %i.bm = tail call nsz float @llvm.minimumnum.f32(float %i.bl, float %i.bj)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.bo = load float, ptr %i.bk, align 4, !noundef !7 ; 2 uses
  %i.bp = tail call nsz float @llvm.minimumnum.f32(float %i.bo, float %i.bm)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.h, i64 84
  %i.br = load float, ptr %i.bn, align 4, !noundef !7 ; 2 uses
  %i.bs = tail call nsz float @llvm.minimumnum.f32(float %i.br, float %i.bp)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.bu = load float, ptr %i.bq, align 4, !noundef !7 ; 2 uses
  %i.bv = tail call nsz float @llvm.minimumnum.f32(float %i.bu, float %i.bs)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 92
  %i.bx = load float, ptr %i.bt, align 4, !noundef !7 ; 2 uses
  %i.by = tail call nsz float @llvm.minimumnum.f32(float %i.bx, float %i.bv)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.ca = load float, ptr %i.bw, align 4, !noundef !7 ; 2 uses
  %i.cb = tail call nsz float @llvm.minimumnum.f32(float %i.ca, float %i.by)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.h, i64 100
  %i.cd = load float, ptr %i.bz, align 4, !noundef !7 ; 2 uses
  %i.ce = tail call nsz float @llvm.minimumnum.f32(float %i.cd, float %i.cb)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.cg = load float, ptr %i.cc, align 4, !noundef !7 ; 2 uses
  %i.ch = tail call nsz float @llvm.minimumnum.f32(float %i.cg, float %i.ce)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.h, i64 108
  %i.cj = load float, ptr %i.cf, align 4, !noundef !7 ; 2 uses
  %i.ck = tail call nsz float @llvm.minimumnum.f32(float %i.cj, float %i.ch)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  %i.cm = load float, ptr %i.ci, align 4, !noundef !7 ; 2 uses
  %i.cn = tail call nsz float @llvm.minimumnum.f32(float %i.cm, float %i.ck)
  %i.co = getelementptr inbounds nuw i8, ptr %i.h, i64 116
  %i.cp = load float, ptr %i.cl, align 4, !noundef !7 ; 2 uses
  %i.cq = tail call nsz float @llvm.minimumnum.f32(float %i.cp, float %i.cn)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.cs = load float, ptr %i.co, align 4, !noundef !7 ; 2 uses
  %i.ct = tail call nsz float @llvm.minimumnum.f32(float %i.cs, float %i.cq)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 124
  %i.cv = load float, ptr %i.cr, align 4, !noundef !7 ; 2 uses
  %i.cw = tail call nsz float @llvm.minimumnum.f32(float %i.cv, float %i.ct)
  %i.cx = load float, ptr %i.cu, align 4, !noundef !7 ; 2 uses
  %i.cy = tail call nsz float @llvm.minimumnum.f32(float %i.cx, float %i.cw) ; 4 uses
  %i.cz = tail call nsz float @llvm.maximumnum.f32(float %i.j, float -inf)
  %i.da = tail call nsz float @llvm.maximumnum.f32(float %i.m, float %i.cz)
end_hunk_3
