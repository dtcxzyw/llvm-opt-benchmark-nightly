Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_core-ad80a04fff11224b.polars_core.149bbfd31402d64a-cgu.11?download=true
inline.NumInlined: 12724
inline.NumDeleted: 4732
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 666
loop-unroll.NumUnrolled: 672
begin_hunk_0_@_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterINtNtCscgRAwXFJnXP_4core6option6OptiondEENtNtNtNtB12_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldBX_IBY_NtNtCs2mZqlW55729_12polars_utils7float164pf16EuNCNCNvXs5_NtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantileINtB45_12ChunkedArrayNtNtB47_9datatypes11Float16TypeEINtB43_13ChunkQuantileB34_E9quantiles00NCINvNvB1C_8for_each4callB30_NCINvMsj_B8_INtB8_3VecB30_E14extend_trustedINtB2t_3MapBI_B3P_EE0E0E0EB47_:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not11 = icmp eq ptr %.promoted, %i.d, !dbg !195182
  br i1 %.not11, label %.._crit_edge_crit_edge, label %.lr.ph, !dbg !195164

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !195183
  br label %._crit_edge, !dbg !195164

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted12 = load i64, ptr %i.h, align 8
  br label %bb.b, !dbg !195164

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldINtNtBa_6option6OptiondEIBV_NtNtCs2mZqlW55729_12polars_utils7float164pf16EuNCNCNvXs5_NtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantileINtB2n_12ChunkedArrayNtNtB2p_9datatypes11Float16TypeEINtB2l_13ChunkQuantileB1m_E9quantiles00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1i_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB62_3VecB1i_E14extend_trustedINtB4_3MapINtNtB62_9into_iter8IntoIterBU_EB27_EE0E0E0B2p_.exit
  %.val3 = phi i64 [ %.promoted12, %.lr.ph ], [ %i.bv, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldINtNtBa_6option6OptiondEIBV_NtNtCs2mZqlW55729_12polars_utils7float164pf16EuNCNCNvXs5_NtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantileINtB2n_12ChunkedArrayNtNtB2p_9datatypes11Float16TypeEINtB2l_13ChunkQuantileB1m_E9quantiles00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1i_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB62_3VecB1i_E14extend_trustedINtB4_3MapINtNtB62_9into_iter8IntoIterBU_EB27_EE0E0E0B2p_.exit ] ; 3 uses
  %i.i = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldINtNtBa_6option6OptiondEIBV_NtNtCs2mZqlW55729_12polars_utils7float164pf16EuNCNCNvXs5_NtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantileINtB2n_12ChunkedArrayNtNtB2p_9datatypes11Float16TypeEINtB2l_13ChunkQuantileB1m_E9quantiles00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1i_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB62_3VecB1i_E14extend_trustedINtB4_3MapINtNtB62_9into_iter8IntoIterBU_EB27_EE0E0E0B2p_.exit ] ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !195184, !range !3450, !noundef !3448
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !195184
  %i.l = load double, ptr %i.k, align 8, !dbg !195184 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !195185 ; 2 uses
  %i.n = trunc nuw i64 %i.j to i1, !dbg !195186
  br i1 %i.n, label %bb.c, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldINtNtBa_6option6OptiondEIBV_NtNtCs2mZqlW55729_12polars_utils7float164pf16EuNCNCNvXs5_NtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantileINtB2n_12ChunkedArrayNtNtB2p_9datatypes11Float16TypeEINtB2l_13ChunkQuantileB1m_E9quantiles00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1i_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB62_3VecB1i_E14extend_trustedINtB4_3MapINtNtB62_9into_iter8IntoIterBU_EB27_EE0E0E0B2p_.exit, !dbg !195186

bb.c:                                             ; preds = %bb.b
  %i.o = load atomic i64, ptr @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache5CACHE monotonic, align 8, !dbg !195187, !noalias !195173 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0, !dbg !195188
  br i1 %i.p, label %.split.i.i, label %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i, !dbg !195188, !prof !3502

.split.i.i:                                       ; preds = %bb.c
  %i.q = invoke noundef i128 @_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache21detect_and_initialize()
          to label %.noexc unwind label %bb.p, !dbg !195189

.noexc:                                           ; preds = %.split.i.i
  %i.r = and i128 %i.q, 36028797018963968, !dbg !195190
  %.not1.i.i = icmp eq i128 %i.r, 0, !dbg !195190
  br i1 %.not1.i.i, label %bb.d, label %bb.o, !dbg !195191

_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i: ; preds = %bb.c
  %i.s = and i64 %i.o, 36028797018963968, !dbg !195192
  %.not.i.i = icmp eq i64 %i.s, 0, !dbg !195192
  br i1 %.not.i.i, label %bb.d, label %bb.o, !dbg !195191

bb.d:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i, %.noexc
  %i.t = bitcast double %i.l to i64, !dbg !195193 ; 2 uses
  %i.u = lshr i64 %i.t, 32, !dbg !195194
  %i.v = trunc nuw i64 %i.u to i32, !dbg !195194  ; 5 uses
  %i.w = and i32 %i.v, -2147483648, !dbg !195195  ; 2 uses
  %i.x = and i32 %i.v, 2146435072, !dbg !195196   ; 6 uses
  %i.y = and i32 %i.v, 1048575, !dbg !195197      ; 4 uses
  %i.z = icmp eq i32 %i.x, 2146435072, !dbg !195198
  br i1 %i.z, label %bb.e, label %bb.f, !dbg !195198

bb.e:                                             ; preds = %bb.d
  %i.aa = icmp eq i32 %i.y, 0, !dbg !195199
  %i.ab = and i64 %i.t, 4294967295
  %i.ac = icmp eq i64 %i.ab, 0
  %or.cond.i.i.i = and i1 %i.ac, %i.aa, !dbg !195199
  %..i.i.i = select i1 %or.cond.i.i.i, i32 0, i32 512, !dbg !195200
  %i.ad = lshr exact i32 %i.w, 16, !dbg !195201
  %i.ae = lshr i32 %i.y, 10, !dbg !195202
  %i.af = or disjoint i32 %i.ae, %i.ad, !dbg !195201
  %i.ag = or i32 %i.af, %..i.i.i, !dbg !195203
  %i.ah = trunc nuw i32 %i.ag to i16, !dbg !195203
  %i.ai = or disjoint i16 %i.ah, 31744, !dbg !195203
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldINtNtBa_6option6OptiondEIBV_NtNtCs2mZqlW55729_12polars_utils7float164pf16EuNCNCNvXs5_NtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantileINtB2n_12ChunkedArrayNtNtB2p_9datatypes11Float16TypeEINtB2l_13ChunkQuantileB1m_E9quantiles00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1i_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB62_3VecB1i_E14extend_trustedINtB4_3MapINtNtB62_9into_iter8IntoIterBU_EB27_EE0E0E0B2p_.exit, !dbg !195204

bb.f:                                             ; preds = %bb.d
  %i.aj = lshr exact i32 %i.w, 16, !dbg !195205   ; 4 uses
  %i.ak = lshr exact i32 %i.x, 20, !dbg !195206   ; 2 uses
  %i.al = icmp samesign ugt i32 %i.x, 1088421888, !dbg !195207
  br i1 %i.al, label %bb.h, label %bb.g, !dbg !195207

