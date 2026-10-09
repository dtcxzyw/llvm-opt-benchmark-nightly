Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_nn-a379132c9889b806.candle_nn.2c40c590752a5884-cgu.12?download=true
inline.NumInlined: 223
inline.NumDeleted: 107
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RINvNtCsltEA4u8Pgfu_11candle_core5utils15call_trampolineNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal18causal_prefill_f320EB12_:bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsltEA4u8Pgfu_11candle_core5utils15call_trampolineNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal22causal_decode_f32_lean0EB12_(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal22causal_decode_f32_lean0B9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %0, i64 noundef %1) #23
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsltEA4u8Pgfu_11candle_core5utils15call_trampolineNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal23causal_prefill_f32_lean0EB12_(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal23causal_prefill_f32_lean0B9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0, i64 noundef %1) #23
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsltEA4u8Pgfu_11candle_core5utils15call_trampolineNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal29causal_decode_f32_interleaved0EB12_(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal29causal_decode_f32_interleaved0B9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, i64 noundef %1) #23
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsltEA4u8Pgfu_11candle_core5utils15call_trampolineNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal34causal_decode_f32_interleaved_gqa20EB12_(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal34causal_decode_f32_interleaved_gqa20B9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, i64 noundef %1) #23
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal17causal_decode_f320B9_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0, i64 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !9, !noundef !5
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !9, !noundef !5
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = mul i64 %i.c, %1
  %i.i = udiv i64 %i.h, %i.f                      ; 2 uses
  %i.j = add i64 %1, 1
  %i.k = mul i64 %i.c, %i.j
  %i.l = udiv i64 %i.k, %i.f                      ; 2 uses
  %.not = icmp ult i64 %i.i, %i.l
  br i1 %.not, label %.split129, label %.loopexit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #28
  unreachable

.split129:                                        ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !align !9, !noundef !5
  %i.o = load i64, ptr %i.n, align 8, !noundef !5
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !align !9, !noundef !5 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !noundef !5 ; 14 uses
  %i.t = mul i64 %i.s, %1
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.t ; 11 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5, !align !9, !noundef !5
  %i.x = load i64, ptr %i.w, align 8, !noundef !5
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = mul i64 %i.s, %i.c                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !5, !align !9, !noundef !5
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !5
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !noundef !5 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !5
  %i.ak = mul i64 %i.aj, %i.ag                    ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !5, !align !9, !noundef !5
  %i.an = load i64, ptr %i.am, align 8, !noundef !5
  %i.ao = inttoptr i64 %i.an to ptr               ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !5
  %i.as = mul i64 %i.ar, %i.ag                    ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !5, !align !9, !noundef !5
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !5, !align !16, !noundef !5
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !5, !align !9, !noundef !5
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !5, !align !9, !noundef !5
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !5, !align !9
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !5, !align !16
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !5
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !5, !align !16
  %.idx = shl i64 %i.s, 2                         ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx
  %i.bk = icmp eq i64 %i.s, 0
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.s
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bp = add i64 %.idx, -4                       ; 2 uses
  %i.bq = lshr exact i64 %i.bp, 2
  %i.br = add nuw nsw i64 %i.bq, 1                ; 2 uses
  %min.iters.check352 = icmp ult i64 %i.bp, 28
  %n.vec354 = and i64 %i.br, 9223372036854775800  ; 3 uses
  %i.bs = shl i64 %n.vec354, 2
  %i.bt = getelementptr i8, ptr %i.u, i64 %i.bs
  %cmp.n363 = icmp eq i64 %i.br, %n.vec354
  br label %bb.d

bb.d:                                             ; preds = %.split129, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit
  %.sroa.010.0130 = phi i64 [ %i.i, %.split129 ], [ %i.bu, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit ] ; 4 uses
  %i.bu = add nuw i64 %.sroa.010.0130, 1          ; 4 uses
  %i.bv = load i64, ptr %i.au, align 8, !noundef !5
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = load i64, ptr %i.r, align 8, !noundef !5 ; 10 uses
  %i.by = mul i64 %i.bx, %.sroa.010.0130          ; 4 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.by ; 3 uses
  %i.ca = load float, ptr %i.aw, align 4, !noundef !5
  %i.cb = fneg float %i.ca
  %i.cc = uitofp i64 %i.bu to float
  %i.cd = fmul float %i.cc, %i.cb
  %i.ce = load i64, ptr %i.ay, align 8, !noundef !5
  %i.cf = uitofp i64 %i.ce to float
  %i.cg = fdiv float %i.cd, %i.cf
  %exp2 = tail call float @llvm.exp2.f32(float %i.cg)
  %i.ch = load i64, ptr %i.ba, align 8, !noundef !5 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.f, label %bb.e

.loopexit:                                        ; preds = %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit, %bb.b
  ret void

bb.e:                                             ; preds = %bb.d
  %i.cj = udiv i64 %.sroa.010.0130, %i.ch
  %i.ck = mul i64 %i.cj, %i.bx
  %i.cl = load i64, ptr %i.bc, align 8, !noundef !5 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #28
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.cn = udiv i64 %.sroa.010.0130, %i.cl
  %i.co = mul i64 %i.cn, %i.bx
  %i.cp = mul i64 %i.bx, %i.bu                    ; 3 uses
  %i.cq = icmp ult i64 %i.cp, %i.by
  %.not32 = icmp ugt i64 %i.cp, %i.z
  %or.cond34 = or i1 %i.cq, %.not32
  br i1 %or.cond34, label %bb.i, label %.split, !prof !17

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #28
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.by, i64 noundef %i.cp, i64 noundef %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #28
  unreachable

.split:                                           ; preds = %bb.g
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.by ; 5 uses
  tail call void @_RNvXs_NtNtCsf3Ta7LF998c_4core5slice10specializeSfINtB4_8SpecFillfE9spec_fillCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 4 %i.u, i64 noundef %i.s, float noundef 0.000000e+00)
  %i.cs = load i64, ptr %i.af, align 8, !noundef !5 ; 2 uses
  %.not132 = icmp eq i64 %i.cs, 0
  br i1 %.not132, label %._crit_edge127, label %.lr.ph126

.lr.ph126:                                        ; preds = %.split
  %.not133 = icmp eq i64 %i.bx, 0
  %xtraiter = and i64 %i.bx, 3                    ; 3 uses
  %i.ct = icmp ult i64 %i.bx, 4
  %unroll_iter = and i64 %i.bx, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod442 = icmp ne i64 %xtraiter, 0
  br label %bb.j

._crit_edge127:                                   ; preds = %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6causal17causal_decode_f3200EB8_.exit, %.split
  %.sroa.046.0.lcssa = phi float [ 0.000000e+00, %.split ], [ %.sroa.046.1, %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6causal17causal_decode_f3200EB8_.exit ] ; 2 uses
  %i.cu = fcmp ogt float %.sroa.046.0.lcssa, 0.000000e+00
  %i.cv = fdiv float 1.000000e+00, %.sroa.046.0.lcssa
  %.sroa.09.0 = select i1 %i.cu, float %i.cv, float 0.000000e+00 ; 4 uses
  tail call void @_RNvXs_NtNtCsf3Ta7LF998c_4core5slice10specializeSfINtB4_8SpecFillfE9spec_fillCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 4 %i.bz, i64 noundef %i.bx, float noundef 0.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bx
  call void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E3newCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.bz, ptr noundef nonnull %i.cw, ptr noundef nonnull readonly align 4 %i.u, ptr noundef nonnull readonly %i.bl)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  %.val.i = load i64, ptr %i.bm, align 8, !alias.scope !197, !noundef !5 ; 9 uses
  %.val6.i = load i64, ptr %i.bn, align 8, !alias.scope !197, !noundef !5 ; 5 uses
  %i.cx = sub i64 %.val6.i, %.val.i               ; 4 uses
  %.not.i = icmp eq i64 %.val6.i, %.val.i
  br i1 %.not.i, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge127
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !198, !nonnull !5, !noundef !5 ; 6 uses
  %.val1.i.i = load ptr, ptr %i.bo, align 8, !alias.scope !198, !nonnull !5, !noundef !5 ; 6 uses
  %min.iters.check = icmp ult i64 %i.cx, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.cy = shl i64 %.val.i, 2                      ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %.val.i.i, i64 %i.cy
  %i.cz = shl i64 %.val6.i, 2                     ; 2 uses
  %scevgep332 = getelementptr i8, ptr %.val.i.i, i64 %i.cz
  %scevgep333 = getelementptr nuw i8, ptr %.val1.i.i, i64 %i.cy
  %scevgep334 = getelementptr i8, ptr %.val1.i.i, i64 %i.cz
  %bound0 = icmp ult ptr %scevgep, %scevgep334
  %bound1 = icmp ult ptr %scevgep333, %scevgep332
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cx, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.09.0, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.da = add i64 %index, %.val.i                 ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.da ; 3 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i, i64 %i.da ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %wide.load = load <4 x float>, ptr %i.dc, align 4, !alias.scope !199, !noalias !197
  %wide.load335 = load <4 x float>, ptr %i.dd, align 4, !alias.scope !199, !noalias !197
  %i.de = fmul <4 x float> %broadcast.splat, %wide.load
  %i.df = fmul <4 x float> %broadcast.splat, %wide.load335
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %wide.load336 = load <4 x float>, ptr %i.db, align 4, !alias.scope !200, !noalias !201
  %wide.load337 = load <4 x float>, ptr %i.dg, align 4, !alias.scope !200, !noalias !201
  %i.dh = fadd <4 x float> %wide.load336, %i.de
  %i.di = fadd <4 x float> %wide.load337, %i.df
  store <4 x float> %i.dh, ptr %i.db, align 4, !alias.scope !200, !noalias !201
  store <4 x float> %i.di, ptr %i.dg, align 4, !alias.scope !200, !noalias !201
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dj = icmp eq i64 %index.next, %n.vec
  br i1 %i.dj, label %middle.block, label %vector.body, !llvm.loop !177

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cx, %n.vec
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.sroa.0.010.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 4 uses
  %2 = sub i64 %.val6.i, %.val.i
  %i.dk = xor i64 %.sroa.0.010.i.ph, -1
  %i.dl = add i64 %.val6.i, %i.dk
  %xtraiter443 = and i64 %2, 1
  %lcmp.mod444.not = icmp eq i64 %xtraiter443, 0
  br i1 %lcmp.mod444.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dm = or disjoint i64 %.sroa.0.010.i.ph, 1
  %i.dn = add i64 %.sroa.0.010.i.ph, %.val.i      ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i, i64 %i.dn
  %.val8.i.prol = load float, ptr %i.dp, align 4, !noalias !197, !noundef !5
  %i.dq = fmul float %.sroa.09.0, %.val8.i.prol
  %i.dr = load float, ptr %i.do, align 4, !alias.scope !202, !noalias !197, !noundef !5
  %i.ds = fadd float %i.dr, %i.dq
  store float %i.ds, ptr %i.do, align 4, !alias.scope !202, !noalias !197
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.010.i.unr = phi i64 [ %.sroa.0.010.i.ph, %scalar.ph.preheader ], [ %i.dm, %scalar.ph.prol ]
  %i.dt = icmp eq i64 %i.dl, %.val.i
  br i1 %i.dt, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.010.i = phi i64 [ %.sroa.0.010.i.unr, %scalar.ph.preheader.new ], [ %i.ea, %scalar.ph ] ; 3 uses
  %i.du = add i64 %.sroa.0.010.i, %.val.i         ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.du ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i, i64 %i.du
  %.val8.i = load float, ptr %i.dw, align 4, !noalias !197, !noundef !5
  %i.dx = fmul float %.sroa.09.0, %.val8.i
  %i.dy = load float, ptr %i.dv, align 4, !alias.scope !202, !noalias !197, !noundef !5
  %i.dz = fadd float %i.dy, %i.dx
  store float %i.dz, ptr %i.dv, align 4, !alias.scope !202, !noalias !197
  %i.ea = add nuw i64 %.sroa.0.010.i, 2           ; 2 uses
  %.reass = add i64 %.sroa.0.010.i, %invariant.op ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %.reass ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i, i64 %.reass
  %.val8.i.1 = load float, ptr %i.ec, align 4, !noalias !197, !noundef !5
  %i.ed = fmul float %.sroa.09.0, %.val8.i.1
  %i.ee = load float, ptr %i.eb, align 4, !alias.scope !202, !noalias !197, !noundef !5
  %i.ef = fadd float %i.ee, %i.ed
  store float %i.ef, ptr %i.eb, align 4, !alias.scope !202, !noalias !197
  %exitcond.not.i.1 = icmp eq i64 %i.ea, %i.cx
  br i1 %exitcond.not.i.1, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit, label %scalar.ph, !llvm.loop !178

_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.eg = icmp ult i64 %i.bu, %i.l
  br i1 %i.eg, label %bb.d, label %.loopexit

bb.j:                                             ; preds = %.lr.ph126, %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6causal17causal_decode_f3200EB8_.exit
  %.sroa.013.0125 = phi i64 [ 0, %.lr.ph126 ], [ %i.eh, %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6causal17causal_decode_f3200EB8_.exit ] ; 4 uses
  %.sroa.0.0124 = phi float [ -inf, %.lr.ph126 ], [ %.sroa.0.1, %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6causal17causal_decode_f3200EB8_.exit ] ; 4 uses
  %.sroa.046.0123 = phi float [ 0.000000e+00, %.lr.ph126 ], [ %.sroa.046.1, %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6causal17causal_decode_f3200EB8_.exit ] ; 2 uses
  %i.eh = add nuw i64 %.sroa.013.0125, 1          ; 3 uses
  %i.ei = uitofp i64 %.sroa.013.0125 to float
  %i.ej = load i64, ptr %i.af, align 8, !noundef !5 ; 2 uses
  %i.ek = add i64 %i.ej, -1
  %i.el = uitofp i64 %i.ek to float
  %i.em = fsub nnan float %i.ei, %i.el
  %i.en = fmul float %exp2, %i.em
  %i.eo = load i64, ptr %i.ai, align 8, !noundef !5 ; 2 uses
  %i.ep = mul i64 %i.eo, %.sroa.013.0125
  %i.eq = add i64 %i.ep, %i.ck                    ; 5 uses
  %i.er = load i64, ptr %i.r, align 8, !noundef !5 ; 10 uses
  %i.es = add i64 %i.eq, %i.er                    ; 3 uses
  %i.et = icmp uge i64 %i.es, %i.eq
  %i.eu = icmp ule i64 %i.es, %i.ak
  %or.cond = and i1 %i.et, %i.eu
  br i1 %or.cond, label %bb.l, label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.eq, i64 noundef %i.es, i64 noundef %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #28
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.eq ; 5 uses
  %i.ew = icmp ult i64 %i.eh, %i.ej               ; 2 uses
  br i1 %i.ew, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ex = add i64 %i.eq, %i.eo                    ; 3 uses
  %i.ey = icmp ugt i64 %i.ex, %i.ak
  br i1 %i.ey, label %bb.p, label %bb.o, !prof !8

bb.n:                                             ; preds = %bb.l, %bb.o
  br i1 %.not133, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.n
  br i1 %i.ct, label %.lr.ph.epil.preheader, label %.lr.ph

bb.o:                                             ; preds = %bb.m
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ex
  tail call void @llvm.prefetch.p0(ptr readonly %i.ez, i32 0, i32 3, i32 1)
  br label %bb.n

