Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_core-29a639a172b36b04.candle_core.fa2bc8e788f5f12a-cgu.14?download=true
inline.NumInlined: 1160
inline.NumDeleted: 448
loop-unroll.NumCompletelyUnrolled: 107
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 128
begin_hunk_0_@_RNvXs5_NtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quantsNtB5_8BlockQ3KNtB5_8GgmlType8to_float:bb.a

.noexc30:                                         ; preds = %.critedge.i
  unreachable

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KQSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread: ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KQSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread, %bb.a
  call void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KQSfEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

.loopexit99:                                      ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsltEA4u8Pgfu_11candle_core.exit.i, %.noexc29, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1022
  %i.ar = load i32, ptr %i.w, align 4, !noundef !7 ; 4 uses
  %i.as = load i32, ptr %i.h, align 4, !noundef !7 ; 2 uses
  %i.at = lshr i32 %i.as, 4
  %i.au = and i32 %i.at, 252645135
  %i.av = and i32 %i.ar, 808464432
  %i.aw = or disjoint i32 %i.au, %i.av
  store i32 %i.aw, ptr %i.w, align 4
  %i.ax = load i32, ptr %i.x, align 4, !noundef !7 ; 2 uses
  %i.ay = lshr i32 %i.ax, 4
  %i.az = and i32 %i.ay, 252645135
  %i.ba = lshr i32 %i.ar, 2
  %i.bb = and i32 %i.ba, 808464432
  %i.bc = or disjoint i32 %i.az, %i.bb
  store i32 %i.bc, ptr %i.s, align 4
  %i.bd = and i32 %i.as, 252645135
  %i.be = shl i32 %i.ar, 4
  %i.bf = and i32 %i.be, 808464432
  %i.bg = or disjoint i32 %i.bd, %i.bf
  store i32 %i.bg, ptr %i.h, align 4
  %i.bh = and i32 %i.ax, 252645135
  %i.bi = shl i32 %i.ar, 2
  %i.bj = and i32 %i.bi, 808464432
  %i.bk = or disjoint i32 %i.bh, %i.bj
  store i32 %i.bk, ptr %i.x, align 4
  %i.bl = load i16, ptr %i.ae, align 2, !noundef !7 ; 6 uses
  %i.bm = load atomic i64, ptr @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.d, label %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit, !prof !14

bb.d:                                             ; preds = %.loopexit99
  %i.bo = invoke noundef i128 @_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc31 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc31:                                         ; preds = %bb.d
  %i.bp = and i128 %i.bo, 18014398509481984
  %.not94 = icmp eq i128 %i.bp, 0
  br i1 %.not94, label %bb.e, label %bb.n

_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit: ; preds = %.loopexit99
  %i.bq = and i64 %i.bm, 18014398509481984
  %.not93 = icmp eq i64 %i.bq, 0
  br i1 %.not93, label %bb.e, label %bb.n

bb.e:                                             ; preds = %.noexc31, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.br = and i16 %i.bl, 32767
  %i.bs = icmp eq i16 %i.br, 0
  br i1 %i.bs, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bt = zext i16 %i.bl to i32
  %i.bu = shl nuw i32 %i.bt, 16
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.g:                                             ; preds = %bb.e
  %i.bv = and i16 %i.bl, -32768
  %i.bw = zext i16 %i.bv to i32                   ; 2 uses
  %i.bx = and i16 %i.bl, 31744                    ; 3 uses
  %i.by = and i16 %i.bl, 1023                     ; 3 uses
  %i.bz = zext nneg i16 %i.by to i32              ; 3 uses
  %i.ca = icmp eq i16 %i.bx, 31744
  br i1 %i.ca, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cb = icmp eq i16 %i.by, 0
  %i.cc = shl nuw i32 %i.bw, 16                   ; 2 uses
  br i1 %i.cb, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.cd = shl nuw i32 %i.bw, 16                   ; 2 uses
  %i.ce = icmp eq i16 %i.bx, 0
  br i1 %i.ce, label %bb.l, label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.cf = or disjoint i32 %i.cc, 2139095040
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.k:                                             ; preds = %bb.h
  %i.cg = shl nuw nsw i32 %i.bz, 13
  %i.ch = or disjoint i32 %i.cc, %i.cg
  %i.ci = or i32 %i.ch, 2143289344
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.l:                                             ; preds = %bb.i
  %i.cj = call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.by, i1 false)
  %i.ck = zext nneg i16 %i.cj to i32              ; 2 uses
  %i.cl = add nuw nsw i32 %i.ck, 8
  %i.cm = shl i32 %i.bz, %i.cl
  %i.cn = and i32 %i.cm, 8388607
  %reass.sub.i = or disjoint i32 %i.cd, 989855744
  %i.co = shl nuw nsw i32 %i.ck, 23
  %i.cp = sub nuw nsw i32 %reass.sub.i, %i.co
  %i.cq = or disjoint i32 %i.cp, %i.cn
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