bb.g:                                             ; preds = %bb.f
  %i.am = icmp samesign ult i32 %i.x, 1058013184, !dbg !195208
  br i1 %i.am, label %bb.j, label %bb.i, !dbg !195208

bb.h:                                             ; preds = %bb.f
  %i.an = trunc nuw i32 %i.aj to i16, !dbg !195209
  %i.ao = or disjoint i16 %i.an, 31744, !dbg !195209
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldINtNtBa_6option6OptiondEIBV_NtNtCs2mZqlW55729_12polars_utils7float164pf16EuNCNCNvXs5_NtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantileINtB2n_12ChunkedArrayNtNtB2p_9datatypes11Float16TypeEINtB2l_13ChunkQuantileB1m_E9quantiles00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1i_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB62_3VecB1i_E14extend_trustedINtB4_3MapINtNtB62_9into_iter8IntoIterBU_EB27_EE0E0E0B2p_.exit, !dbg !195210

bb.i:                                             ; preds = %bb.g
  %i.ap = lshr exact i32 %i.x, 10, !dbg !195211
  %i.aq = add nuw nsw i32 %i.ap, 16384, !dbg !195211
  %i.ar = lshr i32 %i.y, 10, !dbg !195212
  %i.as = and i32 %i.v, 512, !dbg !195213
  %i.at = icmp ne i32 %i.as, 0, !dbg !195213
  %i.au = and i32 %i.v, 1535
  %i.av = icmp ne i32 %i.au, 0
  %or.cond3.not.i.i.i = and i1 %i.at, %i.av, !dbg !195214
  %i.aw = or disjoint i32 %i.aq, %i.ar, !dbg !195214
  %i.ax = or i32 %i.aw, %i.aj, !dbg !195214
  %i.ay = trunc i32 %i.ax to i16, !dbg !195214
  %i.az = zext i1 %or.cond3.not.i.i.i to i16, !dbg !195213
  %spec.select9.i.i.i = add i16 %i.ay, %i.az, !dbg !195213
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldINtNtBa_6option6OptiondEIBV_NtNtCs2mZqlW55729_12polars_utils7float164pf16EuNCNCNvXs5_NtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantileINtB2n_12ChunkedArrayNtNtB2p_9datatypes11Float16TypeEINtB2l_13ChunkQuantileB1m_E9quantiles00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1i_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB62_3VecB1i_E14extend_trustedINtB4_3MapINtNtB62_9into_iter8IntoIterBU_EB27_EE0E0E0B2p_.exit, !dbg !195213

bb.j:                                             ; preds = %bb.g
  %i.ba = icmp samesign ult i32 %i.x, 1045430272, !dbg !195215
  br i1 %i.ba, label %bb.l, label %bb.k, !dbg !195215

bb.k:                                             ; preds = %bb.j
  %i.bb = sub nsw i32 1018, %i.ak, !dbg !195215   ; 2 uses
  %i.bc = or disjoint i32 %i.y, 1048576, !dbg !195216 ; 3 uses
  %i.bd = sub nsw i32 27, %i.ak, !dbg !195217
  %i.be = and i32 %i.bd, 31, !dbg !195218
  %i.bf = lshr i32 %i.bc, %i.be, !dbg !195218     ; 2 uses
  %i.bg = shl nuw nsw i32 1, %i.bb, !dbg !195219
  %i.bh = and i32 %i.bg, %i.bc, !dbg !195220
  %i.bi = icmp eq i32 %i.bh, 0, !dbg !195220
  br i1 %i.bi, label %bb.n, label %bb.m, !dbg !195220

bb.l:                                             ; preds = %bb.j
  %i.bj = trunc nuw i32 %i.aj to i16, !dbg !195221
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldINtNtBa_6option6OptiondEIBV_NtNtCs2mZqlW55729_12polars_utils7float164pf16EuNCNCNvXs5_NtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantileINtB2n_12ChunkedArrayNtNtB2p_9datatypes11Float16TypeEINtB2l_13ChunkQuantileB1m_E9quantiles00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1i_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB62_3VecB1i_E14extend_trustedINtB4_3MapINtNtB62_9into_iter8IntoIterBU_EB27_EE0E0E0B2p_.exit, !dbg !195210

bb.m:                                             ; preds = %bb.k
  %i.bk = shl nuw nsw i32 3, %i.bb, !dbg !195222
  %i.bl = add nuw nsw i32 %i.bk, 2097151, !dbg !195223
  %i.bm = and i32 %i.bl, %i.bc, !dbg !195224
  %i.bn = icmp ne i32 %i.bm, 0, !dbg !195224
  %i.bo = zext i1 %i.bn to i32, !dbg !195224
  %spec.select.i.i.i = add nuw nsw i32 %i.bf, %i.bo, !dbg !195224
  br label %bb.n, !dbg !195224

bb.n:                                             ; preds = %bb.m, %bb.k
  %.sroa.05.0.i.i.i = phi i32 [ %i.bf, %bb.k ], [ %spec.select.i.i.i, %bb.m ], !dbg !195225
  %i.bp = or i32 %.sroa.05.0.i.i.i, %i.aj, !dbg !195226
  %i.bq = trunc i32 %i.bp to i16, !dbg !195226
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldINtNtBa_6option6OptiondEIBV_NtNtCs2mZqlW55729_12polars_utils7float164pf16EuNCNCNvXs5_NtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantileINtB2n_12ChunkedArrayNtNtB2p_9datatypes11Float16TypeEINtB2l_13ChunkQuantileB1m_E9quantiles00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1i_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB62_3VecB1i_E14extend_trustedINtB4_3MapINtNtB62_9into_iter8IntoIterBU_EB27_EE0E0E0B2p_.exit, !dbg !195210

