Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_core-29a639a172b36b04.candle_core.fa2bc8e788f5f12a-cgu.14?download=true
inline.NumInlined: 1160
inline.NumDeleted: 448
loop-unroll.NumCompletelyUnrolled: 107
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 128
begin_hunk_0_@_RNvXs4_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ2KNtB5_8GgmlType8to_float:bb.a
  %i.at = zext nneg i16 %i.as to i32              ; 2 uses
  %i.au = add nuw nsw i32 %i.at, 8
  %i.av = shl i32 %i.ai, %i.au
  %i.aw = and i32 %i.av, 8388607
  %reass.sub.i = or disjoint i32 %i.am, 989855744
  %i.ax = shl nuw nsw i32 %i.at, 23
  %i.ay = sub nuw nsw i32 %reass.sub.i, %i.ax
  %i.az = or disjoint i32 %i.ay, %i.aw
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.l:                                             ; preds = %bb.h
  %i.ba = lshr exact i16 %i.ag, 10
  %narrow.i = add nuw nsw i16 %i.ba, 112
  %i.bb = zext nneg i16 %narrow.i to i32
  %i.bc = shl nuw nsw i32 %i.bb, 23
  %i.bd = shl nuw nsw i32 %i.ai, 13
  %i.be = or disjoint i32 %i.bc, %i.bd
  %i.bf = or disjoint i32 %i.be, %i.am
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit: ; preds = %bb.e, %bb.i, %bb.j, %bb.k, %bb.l
  %.sroa.0.0.i = phi i32 [ %i.ad, %bb.e ], [ %i.ao, %bb.i ], [ %i.ar, %bb.j ], [ %i.az, %bb.k ], [ %i.bf, %bb.l ]
  %i.bg = bitcast i32 %.sroa.0.0.i to float
  br label %bb.n

bb.m:                                             ; preds = %.noexc, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.bh = call fastcc noundef float @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.u)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit
  %.sroa.01.0 = phi float [ %i.bg, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit ], [ %i.bh, %bb.m ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 82
  %i.bj = load i16, ptr %i.bi, align 2, !noundef !7 ; 6 uses
  %i.bk = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.o, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit36, !prof !14

bb.o:                                             ; preds = %bb.n
  %i.bm = invoke noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc35:                                         ; preds = %bb.o
  %i.bn = and i128 %i.bm, 18014398509481984
  %.not70 = icmp eq i128 %i.bn, 0
  br i1 %.not70, label %bb.p, label %bb.y

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit36: ; preds = %bb.n
  %i.bo = and i64 %i.bk, 18014398509481984
  %.not69 = icmp eq i64 %i.bo, 0
  br i1 %.not69, label %bb.p, label %bb.y

bb.p:                                             ; preds = %.noexc35, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit36
  %i.bp = and i16 %i.bj, 32767
  %i.bq = icmp eq i16 %i.bp, 0
  br i1 %i.bq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.br = zext i16 %i.bj to i32
  %i.bs = shl nuw i32 %i.br, 16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit40

bb.r:                                             ; preds = %bb.p
  %i.bt = and i16 %i.bj, -32768
  %i.bu = zext i16 %i.bt to i32                   ; 2 uses
  %i.bv = and i16 %i.bj, 31744                    ; 3 uses
  %i.bw = and i16 %i.bj, 1023                     ; 3 uses
  %i.bx = zext nneg i16 %i.bw to i32              ; 3 uses
  %i.by = icmp eq i16 %i.bv, 31744
  br i1 %i.by, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bz = icmp eq i16 %i.bw, 0
  %i.ca = shl nuw i32 %i.bu, 16                   ; 2 uses
  br i1 %i.bz, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cb = shl nuw i32 %i.bu, 16                   ; 2 uses
  %i.cc = icmp eq i16 %i.bv, 0
  br i1 %i.cc, label %bb.w, label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.cd = or disjoint i32 %i.ca, 2139095040
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit40

bb.v:                                             ; preds = %bb.s
  %i.ce = shl nuw nsw i32 %i.bx, 13
  %i.cf = or disjoint i32 %i.ca, %i.ce
  %i.cg = or i32 %i.cf, 2143289344
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit40

bb.w:                                             ; preds = %bb.t
  %i.ch = call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.bw, i1 false)
  %i.ci = zext nneg i16 %i.ch to i32              ; 2 uses
  %i.cj = add nuw nsw i32 %i.ci, 8
  %i.ck = shl i32 %i.bx, %i.cj
  %i.cl = and i32 %i.ck, 8388607
  %reass.sub.i39 = or disjoint i32 %i.cb, 989855744
  %i.cm = shl nuw nsw i32 %i.ci, 23
  %i.cn = sub nuw nsw i32 %reass.sub.i39, %i.cm
  %i.co = or disjoint i32 %i.cn, %i.cl
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit40

bb.x:                                             ; preds = %bb.t
  %i.cp = lshr exact i16 %i.bv, 10
  %narrow.i37 = add nuw nsw i16 %i.cp, 112
  %i.cq = zext nneg i16 %narrow.i37 to i32
  %i.cr = shl nuw nsw i32 %i.cq, 23
  %i.cs = shl nuw nsw i32 %i.bx, 13
  %i.ct = or disjoint i32 %i.cr, %i.cs
  %i.cu = or disjoint i32 %i.ct, %i.cb
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit40

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit40: ; preds = %bb.q, %bb.u, %bb.v, %bb.w, %bb.x
  %.sroa.0.0.i38 = phi i32 [ %i.bs, %bb.q ], [ %i.cd, %bb.u ], [ %i.cg, %bb.v ], [ %i.co, %bb.w ], [ %i.cu, %bb.x ]
  %i.cv = bitcast i32 %.sroa.0.0.i38 to float
  br label %bb.z

bb.y:                                             ; preds = %.noexc35, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit36
  %i.cw = call fastcc noundef float @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.bj)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit40
  %.sroa.03.0 = phi float [ %i.cv, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit40 ], [ %i.cw, %bb.y ] ; 3 uses
  %i.cx = and i64 %.sroa.7.0.copyload, 127
  %i.cy = and i64 %.sroa.7.0.copyload, -128       ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !864
  store ptr %i.cz, ptr %i.b, align 8, !noalias !865
  store i64 %i.cx, ptr %.sroa.4.0..sroa_idx46, align 8, !noalias !865
  store ptr %.sroa.6.0.copyload, ptr %.sroa.5.0..sroa_idx47, align 8, !noalias !865
  store i64 %i.cy, ptr %.sroa.648.0..sroa_idx, align 8, !noalias !865
  store i64 128, ptr %.sroa.749.0..sroa_idx, align 8, !noalias !865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !864
  store ptr %i.da, ptr %i.a, align 8, !alias.scope !866, !noalias !867
  store i64 64, ptr %.sroa.451.0..sroa_idx, align 8, !alias.scope !866, !noalias !867
  store ptr %i.t, ptr %.sroa.552.0..sroa_idx, align 8, !alias.scope !866, !noalias !867
  store i64 0, ptr %.sroa.653.0..sroa_idx, align 8, !alias.scope !866, !noalias !867
  store i64 32, ptr %.sroa.754.0..sroa_idx, align 8, !alias.scope !866, !noalias !867
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !864
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !864
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false)
  %i.db = load i64, ptr %i.o, align 8, !alias.scope !868, !noundef !7 ; 2 uses
  %i.dc = load i64, ptr %i.p, align 8, !alias.scope !868, !noundef !7
  %i.dd = icmp ult i64 %i.db, %i.dc
  br i1 %i.dd, label %.lr.ph, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread

.lr.ph:                                           ; preds = %bb.aa, %.loopexit.split.us
  %i.de = phi i64 [ %i.qn, %.loopexit.split.us ], [ %i.db, %bb.aa ] ; 3 uses
  %.sroa.05.0144 = phi i64 [ %.us-phi142, %.loopexit.split.us ], [ 0, %bb.aa ] ; 3 uses
  %i.df = add nuw i64 %i.de, 1
  store i64 %i.df, ptr %i.o, align 8, !alias.scope !868
  %i.dg = invoke { ptr, i64 } @_RNvXs1y_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_14ChunksExactMutfENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, i64 noundef %i.de)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc42:                                         ; preds = %.lr.ph
  %i.dh = extractvalue { ptr, i64 } %i.dg, 0      ; 37 uses
  %i.di = extractvalue { ptr, i64 } %i.dg, 1      ; 40 uses
  %i.dj = invoke { ptr, i64 } @_RNvXs1q_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.q, i64 noundef %i.de)
          to label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsltEA4u8Pgfu_11candle_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsltEA4u8Pgfu_11candle_core.exit: ; preds = %.noexc42
  %.fr = freeze { ptr, i64 } %i.dj                ; 2 uses
  %i.dk = extractvalue { ptr, i64 } %.fr, 0       ; 21 uses
  %.not32 = icmp eq ptr %i.dh, null
  br i1 %.not32, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsltEA4u8Pgfu_11candle_core.exit
  %i.dl = extractvalue { ptr, i64 } %.fr, 1       ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dk) ]
  %i.dm = icmp ugt i64 %i.dl, 15
  %i.dn = getelementptr i8, ptr %i.dk, i64 16     ; 5 uses
  %i.do = getelementptr i8, ptr %i.dk, i64 %i.dl
  br i1 %i.dm, label %.split.us, label %.split, !prof !21

.split.us:                                        ; preds = %bb.ab
  %i.dp = icmp eq i64 %i.dl, 16
  %.sroa.018.0.ptr.us.us.1 = getelementptr inbounds nuw i8, ptr %i.dk, i64 1 ; 2 uses
  %.sroa.018.0.ptr.us.us.2 = getelementptr inbounds nuw i8, ptr %i.dk, i64 2 ; 2 uses
  %.sroa.018.0.ptr.us.us.3 = getelementptr inbounds nuw i8, ptr %i.dk, i64 3 ; 2 uses
  %.sroa.018.0.ptr.us.us.4 = getelementptr inbounds nuw i8, ptr %i.dk, i64 4 ; 2 uses
  %.sroa.018.0.ptr.us.us.5 = getelementptr inbounds nuw i8, ptr %i.dk, i64 5 ; 2 uses
  %.sroa.018.0.ptr.us.us.6 = getelementptr inbounds nuw i8, ptr %i.dk, i64 6 ; 2 uses
  %.sroa.018.0.ptr.us.us.7 = getelementptr inbounds nuw i8, ptr %i.dk, i64 7 ; 2 uses
  %.sroa.018.0.ptr.us.us.8 = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 2 uses
  %.sroa.018.0.ptr.us.us.9 = getelementptr inbounds nuw i8, ptr %i.dk, i64 9 ; 2 uses
  %.sroa.018.0.ptr.us.us.10 = getelementptr inbounds nuw i8, ptr %i.dk, i64 10 ; 2 uses
  %.sroa.018.0.ptr.us.us.11 = getelementptr inbounds nuw i8, ptr %i.dk, i64 11 ; 2 uses
  %.sroa.018.0.ptr.us.us.12 = getelementptr inbounds nuw i8, ptr %i.dk, i64 12 ; 2 uses
  %.sroa.018.0.ptr.us.us.13 = getelementptr inbounds nuw i8, ptr %i.dk, i64 13 ; 2 uses
  %.sroa.018.0.ptr.us.us.14 = getelementptr inbounds nuw i8, ptr %i.dk, i64 14 ; 2 uses
  %.sroa.018.0.ptr.us.us.15 = getelementptr inbounds nuw i8, ptr %i.dk, i64 15 ; 2 uses
  br i1 %i.dp, label %.split.us.split.us, label %.split.us.split.preheader

.split.us.split.preheader:                        ; preds = %.split.us
  %i.dq = add i64 %i.dl, -17
  %i.dr = add i64 %i.dl, -17
  br label %.split.us.split

.split.us.split.us:                               ; preds = %.split.us, %bb.at
  %.sroa.05.199.us.us = phi i64 [ %i.jd, %bb.at ], [ %.sroa.05.0144, %.split.us ] ; 5 uses
  %.sroa.09.098.us.us = phi i32 [ %i.je, %bb.at ], [ 0, %.split.us ] ; 2 uses
  %.sroa.012.097.us.us = phi i64 [ %i.jc, %bb.at ], [ 0, %.split.us ] ; 20 uses
  %.sroa.023.096.us.us = phi i32 [ %i.ds, %bb.at ], [ 0, %.split.us ]
  %i.ds = add nuw nsw i32 %.sroa.023.096.us.us, 1 ; 2 uses
  %i.dt = icmp ult i64 %.sroa.05.199.us.us, 16
  br i1 %i.dt, label %bb.ac, label %.split109.us.invoke

bb.ac:                                            ; preds = %.split.us.split.us
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.sroa.05.199.us.us
  %i.dv = load i8, ptr %i.du, align 1, !noundef !7 ; 2 uses
  %i.dw = and i8 %i.dv, 15
  %i.dx = uitofp nneg i8 %i.dw to float
  %i.dy = fmul float %.sroa.01.0, %i.dx           ; 16 uses
  %i.dz = lshr i8 %i.dv, 4
  %i.ea = uitofp nneg i8 %i.dz to float
  %i.eb = fmul float %.sroa.03.0, %i.ea           ; 16 uses
  %i.ec = trunc i32 %.sroa.09.098.us.us to i8
  %i.ed = and i8 %i.ec, 6                         ; 16 uses
  %i.ee = call i64 @llvm.usub.sat.i64(i64 %i.di, i64 %.sroa.012.097.us.us) ; 15 uses
  %exitcond197.not.not = icmp ugt i64 %i.di, %.sroa.012.097.us.us
  br i1 %exitcond197.not.not, label %bb.ad, label %.split109.us.invoke