bb.m:                                             ; preds = %bb.i
  %i.cr = lshr exact i16 %i.bx, 10
  %narrow.i = add nuw nsw i16 %i.cr, 112
  %i.cs = zext nneg i16 %narrow.i to i32
  %i.ct = shl nuw nsw i32 %i.cs, 23
  %i.cu = shl nuw nsw i32 %i.bz, 13
  %i.cv = or disjoint i32 %i.ct, %i.cu
  %i.cw = or disjoint i32 %i.cv, %i.cd
  br label %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit

_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit: ; preds = %bb.f, %bb.j, %bb.k, %bb.l, %bb.m
  %.sroa.0.0.i = phi i32 [ %i.bu, %bb.f ], [ %i.cf, %bb.j ], [ %i.ci, %bb.k ], [ %i.cq, %bb.l ], [ %i.cw, %bb.m ]
  %i.cx = bitcast i32 %.sroa.0.0.i to float
  br label %bb.o

bb.n:                                             ; preds = %.noexc31, %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit
  %i.cy = call fastcc noundef float @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.bl)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit
  %.sroa.01.0 = phi float [ %i.cx, %_RNvNtNtCsdsILkMb8ZHY_4half8binary164arch19f16_to_f32_fallback.exit ], [ %i.cy, %bb.n ] ; 2 uses
  %i.cz = and i64 %.sroa.7.0.copyload42, 127
  %i.da = and i64 %.sroa.7.0.copyload42, -128     ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1025
  store ptr %i.db, ptr %i.c, align 8, !noalias !1026
  store i64 %i.cz, ptr %.sroa.4.0..sroa_idx44, align 8, !noalias !1026
  store ptr %.sroa.6.0.copyload, ptr %.sroa.5.0..sroa_idx45, align 8, !noalias !1026
  store i64 %i.da, ptr %.sroa.646.0..sroa_idx, align 8, !noalias !1026
  store i64 128, ptr %.sroa.747.0..sroa_idx, align 8, !noalias !1026
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1025
  store ptr %i.dc, ptr %i.b, align 8, !alias.scope !1027, !noalias !1028
  store i64 64, ptr %.sroa.449.0..sroa_idx, align 8, !alias.scope !1027, !noalias !1028
  store ptr %i.ad, ptr %.sroa.550.0..sroa_idx, align 8, !alias.scope !1027, !noalias !1028
  store i64 0, ptr %.sroa.651.0..sroa_idx, align 8, !alias.scope !1027, !noalias !1028
  store i64 32, ptr %.sroa.752.0..sroa_idx, align 8, !alias.scope !1027, !noalias !1028
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E3newCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1029

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.f, ptr noundef nonnull align 8 dereferenceable(96) %i.g, i64 96, i1 false)
  %i.dd = load i64, ptr %i.y, align 8, !alias.scope !1030, !noundef !7 ; 2 uses
  %i.de = load i64, ptr %i.z, align 8, !alias.scope !1030, !noundef !7
  %i.df = icmp ult i64 %i.dd, %i.de
  br i1 %i.df, label %.lr.ph131.preheader, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread

.lr.ph131.preheader:                              ; preds = %bb.p
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 1
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 2
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 3
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 5
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 6
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 7
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 9
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 10
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 11
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 12
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 13
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 14
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 15
  %scevgep = getelementptr i8, ptr %.sroa.0.0.copyload, i64 17
  %scevgep212 = getelementptr i8, ptr %.sroa.0.0.copyload, i64 16
  br label %.lr.ph131