bb.p:                                             ; preds = %bb.m
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ex, i64 noundef %i.ak, i64 noundef %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #28
  unreachable

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.04.0118.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.gm, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.015.0117.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.gg, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod442)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.04.0118.epil = phi float [ %i.fg, %.lr.ph.epil ], [ %.sroa.04.0118.epil.init, %.lr.ph.epil.preheader ]
  %.sroa.015.0117.epil = phi i64 [ %i.fa, %.lr.ph.epil ], [ %.sroa.015.0117.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.fa = add nuw i64 %.sroa.015.0117.epil, 1
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %.sroa.015.0117.epil
  %i.fc = load float, ptr %i.fb, align 4, !noundef !5
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.sroa.015.0117.epil
  %i.fe = load float, ptr %i.fd, align 4, !noundef !5
  %i.ff = fmul float %i.fc, %i.fe
  %i.fg = fadd float %.sroa.04.0118.epil, %i.ff   ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !179

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.n
  %.sroa.04.0.lcssa = phi float [ 0.000000e+00, %bb.n ], [ %i.gm, %._crit_edge.loopexit.unr-lcssa ], [ %i.fg, %.lr.ph.epil ]
  %i.fh = load float, ptr %i.be, align 4, !noundef !5
  %i.fi = fmul float %.sroa.04.0.lcssa, %i.fh     ; 2 uses
  %i.fj = load i8, ptr %i.bg, align 1, !range !10, !noundef !5
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.r, label %bb.q

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.04.0118 = phi float [ %i.gm, %.lr.ph ], [ 0.000000e+00, %.lr.ph.preheader ]
  %.sroa.015.0117 = phi i64 [ %i.gg, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.fl = or disjoint i64 %.sroa.015.0117, 1      ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %.sroa.015.0117
  %i.fn = load float, ptr %i.fm, align 4, !noundef !5
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.sroa.015.0117
  %i.fp = load float, ptr %i.fo, align 4, !noundef !5
  %i.fq = fmul float %i.fn, %i.fp
  %i.fr = fadd float %.sroa.04.0118, %i.fq
  %i.fs = or disjoint i64 %.sroa.015.0117, 2      ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.fl
  %i.fu = load float, ptr %i.ft, align 4, !noundef !5
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.fl
  %i.fw = load float, ptr %i.fv, align 4, !noundef !5
  %i.fx = fmul float %i.fu, %i.fw
  %i.fy = fadd float %i.fr, %i.fx
  %i.fz = or disjoint i64 %.sroa.015.0117, 3      ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.fs
  %i.gb = load float, ptr %i.ga, align 4, !noundef !5
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.fs
  %i.gd = load float, ptr %i.gc, align 4, !noundef !5
  %i.ge = fmul float %i.gb, %i.gd
  %i.gf = fadd float %i.fy, %i.ge
  %i.gg = add nuw i64 %.sroa.015.0117, 4          ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.fz
  %i.gi = load float, ptr %i.gh, align 4, !noundef !5
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.fz
  %i.gk = load float, ptr %i.gj, align 4, !noundef !5
  %i.gl = fmul float %i.gi, %i.gk
  %i.gm = fadd float %i.gf, %i.gl                 ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.q:                                             ; preds = %bb.r, %._crit_edge
  %.sroa.04.1 = phi float [ %i.gv, %bb.r ], [ %i.fi, %._crit_edge ]
  %i.gn = fadd float %i.en, %.sroa.04.1           ; 5 uses
  %i.go = load i64, ptr %i.aq, align 8, !noundef !5 ; 2 uses
  %i.gp = mul i64 %i.go, %.sroa.013.0125
  %i.gq = add i64 %i.gp, %i.co                    ; 5 uses
  %i.gr = add i64 %i.gq, %i.er                    ; 3 uses
  %i.gs = icmp ult i64 %i.gr, %i.gq
  %.not33 = icmp ugt i64 %i.gr, %i.as
  %or.cond35 = or i1 %i.gs, %.not33
  br i1 %or.cond35, label %bb.s, label %bb.t, !prof !17

bb.r:                                             ; preds = %._crit_edge
  %i.gt = load float, ptr %i.bi, align 4, !noundef !5
  %i.gu = tail call noundef float @tanhf(float noundef %i.fi) #29
  %i.gv = fmul float %i.gt, %i.gu
  br label %bb.q

bb.s:                                             ; preds = %bb.q
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.gq, i64 noundef %i.gr, i64 noundef %i.as, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #28
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.gq ; 4 uses
  br i1 %i.ew, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.gx = add i64 %i.gq, %i.go                    ; 3 uses
  %i.gy = icmp ugt i64 %i.gx, %i.as
  br i1 %i.gy, label %bb.af, label %bb.ae, !prof !8

end_hunk_0
begin_hunk_1_@_RNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal18causal_prefill_f320B9_:bb.a
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !nonnull !5, !align !9, !noundef !5
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 2 uses
  %i.h = mul i64 %i.g, %1
  %i.i = udiv i64 %i.h, %i.d                      ; 2 uses
  %i.j = add i64 %1, 1
  %i.k = mul i64 %i.g, %i.j
  %i.l = udiv i64 %i.k, %i.d                      ; 2 uses
  %.not = icmp ult i64 %i.i, %i.l
  br i1 %.not, label %.split134, label %.loopexit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #28
  unreachable

.split134:                                        ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !align !9, !noundef !5
  %i.o = load i64, ptr %i.n, align 8, !noundef !5
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !align !9, !noundef !5 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !noundef !5 ; 14 uses
  %i.t = mul i64 %i.s, %1
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.t ; 11 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5, !align !9, !noundef !5
  %i.x = load i64, ptr %i.w, align 8, !noundef !5
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !5, !align !9, !noundef !5
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !5
  %i.af = mul i64 %i.ab, %i.s
  %i.ag = mul i64 %i.af, %i.ae                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !5, !align !9, !noundef !5
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !5
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !5 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !5
  %i.ar = mul i64 %i.aq, %i.an                    ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !5, !align !9, !noundef !5
  %i.au = load i64, ptr %i.at, align 8, !noundef !5
  %i.av = inttoptr i64 %i.au to ptr               ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !5
  %i.az = mul i64 %i.ay, %i.an                    ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !5, !align !9, !noundef !5
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !5, !align !16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !5, !align !9
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bh = load ptr, ptr %i.bg, align 8, !nonnull !5, !align !9
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !5, !align !9
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !5, !align !9
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !5, !align !9 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !5, !align !16
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !5
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !5, !align !16
  %.idx = shl i64 %i.s, 2                         ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx
  %i.bv = icmp eq i64 %i.s, 0
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.s
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ca = add i64 %.idx, -4                       ; 2 uses
  %i.cb = lshr exact i64 %i.ca, 2
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 2 uses
  %min.iters.check352 = icmp ult i64 %i.ca, 28
  %n.vec354 = and i64 %i.cc, 9223372036854775800  ; 3 uses
  %i.cd = shl i64 %n.vec354, 2
  %i.ce = getelementptr i8, ptr %i.u, i64 %i.cd
  %cmp.n363 = icmp eq i64 %i.cc, %n.vec354
  br label %bb.d

bb.d:                                             ; preds = %.split134, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit
  %.sroa.012.0135 = phi i64 [ %i.i, %.split134 ], [ %i.cf, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit ] ; 4 uses
  %i.cf = add nuw i64 %.sroa.012.0135, 1          ; 2 uses
  %i.cg = load i64, ptr %i.bb, align 8, !noundef !5
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = load i64, ptr %i.r, align 8, !noundef !5 ; 11 uses
  %i.cj = mul i64 %i.ci, %.sroa.012.0135
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.cj ; 3 uses
  %i.cl = load i64, ptr %i.aa, align 8, !noundef !5 ; 3 uses
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.f, label %bb.e

.loopexit:                                        ; preds = %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit, %bb.b
  ret void

bb.e:                                             ; preds = %bb.d
  %i.cn = udiv i64 %.sroa.012.0135, %i.cl         ; 4 uses
  %i.co = urem i64 %.sroa.012.0135, %i.cl         ; 3 uses
  %i.cp = load float, ptr %i.bd, align 4, !noundef !5 ; 2 uses
  %i.cq = fcmp ogt float %i.cp, 0.000000e+00
  br i1 %i.cq, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #28
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.cr = fneg float %i.cp
  %i.cs = add nuw i64 %i.cn, 1
  %i.ct = uitofp i64 %i.cs to float
  %i.cu = fmul float %i.ct, %i.cr
  %i.cv = load i64, ptr %i.bf, align 8, !noundef !5
  %i.cw = uitofp i64 %i.cv to float
  %i.cx = fdiv float %i.cu, %i.cw
  %exp2 = tail call float @llvm.exp2.f32(float %i.cx)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.sroa.02.0 = phi float [ %exp2, %bb.g ], [ 0.000000e+00, %bb.e ]
  %i.cy = load i64, ptr %i.bh, align 8, !noundef !5 ; 2 uses
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.da = udiv i64 %i.cn, %i.cy
  %i.db = mul i64 %i.da, %i.ci
  %i.dc = load i64, ptr %i.bj, align 8, !noundef !5 ; 2 uses
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #28
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.de = udiv i64 %i.cn, %i.dc
  %i.df = mul i64 %i.de, %i.ci
  %i.dg = load i64, ptr %i.bl, align 8, !noundef !5
  %i.dh = mul i64 %i.dg, %i.co
  %i.di = mul i64 %i.cn, %i.ci
  %i.dj = add i64 %i.dh, %i.di                    ; 4 uses
  %i.dk = add i64 %i.dj, %i.ci                    ; 3 uses
  %i.dl = icmp ult i64 %i.dk, %i.dj
  %.not37 = icmp ugt i64 %i.dk, %i.ag
  %or.cond39 = or i1 %i.dl, %.not37
  br i1 %or.cond39, label %bb.m, label %.split, !prof !17

bb.l:                                             ; preds = %bb.i
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #28
  unreachable

bb.m:                                             ; preds = %bb.k
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.dj, i64 noundef %i.dk, i64 noundef %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #28
  unreachable

.split:                                           ; preds = %bb.k
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.dj ; 5 uses
  tail call void @_RNvXs_NtNtCsf3Ta7LF998c_4core5slice10specializeSfINtB4_8SpecFillfE9spec_fillCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 4 %i.u, i64 noundef %i.s, float noundef 0.000000e+00)
  %i.dn = load i64, ptr %i.bn, align 8, !noundef !5
  %i.do = add nuw i64 %i.co, 1
  %i.dp = add i64 %i.do, %i.dn
  %i.dq = load i64, ptr %i.am, align 8, !noundef !5
  %i.dr = tail call i64 @llvm.umin.i64(i64 %i.dp, i64 %i.dq) ; 2 uses
  %.not137 = icmp eq i64 %i.dr, 0
  br i1 %.not137, label %._crit_edge132, label %.lr.ph131

.lr.ph131:                                        ; preds = %.split
  %.not138 = icmp eq i64 %i.ci, 0
  %xtraiter = and i64 %i.ci, 3                    ; 3 uses
  %i.ds = icmp ult i64 %i.ci, 4
  %unroll_iter = and i64 %i.ci, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod440 = icmp ne i64 %xtraiter, 0
  br label %bb.n

._crit_edge132:                                   ; preds = %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6causal18causal_prefill_f3200EB8_.exit, %.split
  %.sroa.051.0.lcssa = phi float [ 0.000000e+00, %.split ], [ %.sroa.051.1, %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6causal18causal_prefill_f3200EB8_.exit ] ; 2 uses
  %i.dt = fcmp ogt float %.sroa.051.0.lcssa, 0.000000e+00
  %i.du = fdiv float 1.000000e+00, %.sroa.051.0.lcssa
  %.sroa.011.0 = select i1 %i.dt, float %i.du, float 0.000000e+00 ; 4 uses
  tail call void @_RNvXs_NtNtCsf3Ta7LF998c_4core5slice10specializeSfINtB4_8SpecFillfE9spec_fillCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 4 %i.ck, i64 noundef %i.ci, float noundef 0.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.ci
  call void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E3newCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.ck, ptr noundef nonnull %i.dv, ptr noundef nonnull readonly align 4 %i.u, ptr noundef nonnull readonly %i.bw)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %.val.i = load i64, ptr %i.bx, align 8, !alias.scope !242, !noundef !5 ; 9 uses
  %.val6.i = load i64, ptr %i.by, align 8, !alias.scope !242, !noundef !5 ; 5 uses
  %i.dw = sub i64 %.val6.i, %.val.i               ; 4 uses
  %.not.i = icmp eq i64 %.val6.i, %.val.i
  br i1 %.not.i, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge132
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !243, !nonnull !5, !noundef !5 ; 6 uses
  %.val1.i.i = load ptr, ptr %i.bz, align 8, !alias.scope !243, !nonnull !5, !noundef !5 ; 6 uses
  %min.iters.check = icmp ult i64 %i.dw, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.dx = shl i64 %.val.i, 2                      ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %.val.i.i, i64 %i.dx
  %i.dy = shl i64 %.val6.i, 2                     ; 2 uses
  %scevgep332 = getelementptr i8, ptr %.val.i.i, i64 %i.dy
  %scevgep333 = getelementptr nuw i8, ptr %.val1.i.i, i64 %i.dx
  %scevgep334 = getelementptr i8, ptr %.val1.i.i, i64 %i.dy
  %bound0 = icmp ult ptr %scevgep, %scevgep334
  %bound1 = icmp ult ptr %scevgep333, %scevgep332
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dw, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.011.0, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dz = add i64 %index, %.val.i                 ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.dz ; 3 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i, i64 %i.dz ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %wide.load = load <4 x float>, ptr %i.eb, align 4, !alias.scope !244, !noalias !242
  %wide.load335 = load <4 x float>, ptr %i.ec, align 4, !alias.scope !244, !noalias !242
  %i.ed = fmul <4 x float> %broadcast.splat, %wide.load
  %i.ee = fmul <4 x float> %broadcast.splat, %wide.load335
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %wide.load336 = load <4 x float>, ptr %i.ea, align 4, !alias.scope !245, !noalias !246
  %wide.load337 = load <4 x float>, ptr %i.ef, align 4, !alias.scope !245, !noalias !246
  %i.eg = fadd <4 x float> %wide.load336, %i.ed
  %i.eh = fadd <4 x float> %wide.load337, %i.ee
  store <4 x float> %i.eg, ptr %i.ea, align 4, !alias.scope !245, !noalias !246
  store <4 x float> %i.eh, ptr %i.ef, align 4, !alias.scope !245, !noalias !246
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ei = icmp eq i64 %index.next, %n.vec
  br i1 %i.ei, label %middle.block, label %vector.body, !llvm.loop !222

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dw, %n.vec
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.sroa.0.010.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 4 uses
  %2 = sub i64 %.val6.i, %.val.i
  %i.ej = xor i64 %.sroa.0.010.i.ph, -1
  %i.ek = add i64 %.val6.i, %i.ej
  %xtraiter441 = and i64 %2, 1
  %lcmp.mod442.not = icmp eq i64 %xtraiter441, 0
  br i1 %lcmp.mod442.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.el = or disjoint i64 %.sroa.0.010.i.ph, 1
  %i.em = add i64 %.sroa.0.010.i.ph, %.val.i      ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.em ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i, i64 %i.em
  %.val8.i.prol = load float, ptr %i.eo, align 4, !noalias !242, !noundef !5
  %i.ep = fmul float %.sroa.011.0, %.val8.i.prol
  %i.eq = load float, ptr %i.en, align 4, !alias.scope !247, !noalias !242, !noundef !5
  %i.er = fadd float %i.eq, %i.ep
  store float %i.er, ptr %i.en, align 4, !alias.scope !247, !noalias !242
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.010.i.unr = phi i64 [ %.sroa.0.010.i.ph, %scalar.ph.preheader ], [ %i.el, %scalar.ph.prol ]
  %i.es = icmp eq i64 %i.ek, %.val.i
  br i1 %i.es, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.010.i = phi i64 [ %.sroa.0.010.i.unr, %scalar.ph.preheader.new ], [ %i.ez, %scalar.ph ] ; 3 uses
  %i.et = add i64 %.sroa.0.010.i, %.val.i         ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.et ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i, i64 %i.et
  %.val8.i = load float, ptr %i.ev, align 4, !noalias !242, !noundef !5
  %i.ew = fmul float %.sroa.011.0, %.val8.i
  %i.ex = load float, ptr %i.eu, align 4, !alias.scope !247, !noalias !242, !noundef !5
  %i.ey = fadd float %i.ex, %i.ew
  store float %i.ey, ptr %i.eu, align 4, !alias.scope !247, !noalias !242
  %i.ez = add nuw i64 %.sroa.0.010.i, 2           ; 2 uses
  %.reass = add i64 %.sroa.0.010.i, %invariant.op ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %.reass ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i, i64 %.reass
  %.val8.i.1 = load float, ptr %i.fb, align 4, !noalias !242, !noundef !5
  %i.fc = fmul float %.sroa.011.0, %.val8.i.1
  %i.fd = load float, ptr %i.fa, align 4, !alias.scope !247, !noalias !242, !noundef !5
  %i.fe = fadd float %i.fd, %i.fc
  store float %i.fe, ptr %i.fa, align 4, !alias.scope !247, !noalias !242
  %exitcond.not.i.1 = icmp eq i64 %i.ez, %i.dw
  br i1 %exitcond.not.i.1, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit, label %scalar.ph, !llvm.loop !223

_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ff = icmp ult i64 %i.cf, %i.l
  br i1 %i.ff, label %bb.d, label %.loopexit

bb.n:                                             ; preds = %.lr.ph131, %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6causal18causal_prefill_f3200EB8_.exit
  %.sroa.015.0130 = phi i64 [ 0, %.lr.ph131 ], [ %i.fg, %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6causal18causal_prefill_f3200EB8_.exit ] ; 4 uses
  %.sroa.0.0129 = phi float [ -inf, %.lr.ph131 ], [ %.sroa.0.1, %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6causal18causal_prefill_f3200EB8_.exit ] ; 4 uses
  %.sroa.051.0128 = phi float [ 0.000000e+00, %.lr.ph131 ], [ %.sroa.051.1, %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6causal18causal_prefill_f3200EB8_.exit ] ; 2 uses
  %i.fg = add nuw i64 %.sroa.015.0130, 1          ; 2 uses
  %i.fh = load float, ptr %i.bd, align 4, !noundef !5
  %i.fi = fcmp ogt float %i.fh, 0.000000e+00
  br i1 %i.fi, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fj = load i64, ptr %i.bn, align 8, !noundef !5
  %i.fk = add i64 %i.co, %i.fj
  %i.fl = sub i64 %.sroa.015.0130, %i.fk
  %i.fm = sitofp i64 %i.fl to float
  %i.fn = fmul float %.sroa.02.0, %i.fm
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.sroa.05.0 = phi float [ %i.fn, %bb.o ], [ 0.000000e+00, %bb.n ]
  %i.fo = load i64, ptr %i.ap, align 8, !noundef !5 ; 2 uses
  %i.fp = mul i64 %i.fo, %.sroa.015.0130
  %i.fq = add i64 %i.fp, %i.db                    ; 5 uses
  %i.fr = load i64, ptr %i.r, align 8, !noundef !5 ; 10 uses
  %i.fs = add i64 %i.fq, %i.fr                    ; 3 uses
  %i.ft = icmp uge i64 %i.fs, %i.fq
  %i.fu = icmp ule i64 %i.fs, %i.ar
  %or.cond = and i1 %i.ft, %i.fu
  br i1 %or.cond, label %bb.r, label %bb.q, !prof !20

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.fq, i64 noundef %i.fs, i64 noundef %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #28
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.fq ; 5 uses
  %i.fw = icmp ult i64 %i.fg, %i.dr               ; 3 uses
  br i1 %i.fw, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.u, %bb.r
  br i1 %.not138, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  br i1 %i.ds, label %.lr.ph.epil.preheader, label %.lr.ph

bb.t:                                             ; preds = %bb.r
  %i.fx = add i64 %i.fq, %i.fo                    ; 3 uses
  %i.fy = icmp ugt i64 %i.fx, %i.ar
  br i1 %i.fy, label %bb.v, label %bb.u, !prof !8

bb.u:                                             ; preds = %bb.t
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.fx
  tail call void @llvm.prefetch.p0(ptr readonly %i.fz, i32 0, i32 3, i32 1)
  br label %bb.s

bb.v:                                             ; preds = %bb.t
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.fx, i64 noundef %i.ar, i64 noundef %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #28
  unreachable

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.06.0123.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.hm, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.017.0122.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.hg, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod440)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.06.0123.epil = phi float [ %i.gg, %.lr.ph.epil ], [ %.sroa.06.0123.epil.init, %.lr.ph.epil.preheader ]
  %.sroa.017.0122.epil = phi i64 [ %i.ga, %.lr.ph.epil ], [ %.sroa.017.0122.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ga = add nuw i64 %.sroa.017.0122.epil, 1
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %.sroa.017.0122.epil
  %i.gc = load float, ptr %i.gb, align 4, !noundef !5
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %.sroa.017.0122.epil
  %i.ge = load float, ptr %i.gd, align 4, !noundef !5
  %i.gf = fmul float %i.gc, %i.ge
  %i.gg = fadd float %.sroa.06.0123.epil, %i.gf   ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !224

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.s
  %.sroa.06.0.lcssa = phi float [ 0.000000e+00, %bb.s ], [ %i.hm, %._crit_edge.loopexit.unr-lcssa ], [ %i.gg, %.lr.ph.epil ]
  %i.gh = load float, ptr %i.bp, align 4, !noundef !5
  %i.gi = fmul float %.sroa.06.0.lcssa, %i.gh     ; 2 uses
  %i.gj = load i8, ptr %i.br, align 1, !range !10, !noundef !5
  %i.gk = trunc nuw i8 %i.gj to i1
  br i1 %i.gk, label %bb.x, label %bb.w

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.06.0123 = phi float [ %i.hm, %.lr.ph ], [ 0.000000e+00, %.lr.ph.preheader ]
  %.sroa.017.0122 = phi i64 [ %i.hg, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.gl = or disjoint i64 %.sroa.017.0122, 1      ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %.sroa.017.0122
  %i.gn = load float, ptr %i.gm, align 4, !noundef !5
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %.sroa.017.0122
  %i.gp = load float, ptr %i.go, align 4, !noundef !5
  %i.gq = fmul float %i.gn, %i.gp
  %i.gr = fadd float %.sroa.06.0123, %i.gq
  %i.gs = or disjoint i64 %.sroa.017.0122, 2      ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.gl
  %i.gu = load float, ptr %i.gt, align 4, !noundef !5
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.gl
  %i.gw = load float, ptr %i.gv, align 4, !noundef !5
  %i.gx = fmul float %i.gu, %i.gw
  %i.gy = fadd float %i.gr, %i.gx
  %i.gz = or disjoint i64 %.sroa.017.0122, 3      ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.gs
  %i.hb = load float, ptr %i.ha, align 4, !noundef !5
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.gs
  %i.hd = load float, ptr %i.hc, align 4, !noundef !5
  %i.he = fmul float %i.hb, %i.hd
  %i.hf = fadd float %i.gy, %i.he
  %i.hg = add nuw i64 %.sroa.017.0122, 4          ; 2 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.gz
  %i.hi = load float, ptr %i.hh, align 4, !noundef !5
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.gz
  %i.hk = load float, ptr %i.hj, align 4, !noundef !5
  %i.hl = fmul float %i.hi, %i.hk
  %i.hm = fadd float %i.hf, %i.hl                 ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.w:                                             ; preds = %bb.x, %._crit_edge
  %.sroa.06.1 = phi float [ %i.hv, %bb.x ], [ %i.gi, %._crit_edge ]
  %i.hn = fadd float %.sroa.05.0, %.sroa.06.1     ; 5 uses
  %i.ho = load i64, ptr %i.ax, align 8, !noundef !5 ; 2 uses
  %i.hp = mul i64 %i.ho, %.sroa.015.0130
  %i.hq = add i64 %i.hp, %i.df                    ; 5 uses
  %i.hr = add i64 %i.hq, %i.fr                    ; 3 uses
  %i.hs = icmp ult i64 %i.hr, %i.hq
  %.not38 = icmp ugt i64 %i.hr, %i.az
  %or.cond40 = or i1 %i.hs, %.not38
  br i1 %or.cond40, label %bb.y, label %bb.z, !prof !17

bb.x:                                             ; preds = %._crit_edge
  %i.ht = load float, ptr %i.bt, align 4, !noundef !5
  %i.hu = tail call noundef float @tanhf(float noundef %i.gi) #29
  %i.hv = fmul float %i.ht, %i.hu
  br label %bb.w

bb.y:                                             ; preds = %bb.w
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.hq, i64 noundef %i.hr, i64 noundef %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #28
  unreachable

bb.z:                                             ; preds = %bb.w
end_hunk_1
begin_hunk_2_@_RNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal18causal_prefill_f320B9_:bb.a
  %.sroa.01.07.i46 = phi i64 [ %i.jz, %bb.ah ], [ %.sroa.01.07.i46.ph, %.lr.ph.i45.preheader380 ] ; 5 uses
  %i.jz = add nuw nsw i64 %.sroa.01.07.i46, 1     ; 2 uses
  %exitcond.not.i47 = icmp eq i64 %.sroa.01.07.i46, %i.fr
  br i1 %exitcond.not.i47, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph.i45
  %exitcond10.not.i48 = icmp eq i64 %.sroa.01.07.i46, %i.s
  br i1 %exitcond10.not.i48, label %bb.ai, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.i45
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.fr, i64 noundef %i.fr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #28, !noalias !253
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %.sroa.01.07.i46
  %i.kb = load float, ptr %i.ka, align 4, !noalias !253, !noundef !5
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.sroa.01.07.i46 ; 2 uses
  %i.kd = load float, ptr %i.kc, align 4, !alias.scope !254, !noalias !255, !noundef !5
  %i.ke = fadd float %i.kb, %i.kd
  store float %i.ke, ptr %i.kc, align 4, !alias.scope !254, !noalias !255
  %exitcond11.not.i49 = icmp eq i64 %i.jz, %i.ji
  br i1 %exitcond11.not.i49, label %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6causal18causal_prefill_f3200EB8_.exit, label %.lr.ph.i45, !llvm.loop !241

bb.ai:                                            ; preds = %bb.af
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 2305843009213693952) %i.s, i64 noundef range(i64 0, 2305843009213693952) %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #28, !noalias !253
  unreachable

_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6causal18causal_prefill_f3200EB8_.exit: ; preds = %bb.ah, %._crit_edge127, %_RNCNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal18causal_prefill_f3200Bb_.exit
  %.sroa.051.1 = phi float [ %i.iw, %_RNCNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal18causal_prefill_f3200Bb_.exit ], [ %i.jk, %._crit_edge127 ], [ %i.jk, %bb.ah ] ; 2 uses
  %.sroa.0.1 = phi float [ %.sroa.0.0129, %_RNCNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal18causal_prefill_f3200Bb_.exit ], [ %i.hn, %._crit_edge127 ], [ %i.hn, %bb.ah ]
  br i1 %i.fw, label %bb.n, label %._crit_edge132

bb.aj:                                            ; preds = %bb.z
  %i.kf = add i64 %i.hq, %i.ho                    ; 3 uses
  %i.kg = icmp ugt i64 %i.kf, %i.az
  br i1 %i.kg, label %bb.al, label %bb.ak, !prof !8

bb.ak:                                            ; preds = %bb.aj
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.kf
  tail call void @llvm.prefetch.p0(ptr readonly %i.kh, i32 0, i32 3, i32 1)
  br label %bb.aa

bb.al:                                            ; preds = %bb.aj
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.kf, i64 noundef %i.az, i64 noundef %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #28
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal22causal_decode_f32_lean0B9_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, i64 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !9, !noundef !5
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !9, !noundef !5
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = mul i64 %i.c, %1
  %i.i = udiv i64 %i.h, %i.f                      ; 2 uses
  %i.j = add i64 %1, 1
  %i.k = mul i64 %i.c, %i.j
  %i.l = udiv i64 %i.k, %i.f                      ; 2 uses
  %.not = icmp ult i64 %i.i, %i.l
  br i1 %.not, label %.split129, label %.loopexit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #28
  unreachable

.split129:                                        ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !align !9, !noundef !5
  %i.o = load i64, ptr %i.n, align 8, !noundef !5
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !align !9, !noundef !5 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !noundef !5 ; 14 uses
  %i.t = mul i64 %i.s, %1
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.t ; 11 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5, !align !9, !noundef !5
  %i.x = load i64, ptr %i.w, align 8, !noundef !5
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = mul i64 %i.s, %i.c                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !5, !align !9, !noundef !5
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !5
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !noundef !5 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !5
  %i.ak = mul i64 %i.aj, %i.ag                    ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !5, !align !9, !noundef !5
  %i.an = load i64, ptr %i.am, align 8, !noundef !5
  %i.ao = inttoptr i64 %i.an to ptr               ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !5
  %i.as = mul i64 %i.ar, %i.ag                    ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !5, !align !9, !noundef !5
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !5, !align !9, !noundef !5
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !5, !align !9
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !5, !align !16
  %.idx = shl i64 %i.s, 2                         ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx
  %i.bc = icmp eq i64 %i.s, 0
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.s
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bh = add i64 %.idx, -4                       ; 2 uses
  %i.bi = lshr exact i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check354 = icmp ult i64 %i.bh, 28
  %n.vec356 = and i64 %i.bj, 9223372036854775800  ; 3 uses
  %i.bk = shl i64 %n.vec356, 2
  %i.bl = getelementptr i8, ptr %i.u, i64 %i.bk
  %cmp.n365 = icmp eq i64 %i.bj, %n.vec356
  br label %bb.d

bb.d:                                             ; preds = %.split129, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit
  %.sroa.08.0130 = phi i64 [ %i.i, %.split129 ], [ %i.bm, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit ] ; 4 uses
  %i.bm = add nuw i64 %.sroa.08.0130, 1           ; 3 uses
  %i.bn = load i64, ptr %i.au, align 8, !noundef !5
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = load i64, ptr %i.r, align 8, !noundef !5 ; 10 uses
  %i.bq = mul i64 %i.bp, %.sroa.08.0130           ; 4 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bq ; 3 uses
  %i.bs = load i64, ptr %i.aw, align 8, !noundef !5 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.f, label %bb.e

.loopexit:                                        ; preds = %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit, %bb.b
  ret void

bb.e:                                             ; preds = %bb.d
  %i.bu = udiv i64 %.sroa.08.0130, %i.bs
  %i.bv = mul i64 %i.bu, %i.bp
  %i.bw = load i64, ptr %i.ay, align 8, !noundef !5 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #28
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.by = udiv i64 %.sroa.08.0130, %i.bw
  %i.bz = mul i64 %i.by, %i.bp
  %i.ca = mul i64 %i.bp, %i.bm                    ; 3 uses
  %i.cb = icmp ult i64 %i.ca, %i.bq
  %.not30 = icmp ugt i64 %i.ca, %i.z
  %or.cond32 = or i1 %i.cb, %.not30
  br i1 %or.cond32, label %bb.i, label %.split, !prof !17

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #28
  unreachable

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.bq, i64 noundef %i.ca, i64 noundef %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #28
  unreachable

.split:                                           ; preds = %bb.g
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bq ; 5 uses
  tail call void @_RNvXs_NtNtCsf3Ta7LF998c_4core5slice10specializeSfINtB4_8SpecFillfE9spec_fillCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 4 %i.u, i64 noundef %i.s, float noundef 0.000000e+00)
  %i.cd = load i64, ptr %i.af, align 8, !noundef !5 ; 2 uses
  %.not132 = icmp eq i64 %i.cd, 0
  br i1 %.not132, label %._crit_edge127, label %.lr.ph126