bb.ad:                                            ; preds = %bb.ac
  %i.ef = load i8, ptr %i.dk, align 1, !noundef !7
  %i.eg = lshr i8 %i.ef, %i.ed
  %i.eh = and i8 %i.eg, 3
  %i.ei = uitofp nneg i8 %i.eh to float
  %i.ej = fmul float %i.dy, %i.ei
  %i.ek = fsub float %i.ej, %i.eb
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %.sroa.012.097.us.us
  store float %i.ek, ptr %i.el, align 4
  %i.em = or disjoint i64 %.sroa.012.097.us.us, 1 ; 2 uses
  %exitcond197.1.not = icmp eq i64 %i.ee, 1
  br i1 %exitcond197.1.not, label %.split109.us.invoke, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.en = load i8, ptr %.sroa.018.0.ptr.us.us.1, align 1, !noundef !7
  %i.eo = lshr i8 %i.en, %i.ed
  %i.ep = and i8 %i.eo, 3
  %i.eq = uitofp nneg i8 %i.ep to float
  %i.er = fmul float %i.dy, %i.eq
  %i.es = fsub float %i.er, %i.eb
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.em
  store float %i.es, ptr %i.et, align 4
  %i.eu = or disjoint i64 %.sroa.012.097.us.us, 2 ; 2 uses
  %exitcond197.2.not = icmp eq i64 %i.ee, 2
  br i1 %exitcond197.2.not, label %.split109.us.invoke, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ev = load i8, ptr %.sroa.018.0.ptr.us.us.2, align 1, !noundef !7
  %i.ew = lshr i8 %i.ev, %i.ed
  %i.ex = and i8 %i.ew, 3
  %i.ey = uitofp nneg i8 %i.ex to float
  %i.ez = fmul float %i.dy, %i.ey
  %i.fa = fsub float %i.ez, %i.eb
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.eu
  store float %i.fa, ptr %i.fb, align 4
  %i.fc = or disjoint i64 %.sroa.012.097.us.us, 3 ; 2 uses
  %exitcond197.3.not = icmp eq i64 %i.ee, 3
  br i1 %exitcond197.3.not, label %.split109.us.invoke, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fd = load i8, ptr %.sroa.018.0.ptr.us.us.3, align 1, !noundef !7
  %i.fe = lshr i8 %i.fd, %i.ed
  %i.ff = and i8 %i.fe, 3
  %i.fg = uitofp nneg i8 %i.ff to float
  %i.fh = fmul float %i.dy, %i.fg
  %i.fi = fsub float %i.fh, %i.eb
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.fc
  store float %i.fi, ptr %i.fj, align 4
  %i.fk = or disjoint i64 %.sroa.012.097.us.us, 4 ; 2 uses
  %exitcond197.4.not = icmp eq i64 %i.ee, 4
  br i1 %exitcond197.4.not, label %.split109.us.invoke, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fl = load i8, ptr %.sroa.018.0.ptr.us.us.4, align 1, !noundef !7
  %i.fm = lshr i8 %i.fl, %i.ed
  %i.fn = and i8 %i.fm, 3
  %i.fo = uitofp nneg i8 %i.fn to float
  %i.fp = fmul float %i.dy, %i.fo
  %i.fq = fsub float %i.fp, %i.eb
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.fk
  store float %i.fq, ptr %i.fr, align 4
  %i.fs = or disjoint i64 %.sroa.012.097.us.us, 5 ; 2 uses
  %exitcond197.5.not = icmp eq i64 %i.ee, 5
  br i1 %exitcond197.5.not, label %.split109.us.invoke, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ft = load i8, ptr %.sroa.018.0.ptr.us.us.5, align 1, !noundef !7
  %i.fu = lshr i8 %i.ft, %i.ed
  %i.fv = and i8 %i.fu, 3
  %i.fw = uitofp nneg i8 %i.fv to float
  %i.fx = fmul float %i.dy, %i.fw
  %i.fy = fsub float %i.fx, %i.eb
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.fs
  store float %i.fy, ptr %i.fz, align 4
  %i.ga = or disjoint i64 %.sroa.012.097.us.us, 6 ; 2 uses
  %exitcond197.6.not = icmp eq i64 %i.ee, 6
  br i1 %exitcond197.6.not, label %.split109.us.invoke, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gb = load i8, ptr %.sroa.018.0.ptr.us.us.6, align 1, !noundef !7
  %i.gc = lshr i8 %i.gb, %i.ed
  %i.gd = and i8 %i.gc, 3
  %i.ge = uitofp nneg i8 %i.gd to float
  %i.gf = fmul float %i.dy, %i.ge
  %i.gg = fsub float %i.gf, %i.eb
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.ga
  store float %i.gg, ptr %i.gh, align 4
  %i.gi = or disjoint i64 %.sroa.012.097.us.us, 7 ; 2 uses
  %exitcond197.7.not = icmp eq i64 %i.ee, 7
  br i1 %exitcond197.7.not, label %.split109.us.invoke, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gj = load i8, ptr %.sroa.018.0.ptr.us.us.7, align 1, !noundef !7
  %i.gk = lshr i8 %i.gj, %i.ed
  %i.gl = and i8 %i.gk, 3
  %i.gm = uitofp nneg i8 %i.gl to float
  %i.gn = fmul float %i.dy, %i.gm
  %i.go = fsub float %i.gn, %i.eb
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.gi
  store float %i.go, ptr %i.gp, align 4
  %i.gq = or disjoint i64 %.sroa.012.097.us.us, 8 ; 2 uses
  %exitcond197.8.not = icmp eq i64 %i.ee, 8
  br i1 %exitcond197.8.not, label %.split109.us.invoke, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gr = load i8, ptr %.sroa.018.0.ptr.us.us.8, align 1, !noundef !7
  %i.gs = lshr i8 %i.gr, %i.ed
  %i.gt = and i8 %i.gs, 3
  %i.gu = uitofp nneg i8 %i.gt to float
  %i.gv = fmul float %i.dy, %i.gu
  %i.gw = fsub float %i.gv, %i.eb
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.gq
  store float %i.gw, ptr %i.gx, align 4
  %i.gy = or disjoint i64 %.sroa.012.097.us.us, 9 ; 2 uses
  %exitcond197.9.not = icmp eq i64 %i.ee, 9
  br i1 %exitcond197.9.not, label %.split109.us.invoke, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gz = load i8, ptr %.sroa.018.0.ptr.us.us.9, align 1, !noundef !7
  %i.ha = lshr i8 %i.gz, %i.ed
  %i.hb = and i8 %i.ha, 3
  %i.hc = uitofp nneg i8 %i.hb to float
  %i.hd = fmul float %i.dy, %i.hc
  %i.he = fsub float %i.hd, %i.eb
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.gy
  store float %i.he, ptr %i.hf, align 4
  %i.hg = or disjoint i64 %.sroa.012.097.us.us, 10 ; 2 uses
  %exitcond197.10.not = icmp eq i64 %i.ee, 10
  br i1 %exitcond197.10.not, label %.split109.us.invoke, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hh = load i8, ptr %.sroa.018.0.ptr.us.us.10, align 1, !noundef !7
  %i.hi = lshr i8 %i.hh, %i.ed
  %i.hj = and i8 %i.hi, 3
  %i.hk = uitofp nneg i8 %i.hj to float
  %i.hl = fmul float %i.dy, %i.hk
  %i.hm = fsub float %i.hl, %i.eb
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.hg
  store float %i.hm, ptr %i.hn, align 4
  %i.ho = or disjoint i64 %.sroa.012.097.us.us, 11 ; 2 uses
  %exitcond197.11.not = icmp eq i64 %i.ee, 11
  br i1 %exitcond197.11.not, label %.split109.us.invoke, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hp = load i8, ptr %.sroa.018.0.ptr.us.us.11, align 1, !noundef !7
  %i.hq = lshr i8 %i.hp, %i.ed
  %i.hr = and i8 %i.hq, 3
  %i.hs = uitofp nneg i8 %i.hr to float
  %i.ht = fmul float %i.dy, %i.hs
  %i.hu = fsub float %i.ht, %i.eb
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.ho
  store float %i.hu, ptr %i.hv, align 4
  %i.hw = or disjoint i64 %.sroa.012.097.us.us, 12 ; 2 uses
  %exitcond197.12.not = icmp eq i64 %i.ee, 12
  br i1 %exitcond197.12.not, label %.split109.us.invoke, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hx = load i8, ptr %.sroa.018.0.ptr.us.us.12, align 1, !noundef !7
  %i.hy = lshr i8 %i.hx, %i.ed
  %i.hz = and i8 %i.hy, 3
  %i.ia = uitofp nneg i8 %i.hz to float
  %i.ib = fmul float %i.dy, %i.ia
  %i.ic = fsub float %i.ib, %i.eb
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.hw
  store float %i.ic, ptr %i.id, align 4
  %i.ie = or disjoint i64 %.sroa.012.097.us.us, 13 ; 2 uses
  %exitcond197.13.not = icmp eq i64 %i.ee, 13
  br i1 %exitcond197.13.not, label %.split109.us.invoke, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.if = load i8, ptr %.sroa.018.0.ptr.us.us.13, align 1, !noundef !7
  %i.ig = lshr i8 %i.if, %i.ed
  %i.ih = and i8 %i.ig, 3