bb.o:                                             ; preds = %_RNvNtNtCsiOQ0QR31gI5_10std_detect6detect5cache4test.exit.i.i, %.noexc
  %i.br = fptrunc double %i.l to float, !dbg !195227
  %i.bs = tail call fastcc noundef i16 @_RNvNtNtNtCshdiYQzaKNQ1_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.br), !dbg !195228
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldINtNtBa_6option6OptiondEIBV_NtNtCs2mZqlW55729_12polars_utils7float164pf16EuNCNCNvXs5_NtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantileINtB2n_12ChunkedArrayNtNtB2p_9datatypes11Float16TypeEINtB2l_13ChunkQuantileB1m_E9quantiles00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1i_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB62_3VecB1i_E14extend_trustedINtB4_3MapINtNtB62_9into_iter8IntoIterBU_EB27_EE0E0E0B2p_.exit, !dbg !195229

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldINtNtBa_6option6OptiondEIBV_NtNtCs2mZqlW55729_12polars_utils7float164pf16EuNCNCNvXs5_NtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantileINtB2n_12ChunkedArrayNtNtB2p_9datatypes11Float16TypeEINtB2l_13ChunkQuantileB1m_E9quantiles00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1i_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB62_3VecB1i_E14extend_trustedINtB4_3MapINtNtB62_9into_iter8IntoIterBU_EB27_EE0E0E0B2p_.exit: ; preds = %bb.b, %bb.e, %bb.h, %bb.i, %bb.l, %bb.n, %bb.o
  %.sroa.02.0.i.i = phi i16 [ 0, %bb.b ], [ 1, %bb.o ], [ 1, %bb.e ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.l ], [ 1, %bb.n ], !dbg !195230
  %.sroa.3.0.i.i = phi i16 [ undef, %bb.b ], [ %i.bs, %bb.o ], [ %i.ai, %bb.e ], [ %i.ao, %bb.h ], [ %spec.select9.i.i.i, %bb.i ], [ %i.bj, %bb.l ], [ %i.bq, %bb.n ], !dbg !195230
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.val3, !dbg !195231 ; 2 uses
  store i16 %.sroa.02.0.i.i, ptr %i.bt, align 2, !dbg !195232, !noalias !195179
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 2, !dbg !195232
  store i16 %.sroa.3.0.i.i, ptr %i.bu, align 2, !dbg !195232, !noalias !195179
  %i.bv = add i64 %.val3, 1, !dbg !195233         ; 2 uses
  %.not = icmp eq ptr %i.m, %i.d, !dbg !195182
  br i1 %.not, label %._crit_edge, label %bb.b, !dbg !195164

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldINtNtBa_6option6OptiondEIBV_NtNtCs2mZqlW55729_12polars_utils7float164pf16EuNCNCNvXs5_NtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantileINtB2n_12ChunkedArrayNtNtB2p_9datatypes11Float16TypeEINtB2l_13ChunkQuantileB1m_E9quantiles00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1i_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB62_3VecB1i_E14extend_trustedINtB4_3MapINtNtB62_9into_iter8IntoIterBU_EB27_EE0E0E0B2p_.exit, %.._crit_edge_crit_edge
  %.val5 = phi i64 [ %.val5.pre, %.._crit_edge_crit_edge ], [ %i.bv, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldINtNtBa_6option6OptiondEIBV_NtNtCs2mZqlW55729_12polars_utils7float164pf16EuNCNCNvXs5_NtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantileINtB2n_12ChunkedArrayNtNtB2p_9datatypes11Float16TypeEINtB2l_13ChunkQuantileB1m_E9quantiles00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1i_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB62_3VecB1i_E14extend_trustedINtB4_3MapINtNtB62_9into_iter8IntoIterBU_EB27_EE0E0E0B2p_.exit ], !dbg !195183
  %.val4 = load ptr, ptr %1, align 8, !dbg !195183, !nonnull !3448, !align !3606, !noundef !3448
  store i64 %.val5, ptr %.val4, align 8, !dbg !195234
  %.val8 = load ptr, ptr %0, align 8, !dbg !195183, !alias.scope !4170, !nonnull !3448, !noundef !3448
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !195183
  %.val9 = load i64, ptr %i.bw, align 8, !dbg !195183, !alias.scope !4170, !noundef !3448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !195235, !noalias !195180
  store i64 %.val9, ptr %i.b, align 8, !dbg !195236, !noalias !195180
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !195236
  store ptr %.val8, ptr %i.bx, align 8, !dbg !195236, !noalias !195180
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptiondEENtNtNtBR_3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !dbg !195237, !noalias !195180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !195238, !noalias !195180
  ret void, !dbg !195239

bb.p:                                             ; preds = %.split.i.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %1, align 8, !dbg !195183, !nonnull !3448, !align !3606, !noundef !3448
  store i64 %.val3, ptr %.val, align 8, !dbg !195240
  %.val6 = load ptr, ptr %0, align 8, !dbg !195183, !alias.scope !4170, !nonnull !3448, !noundef !3448
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !195183
  %.val7 = load i64, ptr %i.bz, align 8, !dbg !195183, !alias.scope !4170, !noundef !3448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !195241, !noalias !195181
  store i64 %.val7, ptr %i.a, align 8, !dbg !195242, !noalias !195181
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !195242
  store ptr %.val6, ptr %i.ca, align 8, !dbg !195242, !noalias !195181
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptiondEENtNtNtBR_3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.r unwind label %bb.q, !dbg !195243

bb.q:                                             ; preds = %bb.p
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !195244
  unreachable, !dbg !195244

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !195245, !noalias !195181
  resume { ptr, i32 } %i.by, !dbg !195244
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterINtNtCscgRAwXFJnXP_4core6option6OptiondEENtNtNtNtB12_4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldBX_IBY_fEuNCNCNvXs6_NtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops9aggregate8quantileINtB3n_12ChunkedArrayNtNtB3p_9datatypes11Float32TypeEINtB3l_13ChunkQuantilefE9quantiles00NCINvNvB1C_8for_each4callB30_NCINvMsj_B8_INtB8_3VecB30_E14extend_trustedINtB2t_3MapBI_B37_EE0E0E0EB3p_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !195246 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3448, !noundef !3448 ; 3 uses
  %2 = ptrtoaddr ptr %i.c to i64                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.d, align 8        ; 8 uses
  %.promoted17 = ptrtoaddr ptr %.promoted to i64, !dbg !195312 ; 2 uses
  %.not10 = icmp eq ptr %.promoted, %i.c, !dbg !195312
  br i1 %.not10, label %._crit_edge14, label %.lr.ph, !dbg !195296

._crit_edge14:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val9.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !195313
  br label %._crit_edge, !dbg !195296

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !195298, !noundef !3448 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted11 = load i64, ptr %i.g, align 8, !alias.scope !195298 ; 5 uses
  %i.h = add i64 %2, -16, !dbg !195296
  %i.i = sub i64 %i.h, %.promoted17, !dbg !195296 ; 2 uses
  %i.j = lshr i64 %i.i, 4, !dbg !195296
  %i.k = add nuw nsw i64 %i.j, 1, !dbg !195296    ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 208, !dbg !195296
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !195296