.loopexit:                                        ; preds = %.thread.1, %bb.q
  %.sroa.04.1.lcssa = phi i64 [ %.sroa.04.0129, %bb.q ], [ %i.ha, %.thread.1 ]
  %.sroa.02.1.lcssa = phi i8 [ %.sroa.02.0130, %bb.q ], [ %i.hc, %.thread.1 ]
  %i.dv = load i64, ptr %i.y, align 8, !alias.scope !1030, !noundef !7 ; 2 uses
  %i.dw = load i64, ptr %i.z, align 8, !alias.scope !1030, !noundef !7
  %i.dx = icmp ult i64 %i.dv, %i.dw
  br i1 %i.dx, label %.lr.ph131, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread

.lr.ph131:                                        ; preds = %.lr.ph131.preheader, %.loopexit
  %i.dy = phi i64 [ %i.dv, %.loopexit ], [ %i.dd, %.lr.ph131.preheader ] ; 3 uses
  %.sroa.02.0130 = phi i8 [ %.sroa.02.1.lcssa, %.loopexit ], [ 1, %.lr.ph131.preheader ] ; 2 uses
  %.sroa.04.0129 = phi i64 [ %.sroa.04.1.lcssa, %.loopexit ], [ 0, %.lr.ph131.preheader ] ; 2 uses
  %i.dz = add nuw i64 %i.dy, 1
  store i64 %i.dz, ptr %i.y, align 8, !alias.scope !1030
  %i.ea = invoke { ptr, i64 } @_RNvXs1y_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_14ChunksExactMutfENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.f, i64 noundef %i.dy)
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1031 ; 2 uses

.noexc36:                                         ; preds = %.lr.ph131
  %i.eb = extractvalue { ptr, i64 } %i.ea, 0      ; 4 uses
  %i.ec = extractvalue { ptr, i64 } %i.ea, 1      ; 2 uses
  %i.ed = invoke { ptr, i64 } @_RNvXs1q_NtNtCsf3Ta7LF998c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsltEA4u8Pgfu_11candle_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.aa, i64 noundef %i.dy)
          to label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsltEA4u8Pgfu_11candle_core.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1031 ; 2 uses

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsltEA4u8Pgfu_11candle_core.exit: ; preds = %.noexc36
  %i.ee = extractvalue { ptr, i64 } %i.ed, 0      ; 21 uses
  %i.ef = extractvalue { ptr, i64 } %i.ed, 1      ; 35 uses
  %.not25 = icmp eq ptr %i.eb, null
  br i1 %.not25, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread, label %bb.q

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsltEA4u8Pgfu_11candle_core.exit.thread: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsltEA4u8Pgfu_11candle_core.exit, %.loopexit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.eg = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1032, !nonnull !7, !noundef !7
  %i.eh = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1032, !nonnull !7, !noundef !7 ; 2 uses
  %i.ei = icmp eq ptr %i.eh, %i.eg
  br i1 %i.ei, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KQSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit.thread, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTRNtNtNtCsltEA4u8Pgfu_11candle_core9quantized8k_quants8BlockQ3KQSfEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB14_.exit