end_hunk_0
begin_hunk_1_@_RNvXs4_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ2KNtB5_8GgmlType8to_float:bb.a
  %i.kj = lshr i8 %i.ki, %i.jq
  %i.kk = and i8 %i.kj, 3
  %i.kl = uitofp nneg i8 %i.kk to float
  %i.km = fmul float %i.jl, %i.kl
  %i.kn = fsub float %i.km, %i.jo
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.kh
  store float %i.kn, ptr %i.ko, align 4
  %i.kp = add nuw i64 %.sroa.012.097.us, 3        ; 2 uses
  %exitcond.3.not = icmp eq i64 %i.jr, 3
  br i1 %exitcond.3.not, label %.split109.us.invoke, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kq = load i8, ptr %.sroa.018.0.ptr.us.us.3, align 1, !noundef !7
  %i.kr = lshr i8 %i.kq, %i.jq
  %i.ks = and i8 %i.kr, 3
  %i.kt = uitofp nneg i8 %i.ks to float
  %i.ku = fmul float %i.jl, %i.kt
  %i.kv = fsub float %i.ku, %i.jo
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.kp
  store float %i.kv, ptr %i.kw, align 4
  %i.kx = add nuw i64 %.sroa.012.097.us, 4        ; 2 uses
  %exitcond.4.not = icmp eq i64 %i.jr, 4
  br i1 %exitcond.4.not, label %.split109.us.invoke, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ky = load i8, ptr %.sroa.018.0.ptr.us.us.4, align 1, !noundef !7
  %i.kz = lshr i8 %i.ky, %i.jq
  %i.la = and i8 %i.kz, 3
  %i.lb = uitofp nneg i8 %i.la to float
  %i.lc = fmul float %i.jl, %i.lb
  %i.ld = fsub float %i.lc, %i.jo
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.kx
  store float %i.ld, ptr %i.le, align 4
  %i.lf = add nuw i64 %.sroa.012.097.us, 5        ; 2 uses
  %exitcond.5.not = icmp eq i64 %i.jr, 5
  br i1 %exitcond.5.not, label %.split109.us.invoke, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.lg = load i8, ptr %.sroa.018.0.ptr.us.us.5, align 1, !noundef !7
  %i.lh = lshr i8 %i.lg, %i.jq
  %i.li = and i8 %i.lh, 3
  %i.lj = uitofp nneg i8 %i.li to float
  %i.lk = fmul float %i.jl, %i.lj
  %i.ll = fsub float %i.lk, %i.jo
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.lf
  store float %i.ll, ptr %i.lm, align 4
  %i.ln = add nuw i64 %.sroa.012.097.us, 6        ; 2 uses
  %exitcond.6.not = icmp eq i64 %i.jr, 6
  br i1 %exitcond.6.not, label %.split109.us.invoke, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.lo = load i8, ptr %.sroa.018.0.ptr.us.us.6, align 1, !noundef !7
  %i.lp = lshr i8 %i.lo, %i.jq
  %i.lq = and i8 %i.lp, 3
  %i.lr = uitofp nneg i8 %i.lq to float
  %i.ls = fmul float %i.jl, %i.lr
  %i.lt = fsub float %i.ls, %i.jo
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.ln
  store float %i.lt, ptr %i.lu, align 4
  %i.lv = add nuw i64 %.sroa.012.097.us, 7        ; 2 uses
  %exitcond.7.not = icmp eq i64 %i.jr, 7
  br i1 %exitcond.7.not, label %.split109.us.invoke, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lw = load i8, ptr %.sroa.018.0.ptr.us.us.7, align 1, !noundef !7
  %i.lx = lshr i8 %i.lw, %i.jq
  %i.ly = and i8 %i.lx, 3
  %i.lz = uitofp nneg i8 %i.ly to float
  %i.ma = fmul float %i.jl, %i.lz
  %i.mb = fsub float %i.ma, %i.jo
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.lv
  store float %i.mb, ptr %i.mc, align 4
  %i.md = add nuw i64 %.sroa.012.097.us, 8        ; 2 uses
  %exitcond.8.not = icmp eq i64 %i.jr, 8
  br i1 %exitcond.8.not, label %.split109.us.invoke, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.me = load i8, ptr %.sroa.018.0.ptr.us.us.8, align 1, !noundef !7
  %i.mf = lshr i8 %i.me, %i.jq
  %i.mg = and i8 %i.mf, 3
  %i.mh = uitofp nneg i8 %i.mg to float
  %i.mi = fmul float %i.jl, %i.mh
  %i.mj = fsub float %i.mi, %i.jo
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.md
  store float %i.mj, ptr %i.mk, align 4
  %i.ml = add nuw i64 %.sroa.012.097.us, 9        ; 2 uses
  %exitcond.9.not = icmp eq i64 %i.jr, 9
  br i1 %exitcond.9.not, label %.split109.us.invoke, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.mm = load i8, ptr %.sroa.018.0.ptr.us.us.9, align 1, !noundef !7
  %i.mn = lshr i8 %i.mm, %i.jq
  %i.mo = and i8 %i.mn, 3
  %i.mp = uitofp nneg i8 %i.mo to float
  %i.mq = fmul float %i.jl, %i.mp
  %i.mr = fsub float %i.mq, %i.jo
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.ml
  store float %i.mr, ptr %i.ms, align 4
  %i.mt = add nuw i64 %.sroa.012.097.us, 10       ; 2 uses
  %exitcond.10.not = icmp eq i64 %i.jr, 10
  br i1 %exitcond.10.not, label %.split109.us.invoke, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.mu = load i8, ptr %.sroa.018.0.ptr.us.us.10, align 1, !noundef !7
  %i.mv = lshr i8 %i.mu, %i.jq
  %i.mw = and i8 %i.mv, 3
  %i.mx = uitofp nneg i8 %i.mw to float
  %i.my = fmul float %i.jl, %i.mx
  %i.mz = fsub float %i.my, %i.jo
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.mt
  store float %i.mz, ptr %i.na, align 4
  %i.nb = add nuw i64 %.sroa.012.097.us, 11       ; 2 uses
  %exitcond.11.not = icmp eq i64 %i.jr, 11
  br i1 %exitcond.11.not, label %.split109.us.invoke, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.nc = load i8, ptr %.sroa.018.0.ptr.us.us.11, align 1, !noundef !7
  %i.nd = lshr i8 %i.nc, %i.jq
  %i.ne = and i8 %i.nd, 3
  %i.nf = uitofp nneg i8 %i.ne to float
  %i.ng = fmul float %i.jl, %i.nf
  %i.nh = fsub float %i.ng, %i.jo
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.nb
  store float %i.nh, ptr %i.ni, align 4
  %i.nj = add nuw i64 %.sroa.012.097.us, 12       ; 2 uses
  %exitcond.12.not = icmp eq i64 %i.jr, 12
  br i1 %exitcond.12.not, label %.split109.us.invoke, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.nk = load i8, ptr %.sroa.018.0.ptr.us.us.12, align 1, !noundef !7
  %i.nl = lshr i8 %i.nk, %i.jq
  %i.nm = and i8 %i.nl, 3
  %i.nn = uitofp nneg i8 %i.nm to float
  %i.no = fmul float %i.jl, %i.nn
  %i.np = fsub float %i.no, %i.jo
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.nj
  store float %i.np, ptr %i.nq, align 4
  %i.nr = add nuw i64 %.sroa.012.097.us, 13       ; 2 uses
  %exitcond.13.not = icmp eq i64 %i.jr, 13
  br i1 %exitcond.13.not, label %.split109.us.invoke, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ns = load i8, ptr %.sroa.018.0.ptr.us.us.13, align 1, !noundef !7
  %i.nt = lshr i8 %i.ns, %i.jq
  %i.nu = and i8 %i.nt, 3
  %i.nv = uitofp nneg i8 %i.nu to float
  %i.nw = fmul float %i.jl, %i.nv
  %i.nx = fsub float %i.nw, %i.jo
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.nr
  store float %i.nx, ptr %i.ny, align 4
  %i.nz = add nuw i64 %.sroa.012.097.us, 14       ; 2 uses
  %exitcond.14.not = icmp eq i64 %i.jr, 14
  br i1 %exitcond.14.not, label %.split109.us.invoke, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.oa = load i8, ptr %.sroa.018.0.ptr.us.us.14, align 1, !noundef !7
  %i.ob = lshr i8 %i.oa, %i.jq
  %i.oc = and i8 %i.ob, 3
  %i.od = uitofp nneg i8 %i.oc to float
  %i.oe = fmul float %i.jl, %i.od
  %i.of = fsub float %i.oe, %i.jo
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.nz
  store float %i.of, ptr %i.og, align 4
  %i.oh = add nuw i64 %.sroa.012.097.us, 15       ; 2 uses
  %exitcond.15.not = icmp eq i64 %i.jr, 15
  br i1 %exitcond.15.not, label %.split109.us.invoke, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.oi = load i8, ptr %.sroa.018.0.ptr.us.us.15, align 1, !noundef !7
  %i.oj = lshr i8 %i.oi, %i.jq
  %i.ok = and i8 %i.oj, 3
  %i.ol = uitofp nneg i8 %i.ok to float
  %i.om = fmul float %i.jl, %i.ol
  %i.on = fsub float %i.om, %i.jo
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.oh
  store float %i.on, ptr %i.oo, align 4
  %.not33.us = icmp eq i64 %.sroa.05.199.us, 15
  br i1 %.not33.us, label %.split109.us.invoke, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.bk
  %i.op = add i64 %.sroa.012.097.us, 16           ; 6 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.jh, i64 1
  %i.or = load i8, ptr %i.oq, align 1, !noundef !7 ; 2 uses
  %i.os = add nuw nsw i64 %.sroa.05.199.us, 2     ; 2 uses
  %i.ot = and i8 %i.or, 15
  %i.ou = uitofp nneg i8 %i.ot to float
  %i.ov = fmul float %.sroa.01.0, %i.ou           ; 2 uses
  %i.ow = lshr i8 %i.or, 4
  %i.ox = uitofp nneg i8 %i.ow to float
  %i.oy = fmul float %.sroa.03.0, %i.ox           ; 2 uses
  %i.oz = call i64 @llvm.umax.i64(i64 %i.di, i64 %i.op)
  %i.pa = add i64 %i.oz, -16
  %i.pb = sub i64 %i.pa, %.sroa.012.097.us
  %i.pc = call i64 @llvm.umin.i64(i64 %i.pb, i64 %i.dr)
  %i.pd = add i64 %i.pc, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.pd, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us
  %i.pe = shl i64 %.sroa.012.097.us, 2
  %4 = getelementptr i8, ptr %i.dh, i64 %i.pe
  %i.pf = getelementptr i8, ptr %4, i64 64
  %i.pg = call i64 @llvm.umax.i64(i64 %i.di, i64 %i.op)
  %i.ph = add i64 %i.pg, -16
  %i.pi = sub i64 %i.ph, %.sroa.012.097.us
  %i.pj = call i64 @llvm.umin.i64(i64 %i.pi, i64 %i.dq) ; 2 uses
  %i.pk = add i64 %.sroa.012.097.us, %i.pj
  %i.pl = shl i64 %i.pk, 2
  %5 = getelementptr i8, ptr %i.dh, i64 %i.pl
  %6 = getelementptr i8, ptr %5, i64 68
  %i.pm = getelementptr i8, ptr %i.dk, i64 %i.pj
  %i.pn = getelementptr i8, ptr %i.pm, i64 17
  %bound0 = icmp ult ptr %i.pf, %i.pn
  %bound1 = icmp ult ptr %i.dn, %6
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.po = and i64 %i.pd, 3                        ; 2 uses
  %i.pp = icmp eq i64 %i.po, 0
  %i.pq = select i1 %i.pp, i64 4, i64 %i.po
  %n.vec = sub i64 %i.pd, %i.pq                   ; 3 uses
  %i.pr = add i64 %i.op, %n.vec
  %i.ps = getelementptr i8, ptr %i.dn, i64 %n.vec
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ov, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert289 = insertelement <4 x float> poison, float %i.oy, i64 0
  %broadcast.splat290 = shufflevector <4 x float> %broadcast.splatinsert289, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert291 = insertelement <4 x i8> poison, i8 %i.jq, i64 0
  %broadcast.splat292 = shufflevector <4 x i8> %broadcast.splatinsert291, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.op
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.dn, i64 %index
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !alias.scope !869
  %i.pu = lshr <4 x i8> %wide.load, %broadcast.splat292
  %i.pv = and <4 x i8> %i.pu, splat (i8 3)
  %i.pw = uitofp nneg <4 x i8> %i.pv to <4 x float>
  %i.px = fmul <4 x float> %broadcast.splat, %i.pw
  %i.py = fsub <4 x float> %i.px, %broadcast.splat290
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %index
  store <4 x float> %i.py, ptr %i.pz, align 4, !alias.scope !870, !noalias !869
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.qa = icmp eq i64 %index.next, %n.vec
  br i1 %i.qa, label %scalar.ph.preheader, label %vector.body, !llvm.loop !859

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph.us
  %.sroa.012.295.us.ph = phi i64 [ %i.op, %vector.memcheck ], [ %i.op, %.lr.ph.us ], [ %i.pr, %vector.body ]
  %.sroa.020.094.us.ph = phi ptr [ %i.dn, %vector.memcheck ], [ %i.dn, %.lr.ph.us ], [ %i.ps, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.bl
  %.sroa.012.295.us = phi i64 [ %i.qk, %bb.bl ], [ %.sroa.012.295.us.ph, %scalar.ph.preheader ] ; 4 uses
  %.sroa.020.094.us = phi ptr [ %i.qi, %bb.bl ], [ %.sroa.020.094.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.qb = icmp ult i64 %.sroa.012.295.us, %i.di
  br i1 %i.qb, label %bb.bl, label %.split109.us.invoke

bb.bl:                                            ; preds = %scalar.ph
  %i.qc = load i8, ptr %.sroa.020.094.us, align 1, !noundef !7
  %i.qd = lshr i8 %i.qc, %i.jq
  %i.qe = and i8 %i.qd, 3
  %i.qf = uitofp nneg i8 %i.qe to float
  %i.qg = fmul float %i.ov, %i.qf
  %i.qh = fsub float %i.qg, %i.oy
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.020.094.us, i64 1 ; 2 uses
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %.sroa.012.295.us
  store float %i.qh, ptr %i.qj, align 4
  %i.qk = add nuw i64 %.sroa.012.295.us, 1        ; 2 uses
  %i.ql = icmp eq ptr %i.qi, %i.do
  br i1 %i.ql, label %._crit_edge.us, label %scalar.ph, !llvm.loop !860

._crit_edge.us:                                   ; preds = %bb.bl
  %i.qm = add nuw nsw i32 %.sroa.09.098.us, 2
  %exitcond195.not = icmp eq i32 %i.jf, 4
  br i1 %exitcond195.not, label %.loopexit.split.us, label %.split.us.split

.loopexit.split.us:                               ; preds = %._crit_edge.us, %bb.at
  %.us-phi142 = phi i64 [ %i.jd, %bb.at ], [ %i.os, %._crit_edge.us ]
  %i.qn = load i64, ptr %i.o, align 8, !alias.scope !868, !noundef !7 ; 2 uses
  %i.qo = load i64, ptr %i.p, align 8, !alias.scope !868, !noundef !7
  %i.qp = icmp ult i64 %i.qn, %i.qo
  br i1 %i.qp, label %.lr.ph, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsltEA4u8Pgfu_11candle_core.exit, %.loopexit.split.us, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.qq = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !871, !nonnull !7, !noundef !7
  %i.qr = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !871, !nonnull !7, !noundef !7 ; 2 uses
  %i.qs = icmp eq ptr %i.qr, %i.qq
  br i1 %i.qs, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ2KQSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ2KQSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit

.split:                                           ; preds = %bb.ab
  %i.qt = icmp ult i64 %.sroa.05.0144, 16
  br i1 %i.qt, label %bb.bm, label %.split109.us.invoke

bb.bm:                                            ; preds = %.split
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 16, i64 noundef %i.dl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #28
          to label %bb.bn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bn:                                            ; preds = %bb.bm
  unreachable

.split109.us.invoke:                              ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %.split.us.split, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %.split.us.split.us, %scalar.ph, %.split
  %i.qu = phi i64 [ 16, %bb.as ], [ %.sroa.012.295.us, %scalar.ph ], [ 16, %.split ], [ %.sroa.05.199.us.us, %.split.us.split.us ], [ %i.iu, %bb.ar ], [ %i.im, %bb.aq ], [ %i.ie, %bb.ap ], [ %i.hw, %bb.ao ], [ %i.ho, %bb.an ], [ %i.hg, %bb.am ], [ %i.gy, %bb.al ], [ %i.gq, %bb.ak ], [ %i.gi, %bb.aj ], [ %i.ga, %bb.ai ], [ %i.fs, %bb.ah ], [ %i.fk, %bb.ag ], [ %i.fc, %bb.af ], [ %i.eu, %bb.ae ], [ %i.em, %bb.ad ], [ %.sroa.012.097.us.us, %bb.ac ], [ %.sroa.05.199.us, %.split.us.split ], [ %i.oh, %bb.bj ], [ %i.nz, %bb.bi ], [ %i.nr, %bb.bh ], [ %i.nj, %bb.bg ], [ %i.nb, %bb.bf ], [ %i.mt, %bb.be ], [ %i.ml, %bb.bd ], [ %i.md, %bb.bc ], [ %i.lv, %bb.bb ], [ %i.ln, %bb.ba ], [ %i.lf, %bb.az ], [ %i.kx, %bb.ay ], [ %i.kp, %bb.ax ], [ %i.kh, %bb.aw ], [ %i.jz, %bb.av ], [ %.sroa.012.097.us, %bb.au ], [ 16, %bb.bk ]
  %i.qv = phi i64 [ 16, %bb.as ], [ %i.di, %scalar.ph ], [ 16, %.split ], [ 16, %.split.us.split.us ], [ %i.di, %bb.ar ], [ %i.di, %bb.aq ], [ %i.di, %bb.ap ], [ %i.di, %bb.ao ], [ %i.di, %bb.an ], [ %i.di, %bb.am ], [ %i.di, %bb.al ], [ %i.di, %bb.ak ], [ %i.di, %bb.aj ], [ %i.di, %bb.ai ], [ %i.di, %bb.ah ], [ %i.di, %bb.ag ], [ %i.di, %bb.af ], [ %i.di, %bb.ae ], [ %i.di, %bb.ad ], [ %i.di, %bb.ac ], [ 16, %.split.us.split ], [ %i.di, %bb.bj ], [ %i.di, %bb.bi ], [ %i.di, %bb.bh ], [ %i.di, %bb.bg ], [ %i.di, %bb.bf ], [ %i.di, %bb.be ], [ %i.di, %bb.bd ], [ %i.di, %bb.bc ], [ %i.di, %bb.bb ], [ %i.di, %bb.ba ], [ %i.di, %bb.az ], [ %i.di, %bb.ay ], [ %i.di, %bb.ax ], [ %i.di, %bb.aw ], [ %i.di, %bb.av ], [ %i.di, %bb.au ], [ 16, %bb.bk ]
  %i.qw = phi ptr [ @108, %bb.as ], [ @109, %scalar.ph ], [ @105, %.split ], [ @105, %.split.us.split.us ], [ @107, %bb.ar ], [ @107, %bb.aq ], [ @107, %bb.ap ], [ @107, %bb.ao ], [ @107, %bb.an ], [ @107, %bb.am ], [ @107, %bb.al ], [ @107, %bb.ak ], [ @107, %bb.aj ], [ @107, %bb.ai ], [ @107, %bb.ah ], [ @107, %bb.ag ], [ @107, %bb.af ], [ @107, %bb.ae ], [ @107, %bb.ad ], [ @107, %bb.ac ], [ @105, %.split.us.split ], [ @107, %bb.bj ], [ @107, %bb.bi ], [ @107, %bb.bh ], [ @107, %bb.bg ], [ @107, %bb.bf ], [ @107, %bb.be ], [ @107, %bb.bd ], [ @107, %bb.bc ], [ @107, %bb.bb ], [ @107, %bb.ba ], [ @107, %bb.az ], [ @107, %bb.ay ], [ @107, %bb.ax ], [ @107, %bb.aw ], [ @107, %bb.av ], [ @107, %bb.au ], [ @108, %bb.bk ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.qu, i64 noundef %i.qv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qw) #28
          to label %.split109.us.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split109.us.cont:                                ; preds = %.split109.us.invoke
  unreachable

bb.bo:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.qx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ2KQSfEEEB1x_.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp303
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ3KNtB5_8GgmlType10from_float(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef range(i64 0, 83848836698679781) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 32 uses
  %i.b = alloca [64 x i8], align 4                ; 20 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RINvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils22group_for_quantizationNtNtB4_8k_quants8BlockQ3KEB6_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef %3)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.g = load i64, ptr %i.d, align 8, !range !22, !noundef !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !7 ; 3 uses
  %i.j = icmp ult i64 %i.i, 384307168202282326
  call void @llvm.assume(i1 %i.j)
  %.idx = mul nuw nsw i64 %i.i, 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.g, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.preheader

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.preheader: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ad, %.lr.ph.preheader, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %.lr.ph.7, %.lr.ph.8, %.lr.ph.9, %.lr.ph.10, %.lr.ph.11, %.lr.ph.12, %.lr.ph.13, %.lr.ph.14, %.lr.ph.15, %bb.d, %bb.h, %.lr.ph.16, %.invoke
  %lpad.loopexit.split-lp330 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KRSfEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KRSfEEEB1x_.exit unwind label %bb.bz

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.preheader, %.loopexit.1
  %i.ai = phi ptr [ %i.hh, %.loopexit.1 ], [ %i.f, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.preheader ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !876)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %i.aj, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !876
  %.sroa.0.0.copyload = load ptr, ptr %i.ai, align 8, !noalias !876 ; 8 uses
  %.sroa.6.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx89, align 8, !noalias !876 ; 34 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !876 ; 33 uses
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %i.ak = and i64 %.sroa.7.0.copyload, -16        ; 17 uses
  %.not.i.i166 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i166, label %.preheader130, label %.lr.ph.preheader

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KRSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit, %.loopexit.1, %bb.a
  call void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTQNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KRSfEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 64
  %i.am = invoke noundef float @_RNvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils14make_q3_quants(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.6.0.copyload, i64 noundef 16, i32 noundef 4, i1 noundef zeroext true)
          to label %bb.bj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 17 uses
end_hunk_1
begin_hunk_2_@_RNvXs6_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ4KNtB5_8GgmlType8to_float:bb.a
  %.sroa.0.0.copyload = load ptr, ptr %i.n, align 8, !noalias !1129 ; 8 uses
  %.sroa.6.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx45, align 8, !noalias !1129 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !1129 ; 5 uses
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ4KQSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ4KQSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.p = load i16, ptr %.sroa.0.0.copyload, align 2, !noundef !7 ; 6 uses
  %i.q = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.c, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.s = invoke noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  %i.t = and i128 %i.s, 18014398509481984
  %.not53 = icmp eq i128 %i.t, 0
  br i1 %.not53, label %bb.d, label %bb.m

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ4KQSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ4KQSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit, %.loopexit, %bb.a
  call void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ4KQSfEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit: ; preds = %bb.b
  %i.u = and i64 %i.q, 18014398509481984
  %.not52 = icmp eq i64 %i.u, 0
  br i1 %.not52, label %bb.d, label %bb.m

bb.d:                                             ; preds = %.noexc, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.v = and i16 %i.p, 32767
  %i.w = icmp eq i16 %i.v, 0
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = zext i16 %i.p to i32
  %i.y = shl nuw i32 %i.x, 16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.f:                                             ; preds = %bb.d
  %i.z = and i16 %i.p, -32768
  %i.aa = zext i16 %i.z to i32                    ; 2 uses
  %i.ab = and i16 %i.p, 31744                     ; 3 uses
  %i.ac = and i16 %i.p, 1023                      ; 3 uses
  %i.ad = zext nneg i16 %i.ac to i32              ; 3 uses
  %i.ae = icmp eq i16 %i.ab, 31744
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = icmp eq i16 %i.ac, 0
  %i.ag = shl nuw i32 %i.aa, 16                   ; 2 uses
  br i1 %i.af, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ah = shl nuw i32 %i.aa, 16                   ; 2 uses
  %i.ai = icmp eq i16 %i.ab, 0
  br i1 %i.ai, label %bb.k, label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.aj = or disjoint i32 %i.ag, 2139095040
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.j:                                             ; preds = %bb.g
  %i.ak = shl nuw nsw i32 %i.ad, 13
  %i.al = or disjoint i32 %i.ag, %i.ak
  %i.am = or i32 %i.al, 2143289344
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.k:                                             ; preds = %bb.h
  %i.an = call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.ac, i1 false)
  %i.ao = zext nneg i16 %i.an to i32              ; 2 uses
  %i.ap = add nuw nsw i32 %i.ao, 8
  %i.aq = shl i32 %i.ad, %i.ap
  %i.ar = and i32 %i.aq, 8388607
  %reass.sub.i = or disjoint i32 %i.ah, 989855744
  %i.as = shl nuw nsw i32 %i.ao, 23
  %i.at = sub nuw nsw i32 %reass.sub.i, %i.as
  %i.au = or disjoint i32 %i.at, %i.ar
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.l:                                             ; preds = %bb.h
  %i.av = lshr exact i16 %i.ab, 10
  %narrow.i = add nuw nsw i16 %i.av, 112
  %i.aw = zext nneg i16 %narrow.i to i32
  %i.ax = shl nuw nsw i32 %i.aw, 23
  %i.ay = shl nuw nsw i32 %i.ad, 13
  %i.az = or disjoint i32 %i.ax, %i.ay
  %i.ba = or disjoint i32 %i.az, %i.ah
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit: ; preds = %bb.e, %bb.i, %bb.j, %bb.k, %bb.l
  %.sroa.0.0.i = phi i32 [ %i.y, %bb.e ], [ %i.aj, %bb.i ], [ %i.am, %bb.j ], [ %i.au, %bb.k ], [ %i.ba, %bb.l ]
  %i.bb = bitcast i32 %.sroa.0.0.i to float
  br label %bb.n

bb.m:                                             ; preds = %.noexc, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.bc = call fastcc noundef float @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.p)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit
  %.sroa.01.0 = phi float [ %i.bb, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit ], [ %i.bc, %bb.m ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 2
  %i.be = load i16, ptr %i.bd, align 2, !noundef !7 ; 6 uses
  %i.bf = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.o, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit32, !prof !14

bb.o:                                             ; preds = %bb.n
  %i.bh = invoke noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc31 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc31:                                         ; preds = %bb.o
  %i.bi = and i128 %i.bh, 18014398509481984
  %.not55 = icmp eq i128 %i.bi, 0
  br i1 %.not55, label %bb.p, label %bb.y

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit32: ; preds = %bb.n
  %i.bj = and i64 %i.bf, 18014398509481984
  %.not54 = icmp eq i64 %i.bj, 0
  br i1 %.not54, label %bb.p, label %bb.y

bb.p:                                             ; preds = %.noexc31, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit32
  %i.bk = and i16 %i.be, 32767
  %i.bl = icmp eq i16 %i.bk, 0
  br i1 %i.bl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bm = zext i16 %i.be to i32
  %i.bn = shl nuw i32 %i.bm, 16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit36

bb.r:                                             ; preds = %bb.p
  %i.bo = and i16 %i.be, -32768
  %i.bp = zext i16 %i.bo to i32                   ; 2 uses
  %i.bq = and i16 %i.be, 31744                    ; 3 uses
  %i.br = and i16 %i.be, 1023                     ; 3 uses
  %i.bs = zext nneg i16 %i.br to i32              ; 3 uses
  %i.bt = icmp eq i16 %i.bq, 31744
  br i1 %i.bt, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bu = icmp eq i16 %i.br, 0
  %i.bv = shl nuw i32 %i.bp, 16                   ; 2 uses
  br i1 %i.bu, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bw = shl nuw i32 %i.bp, 16                   ; 2 uses
  %i.bx = icmp eq i16 %i.bq, 0
  br i1 %i.bx, label %bb.w, label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.by = or disjoint i32 %i.bv, 2139095040
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit36

bb.v:                                             ; preds = %bb.s
  %i.bz = shl nuw nsw i32 %i.bs, 13
  %i.ca = or disjoint i32 %i.bv, %i.bz
  %i.cb = or i32 %i.ca, 2143289344
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit36

bb.w:                                             ; preds = %bb.t
  %i.cc = call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.br, i1 false)
  %i.cd = zext nneg i16 %i.cc to i32              ; 2 uses
  %i.ce = add nuw nsw i32 %i.cd, 8
  %i.cf = shl i32 %i.bs, %i.ce
  %i.cg = and i32 %i.cf, 8388607
  %reass.sub.i35 = or disjoint i32 %i.bw, 989855744
  %i.ch = shl nuw nsw i32 %i.cd, 23
  %i.ci = sub nuw nsw i32 %reass.sub.i35, %i.ch
  %i.cj = or disjoint i32 %i.ci, %i.cg
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit36