vector.memcheck:                                  ; preds = %.lr.ph
  %i.l = shl i64 %.promoted11, 3, !dbg !195296    ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.f, i64 %i.l, !dbg !195296
  %3 = add i64 %2, -16, !dbg !195296
  %4 = sub i64 %3, %.promoted17, !dbg !195296     ; 2 uses
  %i.m = lshr i64 %4, 1, !dbg !195296
  %i.n = and i64 %i.m, 9223372036854775800, !dbg !195296
  %i.o = getelementptr i8, ptr %i.f, i64 %i.l, !dbg !195296
  %i.p = getelementptr i8, ptr %i.o, i64 %i.n, !dbg !195296
  %scevgep18 = getelementptr i8, ptr %i.p, i64 8, !dbg !195296
  %i.q = and i64 %4, -16, !dbg !195296
  %i.r = getelementptr i8, ptr %.promoted, i64 %i.q, !dbg !195296
  %scevgep19 = getelementptr i8, ptr %i.r, i64 16, !dbg !195296
  %bound0 = icmp ult ptr %scevgep, %scevgep19, !dbg !195296
  %bound1 = icmp ult ptr %.promoted, %scevgep18, !dbg !195296
  %found.conflict = and i1 %bound0, %bound1, !dbg !195296
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.k, 2305843009213693950      ; 4 uses
  %i.s = add i64 %.promoted11, %n.vec             ; 2 uses
  %i.t = shl i64 %n.vec, 4
  %i.u = getelementptr i8, ptr %.promoted, i64 %i.t
  %i.v = getelementptr [8 x i8], ptr %i.f, i64 %.promoted11
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.w
  %wide.vec = load <4 x i64>, ptr %next.gep, align 8, !dbg !195314, !alias.scope !195299 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>, !dbg !195314 ; 2 uses
  %i.x = bitcast <4 x i64> %wide.vec to <4 x double>, !dbg !195314
  %i.y = shufflevector <4 x double> %i.x, <4 x double> poison, <2 x i32> <i32 1, i32 3>, !dbg !195314
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195303), !dbg !195315
  %i.z = trunc nuw <2 x i64> %strided.vec to <2 x i1>, !dbg !195316
  %i.aa = fptrunc <2 x double> %i.y to <2 x float>, !dbg !195316
  %i.ab = trunc nuw nsw <2 x i64> %strided.vec to <2 x i32>, !dbg !195316
  %i.ac = select <2 x i1> %i.z, <2 x float> %i.aa, <2 x float> undef, !dbg !195316
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195307), !dbg !195317
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195308), !dbg !195318
  %i.ad = getelementptr [8 x i8], ptr %i.v, i64 %index, !dbg !195319
  %i.ae = bitcast <2 x i32> %i.ab to <2 x float>, !dbg !195320
  %interleaved.vec = shufflevector <2 x float> %i.ae, <2 x float> %i.ac, <4 x i32> <i32 0, i32 2, i32 1, i32 3>, !dbg !195320
  store <4 x float> %interleaved.vec, ptr %i.ad, align 4, !dbg !195320, !alias.scope !195309, !noalias !195298
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec, !dbg !195296
  br i1 %i.af, label %middle.block, label %vector.body, !dbg !195296, !llvm.loop !195275

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec, !dbg !195296
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader, !dbg !195296

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.ph = phi i64 [ %.promoted11, %vector.memcheck ], [ %.promoted11, %.lr.ph ], [ %i.s, %middle.block ]
  %.ph22 = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph ], [ %i.u, %middle.block ]
  br label %scalar.ph, !dbg !195296

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.ag = phi i64 [ %i.ar, %scalar.ph ], [ %.ph, %scalar.ph.preheader ], !dbg !195314 ; 2 uses
  %i.ah = phi ptr [ %i.al, %scalar.ph ], [ %.ph22, %scalar.ph.preheader ] ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8, !dbg !195314, !range !3450, !noundef !3448 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8, !dbg !195314
  %i.ak = load double, ptr %i.aj, align 8, !dbg !195314
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16, !dbg !195321 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195303), !dbg !195315
  %i.am = trunc nuw i64 %i.ai to i1, !dbg !195316
  %i.an = fptrunc double %i.ak to float, !dbg !195316
  %i.ao = trunc nuw nsw i64 %i.ai to i32, !dbg !195316
  %.sroa.3.0.i.i = select i1 %i.am, float %i.an, float undef, !dbg !195316
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195307), !dbg !195317
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195308), !dbg !195318
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ag, !dbg !195319 ; 2 uses
  store i32 %i.ao, ptr %i.ap, align 4, !dbg !195320, !noalias !195298
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4, !dbg !195320
  store float %.sroa.3.0.i.i, ptr %i.aq, align 4, !dbg !195320, !noalias !195298
  %i.ar = add i64 %i.ag, 1, !dbg !195322          ; 2 uses
  %.not = icmp eq ptr %i.al, %i.c, !dbg !195312
  br i1 %.not, label %._crit_edge, label %scalar.ph, !dbg !195296, !llvm.loop !195279

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %._crit_edge14
  %.val9 = phi i64 [ %.val9.pre, %._crit_edge14 ], [ %i.s, %middle.block ], [ %i.ar, %scalar.ph ], !dbg !195313
  %.val8 = load ptr, ptr %1, align 8, !dbg !195313, !nonnull !3448, !align !3606, !noundef !3448
  store i64 %.val9, ptr %.val8, align 8, !dbg !195323
  %.val4 = load ptr, ptr %0, align 8, !dbg !195313, !alias.scope !4170, !nonnull !3448, !noundef !3448
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !195313
  %.val5 = load i64, ptr %i.as, align 8, !dbg !195313, !alias.scope !4170, !noundef !3448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !195324, !noalias !195311
  store i64 %.val5, ptr %i.a, align 8, !dbg !195325, !noalias !195311
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !195325
  store ptr %.val4, ptr %i.at, align 8, !dbg !195325, !noalias !195311
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptiondEENtNtNtBR_3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !195326, !noalias !195311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !195327, !noalias !195311
  ret void, !dbg !195328
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterINtNtCscgRAwXFJnXP_4core6option6OptiondEENtNtNtNtB12_4iter6traits8iterator8Iterator4folduNCINvNvB1C_8for_each4callBX_NCINvXs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builderINtB30_12ChunkedArrayNtNtB32_9datatypes11Float64TypeEINtB2Y_15NewChunkedArrayB4b_dE17from_iter_optionsBI_E0E0EB32_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 16 dereferenceable(176) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !195329 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3448, !noundef !3448
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.e, align 8
  br label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callINtNtBe_6option6OptiondENCINvXs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builderINtB1N_12ChunkedArrayNtNtB1P_9datatypes11Float64TypeEINtB1L_15NewChunkedArrayB2Y_dE17from_iter_optionsINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterB1f_EE0E0B1P_.exit, !dbg !195364

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callINtNtBe_6option6OptiondENCINvXs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builderINtB1N_12ChunkedArrayNtNtB1P_9datatypes11Float64TypeEINtB1L_15NewChunkedArrayB2Y_dE17from_iter_optionsINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterB1f_EE0E0B1P_.exit: ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ %i.j, %bb.b ], [ %.promoted, %bb.a ] ; 4 uses
  %.not = icmp eq ptr %i.f, %i.d, !dbg !195365
  br i1 %.not, label %bb.c, label %bb.b, !dbg !195356

bb.b:                                             ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callINtNtBe_6option6OptiondENCINvXs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builderINtB1N_12ChunkedArrayNtNtB1P_9datatypes11Float64TypeEINtB1L_15NewChunkedArrayB2Y_dE17from_iter_optionsINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterB1f_EE0E0B1P_.exit
  %i.g = load i64, ptr %i.f, align 8, !dbg !195366, !range !3450, !noundef !3448
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !195366
  %i.i = load double, ptr %i.h, align 8, !dbg !195366
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !195367
  invoke void @_RNvYINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitive23PrimitiveChunkedBuilderNtNtBb_9datatypes11Float64TypeEINtB7_14ChunkedBuilderdB1y_E13append_optionBb_(ptr noalias noundef nonnull align 16 dereferenceable(176) %1, i64 noundef range(i64 0, 2) %i.g, double %i.i)
          to label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callINtNtBe_6option6OptiondENCINvXs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builderINtB1N_12ChunkedArrayNtNtB1P_9datatypes11Float64TypeEINtB1L_15NewChunkedArrayB2Y_dE17from_iter_optionsINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterB1f_EE0E0B1P_.exit unwind label %bb.d, !dbg !195368