.lr.ph126:                                        ; preds = %.split
  %.not133 = icmp eq i64 %i.bp, 0
  %xtraiter = and i64 %i.bp, 3                    ; 3 uses
  %i.ce = icmp ult i64 %i.bp, 4
  %unroll_iter = and i64 %i.bp, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod444 = icmp ne i64 %xtraiter, 0
  br label %bb.j

._crit_edge127:                                   ; preds = %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6causal22causal_decode_f32_lean00EB8_.exit, %.split
  %.sroa.044.0.lcssa = phi float [ 0.000000e+00, %.split ], [ %.sroa.044.1, %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6causal22causal_decode_f32_lean00EB8_.exit ] ; 2 uses
  %i.cf = fcmp ogt float %.sroa.044.0.lcssa, 0.000000e+00
  %i.cg = fdiv float 1.000000e+00, %.sroa.044.0.lcssa
  %.sroa.07.0 = select i1 %i.cf, float %i.cg, float 0.000000e+00 ; 4 uses
  tail call void @_RNvXs_NtNtCsf3Ta7LF998c_4core5slice10specializeSfINtB4_8SpecFillfE9spec_fillCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 4 %i.br, i64 noundef %i.bp, float noundef 0.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.bp
  call void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E3newCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.br, ptr noundef nonnull %i.ch, ptr noundef nonnull readonly align 4 %i.u, ptr noundef nonnull readonly %i.bd)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %.val.i = load i64, ptr %i.be, align 8, !alias.scope !287, !noundef !5 ; 9 uses
  %.val6.i = load i64, ptr %i.bf, align 8, !alias.scope !287, !noundef !5 ; 5 uses
  %i.ci = sub i64 %.val6.i, %.val.i               ; 4 uses
  %.not.i = icmp eq i64 %.val6.i, %.val.i
  br i1 %.not.i, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge127
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !288, !nonnull !5, !noundef !5 ; 6 uses
  %.val1.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !288, !nonnull !5, !noundef !5 ; 6 uses
  %min.iters.check = icmp ult i64 %i.ci, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.cj = shl i64 %.val.i, 2                      ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %.val.i.i, i64 %i.cj
  %i.ck = shl i64 %.val6.i, 2                     ; 2 uses
  %scevgep334 = getelementptr i8, ptr %.val.i.i, i64 %i.ck
  %scevgep335 = getelementptr nuw i8, ptr %.val1.i.i, i64 %i.cj
  %scevgep336 = getelementptr i8, ptr %.val1.i.i, i64 %i.ck
  %bound0 = icmp ult ptr %scevgep, %scevgep336
  %bound1 = icmp ult ptr %scevgep335, %scevgep334
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ci, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.07.0, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cl = add i64 %index, %.val.i                 ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.cl ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i, i64 %i.cl ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %wide.load = load <4 x float>, ptr %i.cn, align 4, !alias.scope !289, !noalias !287
  %wide.load337 = load <4 x float>, ptr %i.co, align 4, !alias.scope !289, !noalias !287
  %i.cp = fmul <4 x float> %broadcast.splat, %wide.load
  %i.cq = fmul <4 x float> %broadcast.splat, %wide.load337
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %wide.load338 = load <4 x float>, ptr %i.cm, align 4, !alias.scope !290, !noalias !291
  %wide.load339 = load <4 x float>, ptr %i.cr, align 4, !alias.scope !290, !noalias !291
  %i.cs = fadd <4 x float> %wide.load338, %i.cp
  %i.ct = fadd <4 x float> %wide.load339, %i.cq
  store <4 x float> %i.cs, ptr %i.cm, align 4, !alias.scope !290, !noalias !291
  store <4 x float> %i.ct, ptr %i.cr, align 4, !alias.scope !290, !noalias !291
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !267

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ci, %n.vec
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.sroa.0.010.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 4 uses
  %2 = sub i64 %.val6.i, %.val.i
  %i.cv = xor i64 %.sroa.0.010.i.ph, -1
  %i.cw = add i64 %.val6.i, %i.cv
  %xtraiter445 = and i64 %2, 1
  %lcmp.mod446.not = icmp eq i64 %xtraiter445, 0
  br i1 %lcmp.mod446.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cx = or disjoint i64 %.sroa.0.010.i.ph, 1
  %i.cy = add i64 %.sroa.0.010.i.ph, %.val.i      ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.cy ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i, i64 %i.cy
  %.val8.i.prol = load float, ptr %i.da, align 4, !noalias !287, !noundef !5
  %i.db = fmul float %.sroa.07.0, %.val8.i.prol
  %i.dc = load float, ptr %i.cz, align 4, !alias.scope !292, !noalias !287, !noundef !5
  %i.dd = fadd float %i.dc, %i.db
  store float %i.dd, ptr %i.cz, align 4, !alias.scope !292, !noalias !287
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.010.i.unr = phi i64 [ %.sroa.0.010.i.ph, %scalar.ph.preheader ], [ %i.cx, %scalar.ph.prol ]
  %i.de = icmp eq i64 %i.cw, %.val.i
  br i1 %i.de, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.010.i = phi i64 [ %.sroa.0.010.i.unr, %scalar.ph.preheader.new ], [ %i.dl, %scalar.ph ] ; 3 uses
  %i.df = add i64 %.sroa.0.010.i, %.val.i         ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.df ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i, i64 %i.df
  %.val8.i = load float, ptr %i.dh, align 4, !noalias !287, !noundef !5
  %i.di = fmul float %.sroa.07.0, %.val8.i
  %i.dj = load float, ptr %i.dg, align 4, !alias.scope !292, !noalias !287, !noundef !5
  %i.dk = fadd float %i.dj, %i.di
  store float %i.dk, ptr %i.dg, align 4, !alias.scope !292, !noalias !287
  %i.dl = add nuw i64 %.sroa.0.010.i, 2           ; 2 uses
  %.reass = add i64 %.sroa.0.010.i, %invariant.op ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %.reass ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i, i64 %.reass
  %.val8.i.1 = load float, ptr %i.dn, align 4, !noalias !287, !noundef !5
  %i.do = fmul float %.sroa.07.0, %.val8.i.1
  %i.dp = load float, ptr %i.dm, align 4, !alias.scope !292, !noalias !287, !noundef !5
  %i.dq = fadd float %i.dp, %i.do
  store float %i.dq, ptr %i.dm, align 4, !alias.scope !292, !noalias !287
  %exitcond.not.i.1 = icmp eq i64 %i.dl, %i.ci
  br i1 %exitcond.not.i.1, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit, label %scalar.ph, !llvm.loop !268

_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dr = icmp ult i64 %i.bm, %i.l
  br i1 %i.dr, label %bb.d, label %.loopexit

bb.j:                                             ; preds = %.lr.ph126, %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6causal22causal_decode_f32_lean00EB8_.exit
  %.sroa.011.0125 = phi i64 [ 0, %.lr.ph126 ], [ %i.ds, %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6causal22causal_decode_f32_lean00EB8_.exit ] ; 3 uses
  %.sroa.0.0124 = phi float [ -inf, %.lr.ph126 ], [ %.sroa.0.1, %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6causal22causal_decode_f32_lean00EB8_.exit ] ; 4 uses
  %.sroa.044.0123 = phi float [ 0.000000e+00, %.lr.ph126 ], [ %.sroa.044.1, %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6causal22causal_decode_f32_lean00EB8_.exit ] ; 2 uses
  %i.ds = add nuw i64 %.sroa.011.0125, 1          ; 3 uses
  %i.dt = load i64, ptr %i.ai, align 8, !noundef !5 ; 2 uses
  %i.du = mul i64 %i.dt, %.sroa.011.0125
  %i.dv = add i64 %i.du, %i.bv                    ; 5 uses
  %i.dw = load i64, ptr %i.r, align 8, !noundef !5 ; 10 uses
  %i.dx = add i64 %i.dv, %i.dw                    ; 3 uses
  %i.dy = icmp uge i64 %i.dx, %i.dv
  %i.dz = icmp ule i64 %i.dx, %i.ak
  %or.cond = and i1 %i.dy, %i.dz
  br i1 %or.cond, label %bb.l, label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.dv, i64 noundef %i.dx, i64 noundef %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.dv ; 5 uses
  %i.eb = load i64, ptr %i.af, align 8, !noundef !5
  %i.ec = icmp ult i64 %i.ds, %i.eb               ; 2 uses
  br i1 %i.ec, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ed = add i64 %i.dv, %i.dt                    ; 3 uses
  %i.ee = icmp ugt i64 %i.ed, %i.ak
  br i1 %i.ee, label %bb.p, label %bb.o, !prof !8

bb.n:                                             ; preds = %bb.l, %bb.o
  br i1 %.not133, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.n
  br i1 %i.ce, label %.lr.ph.epil.preheader, label %.lr.ph

bb.o:                                             ; preds = %bb.m
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ed
  tail call void @llvm.prefetch.p0(ptr readonly %i.ef, i32 0, i32 3, i32 1)
  br label %bb.n

bb.p:                                             ; preds = %bb.m
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ed, i64 noundef %i.ak, i64 noundef %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #28
  unreachable

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.04.0118.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.fv, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.013.0117.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.fp, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod444)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.04.0118.epil = phi float [ %i.em, %.lr.ph.epil ], [ %.sroa.04.0118.epil.init, %.lr.ph.epil.preheader ]
  %.sroa.013.0117.epil = phi i64 [ %i.eg, %.lr.ph.epil ], [ %.sroa.013.0117.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.eg = add nuw i64 %.sroa.013.0117.epil, 1
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.sroa.013.0117.epil
  %i.ei = load float, ptr %i.eh, align 4, !noundef !5
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.sroa.013.0117.epil
  %i.ek = load float, ptr %i.ej, align 4, !noundef !5
  %i.el = fmul float %i.ei, %i.ek
  %i.em = fadd float %.sroa.04.0118.epil, %i.el   ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !269

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.n
  %.sroa.04.0.lcssa = phi float [ 0.000000e+00, %bb.n ], [ %i.fv, %._crit_edge.loopexit.unr-lcssa ], [ %i.em, %.lr.ph.epil ]
  %i.en = load float, ptr %i.ba, align 4, !noundef !5
  %i.eo = fmul float %.sroa.04.0.lcssa, %i.en     ; 5 uses
  %i.ep = load i64, ptr %i.aq, align 8, !noundef !5 ; 2 uses
  %i.eq = mul i64 %i.ep, %.sroa.011.0125
  %i.er = add i64 %i.eq, %i.bz                    ; 5 uses
  %i.es = add i64 %i.er, %i.dw                    ; 3 uses
  %i.et = icmp ult i64 %i.es, %i.er
  %.not31 = icmp ugt i64 %i.es, %i.as
  %or.cond33 = or i1 %i.et, %.not31
  br i1 %or.cond33, label %bb.q, label %bb.r, !prof !17

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.04.0118 = phi float [ %i.fv, %.lr.ph ], [ 0.000000e+00, %.lr.ph.preheader ]
  %.sroa.013.0117 = phi i64 [ %i.fp, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.eu = or disjoint i64 %.sroa.013.0117, 1      ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.sroa.013.0117
  %i.ew = load float, ptr %i.ev, align 4, !noundef !5
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.sroa.013.0117
  %i.ey = load float, ptr %i.ex, align 4, !noundef !5
  %i.ez = fmul float %i.ew, %i.ey
  %i.fa = fadd float %.sroa.04.0118, %i.ez
  %i.fb = or disjoint i64 %.sroa.013.0117, 2      ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.eu
  %i.fd = load float, ptr %i.fc, align 4, !noundef !5
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.eu
  %i.ff = load float, ptr %i.fe, align 4, !noundef !5
  %i.fg = fmul float %i.fd, %i.ff
  %i.fh = fadd float %i.fa, %i.fg
  %i.fi = or disjoint i64 %.sroa.013.0117, 3      ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.fb
  %i.fk = load float, ptr %i.fj, align 4, !noundef !5
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.fb
  %i.fm = load float, ptr %i.fl, align 4, !noundef !5
  %i.fn = fmul float %i.fk, %i.fm
  %i.fo = fadd float %i.fh, %i.fn
  %i.fp = add nuw i64 %.sroa.013.0117, 4          ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.fi
  %i.fr = load float, ptr %i.fq, align 4, !noundef !5
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.fi
  %i.ft = load float, ptr %i.fs, align 4, !noundef !5
  %i.fu = fmul float %i.fr, %i.ft
  %i.fv = fadd float %i.fo, %i.fu                 ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.q:                                             ; preds = %._crit_edge
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.er, i64 noundef %i.es, i64 noundef %i.as, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #28
  unreachable

bb.r:                                             ; preds = %._crit_edge
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.er ; 4 uses
  br i1 %i.ec, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fx = add i64 %i.er, %i.ep                    ; 3 uses
  %i.fy = icmp ugt i64 %i.fx, %i.as
  br i1 %i.fy, label %bb.ad, label %bb.ac, !prof !8

bb.t:                                             ; preds = %bb.r, %bb.ac
  %i.fz = fcmp ogt float %i.eo, %.sroa.0.0124
  br i1 %i.fz, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ga = fsub float %i.eo, %.sroa.0.0124
  %i.gb = tail call float @llvm.exp.f32(float %i.ga) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  %.not.i34 = icmp eq i64 %i.dw, 0
  br i1 %.not.i34, label %_RNCNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal22causal_decode_f32_lean00Bb_.exit, label %.lr.ph.i35.preheader

.lr.ph.i35.preheader:                             ; preds = %bb.u
  %i.gc = add i64 %i.dw, -1
  %i.gd = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.gc)
  %i.ge = add i64 %i.gd, 1                        ; 3 uses
  %min.iters.check368 = icmp ult i64 %i.ge, 9
  br i1 %min.iters.check368, label %.lr.ph.i35.preheader384, label %vector.ph369

end_hunk_2
begin_hunk_3_@_RNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal22causal_decode_f32_lean0B9_:bb.a

_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6causal22causal_decode_f32_lean00EB8_.exit: ; preds = %bb.aa, %._crit_edge122, %_RNCNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal22causal_decode_f32_lean00Bb_.exit
  %.sroa.044.1 = phi float [ %i.gy, %_RNCNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal22causal_decode_f32_lean00Bb_.exit ], [ %i.hm, %._crit_edge122 ], [ %i.hm, %bb.aa ] ; 2 uses
  %.sroa.0.1 = phi float [ %.sroa.0.0124, %_RNCNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal22causal_decode_f32_lean00Bb_.exit ], [ %i.eo, %._crit_edge122 ], [ %i.eo, %bb.aa ]
  %exitcond192.not = icmp eq i64 %i.ds, %i.cd
  br i1 %exitcond192.not, label %._crit_edge127, label %bb.j

bb.ac:                                            ; preds = %bb.s
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.fx
  tail call void @llvm.prefetch.p0(ptr readonly %i.ih, i32 0, i32 3, i32 1)
  br label %bb.t

bb.ad:                                            ; preds = %bb.s
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.fx, i64 noundef %i.as, i64 noundef %i.as, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #28
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal23causal_prefill_f32_lean0B9_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0, i64 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !9, !noundef !5
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !nonnull !5, !align !9, !noundef !5
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 2 uses
  %i.h = mul i64 %i.g, %1
  %i.i = udiv i64 %i.h, %i.d                      ; 2 uses
  %i.j = add i64 %1, 1
  %i.k = mul i64 %i.g, %i.j
  %i.l = udiv i64 %i.k, %i.d                      ; 2 uses
  %.not = icmp ult i64 %i.i, %i.l
  br i1 %.not, label %.split129, label %.loopexit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #28
  unreachable

.split129:                                        ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !align !9, !noundef !5
  %i.o = load i64, ptr %i.n, align 8, !noundef !5
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !align !9, !noundef !5 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !noundef !5 ; 14 uses
  %i.t = mul i64 %i.s, %1
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.t ; 11 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5, !align !9, !noundef !5
  %i.x = load i64, ptr %i.w, align 8, !noundef !5
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !5, !align !9, !noundef !5
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !5
  %i.af = mul i64 %i.ab, %i.s
  %i.ag = mul i64 %i.af, %i.ae                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !5, !align !9, !noundef !5
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !5
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !5 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !5
  %i.ar = mul i64 %i.aq, %i.an                    ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !5, !align !9, !noundef !5
  %i.au = load i64, ptr %i.at, align 8, !noundef !5
  %i.av = inttoptr i64 %i.au to ptr               ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !5
  %i.az = mul i64 %i.ay, %i.an                    ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !5, !align !9, !noundef !5
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !5, !align !9
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !5, !align !9
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bh = load ptr, ptr %i.bg, align 8, !nonnull !5, !align !9
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !5, !align !9
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !5, !align !16
  %.idx = shl i64 %i.s, 2                         ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx
  %i.bn = icmp eq i64 %i.s, 0
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.s
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bs = add i64 %.idx, -4                       ; 2 uses
  %i.bt = lshr exact i64 %i.bs, 2
  %i.bu = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %min.iters.check348 = icmp ult i64 %i.bs, 28
  %n.vec350 = and i64 %i.bu, 9223372036854775800  ; 3 uses
  %i.bv = shl i64 %n.vec350, 2
  %i.bw = getelementptr i8, ptr %i.u, i64 %i.bv
  %cmp.n359 = icmp eq i64 %i.bu, %n.vec350
  br label %bb.d

bb.d:                                             ; preds = %.split129, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit
  %.sroa.08.0130 = phi i64 [ %i.i, %.split129 ], [ %i.bx, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit ] ; 4 uses
  %i.bx = add nuw i64 %.sroa.08.0130, 1           ; 2 uses
  %i.by = load i64, ptr %i.bb, align 8, !noundef !5
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = load i64, ptr %i.r, align 8, !noundef !5 ; 11 uses
  %i.cb = mul i64 %i.ca, %.sroa.08.0130
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.cb ; 3 uses
  %i.cd = load i64, ptr %i.aa, align 8, !noundef !5 ; 3 uses
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %bb.f, label %bb.e

.loopexit:                                        ; preds = %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit, %bb.b
  ret void

bb.e:                                             ; preds = %bb.d
  %i.cf = udiv i64 %.sroa.08.0130, %i.cd          ; 3 uses
  %i.cg = urem i64 %.sroa.08.0130, %i.cd          ; 2 uses
  %i.ch = load i64, ptr %i.bd, align 8, !noundef !5 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #28
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.cj = udiv i64 %i.cf, %i.ch
  %i.ck = mul i64 %i.cj, %i.ca
  %i.cl = load i64, ptr %i.bf, align 8, !noundef !5 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #28
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.cn = udiv i64 %i.cf, %i.cl
  %i.co = mul i64 %i.cn, %i.ca
  %i.cp = load i64, ptr %i.bh, align 8, !noundef !5
  %i.cq = mul i64 %i.cp, %i.cg
  %i.cr = mul i64 %i.cf, %i.ca
  %i.cs = add i64 %i.cq, %i.cr                    ; 4 uses
  %i.ct = add i64 %i.cs, %i.ca                    ; 3 uses
  %i.cu = icmp ult i64 %i.ct, %i.cs
  %.not32 = icmp ugt i64 %i.ct, %i.ag
  %or.cond34 = or i1 %i.cu, %.not32
  br i1 %or.cond34, label %bb.k, label %.split, !prof !17

bb.j:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #28
  unreachable

bb.k:                                             ; preds = %bb.i
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.cs, i64 noundef %i.ct, i64 noundef %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #28
  unreachable

.split:                                           ; preds = %bb.i
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.cs ; 5 uses
  tail call void @_RNvXs_NtNtCsf3Ta7LF998c_4core5slice10specializeSfINtB4_8SpecFillfE9spec_fillCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 4 %i.u, i64 noundef %i.s, float noundef 0.000000e+00)
  %i.cw = load i64, ptr %i.bj, align 8, !noundef !5
  %i.cx = add nuw i64 %i.cg, 1
  %i.cy = add i64 %i.cx, %i.cw
  %i.cz = load i64, ptr %i.am, align 8, !noundef !5
  %i.da = tail call i64 @llvm.umin.i64(i64 %i.cy, i64 %i.cz) ; 2 uses
  %.not132 = icmp eq i64 %i.da, 0
  br i1 %.not132, label %._crit_edge127, label %.lr.ph126

.lr.ph126:                                        ; preds = %.split
  %.not133 = icmp eq i64 %i.ca, 0
  %xtraiter = and i64 %i.ca, 3                    ; 3 uses
  %i.db = icmp ult i64 %i.ca, 4
  %unroll_iter = and i64 %i.ca, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod436 = icmp ne i64 %xtraiter, 0
  br label %bb.l