bb.x:                                             ; preds = %bb.t
  %i.ck = lshr exact i16 %i.bq, 10
  %narrow.i33 = add nuw nsw i16 %i.ck, 112
  %i.cl = zext nneg i16 %narrow.i33 to i32
  %i.cm = shl nuw nsw i32 %i.cl, 23
  %i.cn = shl nuw nsw i32 %i.bs, 13
  %i.co = or disjoint i32 %i.cm, %i.cn
  %i.cp = or disjoint i32 %i.co, %i.bw
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit36

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit36: ; preds = %bb.q, %bb.u, %bb.v, %bb.w, %bb.x
  %.sroa.0.0.i34 = phi i32 [ %i.bn, %bb.q ], [ %i.by, %bb.u ], [ %i.cb, %bb.v ], [ %i.cj, %bb.w ], [ %i.cp, %bb.x ]
  %i.cq = bitcast i32 %.sroa.0.0.i34 to float
  br label %bb.z

bb.y:                                             ; preds = %.noexc31, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit32
  %i.cr = call fastcc noundef float @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.be)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit36
  %.sroa.03.0 = phi float [ %i.cq, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit36 ], [ %i.cr, %bb.y ] ; 2 uses
  %i.cs = getelementptr i8, ptr %.sroa.0.0.copyload, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 4 ; 4 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ah, %bb.z
  %.sroa.05.079 = phi i64 [ 0, %bb.z ], [ %i.hs, %bb.ah ] ; 8 uses
  %.sroa.08.078 = phi i64 [ 0, %bb.z ], [ %i.hz, %bb.ah ] ; 12 uses
  %.sroa.019.077 = phi i64 [ 0, %bb.z ], [ %i.cu, %bb.ah ] ; 2 uses
  %.sroa.022.076 = phi i64 [ 4, %bb.z ], [ %i.cv, %bb.ah ]
  %i.cu = add nuw nsw i64 %.sroa.019.077, 64
  %i.cv = add nsw i64 %.sroa.022.076, -1          ; 2 uses
  %i.cw = lshr exact i64 %.sroa.019.077, 1        ; 3 uses
  %i.cx = getelementptr i8, ptr %i.cs, i64 %i.cw  ; 6 uses
  %i.cy = icmp samesign ult i64 %.sroa.05.079, 4
  br i1 %i.cy, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cz = add nsw i64 %.sroa.05.079, -4           ; 2 uses
  %i.da = icmp ult i64 %i.cz, 12
  br i1 %i.da, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.cz, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #32
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc39:                                         ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.sroa.05.079
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.dd = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %.sroa.05.079
  %i.de = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.sroa.05.079
  %i.df = getelementptr i8, ptr %i.ct, i64 %.sroa.05.079
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 5
  %i.dh = load i8, ptr %i.dc, align 1, !alias.scope !1130, !noundef !7 ; 2 uses
  %i.di = and i8 %i.dh, 15
  %i.dj = load <2 x i8>, ptr %i.dd, align 1
  %i.dk = load <2 x i8>, ptr %i.de, align 1
  %i.dl = shufflevector <2 x i8> %i.dj, <2 x i8> %i.dk, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.dm = lshr <4 x i8> %i.dl, splat (i8 2)
  %i.dn = and <4 x i8> %i.dm, splat (i8 48)
  %i.do = lshr i8 %i.dh, 4
  %i.dp = load i8, ptr %i.dg, align 1, !alias.scope !1131, !noundef !7 ; 2 uses
  %i.dq = and i8 %i.dp, 15
  %i.dr = lshr i8 %i.dp, 4
  %i.ds = insertelement <4 x i8> poison, i8 %i.di, i64 0
  %i.dt = insertelement <4 x i8> %i.ds, i8 %i.do, i64 1
  %i.du = insertelement <4 x i8> %i.dt, i8 %i.dq, i64 2
  %i.dv = insertelement <4 x i8> %i.du, i8 %i.dr, i64 3
  %i.dw = or disjoint <4 x i8> %i.dn, %i.dv
  br label %bb.af