bb.c:                                             ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callINtNtBe_6option6OptiondENCINvXs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builderINtB1N_12ChunkedArrayNtNtB1P_9datatypes11Float64TypeEINtB1L_15NewChunkedArrayB2Y_dE17from_iter_optionsINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterB1f_EE0E0B1P_.exit
  %.val3 = load ptr, ptr %0, align 8, !dbg !195369, !alias.scope !4170, !nonnull !3448, !noundef !3448
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !195369
  %.val4 = load i64, ptr %i.k, align 8, !dbg !195369, !alias.scope !4170, !noundef !3448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !195370, !noalias !195362
  store i64 %.val4, ptr %i.b, align 8, !dbg !195371, !noalias !195362
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !195371
  store ptr %.val3, ptr %i.l, align 8, !dbg !195371, !noalias !195362
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptiondEENtNtNtBR_3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !dbg !195372, !noalias !195362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !195373, !noalias !195362
  ret void, !dbg !195374

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %0, align 8, !dbg !195369, !alias.scope !4170, !nonnull !3448, !noundef !3448
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !195369
  %.val2 = load i64, ptr %i.n, align 8, !dbg !195369, !alias.scope !4170, !noundef !3448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !195375, !noalias !195363
  store i64 %.val2, ptr %i.a, align 8, !dbg !195376, !noalias !195363
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !195376
  store ptr %.val, ptr %i.o, align 8, !dbg !195376, !noalias !195363
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptiondEENtNtNtBR_3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.f unwind label %bb.e, !dbg !195377

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !195378
  unreachable, !dbg !195378

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !195379, !noalias !195363
  resume { ptr, i32 } %i.m, !dbg !195378
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterINtNtCscgRAwXFJnXP_4core6option6OptionfEENtNtNtNtB12_4iter6traits8iterator8Iterator4folduNCINvNvB1C_8for_each4callBX_NCINvXs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builderINtB30_12ChunkedArrayNtNtB32_9datatypes11Float32TypeEINtB2Y_15NewChunkedArrayB4b_fE17from_iter_optionsBI_E0E0EB32_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 16 dereferenceable(176) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !195380 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3448, !noundef !3448
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.e, align 8
  br label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callINtNtBe_6option6OptionfENCINvXs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builderINtB1N_12ChunkedArrayNtNtB1P_9datatypes11Float32TypeEINtB1L_15NewChunkedArrayB2Y_fE17from_iter_optionsINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterB1f_EE0E0B1P_.exit, !dbg !195419

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callINtNtBe_6option6OptionfENCINvXs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builderINtB1N_12ChunkedArrayNtNtB1P_9datatypes11Float32TypeEINtB1L_15NewChunkedArrayB2Y_fE17from_iter_optionsINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterB1f_EE0E0B1P_.exit: ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ %i.j, %bb.b ], [ %.promoted, %bb.a ] ; 4 uses
  %.not = icmp eq ptr %i.f, %i.d, !dbg !195420
  br i1 %.not, label %bb.c, label %bb.b, !dbg !195410

bb.b:                                             ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callINtNtBe_6option6OptionfENCINvXs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builderINtB1N_12ChunkedArrayNtNtB1P_9datatypes11Float32TypeEINtB1L_15NewChunkedArrayB2Y_fE17from_iter_optionsINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterB1f_EE0E0B1P_.exit
  %i.g = load i32, ptr %i.f, align 4, !dbg !195421, !range !4171, !noundef !3448
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4, !dbg !195421
  %i.i = load float, ptr %i.h, align 4, !dbg !195421
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !195422
  invoke void @_RNvYINtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builder9primitive23PrimitiveChunkedBuilderNtNtBb_9datatypes11Float32TypeEINtB7_14ChunkedBuilderfB1y_E13append_optionBb_(ptr noalias noundef nonnull align 16 dereferenceable(176) %1, i32 noundef range(i32 0, 2) %i.g, float %i.i)
          to label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callINtNtBe_6option6OptionfENCINvXs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builderINtB1N_12ChunkedArrayNtNtB1P_9datatypes11Float32TypeEINtB1L_15NewChunkedArrayB2Y_fE17from_iter_optionsINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterB1f_EE0E0B1P_.exit unwind label %bb.d, !dbg !195423

bb.c:                                             ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8for_each4callINtNtBe_6option6OptionfENCINvXs_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array7builderINtB1N_12ChunkedArrayNtNtB1P_9datatypes11Float32TypeEINtB1L_15NewChunkedArrayB2Y_fE17from_iter_optionsINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterB1f_EE0E0B1P_.exit
  %.val4 = load ptr, ptr %0, align 8, !dbg !195424, !alias.scope !195416, !nonnull !3448, !noundef !3448
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !195424
  %.val5 = load i64, ptr %i.k, align 8, !dbg !195424, !alias.scope !195416, !noundef !3448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !195425, !noalias !195417
  store i64 %.val5, ptr %i.b, align 8, !dbg !195426, !noalias !195417
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !195426
  store ptr %.val4, ptr %i.l, align 8, !dbg !195426, !noalias !195417
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptionfEENtNtNtBR_3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !dbg !195427, !noalias !195417
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !195428, !noalias !195417
  ret void, !dbg !195429

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  %.val2 = load ptr, ptr %0, align 8, !dbg !195424, !alias.scope !195416, !nonnull !3448, !noundef !3448
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !195424
  %.val3 = load i64, ptr %i.n, align 8, !dbg !195424, !alias.scope !195416, !noundef !3448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !195430, !noalias !195418
  store i64 %.val3, ptr %i.a, align 8, !dbg !195431, !noalias !195418
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !195431
  store ptr %.val2, ptr %i.o, align 8, !dbg !195431, !noalias !195418
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCscgRAwXFJnXP_4core6option6OptionfEENtNtNtBR_3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.f unwind label %bb.e, !dbg !195432

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !195433
  unreachable, !dbg !195433

end_hunk_0
begin_hunk_1_@_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4folduNCINvNvB1Q_8for_each4callBX_NCINvNvNtB1U_7collect14default_extend18unchecked_extenderTINtB8_3VecmEIB4g_BZ_EEBX_E0E0ECs1LHh8CLbVkQ_11polars_core:bb.a
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not2 = icmp eq ptr %.promoted, %i.c, !dbg !197268
  br i1 %.not2, label %._crit_edge, label %.lr.ph, !dbg !197260

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.e = phi ptr [ %i.f, %bb.c ], [ %.promoted, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !197269, !noalias !197262
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !197270
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !197271 ; 3 uses
  store ptr %i.f, ptr %i.d, align 8, !dbg !197272
  invoke void @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter6traits7collectTINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEIBQ_INtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEINtB5_6ExtendTmB1s_EE20extend_one_uncheckedCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b, !dbg !197273

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0), !dbg !197274
  ret void, !dbg !197275