._crit_edge127:                                   ; preds = %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6causal23causal_prefill_f32_lean00EB8_.exit, %.split
  %.sroa.046.0.lcssa = phi float [ 0.000000e+00, %.split ], [ %.sroa.046.1, %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6causal23causal_prefill_f32_lean00EB8_.exit ] ; 2 uses
  %i.dc = fcmp ogt float %.sroa.046.0.lcssa, 0.000000e+00
  %i.dd = fdiv float 1.000000e+00, %.sroa.046.0.lcssa
  %.sroa.07.0 = select i1 %i.dc, float %i.dd, float 0.000000e+00 ; 4 uses
  tail call void @_RNvXs_NtNtCsf3Ta7LF998c_4core5slice10specializeSfINtB4_8SpecFillfE9spec_fillCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 4 %i.cc, i64 noundef %i.ca, float noundef 0.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.ca
  call void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E3newCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.cc, ptr noundef nonnull %i.de, ptr noundef nonnull readonly align 4 %i.u, ptr noundef nonnull readonly %i.bo)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %.val.i = load i64, ptr %i.bp, align 8, !alias.scope !332, !noundef !5 ; 9 uses
  %.val6.i = load i64, ptr %i.bq, align 8, !alias.scope !332, !noundef !5 ; 5 uses
  %i.df = sub i64 %.val6.i, %.val.i               ; 4 uses
  %.not.i = icmp eq i64 %.val6.i, %.val.i
  br i1 %.not.i, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge127
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !333, !nonnull !5, !noundef !5 ; 6 uses
  %.val1.i.i = load ptr, ptr %i.br, align 8, !alias.scope !333, !nonnull !5, !noundef !5 ; 6 uses
  %min.iters.check = icmp ult i64 %i.df, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.dg = shl i64 %.val.i, 2                      ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %.val.i.i, i64 %i.dg
  %i.dh = shl i64 %.val6.i, 2                     ; 2 uses
  %scevgep328 = getelementptr i8, ptr %.val.i.i, i64 %i.dh
  %scevgep329 = getelementptr nuw i8, ptr %.val1.i.i, i64 %i.dg
  %scevgep330 = getelementptr i8, ptr %.val1.i.i, i64 %i.dh
  %bound0 = icmp ult ptr %scevgep, %scevgep330
  %bound1 = icmp ult ptr %scevgep329, %scevgep328
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.df, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.07.0, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.di = add i64 %index, %.val.i                 ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.di ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i, i64 %i.di ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load = load <4 x float>, ptr %i.dk, align 4, !alias.scope !334, !noalias !332
  %wide.load331 = load <4 x float>, ptr %i.dl, align 4, !alias.scope !334, !noalias !332
  %i.dm = fmul <4 x float> %broadcast.splat, %wide.load
  %i.dn = fmul <4 x float> %broadcast.splat, %wide.load331
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %wide.load332 = load <4 x float>, ptr %i.dj, align 4, !alias.scope !335, !noalias !336
  %wide.load333 = load <4 x float>, ptr %i.do, align 4, !alias.scope !335, !noalias !336
  %i.dp = fadd <4 x float> %wide.load332, %i.dm
  %i.dq = fadd <4 x float> %wide.load333, %i.dn
  store <4 x float> %i.dp, ptr %i.dj, align 4, !alias.scope !335, !noalias !336
  store <4 x float> %i.dq, ptr %i.do, align 4, !alias.scope !335, !noalias !336
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dr = icmp eq i64 %index.next, %n.vec
  br i1 %i.dr, label %middle.block, label %vector.body, !llvm.loop !312

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.df, %n.vec
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.sroa.0.010.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 4 uses
  %2 = sub i64 %.val6.i, %.val.i
  %i.ds = xor i64 %.sroa.0.010.i.ph, -1
  %i.dt = add i64 %.val6.i, %i.ds
  %xtraiter437 = and i64 %2, 1
  %lcmp.mod438.not = icmp eq i64 %xtraiter437, 0
  br i1 %lcmp.mod438.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.du = or disjoint i64 %.sroa.0.010.i.ph, 1
  %i.dv = add i64 %.sroa.0.010.i.ph, %.val.i      ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.dv ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i, i64 %i.dv
  %.val8.i.prol = load float, ptr %i.dx, align 4, !noalias !332, !noundef !5
  %i.dy = fmul float %.sroa.07.0, %.val8.i.prol
  %i.dz = load float, ptr %i.dw, align 4, !alias.scope !337, !noalias !332, !noundef !5
  %i.ea = fadd float %i.dz, %i.dy
  store float %i.ea, ptr %i.dw, align 4, !alias.scope !337, !noalias !332
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.010.i.unr = phi i64 [ %.sroa.0.010.i.ph, %scalar.ph.preheader ], [ %i.du, %scalar.ph.prol ]
  %i.eb = icmp eq i64 %i.dt, %.val.i
  br i1 %i.eb, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.010.i = phi i64 [ %.sroa.0.010.i.unr, %scalar.ph.preheader.new ], [ %i.ei, %scalar.ph ] ; 3 uses
  %i.ec = add i64 %.sroa.0.010.i, %.val.i         ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.ec ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i, i64 %i.ec
  %.val8.i = load float, ptr %i.ee, align 4, !noalias !332, !noundef !5
  %i.ef = fmul float %.sroa.07.0, %.val8.i
  %i.eg = load float, ptr %i.ed, align 4, !alias.scope !337, !noalias !332, !noundef !5
  %i.eh = fadd float %i.eg, %i.ef
  store float %i.eh, ptr %i.ed, align 4, !alias.scope !337, !noalias !332
  %i.ei = add nuw i64 %.sroa.0.010.i, 2           ; 2 uses
  %.reass = add i64 %.sroa.0.010.i, %invariant.op ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %.reass ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i, i64 %.reass
  %.val8.i.1 = load float, ptr %i.ek, align 4, !noalias !332, !noundef !5
  %i.el = fmul float %.sroa.07.0, %.val8.i.1
  %i.em = load float, ptr %i.ej, align 4, !alias.scope !337, !noalias !332, !noundef !5
  %i.en = fadd float %i.em, %i.el
  store float %i.en, ptr %i.ej, align 4, !alias.scope !337, !noalias !332
  %exitcond.not.i.1 = icmp eq i64 %i.ei, %i.df
  br i1 %exitcond.not.i.1, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit, label %scalar.ph, !llvm.loop !313

_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.eo = icmp ult i64 %i.bx, %i.l
  br i1 %i.eo, label %bb.d, label %.loopexit

bb.l:                                             ; preds = %.lr.ph126, %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6causal23causal_prefill_f32_lean00EB8_.exit
  %.sroa.011.0125 = phi i64 [ 0, %.lr.ph126 ], [ %i.ep, %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6causal23causal_prefill_f32_lean00EB8_.exit ] ; 3 uses
  %.sroa.0.0124 = phi float [ -inf, %.lr.ph126 ], [ %.sroa.0.1, %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6causal23causal_prefill_f32_lean00EB8_.exit ] ; 4 uses
  %.sroa.046.0123 = phi float [ 0.000000e+00, %.lr.ph126 ], [ %.sroa.046.1, %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6causal23causal_prefill_f32_lean00EB8_.exit ] ; 2 uses
  %i.ep = add nuw i64 %.sroa.011.0125, 1          ; 2 uses
  %i.eq = load i64, ptr %i.ap, align 8, !noundef !5 ; 2 uses
  %i.er = mul i64 %i.eq, %.sroa.011.0125
  %i.es = add i64 %i.er, %i.ck                    ; 5 uses
  %i.et = load i64, ptr %i.r, align 8, !noundef !5 ; 10 uses
  %i.eu = add i64 %i.es, %i.et                    ; 3 uses
  %i.ev = icmp uge i64 %i.eu, %i.es
  %i.ew = icmp ule i64 %i.eu, %i.ar
  %or.cond = and i1 %i.ev, %i.ew
  br i1 %or.cond, label %bb.n, label %bb.m, !prof !20

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.es, i64 noundef %i.eu, i64 noundef %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #28
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.es ; 5 uses
  %i.ey = icmp ult i64 %i.ep, %i.da               ; 3 uses
  br i1 %i.ey, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.q, %bb.n
  br i1 %.not133, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.o
  br i1 %i.db, label %.lr.ph.epil.preheader, label %.lr.ph

bb.p:                                             ; preds = %bb.n
  %i.ez = add i64 %i.es, %i.eq                    ; 3 uses
  %i.fa = icmp ugt i64 %i.ez, %i.ar
  br i1 %i.fa, label %bb.r, label %bb.q, !prof !8

bb.q:                                             ; preds = %bb.p
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ez
  tail call void @llvm.prefetch.p0(ptr readonly %i.fb, i32 0, i32 3, i32 1)
  br label %bb.o

bb.r:                                             ; preds = %bb.p
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.ez, i64 noundef %i.ar, i64 noundef %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #28
  unreachable

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.04.0118.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.gr, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.013.0117.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.gl, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod436)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.04.0118.epil = phi float [ %i.fi, %.lr.ph.epil ], [ %.sroa.04.0118.epil.init, %.lr.ph.epil.preheader ]
  %.sroa.013.0117.epil = phi i64 [ %i.fc, %.lr.ph.epil ], [ %.sroa.013.0117.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.fc = add nuw i64 %.sroa.013.0117.epil, 1
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.sroa.013.0117.epil
  %i.fe = load float, ptr %i.fd, align 4, !noundef !5
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.sroa.013.0117.epil
  %i.fg = load float, ptr %i.ff, align 4, !noundef !5
  %i.fh = fmul float %i.fe, %i.fg
  %i.fi = fadd float %.sroa.04.0118.epil, %i.fh   ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !314

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.o
  %.sroa.04.0.lcssa = phi float [ 0.000000e+00, %bb.o ], [ %i.gr, %._crit_edge.loopexit.unr-lcssa ], [ %i.fi, %.lr.ph.epil ]
  %i.fj = load float, ptr %i.bl, align 4, !noundef !5
  %i.fk = fmul float %.sroa.04.0.lcssa, %i.fj     ; 5 uses
  %i.fl = load i64, ptr %i.ax, align 8, !noundef !5 ; 2 uses
  %i.fm = mul i64 %i.fl, %.sroa.011.0125
  %i.fn = add i64 %i.fm, %i.co                    ; 5 uses
  %i.fo = add i64 %i.fn, %i.et                    ; 3 uses
  %i.fp = icmp ult i64 %i.fo, %i.fn
  %.not33 = icmp ugt i64 %i.fo, %i.az
  %or.cond35 = or i1 %i.fp, %.not33
  br i1 %or.cond35, label %bb.s, label %bb.t, !prof !17

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.04.0118 = phi float [ %i.gr, %.lr.ph ], [ 0.000000e+00, %.lr.ph.preheader ]
  %.sroa.013.0117 = phi i64 [ %i.gl, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.fq = or disjoint i64 %.sroa.013.0117, 1      ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.sroa.013.0117
  %i.fs = load float, ptr %i.fr, align 4, !noundef !5
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.sroa.013.0117
  %i.fu = load float, ptr %i.ft, align 4, !noundef !5
  %i.fv = fmul float %i.fs, %i.fu
  %i.fw = fadd float %.sroa.04.0118, %i.fv
  %i.fx = or disjoint i64 %.sroa.013.0117, 2      ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.fq
  %i.fz = load float, ptr %i.fy, align 4, !noundef !5
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.fq
  %i.gb = load float, ptr %i.ga, align 4, !noundef !5
  %i.gc = fmul float %i.fz, %i.gb
  %i.gd = fadd float %i.fw, %i.gc
  %i.ge = or disjoint i64 %.sroa.013.0117, 3      ; 2 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.fx
  %i.gg = load float, ptr %i.gf, align 4, !noundef !5
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.fx
  %i.gi = load float, ptr %i.gh, align 4, !noundef !5
  %i.gj = fmul float %i.gg, %i.gi
  %i.gk = fadd float %i.gd, %i.gj
  %i.gl = add nuw i64 %.sroa.013.0117, 4          ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.ge
  %i.gn = load float, ptr %i.gm, align 4, !noundef !5
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %i.ge
  %i.gp = load float, ptr %i.go, align 4, !noundef !5
  %i.gq = fmul float %i.gn, %i.gp
  %i.gr = fadd float %i.gk, %i.gq                 ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

bb.s:                                             ; preds = %._crit_edge
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.fn, i64 noundef %i.fo, i64 noundef %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #28
  unreachable

bb.t:                                             ; preds = %._crit_edge
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.fn ; 4 uses
  br i1 %i.ey, label %bb.ad, label %bb.u

bb.u:                                             ; preds = %bb.ae, %bb.t
  %i.gt = fcmp ogt float %i.fk, %.sroa.0.0124
  br i1 %i.gt, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gu = fsub float %i.fk, %.sroa.0.0124
  %i.gv = tail call float @llvm.exp.f32(float %i.gu) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %.not.i36 = icmp eq i64 %i.et, 0
  br i1 %.not.i36, label %_RNCNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal23causal_prefill_f32_lean00Bb_.exit, label %.lr.ph.i37.preheader

.lr.ph.i37.preheader:                             ; preds = %bb.v
  %i.gw = add i64 %i.et, -1
  %i.gx = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.gw)
  %i.gy = add i64 %i.gx, 1                        ; 3 uses
  %min.iters.check362 = icmp ult i64 %i.gy, 9
  br i1 %min.iters.check362, label %.lr.ph.i37.preheader378, label %vector.ph363

vector.ph363:                                     ; preds = %.lr.ph.i37.preheader
  %i.gz = and i64 %i.gy, 7                        ; 2 uses
  %i.ha = icmp eq i64 %i.gz, 0
  %i.hb = select i1 %i.ha, i64 8, i64 %i.gz
  %n.vec364 = sub i64 %i.gy, %i.hb                ; 2 uses
  %broadcast.splatinsert365 = insertelement <4 x float> poison, float %i.gv, i64 0
end_hunk_3
begin_hunk_4_@_RNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal23causal_prefill_f32_lean0B9_:bb.a
  %wide.load341 = load <4 x float>, ptr %i.ip, align 4, !noalias !343
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index339 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16 ; 2 uses
  %wide.load342 = load <4 x float>, ptr %i.iq, align 4, !alias.scope !344, !noalias !345
  %wide.load343 = load <4 x float>, ptr %i.ir, align 4, !alias.scope !344, !noalias !345
  %i.is = fadd <4 x float> %wide.load340, %wide.load342
  %i.it = fadd <4 x float> %wide.load341, %wide.load343
  store <4 x float> %i.is, ptr %i.iq, align 4, !alias.scope !344, !noalias !345
  store <4 x float> %i.it, ptr %i.ir, align 4, !alias.scope !344, !noalias !345
  %index.next344 = add nuw i64 %index339, 8       ; 2 uses
  %i.iu = icmp eq i64 %index.next344, %n.vec337
  br i1 %i.iu, label %.lr.ph.i40.preheader376, label %vector.body338, !llvm.loop !330

.lr.ph.i40.preheader376:                          ; preds = %vector.body338, %.lr.ph.i40.preheader
  %.sroa.01.07.i41.ph = phi i64 [ 0, %.lr.ph.i40.preheader ], [ %n.vec337, %vector.body338 ]
  br label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %.lr.ph.i40.preheader376, %bb.ab
  %.sroa.01.07.i41 = phi i64 [ %i.iv, %bb.ab ], [ %.sroa.01.07.i41.ph, %.lr.ph.i40.preheader376 ] ; 5 uses
  %i.iv = add nuw nsw i64 %.sroa.01.07.i41, 1     ; 2 uses
  %exitcond.not.i42 = icmp eq i64 %.sroa.01.07.i41, %i.et
  br i1 %exitcond.not.i42, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i40
  %exitcond10.not.i43 = icmp eq i64 %.sroa.01.07.i41, %i.s
  br i1 %exitcond10.not.i43, label %bb.ac, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i40
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.et, i64 noundef %i.et, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #28, !noalias !343
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %.sroa.01.07.i41
  %i.ix = load float, ptr %i.iw, align 4, !noalias !343, !noundef !5
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.sroa.01.07.i41 ; 2 uses
  %i.iz = load float, ptr %i.iy, align 4, !alias.scope !344, !noalias !345, !noundef !5
  %i.ja = fadd float %i.ix, %i.iz
  store float %i.ja, ptr %i.iy, align 4, !alias.scope !344, !noalias !345
  %exitcond11.not.i44 = icmp eq i64 %i.iv, %i.ie
  br i1 %exitcond11.not.i44, label %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6causal23causal_prefill_f32_lean00EB8_.exit, label %.lr.ph.i40, !llvm.loop !331

bb.ac:                                            ; preds = %bb.z
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 2305843009213693952) %i.s, i64 noundef range(i64 0, 2305843009213693952) %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #28, !noalias !343
  unreachable

_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6causal23causal_prefill_f32_lean00EB8_.exit: ; preds = %bb.ab, %._crit_edge122, %_RNCNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal23causal_prefill_f32_lean00Bb_.exit
  %.sroa.046.1 = phi float [ %i.hs, %_RNCNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal23causal_prefill_f32_lean00Bb_.exit ], [ %i.ig, %._crit_edge122 ], [ %i.ig, %bb.ab ] ; 2 uses
  %.sroa.0.1 = phi float [ %.sroa.0.0124, %_RNCNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal23causal_prefill_f32_lean00Bb_.exit ], [ %i.fk, %._crit_edge122 ], [ %i.fk, %bb.ab ]
  br i1 %i.ey, label %bb.l, label %._crit_edge127

bb.ad:                                            ; preds = %bb.t
  %i.jb = add i64 %i.fn, %i.fl                    ; 3 uses
  %i.jc = icmp ugt i64 %i.jb, %i.az
  br i1 %i.jc, label %bb.af, label %bb.ae, !prof !8

bb.ae:                                            ; preds = %bb.ad
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.jb
  tail call void @llvm.prefetch.p0(ptr readonly %i.jd, i32 0, i32 3, i32 1)
  br label %bb.u

bb.af:                                            ; preds = %bb.ad
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.jb, i64 noundef %i.az, i64 noundef %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #28
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal29causal_decode_f32_interleaved0B9_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !9, !noundef !5
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !9, !noundef !5
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = mul i64 %i.c, %1
  %i.i = udiv i64 %i.h, %i.f                      ; 2 uses
  %i.j = add i64 %1, 1
  %i.k = mul i64 %i.c, %i.j
  %i.l = udiv i64 %i.k, %i.f                      ; 2 uses
  %.not = icmp ult i64 %i.i, %i.l
  br i1 %.not, label %.split111, label %.loopexit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #28
  unreachable

.split111:                                        ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !align !9, !noundef !5
  %i.o = load i64, ptr %i.n, align 8, !noundef !5
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !align !9, !noundef !5 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !noundef !5 ; 14 uses
  %i.t = mul i64 %i.s, %1
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.t ; 11 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5, !align !9, !noundef !5
  %i.x = load i64, ptr %i.w, align 8, !noundef !5
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = mul i64 %i.s, %i.c                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !5, !align !9, !noundef !5
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !5
  %i.ad = inttoptr i64 %i.ac to ptr               ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !noundef !5
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !5
  %i.ak = mul i64 %i.aj, %i.ag                    ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !5, !align !9, !noundef !5
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !5, !align !9, !noundef !5
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !5, !align !9
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !5, !align !16
  %.idx = shl i64 %i.s, 2                         ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx
  %i.au = icmp eq i64 %i.s, 0
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.s
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.az = add i64 %.idx, -4                       ; 2 uses
  %i.ba = lshr exact i64 %i.az, 2
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %min.iters.check293 = icmp ult i64 %i.az, 28
  %n.vec295 = and i64 %i.bb, 9223372036854775800  ; 3 uses
  %i.bc = shl i64 %n.vec295, 2
  %i.bd = getelementptr i8, ptr %i.u, i64 %i.bc
  %cmp.n304 = icmp eq i64 %i.bb, %n.vec295
  br label %bb.d

bb.d:                                             ; preds = %.split111, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit
  %.sroa.08.0112 = phi i64 [ %i.i, %.split111 ], [ %i.be, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit ] ; 3 uses
  %i.be = add nuw i64 %.sroa.08.0112, 1           ; 3 uses
  %i.bf = load i64, ptr %i.am, align 8, !noundef !5
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load i64, ptr %i.r, align 8, !noundef !5 ; 8 uses
  %i.bi = mul i64 %i.bh, %.sroa.08.0112           ; 4 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bi ; 3 uses
  %i.bk = load i64, ptr %i.ao, align 8, !noundef !5 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.f, label %bb.e

.loopexit:                                        ; preds = %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit, %bb.b
  ret void

bb.e:                                             ; preds = %bb.d
  %i.bm = udiv i64 %.sroa.08.0112, %i.bk
  %i.bn = load i64, ptr %i.aq, align 8, !noundef !5
  %i.bo = mul i64 %i.bn, %i.bm
  %i.bp = mul i64 %i.bh, %i.be                    ; 3 uses
  %i.bq = icmp ult i64 %i.bp, %i.bi
  %.not26 = icmp ugt i64 %i.bp, %i.z
  %or.cond28 = or i1 %i.bq, %.not26
  br i1 %or.cond28, label %bb.g, label %.split, !prof !17

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #28
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.bi, i64 noundef %i.bp, i64 noundef %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #28
  unreachable

.split:                                           ; preds = %bb.e
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.bi ; 5 uses
  tail call void @_RNvXs_NtNtCsf3Ta7LF998c_4core5slice10specializeSfINtB4_8SpecFillfE9spec_fillCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 4 %i.u, i64 noundef %i.s, float noundef 0.000000e+00)
  %i.bs = load i64, ptr %i.af, align 8, !noundef !5 ; 2 uses
  %.not114 = icmp eq i64 %i.bs, 0
  br i1 %.not114, label %._crit_edge109, label %.lr.ph108

.lr.ph108:                                        ; preds = %.split
  %.not115 = icmp eq i64 %i.bh, 0
  %xtraiter = and i64 %i.bh, 3                    ; 3 uses
  %i.bt = icmp ult i64 %i.bh, 4
  %unroll_iter = and i64 %i.bh, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod370 = icmp ne i64 %xtraiter, 0
  br label %bb.h