bb.ae:                                            ; preds = %bb.aa
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.sroa.05.079 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.dz = load <2 x i8>, ptr %i.dx, align 1
  %i.ea = load <2 x i8>, ptr %i.dy, align 1
  %i.eb = shufflevector <2 x i8> %i.dz, <2 x i8> %i.ea, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ec = and <4 x i8> %i.eb, splat (i8 63)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ed = phi <4 x i8> [ %i.ec, %bb.ae ], [ %i.dw, %bb.ad ]
  %i.ee = uitofp <4 x i8> %i.ed to <4 x float>    ; 4 uses
  %i.ef = extractelement <4 x float> %i.ee, i64 0
  %i.eg = fmul float %.sroa.01.0, %i.ef           ; 2 uses
  %i.eh = extractelement <4 x float> %i.ee, i64 1
  %i.ei = fmul float %.sroa.03.0, %i.eh           ; 2 uses
  %i.ej = extractelement <4 x float> %i.ee, i64 2
  %i.ek = fmul float %.sroa.01.0, %i.ej           ; 2 uses
  %i.el = extractelement <4 x float> %i.ee, i64 3
  %i.em = fmul float %.sroa.03.0, %i.el           ; 2 uses
  %i.en = call i64 @llvm.usub.sat.i64(i64 %.sroa.7.0.copyload, i64 %.sroa.08.078) ; 4 uses
  %i.eo = call i64 @llvm.umin.i64(i64 %i.en, i64 31) ; 3 uses
  %i.ep = add nuw nsw i64 %i.eo, 1                ; 2 uses
  %min.iters.check145 = icmp ult i64 %i.en, 8
  br i1 %min.iters.check145, label %scalar.ph144.preheader, label %vector.memcheck146

vector.memcheck146:                               ; preds = %bb.af
  %i.eq = shl i64 %.sroa.08.078, 2
  %i.er = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.eq
  %i.es = add i64 %.sroa.08.078, %i.eo
  %i.et = shl i64 %i.es, 2
  %4 = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.et
  %i.eu = getelementptr i8, ptr %4, i64 4
  %i.ev = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.eo
  %i.ew = getelementptr i8, ptr %i.ev, i64 %i.cw
  %i.ex = getelementptr i8, ptr %i.ew, i64 17
  %bound0147 = icmp ult ptr %i.er, %i.ex
  %bound1148 = icmp ult ptr %i.cx, %i.eu
  %found.conflict149 = and i1 %bound0147, %bound1148
  br i1 %found.conflict149, label %scalar.ph144.preheader, label %vector.ph150

vector.ph150:                                     ; preds = %vector.memcheck146
  %i.ey = and i64 %i.ep, 7                        ; 2 uses
  %i.ez = icmp eq i64 %i.ey, 0
  %i.fa = select i1 %i.ez, i64 8, i64 %i.ey
  %n.vec151 = sub nsw i64 %i.ep, %i.fa            ; 3 uses
  %i.fb = add i64 %.sroa.08.078, %n.vec151
  %broadcast.splatinsert152 = insertelement <4 x float> poison, float %i.eg, i64 0
  %broadcast.splat153 = shufflevector <4 x float> %broadcast.splatinsert152, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert154 = insertelement <4 x float> poison, float %i.ei, i64 0
  %broadcast.splat155 = shufflevector <4 x float> %broadcast.splatinsert154, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.08.078
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph150
  %index157 = phi i64 [ 0, %vector.ph150 ], [ %index.next160, %vector.body156 ] ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.cx, i64 %index157 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %wide.load158 = load <4 x i8>, ptr %i.fd, align 1, !alias.scope !1132
  %wide.load159 = load <4 x i8>, ptr %i.fe, align 1, !alias.scope !1132
  %i.ff = and <4 x i8> %wide.load158, splat (i8 15)
  %i.fg = and <4 x i8> %wide.load159, splat (i8 15)
  %i.fh = uitofp nneg <4 x i8> %i.ff to <4 x float>
  %i.fi = uitofp nneg <4 x i8> %i.fg to <4 x float>
  %i.fj = fmul <4 x float> %broadcast.splat153, %i.fh
  %i.fk = fmul <4 x float> %broadcast.splat153, %i.fi
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %index157 ; 2 uses
  %i.fm = fsub <4 x float> %i.fj, %broadcast.splat155
  %i.fn = fsub <4 x float> %i.fk, %broadcast.splat155
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store <4 x float> %i.fm, ptr %i.fl, align 4, !alias.scope !1133, !noalias !1132
  store <4 x float> %i.fn, ptr %i.fo, align 4, !alias.scope !1133, !noalias !1132
  %index.next160 = add nuw i64 %index157, 8       ; 2 uses
  %i.fp = icmp eq i64 %index.next160, %n.vec151
  br i1 %i.fp, label %scalar.ph144.preheader, label %vector.body156, !llvm.loop !1121

scalar.ph144.preheader:                           ; preds = %vector.body156, %vector.memcheck146, %bb.af
  %.sroa.08.173.ph = phi i64 [ %.sroa.08.078, %vector.memcheck146 ], [ %.sroa.08.078, %bb.af ], [ %i.fb, %vector.body156 ]
  %.sroa.014.0.idx72.ph = phi i64 [ 0, %vector.memcheck146 ], [ 0, %bb.af ], [ %n.vec151, %vector.body156 ]
  br label %scalar.ph144

scalar.ph144:                                     ; preds = %scalar.ph144.preheader, %bb.ag
  %.sroa.08.173 = phi i64 [ %i.fw, %bb.ag ], [ %.sroa.08.173.ph, %scalar.ph144.preheader ] ; 3 uses
  %.sroa.014.0.idx72 = phi i64 [ %.sroa.014.0.add, %bb.ag ], [ %.sroa.014.0.idx72.ph, %scalar.ph144.preheader ] ; 4 uses
  %exitcond.not = icmp eq i64 %.sroa.014.0.idx72, %i.en
  br i1 %exitcond.not, label %.invoke, label %bb.ag

bb.ag:                                            ; preds = %scalar.ph144
  %.sroa.014.0.ptr = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.sroa.014.0.idx72
  %i.fq = load i8, ptr %.sroa.014.0.ptr, align 1, !noundef !7
  %i.fr = and i8 %i.fq, 15
  %i.fs = uitofp nneg i8 %i.fr to float
  %i.ft = fmul float %i.eg, %i.fs
  %.sroa.014.0.add = add nuw nsw i64 %.sroa.014.0.idx72, 1 ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.08.173
  %i.fv = fsub float %i.ft, %i.ei
  store float %i.fv, ptr %i.fu, align 4
  %i.fw = add nuw i64 %.sroa.08.173, 1            ; 5 uses
  %i.fx = icmp eq i64 %.sroa.014.0.add, 32
  br i1 %i.fx, label %.preheader.preheader, label %scalar.ph144, !llvm.loop !1122

.preheader.preheader:                             ; preds = %bb.ag
  %i.fy = call i64 @llvm.umin.i64(i64 %i.en, i64 31) ; 3 uses
  %i.fz = add i64 %.sroa.08.078, %i.fy
  %i.ga = add i64 %i.fz, 1                        ; 2 uses
  %i.gb = call i64 @llvm.umax.i64(i64 %.sroa.7.0.copyload, i64 %i.ga)
  %i.gc = xor i64 %.sroa.08.078, -1
  %i.gd = add i64 %i.gb, %i.gc
  %i.ge = sub i64 %i.gd, %i.fy                    ; 2 uses
  %i.gf = call i64 @llvm.umin.i64(i64 %i.ge, i64 31)
  %i.gg = add nuw nsw i64 %i.gf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ge, 8
  br i1 %min.iters.check, label %.preheader.preheader164, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.preheader
  %i.gh = shl i64 %.sroa.08.078, 2
  %i.gi = shl nuw nsw i64 %.sroa.014.0.idx72, 2   ; 2 uses
  %i.gj = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.gh
  %i.gk = getelementptr i8, ptr %i.gj, i64 4
  %i.gl = getelementptr i8, ptr %i.gk, i64 %i.gi
  %i.gm = call i64 @llvm.umax.i64(i64 %.sroa.7.0.copyload, i64 %i.ga)
  %i.gn = xor i64 %.sroa.08.078, -1
  %i.go = add i64 %i.gm, %i.gn
  %i.gp = sub i64 %i.go, %i.fy
  %i.gq = call i64 @llvm.umin.i64(i64 %i.gp, i64 31) ; 2 uses
  %i.gr = add i64 %.sroa.08.078, %i.gq
  %i.gs = shl i64 %i.gr, 2
  %i.gt = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.gs
  %i.gu = getelementptr i8, ptr %i.gt, i64 8
  %i.gv = getelementptr i8, ptr %i.gu, i64 %i.gi
  %i.gw = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %i.gq
  %i.gx = getelementptr i8, ptr %i.gw, i64 %i.cw
  %i.gy = getelementptr i8, ptr %i.gx, i64 17
  %bound0 = icmp ult ptr %i.gl, %i.gy
  %bound1 = icmp ult ptr %i.cx, %i.gv
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.preheader164, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.gz = and i64 %i.gg, 7                        ; 2 uses
  %i.ha = icmp eq i64 %i.gz, 0
  %i.hb = select i1 %i.ha, i64 8, i64 %i.gz
  %n.vec = sub nsw i64 %i.gg, %i.hb               ; 3 uses
  %i.hc = add i64 %i.fw, %n.vec
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ek, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert131 = insertelement <4 x float> poison, float %i.em, i64 0
  %broadcast.splat132 = shufflevector <4 x float> %broadcast.splatinsert131, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload, i64 %i.fw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.cx, i64 %index ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %wide.load = load <4 x i8>, ptr %i.he, align 1, !alias.scope !1134
  %wide.load133 = load <4 x i8>, ptr %i.hf, align 1, !alias.scope !1134
  %i.hg = lshr <4 x i8> %wide.load, splat (i8 4)
  %i.hh = lshr <4 x i8> %wide.load133, splat (i8 4)
  %i.hi = uitofp nneg <4 x i8> %i.hg to <4 x float>
  %i.hj = uitofp nneg <4 x i8> %i.hh to <4 x float>
  %i.hk = fmul <4 x float> %broadcast.splat, %i.hi
  %i.hl = fmul <4 x float> %broadcast.splat, %i.hj
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %index ; 2 uses
  %i.hn = fsub <4 x float> %i.hk, %broadcast.splat132
  %i.ho = fsub <4 x float> %i.hl, %broadcast.splat132
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  store <4 x float> %i.hn, ptr %i.hm, align 4, !alias.scope !1135, !noalias !1134
  store <4 x float> %i.ho, ptr %i.hp, align 4, !alias.scope !1135, !noalias !1134
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hq = icmp eq i64 %index.next, %n.vec
  br i1 %i.hq, label %.preheader.preheader164, label %vector.body, !llvm.loop !1126

.preheader.preheader164:                          ; preds = %vector.body, %vector.memcheck, %.preheader.preheader
  %.sroa.08.275.ph = phi i64 [ %i.fw, %vector.memcheck ], [ %i.fw, %.preheader.preheader ], [ %i.hc, %vector.body ]
  %.sroa.016.0.idx74.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.preheader ], [ %n.vec, %vector.body ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader164, %bb.ai
  %.sroa.08.275 = phi i64 [ %i.hz, %bb.ai ], [ %.sroa.08.275.ph, %.preheader.preheader164 ] ; 4 uses
  %.sroa.016.0.idx74 = phi i64 [ %.sroa.016.0.add, %bb.ai ], [ %.sroa.016.0.idx74.ph, %.preheader.preheader164 ] ; 2 uses
  %i.hr = icmp ult i64 %.sroa.08.275, %.sroa.7.0.copyload
  br i1 %i.hr, label %bb.ai, label %.invoke

bb.ah:                                            ; preds = %bb.ai
  %i.hs = add nuw nsw i64 %.sroa.05.079, 2
  %.not29 = icmp eq i64 %i.cv, 0
  br i1 %.not29, label %.loopexit, label %bb.aa

bb.ai:                                            ; preds = %.preheader
  %.sroa.016.0.ptr = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.sroa.016.0.idx74
  %i.ht = load i8, ptr %.sroa.016.0.ptr, align 1, !noundef !7
  %i.hu = lshr i8 %i.ht, 4
  %i.hv = uitofp nneg i8 %i.hu to float
  %i.hw = fmul float %i.ek, %i.hv
  %.sroa.016.0.add = add nuw nsw i64 %.sroa.016.0.idx74, 1 ; 2 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.08.275
  %i.hy = fsub float %i.hw, %i.em
  store float %i.hy, ptr %i.hx, align 4
  %i.hz = add nuw i64 %.sroa.08.275, 1            ; 2 uses
  %i.ia = icmp eq i64 %.sroa.016.0.add, 32
  br i1 %i.ia, label %bb.ah, label %.preheader, !llvm.loop !1127

.invoke:                                          ; preds = %scalar.ph144, %.preheader
  %i.ib = phi i64 [ %.sroa.08.275, %.preheader ], [ %.sroa.08.173, %scalar.ph144 ]
  %i.ic = phi ptr [ @129, %.preheader ], [ @128, %scalar.ph144 ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ib, i64 noundef %.sroa.7.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ic) #28
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.aj:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.id = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ4KQSfEEEB1x_.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp166
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ4KNtB5_8GgmlType9vec_dot_4(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 16)) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %2, i64 noundef range(i64 0, 64051194700380388) %3, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %4, i64 noundef range(i64 0, 64051194700380388) %5, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %6, i64 noundef range(i64 0, 64051194700380388) %7, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %8, i64 noundef range(i64 0, 64051194700380388) %9, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %10, i64 noundef range(i64 0, 31586890537173890) %11) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef float @_RNvXs6_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ4KNtB5_8GgmlType13vec_dot_unopt(i64 poison, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %2, i64 noundef range(i64 0, 64051194700380388) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %10, i64 noundef range(i64 0, 31586890537173890) %11)
  %i.b = tail call noundef float @_RNvXs6_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ4KNtB5_8GgmlType13vec_dot_unopt(i64 poison, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %4, i64 noundef range(i64 0, 64051194700380388) %5, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %10, i64 noundef range(i64 0, 31586890537173890) %11)
  %i.c = tail call noundef float @_RNvXs6_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ4KNtB5_8GgmlType13vec_dot_unopt(i64 poison, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %6, i64 noundef range(i64 0, 64051194700380388) %7, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %10, i64 noundef range(i64 0, 31586890537173890) %11)
  %i.d = tail call noundef float @_RNvXs6_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ4KNtB5_8GgmlType13vec_dot_unopt(i64 poison, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %8, i64 noundef range(i64 0, 64051194700380388) %9, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %10, i64 noundef range(i64 0, 31586890537173890) %11)
  store float %i.a, ptr %0, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %i.b, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_2