bb.b:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEECs1LHh8CLbVkQ_11polars_core.exit unwind label %bb.d, !dbg !197276

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !197277, !noalias !197262
  %.not = icmp eq ptr %i.f, %i.c, !dbg !197268
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !197260

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !197278
  unreachable, !dbg !197278

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.g, !dbg !197278
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4folduNCINvNvB1Q_8for_each4callBX_NCINvNvNtB1U_7collect14default_extend8extenderTINtB8_3VecmEIB45_BZ_EEBX_E0E0ECs1LHh8CLbVkQ_11polars_core(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !197279 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not2 = icmp eq ptr %.promoted, %i.c, !dbg !197301
  br i1 %.not2, label %._crit_edge, label %.lr.ph, !dbg !197294

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.e = phi ptr [ %i.f, %bb.c ], [ %.promoted, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !197302, !noalias !197296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !197303
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !197304 ; 3 uses
  store ptr %i.f, ptr %i.d, align 8, !dbg !197305
  invoke void @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter6traits7collectTINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEIBQ_INtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEINtB5_6ExtendTmB1s_EE10extend_oneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b, !dbg !197306

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0), !dbg !197307
  ret void, !dbg !197308

bb.b:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEECs1LHh8CLbVkQ_11polars_core.exit unwind label %bb.d, !dbg !197309

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !197310, !noalias !197296
  %.not = icmp eq ptr %i.f, %i.c, !dbg !197301
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !197294

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !197311
  unreachable, !dbg !197311

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTmINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEEECs1LHh8CLbVkQ_11polars_core.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.g, !dbg !197311
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterTmRShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1a_8adapters3map8map_foldBX_muNCNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort17arg_sort_multiple24argsort_multiple_row_fmts0_0NCINvNvB14_8for_each4callmNCINvMsj_B8_INtB8_3VecmE14extend_trustedINtB2a_3MapBI_B2J_EE0E0E0EB2V_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !197312 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not11 = icmp eq ptr %.promoted, %i.c, !dbg !197367
  br i1 %.not11, label %._crit_edge15, label %.lr.ph, !dbg !197354

._crit_edge15:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !197368
  br label %._crit_edge, !dbg !197354

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !197356, !noalias !197357, !noundef !3448
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted12 = load i64, ptr %i.g, align 8, !alias.scope !197356, !noalias !197357
  br label %bb.b, !dbg !197354

._crit_edge:                                      ; preds = %bb.b, %._crit_edge15
  %.val5 = phi i64 [ %.val5.pre, %._crit_edge15 ], [ %i.n, %bb.b ], !dbg !197368
  %.val4 = load ptr, ptr %1, align 8, !dbg !197368, !nonnull !3448, !align !3606, !noundef !3448
  store i64 %.val5, ptr %.val4, align 8, !dbg !197369
  %.val8 = load ptr, ptr %0, align 8, !dbg !197368, !alias.scope !4218, !nonnull !3448, !noundef !3448
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !197368
  %.val9 = load i64, ptr %i.h, align 8, !dbg !197368, !alias.scope !4218, !noundef !3448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !197370, !noalias !197358
  store i64 %.val9, ptr %i.a, align 8, !dbg !197371, !noalias !197358
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !197371
  store ptr %.val8, ptr %i.i, align 8, !dbg !197371, !noalias !197358
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTmRShEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !197372, !noalias !197358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !197373, !noalias !197358
  ret void, !dbg !197374

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.j = phi i64 [ %.promoted12, %.lr.ph ], [ %i.n, %bb.b ], !dbg !197375 ; 2 uses
  %i.k = phi ptr [ %.promoted, %.lr.ph ], [ %i.l, %bb.b ] ; 2 uses
  %.sroa.010.0.copyload = load i32, ptr %i.k, align 8, !dbg !197375
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !197376 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197363), !dbg !197377
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197364), !dbg !197378
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197365), !dbg !197379
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.j, !dbg !197380
  store i32 %.sroa.010.0.copyload, ptr %i.m, align 4, !dbg !197381, !noalias !197366
  %i.n = add i64 %i.j, 1, !dbg !197382            ; 2 uses
  %.not = icmp eq ptr %i.l, %i.c, !dbg !197367
  br i1 %.not, label %._crit_edge, label %bb.b, !dbg !197354
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterTmRShEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1a_8adapters3map8map_foldBX_muNCNvNtNtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4sort8arg_sort16arg_sort_row_fmts0_0NCINvNvB14_8for_each4callmNCINvMsj_B8_INtB8_3VecmE14extend_trustedINtB2a_3MapBI_B2J_EE0E0E0EB2V_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !197383 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not11 = icmp eq ptr %.promoted, %i.c, !dbg !197438
  br i1 %.not11, label %._crit_edge15, label %.lr.ph, !dbg !197425

._crit_edge15:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val9.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !197439
  br label %._crit_edge, !dbg !197425

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !197427, !noalias !197428, !noundef !3448
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted12 = load i64, ptr %i.g, align 8, !alias.scope !197427, !noalias !197428
  br label %bb.b, !dbg !197425

._crit_edge:                                      ; preds = %bb.b, %._crit_edge15
  %.val9 = phi i64 [ %.val9.pre, %._crit_edge15 ], [ %i.n, %bb.b ], !dbg !197439
  %.val8 = load ptr, ptr %1, align 8, !dbg !197439, !nonnull !3448, !align !3606, !noundef !3448
  store i64 %.val9, ptr %.val8, align 8, !dbg !197440
  %.val4 = load ptr, ptr %0, align 8, !dbg !197439, !alias.scope !4218, !nonnull !3448, !noundef !3448
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !197439
  %.val5 = load i64, ptr %i.h, align 8, !dbg !197439, !alias.scope !4218, !noundef !3448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !197441, !noalias !197429
  store i64 %.val5, ptr %i.a, align 8, !dbg !197442, !noalias !197429
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !197442
  store ptr %.val4, ptr %i.i, align 8, !dbg !197442, !noalias !197429
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTmRShEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !197443, !noalias !197429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !197444, !noalias !197429
  ret void, !dbg !197445

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.j = phi i64 [ %.promoted12, %.lr.ph ], [ %i.n, %bb.b ], !dbg !197446 ; 2 uses
  %i.k = phi ptr [ %.promoted, %.lr.ph ], [ %i.l, %bb.b ] ; 2 uses
  %.sroa.010.0.copyload = load i32, ptr %i.k, align 8, !dbg !197446
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24, !dbg !197447 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197434), !dbg !197448
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197435), !dbg !197449
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197436), !dbg !197450
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.j, !dbg !197451
  store i32 %.sroa.010.0.copyload, ptr %i.m, align 4, !dbg !197452, !noalias !197437
  %i.n = add i64 %i.j, 1, !dbg !197453            ; 2 uses
  %.not = icmp eq ptr %i.l, %i.c, !dbg !197438
  br i1 %.not, label %._crit_edge, label %bb.b, !dbg !197425
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIteryENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB15_8adapters3map8map_foldymuNCNvNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array6random32create_rand_index_no_replacements_0NCINvNvBZ_8for_each4callmNCINvMsj_B8_INtB8_3VecmE14extend_trustedINtB25_3MapBI_B2C_EE0E0E0EB2K_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !197454 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3448, !noundef !3448 ; 3 uses
  %2 = ptrtoaddr ptr %i.c to i64                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.d, align 8        ; 8 uses
  %.promoted17 = ptrtoaddr ptr %.promoted to i64, !dbg !197523 ; 2 uses
  %.not10 = icmp eq ptr %.promoted, %i.c, !dbg !197523
  br i1 %.not10, label %._crit_edge14, label %.lr.ph, !dbg !197505