._crit_edge109:                                   ; preds = %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6causal29causal_decode_f32_interleaved00EB8_.exit, %.split
  %.sroa.040.0.lcssa = phi float [ 0.000000e+00, %.split ], [ %.sroa.040.1, %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6causal29causal_decode_f32_interleaved00EB8_.exit ] ; 2 uses
  %i.bu = fcmp ogt float %.sroa.040.0.lcssa, 0.000000e+00
  %i.bv = fdiv float 1.000000e+00, %.sroa.040.0.lcssa
  %.sroa.07.0 = select i1 %i.bu, float %i.bv, float 0.000000e+00 ; 4 uses
  tail call void @_RNvXs_NtNtCsf3Ta7LF998c_4core5slice10specializeSfINtB4_8SpecFillfE9spec_fillCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 4 %i.bj, i64 noundef %i.bh, float noundef 0.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bh
  call void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E3newCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.bw, ptr noundef nonnull readonly align 4 %i.u, ptr noundef nonnull readonly %i.av)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !377)
  %.val.i = load i64, ptr %i.aw, align 8, !alias.scope !377, !noundef !5 ; 9 uses
  %.val6.i = load i64, ptr %i.ax, align 8, !alias.scope !377, !noundef !5 ; 5 uses
  %i.bx = sub i64 %.val6.i, %.val.i               ; 4 uses
  %.not.i = icmp eq i64 %.val6.i, %.val.i
  br i1 %.not.i, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge109
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !378, !nonnull !5, !noundef !5 ; 6 uses
  %.val1.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !378, !nonnull !5, !noundef !5 ; 6 uses
  %min.iters.check = icmp ult i64 %i.bx, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.by = shl i64 %.val.i, 2                      ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %.val.i.i, i64 %i.by
  %i.bz = shl i64 %.val6.i, 2                     ; 2 uses
  %scevgep273 = getelementptr i8, ptr %.val.i.i, i64 %i.bz
  %scevgep274 = getelementptr nuw i8, ptr %.val1.i.i, i64 %i.by
  %scevgep275 = getelementptr i8, ptr %.val1.i.i, i64 %i.bz
  %bound0 = icmp ult ptr %scevgep, %scevgep275
  %bound1 = icmp ult ptr %scevgep274, %scevgep273
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bx, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.07.0, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = add i64 %index, %.val.i                 ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.ca ; 3 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i, i64 %i.ca ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %wide.load = load <4 x float>, ptr %i.cc, align 4, !alias.scope !379, !noalias !377
  %wide.load276 = load <4 x float>, ptr %i.cd, align 4, !alias.scope !379, !noalias !377
  %i.ce = fmul <4 x float> %broadcast.splat, %wide.load
  %i.cf = fmul <4 x float> %broadcast.splat, %wide.load276
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %wide.load277 = load <4 x float>, ptr %i.cb, align 4, !alias.scope !380, !noalias !381
  %wide.load278 = load <4 x float>, ptr %i.cg, align 4, !alias.scope !380, !noalias !381
  %i.ch = fadd <4 x float> %wide.load277, %i.ce
  %i.ci = fadd <4 x float> %wide.load278, %i.cf
  store <4 x float> %i.ch, ptr %i.cb, align 4, !alias.scope !380, !noalias !381
  store <4 x float> %i.ci, ptr %i.cg, align 4, !alias.scope !380, !noalias !381
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !357

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.sroa.0.010.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 4 uses
  %2 = sub i64 %.val6.i, %.val.i
  %i.ck = xor i64 %.sroa.0.010.i.ph, -1
  %i.cl = add i64 %.val6.i, %i.ck
  %xtraiter371 = and i64 %2, 1
  %lcmp.mod372.not = icmp eq i64 %xtraiter371, 0
  br i1 %lcmp.mod372.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cm = or disjoint i64 %.sroa.0.010.i.ph, 1
  %i.cn = add i64 %.sroa.0.010.i.ph, %.val.i      ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.cn ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i, i64 %i.cn
  %.val8.i.prol = load float, ptr %i.cp, align 4, !noalias !377, !noundef !5
  %i.cq = fmul float %.sroa.07.0, %.val8.i.prol
  %i.cr = load float, ptr %i.co, align 4, !alias.scope !382, !noalias !377, !noundef !5
  %i.cs = fadd float %i.cr, %i.cq
  store float %i.cs, ptr %i.co, align 4, !alias.scope !382, !noalias !377
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.010.i.unr = phi i64 [ %.sroa.0.010.i.ph, %scalar.ph.preheader ], [ %i.cm, %scalar.ph.prol ]
  %i.ct = icmp eq i64 %i.cl, %.val.i
  br i1 %i.ct, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.val.i
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.010.i = phi i64 [ %.sroa.0.010.i.unr, %scalar.ph.preheader.new ], [ %i.da, %scalar.ph ] ; 3 uses
  %i.cu = add i64 %.sroa.0.010.i, %.val.i         ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.cu ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i, i64 %i.cu
  %.val8.i = load float, ptr %i.cw, align 4, !noalias !377, !noundef !5
  %i.cx = fmul float %.sroa.07.0, %.val8.i
  %i.cy = load float, ptr %i.cv, align 4, !alias.scope !382, !noalias !377, !noundef !5
  %i.cz = fadd float %i.cy, %i.cx
  store float %i.cz, ptr %i.cv, align 4, !alias.scope !382, !noalias !377
  %i.da = add nuw i64 %.sroa.0.010.i, 2           ; 2 uses
  %.reass = add i64 %.sroa.0.010.i, %invariant.op ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %.reass ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i, i64 %.reass
  %.val8.i.1 = load float, ptr %i.dc, align 4, !noalias !377, !noundef !5
  %i.dd = fmul float %.sroa.07.0, %.val8.i.1
  %i.de = load float, ptr %i.db, align 4, !alias.scope !382, !noalias !377, !noundef !5
  %i.df = fadd float %i.de, %i.dd
  store float %i.df, ptr %i.db, align 4, !alias.scope !382, !noalias !377
  %exitcond.not.i.1 = icmp eq i64 %i.da, %i.bx
  br i1 %exitcond.not.i.1, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit, label %scalar.ph, !llvm.loop !358

_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dg = icmp ult i64 %i.be, %i.l
  br i1 %i.dg, label %bb.d, label %.loopexit

bb.h:                                             ; preds = %.lr.ph108, %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6causal29causal_decode_f32_interleaved00EB8_.exit
  %.sroa.011.0107 = phi i64 [ 0, %.lr.ph108 ], [ %i.dh, %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6causal29causal_decode_f32_interleaved00EB8_.exit ] ; 2 uses
  %.sroa.0.0106 = phi float [ -inf, %.lr.ph108 ], [ %.sroa.0.1, %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6causal29causal_decode_f32_interleaved00EB8_.exit ] ; 4 uses
  %.sroa.040.0105 = phi float [ 0.000000e+00, %.lr.ph108 ], [ %.sroa.040.1, %_RINvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash14online_softmax19online_softmax_stepNCNCNvNtB4_6causal29causal_decode_f32_interleaved00EB8_.exit ] ; 2 uses
  %i.dh = add nuw i64 %.sroa.011.0107, 1          ; 3 uses
  %i.di = load i64, ptr %i.ai, align 8, !noundef !5 ; 2 uses
  %i.dj = mul i64 %i.di, %.sroa.011.0107
  %i.dk = add i64 %i.dj, %i.bo                    ; 6 uses
  %i.dl = load i64, ptr %i.r, align 8, !noundef !5 ; 10 uses
  %i.dm = add i64 %i.dk, %i.dl                    ; 6 uses
  %i.dn = icmp uge i64 %i.dm, %i.dk
  %i.do = icmp ule i64 %i.dm, %i.ak
  %or.cond = and i1 %i.dn, %i.do
  br i1 %or.cond, label %bb.j, label %bb.i, !prof !20

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.dk, i64 noundef %i.dm, i64 noundef %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #28
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.dk ; 5 uses
  %i.dq = shl i64 %i.dl, 1
  %i.dr = add i64 %i.dk, %i.dq                    ; 3 uses
  %i.ds = icmp ult i64 %i.dr, %i.dm
  %.not27 = icmp ugt i64 %i.dr, %i.ak
  %or.cond29 = or i1 %i.ds, %.not27
  br i1 %or.cond29, label %bb.k, label %bb.l, !prof !17

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.dm, i64 noundef %i.dr, i64 noundef %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #28
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.dm ; 4 uses
  %i.du = load i64, ptr %i.af, align 8, !noundef !5
  %i.dv = icmp ult i64 %i.dh, %i.du
  br i1 %i.dv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dw = add i64 %i.dk, %i.di                    ; 3 uses
  %i.dx = icmp ugt i64 %i.dw, %i.ak
  br i1 %i.dx, label %bb.p, label %bb.o, !prof !8

bb.n:                                             ; preds = %bb.l, %bb.o
  br i1 %.not115, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.n
  br i1 %i.bt, label %.lr.ph.epil.preheader, label %.lr.ph

bb.o:                                             ; preds = %bb.m
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.dw
  tail call void @llvm.prefetch.p0(ptr readonly %i.dy, i32 0, i32 3, i32 1)
  br label %bb.n

bb.p:                                             ; preds = %bb.m
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.dw, i64 noundef %i.ak, i64 noundef %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #28
  unreachable

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.04.0100.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.hr, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.013.099.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.hl, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod370)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.04.0100.epil = phi float [ %i.ef, %.lr.ph.epil ], [ %.sroa.04.0100.epil.init, %.lr.ph.epil.preheader ]
  %.sroa.013.099.epil = phi i64 [ %i.dz, %.lr.ph.epil ], [ %.sroa.013.099.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.dz = add nuw i64 %.sroa.013.099.epil, 1
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %.sroa.013.099.epil
  %i.eb = load float, ptr %i.ea, align 4, !noundef !5
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %.sroa.013.099.epil
  %i.ed = load float, ptr %i.ec, align 4, !noundef !5
  %i.ee = fmul float %i.eb, %i.ed
  %i.ef = fadd float %.sroa.04.0100.epil, %i.ee   ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !359

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.n
  %.sroa.04.0.lcssa = phi float [ 0.000000e+00, %bb.n ], [ %i.hr, %._crit_edge.loopexit.unr-lcssa ], [ %i.ef, %.lr.ph.epil ]
  %i.eg = load float, ptr %i.as, align 4, !noundef !5
  %i.eh = fmul float %.sroa.04.0.lcssa, %i.eg     ; 5 uses
  %i.ei = fcmp ogt float %i.eh, %.sroa.0.0106
  br i1 %i.ei, label %bb.t, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.ej = fsub float %i.eh, %.sroa.0.0106
  %i.ek = tail call float @llvm.exp.f32(float %i.ej) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %.not.i30 = icmp eq i64 %i.dl, 0
  br i1 %.not.i30, label %_RNCNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal29causal_decode_f32_interleaved00Bb_.exit, label %.lr.ph.i31.preheader

.lr.ph.i31.preheader:                             ; preds = %bb.q
  %i.el = add i64 %i.dl, -1
  %i.em = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.el)
  %i.en = add i64 %i.em, 1                        ; 3 uses
  %min.iters.check307 = icmp ult i64 %i.en, 9
  br i1 %min.iters.check307, label %.lr.ph.i31.preheader323, label %vector.ph308

vector.ph308:                                     ; preds = %.lr.ph.i31.preheader
  %i.eo = and i64 %i.en, 7                        ; 2 uses
  %i.ep = icmp eq i64 %i.eo, 0
  %i.eq = select i1 %i.ep, i64 8, i64 %i.eo
  %n.vec309 = sub i64 %i.en, %i.eq                ; 2 uses
  %broadcast.splatinsert310 = insertelement <4 x float> poison, float %i.ek, i64 0
  %broadcast.splat311 = shufflevector <4 x float> %broadcast.splatinsert310, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body312

vector.body312:                                   ; preds = %vector.body312, %vector.ph308
  %index313 = phi i64 [ 0, %vector.ph308 ], [ %index.next318, %vector.body312 ] ; 3 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %index313 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %wide.load314 = load <4 x float>, ptr %i.er, align 4, !noalias !384
  %wide.load315 = load <4 x float>, ptr %i.es, align 4, !noalias !384
  %i.et = fmul <4 x float> %broadcast.splat311, %wide.load314
  %i.eu = fmul <4 x float> %broadcast.splat311, %wide.load315
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index313 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16 ; 2 uses
  %wide.load316 = load <4 x float>, ptr %i.ev, align 4, !alias.scope !383, !noalias !385
  %wide.load317 = load <4 x float>, ptr %i.ew, align 4, !alias.scope !383, !noalias !385
  %i.ex = fadd <4 x float> %wide.load316, %i.et
  %i.ey = fadd <4 x float> %wide.load317, %i.eu
  store <4 x float> %i.ex, ptr %i.ev, align 4, !alias.scope !383, !noalias !385
  store <4 x float> %i.ey, ptr %i.ew, align 4, !alias.scope !383, !noalias !385
  %index.next318 = add nuw i64 %index313, 8       ; 2 uses
  %i.ez = icmp eq i64 %index.next318, %n.vec309
  br i1 %i.ez, label %.lr.ph.i31.preheader323, label %vector.body312, !llvm.loop !366

.lr.ph.i31.preheader323:                          ; preds = %vector.body312, %.lr.ph.i31.preheader
  %.sroa.01.07.i.ph = phi i64 [ 0, %.lr.ph.i31.preheader ], [ %n.vec309, %vector.body312 ]
  br label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %.lr.ph.i31.preheader323, %bb.r
  %.sroa.01.07.i = phi i64 [ %i.fa, %bb.r ], [ %.sroa.01.07.i.ph, %.lr.ph.i31.preheader323 ] ; 4 uses
  %exitcond10.not.i = icmp eq i64 %.sroa.01.07.i, %i.s
  br i1 %exitcond10.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i31
  %i.fa = add nuw nsw i64 %.sroa.01.07.i, 1       ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %.sroa.01.07.i
  %i.fc = load float, ptr %i.fb, align 4, !noalias !384, !noundef !5
  %i.fd = fmul float %i.ek, %i.fc
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.sroa.01.07.i ; 2 uses
  %i.ff = load float, ptr %i.fe, align 4, !alias.scope !383, !noalias !385, !noundef !5
  %i.fg = fadd float %i.ff, %i.fd
end_hunk_4
begin_hunk_5_@_RNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal29causal_decode_f32_interleaved0B9_:bb.a
  %i.hl = add nuw i64 %.sroa.013.099, 4           ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.he
  %i.hn = load float, ptr %i.hm, align 4, !noundef !5
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.he
  %i.hp = load float, ptr %i.ho, align 4, !noundef !5
  %i.hq = fmul float %i.hn, %i.hp
  %i.hr = fadd float %i.hk, %i.hq                 ; 3 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal34causal_decode_f32_interleaved_gqa20B9_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !align !9, !noundef !5
  %i.i = load i64, ptr %i.h, align 8, !noundef !5 ; 3 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %0, align 8, !nonnull !5, !align !9, !noundef !5
  %i.l = load i64, ptr %i.k, align 8, !noundef !5 ; 2 uses
  %i.m = mul i64 %i.l, %1
  %i.n = udiv i64 %i.m, %i.i                      ; 2 uses
  %i.o = add i64 %1, 1
  %i.p = mul i64 %i.l, %i.o
  %i.q = udiv i64 %i.p, %i.i                      ; 2 uses
  %.not = icmp ult i64 %i.n, %i.q
  br i1 %.not, label %bb.d, label %.loopexit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !5, !align !9, !noundef !5
  %i.t = load i64, ptr %i.s, align 8, !noundef !5
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = shl i64 %1, 1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !noundef !5 ; 7 uses
  %i.z = mul i64 %i.v, %i.y
  %i.aa = getelementptr [4 x i8], ptr %i.u, i64 %i.z ; 8 uses
  %.idx = shl i64 %i.y, 2                         ; 5 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 %.idx  ; 13 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !5, !align !9, !noundef !5
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !5
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !5, !align !9, !noundef !5
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !5
  %i.aj = mul i64 %i.ai, %i.y                     ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !5, !align !9, !noundef !5
  %i.am = load i64, ptr %i.al, align 8, !noundef !5
  %i.an = inttoptr i64 %i.am to ptr               ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !5
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !noundef !5
  %i.au = mul i64 %i.at, %i.aq                    ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !5, !align !9, !noundef !5
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !5, !align !9, !noundef !5
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !5, !align !16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.be = icmp eq i64 %.idx, 0
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.y ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx ; 2 uses
  %i.bn = icmp eq i64 %i.y, 0
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bx = add i64 %.idx, -4                       ; 2 uses
  %i.by = lshr exact i64 %i.bx, 2
  %i.bz = add nuw nsw i64 %i.by, 1                ; 2 uses
  %min.iters.check392 = icmp ult i64 %i.bx, 28
  %n.vec394 = and i64 %i.bz, 9223372036854775800  ; 3 uses
  %i.ca = shl i64 %n.vec394, 2
  %i.cb = getelementptr i8, ptr %i.aa, i64 %i.ca
  %cmp.n404 = icmp eq i64 %i.bz, %n.vec394
  %i.cc = add i64 %.idx, -4                       ; 2 uses
  %i.cd = lshr exact i64 %i.cc, 2
  %i.ce = add nuw nsw i64 %i.cd, 1                ; 2 uses
  %min.iters.check332 = icmp ult i64 %i.cc, 28
  %n.vec334 = and i64 %i.ce, 9223372036854775800  ; 3 uses
  %i.cf = shl i64 %n.vec334, 2
  %i.cg = getelementptr i8, ptr %i.ab, i64 %i.cf
  %cmp.n343 = icmp eq i64 %i.ce, %n.vec334
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit71
  %.sroa.034.0163 = phi i64 [ %i.n, %bb.d ], [ %i.ch, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit71 ] ; 3 uses
  %i.ch = add nuw i64 %.sroa.034.0163, 1          ; 2 uses
  %i.ci = load i64, ptr %i.aw, align 8, !noundef !5
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = shl i64 %.sroa.034.0163, 1              ; 3 uses
  %i.cl = load i64, ptr %i.x, align 8, !noundef !5 ; 10 uses
  %i.cm = mul i64 %i.cl, %i.ck                    ; 5 uses
  %i.cn = getelementptr [4 x i8], ptr %i.cj, i64 %i.cm ; 3 uses
  %i.co = getelementptr [4 x i8], ptr %i.cn, i64 %i.cl ; 4 uses
  %i.cp = load i64, ptr %i.ay, align 8, !noundef !5
  %i.cq = mul i64 %i.cp, %.sroa.034.0163
  %i.cr = or disjoint i64 %i.ck, 1
  %i.cs = mul i64 %i.cl, %i.cr                    ; 8 uses
  %i.ct = icmp ult i64 %i.cs, %i.cm
  %.not58 = icmp ugt i64 %i.cs, %i.aj
  %or.cond247 = or i1 %i.ct, %.not58
  br i1 %or.cond247, label %bb.f, label %bb.g, !prof !17

.loopexit:                                        ; preds = %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit71, %bb.b
  ret void

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.cm, i64 noundef %i.cs, i64 noundef %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #28
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.cm ; 5 uses
  %i.cv = add i64 %i.ck, 2
  %i.cw = mul i64 %i.cl, %i.cv                    ; 4 uses
  %i.cx = icmp ult i64 %i.cw, %i.cs
  %.not59 = icmp ugt i64 %i.cw, %i.aj
  %or.cond248 = or i1 %i.cx, %.not59
  br i1 %or.cond248, label %bb.h, label %bb.i, !prof !17

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.cs, i64 noundef %i.cw, i64 noundef %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #28
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.cs ; 5 uses
  tail call void @_RNvXs_NtNtCsf3Ta7LF998c_4core5slice10specializeSfINtB4_8SpecFillfE9spec_fillCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 4 %i.aa, i64 noundef %i.y, float noundef 0.000000e+00)
  tail call void @_RNvXs_NtNtCsf3Ta7LF998c_4core5slice10specializeSfINtB4_8SpecFillfE9spec_fillCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 4 %i.ab, i64 noundef %i.y, float noundef 0.000000e+00)
  %i.cz = load i64, ptr %i.ap, align 8, !noundef !5 ; 2 uses
  %.not164 = icmp eq i64 %i.cz, 0
  br i1 %.not164, label %._crit_edge160, label %.lr.ph159

.lr.ph159:                                        ; preds = %bb.i
  %.not165 = icmp eq i64 %i.cs, %i.cm
  %.not166 = icmp eq i64 %i.cw, %i.cs
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cl, i64 1) ; 4 uses
  %xtraiter = and i64 %umax, 3                    ; 3 uses
  %i.da = icmp ult i64 %i.cl, 4
  %unroll_iter = and i64 %umax, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod463 = icmp ne i64 %xtraiter, 0
  %xtraiter464 = and i64 %umax, 3                 ; 3 uses
  %i.db = icmp ult i64 %i.cl, 4
  %unroll_iter469 = and i64 %umax, -4
  %lcmp.mod466.not = icmp eq i64 %xtraiter464, 0
  %lcmp.mod468 = icmp ne i64 %xtraiter464, 0
  br label %bb.j

._crit_edge160:                                   ; preds = %bb.x, %bb.i
  %.sroa.013.0.lcssa = phi float [ 0.000000e+00, %bb.i ], [ %.sroa.013.1, %bb.x ] ; 2 uses
  %.sroa.08.0.lcssa = phi float [ 0.000000e+00, %bb.i ], [ %.sroa.08.1, %bb.x ] ; 2 uses
  %i.dc = fcmp ogt float %.sroa.08.0.lcssa, 0.000000e+00
  %i.dd = insertelement <2 x float> poison, float %.sroa.08.0.lcssa, i64 0
  %i.de = insertelement <2 x float> %i.dd, float %.sroa.013.0.lcssa, i64 1
  %i.df = fdiv <2 x float> splat (float 1.000000e+00), %i.de ; 2 uses
  %i.dg = extractelement <2 x float> %i.df, i64 0
  %.sroa.032.0 = select i1 %i.dc, float %i.dg, float 0.000000e+00 ; 4 uses
  %i.dh = fcmp ogt float %.sroa.013.0.lcssa, 0.000000e+00
  %i.di = extractelement <2 x float> %i.df, i64 1
  %.sroa.033.0 = select i1 %i.dh, float %i.di, float 0.000000e+00 ; 4 uses
  tail call void @_RNvXs_NtNtCsf3Ta7LF998c_4core5slice10specializeSfINtB4_8SpecFillfE9spec_fillCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 4 %i.cn, i64 noundef %i.cl, float noundef 0.000000e+00)
  tail call void @_RNvXs_NtNtCsf3Ta7LF998c_4core5slice10specializeSfINtB4_8SpecFillfE9spec_fillCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull align 4 %i.co, i64 noundef %i.cl, float noundef 0.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E3newCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %i.cn, ptr noundef nonnull %i.co, ptr noundef nonnull readonly align 4 %i.aa, ptr noundef nonnull readonly %i.ab)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !479)
  %.val.i = load i64, ptr %i.br, align 8, !alias.scope !479, !noundef !5 ; 9 uses
  %.val6.i = load i64, ptr %i.bs, align 8, !alias.scope !479, !noundef !5 ; 5 uses
  %i.dj = sub i64 %.val6.i, %.val.i               ; 4 uses
  %.not.i = icmp eq i64 %.val6.i, %.val.i
  br i1 %.not.i, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge160
  %.val.i.i = load ptr, ptr %i.b, align 8, !alias.scope !480, !nonnull !5, !noundef !5 ; 6 uses
  %.val1.i.i = load ptr, ptr %i.bt, align 8, !alias.scope !480, !nonnull !5, !noundef !5 ; 6 uses
  %min.iters.check294 = icmp ult i64 %i.dj, 8
  br i1 %min.iters.check294, label %scalar.ph293.preheader, label %vector.memcheck285

vector.memcheck285:                               ; preds = %.lr.ph.i
  %i.dk = shl i64 %.val.i, 2                      ; 2 uses
  %scevgep286 = getelementptr nuw i8, ptr %.val.i.i, i64 %i.dk
  %i.dl = shl i64 %.val6.i, 2                     ; 2 uses
  %scevgep287 = getelementptr i8, ptr %.val.i.i, i64 %i.dl
  %scevgep288 = getelementptr nuw i8, ptr %.val1.i.i, i64 %i.dk
  %scevgep289 = getelementptr i8, ptr %.val1.i.i, i64 %i.dl
  %bound0290 = icmp ult ptr %scevgep286, %scevgep289
  %bound1291 = icmp ult ptr %scevgep288, %scevgep287
  %found.conflict292 = and i1 %bound0290, %bound1291
  br i1 %found.conflict292, label %scalar.ph293.preheader, label %vector.ph295

vector.ph295:                                     ; preds = %vector.memcheck285
  %n.vec296 = and i64 %i.dj, -8                   ; 3 uses
  %broadcast.splatinsert297 = insertelement <4 x float> poison, float %.sroa.032.0, i64 0
  %broadcast.splat298 = shufflevector <4 x float> %broadcast.splatinsert297, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body299

vector.body299:                                   ; preds = %vector.body299, %vector.ph295
  %index300 = phi i64 [ 0, %vector.ph295 ], [ %index.next305, %vector.body299 ] ; 2 uses
  %i.dm = add i64 %index300, %.val.i              ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.dm ; 3 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i, i64 %i.dm ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %wide.load301 = load <4 x float>, ptr %i.do, align 4, !alias.scope !481, !noalias !479
  %wide.load302 = load <4 x float>, ptr %i.dp, align 4, !alias.scope !481, !noalias !479
  %i.dq = fmul <4 x float> %broadcast.splat298, %wide.load301
  %i.dr = fmul <4 x float> %broadcast.splat298, %wide.load302
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 2 uses
  %wide.load303 = load <4 x float>, ptr %i.dn, align 4, !alias.scope !482, !noalias !483
  %wide.load304 = load <4 x float>, ptr %i.ds, align 4, !alias.scope !482, !noalias !483
  %i.dt = fadd <4 x float> %wide.load303, %i.dq
  %i.du = fadd <4 x float> %wide.load304, %i.dr
  store <4 x float> %i.dt, ptr %i.dn, align 4, !alias.scope !482, !noalias !483
  store <4 x float> %i.du, ptr %i.ds, align 4, !alias.scope !482, !noalias !483
  %index.next305 = add nuw i64 %index300, 8       ; 2 uses
  %i.dv = icmp eq i64 %index.next305, %n.vec296
  br i1 %i.dv, label %middle.block306, label %vector.body299, !llvm.loop !402