begin_hunk_3_@_RNvXs7_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ5KNtB5_8GgmlType18from_float_imatrix:bb.a
  %i.sn = shufflevector <8 x i8> %i.sm, <8 x i8> %i.sl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.so = call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.sn, <8 x i8> splat (i8 63)) ; 2 uses
  store <8 x i8> %i.so, ptr %i.sj, align 1
  %i.sp = shufflevector <8 x i8> %i.sm, <8 x i8> %i.sl, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.sq = call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.sp, <8 x i8> splat (i8 63)) ; 3 uses
  %i.sr = shufflevector <8 x i8> %i.sq, <8 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ss = shl <4 x i8> %i.sr, splat (i8 4)
  %i.st = shufflevector <8 x i8> %i.sq, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.su = and <4 x i8> %i.st, splat (i8 15)
  %i.sv = or disjoint <4 x i8> %i.ss, %i.su
  store <4 x i8> %i.sv, ptr %i.sk, align 1
  %i.sw = shl nuw <8 x i8> %i.sq, splat (i8 2)
  %i.sx = and <8 x i8> %i.sw, splat (i8 -64)
  %i.sy = or disjoint <8 x i8> %i.so, %i.sx
  store <8 x i8> %i.sy, ptr %i.sj, align 1
  %i.sz = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.cb
  %i.ta = getelementptr i8, ptr %.sroa.0.0.copyload1.i, i64 4 ; 2 uses
  %i.tb = load i8, ptr %i.e, align 8, !noundef !7
  %i.tc = call i8 @llvm.umin.i8(i8 %i.tb, i8 63)  ; 2 uses
  %i.td = load i8, ptr %i.c, align 8, !noundef !7
  %i.te = call i8 @llvm.umin.i8(i8 %i.td, i8 63)  ; 2 uses
  store i8 %i.tc, ptr %i.ta, align 1
  %i.tf = getelementptr i8, ptr %.sroa.0.0.copyload1.i, i64 8
  store i8 %i.te, ptr %i.tf, align 1
  %.pre264.scalar = load i8, ptr %.phi.trans.insert263, align 1
  %.pre.scalar = load i8, ptr %.phi.trans.insert, align 1
  %i.tg = call i8 @llvm.umin.i8(i8 %.pre.scalar, i8 63) ; 2 uses
  %i.th = call i8 @llvm.umin.i8(i8 %.pre264.scalar, i8 63) ; 2 uses
  %i.ti = getelementptr i8, ptr %.sroa.0.0.copyload1.i, i64 5
  store i8 %i.tg, ptr %i.ti, align 1
  %i.tj = getelementptr i8, ptr %.sroa.0.0.copyload1.i, i64 9
  store i8 %i.th, ptr %i.tj, align 1
  %.pre268.scalar = load i8, ptr %.phi.trans.insert267, align 2
  %.pre266.scalar = load i8, ptr %.phi.trans.insert265, align 2
  %i.tk = call i8 @llvm.umin.i8(i8 %.pre266.scalar, i8 63) ; 2 uses
  %i.tl = call i8 @llvm.umin.i8(i8 %.pre268.scalar, i8 63) ; 2 uses
  %i.tm = getelementptr i8, ptr %.sroa.0.0.copyload1.i, i64 6
  store i8 %i.tk, ptr %i.tm, align 1
  %i.tn = getelementptr i8, ptr %.sroa.0.0.copyload1.i, i64 10
  store i8 %i.tl, ptr %i.tn, align 1
  %.pre272.scalar = load i8, ptr %.phi.trans.insert271, align 1
  %.pre270.scalar = load i8, ptr %.phi.trans.insert269, align 1
  %i.to = call i8 @llvm.umin.i8(i8 %.pre270.scalar, i8 63) ; 2 uses
  %i.tp = call i8 @llvm.umin.i8(i8 %.pre272.scalar, i8 63) ; 2 uses
  %i.tq = getelementptr i8, ptr %.sroa.0.0.copyload1.i, i64 7
  store i8 %i.to, ptr %i.tq, align 1
  %i.tr = getelementptr i8, ptr %.sroa.0.0.copyload1.i, i64 11
  store i8 %i.tp, ptr %i.tr, align 1
  %.pre276.scalar = load i8, ptr %.phi.trans.insert275, align 4
  %i.ts = call i8 @llvm.umin.i8(i8 %.pre276.scalar, i8 63) ; 2 uses
  %.pre274.scalar = load i8, ptr %.phi.trans.insert273, align 4
  %i.tt = call i8 @llvm.umin.i8(i8 %.pre274.scalar, i8 63) ; 2 uses
  %i.tu = shl i8 %i.ts, 4
  %i.tv = and i8 %i.tt, 15
  %i.tw = getelementptr i8, ptr %.sroa.0.0.copyload1.i, i64 8
  %i.tx = getelementptr i8, ptr %.sroa.0.0.copyload1.i, i64 12
  %i.ty = or disjoint i8 %i.tu, %i.tv
  store i8 %i.ty, ptr %i.tx, align 1
  %i.tz = shl nuw i8 %i.tt, 2
  %i.ua = and i8 %i.tz, -64
  %i.ub = or disjoint i8 %i.tc, %i.ua
  store i8 %i.ub, ptr %i.ta, align 1
  %i.uc = shl nuw i8 %i.ts, 2
  %i.ud = and i8 %i.uc, -64
  %i.ue = or disjoint i8 %i.te, %i.ud
  store i8 %i.ue, ptr %i.tw, align 1
  %.pre280.scalar = load i8, ptr %.phi.trans.insert279, align 1
  %i.uf = call i8 @llvm.umin.i8(i8 %.pre280.scalar, i8 63) ; 2 uses
  %.pre278.scalar = load i8, ptr %.phi.trans.insert277, align 1
  %i.ug = call i8 @llvm.umin.i8(i8 %.pre278.scalar, i8 63) ; 2 uses
  %i.uh = shl i8 %i.uf, 4
  %i.ui = and i8 %i.ug, 15
  %i.uj = getelementptr i8, ptr %.sroa.0.0.copyload1.i, i64 9
  %i.uk = getelementptr i8, ptr %.sroa.0.0.copyload1.i, i64 13
  %i.ul = or disjoint i8 %i.uh, %i.ui
  store i8 %i.ul, ptr %i.uk, align 1
  %i.um = shl nuw i8 %i.ug, 2
  %i.un = and i8 %i.um, -64
  %i.uo = getelementptr i8, ptr %.sroa.0.0.copyload1.i, i64 5
  %i.up = or disjoint i8 %i.tg, %i.un
  store i8 %i.up, ptr %i.uo, align 1
  %i.uq = shl nuw i8 %i.uf, 2
  %i.ur = and i8 %i.uq, -64
  %i.us = or disjoint i8 %i.th, %i.ur
  store i8 %i.us, ptr %i.uj, align 1
  %.pre284.scalar = load i8, ptr %.phi.trans.insert283, align 2
  %i.ut = call i8 @llvm.umin.i8(i8 %.pre284.scalar, i8 63) ; 2 uses
  %.pre282.scalar = load i8, ptr %.phi.trans.insert281, align 2
  %i.uu = call i8 @llvm.umin.i8(i8 %.pre282.scalar, i8 63) ; 2 uses
  %i.uv = shl i8 %i.ut, 4
  %i.uw = and i8 %i.uu, 15
  %i.ux = getelementptr i8, ptr %.sroa.0.0.copyload1.i, i64 10
  %i.uy = getelementptr i8, ptr %.sroa.0.0.copyload1.i, i64 14
  %i.uz = or disjoint i8 %i.uv, %i.uw
  store i8 %i.uz, ptr %i.uy, align 1
  %i.va = shl nuw i8 %i.uu, 2
  %i.vb = and i8 %i.va, -64
  %i.vc = getelementptr i8, ptr %.sroa.0.0.copyload1.i, i64 6
  %i.vd = or disjoint i8 %i.tk, %i.vb
  store i8 %i.vd, ptr %i.vc, align 1
  %i.ve = shl nuw i8 %i.ut, 2
  %i.vf = and i8 %i.ve, -64
  %i.vg = or disjoint i8 %i.tl, %i.vf
  store i8 %i.vg, ptr %i.ux, align 1
  %.pre288.scalar = load i8, ptr %.phi.trans.insert287, align 1
  %i.vh = call i8 @llvm.umin.i8(i8 %.pre288.scalar, i8 63) ; 2 uses
  %.pre286.scalar = load i8, ptr %.phi.trans.insert285, align 1
  %i.vi = call i8 @llvm.umin.i8(i8 %.pre286.scalar, i8 63) ; 2 uses
  %i.vj = shl i8 %i.vh, 4
  %i.vk = and i8 %i.vi, 15
  %i.vl = getelementptr i8, ptr %.sroa.0.0.copyload1.i, i64 11
  %i.vm = getelementptr i8, ptr %.sroa.0.0.copyload1.i, i64 15
  %i.vn = or disjoint i8 %i.vj, %i.vk
  store i8 %i.vn, ptr %i.vm, align 1
  %i.vo = shl nuw i8 %i.vi, 2
  %i.vp = and i8 %i.vo, -64
  %i.vq = getelementptr i8, ptr %.sroa.0.0.copyload1.i, i64 7
  %i.vr = or disjoint i8 %i.to, %i.vp
  store i8 %i.vr, ptr %i.vq, align 1
  %i.vs = shl nuw i8 %i.vh, 2
  %i.vt = and i8 %i.vs, -64
  %i.vu = or disjoint i8 %i.tp, %i.vt
  store i8 %i.vu, ptr %i.vl, align 1
  %i.vv = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  %.rtmerge383 = phi i64 [ %i.sz, %.rtvec ], [ %i.vv, %.rtscalar ] ; 2 uses
  %.rtmerge384 = icmp eq i64 %.rtmerge383, 0
  br i1 %.rtmerge384, label %bb.d, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit, !prof !14
}

; Function Attrs: nonlazybind uwtable
define noundef float @_RNvXs7_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ5KNtB5_8GgmlType7vec_dot(i64 noundef %0, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 52405522936674863) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef range(i64 0, 31586890537173890) %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef float @_RNvXs7_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ5KNtB5_8GgmlType13vec_dot_unopt(i64 poison, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef %4)
  ret float %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ5KNtB5_8GgmlType8to_float(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %0, i64 noundef range(i64 0, 52405522936674863) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RINvNtNtCsltEA4u8Pgfu_11candle_core9quantized5utils24group_for_dequantizationNtNtB4_8k_quants8BlockQ5KEB6_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef %3)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.g = load i64, ptr %i.d, align 8, !range !22, !noundef !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !7 ; 3 uses
  %i.j = icmp ult i64 %i.i, 384307168202282326
  call void @llvm.assume(i1 %i.j)
  %.idx = mul nuw nsw i64 %i.i, 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.g, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store ptr %i.k, ptr %.sroa.6.0..sroa_idx, align 8
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KQSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KQSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.lr.ph

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KQSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.lr.ph: ; preds = %bb.a
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.774.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.780.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KQSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit

.loopexit:                                        ; preds = %.thread89
  %i.m = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1243, !nonnull !7, !noundef !7
  %i.n = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1243, !nonnull !7, !noundef !7 ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.m
  br i1 %i.o, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KQSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KQSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.af, %.thread, %bb.o, %bb.c, %.invoke, %bb.ac
  %lpad.loopexit.split-lp253 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KQSfEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KQSfEEEB1x_.exit unwind label %bb.ai

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KQSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KQSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.lr.ph, %.loopexit
  %i.p = phi ptr [ %i.f, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KQSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.lr.ph ], [ %i.n, %.loopexit ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1244)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1244
  %.sroa.0.0.copyload = load ptr, ptr %i.p, align 8, !noalias !1244 ; 7 uses
  %.sroa.6.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx66, align 8, !noalias !1244 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !1244 ; 3 uses
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KQSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KQSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.r = load i16, ptr %.sroa.0.0.copyload, align 2, !noundef !7 ; 6 uses
  %i.s = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.c, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.u = invoke noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  %i.v = and i128 %i.u, 18014398509481984
  %.not95 = icmp eq i128 %i.v, 0
  br i1 %.not95, label %bb.d, label %bb.m

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KQSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KQSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit, %.loopexit, %bb.a
  call void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KQSfEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit: ; preds = %bb.b
  %i.w = and i64 %i.s, 18014398509481984
  %.not94 = icmp eq i64 %i.w, 0
  br i1 %.not94, label %bb.d, label %bb.m