bb.q:                                             ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMutfEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsltEA4u8Pgfu_11candle_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ee) ]
  %i.ej = and i64 %i.ec, -32                      ; 2 uses
  %.not26122 = icmp eq i64 %i.ej, 0
  br i1 %.not26122, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.q
  %i.ek = call i64 @llvm.usub.sat.i64(i64 %i.ef, i64 16) ; 3 uses
  %exitcond158.not = icmp eq i64 %i.ef, 0
  %exitcond158.1.not = icmp eq i64 %i.ef, 1
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  %exitcond158.2.not = icmp eq i64 %i.ef, 2
  %i.em = getelementptr inbounds nuw i8, ptr %i.ee, i64 2
  %exitcond158.3.not = icmp eq i64 %i.ef, 3
  %i.en = getelementptr inbounds nuw i8, ptr %i.ee, i64 3
  %exitcond158.4.not = icmp eq i64 %i.ef, 4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %exitcond158.5.not = icmp eq i64 %i.ef, 5
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ee, i64 5
  %exitcond158.6.not = icmp eq i64 %i.ef, 6
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ee, i64 6
  %exitcond158.7.not = icmp eq i64 %i.ef, 7
  %i.er = getelementptr inbounds nuw i8, ptr %i.ee, i64 7
  %exitcond158.8.not = icmp eq i64 %i.ef, 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %exitcond158.9.not = icmp eq i64 %i.ef, 9
  %i.et = getelementptr inbounds nuw i8, ptr %i.ee, i64 9
  %exitcond158.10.not = icmp eq i64 %i.ef, 10
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ee, i64 10
  %exitcond158.11.not = icmp eq i64 %i.ef, 11
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ee, i64 11
  %exitcond158.12.not = icmp eq i64 %i.ef, 12
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  %exitcond158.13.not = icmp eq i64 %i.ef, 13
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ee, i64 13
  %exitcond158.14.not = icmp eq i64 %i.ef, 14
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ee, i64 14
  %exitcond158.15.not = icmp eq i64 %i.ef, 15
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ee, i64 15
  %umin = call i64 @llvm.umin.i64(i64 %i.ek, i64 15) ; 3 uses
  %scevgep211 = getelementptr i8, ptr %scevgep, i64 %umin
  %scevgep213 = getelementptr i8, ptr %i.ee, i64 17
  %scevgep214 = getelementptr i8, ptr %scevgep213, i64 %umin
  %scevgep215 = getelementptr i8, ptr %i.ee, i64 16
  %i.fa = shl i64 %i.ec, 2
  %i.fb = and i64 %i.fa, -128
  %i.fc = shl nuw nsw i64 %umin, 2
  %i.fd = getelementptr i8, ptr %i.eb, i64 -60
  %i.fe = getelementptr i8, ptr %i.fd, i64 %i.fb
  %scevgep217 = getelementptr i8, ptr %i.fe, i64 %i.fc ; 2 uses
  %scevgep218 = getelementptr i8, ptr %i.eb, i64 64 ; 2 uses
  %i.ff = call i64 @llvm.umin.i64(i64 %i.ek, i64 15)
  %i.fg = add nuw nsw i64 %i.ff, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ef, 20
  %bound0 = icmp ult ptr %scevgep218, %scevgep214
  %bound1 = icmp ult ptr %scevgep215, %scevgep217
  %found.conflict = and i1 %bound0, %bound1
  %bound0219 = icmp ult ptr %scevgep218, %scevgep211
  %bound1220 = icmp ult ptr %scevgep212, %scevgep217
  %found.conflict221 = and i1 %bound0219, %bound1220
  %conflict.rdx = or i1 %found.conflict, %found.conflict221
  %i.fh = and i64 %i.fg, 3                        ; 2 uses
  %i.fi = icmp eq i64 %i.fh, 0
  %i.fj = select i1 %i.fi, i64 4, i64 %i.fh
  %n.vec = sub nsw i64 %i.fg, %i.fj               ; 3 uses
  %i.fk = shl nsw i64 %n.vec, 2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.thread.1
  %.sroa.02.1127 = phi i8 [ %i.hc, %.thread.1 ], [ %.sroa.02.0130, %.lr.ph.preheader ] ; 19 uses
  %.sroa.04.1126 = phi i64 [ %i.ha, %.thread.1 ], [ %.sroa.04.0129, %.lr.ph.preheader ] ; 6 uses
  %.sroa.06.0125 = phi i8 [ %i.hb, %.thread.1 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.3.0124 = phi ptr [ %i.fl, %.thread.1 ], [ %i.eb, %.lr.ph.preheader ] ; 18 uses
  %.sroa.59.0123 = phi i64 [ %i.fm, %.thread.1 ], [ %i.ej, %.lr.ph.preheader ]
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.3.0124, i64 128
  %i.fm = add i64 %.sroa.59.0123, -32             ; 2 uses
  %i.fn = and i8 %.sroa.06.0125, 6                ; 18 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.3.0124, i64 64 ; 2 uses
  %exitcond.not = icmp ugt i64 %.sroa.04.1126, 15
  br i1 %exitcond.not, label %.loopexit150.invoke, label %bb.r

bb.r:                                             ; preds = %.lr.ph
  %i.fp = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.04.1126
  %i.fq = load i8, ptr %i.fp, align 1, !noundef !7
  %i.fr = sitofp i8 %i.fq to float
  %i.fs = fadd nnan float %i.fr, -3.200000e+01
  %i.ft = fmul float %.sroa.01.0, %i.fs           ; 16 uses
  br i1 %exitcond158.not, label %.loopexit150.invoke, label %bb.u

bb.s:                                             ; preds = %.thread
  %i.fu = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.me
  %i.fv = load i8, ptr %i.fu, align 1, !noundef !7
  %i.fw = sitofp i8 %i.fv to float
  %i.fx = fadd nnan float %i.fw, -3.200000e+01
  %i.fy = fmul float %.sroa.01.0, %i.fx           ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.s
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fy, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert222 = insertelement <4 x i8> poison, i8 %i.fn, i64 0
  %broadcast.splat223 = shufflevector <4 x i8> %broadcast.splatinsert222, <4 x i8> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert224 = insertelement <4 x i8> poison, i8 %.sroa.02.1127, i64 0
  %broadcast.splat225 = shufflevector <4 x i8> %broadcast.splatinsert224, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fz = shl nuw i64 %index, 2
  %i.ga = add nuw nsw i64 %index, 16              ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fz
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ga
  %wide.load = load <4 x i8>, ptr %i.gc, align 1, !alias.scope !1033
  %i.gd = lshr <4 x i8> %wide.load, %broadcast.splat223
  %i.ge = and <4 x i8> %i.gd, splat (i8 3)
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.ga
  %wide.load226 = load <4 x i8>, ptr %i.gf, align 1, !alias.scope !1034
  %i.gg = and <4 x i8> %wide.load226, %broadcast.splat225
  %i.gh = icmp eq <4 x i8> %i.gg, zeroinitializer
  %i.gi = select <4 x i1> %i.gh, <4 x i8> splat (i8 -4), <4 x i8> zeroinitializer
  %i.gj = or disjoint <4 x i8> %i.gi, %i.ge
  %i.gk = sitofp <4 x i8> %i.gj to <4 x float>
  %i.gl = fmul <4 x float> %broadcast.splat, %i.gk
  store <4 x float> %i.gl, ptr %i.gb, align 4, !alias.scope !1035, !noalias !1036
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gm = icmp eq i64 %index.next, %n.vec
  br i1 %i.gm, label %scalar.ph.preheader, label %vector.body, !llvm.loop !1017

scalar.ph.preheader:                              ; preds = %vector.body, %bb.s
  %.sroa.772.0116.1.ph = phi i64 [ 0, %bb.s ], [ %n.vec, %vector.body ]
  %.sroa.070.0.idx115.1.ph = phi i64 [ 0, %bb.s ], [ %i.fk, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.t
  %.sroa.772.0116.1 = phi i64 [ %i.go, %bb.t ], [ %.sroa.772.0116.1.ph, %scalar.ph.preheader ] ; 3 uses
  %.sroa.070.0.idx115.1 = phi i64 [ %.sroa.070.0.add.1, %bb.t ], [ %.sroa.070.0.idx115.1.ph, %scalar.ph.preheader ] ; 2 uses
  %i.gn = add nuw nsw i64 %.sroa.772.0116.1, 16   ; 3 uses
  %exitcond157.not = icmp eq i64 %.sroa.772.0116.1, %i.ek
  br i1 %exitcond157.not, label %.loopexit150.invoke, label %bb.t

bb.t:                                             ; preds = %scalar.ph
  %i.go = add nuw nsw i64 %.sroa.772.0116.1, 1
  %.sroa.070.0.add.1 = add nuw nsw i64 %.sroa.070.0.idx115.1, 4 ; 2 uses
  %.sroa.070.0.ptr117.1 = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.sroa.070.0.idx115.1
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.gn
  %i.gq = load i8, ptr %i.gp, align 1, !noundef !7
  %i.gr = lshr i8 %i.gq, %i.fn
  %i.gs = and i8 %i.gr, 3
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.gn
  %i.gu = load i8, ptr %i.gt, align 1, !noundef !7
  %i.gv = and i8 %i.gu, %.sroa.02.1127
  %i.gw = icmp eq i8 %i.gv, 0
  %masksel.1 = select i1 %i.gw, i8 -4, i8 0
  %.sroa.020.0.neg.1 = or disjoint i8 %masksel.1, %i.gs
  %i.gx = sitofp i8 %.sroa.020.0.neg.1 to float
  %i.gy = fmul float %i.fy, %i.gx
  store float %i.gy, ptr %.sroa.070.0.ptr117.1, align 4
  %i.gz = icmp eq i64 %.sroa.070.0.add.1, 64
  br i1 %i.gz, label %.thread.1, label %scalar.ph, !llvm.loop !1018

.thread.1:                                        ; preds = %bb.t
  %i.ha = add nuw nsw i64 %.sroa.04.1126, 2       ; 2 uses
  %i.hb = add i8 %.sroa.06.0125, 2
  %i.hc = shl i8 %.sroa.02.1127, 1                ; 2 uses
  %.not26 = icmp eq i64 %i.fm, 0
  br i1 %.not26, label %.loopexit, label %.lr.ph

.loopexit150.invoke:                              ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.r, %.lr.ph, %.thread, %scalar.ph
  %i.hd = phi i64 [ %i.gn, %scalar.ph ], [ %.sroa.04.1126, %.lr.ph ], [ 15, %bb.ai ], [ 14, %bb.ah ], [ 13, %bb.ag ], [ 12, %bb.af ], [ 11, %bb.ae ], [ 10, %bb.ad ], [ 9, %bb.ac ], [ 8, %bb.ab ], [ 7, %bb.aa ], [ 6, %bb.z ], [ 5, %bb.y ], [ 4, %bb.x ], [ 3, %bb.w ], [ 2, %bb.v ], [ 1, %bb.u ], [ 0, %bb.r ], [ %i.me, %.thread ]
  %i.he = phi i64 [ %i.ef, %scalar.ph ], [ 16, %.lr.ph ], [ %i.ef, %bb.ai ], [ %i.ef, %bb.ah ], [ %i.ef, %bb.ag ], [ %i.ef, %bb.af ], [ %i.ef, %bb.ae ], [ %i.ef, %bb.ad ], [ %i.ef, %bb.ac ], [ %i.ef, %bb.ab ], [ %i.ef, %bb.aa ], [ %i.ef, %bb.z ], [ %i.ef, %bb.y ], [ %i.ef, %bb.x ], [ %i.ef, %bb.w ], [ %i.ef, %bb.v ], [ %i.ef, %bb.u ], [ %i.ef, %bb.r ], [ 16, %.thread ]
  %i.hf = phi ptr [ @121, %scalar.ph ], [ @120, %.lr.ph ], [ @121, %bb.ai ], [ @121, %bb.ah ], [ @121, %bb.ag ], [ @121, %bb.af ], [ @121, %bb.ae ], [ @121, %bb.ad ], [ @121, %bb.ac ], [ @121, %bb.ab ], [ @121, %bb.aa ], [ @121, %bb.z ], [ @121, %bb.y ], [ @121, %bb.x ], [ @121, %bb.w ], [ @121, %bb.v ], [ @121, %bb.u ], [ @121, %bb.r ], [ @120, %.thread ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.hd, i64 noundef %i.he, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hf) #28
          to label %.loopexit150.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit150.cont:                                ; preds = %.loopexit150.invoke
  unreachable

bb.u:                                             ; preds = %bb.r
  %i.hg = load i8, ptr %i.ee, align 1, !noundef !7
  %i.hh = lshr i8 %i.hg, %i.fn
  %i.hi = and i8 %i.hh, 3
  %i.hj = load i8, ptr %.sroa.0.0.copyload, align 2, !noundef !7
  %i.hk = and i8 %i.hj, %.sroa.02.1127
  %i.hl = icmp eq i8 %i.hk, 0
  %masksel = select i1 %i.hl, i8 -4, i8 0
  %.sroa.020.0.neg = or disjoint i8 %masksel, %i.hi
  %i.hm = sitofp i8 %.sroa.020.0.neg to float
  %i.hn = fmul float %i.ft, %i.hm
  store float %i.hn, ptr %.sroa.3.0124, align 4
  br i1 %exitcond158.1.not, label %.loopexit150.invoke, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.sroa.070.0.ptr117.1161 = getelementptr inbounds nuw i8, ptr %.sroa.3.0124, i64 4
  %i.ho = load i8, ptr %i.el, align 1, !noundef !7
  %i.hp = lshr i8 %i.ho, %i.fn
  %i.hq = and i8 %i.hp, 3
  %i.hr = load i8, ptr %i.dg, align 1, !noundef !7
  %i.hs = and i8 %i.hr, %.sroa.02.1127
  %i.ht = icmp eq i8 %i.hs, 0
  %masksel.1163 = select i1 %i.ht, i8 -4, i8 0
  %.sroa.020.0.neg.1164 = or disjoint i8 %masksel.1163, %i.hq
  %i.hu = sitofp i8 %.sroa.020.0.neg.1164 to float
  %i.hv = fmul float %i.ft, %i.hu
  store float %i.hv, ptr %.sroa.070.0.ptr117.1161, align 4
  br i1 %exitcond158.2.not, label %.loopexit150.invoke, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.070.0.ptr117.2 = getelementptr inbounds nuw i8, ptr %.sroa.3.0124, i64 8
  %i.hw = load i8, ptr %i.em, align 1, !noundef !7
  %i.hx = lshr i8 %i.hw, %i.fn
  %i.hy = and i8 %i.hx, 3
  %i.hz = load i8, ptr %i.dh, align 2, !noundef !7
  %i.ia = and i8 %i.hz, %.sroa.02.1127
  %i.ib = icmp eq i8 %i.ia, 0
  %masksel.2 = select i1 %i.ib, i8 -4, i8 0
  %.sroa.020.0.neg.2 = or disjoint i8 %masksel.2, %i.hy
  %i.ic = sitofp i8 %.sroa.020.0.neg.2 to float
  %i.id = fmul float %i.ft, %i.ic
  store float %i.id, ptr %.sroa.070.0.ptr117.2, align 4
  br i1 %exitcond158.3.not, label %.loopexit150.invoke, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.070.0.ptr117.3 = getelementptr inbounds nuw i8, ptr %.sroa.3.0124, i64 12
  %i.ie = load i8, ptr %i.en, align 1, !noundef !7
  %i.if = lshr i8 %i.ie, %i.fn
  %i.ig = and i8 %i.if, 3
  %i.ih = load i8, ptr %i.di, align 1, !noundef !7
  %i.ii = and i8 %i.ih, %.sroa.02.1127
  %i.ij = icmp eq i8 %i.ii, 0
  %masksel.3 = select i1 %i.ij, i8 -4, i8 0
  %.sroa.020.0.neg.3 = or disjoint i8 %masksel.3, %i.ig
  %i.ik = sitofp i8 %.sroa.020.0.neg.3 to float
  %i.il = fmul float %i.ft, %i.ik
  store float %i.il, ptr %.sroa.070.0.ptr117.3, align 4
  br i1 %exitcond158.4.not, label %.loopexit150.invoke, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.070.0.ptr117.4 = getelementptr inbounds nuw i8, ptr %.sroa.3.0124, i64 16
  %i.im = load i8, ptr %i.eo, align 1, !noundef !7
  %i.in = lshr i8 %i.im, %i.fn
  %i.io = and i8 %i.in, 3
  %i.ip = load i8, ptr %i.dj, align 2, !noundef !7
  %i.iq = and i8 %i.ip, %.sroa.02.1127
  %i.ir = icmp eq i8 %i.iq, 0
  %masksel.4 = select i1 %i.ir, i8 -4, i8 0
  %.sroa.020.0.neg.4 = or disjoint i8 %masksel.4, %i.io
  %i.is = sitofp i8 %.sroa.020.0.neg.4 to float
  %i.it = fmul float %i.ft, %i.is
  store float %i.it, ptr %.sroa.070.0.ptr117.4, align 4
  br i1 %exitcond158.5.not, label %.loopexit150.invoke, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.070.0.ptr117.5 = getelementptr inbounds nuw i8, ptr %.sroa.3.0124, i64 20
end_hunk_0