middle.block306:                                  ; preds = %vector.body299
  %cmp.n307 = icmp eq i64 %i.dj, %n.vec296
  br i1 %cmp.n307, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit, label %scalar.ph293.preheader

scalar.ph293.preheader:                           ; preds = %vector.memcheck285, %.lr.ph.i, %middle.block306
  %.sroa.0.010.i.ph = phi i64 [ 0, %vector.memcheck285 ], [ 0, %.lr.ph.i ], [ %n.vec296, %middle.block306 ] ; 4 uses
  %2 = sub i64 %.val6.i, %.val.i
  %i.dw = xor i64 %.sroa.0.010.i.ph, -1
  %i.dx = add i64 %.val6.i, %i.dw
  %xtraiter479 = and i64 %2, 1
  %lcmp.mod480.not = icmp eq i64 %xtraiter479, 0
  br i1 %lcmp.mod480.not, label %scalar.ph293.prol.loopexit, label %scalar.ph293.prol

scalar.ph293.prol:                                ; preds = %scalar.ph293.preheader
  %i.dy = or disjoint i64 %.sroa.0.010.i.ph, 1
  %i.dz = add i64 %.sroa.0.010.i.ph, %.val.i      ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.dz ; 2 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i, i64 %i.dz
  %.val8.i.prol = load float, ptr %i.eb, align 4, !noalias !479, !noundef !5
  %i.ec = fmul float %.sroa.032.0, %.val8.i.prol
  %i.ed = load float, ptr %i.ea, align 4, !alias.scope !484, !noalias !479, !noundef !5
  %i.ee = fadd float %i.ed, %i.ec
  store float %i.ee, ptr %i.ea, align 4, !alias.scope !484, !noalias !479
  br label %scalar.ph293.prol.loopexit

scalar.ph293.prol.loopexit:                       ; preds = %scalar.ph293.prol, %scalar.ph293.preheader
  %.sroa.0.010.i.unr = phi i64 [ %.sroa.0.010.i.ph, %scalar.ph293.preheader ], [ %i.dy, %scalar.ph293.prol ]
  %i.ef = icmp eq i64 %i.dx, %.val.i
  br i1 %i.ef, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit, label %scalar.ph293.preheader.new

scalar.ph293.preheader.new:                       ; preds = %scalar.ph293.prol.loopexit
  %invariant.op524 = add i64 1, %.val.i
  br label %scalar.ph293

scalar.ph293:                                     ; preds = %scalar.ph293, %scalar.ph293.preheader.new
  %.sroa.0.010.i = phi i64 [ %.sroa.0.010.i.unr, %scalar.ph293.preheader.new ], [ %i.em, %scalar.ph293 ] ; 3 uses
  %i.eg = add i64 %.sroa.0.010.i, %.val.i         ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %i.eg ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i, i64 %i.eg
  %.val8.i = load float, ptr %i.ei, align 4, !noalias !479, !noundef !5
  %i.ej = fmul float %.sroa.032.0, %.val8.i
  %i.ek = load float, ptr %i.eh, align 4, !alias.scope !484, !noalias !479, !noundef !5
  %i.el = fadd float %i.ek, %i.ej
  store float %i.el, ptr %i.eh, align 4, !alias.scope !484, !noalias !479
  %i.em = add nuw i64 %.sroa.0.010.i, 2           ; 2 uses
  %.reass525 = add i64 %.sroa.0.010.i, %invariant.op524 ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i, i64 %.reass525 ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i, i64 %.reass525
  %.val8.i.1 = load float, ptr %i.eo, align 4, !noalias !479, !noundef !5
  %i.ep = fmul float %.sroa.032.0, %.val8.i.1
  %i.eq = load float, ptr %i.en, align 4, !alias.scope !484, !noalias !479, !noundef !5
  %i.er = fadd float %i.eq, %i.ep
  store float %i.er, ptr %i.en, align 4, !alias.scope !484, !noalias !479
  %exitcond.not.i.1 = icmp eq i64 %i.em, %i.dj
  br i1 %exitcond.not.i.1, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit, label %scalar.ph293, !llvm.loop !403

_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit: ; preds = %scalar.ph293.prol.loopexit, %scalar.ph293, %middle.block306, %._crit_edge160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cl
  call void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E3newCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.co, ptr noundef nonnull %i.es, ptr noundef nonnull readonly align 4 %i.ab, ptr noundef nonnull readonly %i.bi)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  %.val.i62 = load i64, ptr %i.bu, align 8, !alias.scope !485, !noundef !5 ; 9 uses
  %.val6.i63 = load i64, ptr %i.bv, align 8, !alias.scope !485, !noundef !5 ; 5 uses
  %i.et = sub i64 %.val6.i63, %.val.i62           ; 4 uses
  %.not.i64 = icmp eq i64 %.val6.i63, %.val.i62
  br i1 %.not.i64, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit71, label %.lr.ph.i65

.lr.ph.i65:                                       ; preds = %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit
  %.val.i.i66 = load ptr, ptr %i.a, align 8, !alias.scope !486, !nonnull !5, !noundef !5 ; 6 uses
  %.val1.i.i67 = load ptr, ptr %i.bw, align 8, !alias.scope !486, !nonnull !5, !noundef !5 ; 6 uses
  %min.iters.check = icmp ult i64 %i.et, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i65
  %i.eu = shl i64 %.val.i62, 2                    ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %.val.i.i66, i64 %i.eu
  %i.ev = shl i64 %.val6.i63, 2                   ; 2 uses
  %scevgep279 = getelementptr i8, ptr %.val.i.i66, i64 %i.ev
  %scevgep280 = getelementptr nuw i8, ptr %.val1.i.i67, i64 %i.eu
  %scevgep281 = getelementptr i8, ptr %.val1.i.i67, i64 %i.ev
  %bound0 = icmp ult ptr %scevgep, %scevgep281
  %bound1 = icmp ult ptr %scevgep280, %scevgep279
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.et, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.033.0, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ew = add i64 %index, %.val.i62               ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i66, i64 %i.ew ; 3 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i67, i64 %i.ew ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %wide.load = load <4 x float>, ptr %i.ey, align 4, !alias.scope !487, !noalias !485
  %wide.load282 = load <4 x float>, ptr %i.ez, align 4, !alias.scope !487, !noalias !485
  %i.fa = fmul <4 x float> %broadcast.splat, %wide.load
  %i.fb = fmul <4 x float> %broadcast.splat, %wide.load282
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 2 uses
  %wide.load283 = load <4 x float>, ptr %i.ex, align 4, !alias.scope !488, !noalias !489
  %wide.load284 = load <4 x float>, ptr %i.fc, align 4, !alias.scope !488, !noalias !489
  %i.fd = fadd <4 x float> %wide.load283, %i.fa
  %i.fe = fadd <4 x float> %wide.load284, %i.fb
  store <4 x float> %i.fd, ptr %i.ex, align 4, !alias.scope !488, !noalias !489
  store <4 x float> %i.fe, ptr %i.fc, align 4, !alias.scope !488, !noalias !489
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ff = icmp eq i64 %index.next, %n.vec
  br i1 %i.ff, label %middle.block, label %vector.body, !llvm.loop !415

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.et, %n.vec
  br i1 %cmp.n, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit71, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i65, %middle.block
  %.sroa.0.010.i68.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i65 ], [ %n.vec, %middle.block ] ; 4 uses
  %3 = sub i64 %.val6.i63, %.val.i62
  %i.fg = xor i64 %.sroa.0.010.i68.ph, -1
  %i.fh = add i64 %.val6.i63, %i.fg
  %xtraiter481 = and i64 %3, 1
  %lcmp.mod482.not = icmp eq i64 %xtraiter481, 0
  br i1 %lcmp.mod482.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.fi = or disjoint i64 %.sroa.0.010.i68.ph, 1
  %i.fj = add i64 %.sroa.0.010.i68.ph, %.val.i62  ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i66, i64 %i.fj ; 2 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i67, i64 %i.fj
  %.val8.i69.prol = load float, ptr %i.fl, align 4, !noalias !485, !noundef !5
  %i.fm = fmul float %.sroa.033.0, %.val8.i69.prol
  %i.fn = load float, ptr %i.fk, align 4, !alias.scope !490, !noalias !485, !noundef !5
  %i.fo = fadd float %i.fn, %i.fm
  store float %i.fo, ptr %i.fk, align 4, !alias.scope !490, !noalias !485
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.sroa.0.010.i68.unr = phi i64 [ %.sroa.0.010.i68.ph, %scalar.ph.preheader ], [ %i.fi, %scalar.ph.prol ]
  %i.fp = icmp eq i64 %i.fh, %.val.i62
  br i1 %i.fp, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit71, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op526 = add i64 1, %.val.i62
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %.sroa.0.010.i68 = phi i64 [ %.sroa.0.010.i68.unr, %scalar.ph.preheader.new ], [ %i.fw, %scalar.ph ] ; 3 uses
  %i.fq = add i64 %.sroa.0.010.i68, %.val.i62     ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i66, i64 %i.fq ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i67, i64 %i.fq
  %.val8.i69 = load float, ptr %i.fs, align 4, !noalias !485, !noundef !5
  %i.ft = fmul float %.sroa.033.0, %.val8.i69
  %i.fu = load float, ptr %i.fr, align 4, !alias.scope !490, !noalias !485, !noundef !5
  %i.fv = fadd float %i.fu, %i.ft
  store float %i.fv, ptr %i.fr, align 4, !alias.scope !490, !noalias !485
  %i.fw = add nuw i64 %.sroa.0.010.i68, 2         ; 2 uses
  %.reass527 = add i64 %.sroa.0.010.i68, %invariant.op526 ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i66, i64 %.reass527 ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i67, i64 %.reass527
  %.val8.i69.1 = load float, ptr %i.fy, align 4, !noalias !485, !noundef !5
  %i.fz = fmul float %.sroa.033.0, %.val8.i69.1
  %i.ga = load float, ptr %i.fx, align 4, !alias.scope !490, !noalias !485, !noundef !5
  %i.gb = fadd float %i.ga, %i.fz
  store float %i.gb, ptr %i.fx, align 4, !alias.scope !490, !noalias !485
  %exitcond.not.i70.1 = icmp eq i64 %i.fw, %i.et
  br i1 %exitcond.not.i70.1, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit71, label %scalar.ph, !llvm.loop !416

_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit71: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.gc = icmp ult i64 %i.ch, %i.q
  br i1 %i.gc, label %bb.e, label %.loopexit

bb.j:                                             ; preds = %.lr.ph159, %bb.x
  %.sroa.02.0157 = phi float [ -inf, %.lr.ph159 ], [ %.sroa.02.1, %bb.x ] ; 4 uses
  %.sroa.05.0156 = phi float [ -inf, %.lr.ph159 ], [ %.sroa.05.1, %bb.x ] ; 4 uses
  %.sroa.08.0155 = phi float [ 0.000000e+00, %.lr.ph159 ], [ %.sroa.08.1, %bb.x ] ; 2 uses
  %.sroa.013.0154 = phi float [ 0.000000e+00, %.lr.ph159 ], [ %.sroa.013.1, %bb.x ] ; 2 uses
  %.sroa.037.0153 = phi i64 [ 0, %.lr.ph159 ], [ %i.gd, %bb.x ] ; 2 uses
  %i.gd = add nuw i64 %.sroa.037.0153, 1          ; 3 uses
  %i.ge = load i64, ptr %i.as, align 8, !noundef !5 ; 2 uses
  %i.gf = mul i64 %i.ge, %.sroa.037.0153
  %i.gg = add i64 %i.gf, %i.cq                    ; 6 uses
  %i.gh = load i64, ptr %i.x, align 8, !noundef !5 ; 6 uses
  %i.gi = add i64 %i.gg, %i.gh                    ; 6 uses
  %i.gj = icmp uge i64 %i.gi, %i.gg
  %i.gk = icmp ule i64 %i.gi, %i.au
  %or.cond = and i1 %i.gj, %i.gk
  br i1 %or.cond, label %bb.l, label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.gg, i64 noundef %i.gi, i64 noundef %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #28
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.gg ; 10 uses
  %i.gm = shl i64 %i.gh, 1
  %i.gn = add i64 %i.gg, %i.gm                    ; 3 uses
  %i.go = icmp ult i64 %i.gn, %i.gi
  %.not60 = icmp ugt i64 %i.gn, %i.au
  %or.cond61 = or i1 %i.go, %.not60
  br i1 %or.cond61, label %bb.m, label %bb.n, !prof !17

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.gi, i64 noundef %i.gn, i64 noundef %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #28
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.gi ; 8 uses
  %i.gq = load i64, ptr %i.ap, align 8, !noundef !5
  %i.gr = icmp ult i64 %i.gd, %i.gq
  br i1 %i.gr, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.gs = add i64 %i.gg, %i.ge                    ; 3 uses
  %i.gt = icmp ugt i64 %i.gs, %i.au
  br i1 %i.gt, label %bb.r, label %bb.q, !prof !8

bb.p:                                             ; preds = %bb.n, %bb.q
  br i1 %.not165, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.p
  br i1 %i.da, label %.lr.ph.epil.preheader, label %.lr.ph

bb.q:                                             ; preds = %bb.o
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.gs
  tail call void @llvm.prefetch.p0(ptr readonly %i.gu, i32 0, i32 3, i32 1)
  br label %bb.p