bb.d:                                             ; preds = %.noexc, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.x = and i16 %i.r, 32767
  %i.y = icmp eq i16 %i.x, 0
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = zext i16 %i.r to i32
  %i.aa = shl nuw i32 %i.z, 16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = and i16 %i.r, -32768
  %i.ac = zext i16 %i.ab to i32                   ; 2 uses
  %i.ad = and i16 %i.r, 31744                     ; 3 uses
  %i.ae = and i16 %i.r, 1023                      ; 3 uses
  %i.af = zext nneg i16 %i.ae to i32              ; 3 uses
  %i.ag = icmp eq i16 %i.ad, 31744
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = icmp eq i16 %i.ae, 0
  %i.ai = shl nuw i32 %i.ac, 16                   ; 2 uses
  br i1 %i.ah, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.aj = shl nuw i32 %i.ac, 16                   ; 2 uses
  %i.ak = icmp eq i16 %i.ad, 0
  br i1 %i.ak, label %bb.k, label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.al = or disjoint i32 %i.ai, 2139095040
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.j:                                             ; preds = %bb.g
  %i.am = shl nuw nsw i32 %i.af, 13
  %i.an = or disjoint i32 %i.ai, %i.am
  %i.ao = or i32 %i.an, 2143289344
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.k:                                             ; preds = %bb.h
  %i.ap = call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.ae, i1 false)
  %i.aq = zext nneg i16 %i.ap to i32              ; 2 uses
  %i.ar = add nuw nsw i32 %i.aq, 8
  %i.as = shl i32 %i.af, %i.ar
  %i.at = and i32 %i.as, 8388607
  %reass.sub.i = or disjoint i32 %i.aj, 989855744
  %i.au = shl nuw nsw i32 %i.aq, 23
  %i.av = sub nuw nsw i32 %reass.sub.i, %i.au
  %i.aw = or disjoint i32 %i.av, %i.at
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.l:                                             ; preds = %bb.h
  %i.ax = lshr exact i16 %i.ad, 10
  %narrow.i = add nuw nsw i16 %i.ax, 112
  %i.ay = zext nneg i16 %narrow.i to i32
  %i.az = shl nuw nsw i32 %i.ay, 23
  %i.ba = shl nuw nsw i32 %i.af, 13
  %i.bb = or disjoint i32 %i.az, %i.ba
  %i.bc = or disjoint i32 %i.bb, %i.aj
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit: ; preds = %bb.e, %bb.i, %bb.j, %bb.k, %bb.l
  %.sroa.0.0.i = phi i32 [ %i.aa, %bb.e ], [ %i.al, %bb.i ], [ %i.ao, %bb.j ], [ %i.aw, %bb.k ], [ %i.bc, %bb.l ]
  %i.bd = bitcast i32 %.sroa.0.0.i to float
  br label %bb.n

bb.m:                                             ; preds = %.noexc, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.be = call fastcc noundef float @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.r)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit
  %.sroa.01.0 = phi float [ %i.bd, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit ], [ %i.be, %bb.m ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 2
  %i.bg = load i16, ptr %i.bf, align 2, !noundef !7 ; 6 uses
  %i.bh = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.o, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit43, !prof !14

bb.o:                                             ; preds = %bb.n
  %i.bj = invoke noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %bb.o
  %i.bk = and i128 %i.bj, 18014398509481984
  %.not97 = icmp eq i128 %i.bk, 0
  br i1 %.not97, label %bb.p, label %bb.y

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit43: ; preds = %bb.n
  %i.bl = and i64 %i.bh, 18014398509481984
  %.not96 = icmp eq i64 %i.bl, 0
  br i1 %.not96, label %bb.p, label %bb.y

bb.p:                                             ; preds = %.noexc42, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit43
  %i.bm = and i16 %i.bg, 32767
  %i.bn = icmp eq i16 %i.bm, 0
  br i1 %i.bn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bo = zext i16 %i.bg to i32
  %i.bp = shl nuw i32 %i.bo, 16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit47

bb.r:                                             ; preds = %bb.p
  %i.bq = and i16 %i.bg, -32768
  %i.br = zext i16 %i.bq to i32                   ; 2 uses
  %i.bs = and i16 %i.bg, 31744                    ; 3 uses
  %i.bt = and i16 %i.bg, 1023                     ; 3 uses
  %i.bu = zext nneg i16 %i.bt to i32              ; 3 uses
  %i.bv = icmp eq i16 %i.bs, 31744
  br i1 %i.bv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bw = icmp eq i16 %i.bt, 0
  %i.bx = shl nuw i32 %i.br, 16                   ; 2 uses
  br i1 %i.bw, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.by = shl nuw i32 %i.br, 16                   ; 2 uses
  %i.bz = icmp eq i16 %i.bs, 0
  br i1 %i.bz, label %bb.w, label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.ca = or disjoint i32 %i.bx, 2139095040
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit47

bb.v:                                             ; preds = %bb.s
  %i.cb = shl nuw nsw i32 %i.bu, 13
  %i.cc = or disjoint i32 %i.bx, %i.cb
  %i.cd = or i32 %i.cc, 2143289344
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit47

bb.w:                                             ; preds = %bb.t
  %i.ce = call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.bt, i1 false)
  %i.cf = zext nneg i16 %i.ce to i32              ; 2 uses
  %i.cg = add nuw nsw i32 %i.cf, 8
  %i.ch = shl i32 %i.bu, %i.cg
  %i.ci = and i32 %i.ch, 8388607
  %reass.sub.i46 = or disjoint i32 %i.by, 989855744
  %i.cj = shl nuw nsw i32 %i.cf, 23
  %i.ck = sub nuw nsw i32 %reass.sub.i46, %i.cj
  %i.cl = or disjoint i32 %i.ck, %i.ci
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit47

bb.x:                                             ; preds = %bb.t
  %i.cm = lshr exact i16 %i.bs, 10
  %narrow.i44 = add nuw nsw i16 %i.cm, 112
  %i.cn = zext nneg i16 %narrow.i44 to i32
  %i.co = shl nuw nsw i32 %i.cn, 23
  %i.cp = shl nuw nsw i32 %i.bu, 13
  %i.cq = or disjoint i32 %i.co, %i.cp
  %i.cr = or disjoint i32 %i.cq, %i.by
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit47

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit47: ; preds = %bb.q, %bb.u, %bb.v, %bb.w, %bb.x
  %.sroa.0.0.i45 = phi i32 [ %i.bp, %bb.q ], [ %i.ca, %bb.u ], [ %i.cd, %bb.v ], [ %i.cl, %bb.w ], [ %i.cr, %bb.x ]
  %i.cs = bitcast i32 %.sroa.0.0.i45 to float
  br label %bb.z

bb.y:                                             ; preds = %.noexc42, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit43
  %i.ct = call fastcc noundef float @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.bg)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit47
  %.sroa.03.0 = phi float [ %i.cs, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit47 ], [ %i.ct, %bb.y ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 48 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 4 ; 4 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.thread89, %bb.z
  %.sroa.05.0130 = phi i64 [ 0, %bb.z ], [ %i.hs, %.thread89 ] ; 8 uses
  %.sroa.08.0129 = phi i8 [ 1, %bb.z ], [ %i.ht, %.thread89 ] ; 3 uses
  %.sroa.010.0128 = phi i8 [ 2, %bb.z ], [ %i.hu, %.thread89 ] ; 3 uses
  %.sroa.012.0127 = phi i64 [ 0, %bb.z ], [ %.sroa.012.2.lcssa, %.thread89 ] ; 11 uses
  %.sroa.028.0126 = phi i64 [ 0, %bb.z ], [ %i.cx, %.thread89 ] ; 2 uses
  %.sroa.031.0125 = phi i64 [ 4, %bb.z ], [ %i.cy, %.thread89 ]
  %i.cx = add nuw nsw i64 %.sroa.028.0126, 64
  %i.cy = add nsw i64 %.sroa.031.0125, -1         ; 2 uses
  %i.cz = lshr exact i64 %.sroa.028.0126, 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cz ; 3 uses
  %i.db = icmp samesign ult i64 %.sroa.05.0130, 4
  br i1 %i.db, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dc = add nsw i64 %.sroa.05.0130, -4          ; 2 uses
  %i.dd = icmp ult i64 %i.dc, 12
  br i1 %i.dd, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.dc, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #32
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc50:                                         ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.05.0130
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dg = getelementptr i8, ptr %.sroa.0.0.copyload, i64 %.sroa.05.0130
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.05.0130
  %i.di = getelementptr i8, ptr %i.cw, i64 %.sroa.05.0130
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 5
  %i.dk = load i8, ptr %i.df, align 1, !alias.scope !1245, !noundef !7 ; 2 uses
  %i.dl = and i8 %i.dk, 15
  %i.dm = load <2 x i8>, ptr %i.dg, align 1
  %i.dn = load <2 x i8>, ptr %i.dh, align 1
  %i.do = shufflevector <2 x i8> %i.dm, <2 x i8> %i.dn, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.dp = lshr <4 x i8> %i.do, splat (i8 2)
  %i.dq = and <4 x i8> %i.dp, splat (i8 48)
  %i.dr = lshr i8 %i.dk, 4
  %i.ds = load i8, ptr %i.dj, align 1, !alias.scope !1246, !noundef !7 ; 2 uses
  %i.dt = and i8 %i.ds, 15
  %i.du = lshr i8 %i.ds, 4
  %i.dv = insertelement <4 x i8> poison, i8 %i.dl, i64 0
  %i.dw = insertelement <4 x i8> %i.dv, i8 %i.dr, i64 1
  %i.dx = insertelement <4 x i8> %i.dw, i8 %i.dt, i64 2
  %i.dy = insertelement <4 x i8> %i.dx, i8 %i.du, i64 3
  %i.dz = or disjoint <4 x i8> %i.dq, %i.dy
  br label %bb.af

bb.ae:                                            ; preds = %bb.aa
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cw, i64 %.sroa.05.0130 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ec = load <2 x i8>, ptr %i.ea, align 1
  %i.ed = load <2 x i8>, ptr %i.eb, align 1
  %i.ee = shufflevector <2 x i8> %i.ec, <2 x i8> %i.ed, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ef = and <4 x i8> %i.ee, splat (i8 63)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.eg = phi <4 x i8> [ %i.ef, %bb.ae ], [ %i.dz, %bb.ad ]
  %i.eh = uitofp <4 x i8> %i.eg to <4 x float>    ; 4 uses
  %i.ei = extractelement <4 x float> %i.eh, i64 0
  %i.ej = fmul float %.sroa.01.0, %i.ei           ; 2 uses
  %i.ek = extractelement <4 x float> %i.eh, i64 1
  %i.el = fmul float %.sroa.03.0, %i.ek           ; 2 uses
  %i.em = extractelement <4 x float> %i.eh, i64 2
  %i.en = fmul float %.sroa.01.0, %i.em           ; 2 uses
  %i.eo = extractelement <4 x float> %i.eh, i64 3
  %i.ep = fmul float %.sroa.03.0, %i.eo           ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.da, i64 32 ; 2 uses
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %i.da, ptr noundef nonnull %i.eq, ptr noundef nonnull readonly dereferenceable(32) %i.cv, ptr noundef nonnull readonly %i.cu)
          to label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRAhj20_ECsltEA4u8Pgfu_11candle_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRAhj20_ECsltEA4u8Pgfu_11candle_core.exit: ; preds = %bb.af
  %.sroa.069.0.copyload = load ptr, ptr %i.b, align 8 ; 5 uses
  %.sroa.471.0.copyload = load ptr, ptr %.sroa.471.0..sroa_idx, align 8 ; 5 uses
  %.sroa.573.0.copyload = load i64, ptr %.sroa.573.0..sroa_idx, align 8 ; 12 uses
  %.sroa.774.0.copyload = load i64, ptr %.sroa.774.0..sroa_idx, align 8 ; 4 uses
  %i.er = icmp ult i64 %.sroa.573.0.copyload, %.sroa.774.0.copyload
  br i1 %i.er, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRAhj20_ECsltEA4u8Pgfu_11candle_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.069.0.copyload), "nonnull"(ptr %.sroa.471.0.copyload) ]
  %umax = call i64 @llvm.umax.i64(i64 %.sroa.012.0127, i64 %.sroa.7.0.copyload) ; 3 uses
  %i.es = add i64 %.sroa.012.0127, %.sroa.774.0.copyload
  %i.et = sub i64 %i.es, %.sroa.573.0.copyload    ; 2 uses
  %i.eu = xor i64 %.sroa.573.0.copyload, -1
  %i.ev = add i64 %.sroa.774.0.copyload, %i.eu
  %i.ew = sub i64 %umax, %.sroa.012.0127
  %i.ex = call i64 @llvm.umin.i64(i64 %i.ev, i64 %i.ew) ; 3 uses
  %i.ey = add i64 %i.ex, 1                        ; 3 uses
  %min.iters.check226 = icmp ult i64 %i.ey, 5
  br i1 %min.iters.check226, label %scalar.ph225.preheader, label %vector.memcheck227

vector.memcheck227:                               ; preds = %.lr.ph
  %i.ez = shl i64 %.sroa.012.0127, 2
  %i.fa = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.ez ; 2 uses
  %i.fb = add i64 %.sroa.012.0127, %i.ex
  %i.fc = shl i64 %i.fb, 2
  %4 = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.fc
  %i.fd = getelementptr i8, ptr %4, i64 4         ; 2 uses
  %i.fe = getelementptr i8, ptr %.sroa.471.0.copyload, i64 %.sroa.573.0.copyload
  %i.ff = add i64 %.sroa.573.0.copyload, %i.ex
  %i.fg = add i64 %i.ff, 1                        ; 2 uses
  %i.fh = getelementptr i8, ptr %.sroa.471.0.copyload, i64 %i.fg
  %i.fi = getelementptr i8, ptr %.sroa.069.0.copyload, i64 %.sroa.573.0.copyload
  %i.fj = getelementptr i8, ptr %.sroa.069.0.copyload, i64 %i.fg
  %bound0228 = icmp ult ptr %i.fa, %i.fh
  %bound1229 = icmp ult ptr %i.fe, %i.fd
  %found.conflict230 = and i1 %bound0228, %bound1229
  %bound0231 = icmp ult ptr %i.fa, %i.fj
  %bound1232 = icmp ult ptr %i.fi, %i.fd
  %found.conflict233 = and i1 %bound0231, %bound1232
  %conflict.rdx234 = or i1 %found.conflict230, %found.conflict233
  br i1 %conflict.rdx234, label %scalar.ph225.preheader, label %vector.ph235