._crit_edge14:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !197524
  br label %._crit_edge, !dbg !197505

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !197507, !noundef !3448 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted11 = load i64, ptr %i.g, align 8, !alias.scope !197507 ; 5 uses
  %i.h = add i64 %2, -8, !dbg !197505
  %i.i = sub i64 %i.h, %.promoted17, !dbg !197505 ; 2 uses
  %i.j = lshr i64 %i.i, 3, !dbg !197505
  %i.k = add nuw nsw i64 %i.j, 1, !dbg !197505    ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 232, !dbg !197505
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck, !dbg !197505

vector.memcheck:                                  ; preds = %.lr.ph
  %i.l = shl i64 %.promoted11, 2, !dbg !197505    ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.f, i64 %i.l, !dbg !197505
  %3 = add i64 %2, -8, !dbg !197505
  %4 = sub i64 %3, %.promoted17, !dbg !197505     ; 2 uses
  %i.m = lshr i64 %4, 1, !dbg !197505
  %i.n = and i64 %i.m, 9223372036854775804, !dbg !197505
  %i.o = getelementptr i8, ptr %i.f, i64 %i.l, !dbg !197505
  %i.p = getelementptr i8, ptr %i.o, i64 %i.n, !dbg !197505
  %scevgep18 = getelementptr i8, ptr %i.p, i64 4, !dbg !197505
  %i.q = and i64 %4, -8, !dbg !197505
  %i.r = getelementptr i8, ptr %.promoted, i64 %i.q, !dbg !197505
  %scevgep19 = getelementptr i8, ptr %i.r, i64 8, !dbg !197505
  %bound0 = icmp ult ptr %scevgep, %scevgep19, !dbg !197505
  %bound1 = icmp ult ptr %.promoted, %scevgep18, !dbg !197505
  %found.conflict = and i1 %bound0, %bound1, !dbg !197505
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.k, 4611686018427387900      ; 4 uses
  %i.s = add i64 %.promoted11, %n.vec             ; 2 uses
  %i.t = shl i64 %n.vec, 3
  %i.u = getelementptr i8, ptr %.promoted, i64 %i.t
  %i.v = getelementptr [4 x i8], ptr %i.f, i64 %.promoted11
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.w ; 2 uses
  %i.x = getelementptr i8, ptr %next.gep, i64 16, !dbg !197525
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !dbg !197525, !alias.scope !197511
  %wide.load20 = load <2 x i64>, ptr %i.x, align 8, !dbg !197525, !alias.scope !197511
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197512), !dbg !197526
  %i.y = trunc <2 x i64> %wide.load to <2 x i32>, !dbg !197527
  %i.z = trunc <2 x i64> %wide.load20 to <2 x i32>, !dbg !197527
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197516), !dbg !197528
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197517), !dbg !197529
  %i.aa = getelementptr [4 x i8], ptr %i.v, i64 %index, !dbg !197530 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8, !dbg !197531
  store <2 x i32> %i.y, ptr %i.aa, align 4, !dbg !197531, !alias.scope !197518, !noalias !197519
  store <2 x i32> %i.z, ptr %i.ab, align 4, !dbg !197531, !alias.scope !197518, !noalias !197519
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec, !dbg !197505
  br i1 %i.ac, label %middle.block, label %vector.body, !dbg !197505, !llvm.loop !197481

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec, !dbg !197505
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader, !dbg !197505

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.ph = phi i64 [ %.promoted11, %vector.memcheck ], [ %.promoted11, %.lr.ph ], [ %i.s, %middle.block ]
  %.ph22 = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph ], [ %i.u, %middle.block ]
  br label %scalar.ph, !dbg !197505

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.ad = phi i64 [ %i.aj, %scalar.ph ], [ %.ph, %scalar.ph.preheader ], !dbg !197525 ; 2 uses
  %i.ae = phi ptr [ %i.ag, %scalar.ph ], [ %.ph22, %scalar.ph.preheader ] ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !dbg !197525, !noundef !3448
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8, !dbg !197532 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197512), !dbg !197526
  %i.ah = trunc i64 %i.af to i32, !dbg !197527
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197516), !dbg !197528
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197517), !dbg !197529
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ad, !dbg !197530
  store i32 %i.ah, ptr %i.ai, align 4, !dbg !197531, !noalias !197507
  %i.aj = add i64 %i.ad, 1, !dbg !197533          ; 2 uses
  %.not = icmp eq ptr %i.ag, %i.c, !dbg !197523
  br i1 %.not, label %._crit_edge, label %scalar.ph, !dbg !197505, !llvm.loop !197485

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %._crit_edge14
  %.val5 = phi i64 [ %.val5.pre, %._crit_edge14 ], [ %i.s, %middle.block ], [ %i.aj, %scalar.ph ], !dbg !197524
  %.val4 = load ptr, ptr %1, align 8, !dbg !197524, !nonnull !3448, !align !3606, !noundef !3448
  store i64 %.val5, ptr %.val4, align 8, !dbg !197534
  %.val8 = load ptr, ptr %0, align 8, !dbg !197524, !alias.scope !197521, !nonnull !3448, !noundef !3448
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !197524
  %.val9 = load i64, ptr %i.ak, align 8, !dbg !197524, !alias.scope !197521, !noundef !3448
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !197535, !noalias !197522
  store i64 %.val9, ptr %i.a, align 8, !dbg !197536, !noalias !197522
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !197536
  store ptr %.val8, ptr %i.al, align 8, !dbg !197536, !noalias !197522
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecyENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !197537, !noalias !197522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !197538, !noalias !197522
  ret void, !dbg !197539
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs6_NtCse4dvU5uQ85g_8indexmap3setINtB6_8IndexSetNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratorBO_E9from_iterINtNtNtB2E_8adapters3map3MapINtNtNtB2G_5slice4iter4IterNtNtBS_9any_value8AnyValueENCINvNtNtBU_5utils9any_value23any_values_to_dtype_setRSB4E_E0EEBU_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !197540 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 24 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.d = ptrtoint ptr %2 to i64, !dbg !197659
  %i.e = ptrtoint ptr %1 to i64, !dbg !197659
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !197659
  %i.g = udiv exact i64 %i.f, 48, !dbg !197659    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !197660, !noalias !197650
  %i.h = tail call noundef i64 @_RNvNtCsk79RHlfmHDk_8foldhash4seed19gen_per_hasher_seed(), !dbg !197661, !noalias !197650 ; 2 uses
  %i.i = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCsk79RHlfmHDk_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 48) acquire, align 8, !dbg !197662, !noalias !197650
  %i.j = icmp eq i8 %i.i, 2, !dbg !197663
  br i1 %i.j, label %_RNvXs7_NtCsk79RHlfmHDk_8foldhash7qualityNtB5_11RandomStateNtNtCscgRAwXFJnXP_4core7default7Default7default.exit.i, label %bb.b, !dbg !197663, !prof !3552

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtNtCsk79RHlfmHDk_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #51, !dbg !197664, !noalias !197650
  br label %_RNvXs7_NtCsk79RHlfmHDk_8foldhash7qualityNtB5_11RandomStateNtNtCscgRAwXFJnXP_4core7default7Default7default.exit.i, !dbg !197664