bb.r:                                             ; preds = %bb.o
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef %i.gs, i64 noundef %i.au, i64 noundef %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #28
  unreachable

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.020.0148.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.id, %.preheader.loopexit.unr-lcssa ]
  %.sroa.039.0147.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.hx, %.preheader.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod463)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.020.0148.epil = phi float [ %i.hb, %.lr.ph.epil ], [ %.sroa.020.0148.epil.init, %.lr.ph.epil.preheader ]
  %.sroa.039.0147.epil = phi i64 [ %i.gv, %.lr.ph.epil ], [ %.sroa.039.0147.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.gv = add nuw i64 %.sroa.039.0147.epil, 1
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %.sroa.039.0147.epil
  %i.gx = load float, ptr %i.gw, align 4, !noundef !5
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %.sroa.039.0147.epil
  %i.gz = load float, ptr %i.gy, align 4, !noundef !5
  %i.ha = fmul float %i.gx, %i.gz
  %i.hb = fadd float %.sroa.020.0148.epil, %i.ha  ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %.lr.ph.epil, !llvm.loop !417

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.epil, %bb.p
  %.sroa.020.0.lcssa = phi float [ 0.000000e+00, %bb.p ], [ %i.id, %.preheader.loopexit.unr-lcssa ], [ %i.hb, %.lr.ph.epil ]
  br i1 %.not166, label %._crit_edge, label %.lr.ph151.preheader

.lr.ph151.preheader:                              ; preds = %.preheader
  br i1 %i.db, label %.lr.ph151.epil.preheader, label %.lr.ph151

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.020.0148 = phi float [ %i.id, %.lr.ph ], [ 0.000000e+00, %.lr.ph.preheader ]
  %.sroa.039.0147 = phi i64 [ %i.hx, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.hc = or disjoint i64 %.sroa.039.0147, 1      ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %.sroa.039.0147
  %i.he = load float, ptr %i.hd, align 4, !noundef !5
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %.sroa.039.0147
  %i.hg = load float, ptr %i.hf, align 4, !noundef !5
  %i.hh = fmul float %i.he, %i.hg
  %i.hi = fadd float %.sroa.020.0148, %i.hh
  %i.hj = or disjoint i64 %.sroa.039.0147, 2      ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.hc
  %i.hl = load float, ptr %i.hk, align 4, !noundef !5
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.hc
  %i.hn = load float, ptr %i.hm, align 4, !noundef !5
  %i.ho = fmul float %i.hl, %i.hn
  %i.hp = fadd float %i.hi, %i.ho
  %i.hq = or disjoint i64 %.sroa.039.0147, 3      ; 2 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.hj
  %i.hs = load float, ptr %i.hr, align 4, !noundef !5
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.hj
  %i.hu = load float, ptr %i.ht, align 4, !noundef !5
  %i.hv = fmul float %i.hs, %i.hu
  %i.hw = fadd float %i.hp, %i.hv
  %i.hx = add nuw i64 %.sroa.039.0147, 4          ; 2 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.hq
  %i.hz = load float, ptr %i.hy, align 4, !noundef !5
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.hq
  %i.ib = load float, ptr %i.ia, align 4, !noundef !5
  %i.ic = fmul float %i.hz, %i.ib
  %i.id = fadd float %i.hw, %i.ic                 ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph151
  br i1 %lcmp.mod466.not, label %._crit_edge, label %.lr.ph151.epil.preheader

.lr.ph151.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph151.preheader
  %.sroa.026.0150.epil.init = phi float [ 0.000000e+00, %.lr.ph151.preheader ], [ %i.jq, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.041.0149.epil.init = phi i64 [ 0, %.lr.ph151.preheader ], [ %i.jk, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod468)
  br label %.lr.ph151.epil

.lr.ph151.epil:                                   ; preds = %.lr.ph151.epil, %.lr.ph151.epil.preheader
  %.sroa.026.0150.epil = phi float [ %i.ik, %.lr.ph151.epil ], [ %.sroa.026.0150.epil.init, %.lr.ph151.epil.preheader ]
  %.sroa.041.0149.epil = phi i64 [ %i.ie, %.lr.ph151.epil ], [ %.sroa.041.0149.epil.init, %.lr.ph151.epil.preheader ] ; 3 uses
  %epil.iter465 = phi i64 [ %epil.iter465.next, %.lr.ph151.epil ], [ 0, %.lr.ph151.epil.preheader ]
  %i.ie = add nuw i64 %.sroa.041.0149.epil, 1
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.sroa.041.0149.epil
  %i.ig = load float, ptr %i.if, align 4, !noundef !5
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %.sroa.041.0149.epil
  %i.ii = load float, ptr %i.ih, align 4, !noundef !5
  %i.ij = fmul float %i.ig, %i.ii
  %i.ik = fadd float %.sroa.026.0150.epil, %i.ij  ; 2 uses
  %epil.iter465.next = add i64 %epil.iter465, 1   ; 2 uses
  %epil.iter465.cmp.not = icmp eq i64 %epil.iter465.next, %xtraiter464
  br i1 %epil.iter465.cmp.not, label %._crit_edge, label %.lr.ph151.epil, !llvm.loop !418

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph151.epil, %.preheader
  %.sroa.026.0.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.jq, %._crit_edge.loopexit.unr-lcssa ], [ %i.ik, %.lr.ph151.epil ]
  %i.il = load float, ptr %i.ba, align 4, !noundef !5 ; 2 uses
  %i.im = fmul float %.sroa.020.0.lcssa, %i.il    ; 4 uses
  %i.in = fmul float %.sroa.026.0.lcssa, %i.il    ; 4 uses
  %i.io = fcmp ogt float %i.im, %.sroa.02.0157
  br i1 %i.io, label %bb.t, label %bb.s

.lr.ph151:                                        ; preds = %.lr.ph151.preheader, %.lr.ph151
  %.sroa.026.0150 = phi float [ %i.jq, %.lr.ph151 ], [ 0.000000e+00, %.lr.ph151.preheader ]
  %.sroa.041.0149 = phi i64 [ %i.jk, %.lr.ph151 ], [ 0, %.lr.ph151.preheader ] ; 6 uses
  %niter470 = phi i64 [ %niter470.next.3, %.lr.ph151 ], [ 0, %.lr.ph151.preheader ]
  %i.ip = or disjoint i64 %.sroa.041.0149, 1      ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.sroa.041.0149
  %i.ir = load float, ptr %i.iq, align 4, !noundef !5
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %.sroa.041.0149
  %i.it = load float, ptr %i.is, align 4, !noundef !5
  %i.iu = fmul float %i.ir, %i.it
  %i.iv = fadd float %.sroa.026.0150, %i.iu
  %i.iw = or disjoint i64 %.sroa.041.0149, 2      ; 2 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.ip
  %i.iy = load float, ptr %i.ix, align 4, !noundef !5
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.ip
  %i.ja = load float, ptr %i.iz, align 4, !noundef !5
  %i.jb = fmul float %i.iy, %i.ja
  %i.jc = fadd float %i.iv, %i.jb
  %i.jd = or disjoint i64 %.sroa.041.0149, 3      ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.iw
  %i.jf = load float, ptr %i.je, align 4, !noundef !5
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.iw
  %i.jh = load float, ptr %i.jg, align 4, !noundef !5
  %i.ji = fmul float %i.jf, %i.jh
  %i.jj = fadd float %i.jc, %i.ji
  %i.jk = add nuw i64 %.sroa.041.0149, 4          ; 2 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.jd
  %i.jm = load float, ptr %i.jl, align 4, !noundef !5
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %i.jd
  %i.jo = load float, ptr %i.jn, align 4, !noundef !5
  %i.jp = fmul float %i.jm, %i.jo
  %i.jq = fadd float %i.jj, %i.jp                 ; 3 uses
  %niter470.next.3 = add i64 %niter470, 4         ; 2 uses
  %niter470.ncmp.3 = icmp eq i64 %niter470.next.3, %unroll_iter469
  br i1 %niter470.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph151

bb.s:                                             ; preds = %._crit_edge
  %i.jr = fsub float %i.im, %.sroa.02.0157
  %i.js = tail call float @llvm.exp.f32(float %i.jr) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gh
  call void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E3newCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ab, ptr noundef nonnull readonly align 4 %i.gp, ptr noundef nonnull readonly %i.jt)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  %.val.i72 = load i64, ptr %i.bb, align 8, !alias.scope !491, !noundef !5 ; 9 uses
  %.val6.i73 = load i64, ptr %i.bc, align 8, !alias.scope !491, !noundef !5 ; 5 uses
  %i.ju = sub i64 %.val6.i73, %.val.i72           ; 4 uses
  %.not.i74 = icmp eq i64 %.val6.i73, %.val.i72
  br i1 %.not.i74, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit81, label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %bb.s
  %.val.i.i76 = load ptr, ptr %i.e, align 8, !alias.scope !492, !nonnull !5, !noundef !5 ; 6 uses
  %.val1.i.i77 = load ptr, ptr %i.bd, align 8, !alias.scope !492, !nonnull !5, !noundef !5 ; 6 uses
  %min.iters.check415 = icmp ult i64 %i.ju, 8
  br i1 %min.iters.check415, label %scalar.ph414.preheader, label %vector.memcheck406

vector.memcheck406:                               ; preds = %.lr.ph.i75
  %i.jv = shl i64 %.val.i72, 2                    ; 2 uses
  %scevgep407 = getelementptr nuw i8, ptr %.val.i.i76, i64 %i.jv
  %i.jw = shl i64 %.val6.i73, 2                   ; 2 uses
  %scevgep408 = getelementptr i8, ptr %.val.i.i76, i64 %i.jw
  %scevgep409 = getelementptr nuw i8, ptr %.val1.i.i77, i64 %i.jv
  %scevgep410 = getelementptr i8, ptr %.val1.i.i77, i64 %i.jw
  %bound0411 = icmp ult ptr %scevgep407, %scevgep410
  %bound1412 = icmp ult ptr %scevgep409, %scevgep408
  %found.conflict413 = and i1 %bound0411, %bound1412
  br i1 %found.conflict413, label %scalar.ph414.preheader, label %vector.ph416

vector.ph416:                                     ; preds = %vector.memcheck406
  %n.vec417 = and i64 %i.ju, -8                   ; 3 uses
  %broadcast.splatinsert418 = insertelement <4 x float> poison, float %i.js, i64 0
  %broadcast.splat419 = shufflevector <4 x float> %broadcast.splatinsert418, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body420

vector.body420:                                   ; preds = %vector.body420, %vector.ph416
  %index421 = phi i64 [ 0, %vector.ph416 ], [ %index.next426, %vector.body420 ] ; 2 uses
  %i.jx = add i64 %index421, %.val.i72            ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i76, i64 %i.jx ; 3 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i77, i64 %i.jx ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %wide.load422 = load <4 x float>, ptr %i.jz, align 4, !alias.scope !493, !noalias !491
  %wide.load423 = load <4 x float>, ptr %i.ka, align 4, !alias.scope !493, !noalias !491
  %i.kb = fmul <4 x float> %broadcast.splat419, %wide.load422
  %i.kc = fmul <4 x float> %broadcast.splat419, %wide.load423
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jy, i64 16 ; 2 uses
  %wide.load424 = load <4 x float>, ptr %i.jy, align 4, !alias.scope !494, !noalias !495
  %wide.load425 = load <4 x float>, ptr %i.kd, align 4, !alias.scope !494, !noalias !495
  %i.ke = fadd <4 x float> %wide.load424, %i.kb
  %i.kf = fadd <4 x float> %wide.load425, %i.kc
  store <4 x float> %i.ke, ptr %i.jy, align 4, !alias.scope !494, !noalias !495
  store <4 x float> %i.kf, ptr %i.kd, align 4, !alias.scope !494, !noalias !495
  %index.next426 = add nuw i64 %index421, 8       ; 2 uses
  %i.kg = icmp eq i64 %index.next426, %n.vec417
  br i1 %i.kg, label %middle.block427, label %vector.body420, !llvm.loop !430

middle.block427:                                  ; preds = %vector.body420
  %cmp.n428 = icmp eq i64 %i.ju, %n.vec417
  br i1 %cmp.n428, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit81, label %scalar.ph414.preheader

scalar.ph414.preheader:                           ; preds = %vector.memcheck406, %.lr.ph.i75, %middle.block427
  %.sroa.0.010.i78.ph = phi i64 [ 0, %vector.memcheck406 ], [ 0, %.lr.ph.i75 ], [ %n.vec417, %middle.block427 ] ; 4 uses
  %4 = sub i64 %.val6.i73, %.val.i72
  %i.kh = xor i64 %.sroa.0.010.i78.ph, -1
  %i.ki = add i64 %.val6.i73, %i.kh
  %xtraiter471 = and i64 %4, 1
  %lcmp.mod472.not = icmp eq i64 %xtraiter471, 0
  br i1 %lcmp.mod472.not, label %scalar.ph414.prol.loopexit, label %scalar.ph414.prol

scalar.ph414.prol:                                ; preds = %scalar.ph414.preheader
  %i.kj = or disjoint i64 %.sroa.0.010.i78.ph, 1
  %i.kk = add i64 %.sroa.0.010.i78.ph, %.val.i72  ; 2 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i76, i64 %i.kk ; 2 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i77, i64 %i.kk
  %.val8.i79.prol = load float, ptr %i.km, align 4, !noalias !491, !noundef !5
  %i.kn = fmul float %i.js, %.val8.i79.prol
  %i.ko = load float, ptr %i.kl, align 4, !alias.scope !496, !noalias !491, !noundef !5
  %i.kp = fadd float %i.ko, %i.kn
  store float %i.kp, ptr %i.kl, align 4, !alias.scope !496, !noalias !491
  br label %scalar.ph414.prol.loopexit

scalar.ph414.prol.loopexit:                       ; preds = %scalar.ph414.prol, %scalar.ph414.preheader
  %.sroa.0.010.i78.unr = phi i64 [ %.sroa.0.010.i78.ph, %scalar.ph414.preheader ], [ %i.kj, %scalar.ph414.prol ]
  %i.kq = icmp eq i64 %i.ki, %.val.i72
  br i1 %i.kq, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit81, label %scalar.ph414.preheader.new

scalar.ph414.preheader.new:                       ; preds = %scalar.ph414.prol.loopexit
  %invariant.op = add i64 1, %.val.i72
  br label %scalar.ph414

scalar.ph414:                                     ; preds = %scalar.ph414, %scalar.ph414.preheader.new
  %.sroa.0.010.i78 = phi i64 [ %.sroa.0.010.i78.unr, %scalar.ph414.preheader.new ], [ %i.kx, %scalar.ph414 ] ; 3 uses
  %i.kr = add i64 %.sroa.0.010.i78, %.val.i72     ; 2 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i76, i64 %i.kr ; 2 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i77, i64 %i.kr
  %.val8.i79 = load float, ptr %i.kt, align 4, !noalias !491, !noundef !5
  %i.ku = fmul float %i.js, %.val8.i79
  %i.kv = load float, ptr %i.ks, align 4, !alias.scope !496, !noalias !491, !noundef !5
  %i.kw = fadd float %i.kv, %i.ku
  store float %i.kw, ptr %i.ks, align 4, !alias.scope !496, !noalias !491
  %i.kx = add nuw i64 %.sroa.0.010.i78, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.010.i78, %invariant.op ; 2 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i76, i64 %.reass ; 2 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i77, i64 %.reass
  %.val8.i79.1 = load float, ptr %i.kz, align 4, !noalias !491, !noundef !5
  %i.la = fmul float %i.js, %.val8.i79.1
  %i.lb = load float, ptr %i.ky, align 4, !alias.scope !496, !noalias !491, !noundef !5
  %i.lc = fadd float %i.lb, %i.la
  store float %i.lc, ptr %i.ky, align 4, !alias.scope !496, !noalias !491
  %exitcond.not.i80.1 = icmp eq i64 %i.kx, %i.ju
  br i1 %exitcond.not.i80.1, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit81, label %scalar.ph414, !llvm.loop !431

_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit81: ; preds = %scalar.ph414.prol.loopexit, %scalar.ph414, %middle.block427, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ld = fadd float %.sroa.08.0155, %i.js
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge
  %i.le = fsub float %.sroa.02.0157, %i.im
  %i.lf = tail call float @llvm.exp.f32(float %i.le) ; 3 uses
  br i1 %i.be, label %_RINvXs2Q_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_7IterMutfENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal9vec_scale0EB1T_.exit, label %.lr.ph.i82.preheader

.lr.ph.i82.preheader:                             ; preds = %bb.t
  br i1 %min.iters.check392, label %.lr.ph.i82.preheader431, label %vector.ph393

vector.ph393:                                     ; preds = %.lr.ph.i82.preheader
  %broadcast.splatinsert395 = insertelement <4 x float> poison, float %i.lf, i64 0
  %broadcast.splat396 = shufflevector <4 x float> %broadcast.splatinsert395, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body397

vector.body397:                                   ; preds = %vector.body397, %vector.ph393
  %index398 = phi i64 [ 0, %vector.ph393 ], [ %index.next402, %vector.body397 ] ; 2 uses
  %i.lg = shl i64 %index398, 2
  %next.gep399 = getelementptr i8, ptr %i.aa, i64 %i.lg ; 3 uses
  %i.lh = getelementptr i8, ptr %next.gep399, i64 16 ; 2 uses
  %wide.load400 = load <4 x float>, ptr %next.gep399, align 4, !alias.scope !497
  %wide.load401 = load <4 x float>, ptr %i.lh, align 4, !alias.scope !497
  %i.li = fmul <4 x float> %broadcast.splat396, %wide.load400
  %i.lj = fmul <4 x float> %broadcast.splat396, %wide.load401
  store <4 x float> %i.li, ptr %next.gep399, align 4, !alias.scope !497
  store <4 x float> %i.lj, ptr %i.lh, align 4, !alias.scope !497
  %index.next402 = add nuw i64 %index398, 8       ; 2 uses
  %i.lk = icmp eq i64 %index.next402, %n.vec394
  br i1 %i.lk, label %middle.block403, label %vector.body397, !llvm.loop !434

middle.block403:                                  ; preds = %vector.body397
  br i1 %cmp.n404, label %_RINvXs2Q_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_7IterMutfENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal9vec_scale0EB1T_.exit, label %.lr.ph.i82.preheader431

.lr.ph.i82.preheader431:                          ; preds = %.lr.ph.i82.preheader, %middle.block403
  %.sroa.0.02.i.ph = phi ptr [ %i.aa, %.lr.ph.i82.preheader ], [ %i.cb, %middle.block403 ]
  br label %.lr.ph.i82

.lr.ph.i82:                                       ; preds = %.lr.ph.i82.preheader431, %.lr.ph.i82
  %.sroa.0.02.i = phi ptr [ %i.ll, %.lr.ph.i82 ], [ %.sroa.0.02.i.ph, %.lr.ph.i82.preheader431 ] ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 4 ; 2 uses
  %i.lm = load float, ptr %.sroa.0.02.i, align 4, !alias.scope !497, !noundef !5
  %i.ln = fmul float %i.lf, %i.lm
  store float %i.ln, ptr %.sroa.0.02.i, align 4, !alias.scope !497
  %i.lo = icmp eq ptr %i.ll, %i.ab
  br i1 %i.lo, label %_RINvXs2Q_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_7IterMutfENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal9vec_scale0EB1T_.exit, label %.lr.ph.i82, !llvm.loop !435

_RINvXs2Q_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_7IterMutfENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal9vec_scale0EB1T_.exit: ; preds = %.lr.ph.i82, %middle.block403, %bb.t
  %i.lp = fmul float %.sroa.08.0155, %i.lf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gh
  call void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E3newCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ab, ptr noundef nonnull readonly align 4 %i.gp, ptr noundef nonnull readonly %i.lq)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %.val.i83 = load i64, ptr %i.bf, align 8, !alias.scope !498, !noundef !5 ; 9 uses
  %.val6.i84 = load i64, ptr %i.bg, align 8, !alias.scope !498, !noundef !5 ; 5 uses
  %i.lr = sub i64 %.val6.i84, %.val.i83           ; 4 uses
  %.not.i85 = icmp eq i64 %.val6.i84, %.val.i83
  br i1 %.not.i85, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal7vec_add0E0EB3i_.exit, label %.lr.ph.i86

.lr.ph.i86:                                       ; preds = %_RINvXs2Q_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_7IterMutfENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal9vec_scale0EB1T_.exit
  %.val.i.i87 = load ptr, ptr %i.f, align 8, !alias.scope !499, !nonnull !5, !noundef !5 ; 6 uses
  %.val1.i.i88 = load ptr, ptr %i.bh, align 8, !alias.scope !499, !nonnull !5, !noundef !5 ; 6 uses
  %min.iters.check378 = icmp ult i64 %i.lr, 8
  br i1 %min.iters.check378, label %scalar.ph377.preheader, label %vector.memcheck369

vector.memcheck369:                               ; preds = %.lr.ph.i86
  %i.ls = shl i64 %.val.i83, 2                    ; 2 uses
  %scevgep370 = getelementptr nuw i8, ptr %.val.i.i87, i64 %i.ls
  %i.lt = shl i64 %.val6.i84, 2                   ; 2 uses
  %scevgep371 = getelementptr i8, ptr %.val.i.i87, i64 %i.lt
  %scevgep372 = getelementptr nuw i8, ptr %.val1.i.i88, i64 %i.ls
  %scevgep373 = getelementptr i8, ptr %.val1.i.i88, i64 %i.lt
  %bound0374 = icmp ult ptr %scevgep370, %scevgep373
  %bound1375 = icmp ult ptr %scevgep372, %scevgep371
  %found.conflict376 = and i1 %bound0374, %bound1375
  br i1 %found.conflict376, label %scalar.ph377.preheader, label %vector.ph379

vector.ph379:                                     ; preds = %vector.memcheck369
  %n.vec380 = and i64 %i.lr, -8                   ; 3 uses
  br label %vector.body381

vector.body381:                                   ; preds = %vector.body381, %vector.ph379
  %index382 = phi i64 [ 0, %vector.ph379 ], [ %index.next387, %vector.body381 ] ; 2 uses
  %i.lu = add i64 %index382, %.val.i83            ; 2 uses
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i87, i64 %i.lu ; 3 uses
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i88, i64 %i.lu ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  %wide.load383 = load <4 x float>, ptr %i.lw, align 4, !alias.scope !500, !noalias !498
  %wide.load384 = load <4 x float>, ptr %i.lx, align 4, !alias.scope !500, !noalias !498
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 16 ; 2 uses
  %wide.load385 = load <4 x float>, ptr %i.lv, align 4, !alias.scope !501, !noalias !502
  %wide.load386 = load <4 x float>, ptr %i.ly, align 4, !alias.scope !501, !noalias !502
  %i.lz = fadd <4 x float> %wide.load383, %wide.load385
  %i.ma = fadd <4 x float> %wide.load384, %wide.load386
  store <4 x float> %i.lz, ptr %i.lv, align 4, !alias.scope !501, !noalias !502
  store <4 x float> %i.ma, ptr %i.ly, align 4, !alias.scope !501, !noalias !502
  %index.next387 = add nuw i64 %index382, 8       ; 2 uses
  %i.mb = icmp eq i64 %index.next387, %n.vec380
  br i1 %i.mb, label %middle.block388, label %vector.body381, !llvm.loop !447

middle.block388:                                  ; preds = %vector.body381
  %cmp.n389 = icmp eq i64 %i.lr, %n.vec380
  br i1 %cmp.n389, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal7vec_add0E0EB3i_.exit, label %scalar.ph377.preheader

scalar.ph377.preheader:                           ; preds = %vector.memcheck369, %.lr.ph.i86, %middle.block388
  %.sroa.0.08.i.ph = phi i64 [ 0, %vector.memcheck369 ], [ 0, %.lr.ph.i86 ], [ %n.vec380, %middle.block388 ] ; 4 uses
  %5 = sub i64 %.val6.i84, %.val.i83
  %i.mc = xor i64 %.sroa.0.08.i.ph, -1
  %i.md = add i64 %.val6.i84, %i.mc
  %xtraiter473 = and i64 %5, 1
  %lcmp.mod474.not = icmp eq i64 %xtraiter473, 0
  br i1 %lcmp.mod474.not, label %scalar.ph377.prol.loopexit, label %scalar.ph377.prol

scalar.ph377.prol:                                ; preds = %scalar.ph377.preheader
  %i.me = or disjoint i64 %.sroa.0.08.i.ph, 1
  %i.mf = add i64 %.sroa.0.08.i.ph, %.val.i83     ; 2 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i87, i64 %i.mf ; 2 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i88, i64 %i.mf
  %.val7.i.prol = load float, ptr %i.mh, align 4, !noalias !498, !noundef !5
  %i.mi = load float, ptr %i.mg, align 4, !alias.scope !503, !noalias !498, !noundef !5
  %i.mj = fadd float %.val7.i.prol, %i.mi
  store float %i.mj, ptr %i.mg, align 4, !alias.scope !503, !noalias !498
  br label %scalar.ph377.prol.loopexit

scalar.ph377.prol.loopexit:                       ; preds = %scalar.ph377.prol, %scalar.ph377.preheader
  %.sroa.0.08.i.unr = phi i64 [ %.sroa.0.08.i.ph, %scalar.ph377.preheader ], [ %i.me, %scalar.ph377.prol ]
  %i.mk = icmp eq i64 %i.md, %.val.i83
  br i1 %i.mk, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal7vec_add0E0EB3i_.exit, label %scalar.ph377.preheader.new

scalar.ph377.preheader.new:                       ; preds = %scalar.ph377.prol.loopexit
  %invariant.op518 = add i64 1, %.val.i83
  br label %scalar.ph377

scalar.ph377:                                     ; preds = %scalar.ph377, %scalar.ph377.preheader.new
  %.sroa.0.08.i = phi i64 [ %.sroa.0.08.i.unr, %scalar.ph377.preheader.new ], [ %i.mq, %scalar.ph377 ] ; 3 uses
  %i.ml = add i64 %.sroa.0.08.i, %.val.i83        ; 2 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i87, i64 %i.ml ; 2 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i88, i64 %i.ml
  %.val7.i = load float, ptr %i.mn, align 4, !noalias !498, !noundef !5
  %i.mo = load float, ptr %i.mm, align 4, !alias.scope !503, !noalias !498, !noundef !5
  %i.mp = fadd float %.val7.i, %i.mo
  store float %i.mp, ptr %i.mm, align 4, !alias.scope !503, !noalias !498
  %i.mq = add nuw i64 %.sroa.0.08.i, 2            ; 2 uses
  %.reass519 = add i64 %.sroa.0.08.i, %invariant.op518 ; 2 uses
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i87, i64 %.reass519 ; 2 uses
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i88, i64 %.reass519
  %.val7.i.1 = load float, ptr %i.ms, align 4, !noalias !498, !noundef !5
  %i.mt = load float, ptr %i.mr, align 4, !alias.scope !503, !noalias !498, !noundef !5
  %i.mu = fadd float %.val7.i.1, %i.mt
  store float %i.mu, ptr %i.mr, align 4, !alias.scope !503, !noalias !498
  %exitcond.not.i89.1 = icmp eq i64 %i.mq, %i.lr
  br i1 %exitcond.not.i89.1, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal7vec_add0E0EB3i_.exit, label %scalar.ph377, !llvm.loop !448

_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal7vec_add0E0EB3i_.exit: ; preds = %scalar.ph377.prol.loopexit, %scalar.ph377, %middle.block388, %_RINvXs2Q_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_7IterMutfENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal9vec_scale0EB1T_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.mv = fadd float %i.lp, 1.000000e+00
  br label %bb.u

bb.u:                                             ; preds = %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal7vec_add0E0EB3i_.exit, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit81
  %.sroa.08.1 = phi float [ %i.mv, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal7vec_add0E0EB3i_.exit ], [ %i.ld, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit81 ] ; 2 uses
  %.sroa.02.1 = phi float [ %i.im, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal7vec_add0E0EB3i_.exit ], [ %.sroa.02.0157, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit81 ]
  %i.mw = fcmp ogt float %i.in, %.sroa.05.0156
  br i1 %i.mw, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.mx = fsub float %i.in, %.sroa.05.0156
  %i.my = tail call float @llvm.exp.f32(float %i.mx) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gh
  call void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E3newCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.bi, ptr noundef nonnull readonly align 4 %i.gp, ptr noundef nonnull readonly %i.mz)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504)
  %.val.i90 = load i64, ptr %i.bj, align 8, !alias.scope !504, !noundef !5 ; 9 uses
  %.val6.i91 = load i64, ptr %i.bk, align 8, !alias.scope !504, !noundef !5 ; 5 uses
  %i.na = sub i64 %.val6.i91, %.val.i90           ; 4 uses
  %.not.i92 = icmp eq i64 %.val6.i91, %.val.i90
  br i1 %.not.i92, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit99, label %.lr.ph.i93

.lr.ph.i93:                                       ; preds = %bb.v
  %.val.i.i94 = load ptr, ptr %i.c, align 8, !alias.scope !505, !nonnull !5, !noundef !5 ; 6 uses
  %.val1.i.i95 = load ptr, ptr %i.bl, align 8, !alias.scope !505, !nonnull !5, !noundef !5 ; 6 uses
  %min.iters.check354 = icmp ult i64 %i.na, 8
  br i1 %min.iters.check354, label %scalar.ph353.preheader, label %vector.memcheck345

vector.memcheck345:                               ; preds = %.lr.ph.i93
  %i.nb = shl i64 %.val.i90, 2                    ; 2 uses
  %scevgep346 = getelementptr nuw i8, ptr %.val.i.i94, i64 %i.nb
  %i.nc = shl i64 %.val6.i91, 2                   ; 2 uses
  %scevgep347 = getelementptr i8, ptr %.val.i.i94, i64 %i.nc
  %scevgep348 = getelementptr nuw i8, ptr %.val1.i.i95, i64 %i.nb
  %scevgep349 = getelementptr i8, ptr %.val1.i.i95, i64 %i.nc
  %bound0350 = icmp ult ptr %scevgep346, %scevgep349
  %bound1351 = icmp ult ptr %scevgep348, %scevgep347
  %found.conflict352 = and i1 %bound0350, %bound1351
  br i1 %found.conflict352, label %scalar.ph353.preheader, label %vector.ph355

vector.ph355:                                     ; preds = %vector.memcheck345
  %n.vec356 = and i64 %i.na, -8                   ; 3 uses
  %broadcast.splatinsert357 = insertelement <4 x float> poison, float %i.my, i64 0
  %broadcast.splat358 = shufflevector <4 x float> %broadcast.splatinsert357, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body359

vector.body359:                                   ; preds = %vector.body359, %vector.ph355
  %index360 = phi i64 [ 0, %vector.ph355 ], [ %index.next365, %vector.body359 ] ; 2 uses
  %i.nd = add i64 %index360, %.val.i90            ; 2 uses
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i94, i64 %i.nd ; 3 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i95, i64 %i.nd ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  %wide.load361 = load <4 x float>, ptr %i.nf, align 4, !alias.scope !506, !noalias !504
  %wide.load362 = load <4 x float>, ptr %i.ng, align 4, !alias.scope !506, !noalias !504
  %i.nh = fmul <4 x float> %broadcast.splat358, %wide.load361
  %i.ni = fmul <4 x float> %broadcast.splat358, %wide.load362
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ne, i64 16 ; 2 uses
  %wide.load363 = load <4 x float>, ptr %i.ne, align 4, !alias.scope !507, !noalias !508
  %wide.load364 = load <4 x float>, ptr %i.nj, align 4, !alias.scope !507, !noalias !508
  %i.nk = fadd <4 x float> %wide.load363, %i.nh
  %i.nl = fadd <4 x float> %wide.load364, %i.ni
  store <4 x float> %i.nk, ptr %i.ne, align 4, !alias.scope !507, !noalias !508
  store <4 x float> %i.nl, ptr %i.nj, align 4, !alias.scope !507, !noalias !508
  %index.next365 = add nuw i64 %index360, 8       ; 2 uses
  %i.nm = icmp eq i64 %index.next365, %n.vec356
  br i1 %i.nm, label %middle.block366, label %vector.body359, !llvm.loop !460

middle.block366:                                  ; preds = %vector.body359
  %cmp.n367 = icmp eq i64 %i.na, %n.vec356
  br i1 %cmp.n367, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit99, label %scalar.ph353.preheader