vector.ph235:                                     ; preds = %vector.memcheck227
  %i.fk = and i64 %i.ey, 3                        ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 0
  %i.fm = select i1 %i.fl, i64 4, i64 %i.fk
  %n.vec236 = sub i64 %i.ey, %i.fm                ; 3 uses
  %i.fn = add i64 %.sroa.012.0127, %n.vec236
  %i.fo = add i64 %.sroa.573.0.copyload, %n.vec236
  %broadcast.splatinsert237 = insertelement <4 x i8> poison, i8 %.sroa.08.0129, i64 0
  %broadcast.splat238 = shufflevector <4 x i8> %broadcast.splatinsert237, <4 x i8> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert239 = insertelement <4 x float> poison, float %i.ej, i64 0
  %broadcast.splat240 = shufflevector <4 x float> %broadcast.splatinsert239, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert241 = insertelement <4 x float> poison, float %i.el, i64 0
  %broadcast.splat242 = shufflevector <4 x float> %broadcast.splatinsert241, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fp = getelementptr [4 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.012.0127
  br label %vector.body243

vector.body243:                                   ; preds = %vector.body243, %vector.ph235
  %index244 = phi i64 [ 0, %vector.ph235 ], [ %index.next247, %vector.body243 ] ; 3 uses
  %i.fq = add nuw i64 %.sroa.573.0.copyload, %index244 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.069.0.copyload, i64 %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.471.0.copyload, i64 %i.fq
  %wide.load245 = load <4 x i8>, ptr %i.fs, align 1, !alias.scope !1247
  %i.ft = and <4 x i8> %wide.load245, %broadcast.splat238
  %i.fu = icmp eq <4 x i8> %i.ft, zeroinitializer
  %i.fv = select <4 x i1> %i.fu, <4 x float> zeroinitializer, <4 x float> splat (float 1.600000e+01)
  %wide.load246 = load <4 x i8>, ptr %i.fr, align 1, !alias.scope !1248
  %i.fw = and <4 x i8> %wide.load246, splat (i8 15)
  %i.fx = uitofp nneg <4 x i8> %i.fw to <4 x float>
  %i.fy = fadd nnan <4 x float> %i.fv, %i.fx
  %i.fz = fmul <4 x float> %broadcast.splat240, %i.fy
  %i.ga = getelementptr [4 x i8], ptr %i.fp, i64 %index244
  %i.gb = fsub <4 x float> %i.fz, %broadcast.splat242
  store <4 x float> %i.gb, ptr %i.ga, align 4, !alias.scope !1249, !noalias !1250
  %index.next247 = add nuw i64 %index244, 4       ; 2 uses
  %i.gc = icmp eq i64 %index.next247, %n.vec236
  br i1 %i.gc, label %scalar.ph225.preheader, label %vector.body243, !llvm.loop !1235

scalar.ph225.preheader:                           ; preds = %vector.body243, %vector.memcheck227, %.lr.ph
  %.sroa.012.1120.ph = phi i64 [ %.sroa.012.0127, %vector.memcheck227 ], [ %.sroa.012.0127, %.lr.ph ], [ %i.fn, %vector.body243 ]
  %.sroa.573.0119.ph = phi i64 [ %.sroa.573.0.copyload, %vector.memcheck227 ], [ %.sroa.573.0.copyload, %.lr.ph ], [ %i.fo, %vector.body243 ]
  br label %scalar.ph225

scalar.ph225:                                     ; preds = %scalar.ph225.preheader, %bb.ah
  %.sroa.012.1120 = phi i64 [ %i.iw, %bb.ah ], [ %.sroa.012.1120.ph, %scalar.ph225.preheader ] ; 3 uses
  %.sroa.573.0119 = phi i64 [ %i.ik, %bb.ah ], [ %.sroa.573.0119.ph, %scalar.ph225.preheader ] ; 3 uses
  %exitcond.not = icmp eq i64 %.sroa.012.1120, %umax
  br i1 %exitcond.not, label %.invoke, label %bb.ah

.thread:                                          ; preds = %bb.ah, %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRAhj20_ECsltEA4u8Pgfu_11candle_core.exit
  %.sroa.012.1.lcssa = phi i64 [ %.sroa.012.0127, %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRAhj20_ECsltEA4u8Pgfu_11candle_core.exit ], [ %i.et, %bb.ah ] ; 9 uses
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.da, ptr noundef nonnull %i.eq, ptr noundef nonnull readonly dereferenceable(32) %i.cv, ptr noundef nonnull readonly %i.cu)
          to label %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRAhj20_ECsltEA4u8Pgfu_11candle_core.exit60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRAhj20_ECsltEA4u8Pgfu_11candle_core.exit60: ; preds = %.thread
  %.sroa.075.0.copyload = load ptr, ptr %i.a, align 8 ; 5 uses
  %.sroa.477.0.copyload = load ptr, ptr %.sroa.477.0..sroa_idx, align 8 ; 5 uses
  %.sroa.579.0.copyload = load i64, ptr %.sroa.579.0..sroa_idx, align 8 ; 10 uses
  %.sroa.780.0.copyload = load i64, ptr %.sroa.780.0..sroa_idx, align 8 ; 3 uses
  %i.gd = icmp ult i64 %.sroa.579.0.copyload, %.sroa.780.0.copyload
  br i1 %i.gd, label %.lr.ph123, label %.thread89

.lr.ph123:                                        ; preds = %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRAhj20_ECsltEA4u8Pgfu_11candle_core.exit60
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.075.0.copyload), "nonnull"(ptr %.sroa.477.0.copyload) ]
  %umax156 = call i64 @llvm.umax.i64(i64 %.sroa.012.1.lcssa, i64 %.sroa.7.0.copyload) ; 3 uses
  %i.ge = add i64 %.sroa.012.1.lcssa, %.sroa.780.0.copyload
  %i.gf = sub i64 %i.ge, %.sroa.579.0.copyload    ; 2 uses
  %i.gg = call i64 @llvm.umax.i64(i64 %.sroa.774.0.copyload, i64 %.sroa.573.0.copyload)
  %i.gh = add i64 %.sroa.573.0.copyload, %umax156
  %i.gi = add i64 %.sroa.012.0127, %i.gg
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = xor i64 %.sroa.579.0.copyload, -1
  %i.gl = add i64 %.sroa.780.0.copyload, %i.gk
  %i.gm = call i64 @llvm.umin.i64(i64 %i.gj, i64 %i.gl) ; 3 uses
  %i.gn = add i64 %i.gm, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.gn, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph123
  %i.go = shl i64 %.sroa.012.1.lcssa, 2
  %i.gp = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.go ; 2 uses
  %i.gq = add i64 %i.gm, %.sroa.012.1.lcssa
  %i.gr = shl i64 %i.gq, 2
  %5 = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.gr
  %i.gs = getelementptr i8, ptr %5, i64 4         ; 2 uses
  %i.gt = getelementptr i8, ptr %.sroa.477.0.copyload, i64 %.sroa.579.0.copyload
  %i.gu = add i64 %.sroa.579.0.copyload, %i.gm
  %i.gv = add i64 %i.gu, 1                        ; 2 uses
  %i.gw = getelementptr i8, ptr %.sroa.477.0.copyload, i64 %i.gv
  %i.gx = getelementptr i8, ptr %.sroa.075.0.copyload, i64 %.sroa.579.0.copyload
  %i.gy = getelementptr i8, ptr %.sroa.075.0.copyload, i64 %i.gv
  %bound0 = icmp ult ptr %i.gp, %i.gw
  %bound1 = icmp ult ptr %i.gt, %i.gs
  %found.conflict = and i1 %bound0, %bound1
  %bound0200 = icmp ult ptr %i.gp, %i.gy
  %bound1201 = icmp ult ptr %i.gx, %i.gs
  %found.conflict202 = and i1 %bound0200, %bound1201
  %conflict.rdx = or i1 %found.conflict, %found.conflict202
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.gz = and i64 %i.gn, 3                        ; 2 uses
  %i.ha = icmp eq i64 %i.gz, 0
  %i.hb = select i1 %i.ha, i64 4, i64 %i.gz
  %n.vec = sub i64 %i.gn, %i.hb                   ; 3 uses
  %i.hc = add i64 %.sroa.012.1.lcssa, %n.vec
  %i.hd = add i64 %.sroa.579.0.copyload, %n.vec
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %.sroa.010.0128, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert203 = insertelement <4 x float> poison, float %i.en, i64 0
  %broadcast.splat204 = shufflevector <4 x float> %broadcast.splatinsert203, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert205 = insertelement <4 x float> poison, float %i.ep, i64 0
  %broadcast.splat206 = shufflevector <4 x float> %broadcast.splatinsert205, <4 x float> poison, <4 x i32> zeroinitializer
  %i.he = getelementptr [4 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.012.1.lcssa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hf = add nuw i64 %.sroa.579.0.copyload, %index ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.075.0.copyload, i64 %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.477.0.copyload, i64 %i.hf
  %wide.load = load <4 x i8>, ptr %i.hh, align 1, !alias.scope !1251
  %i.hi = and <4 x i8> %wide.load, %broadcast.splat
  %i.hj = icmp eq <4 x i8> %i.hi, zeroinitializer
  %i.hk = select <4 x i1> %i.hj, <4 x float> zeroinitializer, <4 x float> splat (float 1.600000e+01)
  %wide.load207 = load <4 x i8>, ptr %i.hg, align 1, !alias.scope !1252
  %i.hl = lshr <4 x i8> %wide.load207, splat (i8 4)
  %i.hm = uitofp nneg <4 x i8> %i.hl to <4 x float>
  %i.hn = fadd nnan <4 x float> %i.hk, %i.hm
  %i.ho = fmul <4 x float> %broadcast.splat204, %i.hn
  %i.hp = getelementptr [4 x i8], ptr %i.he, i64 %index
  %i.hq = fsub <4 x float> %i.ho, %broadcast.splat206
  store <4 x float> %i.hq, ptr %i.hp, align 4, !alias.scope !1253, !noalias !1254
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hr = icmp eq i64 %index.next, %n.vec
  br i1 %i.hr, label %scalar.ph.preheader, label %vector.body, !llvm.loop !1240

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph123
  %.sroa.012.2122.ph = phi i64 [ %.sroa.012.1.lcssa, %vector.memcheck ], [ %.sroa.012.1.lcssa, %.lr.ph123 ], [ %i.hc, %vector.body ]
  %.sroa.579.0121.ph = phi i64 [ %.sroa.579.0.copyload, %vector.memcheck ], [ %.sroa.579.0.copyload, %.lr.ph123 ], [ %i.hd, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.ag
  %.sroa.012.2122 = phi i64 [ %i.ii, %bb.ag ], [ %.sroa.012.2122.ph, %scalar.ph.preheader ] ; 3 uses
  %.sroa.579.0121 = phi i64 [ %i.hw, %bb.ag ], [ %.sroa.579.0121.ph, %scalar.ph.preheader ] ; 3 uses
  %exitcond157.not = icmp eq i64 %.sroa.012.2122, %umax156
  br i1 %exitcond157.not, label %.invoke, label %bb.ag

.thread89:                                        ; preds = %bb.ag, %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRAhj20_ECsltEA4u8Pgfu_11candle_core.exit60
  %.sroa.012.2.lcssa = phi i64 [ %.sroa.012.1.lcssa, %_RINvYINtNtNtCsf3Ta7LF998c_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRAhj20_ECsltEA4u8Pgfu_11candle_core.exit60 ], [ %i.gf, %bb.ag ]
  %i.hs = add nuw nsw i64 %.sroa.05.0130, 2
  %i.ht = shl i8 %.sroa.08.0129, 2
  %i.hu = shl i8 %.sroa.010.0128, 2
  %.not37 = icmp eq i64 %i.cy, 0
  br i1 %.not37, label %.loopexit, label %bb.aa

bb.ag:                                            ; preds = %scalar.ph
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.075.0.copyload, i64 %.sroa.579.0121
  %i.hw = add nuw i64 %.sroa.579.0121, 1
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.477.0.copyload, i64 %.sroa.579.0121
  %i.hy = load i8, ptr %i.hx, align 1, !noundef !7
  %i.hz = and i8 %i.hy, %.sroa.010.0128
  %i.ia = icmp eq i8 %i.hz, 0
  %.40 = select i1 %i.ia, float 0.000000e+00, float 1.600000e+01
  %i.ib = load i8, ptr %i.hv, align 1, !noundef !7
  %i.ic = lshr i8 %i.ib, 4
  %i.id = uitofp nneg i8 %i.ic to float
  %i.ie = fadd nnan float %.40, %i.id
  %i.if = fmul float %i.en, %i.ie
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.012.2122
  %i.ih = fsub float %i.if, %i.ep
  store float %i.ih, ptr %i.ig, align 4
  %i.ii = add i64 %.sroa.012.2122, 1              ; 2 uses
  %exitcond158.not = icmp eq i64 %i.ii, %i.gf
  br i1 %exitcond158.not, label %.thread89, label %scalar.ph, !llvm.loop !1241

bb.ah:                                            ; preds = %scalar.ph225
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.069.0.copyload, i64 %.sroa.573.0119
  %i.ik = add nuw i64 %.sroa.573.0119, 1
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.471.0.copyload, i64 %.sroa.573.0119
  %i.im = load i8, ptr %i.il, align 1, !noundef !7
  %i.in = and i8 %i.im, %.sroa.08.0129
  %i.io = icmp eq i8 %i.in, 0
  %. = select i1 %i.io, float 0.000000e+00, float 1.600000e+01
  %i.ip = load i8, ptr %i.ij, align 1, !noundef !7
  %i.iq = and i8 %i.ip, 15
  %i.ir = uitofp nneg i8 %i.iq to float
  %i.is = fadd nnan float %., %i.ir
  %i.it = fmul float %i.ej, %i.is
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.012.1120
  %i.iv = fsub float %i.it, %i.el
  store float %i.iv, ptr %i.iu, align 4
  %i.iw = add i64 %.sroa.012.1120, 1              ; 2 uses
  %exitcond155.not = icmp eq i64 %i.iw, %i.et
  br i1 %exitcond155.not, label %.thread, label %scalar.ph225, !llvm.loop !1242

.invoke:                                          ; preds = %scalar.ph225, %scalar.ph
  %i.ix = phi i64 [ %umax156, %scalar.ph ], [ %umax, %scalar.ph225 ]
  %i.iy = phi ptr [ @161, %scalar.ph ], [ @162, %scalar.ph225 ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.ix, i64 noundef %.sroa.7.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.iy) #28
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ai:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.iz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ5KQSfEEEB1x_.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp253
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
  %.sroa.0.0100 = phi ptr [ %0, %.lr.ph ], [ %i.hd, %vector.body113 ] ; 3 uses
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
end_hunk_3