_RNvXs7_NtCsk79RHlfmHDk_8foldhash7qualityNtB5_11RandomStateNtNtCscgRAwXFJnXP_4core7default7Default7default.exit.i: ; preds = %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197651), !dbg !197665
  %i.k = icmp eq ptr %2, %1, !dbg !197666
  br i1 %i.k, label %_RNvMs1_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE24with_capacity_and_hasherBT_.exit.thread.i, label %bb.c, !dbg !197666

_RNvMs1_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE24with_capacity_and_hasherBT_.exit.thread.i: ; preds = %_RNvXs7_NtCsk79RHlfmHDk_8foldhash7qualityNtB5_11RandomStateNtNtCscgRAwXFJnXP_4core7default7Default7default.exit.i
  store i64 0, ptr %i.c, align 8, !dbg !197667, !alias.scope !197651, !noalias !197650
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !197667
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !197667, !alias.scope !197651, !noalias !197650
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !197667
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !197667, !alias.scope !197651, !noalias !197650
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !197667
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) @231, i64 32, i1 false), !dbg !197667, !noalias !197650
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 56, !dbg !197667
  store i64 %i.h, ptr %i.l, align 8, !dbg !197667, !alias.scope !197651, !noalias !197650
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 48, !dbg !197668
  br label %bb.i, !dbg !197669

bb.c:                                             ; preds = %_RNvXs7_NtCsk79RHlfmHDk_8foldhash7qualityNtB5_11RandomStateNtNtCscgRAwXFJnXP_4core7default7Default7default.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !197670, !noalias !197653
  call void @_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, i64 noundef range(i64 1, 0) %i.g), !dbg !197671, !noalias !197653
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !197672, !noalias !197653
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 1, 0) %i.g, i1 noundef zeroext false, i64 noundef 16, i64 noundef 64)
          to label %bb.e unwind label %bb.d, !dbg !197672, !noalias !197653

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !197673
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef 8, i64 noundef 16)
          to label %common.resume.i unwind label %bb.h, !dbg !197674, !noalias !197653

bb.e:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.a, align 8, !dbg !197672, !range !3450, !noalias !197653, !noundef !3448
  %i.q = trunc nuw i64 %i.p to i1, !dbg !197675
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !197676
  %i.s = load i64, ptr %i.r, align 8, !dbg !197676, !range !3612, !noalias !197653, !noundef !3448 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !197676 ; 2 uses
  br i1 %i.q, label %bb.f, label %_RNvMs1_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE24with_capacity_and_hasherBT_.exit.i, !dbg !197675, !prof !3502

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.t, align 8, !dbg !197677, !noalias !197653
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.u) #48
          to label %bb.g unwind label %bb.d, !dbg !197678, !noalias !197653

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #50, !dbg !197679, !noalias !197653
  unreachable, !dbg !197679

common.resume.i:                                  ; preds = %bb.n, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.az, %bb.n ]
  resume { ptr, i32 } %common.resume.op.i, !dbg !197680

_RNvMs1_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE24with_capacity_and_hasherBT_.exit.i: ; preds = %bb.e
  %i.w = load ptr, ptr %i.t, align 8, !dbg !197681, !noalias !197653, !nonnull !3448, !noundef !3448 ; 2 uses
  %i.x = icmp ule i64 %i.g, %i.s, !dbg !197682
  tail call void @llvm.assume(i1 %i.x), !dbg !197683
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !197684, !noalias !197653
  %.sroa.6.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !197685
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx7.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !197686, !noalias !197650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !197687, !noalias !197653
  store i64 %i.s, ptr %i.c, align 8, !dbg !197685, !alias.scope !197651, !noalias !197650
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !197685
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !197685, !alias.scope !197651, !noalias !197650
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !197685
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !197685, !alias.scope !197651, !noalias !197650
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 56, !dbg !197685
  store i64 %i.h, ptr %i.y, align 8, !dbg !197685, !alias.scope !197651, !noalias !197650
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !dbg !197668, !alias.scope !197654, !noalias !197650
  %.phi.trans.insert9.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.pre10.i = load i64, ptr %.phi.trans.insert9.i, align 8, !dbg !197688, !alias.scope !197655, !noalias !197656
  %.pre.fr.i = freeze i64 %.pre.i, !dbg !197669
  %i.z = icmp eq i64 %.pre.fr.i, 0, !dbg !197669
  %i.aa = lshr i64 %i.g, 1, !dbg !197669
  %spec.select.i = select i1 %i.z, i64 0, i64 %i.aa, !dbg !197669
  br label %bb.i, !dbg !197669

bb.i:                                             ; preds = %_RNvMs1_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE24with_capacity_and_hasherBT_.exit.i, %_RNvMs1_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE24with_capacity_and_hasherBT_.exit.thread.i
  %i.ab = phi ptr [ %.phi.trans.insert.i, %_RNvMs1_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE24with_capacity_and_hasherBT_.exit.i ], [ %i.m, %_RNvMs1_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE24with_capacity_and_hasherBT_.exit.thread.i ]
  %i.ac = phi i64 [ %.pre10.i, %_RNvMs1_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE24with_capacity_and_hasherBT_.exit.i ], [ 0, %_RNvMs1_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE24with_capacity_and_hasherBT_.exit.thread.i ]
  %i.ad = phi ptr [ %i.w, %_RNvMs1_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE24with_capacity_and_hasherBT_.exit.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE24with_capacity_and_hasherBT_.exit.thread.i ]
  %i.ae = phi i64 [ %i.s, %_RNvMs1_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE24with_capacity_and_hasherBT_.exit.i ], [ 0, %_RNvMs1_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE24with_capacity_and_hasherBT_.exit.thread.i ]
  %i.af = phi i64 [ %spec.select.i, %_RNvMs1_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE24with_capacity_and_hasherBT_.exit.i ], [ 0, %_RNvMs1_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE24with_capacity_and_hasherBT_.exit.thread.i ], !dbg !197669
  %.sroa.0.0.i.i = sub nuw nsw i64 %i.g, %i.af, !dbg !197669 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !197689 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 40, !dbg !197688
  %i.ai = icmp ugt i64 %.sroa.0.0.i.i, %i.ac, !dbg !197690
  br i1 %i.ai, label %bb.j, label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCse4dvU5uQ85g_8indexmap5inner8get_hashNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuE0EB1O_.exit.i.i.i, !dbg !197691, !prof !3502

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !197692
  %i.ak = invoke { i64, i64 } @_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCse4dvU5uQ85g_8indexmap5inner8get_hashNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuE0EB1W_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aj, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %i.ad, i64 noundef 0, i1 noundef zeroext true)
          to label %.noexc.i unwind label %bb.n, !dbg !197693, !noalias !197650 ; 0 uses

.noexc.i:                                         ; preds = %bb.j
  %.pre11.i = load i64, ptr %i.c, align 8, !dbg !197694, !range !3834, !alias.scope !197657, !noalias !197650
  %.pre12.i = load i64, ptr %i.ag, align 8, !dbg !197695, !alias.scope !197657, !noalias !197650
  br label %_RINvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCse4dvU5uQ85g_8indexmap5inner8get_hashNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeuE0EB1O_.exit.i.i.i, !dbg !197696
end_hunk_1