scalar.ph353.preheader:                           ; preds = %vector.memcheck345, %.lr.ph.i93, %middle.block366
  %.sroa.0.010.i96.ph = phi i64 [ 0, %vector.memcheck345 ], [ 0, %.lr.ph.i93 ], [ %n.vec356, %middle.block366 ] ; 4 uses
  %6 = sub i64 %.val6.i91, %.val.i90
  %i.nn = xor i64 %.sroa.0.010.i96.ph, -1
  %i.no = add i64 %.val6.i91, %i.nn
  %xtraiter475 = and i64 %6, 1
  %lcmp.mod476.not = icmp eq i64 %xtraiter475, 0
  br i1 %lcmp.mod476.not, label %scalar.ph353.prol.loopexit, label %scalar.ph353.prol

scalar.ph353.prol:                                ; preds = %scalar.ph353.preheader
  %i.np = or disjoint i64 %.sroa.0.010.i96.ph, 1
  %i.nq = add i64 %.sroa.0.010.i96.ph, %.val.i90  ; 2 uses
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i94, i64 %i.nq ; 2 uses
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i95, i64 %i.nq
  %.val8.i97.prol = load float, ptr %i.ns, align 4, !noalias !504, !noundef !5
  %i.nt = fmul float %i.my, %.val8.i97.prol
  %i.nu = load float, ptr %i.nr, align 4, !alias.scope !509, !noalias !504, !noundef !5
  %i.nv = fadd float %i.nu, %i.nt
  store float %i.nv, ptr %i.nr, align 4, !alias.scope !509, !noalias !504
  br label %scalar.ph353.prol.loopexit

scalar.ph353.prol.loopexit:                       ; preds = %scalar.ph353.prol, %scalar.ph353.preheader
  %.sroa.0.010.i96.unr = phi i64 [ %.sroa.0.010.i96.ph, %scalar.ph353.preheader ], [ %i.np, %scalar.ph353.prol ]
  %i.nw = icmp eq i64 %i.no, %.val.i90
  br i1 %i.nw, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit99, label %scalar.ph353.preheader.new

scalar.ph353.preheader.new:                       ; preds = %scalar.ph353.prol.loopexit
  %invariant.op520 = add i64 1, %.val.i90
  br label %scalar.ph353

scalar.ph353:                                     ; preds = %scalar.ph353, %scalar.ph353.preheader.new
  %.sroa.0.010.i96 = phi i64 [ %.sroa.0.010.i96.unr, %scalar.ph353.preheader.new ], [ %i.od, %scalar.ph353 ] ; 3 uses
  %i.nx = add i64 %.sroa.0.010.i96, %.val.i90     ; 2 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i94, i64 %i.nx ; 2 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i95, i64 %i.nx
  %.val8.i97 = load float, ptr %i.nz, align 4, !noalias !504, !noundef !5
  %i.oa = fmul float %i.my, %.val8.i97
  %i.ob = load float, ptr %i.ny, align 4, !alias.scope !509, !noalias !504, !noundef !5
  %i.oc = fadd float %i.ob, %i.oa
  store float %i.oc, ptr %i.ny, align 4, !alias.scope !509, !noalias !504
  %i.od = add nuw i64 %.sroa.0.010.i96, 2         ; 2 uses
  %.reass521 = add i64 %.sroa.0.010.i96, %invariant.op520 ; 2 uses
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i94, i64 %.reass521 ; 2 uses
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i95, i64 %.reass521
  %.val8.i97.1 = load float, ptr %i.of, align 4, !noalias !504, !noundef !5
  %i.og = fmul float %i.my, %.val8.i97.1
  %i.oh = load float, ptr %i.oe, align 4, !alias.scope !509, !noalias !504, !noundef !5
  %i.oi = fadd float %i.oh, %i.og
  store float %i.oi, ptr %i.oe, align 4, !alias.scope !509, !noalias !504
  %exitcond.not.i98.1 = icmp eq i64 %i.od, %i.na
  br i1 %exitcond.not.i98.1, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit99, label %scalar.ph353, !llvm.loop !461

_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit99: ; preds = %scalar.ph353.prol.loopexit, %scalar.ph353, %middle.block366, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.oj = fadd float %.sroa.013.0154, %i.my
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ok = fsub float %.sroa.05.0156, %i.in
  %i.ol = tail call float @llvm.exp.f32(float %i.ok) ; 3 uses
  br i1 %i.bn, label %_RINvXs2Q_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_7IterMutfENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal9vec_scale0EB1T_.exit102, label %.lr.ph.i100.preheader

.lr.ph.i100.preheader:                            ; preds = %bb.w
  br i1 %min.iters.check332, label %.lr.ph.i100.preheader430, label %vector.ph333

vector.ph333:                                     ; preds = %.lr.ph.i100.preheader
  %broadcast.splatinsert335 = insertelement <4 x float> poison, float %i.ol, i64 0
  %broadcast.splat336 = shufflevector <4 x float> %broadcast.splatinsert335, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body337

vector.body337:                                   ; preds = %vector.body337, %vector.ph333
  %index338 = phi i64 [ 0, %vector.ph333 ], [ %index.next341, %vector.body337 ] ; 2 uses
  %i.om = shl i64 %index338, 2
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.om ; 3 uses
  %i.on = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load339 = load <4 x float>, ptr %next.gep, align 4, !alias.scope !510
  %wide.load340 = load <4 x float>, ptr %i.on, align 4, !alias.scope !510
  %i.oo = fmul <4 x float> %broadcast.splat336, %wide.load339
  %i.op = fmul <4 x float> %broadcast.splat336, %wide.load340
  store <4 x float> %i.oo, ptr %next.gep, align 4, !alias.scope !510
  store <4 x float> %i.op, ptr %i.on, align 4, !alias.scope !510
  %index.next341 = add nuw i64 %index338, 8       ; 2 uses
  %i.oq = icmp eq i64 %index.next341, %n.vec334
  br i1 %i.oq, label %middle.block342, label %vector.body337, !llvm.loop !464

middle.block342:                                  ; preds = %vector.body337
  br i1 %cmp.n343, label %_RINvXs2Q_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_7IterMutfENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal9vec_scale0EB1T_.exit102, label %.lr.ph.i100.preheader430

.lr.ph.i100.preheader430:                         ; preds = %.lr.ph.i100.preheader, %middle.block342
  %.sroa.0.02.i101.ph = phi ptr [ %i.ab, %.lr.ph.i100.preheader ], [ %i.cg, %middle.block342 ]
  br label %.lr.ph.i100

.lr.ph.i100:                                      ; preds = %.lr.ph.i100.preheader430, %.lr.ph.i100
  %.sroa.0.02.i101 = phi ptr [ %i.or, %.lr.ph.i100 ], [ %.sroa.0.02.i101.ph, %.lr.ph.i100.preheader430 ] ; 3 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i101, i64 4 ; 2 uses
  %i.os = load float, ptr %.sroa.0.02.i101, align 4, !alias.scope !510, !noundef !5
  %i.ot = fmul float %i.ol, %i.os
  store float %i.ot, ptr %.sroa.0.02.i101, align 4, !alias.scope !510
  %i.ou = icmp eq ptr %i.or, %i.bm
  br i1 %i.ou, label %_RINvXs2Q_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_7IterMutfENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal9vec_scale0EB1T_.exit102, label %.lr.ph.i100, !llvm.loop !465

_RINvXs2Q_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_7IterMutfENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal9vec_scale0EB1T_.exit102: ; preds = %.lr.ph.i100, %middle.block342, %bb.w
  %i.ov = fmul float %.sroa.013.0154, %i.ol
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gh
  call void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutfEINtBZ_4IterfEEINtB5_7ZipImplBW_B1r_E3newCs3NyA1pFSltE_9candle_nn(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.bm, ptr noundef nonnull readonly align 4 %i.gp, ptr noundef nonnull readonly %i.ow)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  %.val.i103 = load i64, ptr %i.bo, align 8, !alias.scope !511, !noundef !5 ; 9 uses
  %.val6.i104 = load i64, ptr %i.bp, align 8, !alias.scope !511, !noundef !5 ; 5 uses
  %i.ox = sub i64 %.val6.i104, %.val.i103         ; 4 uses
  %.not.i105 = icmp eq i64 %.val6.i104, %.val.i103
  br i1 %.not.i105, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal7vec_add0E0EB3i_.exit112, label %.lr.ph.i106

.lr.ph.i106:                                      ; preds = %_RINvXs2Q_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_7IterMutfENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal9vec_scale0EB1T_.exit102
  %.val.i.i107 = load ptr, ptr %i.d, align 8, !alias.scope !512, !nonnull !5, !noundef !5 ; 6 uses
  %.val1.i.i108 = load ptr, ptr %i.bq, align 8, !alias.scope !512, !nonnull !5, !noundef !5 ; 6 uses
  %min.iters.check318 = icmp ult i64 %i.ox, 8
  br i1 %min.iters.check318, label %scalar.ph317.preheader, label %vector.memcheck309

vector.memcheck309:                               ; preds = %.lr.ph.i106
  %i.oy = shl i64 %.val.i103, 2                   ; 2 uses
  %scevgep310 = getelementptr nuw i8, ptr %.val.i.i107, i64 %i.oy
  %i.oz = shl i64 %.val6.i104, 2                  ; 2 uses
  %scevgep311 = getelementptr i8, ptr %.val.i.i107, i64 %i.oz
  %scevgep312 = getelementptr nuw i8, ptr %.val1.i.i108, i64 %i.oy
  %scevgep313 = getelementptr i8, ptr %.val1.i.i108, i64 %i.oz
  %bound0314 = icmp ult ptr %scevgep310, %scevgep313
  %bound1315 = icmp ult ptr %scevgep312, %scevgep311
  %found.conflict316 = and i1 %bound0314, %bound1315
  br i1 %found.conflict316, label %scalar.ph317.preheader, label %vector.ph319

vector.ph319:                                     ; preds = %vector.memcheck309
  %n.vec320 = and i64 %i.ox, -8                   ; 3 uses
  br label %vector.body321

vector.body321:                                   ; preds = %vector.body321, %vector.ph319
  %index322 = phi i64 [ 0, %vector.ph319 ], [ %index.next327, %vector.body321 ] ; 2 uses
  %i.pa = add i64 %index322, %.val.i103           ; 2 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i107, i64 %i.pa ; 3 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i108, i64 %i.pa ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  %wide.load323 = load <4 x float>, ptr %i.pc, align 4, !alias.scope !513, !noalias !511
  %wide.load324 = load <4 x float>, ptr %i.pd, align 4, !alias.scope !513, !noalias !511
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pb, i64 16 ; 2 uses
  %wide.load325 = load <4 x float>, ptr %i.pb, align 4, !alias.scope !514, !noalias !515
  %wide.load326 = load <4 x float>, ptr %i.pe, align 4, !alias.scope !514, !noalias !515
  %i.pf = fadd <4 x float> %wide.load323, %wide.load325
  %i.pg = fadd <4 x float> %wide.load324, %wide.load326
  store <4 x float> %i.pf, ptr %i.pb, align 4, !alias.scope !514, !noalias !515
  store <4 x float> %i.pg, ptr %i.pe, align 4, !alias.scope !514, !noalias !515
  %index.next327 = add nuw i64 %index322, 8       ; 2 uses
  %i.ph = icmp eq i64 %index.next327, %n.vec320
  br i1 %i.ph, label %middle.block328, label %vector.body321, !llvm.loop !477

middle.block328:                                  ; preds = %vector.body321
  %cmp.n329 = icmp eq i64 %i.ox, %n.vec320
  br i1 %cmp.n329, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal7vec_add0E0EB3i_.exit112, label %scalar.ph317.preheader

scalar.ph317.preheader:                           ; preds = %vector.memcheck309, %.lr.ph.i106, %middle.block328
  %.sroa.0.08.i109.ph = phi i64 [ 0, %vector.memcheck309 ], [ 0, %.lr.ph.i106 ], [ %n.vec320, %middle.block328 ] ; 4 uses
  %7 = sub i64 %.val6.i104, %.val.i103
  %i.pi = xor i64 %.sroa.0.08.i109.ph, -1
  %i.pj = add i64 %.val6.i104, %i.pi
  %xtraiter477 = and i64 %7, 1
  %lcmp.mod478.not = icmp eq i64 %xtraiter477, 0
  br i1 %lcmp.mod478.not, label %scalar.ph317.prol.loopexit, label %scalar.ph317.prol

scalar.ph317.prol:                                ; preds = %scalar.ph317.preheader
  %i.pk = or disjoint i64 %.sroa.0.08.i109.ph, 1
  %i.pl = add i64 %.sroa.0.08.i109.ph, %.val.i103 ; 2 uses
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i107, i64 %i.pl ; 2 uses
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i108, i64 %i.pl
  %.val7.i110.prol = load float, ptr %i.pn, align 4, !noalias !511, !noundef !5
  %i.po = load float, ptr %i.pm, align 4, !alias.scope !516, !noalias !511, !noundef !5
  %i.pp = fadd float %.val7.i110.prol, %i.po
  store float %i.pp, ptr %i.pm, align 4, !alias.scope !516, !noalias !511
  br label %scalar.ph317.prol.loopexit

scalar.ph317.prol.loopexit:                       ; preds = %scalar.ph317.prol, %scalar.ph317.preheader
  %.sroa.0.08.i109.unr = phi i64 [ %.sroa.0.08.i109.ph, %scalar.ph317.preheader ], [ %i.pk, %scalar.ph317.prol ]
  %i.pq = icmp eq i64 %i.pj, %.val.i103
  br i1 %i.pq, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal7vec_add0E0EB3i_.exit112, label %scalar.ph317.preheader.new

scalar.ph317.preheader.new:                       ; preds = %scalar.ph317.prol.loopexit
  %invariant.op522 = add i64 1, %.val.i103
  br label %scalar.ph317

scalar.ph317:                                     ; preds = %scalar.ph317, %scalar.ph317.preheader.new
  %.sroa.0.08.i109 = phi i64 [ %.sroa.0.08.i109.unr, %scalar.ph317.preheader.new ], [ %i.pw, %scalar.ph317 ] ; 3 uses
  %i.pr = add i64 %.sroa.0.08.i109, %.val.i103    ; 2 uses
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i107, i64 %i.pr ; 2 uses
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i108, i64 %i.pr
  %.val7.i110 = load float, ptr %i.pt, align 4, !noalias !511, !noundef !5
  %i.pu = load float, ptr %i.ps, align 4, !alias.scope !516, !noalias !511, !noundef !5
  %i.pv = fadd float %.val7.i110, %i.pu
  store float %i.pv, ptr %i.ps, align 4, !alias.scope !516, !noalias !511
  %i.pw = add nuw i64 %.sroa.0.08.i109, 2         ; 2 uses
  %.reass523 = add i64 %.sroa.0.08.i109, %invariant.op522 ; 2 uses
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i107, i64 %.reass523 ; 2 uses
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %.val1.i.i108, i64 %.reass523
  %.val7.i110.1 = load float, ptr %i.py, align 4, !noalias !511, !noundef !5
  %i.pz = load float, ptr %i.px, align 4, !alias.scope !516, !noalias !511, !noundef !5
  %i.qa = fadd float %.val7.i110.1, %i.pz
  store float %i.qa, ptr %i.px, align 4, !alias.scope !516, !noalias !511
  %exitcond.not.i111.1 = icmp eq i64 %i.pw, %i.ox
  br i1 %exitcond.not.i111.1, label %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal7vec_add0E0EB3i_.exit112, label %scalar.ph317, !llvm.loop !478

_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal7vec_add0E0EB3i_.exit112: ; preds = %scalar.ph317.prol.loopexit, %scalar.ph317, %middle.block328, %_RINvXs2Q_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_7IterMutfENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal9vec_scale0EB1T_.exit102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.qb = fadd float %i.ov, 1.000000e+00
  br label %bb.x

bb.x:                                             ; preds = %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal7vec_add0E0EB3i_.exit112, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit99
  %.sroa.013.1 = phi float [ %i.qb, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal7vec_add0E0EB3i_.exit112 ], [ %i.oj, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit99 ] ; 2 uses
  %.sroa.05.1 = phi float [ %i.in, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal7vec_add0E0EB3i_.exit112 ], [ %.sroa.05.0156, %_RINvXs2_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter7IterMutfEINtB10_4IterfEEINtB6_7ZipImplBX_B1s_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTQfRfENCNvNtNtNtCs3NyA1pFSltE_9candle_nn9attention9cpu_flash6causal16vec_fmadd_scalar0E0EB3i_.exit99 ]
  %exitcond199.not = icmp eq i64 %i.gd, %i.cz
  br i1 %exitcond199.not, label %._crit_edge160, label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMs4_NtCsi6QvKh33q8P_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsa5n7gMT4fih_10rayon_core3job6JobRefE3popCs3NyA1pFSltE_9candle_nn(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 264 ; 2 uses
  %i.c = load atomic i64, ptr %i.b monotonic, align 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 2 uses
  %i.e = load atomic i64, ptr %i.d monotonic, align 8
  %i.f = sub i64 %i.c, %i.e                       ; 2 uses
  %i.g = icmp slt i64 %i.f, 1
  br i1 %i.g, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i8, ptr %i.h, align 8, !range !10, !noundef !5
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = add i64 %i.c, -1                         ; 5 uses
  store atomic i64 %i.k, ptr %i.b monotonic, align 8
  fence seq_cst
  %i.l = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 256 ; 2 uses
  %i.n = load atomic i64, ptr %i.m monotonic, align 8 ; 2 uses
  %i.o = sub i64 %i.k, %i.n                       ; 2 uses
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.i, label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.q = atomicrmw add ptr %i.d, i64 1 seq_cst, align 8 ; 3 uses
  %i.r = sub i64 %i.q, %i.c
  %i.s = icmp sgt i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noundef !5 ; 4 uses
  %i.x = add i64 %i.w, -1
  %i.y = and i64 %i.x, %i.q
  %i.z = getelementptr inbounds [16 x i8], ptr %i.u, i64 %i.y
  %i.aa = load volatile i128, ptr %i.z, align 8   ; 2 uses
  %.sroa.015.0.extract.trunc = trunc i128 %i.aa to i64 ; 2 uses
  %i.ab = inttoptr i64 %.sroa.015.0.extract.trunc to ptr ; 2 uses
  %.sroa.216.0.extract.shift = lshr i128 %i.aa, 64
  %.sroa.216.0.extract.trunc = trunc nuw i128 %.sroa.216.0.extract.shift to i64
  %i.ac = inttoptr i64 %.sroa.216.0.extract.trunc to ptr ; 2 uses
  %i.ad = icmp ne i64 %.sroa.015.0.extract.trunc, 0
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp ugt i64 %i.w, 64
  %i.af = sdiv i64 %i.w, 4
  %i.ag = icmp sle i64 %i.f, %i.af
  %or.cond = and i1 %i.ae, %i.ag
  br i1 %or.cond, label %bb.g, label %bb.n, !prof !15

bb.f:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 256
  store atomic i64 %i.q, ptr %i.ai monotonic, align 8
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.aj = lshr i64 %i.w, 1
  tail call fastcc void @_RNvMs4_NtCsi6QvKh33q8P_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsa5n7gMT4fih_10rayon_core3job6JobRefE6resizeCs3NyA1pFSltE_9candle_nn(ptr noundef nonnull align 8 %0, i64 noundef %i.aj)
  br label %bb.n

bb.h:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !noundef !5
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noundef !5 ; 4 uses
  %i.ao = add i64 %i.an, -1
  %i.ap = and i64 %i.ao, %i.k
  %i.aq = getelementptr inbounds [16 x i8], ptr %i.al, i64 %i.ap
  %i.ar = load volatile i128, ptr %i.aq, align 8  ; 2 uses
  %.sroa.017.0.extract.trunc = trunc i128 %i.ar to i64 ; 2 uses
  %i.as = inttoptr i64 %.sroa.017.0.extract.trunc to ptr
  %.sroa.218.0.extract.shift = lshr i128 %i.ar, 64
  %.sroa.218.0.extract.trunc = trunc nuw i128 %.sroa.218.0.extract.shift to i64
  %i.at = inttoptr i64 %.sroa.218.0.extract.trunc to ptr
  %i.au = icmp eq i64 %i.k, %i.n
  br i1 %i.au, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  store atomic i64 %i.c, ptr %i.av monotonic, align 8
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.aw = cmpxchg ptr %i.m, i64 %i.k, i64 %i.c seq_cst monotonic, align 8
  %i.ax = extractvalue { i64, i1 } %i.aw, 1
  %i.ay = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 264
  store atomic i64 %i.c, ptr %i.az monotonic, align 8
  br i1 %i.ax, label %bb.l, label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.ba = icmp ugt i64 %i.an, 64
  %i.bb = sdiv i64 %i.an, 4
  %i.bc = icmp slt i64 %i.o, %i.bb
  %or.cond3 = and i1 %i.ba, %i.bc
  br i1 %or.cond3, label %bb.m, label %bb.l, !prof !15

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.m
  %i.bd = icmp ne i64 %.sroa.017.0.extract.trunc, 0
  tail call void @llvm.assume(i1 %i.bd)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.be = lshr i64 %i.an, 1
  tail call fastcc void @_RNvMs4_NtCsi6QvKh33q8P_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsa5n7gMT4fih_10rayon_core3job6JobRefE6resizeCs3NyA1pFSltE_9candle_nn(ptr noundef nonnull align 8 %0, i64 noundef %i.be)
  br label %bb.l

bb.n:                                             ; preds = %bb.j, %bb.e, %bb.g, %bb.a, %bb.i, %bb.l, %bb.f
  %.sroa.7.0 = phi ptr [ undef, %bb.a ], [ undef, %bb.i ], [ %i.ac, %bb.e ], [ %i.at, %bb.l ], [ undef, %bb.f ], [ %i.ac, %bb.g ], [ undef, %bb.j ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ null, %bb.i ], [ %i.ab, %bb.e ], [ %i.as, %bb.l ], [ null, %bb.f ], [ %i.ab, %bb.g ], [ null, %bb.j ]
  %i.bf = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.bg = insertvalue { ptr, ptr } %i.bf, ptr %.sroa.7.0, 1
  ret { ptr, ptr } %i.bg
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCsi6QvKh33q8P_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsa5n7gMT4fih_10rayon_core3job6JobRefE4pushCs3NyA1pFSltE_9candle_nn(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.c = load atomic i64, ptr %i.b monotonic, align 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.e = load atomic i64, ptr %i.d acquire, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 3 uses
  %i.h = sub i64 %i.c, %i.e
  %.not = icmp slt i64 %i.h, %i.g
  br i1 %.not, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.i = shl i64 %i.g, 1
  tail call fastcc void @_RNvMs4_NtCsi6QvKh33q8P_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsa5n7gMT4fih_10rayon_core3job6JobRefE6resizeCs3NyA1pFSltE_9candle_nn(ptr noundef nonnull align 8 %0, i64 noundef %i.i)
  %i.j = load i64, ptr %i.f, align 8, !noundef !5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi i64 [ %i.j, %bb.b ], [ %i.g, %bb.a ]
end_hunk_5
